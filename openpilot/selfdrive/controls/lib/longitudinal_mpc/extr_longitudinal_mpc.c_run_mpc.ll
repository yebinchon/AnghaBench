; ModuleID = '/home/carl/AnghaBench/openpilot/selfdrive/controls/lib/longitudinal_mpc/extr_longitudinal_mpc.c_run_mpc.c'
source_filename = "/home/carl/AnghaBench/openpilot/selfdrive/controls/lib/longitudinal_mpc/extr_longitudinal_mpc.c_run_mpc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { double*, i32*, i32*, i32* }
%struct.TYPE_6__ = type { double, double, i32, i32, i32 }
%struct.TYPE_7__ = type { double*, double*, double*, double*, i32, i32*, i32*, i32*, i32* }

@N = common dso_local global i32 0, align 4
@acadoVariables = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@NOD = common dso_local global i32 0, align 4
@NX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @run_mpc(%struct.TYPE_6__* %0, %struct.TYPE_7__* %1, double %2, double %3) #0 {
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca i32, align 4
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %6, align 8
  store double %2, double* %7, align 8
  store double %3, double* %8, align 8
  store double 0.000000e+00, double* %10, align 8
  store double 2.000000e-01, double* %11, align 8
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load double, double* %16, align 8
  store double %17, double* %12, align 8
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 1
  %20 = load double, double* %19, align 8
  store double %20, double* %13, align 8
  %21 = load double, double* %8, align 8
  store double %21, double* %14, align 8
  store i32 0, i32* %9, align 4
  br label %22

22:                                               ; preds = %102, %4
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* @N, align 4
  %25 = add nsw i32 %24, 1
  %26 = icmp slt i32 %23, %25
  br i1 %26, label %27, label %105

27:                                               ; preds = %22
  %28 = load i32, i32* %9, align 4
  %29 = icmp sgt i32 %28, 4
  br i1 %29, label %30, label %31

30:                                               ; preds = %27
  store double 6.000000e-01, double* %11, align 8
  br label %31

31:                                               ; preds = %30, %27
  %32 = load double, double* %12, align 8
  %33 = load double*, double** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @acadoVariables, i32 0, i32 0), align 8
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* @NOD, align 4
  %36 = mul nsw i32 %34, %35
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds double, double* %33, i64 %37
  store double %32, double* %38, align 8
  %39 = load double, double* %13, align 8
  %40 = load double*, double** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @acadoVariables, i32 0, i32 0), align 8
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* @NOD, align 4
  %43 = mul nsw i32 %41, %42
  %44 = add nsw i32 %43, 1
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds double, double* %40, i64 %45
  store double %39, double* %46, align 8
  %47 = load double, double* %12, align 8
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  %50 = load double*, double** %49, align 8
  %51 = load i32, i32* %9, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds double, double* %50, i64 %52
  store double %47, double* %53, align 8
  %54 = load double, double* %13, align 8
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 1
  %57 = load double*, double** %56, align 8
  %58 = load i32, i32* %9, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds double, double* %57, i64 %59
  store double %54, double* %60, align 8
  %61 = load double, double* %14, align 8
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 2
  %64 = load double*, double** %63, align 8
  %65 = load i32, i32* %9, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds double, double* %64, i64 %66
  store double %61, double* %67, align 8
  %68 = load double, double* %10, align 8
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 3
  %71 = load double*, double** %70, align 8
  %72 = load i32, i32* %9, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds double, double* %71, i64 %73
  store double %68, double* %74, align 8
  %75 = load double, double* %8, align 8
  %76 = load double, double* %7, align 8
  %77 = fneg double %76
  %78 = load double, double* %10, align 8
  %79 = fmul double %77, %78
  %80 = load double, double* %10, align 8
  %81 = fmul double %79, %80
  %82 = fdiv double %81, 2.000000e+00
  %83 = call double @exp(double %82) #3
  %84 = fmul double %75, %83
  store double %84, double* %14, align 8
  %85 = load double, double* %13, align 8
  %86 = load double, double* %11, align 8
  %87 = fmul double %85, %86
  %88 = load double, double* %12, align 8
  %89 = fadd double %88, %87
  store double %89, double* %12, align 8
  %90 = load double, double* %14, align 8
  %91 = load double, double* %11, align 8
  %92 = fmul double %90, %91
  %93 = load double, double* %13, align 8
  %94 = fadd double %93, %92
  store double %94, double* %13, align 8
  %95 = load double, double* %13, align 8
  %96 = fcmp olt double %95, 0.000000e+00
  br i1 %96, label %97, label %98

97:                                               ; preds = %31
  store double 0.000000e+00, double* %14, align 8
  store double 0.000000e+00, double* %13, align 8
  br label %98

98:                                               ; preds = %97, %31
  %99 = load double, double* %11, align 8
  %100 = load double, double* %10, align 8
  %101 = fadd double %100, %99
  store double %101, double* %10, align 8
  br label %102

102:                                              ; preds = %98
  %103 = load i32, i32* %9, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %9, align 4
  br label %22

