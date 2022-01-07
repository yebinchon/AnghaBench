; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/jansson/test/suites/api/extr_test_array.c_test_extend.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/jansson/test/suites/api/extr_test_array.c_test_extend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [23 x i8] c"unable to create array\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"unable to create integer\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"unable to append\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"array size is invalid after appending\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"unable to extend\00", align 1
@.str.5 = private unnamed_addr constant [39 x i8] c"invalid array contents after extending\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_extend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_extend() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = call i32* (...) @json_array()
  store i32* %6, i32** %1, align 8
  %7 = call i32* (...) @json_array()
  store i32* %7, i32** %2, align 8
  %8 = call i32* @json_integer(i32 5)
  store i32* %8, i32** %3, align 8
  %9 = call i32* @json_integer(i32 7)
  store i32* %9, i32** %4, align 8
  %10 = load i32*, i32** %1, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %0
  %13 = load i32*, i32** %2, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %12, %0
  %16 = call i32 @fail(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %17

17:                                               ; preds = %15, %12
  %18 = load i32*, i32** %3, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %17
  %21 = load i32*, i32** %4, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %25, label %23

23:                                               ; preds = %20, %17
  %24 = call i32 @fail(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %25

25:                                               ; preds = %23, %20
  store i32 0, i32* %5, align 4
  br label %26

26:                                               ; preds = %37, %25
  %27 = load i32, i32* %5, align 4
  %28 = icmp slt i32 %27, 10
  br i1 %28, label %29, label %40

29:                                               ; preds = %26
  %30 = load i32*, i32** %1, align 8
  %31 = load i32*, i32** %3, align 8
  %32 = call i64 @json_array_append(i32* %30, i32* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %29
  %35 = call i32 @fail(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  br label %36

36:                                               ; preds = %34, %29
  br label %37

37:                                               ; preds = %36
  %38 = load i32, i32* %5, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %5, align 4
  br label %26

40:                                               ; preds = %26
  store i32 0, i32* %5, align 4
  br label %41

41:                                               ; preds = %52, %40
  %42 = load i32, i32* %5, align 4
  %43 = icmp slt i32 %42, 10
  br i1 %43, label %44, label %55

44:                                               ; preds = %41
  %45 = load i32*, i32** %2, align 8
  %46 = load i32*, i32** %4, align 8
  %47 = call i64 @json_array_append(i32* %45, i32* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %44
  %50 = call i32 @fail(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  br label %51

51:                                               ; preds = %49, %44
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %5, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %5, align 4
  br label %41

55:                                               ; preds = %41
  %56 = load i32*, i32** %1, align 8
  %57 = call i32 @json_array_size(i32* %56)
  %58 = icmp ne i32 %57, 10
  br i1 %58, label %63, label %59

59:                                               ; preds = %55
  %60 = load i32*, i32** %2, align 8
  %61 = call i32 @json_array_size(i32* %60)
  %62 = icmp ne i32 %61, 10
  br i1 %62, label %63, label %65

63:                                               ; preds = %59, %55
  %64 = call i32 @fail(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  br label %65

65:                                               ; preds = %63, %59
  %66 = load i32*, i32** %1, align 8
  %67 = load i32*, i32** %2, align 8
  %68 = call i64 @json_array_extend(i32* %66, i32* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %65
  %71 = call i32 @fail(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  br label %72

72:                                               ; preds = %70, %65
  store i32 0, i32* %5, align 4
  br label %73

73:                                               ; preds = %85, %72
  %74 = load i32, i32* %5, align 4
  %75 = icmp slt i32 %74, 10
  br i1 %75, label %76, label %88

76:                                               ; preds = %73
  %77 = load i32*, i32** %1, align 8
  %78 = load i32, i32* %5, align 4
  %79 = call i32* @json_array_get(i32* %77, i32 %78)
  %80 = load i32*, i32** %3, align 8
  %81 = icmp ne i32* %79, %80
  br i1 %81, label %82, label %84

82:                                               ; preds = %76
  %83 = call i32 @fail(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0))
  br label %84

84:                                               ; preds = %82, %76
  br label %85

85:                                               ; preds = %84
  %86 = load i32, i32* %5, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %5, align 4
  br label %73

88:                                               ; preds = %73
  store i32 10, i32* %5, align 4
  br label %89

89:                                               ; preds = %101, %88
  %90 = load i32, i32* %5, align 4
  %91 = icmp slt i32 %90, 20
  br i1 %91, label %92, label %104

92:                                               ; preds = %89
  %93 = load i32*, i32** %1, align 8
  %94 = load i32, i32* %5, align 4
  %95 = call i32* @json_array_get(i32* %93, i32 %94)
  %96 = load i32*, i32** %4, align 8
  %97 = icmp ne i32* %95, %96
  br i1 %97, label %98, label %100

98:                                               ; preds = %92
  %99 = call i32 @fail(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0))
  br label %100

100:                                              ; preds = %98, %92
  br label %101

101:                                              ; preds = %100
  %102 = load i32, i32* %5, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %5, align 4
  br label %89

104:                                              ; preds = %89
  %105 = load i32*, i32** %3, align 8
  %106 = call i32 @json_decref(i32* %105)
  %107 = load i32*, i32** %4, align 8
  %108 = call i32 @json_decref(i32* %107)
  %109 = load i32*, i32** %1, align 8
  %110 = call i32 @json_decref(i32* %109)
  %111 = load i32*, i32** %2, align 8
  %112 = call i32 @json_decref(i32* %111)
  ret void
}

declare dso_local i32* @json_array(...) #1

declare dso_local i32* @json_integer(i32) #1

declare dso_local i32 @fail(i8*) #1

declare dso_local i64 @json_array_append(i32*, i32*) #1

declare dso_local i32 @json_array_size(i32*) #1

declare dso_local i64 @json_array_extend(i32*, i32*) #1

declare dso_local i32* @json_array_get(i32*, i32) #1

declare dso_local i32 @json_decref(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
