; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/jansson/test/suites/api/extr_test_array.c_test_circular.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/jansson/test/suites/api/extr_test_array.c_test_circular.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [23 x i8] c"unable to create array\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"able to append self\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"able to insert self\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"failed to append true\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"able to set self\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"unable to append\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"able to dump circulars\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_circular to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_circular() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = call i32* (...) @json_array()
  store i32* %3, i32** %1, align 8
  %4 = load i32*, i32** %1, align 8
  %5 = icmp ne i32* %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %0
  %7 = call i32 @fail(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %8

8:                                                ; preds = %6, %0
  %9 = load i32*, i32** %1, align 8
  %10 = load i32*, i32** %1, align 8
  %11 = call i64 @json_array_append(i32* %9, i32* %10)
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %8
  %14 = call i32 @fail(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  br label %15

15:                                               ; preds = %13, %8
  %16 = load i32*, i32** %1, align 8
  %17 = load i32*, i32** %1, align 8
  %18 = call i64 @json_array_insert(i32* %16, i32 0, i32* %17)
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %15
  %21 = call i32 @fail(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  br label %22

22:                                               ; preds = %20, %15
  %23 = load i32*, i32** %1, align 8
  %24 = call i32 (...) @json_true()
  %25 = call i64 @json_array_append_new(i32* %23, i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %22
  %28 = call i32 @fail(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  br label %29

29:                                               ; preds = %27, %22
  %30 = load i32*, i32** %1, align 8
  %31 = load i32*, i32** %1, align 8
  %32 = call i64 @json_array_set(i32* %30, i32 0, i32* %31)
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %29
  %35 = call i32 @fail(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  br label %36

36:                                               ; preds = %34, %29
  %37 = load i32*, i32** %1, align 8
  %38 = call i32 @json_decref(i32* %37)
  %39 = call i32* (...) @json_array()
  store i32* %39, i32** %1, align 8
  %40 = call i32* (...) @json_array()
  store i32* %40, i32** %2, align 8
  %41 = load i32*, i32** %1, align 8
  %42 = icmp ne i32* %41, null
  br i1 %42, label %43, label %46

43:                                               ; preds = %36
  %44 = load i32*, i32** %2, align 8
  %45 = icmp ne i32* %44, null
  br i1 %45, label %48, label %46

46:                                               ; preds = %43, %36
  %47 = call i32 @fail(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %48

48:                                               ; preds = %46, %43
  %49 = load i32*, i32** %1, align 8
  %50 = load i32*, i32** %2, align 8
  %51 = call i64 @json_array_append(i32* %49, i32* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %58, label %53

53:                                               ; preds = %48
  %54 = load i32*, i32** %2, align 8
  %55 = load i32*, i32** %1, align 8
  %56 = call i64 @json_array_append(i32* %54, i32* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %53, %48
  %59 = call i32 @fail(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0))
  br label %60

60:                                               ; preds = %58, %53
  %61 = load i32*, i32** %1, align 8
  %62 = call i32* @json_dumps(i32* %61, i32 0)
  %63 = icmp ne i32* %62, null
  br i1 %63, label %64, label %66

64:                                               ; preds = %60
  %65 = call i32 @fail(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0))
  br label %66

66:                                               ; preds = %64, %60
  %67 = load i32*, i32** %1, align 8
  %68 = call i32 @json_decref(i32* %67)
  %69 = load i32*, i32** %2, align 8
  %70 = call i32 @json_decref(i32* %69)
  %71 = load i32*, i32** %1, align 8
  %72 = call i32 @json_decref(i32* %71)
  ret void
}

declare dso_local i32* @json_array(...) #1

declare dso_local i32 @fail(i8*) #1

declare dso_local i64 @json_array_append(i32*, i32*) #1

declare dso_local i64 @json_array_insert(i32*, i32, i32*) #1

declare dso_local i64 @json_array_append_new(i32*, i32) #1

declare dso_local i32 @json_true(...) #1

declare dso_local i64 @json_array_set(i32*, i32, i32*) #1

declare dso_local i32 @json_decref(i32*) #1

declare dso_local i32* @json_dumps(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
