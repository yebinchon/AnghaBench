; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/jansson/test/suites/api/extr_test_equal.c_test_equal_simple.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/jansson/test/suites/api/extr_test_equal.c_test_equal_simple.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [31 x i8] c"json_equal fails for two NULLs\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"json_equal fails for NULL\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"identical objects are not equal\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"unable to create integers\00", align 1
@.str.4 = private unnamed_addr constant [40 x i8] c"json_equal fails for two equal integers\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"unable to create an integer\00", align 1
@.str.6 = private unnamed_addr constant [42 x i8] c"json_equal fails for two inequal integers\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"unable to create reals\00", align 1
@.str.8 = private unnamed_addr constant [37 x i8] c"json_equal fails for two equal reals\00", align 1
@.str.9 = private unnamed_addr constant [25 x i8] c"unable to create an real\00", align 1
@.str.10 = private unnamed_addr constant [39 x i8] c"json_equal fails for two inequal reals\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"foo\00", align 1
@.str.12 = private unnamed_addr constant [25 x i8] c"unable to create strings\00", align 1
@.str.13 = private unnamed_addr constant [39 x i8] c"json_equal fails for two equal strings\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"bar\00", align 1
@.str.15 = private unnamed_addr constant [27 x i8] c"unable to create an string\00", align 1
@.str.16 = private unnamed_addr constant [41 x i8] c"json_equal fails for two inequal strings\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_equal_simple to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_equal_simple() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = call i64 @json_equal(i32* null, i32* null)
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %0
  %6 = call i32 @fail(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %7

7:                                                ; preds = %5, %0
  %8 = call i32* (...) @json_true()
  store i32* %8, i32** %1, align 8
  %9 = load i32*, i32** %1, align 8
  %10 = call i64 @json_equal(i32* %9, i32* null)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %7
  %13 = load i32*, i32** %1, align 8
  %14 = call i64 @json_equal(i32* null, i32* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %12, %7
  %17 = call i32 @fail(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  br label %18

18:                                               ; preds = %16, %12
  %19 = load i32*, i32** %1, align 8
  %20 = load i32*, i32** %1, align 8
  %21 = call i64 @json_equal(i32* %19, i32* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %18
  %24 = call i32 @fail(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  br label %25

25:                                               ; preds = %23, %18
  %26 = load i32*, i32** %1, align 8
  %27 = call i32 @json_decref(i32* %26)
  %28 = call i32* @json_integer(i32 1)
  store i32* %28, i32** %1, align 8
  %29 = call i32* @json_integer(i32 1)
  store i32* %29, i32** %2, align 8
  %30 = load i32*, i32** %1, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %32, label %35

32:                                               ; preds = %25
  %33 = load i32*, i32** %2, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %37, label %35

35:                                               ; preds = %32, %25
  %36 = call i32 @fail(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  br label %37

37:                                               ; preds = %35, %32
  %38 = load i32*, i32** %1, align 8
  %39 = load i32*, i32** %2, align 8
  %40 = call i64 @json_equal(i32* %38, i32* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %37
  %43 = call i32 @fail(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0))
  br label %44

44:                                               ; preds = %42, %37
  %45 = load i32*, i32** %2, align 8
  %46 = call i32 @json_decref(i32* %45)
  %47 = call i32* @json_integer(i32 2)
  store i32* %47, i32** %2, align 8
  %48 = load i32*, i32** %2, align 8
  %49 = icmp ne i32* %48, null
  br i1 %49, label %52, label %50

50:                                               ; preds = %44
  %51 = call i32 @fail(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0))
  br label %52

52:                                               ; preds = %50, %44
  %53 = load i32*, i32** %1, align 8
  %54 = load i32*, i32** %2, align 8
  %55 = call i64 @json_equal(i32* %53, i32* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %52
  %58 = call i32 @fail(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.6, i64 0, i64 0))
  br label %59

59:                                               ; preds = %57, %52
  %60 = load i32*, i32** %1, align 8
  %61 = call i32 @json_decref(i32* %60)
  %62 = load i32*, i32** %2, align 8
  %63 = call i32 @json_decref(i32* %62)
  %64 = call i32* @json_real(double 1.200000e+00)
  store i32* %64, i32** %1, align 8
  %65 = call i32* @json_real(double 1.200000e+00)
  store i32* %65, i32** %2, align 8
  %66 = load i32*, i32** %1, align 8
  %67 = icmp ne i32* %66, null
  br i1 %67, label %68, label %71

68:                                               ; preds = %59
  %69 = load i32*, i32** %2, align 8
  %70 = icmp ne i32* %69, null
  br i1 %70, label %73, label %71

71:                                               ; preds = %68, %59
  %72 = call i32 @fail(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0))
  br label %73

73:                                               ; preds = %71, %68
  %74 = load i32*, i32** %1, align 8
  %75 = load i32*, i32** %2, align 8
  %76 = call i64 @json_equal(i32* %74, i32* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %80, label %78

78:                                               ; preds = %73
  %79 = call i32 @fail(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.8, i64 0, i64 0))
  br label %80

80:                                               ; preds = %78, %73
  %81 = load i32*, i32** %2, align 8
  %82 = call i32 @json_decref(i32* %81)
  %83 = call i32* @json_real(double 0x400921FAFC8B007A)
  store i32* %83, i32** %2, align 8
  %84 = load i32*, i32** %2, align 8
  %85 = icmp ne i32* %84, null
  br i1 %85, label %88, label %86

86:                                               ; preds = %80
  %87 = call i32 @fail(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0))
  br label %88

88:                                               ; preds = %86, %80
  %89 = load i32*, i32** %1, align 8
  %90 = load i32*, i32** %2, align 8
  %91 = call i64 @json_equal(i32* %89, i32* %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %88
  %94 = call i32 @fail(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.10, i64 0, i64 0))
  br label %95

95:                                               ; preds = %93, %88
  %96 = load i32*, i32** %1, align 8
  %97 = call i32 @json_decref(i32* %96)
  %98 = load i32*, i32** %2, align 8
  %99 = call i32 @json_decref(i32* %98)
  %100 = call i32* @json_string(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0))
  store i32* %100, i32** %1, align 8
  %101 = call i32* @json_string(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0))
  store i32* %101, i32** %2, align 8
  %102 = load i32*, i32** %1, align 8
  %103 = icmp ne i32* %102, null
  br i1 %103, label %104, label %107

104:                                              ; preds = %95
  %105 = load i32*, i32** %2, align 8
  %106 = icmp ne i32* %105, null
  br i1 %106, label %109, label %107

107:                                              ; preds = %104, %95
  %108 = call i32 @fail(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.12, i64 0, i64 0))
  br label %109

