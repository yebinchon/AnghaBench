; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/jansson/test/suites/api/extr_test_array.c_test_clear.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/jansson/test/suites/api/extr_test_array.c_test_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [23 x i8] c"unable to create array\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"unable to create integer\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"unable to append\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"array size is invalid after appending\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"unable to clear\00", align 1
@.str.5 = private unnamed_addr constant [37 x i8] c"array size is invalid after clearing\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_clear to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_clear() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = call i32* (...) @json_array()
  store i32* %5, i32** %1, align 8
  %6 = call i32* @json_integer(i32 5)
  store i32* %6, i32** %2, align 8
  %7 = call i32* @json_integer(i32 7)
  store i32* %7, i32** %3, align 8
  %8 = load i32*, i32** %1, align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %0
  %11 = call i32 @fail(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %12

12:                                               ; preds = %10, %0
  %13 = load i32*, i32** %2, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %12
  %16 = load i32*, i32** %3, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %15, %12
  %19 = call i32 @fail(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %20

20:                                               ; preds = %18, %15
  store i32 0, i32* %4, align 4
  br label %21

21:                                               ; preds = %32, %20
  %22 = load i32, i32* %4, align 4
  %23 = icmp slt i32 %22, 10
  br i1 %23, label %24, label %35

24:                                               ; preds = %21
  %25 = load i32*, i32** %1, align 8
  %26 = load i32*, i32** %2, align 8
  %27 = call i64 @json_array_append(i32* %25, i32* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %24
  %30 = call i32 @fail(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  br label %31

31:                                               ; preds = %29, %24
  br label %32

32:                                               ; preds = %31
  %33 = load i32, i32* %4, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %4, align 4
  br label %21

35:                                               ; preds = %21
  store i32 0, i32* %4, align 4
  br label %36

36:                                               ; preds = %47, %35
  %37 = load i32, i32* %4, align 4
  %38 = icmp slt i32 %37, 10
  br i1 %38, label %39, label %50

39:                                               ; preds = %36
  %40 = load i32*, i32** %1, align 8
  %41 = load i32*, i32** %3, align 8
  %42 = call i64 @json_array_append(i32* %40, i32* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %39
  %45 = call i32 @fail(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  br label %46

46:                                               ; preds = %44, %39
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* %4, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %4, align 4
  br label %36

50:                                               ; preds = %36
  %51 = load i32*, i32** %1, align 8
  %52 = call i32 @json_array_size(i32* %51)
  %53 = icmp ne i32 %52, 20
  br i1 %53, label %54, label %56

54:                                               ; preds = %50
  %55 = call i32 @fail(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  br label %56

56:                                               ; preds = %54, %50
  %57 = load i32*, i32** %1, align 8
  %58 = call i64 @json_array_clear(i32* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %56
  %61 = call i32 @fail(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  br label %62

62:                                               ; preds = %60, %56
  %63 = load i32*, i32** %1, align 8
  %64 = call i32 @json_array_size(i32* %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %62
  %67 = call i32 @fail(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0))
  br label %68

68:                                               ; preds = %66, %62
  %69 = load i32*, i32** %2, align 8
  %70 = call i32 @json_decref(i32* %69)
  %71 = load i32*, i32** %3, align 8
  %72 = call i32 @json_decref(i32* %71)
  %73 = load i32*, i32** %1, align 8
  %74 = call i32 @json_decref(i32* %73)
  ret void
}

declare dso_local i32* @json_array(...) #1

declare dso_local i32* @json_integer(i32) #1

declare dso_local i32 @fail(i8*) #1

declare dso_local i64 @json_array_append(i32*, i32*) #1

declare dso_local i32 @json_array_size(i32*) #1

declare dso_local i64 @json_array_clear(i32*) #1

declare dso_local i32 @json_decref(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
