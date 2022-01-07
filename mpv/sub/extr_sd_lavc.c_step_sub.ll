; ModuleID = '/home/carl/AnghaBench/mpv/sub/extr_sd_lavc.c_step_sub.c'
source_filename = "/home/carl/AnghaBench/mpv/sub/extr_sd_lavc.c_step_sub.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sd = type { %struct.sd_lavc_priv* }
%struct.sd_lavc_priv = type { i64, %struct.seekpoint* }
%struct.seekpoint = type { double, double }

@MP_NOPTS_VALUE = common dso_local global double 0.000000e+00, align 8
@compare_seekpoint = common dso_local global i32 0, align 4
@INFINITY = common dso_local global double 0.000000e+00, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (double (%struct.sd*, double, i32)* @step_sub to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal double @step_sub(%struct.sd* %0, double %1, i32 %2) #0 {
  %4 = alloca double, align 8
  %5 = alloca %struct.sd*, align 8
  %6 = alloca double, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sd_lavc_priv*, align 8
  %9 = alloca i32, align 4
  %10 = alloca double, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca double, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.seekpoint*, align 8
  %16 = alloca double, align 8
  %17 = alloca double, align 8
  store %struct.sd* %0, %struct.sd** %5, align 8
  store double %1, double* %6, align 8
  store i32 %2, i32* %7, align 4
  %18 = load %struct.sd*, %struct.sd** %5, align 8
  %19 = getelementptr inbounds %struct.sd, %struct.sd* %18, i32 0, i32 0
  %20 = load %struct.sd_lavc_priv*, %struct.sd_lavc_priv** %19, align 8
  store %struct.sd_lavc_priv* %20, %struct.sd_lavc_priv** %8, align 8
  store i32 -1, i32* %9, align 4
  %21 = load double, double* %6, align 8
  store double %21, double* %10, align 8
  %22 = load i32, i32* %7, align 4
  %23 = icmp sgt i32 %22, 0
  %24 = zext i1 %23 to i64
  %25 = select i1 %23, i32 1, i32 -1
  %26 = load i32, i32* %7, align 4
  %27 = icmp ne i32 %26, 0
  %28 = xor i1 %27, true
  %29 = xor i1 %28, true
  %30 = zext i1 %29 to i32
  %31 = mul nsw i32 %25, %30
  store i32 %31, i32* %11, align 4
  %32 = load %struct.sd_lavc_priv*, %struct.sd_lavc_priv** %8, align 8
  %33 = getelementptr inbounds %struct.sd_lavc_priv, %struct.sd_lavc_priv* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %3
  %37 = load double, double* @MP_NOPTS_VALUE, align 8
  store double %37, double* %4, align 8
  br label %168

38:                                               ; preds = %3
  %39 = load %struct.sd_lavc_priv*, %struct.sd_lavc_priv** %8, align 8
  %40 = getelementptr inbounds %struct.sd_lavc_priv, %struct.sd_lavc_priv* %39, i32 0, i32 1
  %41 = load %struct.seekpoint*, %struct.seekpoint** %40, align 8
  %42 = load %struct.sd_lavc_priv*, %struct.sd_lavc_priv** %8, align 8
  %43 = getelementptr inbounds %struct.sd_lavc_priv, %struct.sd_lavc_priv* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i32, i32* @compare_seekpoint, align 4
  %46 = call i32 @qsort(%struct.seekpoint* %41, i64 %44, i32 16, i32 %45)
  br label %47

47:                                               ; preds = %149, %38
  store i32 -1, i32* %12, align 4
  store double 0.000000e+00, double* %13, align 8
  store i32 0, i32* %14, align 4
  br label %48

48:                                               ; preds = %133, %47
  %49 = load i32, i32* %14, align 4
  %50 = sext i32 %49 to i64
  %51 = load %struct.sd_lavc_priv*, %struct.sd_lavc_priv** %8, align 8
  %52 = getelementptr inbounds %struct.sd_lavc_priv, %struct.sd_lavc_priv* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp slt i64 %50, %53
  br i1 %54, label %55, label %136

55:                                               ; preds = %48
  %56 = load %struct.sd_lavc_priv*, %struct.sd_lavc_priv** %8, align 8
  %57 = getelementptr inbounds %struct.sd_lavc_priv, %struct.sd_lavc_priv* %56, i32 0, i32 1
  %58 = load %struct.seekpoint*, %struct.seekpoint** %57, align 8
  %59 = load i32, i32* %14, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.seekpoint, %struct.seekpoint* %58, i64 %60
  store %struct.seekpoint* %61, %struct.seekpoint** %15, align 8
  %62 = load %struct.seekpoint*, %struct.seekpoint** %15, align 8
  %63 = getelementptr inbounds %struct.seekpoint, %struct.seekpoint* %62, i32 0, i32 0
  %64 = load double, double* %63, align 8
  store double %64, double* %16, align 8
  %65 = load i32, i32* %11, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %96

67:                                               ; preds = %55
  %68 = load %struct.seekpoint*, %struct.seekpoint** %15, align 8
  %69 = getelementptr inbounds %struct.seekpoint, %struct.seekpoint* %68, i32 0, i32 1
  %70 = load double, double* %69, align 8
  %71 = load double, double* @MP_NOPTS_VALUE, align 8
  %72 = fcmp oeq double %70, %71
  br i1 %72, label %73, label %75

73:                                               ; preds = %67
  %74 = load double, double* @INFINITY, align 8
  br label %79

75:                                               ; preds = %67
  %76 = load %struct.seekpoint*, %struct.seekpoint** %15, align 8
  %77 = getelementptr inbounds %struct.seekpoint, %struct.seekpoint* %76, i32 0, i32 1
  %78 = load double, double* %77, align 8
  br label %79

79:                                               ; preds = %75, %73
  %80 = phi double [ %74, %73 ], [ %78, %75 ]
  store double %80, double* %17, align 8
  %81 = load double, double* %17, align 8
  %82 = load double, double* %10, align 8
  %83 = fcmp olt double %81, %82
  br i1 %83, label %84, label %95

84:                                               ; preds = %79
  %85 = load i32, i32* %12, align 4
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %91, label %87

87:                                               ; preds = %84
  %88 = load double, double* %17, align 8
  %89 = load double, double* %13, align 8
  %90 = fcmp ogt double %88, %89
  br i1 %90, label %91, label %94

91:                                               ; preds = %87, %84
  %92 = load i32, i32* %14, align 4
  store i32 %92, i32* %12, align 4
  %93 = load double, double* %17, align 8
  store double %93, double* %13, align 8
  br label %94

94:                                               ; preds = %91, %87
  br label %95

95:                                               ; preds = %94, %79
  br label %132

96:                                               ; preds = %55
  %97 = load i32, i32* %11, align 4
  %98 = icmp sgt i32 %97, 0
  br i1 %98, label %99, label %115

99:                                               ; preds = %96
  %100 = load double, double* %16, align 8
  %101 = load double, double* %10, align 8
  %102 = fcmp ogt double %100, %101
  br i1 %102, label %103, label %114

103:                                              ; preds = %99
  %104 = load i32, i32* %12, align 4
  %105 = icmp slt i32 %104, 0
  br i1 %105, label %110, label %106

106:                                              ; preds = %103
  %107 = load double, double* %16, align 8
  %108 = load double, double* %13, align 8
  %109 = fcmp olt double %107, %108
  br i1 %109, label %110, label %113

110:                                              ; preds = %106, %103
  %111 = load i32, i32* %14, align 4
  store i32 %111, i32* %12, align 4
  %112 = load double, double* %16, align 8
  store double %112, double* %13, align 8
  br label %113

113:                                              ; preds = %110, %106
  br label %114

114:                                              ; preds = %113, %99
  br label %131

115:                                              ; preds = %96
  %116 = load double, double* %16, align 8
  %117 = load double, double* %10, align 8
  %118 = fcmp olt double %116, %117
  br i1 %118, label %119, label %130

119:                                              ; preds = %115
  %120 = load i32, i32* %12, align 4
  %121 = icmp slt i32 %120, 0
  br i1 %121, label %126, label %122

122:                                              ; preds = %119
  %123 = load double, double* %16, align 8
  %124 = load double, double* %13, align 8
  %125 = fcmp oge double %123, %124
  br i1 %125, label %126, label %129

126:                                              ; preds = %122, %119
  %127 = load i32, i32* %14, align 4
  store i32 %127, i32* %12, align 4
  %128 = load double, double* %16, align 8
  store double %128, double* %13, align 8
  br label %129

129:                                              ; preds = %126, %122
  br label %130

130:                                              ; preds = %129, %115
  br label %131

131:                                              ; preds = %130, %114
  br label %132

132:                                              ; preds = %131, %95
  br label %133

133:                                              ; preds = %132
  %134 = load i32, i32* %14, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %14, align 4
  br label %48

136:                                              ; preds = %48
  %137 = load i32, i32* %12, align 4
  %138 = icmp slt i32 %137, 0
  br i1 %138, label %139, label %140

139:                                              ; preds = %136
  br label %152

140:                                              ; preds = %136
  %141 = load double, double* %13, align 8
  %142 = load i32, i32* %11, align 4
  %143 = sitofp i32 %142 to double
  %144 = fadd double %141, %143
  store double %144, double* %10, align 8
  %145 = load i32, i32* %12, align 4
  store i32 %145, i32* %9, align 4
  %146 = load i32, i32* %11, align 4
  %147 = load i32, i32* %7, align 4
  %148 = sub nsw i32 %147, %146
  store i32 %148, i32* %7, align 4
  br label %149

149:                                              ; preds = %140
  %150 = load i32, i32* %7, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %47, label %152

152:                                              ; preds = %149, %139
  %153 = load i32, i32* %9, align 4
  %154 = icmp slt i32 %153, 0
  br i1 %154, label %155, label %157

155:                                              ; preds = %152
  %156 = load double, double* %6, align 8
  br label %166

157:                                              ; preds = %152
  %158 = load %struct.sd_lavc_priv*, %struct.sd_lavc_priv** %8, align 8
  %159 = getelementptr inbounds %struct.sd_lavc_priv, %struct.sd_lavc_priv* %158, i32 0, i32 1
  %160 = load %struct.seekpoint*, %struct.seekpoint** %159, align 8
  %161 = load i32, i32* %9, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds %struct.seekpoint, %struct.seekpoint* %160, i64 %162
  %164 = getelementptr inbounds %struct.seekpoint, %struct.seekpoint* %163, i32 0, i32 0
  %165 = load double, double* %164, align 8
  br label %166

166:                                              ; preds = %157, %155
  %167 = phi double [ %156, %155 ], [ %165, %157 ]
  store double %167, double* %4, align 8
  br label %168

168:                                              ; preds = %166, %36
  %169 = load double, double* %4, align 8
  ret double %169
}

declare dso_local i32 @qsort(%struct.seekpoint*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
