; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_array.c_sort_cmp.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_array.c_sort_cmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DISPATCH_METHOD = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32, i32, i32*)* @sort_cmp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sort_cmp(i32* %0, i32* %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca [2 x i32], align 4
  %14 = alloca i32, align 4
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %19 = load i32*, i32** %8, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %57

21:                                               ; preds = %5
  %22 = load i32, i32* %9, align 4
  %23 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 0
  store i32 %22, i32* %23, align 4
  %24 = load i32, i32* %10, align 4
  %25 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 1
  store i32 %24, i32* %25, align 4
  %26 = load i32*, i32** %8, align 8
  %27 = load i32, i32* @DISPATCH_METHOD, align 4
  %28 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 0
  %29 = call i32 @jsdisp_call_value(i32* %26, i32* null, i32 %27, i32 2, i32* %28, i32* %14)
  store i32 %29, i32* %12, align 4
  %30 = load i32, i32* %12, align 4
  %31 = call i64 @FAILED(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %21
  %34 = load i32, i32* %12, align 4
  store i32 %34, i32* %6, align 4
  br label %136

35:                                               ; preds = %21
  %36 = load i32*, i32** %7, align 8
  %37 = load i32, i32* %14, align 4
  %38 = call i32 @to_number(i32* %36, i32 %37, double* %15)
  store i32 %38, i32* %12, align 4
  %39 = load i32, i32* %14, align 4
  %40 = call i32 @jsval_release(i32 %39)
  %41 = load i32, i32* %12, align 4
  %42 = call i64 @FAILED(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %35
  %45 = load i32, i32* %12, align 4
  store i32 %45, i32* %6, align 4
  br label %136

46:                                               ; preds = %35
  %47 = load double, double* %15, align 8
  %48 = fcmp oeq double %47, 0.000000e+00
  br i1 %48, label %49, label %51

49:                                               ; preds = %46
  %50 = load i32*, i32** %11, align 8
  store i32 0, i32* %50, align 4
  br label %51

51:                                               ; preds = %49, %46
  %52 = load double, double* %15, align 8
  %53 = fcmp ogt double %52, 0.000000e+00
  %54 = zext i1 %53 to i64
  %55 = select i1 %53, i32 1, i32 -1
  %56 = load i32*, i32** %11, align 8
  store i32 %55, i32* %56, align 4
  br label %134

57:                                               ; preds = %5
  %58 = load i32, i32* %9, align 4
  %59 = call i64 @is_undefined(i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %68

61:                                               ; preds = %57
  %62 = load i32, i32* %10, align 4
  %63 = call i64 @is_undefined(i32 %62)
  %64 = icmp ne i64 %63, 0
  %65 = zext i1 %64 to i64
  %66 = select i1 %64, i32 0, i32 1
  %67 = load i32*, i32** %11, align 8
  store i32 %66, i32* %67, align 4
  br label %133

68:                                               ; preds = %57
  %69 = load i32, i32* %10, align 4
  %70 = call i64 @is_undefined(i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %68
  %73 = load i32*, i32** %11, align 8
  store i32 -1, i32* %73, align 4
  br label %132

74:                                               ; preds = %68
  %75 = load i32, i32* %9, align 4
  %76 = call i64 @is_number(i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %99

78:                                               ; preds = %74
  %79 = load i32, i32* %10, align 4
  %80 = call i64 @is_number(i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %99

82:                                               ; preds = %78
  %83 = load i32, i32* %9, align 4
  %84 = call double @get_number(i32 %83)
  %85 = load i32, i32* %10, align 4
  %86 = call double @get_number(i32 %85)
  %87 = fsub double %84, %86
  store double %87, double* %16, align 8
  %88 = load double, double* %16, align 8
  %89 = fcmp ogt double %88, 0.000000e+00
  br i1 %89, label %90, label %92

90:                                               ; preds = %82
  %91 = load i32*, i32** %11, align 8
  store i32 1, i32* %91, align 4
  br label %98

92:                                               ; preds = %82
  %93 = load double, double* %16, align 8
  %94 = fcmp olt double %93, -0.000000e+00
  %95 = zext i1 %94 to i64
  %96 = select i1 %94, i32 -1, i32 0
  %97 = load i32*, i32** %11, align 8
  store i32 %96, i32* %97, align 4
  br label %98

98:                                               ; preds = %92, %90
  br label %131

99:                                               ; preds = %78, %74
  %100 = load i32*, i32** %7, align 8
  %101 = load i32, i32* %9, align 4
  %102 = call i32 @to_string(i32* %100, i32 %101, i32** %17)
  store i32 %102, i32* %12, align 4
  %103 = load i32, i32* %12, align 4
  %104 = call i64 @FAILED(i32 %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %108

106:                                              ; preds = %99
  %107 = load i32, i32* %12, align 4
  store i32 %107, i32* %6, align 4
  br label %136

108:                                              ; preds = %99
  %109 = load i32*, i32** %7, align 8
  %110 = load i32, i32* %10, align 4
  %111 = call i32 @to_string(i32* %109, i32 %110, i32** %18)
  store i32 %111, i32* %12, align 4
  %112 = load i32, i32* %12, align 4
  %113 = call i64 @SUCCEEDED(i32 %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %122

115:                                              ; preds = %108
  %116 = load i32*, i32** %17, align 8
  %117 = load i32*, i32** %18, align 8
  %118 = call i32 @jsstr_cmp(i32* %116, i32* %117)
  %119 = load i32*, i32** %11, align 8
  store i32 %118, i32* %119, align 4
  %120 = load i32*, i32** %18, align 8
  %121 = call i32 @jsstr_release(i32* %120)
  br label %122

122:                                              ; preds = %115, %108
  %123 = load i32*, i32** %17, align 8
  %124 = call i32 @jsstr_release(i32* %123)
  %125 = load i32, i32* %12, align 4
  %126 = call i64 @FAILED(i32 %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %130

128:                                              ; preds = %122
  %129 = load i32, i32* %12, align 4
  store i32 %129, i32* %6, align 4
  br label %136

130:                                              ; preds = %122
  br label %131

131:                                              ; preds = %130, %98
  br label %132

132:                                              ; preds = %131, %72
  br label %133

133:                                              ; preds = %132, %61
  br label %134

134:                                              ; preds = %133, %51
  %135 = load i32, i32* @S_OK, align 4
  store i32 %135, i32* %6, align 4
  br label %136

136:                                              ; preds = %134, %128, %106, %44, %33
  %137 = load i32, i32* %6, align 4
  ret i32 %137
}

declare dso_local i32 @jsdisp_call_value(i32*, i32*, i32, i32, i32*, i32*) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @to_number(i32*, i32, double*) #1

declare dso_local i32 @jsval_release(i32) #1

declare dso_local i64 @is_undefined(i32) #1

declare dso_local i64 @is_number(i32) #1

declare dso_local double @get_number(i32) #1

declare dso_local i32 @to_string(i32*, i32, i32**) #1

declare dso_local i64 @SUCCEEDED(i32) #1

declare dso_local i32 @jsstr_cmp(i32*, i32*) #1

declare dso_local i32 @jsstr_release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
