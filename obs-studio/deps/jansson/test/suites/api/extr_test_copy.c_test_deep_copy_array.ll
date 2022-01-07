; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/jansson/test/suites/api/extr_test_copy.c_test_deep_copy_array.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/jansson/test/suites/api/extr_test_copy.c_test_deep_copy_array.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [37 x i8] c"[1, \22foo\22, 3.141592, {\22foo\22: \22bar\22}]\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"unable to parse an array\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"unable to deep copy an array\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"deep copying an array doesn't copy\00", align 1
@.str.4 = private unnamed_addr constant [47 x i8] c"deep copying an array produces an inequal copy\00", align 1
@.str.5 = private unnamed_addr constant [48 x i8] c"deep copying an array doesn't copy its elements\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_deep_copy_array to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_deep_copy_array() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  store i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i8** %1, align 8
  %5 = load i8*, i8** %1, align 8
  %6 = call i32* @json_loads(i8* %5, i32 0, i32* null)
  store i32* %6, i32** %2, align 8
  %7 = load i32*, i32** %2, align 8
  %8 = icmp ne i32* %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %0
  %10 = call i32 @fail(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %11

11:                                               ; preds = %9, %0
  %12 = load i32*, i32** %2, align 8
  %13 = call i32* @json_deep_copy(i32* %12)
  store i32* %13, i32** %3, align 8
  %14 = load i32*, i32** %3, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %11
  %17 = call i32 @fail(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  br label %18

18:                                               ; preds = %16, %11
  %19 = load i32*, i32** %3, align 8
  %20 = load i32*, i32** %2, align 8
  %21 = icmp eq i32* %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %18
  %23 = call i32 @fail(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  br label %24

24:                                               ; preds = %22, %18
  %25 = load i32*, i32** %3, align 8
  %26 = load i32*, i32** %2, align 8
  %27 = call i32 @json_equal(i32* %25, i32* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %24
  %30 = call i32 @fail(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.4, i64 0, i64 0))
  br label %31

31:                                               ; preds = %29, %24
  store i64 0, i64* %4, align 8
  br label %32

32:                                               ; preds = %48, %31
  %33 = load i64, i64* %4, align 8
  %34 = load i32*, i32** %3, align 8
  %35 = call i64 @json_array_size(i32* %34)
  %36 = icmp ult i64 %33, %35
  br i1 %36, label %37, label %51

37:                                               ; preds = %32
  %38 = load i32*, i32** %2, align 8
  %39 = load i64, i64* %4, align 8
  %40 = call i64 @json_array_get(i32* %38, i64 %39)
  %41 = load i32*, i32** %3, align 8
  %42 = load i64, i64* %4, align 8
  %43 = call i64 @json_array_get(i32* %41, i64 %42)
  %44 = icmp eq i64 %40, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %37
  %46 = call i32 @fail(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.5, i64 0, i64 0))
  br label %47

47:                                               ; preds = %45, %37
  br label %48

48:                                               ; preds = %47
  %49 = load i64, i64* %4, align 8
  %50 = add i64 %49, 1
  store i64 %50, i64* %4, align 8
  br label %32

51:                                               ; preds = %32
  %52 = load i32*, i32** %2, align 8
  %53 = call i32 @json_decref(i32* %52)
  %54 = load i32*, i32** %3, align 8
  %55 = call i32 @json_decref(i32* %54)
  ret void
}

declare dso_local i32* @json_loads(i8*, i32, i32*) #1

declare dso_local i32 @fail(i8*) #1

declare dso_local i32* @json_deep_copy(i32*) #1

declare dso_local i32 @json_equal(i32*, i32*) #1

declare dso_local i64 @json_array_size(i32*) #1

declare dso_local i64 @json_array_get(i32*, i64) #1

declare dso_local i32 @json_decref(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
