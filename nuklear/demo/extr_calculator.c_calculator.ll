; ModuleID = '/home/carl/AnghaBench/nuklear/demo/extr_calculator.c_calculator.c'
source_filename = "/home/carl/AnghaBench/nuklear/demo/extr_calculator.c_calculator.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nk_context = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"Calculator\00", align 1
@NK_WINDOW_BORDER = common dso_local global i32 0, align 4
@NK_WINDOW_NO_SCROLLBAR = common dso_local global i32 0, align 4
@NK_WINDOW_MOVABLE = common dso_local global i32 0, align 4
@calculator.set = internal global i32 0, align 4
@calculator.prev = internal global i32 0, align 4
@calculator.op = internal global i32 0, align 4
@calculator.numbers = internal constant [10 x i8] c"789456123\00", align 1
@calculator.ops = internal constant [5 x i8] c"+-*/\00", align 1
@calculator.a = internal global double 0.000000e+00, align 8
@calculator.b = internal global double 0.000000e+00, align 8
@calculator.current = internal global double* @calculator.a, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"%.2f\00", align 1
@NK_EDIT_SIMPLE = common dso_local global i32 0, align 4
@nk_filter_float = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"=\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nk_context*)* @calculator to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @calculator(%struct.nk_context* %0) #0 {
  %2 = alloca %struct.nk_context*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [256 x i8], align 16
  store %struct.nk_context* %0, %struct.nk_context** %2, align 8
  %7 = load %struct.nk_context*, %struct.nk_context** %2, align 8
  %8 = call i32 @nk_rect(i32 10, i32 10, i32 180, i32 250)
  %9 = load i32, i32* @NK_WINDOW_BORDER, align 4
  %10 = load i32, i32* @NK_WINDOW_NO_SCROLLBAR, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* @NK_WINDOW_MOVABLE, align 4
  %13 = or i32 %11, %12
  %14 = call i64 @nk_begin(%struct.nk_context* %7, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %8, i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %170

16:                                               ; preds = %1
  store i64 0, i64* %3, align 8
  store i32 0, i32* %4, align 4
  %17 = load %struct.nk_context*, %struct.nk_context** %2, align 8
  %18 = call i32 @nk_layout_row_dynamic(%struct.nk_context* %17, i32 35, i32 1)
  %19 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %20 = load double*, double** @calculator.current, align 8
  %21 = load double, double* %20, align 8
  %22 = call i32 @snprintf(i8* %19, i32 256, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), double %21)
  store i32 %22, i32* %5, align 4
  %23 = load %struct.nk_context*, %struct.nk_context** %2, align 8
  %24 = load i32, i32* @NK_EDIT_SIMPLE, align 4
  %25 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %26 = load i32, i32* @nk_filter_float, align 4
  %27 = call i32 @nk_edit_string(%struct.nk_context* %23, i32 %24, i8* %25, i32* %5, i32 255, i32 %26)
  %28 = load i32, i32* %5, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 %29
  store i8 0, i8* %30, align 1
  %31 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %32 = call double @atof(i8* %31)
  %33 = load double*, double** @calculator.current, align 8
  store double %32, double* %33, align 8
  %34 = load %struct.nk_context*, %struct.nk_context** %2, align 8
  %35 = call i32 @nk_layout_row_dynamic(%struct.nk_context* %34, i32 35, i32 4)
  store i64 0, i64* %3, align 8
  br label %36

36:                                               ; preds = %130, %16
  %37 = load i64, i64* %3, align 8
  %38 = icmp ult i64 %37, 16
  br i1 %38, label %39, label %133

39:                                               ; preds = %36
  %40 = load i64, i64* %3, align 8
  %41 = icmp uge i64 %40, 12
  br i1 %41, label %42, label %70

42:                                               ; preds = %39
  %43 = load i64, i64* %3, align 8
  %44 = icmp ult i64 %43, 15
  br i1 %44, label %45, label %70

45:                                               ; preds = %42
  %46 = load i64, i64* %3, align 8
  %47 = icmp ugt i64 %46, 12
  br i1 %47, label %48, label %49

48:                                               ; preds = %45
  br label %130

