; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/jansson/test/suites/api/extr_test_equal.c_test_equal_array.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/jansson/test/suites/api/extr_test_equal.c_test_equal_array.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [24 x i8] c"unable to create arrays\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"json_equal fails for two empty arrays\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"foo\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"json_equal fails for two equal arrays\00", align 1
@.str.4 = private unnamed_addr constant [40 x i8] c"json_equal fails for two inequal arrays\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_equal_array to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_equal_array() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = call i32* (...) @json_array()
  store i32* %3, i32** %1, align 8
  %4 = call i32* (...) @json_array()
  store i32* %4, i32** %2, align 8
  %5 = load i32*, i32** %1, align 8
  %6 = icmp ne i32* %5, null
  br i1 %6, label %7, label %10

7:                                                ; preds = %0
  %8 = load i32*, i32** %2, align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %7, %0
  %11 = call i32 @fail(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %12

12:                                               ; preds = %10, %7
  %13 = load i32*, i32** %1, align 8
  %14 = load i32*, i32** %2, align 8
  %15 = call i64 @json_equal(i32* %13, i32* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %12
  %18 = call i32 @fail(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  br label %19

19:                                               ; preds = %17, %12
  %20 = load i32*, i32** %1, align 8
  %21 = call i32 @json_integer(i32 1)
  %22 = call i32 @json_array_append_new(i32* %20, i32 %21)
  %23 = load i32*, i32** %2, align 8
  %24 = call i32 @json_integer(i32 1)
  %25 = call i32 @json_array_append_new(i32* %23, i32 %24)
  %26 = load i32*, i32** %1, align 8
  %27 = call i32 @json_string(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %28 = call i32 @json_array_append_new(i32* %26, i32 %27)
  %29 = load i32*, i32** %2, align 8
  %30 = call i32 @json_string(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %31 = call i32 @json_array_append_new(i32* %29, i32 %30)
  %32 = load i32*, i32** %1, align 8
  %33 = call i32 @json_integer(i32 2)
  %34 = call i32 @json_array_append_new(i32* %32, i32 %33)
  %35 = load i32*, i32** %2, align 8
  %36 = call i32 @json_integer(i32 2)
  %37 = call i32 @json_array_append_new(i32* %35, i32 %36)
  %38 = load i32*, i32** %1, align 8
  %39 = load i32*, i32** %2, align 8
  %40 = call i64 @json_equal(i32* %38, i32* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %19
  %43 = call i32 @fail(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  br label %44

44:                                               ; preds = %42, %19
  %45 = load i32*, i32** %2, align 8
  %46 = call i32 @json_array_remove(i32* %45, i32 2)
  %47 = load i32*, i32** %1, align 8
  %48 = load i32*, i32** %2, align 8
  %49 = call i64 @json_equal(i32* %47, i32* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %44
  %52 = call i32 @fail(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0))
  br label %53

53:                                               ; preds = %51, %44
  %54 = load i32*, i32** %2, align 8
  %55 = call i32 @json_integer(i32 3)
  %56 = call i32 @json_array_append_new(i32* %54, i32 %55)
  %57 = load i32*, i32** %1, align 8
  %58 = load i32*, i32** %2, align 8
  %59 = call i64 @json_equal(i32* %57, i32* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %53
  %62 = call i32 @fail(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0))
  br label %63

63:                                               ; preds = %61, %53
  %64 = load i32*, i32** %1, align 8
  %65 = call i32 @json_decref(i32* %64)
  %66 = load i32*, i32** %2, align 8
  %67 = call i32 @json_decref(i32* %66)
  ret void
}

declare dso_local i32* @json_array(...) #1

declare dso_local i32 @fail(i8*) #1

declare dso_local i64 @json_equal(i32*, i32*) #1

declare dso_local i32 @json_array_append_new(i32*, i32) #1

declare dso_local i32 @json_integer(i32) #1

declare dso_local i32 @json_string(i8*) #1

declare dso_local i32 @json_array_remove(i32*, i32) #1

declare dso_local i32 @json_decref(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
