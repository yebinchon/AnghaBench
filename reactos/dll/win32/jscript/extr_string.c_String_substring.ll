; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_string.c_String_substring.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_string.c_String_substring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@E_OUTOFMEMORY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32, i32, i32*, i32*)* @String_substring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @String_substring(i32* %0, i32* %1, i32 %2, i32 %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32*, align 8
  %18 = alloca double, align 8
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca i32*, align 8
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  store i64 0, i64* %14, align 8
  %22 = call i32 @TRACE(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %23 = load i32*, i32** %8, align 8
  %24 = load i32*, i32** %9, align 8
  %25 = call i32 @get_string_val(i32* %23, i32* %24, i32** %17)
  store i32 %25, i32* %19, align 4
  %26 = load i32, i32* %19, align 4
  %27 = call i64 @FAILED(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %6
  %30 = load i32, i32* %19, align 4
  store i32 %30, i32* %7, align 4
  br label %131

31:                                               ; preds = %6
  %32 = load i32*, i32** %17, align 8
  %33 = call i64 @jsstr_length(i32* %32)
  store i64 %33, i64* %16, align 8
  %34 = load i32, i32* %11, align 4
  %35 = icmp uge i32 %34, 1
  br i1 %35, label %36, label %65

36:                                               ; preds = %31
  %37 = load i32*, i32** %8, align 8
  %38 = load i32*, i32** %12, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @to_integer(i32* %37, i32 %40, double* %18)
  store i32 %41, i32* %19, align 4
  %42 = load i32, i32* %19, align 4
  %43 = call i64 @FAILED(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %36
  %46 = load i32*, i32** %17, align 8
  %47 = call i32 @jsstr_release(i32* %46)
  %48 = load i32, i32* %19, align 4
  store i32 %48, i32* %7, align 4
  br label %131

49:                                               ; preds = %36
  %50 = load double, double* %18, align 8
  %51 = fcmp oge double %50, 0.000000e+00
  br i1 %51, label %52, label %64

52:                                               ; preds = %49
  %53 = load double, double* %18, align 8
  %54 = call i64 @is_int32(double %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %52
  %57 = load i64, i64* %16, align 8
  %58 = load double, double* %18, align 8
  %59 = call i64 @min(i64 %57, double %58)
  br label %62

60:                                               ; preds = %52
  %61 = load i64, i64* %16, align 8
  br label %62

62:                                               ; preds = %60, %56
  %63 = phi i64 [ %59, %56 ], [ %61, %60 ]
  store i64 %63, i64* %14, align 8
  br label %64

64:                                               ; preds = %62, %49
  br label %65

65:                                               ; preds = %64, %31
  %66 = load i32, i32* %11, align 4
  %67 = icmp uge i32 %66, 2
  br i1 %67, label %68, label %98

68:                                               ; preds = %65
  %69 = load i32*, i32** %8, align 8
  %70 = load i32*, i32** %12, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 1
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @to_integer(i32* %69, i32 %72, double* %18)
  store i32 %73, i32* %19, align 4
  %74 = load i32, i32* %19, align 4
  %75 = call i64 @FAILED(i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %68
  %78 = load i32*, i32** %17, align 8
  %79 = call i32 @jsstr_release(i32* %78)
  %80 = load i32, i32* %19, align 4
  store i32 %80, i32* %7, align 4
  br label %131

81:                                               ; preds = %68
  %82 = load double, double* %18, align 8
  %83 = fcmp oge double %82, 0.000000e+00
  br i1 %83, label %84, label %96

84:                                               ; preds = %81
  %85 = load double, double* %18, align 8
  %86 = call i64 @is_int32(double %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %92

88:                                               ; preds = %84
  %89 = load i64, i64* %16, align 8
  %90 = load double, double* %18, align 8
  %91 = call i64 @min(i64 %89, double %90)
  br label %94

92:                                               ; preds = %84
  %93 = load i64, i64* %16, align 8
  br label %94

94:                                               ; preds = %92, %88
  %95 = phi i64 [ %91, %88 ], [ %93, %92 ]
  store i64 %95, i64* %15, align 8
  br label %97

96:                                               ; preds = %81
  store i64 0, i64* %15, align 8
  br label %97

97:                                               ; preds = %96, %94
  br label %100

98:                                               ; preds = %65
  %99 = load i64, i64* %16, align 8
  store i64 %99, i64* %15, align 8
  br label %100

100:                                              ; preds = %98, %97
  %101 = load i64, i64* %14, align 8
  %102 = load i64, i64* %15, align 8
  %103 = icmp sgt i64 %101, %102
  br i1 %103, label %104, label %108

104:                                              ; preds = %100
  %105 = load i64, i64* %14, align 8
  store i64 %105, i64* %20, align 8
  %106 = load i64, i64* %15, align 8
  store i64 %106, i64* %14, align 8
  %107 = load i64, i64* %20, align 8
  store i64 %107, i64* %15, align 8
  br label %108

108:                                              ; preds = %104, %100
  %109 = load i32*, i32** %13, align 8
  %110 = icmp ne i32* %109, null
  br i1 %110, label %111, label %127

111:                                              ; preds = %108
  %112 = load i32*, i32** %17, align 8
  %113 = load i64, i64* %14, align 8
  %114 = load i64, i64* %15, align 8
  %115 = load i64, i64* %14, align 8
  %116 = sub nsw i64 %114, %115
  %117 = call i32* @jsstr_substr(i32* %112, i64 %113, i64 %116)
  store i32* %117, i32** %21, align 8
  %118 = load i32*, i32** %21, align 8
  %119 = icmp ne i32* %118, null
  br i1 %119, label %120, label %124

120:                                              ; preds = %111
  %121 = load i32*, i32** %21, align 8
  %122 = call i32 @jsval_string(i32* %121)
  %123 = load i32*, i32** %13, align 8
  store i32 %122, i32* %123, align 4
  br label %126

124:                                              ; preds = %111
  %125 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %125, i32* %19, align 4
  br label %126

126:                                              ; preds = %124, %120
  br label %127

127:                                              ; preds = %126, %108
  %128 = load i32*, i32** %17, align 8
  %129 = call i32 @jsstr_release(i32* %128)
  %130 = load i32, i32* %19, align 4
  store i32 %130, i32* %7, align 4
  br label %131

131:                                              ; preds = %127, %77, %45, %29
  %132 = load i32, i32* %7, align 4
  ret i32 %132
}

declare dso_local i32 @TRACE(i8*) #1

declare dso_local i32 @get_string_val(i32*, i32*, i32**) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i64 @jsstr_length(i32*) #1

declare dso_local i32 @to_integer(i32*, i32, double*) #1

declare dso_local i32 @jsstr_release(i32*) #1

declare dso_local i64 @is_int32(double) #1

declare dso_local i64 @min(i64, double) #1

declare dso_local i32* @jsstr_substr(i32*, i64, i64) #1

declare dso_local i32 @jsval_string(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
