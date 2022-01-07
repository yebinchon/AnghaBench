; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/jansson/test/suites/api/extr_test_object.c_test_clear.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/jansson/test/suites/api/extr_test_object.c_test_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [24 x i8] c"unable to create object\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"unable to create integer\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"b\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"d\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"e\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"unable to set value\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"invalid size\00", align 1
@.str.9 = private unnamed_addr constant [25 x i8] c"invalid size after clear\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_clear to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_clear() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = call i32* (...) @json_object()
  store i32* %3, i32** %1, align 8
  %4 = call i32* @json_integer(i32 10)
  store i32* %4, i32** %2, align 8
  %5 = load i32*, i32** %1, align 8
  %6 = icmp ne i32* %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %0
  %8 = call i32 @fail(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %9

9:                                                ; preds = %7, %0
  %10 = load i32*, i32** %2, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %9
  %13 = call i32 @fail(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %14

14:                                               ; preds = %12, %9
  %15 = load i32*, i32** %1, align 8
  %16 = load i32*, i32** %2, align 8
  %17 = call i64 @json_object_set(i32* %15, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %39, label %19

19:                                               ; preds = %14
  %20 = load i32*, i32** %1, align 8
  %21 = load i32*, i32** %2, align 8
  %22 = call i64 @json_object_set(i32* %20, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i32* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %39, label %24

24:                                               ; preds = %19
  %25 = load i32*, i32** %1, align 8
  %26 = load i32*, i32** %2, align 8
  %27 = call i64 @json_object_set(i32* %25, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i32* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %39, label %29

29:                                               ; preds = %24
  %30 = load i32*, i32** %1, align 8
  %31 = load i32*, i32** %2, align 8
  %32 = call i64 @json_object_set(i32* %30, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i32* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %39, label %34

34:                                               ; preds = %29
  %35 = load i32*, i32** %1, align 8
  %36 = load i32*, i32** %2, align 8
  %37 = call i64 @json_object_set(i32* %35, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i32* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %34, %29, %24, %19, %14
  %40 = call i32 @fail(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0))
  br label %41

41:                                               ; preds = %39, %34
  %42 = load i32*, i32** %1, align 8
  %43 = call i32 @json_object_size(i32* %42)
  %44 = icmp ne i32 %43, 5
  br i1 %44, label %45, label %47

45:                                               ; preds = %41
  %46 = call i32 @fail(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0))
  br label %47

47:                                               ; preds = %45, %41
  %48 = load i32*, i32** %1, align 8
  %49 = call i32 @json_object_clear(i32* %48)
  %50 = load i32*, i32** %1, align 8
  %51 = call i32 @json_object_size(i32* %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %47
  %54 = call i32 @fail(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0))
  br label %55

55:                                               ; preds = %53, %47
  %56 = load i32*, i32** %2, align 8
  %57 = call i32 @json_decref(i32* %56)
  %58 = load i32*, i32** %1, align 8
  %59 = call i32 @json_decref(i32* %58)
  ret void
}

declare dso_local i32* @json_object(...) #1

declare dso_local i32* @json_integer(i32) #1

declare dso_local i32 @fail(i8*) #1

declare dso_local i64 @json_object_set(i32*, i8*, i32*) #1

declare dso_local i32 @json_object_size(i32*) #1

declare dso_local i32 @json_object_clear(i32*) #1

declare dso_local i32 @json_decref(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
