; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_array.c_Array_indexOf.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_array.c_Array_indexOf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@S_OK = common dso_local global i32 0, align 4
@DISP_E_UNKNOWNNAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32, i32, i32*, i32*)* @Array_indexOf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Array_indexOf(i32* %0, i32* %1, i32 %2, i32 %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca double, align 8
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  store i32 0, i32* %17, align 4
  %23 = call i32 @TRACE(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %24 = load i32*, i32** %8, align 8
  %25 = load i32*, i32** %9, align 8
  %26 = call i32 @get_length(i32* %24, i32* %25, i32** %14, i32* %15)
  store i32 %26, i32* %21, align 4
  %27 = load i32, i32* %21, align 4
  %28 = call i64 @FAILED(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %6
  %31 = load i32, i32* %21, align 4
  store i32 %31, i32* %7, align 4
  br label %136

32:                                               ; preds = %6
  %33 = load i32, i32* %15, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %43, label %35

35:                                               ; preds = %32
  %36 = load i32*, i32** %13, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %38, label %41

38:                                               ; preds = %35
  %39 = call i32 @jsval_number(i32 -1)
  %40 = load i32*, i32** %13, align 8
  store i32 %39, i32* %40, align 4
  br label %41

41:                                               ; preds = %38, %35
  %42 = load i32, i32* @S_OK, align 4
  store i32 %42, i32* %7, align 4
  br label %136

43:                                               ; preds = %32
  %44 = load i32, i32* %11, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %43
  %47 = load i32*, i32** %12, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 0
  %49 = load i32, i32* %48, align 4
  br label %52

50:                                               ; preds = %43
  %51 = call i32 (...) @jsval_undefined()
  br label %52

52:                                               ; preds = %50, %46
  %53 = phi i32 [ %49, %46 ], [ %51, %50 ]
  store i32 %53, i32* %18, align 4
  %54 = load i32, i32* %11, align 4
  %55 = icmp ugt i32 %54, 1
  br i1 %55, label %56, label %81

56:                                               ; preds = %52
  %57 = load i32*, i32** %8, align 8
  %58 = load i32*, i32** %12, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 1
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @to_integer(i32* %57, i32 %60, double* %22)
  store i32 %61, i32* %21, align 4
  %62 = load i32, i32* %21, align 4
  %63 = call i64 @FAILED(i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %56
  %66 = load i32, i32* %21, align 4
  store i32 %66, i32* %7, align 4
  br label %136

67:                                               ; preds = %56
  %68 = load double, double* %22, align 8
  %69 = fcmp oge double %68, 0.000000e+00
  br i1 %69, label %70, label %74

70:                                               ; preds = %67
  %71 = load double, double* %22, align 8
  %72 = load i32, i32* %15, align 4
  %73 = call i32 @min(double %71, i32 %72)
  store i32 %73, i32* %17, align 4
  br label %80

74:                                               ; preds = %67
  %75 = load double, double* %22, align 8
  %76 = load i32, i32* %15, align 4
  %77 = uitofp i32 %76 to double
  %78 = fadd double %75, %77
  %79 = call i32 @max(double %78, i32 0)
  store i32 %79, i32* %17, align 4
  br label %80

80:                                               ; preds = %74, %70
  br label %81

81:                                               ; preds = %80, %52
  %82 = load i32, i32* %17, align 4
  store i32 %82, i32* %16, align 4
  br label %83

83:                                               ; preds = %125, %81
  %84 = load i32, i32* %16, align 4
  %85 = load i32, i32* %15, align 4
  %86 = icmp ult i32 %84, %85
  br i1 %86, label %87, label %128

87:                                               ; preds = %83
  %88 = load i32*, i32** %14, align 8
  %89 = load i32, i32* %16, align 4
  %90 = call i32 @jsdisp_get_idx(i32* %88, i32 %89, i32* %19)
  store i32 %90, i32* %21, align 4
  %91 = load i32, i32* %21, align 4
  %92 = load i32, i32* @DISP_E_UNKNOWNNAME, align 4
  %93 = icmp eq i32 %91, %92
  br i1 %93, label %94, label %95

94:                                               ; preds = %87
  br label %125

95:                                               ; preds = %87
  %96 = load i32, i32* %21, align 4
  %97 = call i64 @FAILED(i32 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %95
  %100 = load i32, i32* %21, align 4
  store i32 %100, i32* %7, align 4
  br label %136

101:                                              ; preds = %95
  %102 = load i32, i32* %19, align 4
  %103 = load i32, i32* %18, align 4
  %104 = call i32 @jsval_strict_equal(i32 %102, i32 %103, i32* %20)
  store i32 %104, i32* %21, align 4
  %105 = load i32, i32* %19, align 4
  %106 = call i32 @jsval_release(i32 %105)
  %107 = load i32, i32* %21, align 4
  %108 = call i64 @FAILED(i32 %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %112

110:                                              ; preds = %101
  %111 = load i32, i32* %21, align 4
  store i32 %111, i32* %7, align 4
  br label %136

112:                                              ; preds = %101
  %113 = load i32, i32* %20, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %124

115:                                              ; preds = %112
  %116 = load i32*, i32** %13, align 8
  %117 = icmp ne i32* %116, null
  br i1 %117, label %118, label %122

118:                                              ; preds = %115
  %119 = load i32, i32* %16, align 4
  %120 = call i32 @jsval_number(i32 %119)
  %121 = load i32*, i32** %13, align 8
  store i32 %120, i32* %121, align 4
  br label %122

122:                                              ; preds = %118, %115
  %123 = load i32, i32* @S_OK, align 4
  store i32 %123, i32* %7, align 4
  br label %136

124:                                              ; preds = %112
  br label %125

125:                                              ; preds = %124, %94
  %126 = load i32, i32* %16, align 4
  %127 = add i32 %126, 1
  store i32 %127, i32* %16, align 4
  br label %83

128:                                              ; preds = %83
  %129 = load i32*, i32** %13, align 8
  %130 = icmp ne i32* %129, null
  br i1 %130, label %131, label %134

131:                                              ; preds = %128
  %132 = call i32 @jsval_number(i32 -1)
  %133 = load i32*, i32** %13, align 8
  store i32 %132, i32* %133, align 4
  br label %134

134:                                              ; preds = %131, %128
  %135 = load i32, i32* @S_OK, align 4
  store i32 %135, i32* %7, align 4
  br label %136

136:                                              ; preds = %134, %122, %110, %99, %65, %41, %30
  %137 = load i32, i32* %7, align 4
  ret i32 %137
}

declare dso_local i32 @TRACE(i8*) #1

declare dso_local i32 @get_length(i32*, i32*, i32**, i32*) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @jsval_number(i32) #1

declare dso_local i32 @jsval_undefined(...) #1

declare dso_local i32 @to_integer(i32*, i32, double*) #1

declare dso_local i32 @min(double, i32) #1

declare dso_local i32 @max(double, i32) #1

declare dso_local i32 @jsdisp_get_idx(i32*, i32, i32*) #1

declare dso_local i32 @jsval_strict_equal(i32, i32, i32*) #1

declare dso_local i32 @jsval_release(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