105:                                              ; preds = %22
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 4
  %108 = load i32, i32* %107, align 8
  %109 = load i32*, i32** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @acadoVariables, i32 0, i32 3), align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 0
  store i32 %108, i32* %110, align 4
  %111 = load i32*, i32** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @acadoVariables, i32 0, i32 2), align 8
  %112 = getelementptr inbounds i32, i32* %111, i64 0
  store i32 %108, i32* %112, align 4
  %113 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 3
  %115 = load i32, i32* %114, align 4
  %116 = load i32*, i32** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @acadoVariables, i32 0, i32 3), align 8
  %117 = getelementptr inbounds i32, i32* %116, i64 1
  store i32 %115, i32* %117, align 4
  %118 = load i32*, i32** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @acadoVariables, i32 0, i32 2), align 8
  %119 = getelementptr inbounds i32, i32* %118, i64 1
  store i32 %115, i32* %119, align 4
  %120 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 8
  %123 = load i32*, i32** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @acadoVariables, i32 0, i32 3), align 8
  %124 = getelementptr inbounds i32, i32* %123, i64 2
  store i32 %122, i32* %124, align 4
  %125 = load i32*, i32** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @acadoVariables, i32 0, i32 2), align 8
  %126 = getelementptr inbounds i32, i32* %125, i64 2
  store i32 %122, i32* %126, align 4
  %127 = call i32 (...) @acado_preparationStep()
  %128 = call i32 (...) @acado_feedbackStep()
  store i32 0, i32* %9, align 4
  br label %129

129:                                              ; preds = %191, %105
  %130 = load i32, i32* %9, align 4
  %131 = load i32, i32* @N, align 4
  %132 = icmp sle i32 %130, %131
  br i1 %132, label %133, label %194

133:                                              ; preds = %129
  %134 = load i32*, i32** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @acadoVariables, i32 0, i32 2), align 8
  %135 = load i32, i32* %9, align 4
  %136 = load i32, i32* @NX, align 4
  %137 = mul nsw i32 %135, %136
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i32, i32* %134, i64 %138
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %142 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %141, i32 0, i32 8
  %143 = load i32*, i32** %142, align 8
  %144 = load i32, i32* %9, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i32, i32* %143, i64 %145
  store i32 %140, i32* %146, align 4
  %147 = load i32*, i32** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @acadoVariables, i32 0, i32 2), align 8
  %148 = load i32, i32* %9, align 4
  %149 = load i32, i32* @NX, align 4
  %150 = mul nsw i32 %148, %149
  %151 = add nsw i32 %150, 1
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i32, i32* %147, i64 %152
  %154 = load i32, i32* %153, align 4
  %155 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %156 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %155, i32 0, i32 7
  %157 = load i32*, i32** %156, align 8
  %158 = load i32, i32* %9, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i32, i32* %157, i64 %159
  store i32 %154, i32* %160, align 4
  %161 = load i32*, i32** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @acadoVariables, i32 0, i32 2), align 8
  %162 = load i32, i32* %9, align 4
  %163 = load i32, i32* @NX, align 4
  %164 = mul nsw i32 %162, %163
  %165 = add nsw i32 %164, 2
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i32, i32* %161, i64 %166
  %168 = load i32, i32* %167, align 4
  %169 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %170 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %169, i32 0, i32 6
  %171 = load i32*, i32** %170, align 8
  %172 = load i32, i32* %9, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i32, i32* %171, i64 %173
  store i32 %168, i32* %174, align 4
  %175 = load i32, i32* %9, align 4
  %176 = load i32, i32* @N, align 4
  %177 = icmp slt i32 %175, %176
  br i1 %177, label %178, label %190

178:                                              ; preds = %133
  %179 = load i32*, i32** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @acadoVariables, i32 0, i32 1), align 8
  %180 = load i32, i32* %9, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds i32, i32* %179, i64 %181
  %183 = load i32, i32* %182, align 4
  %184 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %185 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %184, i32 0, i32 5
  %186 = load i32*, i32** %185, align 8
  %187 = load i32, i32* %9, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds i32, i32* %186, i64 %188
  store i32 %183, i32* %189, align 4
  br label %190

190:                                              ; preds = %178, %133
  br label %191

191:                                              ; preds = %190
  %192 = load i32, i32* %9, align 4
  %193 = add nsw i32 %192, 1
  store i32 %193, i32* %9, align 4
  br label %129

194:                                              ; preds = %129
  %195 = call i32 (...) @acado_getObjective()
  %196 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %197 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %196, i32 0, i32 4
  store i32 %195, i32* %197, align 8
  %198 = call i32 (...) @acado_getNWSR()
  ret i32 %198
}

; Function Attrs: nounwind
declare dso_local double @exp(double) #1

declare dso_local i32 @acado_preparationStep(...) #2

declare dso_local i32 @acado_feedbackStep(...) #2

declare dso_local i32 @acado_getObjective(...) #2

declare dso_local i32 @acado_getNWSR(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