49:                                               ; preds = %45
  %50 = load %struct.nk_context*, %struct.nk_context** %2, align 8
  %51 = call i64 @nk_button_label(%struct.nk_context* %50, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %49
  store i32 0, i32* @calculator.op, align 4
  store double 0.000000e+00, double* @calculator.b, align 8
  store double 0.000000e+00, double* @calculator.a, align 8
  store double* @calculator.a, double** @calculator.current, align 8
  store i32 0, i32* @calculator.set, align 4
  br label %54

54:                                               ; preds = %53, %49
  %55 = load %struct.nk_context*, %struct.nk_context** %2, align 8
  %56 = call i64 @nk_button_label(%struct.nk_context* %55, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %54
  %59 = load double*, double** @calculator.current, align 8
  %60 = load double, double* %59, align 8
  %61 = fmul double %60, 1.000000e+01
  %62 = load double*, double** @calculator.current, align 8
  store double %61, double* %62, align 8
  store i32 0, i32* @calculator.set, align 4
  br label %63

63:                                               ; preds = %58, %54
  %64 = load %struct.nk_context*, %struct.nk_context** %2, align 8
  %65 = call i64 @nk_button_label(%struct.nk_context* %64, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %63
  store i32 1, i32* %4, align 4
  %68 = load i32, i32* @calculator.op, align 4
  store i32 %68, i32* @calculator.prev, align 4
  store i32 0, i32* @calculator.op, align 4
  br label %69

69:                                               ; preds = %67, %63
  br label %129

70:                                               ; preds = %42, %39
  %71 = load i64, i64* %3, align 8
  %72 = add i64 %71, 1
  %73 = urem i64 %72, 4
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %104

75:                                               ; preds = %70
  %76 = load %struct.nk_context*, %struct.nk_context** %2, align 8
  %77 = load i64, i64* %3, align 8
  %78 = udiv i64 %77, 4
  %79 = mul i64 %78, 3
  %80 = load i64, i64* %3, align 8
  %81 = urem i64 %80, 4
  %82 = add i64 %79, %81
  %83 = getelementptr inbounds [10 x i8], [10 x i8]* @calculator.numbers, i64 0, i64 %82
  %84 = call i64 @nk_button_text(%struct.nk_context* %76, i8* %83, i32 1)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %103

86:                                               ; preds = %75
  %87 = load double*, double** @calculator.current, align 8
  %88 = load double, double* %87, align 8
  %89 = fmul double %88, 1.000000e+01
  %90 = load i64, i64* %3, align 8
  %91 = udiv i64 %90, 4
  %92 = mul i64 %91, 3
  %93 = load i64, i64* %3, align 8
  %94 = urem i64 %93, 4
  %95 = add i64 %92, %94
  %96 = getelementptr inbounds [10 x i8], [10 x i8]* @calculator.numbers, i64 0, i64 %95
  %97 = load i8, i8* %96, align 1
  %98 = sext i8 %97 to i32
  %99 = sitofp i32 %98 to double
  %100 = fadd double %89, %99
  %101 = fsub double %100, 4.800000e+01
  %102 = load double*, double** @calculator.current, align 8
  store double %101, double* %102, align 8
  store i32 0, i32* @calculator.set, align 4
  br label %103

103:                                              ; preds = %86, %75
  br label %128

104:                                              ; preds = %70
  %105 = load %struct.nk_context*, %struct.nk_context** %2, align 8
  %106 = load i64, i64* %3, align 8
  %107 = udiv i64 %106, 4
  %108 = getelementptr inbounds [5 x i8], [5 x i8]* @calculator.ops, i64 0, i64 %107
  %109 = call i64 @nk_button_text(%struct.nk_context* %105, i8* %108, i32 1)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %127

111:                                              ; preds = %104
  %112 = load i32, i32* @calculator.set, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %121, label %114

114:                                              ; preds = %111
  %115 = load double*, double** @calculator.current, align 8
  %116 = icmp ne double* %115, @calculator.b
  br i1 %116, label %117, label %118

117:                                              ; preds = %114
  store double* @calculator.b, double** @calculator.current, align 8
  br label %120

118:                                              ; preds = %114
  %119 = load i32, i32* @calculator.op, align 4
  store i32 %119, i32* @calculator.prev, align 4
  store i32 1, i32* %4, align 4
  br label %120

120:                                              ; preds = %118, %117
  br label %121

121:                                              ; preds = %120, %111
  %122 = load i64, i64* %3, align 8
  %123 = udiv i64 %122, 4
  %124 = getelementptr inbounds [5 x i8], [5 x i8]* @calculator.ops, i64 0, i64 %123
  %125 = load i8, i8* %124, align 1
  %126 = sext i8 %125 to i32
  store i32 %126, i32* @calculator.op, align 4
  store i32 1, i32* @calculator.set, align 4
  br label %127

127:                                              ; preds = %121, %104
  br label %128

128:                                              ; preds = %127, %103
  br label %129

129:                                              ; preds = %128, %69
  br label %130

130:                                              ; preds = %129, %48
  %131 = load i64, i64* %3, align 8
  %132 = add i64 %131, 1
  store i64 %132, i64* %3, align 8
  br label %36

133:                                              ; preds = %36
  %134 = load i32, i32* %4, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %169

136:                                              ; preds = %133
  %137 = load i32, i32* @calculator.prev, align 4
  %138 = icmp eq i32 %137, 43
  br i1 %138, label %139, label %143

139:                                              ; preds = %136
  %140 = load double, double* @calculator.a, align 8
  %141 = load double, double* @calculator.b, align 8
  %142 = fadd double %140, %141
  store double %142, double* @calculator.a, align 8
  br label %143

143:                                              ; preds = %139, %136
  %144 = load i32, i32* @calculator.prev, align 4
  %145 = icmp eq i32 %144, 45
  br i1 %145, label %146, label %150

146:                                              ; preds = %143
  %147 = load double, double* @calculator.a, align 8
  %148 = load double, double* @calculator.b, align 8
  %149 = fsub double %147, %148
  store double %149, double* @calculator.a, align 8
  br label %150

150:                                              ; preds = %146, %143
  %151 = load i32, i32* @calculator.prev, align 4
  %152 = icmp eq i32 %151, 42
  br i1 %152, label %153, label %157

153:                                              ; preds = %150
  %154 = load double, double* @calculator.a, align 8
  %155 = load double, double* @calculator.b, align 8
  %156 = fmul double %154, %155
  store double %156, double* @calculator.a, align 8
  br label %157

157:                                              ; preds = %153, %150
  %158 = load i32, i32* @calculator.prev, align 4
  %159 = icmp eq i32 %158, 47
  br i1 %159, label %160, label %164

160:                                              ; preds = %157
  %161 = load double, double* @calculator.a, align 8
  %162 = load double, double* @calculator.b, align 8
  %163 = fdiv double %161, %162
  store double %163, double* @calculator.a, align 8
  br label %164

164:                                              ; preds = %160, %157
  store double* @calculator.a, double** @calculator.current, align 8
  %165 = load i32, i32* @calculator.set, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %168

167:                                              ; preds = %164
  store double* @calculator.b, double** @calculator.current, align 8
  br label %168

168:                                              ; preds = %167, %164
  store double 0.000000e+00, double* @calculator.b, align 8
  store i32 0, i32* @calculator.set, align 4
  br label %169

169:                                              ; preds = %168, %133
  br label %170

170:                                              ; preds = %169, %1
  %171 = load %struct.nk_context*, %struct.nk_context** %2, align 8
  %172 = call i32 @nk_end(%struct.nk_context* %171)
  ret void
}

declare dso_local i64 @nk_begin(%struct.nk_context*, i8*, i32, i32) #1

declare dso_local i32 @nk_rect(i32, i32, i32, i32) #1

declare dso_local i32 @nk_layout_row_dynamic(%struct.nk_context*, i32, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, double) #1

declare dso_local i32 @nk_edit_string(%struct.nk_context*, i32, i8*, i32*, i32, i32) #1

declare dso_local double @atof(i8*) #1

declare dso_local i64 @nk_button_label(%struct.nk_context*, i8*) #1

declare dso_local i64 @nk_button_text(%struct.nk_context*, i8*, i32) #1

declare dso_local i32 @nk_end(%struct.nk_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