109:                                              ; preds = %107, %104
  %110 = load i32*, i32** %1, align 8
  %111 = load i32*, i32** %2, align 8
  %112 = call i64 @json_equal(i32* %110, i32* %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %116, label %114

114:                                              ; preds = %109
  %115 = call i32 @fail(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.13, i64 0, i64 0))
  br label %116

116:                                              ; preds = %114, %109
  %117 = load i32*, i32** %2, align 8
  %118 = call i32 @json_decref(i32* %117)
  %119 = call i32* @json_string(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i64 0, i64 0))
  store i32* %119, i32** %2, align 8
  %120 = load i32*, i32** %2, align 8
  %121 = icmp ne i32* %120, null
  br i1 %121, label %124, label %122

122:                                              ; preds = %116
  %123 = call i32 @fail(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.15, i64 0, i64 0))
  br label %124

124:                                              ; preds = %122, %116
  %125 = load i32*, i32** %1, align 8
  %126 = load i32*, i32** %2, align 8
  %127 = call i64 @json_equal(i32* %125, i32* %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %131

129:                                              ; preds = %124
  %130 = call i32 @fail(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.16, i64 0, i64 0))
  br label %131

131:                                              ; preds = %129, %124
  %132 = load i32*, i32** %1, align 8
  %133 = call i32 @json_decref(i32* %132)
  %134 = load i32*, i32** %2, align 8
  %135 = call i32 @json_decref(i32* %134)
  ret void
}

declare dso_local i64 @json_equal(i32*, i32*) #1

declare dso_local i32 @fail(i8*) #1

declare dso_local i32* @json_true(...) #1

declare dso_local i32 @json_decref(i32*) #1

declare dso_local i32* @json_integer(i32) #1

declare dso_local i32* @json_real(double) #1

declare dso_local i32* @json_string(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
