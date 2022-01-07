; ModuleID = '/home/carl/AnghaBench/openpilot/selfdrive/controls/lib/lateral_mpc/extr_lateral_mpc.c_run_mpc.c'
source_filename = "/home/carl/AnghaBench/openpilot/selfdrive/controls/lib/lateral_mpc/extr_lateral_mpc.c_run_mpc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { double*, i32*, i32*, i32* }
%struct.TYPE_6__ = type { i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i32, i32*, i32*, i32*, i32*, i32* }

@NOD = common dso_local global i32 0, align 4
@N = common dso_local global i32 0, align 4
@acadoVariables = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@NX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @run_mpc(%struct.TYPE_6__* %0, %struct.TYPE_7__* %1, double* %2, double* %3, double* %4, double %5, double %6, double %7, double %8, double %9) #0 {
  %11 = alloca %struct.TYPE_6__*, align 8
  %12 = alloca %struct.TYPE_7__*, align 8
  %13 = alloca double*, align 8
  %14 = alloca double*, align 8
  %15 = alloca double*, align 8
  %16 = alloca double, align 8
  %17 = alloca double, align 8
  %18 = alloca double, align 8
  %19 = alloca double, align 8
  %20 = alloca double, align 8
  %21 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %11, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %12, align 8
  store double* %2, double** %13, align 8
  store double* %3, double** %14, align 8
  store double* %4, double** %15, align 8
  store double %5, double* %16, align 8
  store double %6, double* %17, align 8
  store double %7, double* %18, align 8
  store double %8, double* %19, align 8
  store double %9, double* %20, align 8
  store i32 0, i32* %21, align 4
  br label %22

22:                                               ; preds = %154, %10
  %23 = load i32, i32* %21, align 4
  %24 = load i32, i32* @NOD, align 4
  %25 = load i32, i32* @N, align 4
  %26 = mul nsw i32 %24, %25
  %27 = icmp sle i32 %23, %26
  br i1 %27, label %28, label %158

28:                                               ; preds = %22
  %29 = load double, double* %18, align 8
  %30 = load double*, double** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @acadoVariables, i32 0, i32 0), align 8
  %31 = load i32, i32* %21, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds double, double* %30, i64 %32
  store double %29, double* %33, align 8
  %34 = load double, double* %19, align 8
  %35 = load double*, double** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @acadoVariables, i32 0, i32 0), align 8
  %36 = load i32, i32* %21, align 4
  %37 = add nsw i32 %36, 1
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds double, double* %35, i64 %38
  store double %34, double* %39, align 8
  %40 = load double*, double** %13, align 8
  %41 = getelementptr inbounds double, double* %40, i64 0
  %42 = load double, double* %41, align 8
  %43 = load double*, double** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @acadoVariables, i32 0, i32 0), align 8
  %44 = load i32, i32* %21, align 4
  %45 = add nsw i32 %44, 2
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds double, double* %43, i64 %46
  store double %42, double* %47, align 8
  %48 = load double*, double** %13, align 8
  %49 = getelementptr inbounds double, double* %48, i64 1
  %50 = load double, double* %49, align 8
  %51 = load double*, double** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @acadoVariables, i32 0, i32 0), align 8
  %52 = load i32, i32* %21, align 4
  %53 = add nsw i32 %52, 3
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds double, double* %51, i64 %54
  store double %50, double* %55, align 8
  %56 = load double*, double** %13, align 8
  %57 = getelementptr inbounds double, double* %56, i64 2
  %58 = load double, double* %57, align 8
  %59 = load double*, double** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @acadoVariables, i32 0, i32 0), align 8
  %60 = load i32, i32* %21, align 4
  %61 = add nsw i32 %60, 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds double, double* %59, i64 %62
  store double %58, double* %63, align 8
  %64 = load double*, double** %13, align 8
  %65 = getelementptr inbounds double, double* %64, i64 3
  %66 = load double, double* %65, align 8
  %67 = load double*, double** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @acadoVariables, i32 0, i32 0), align 8
  %68 = load i32, i32* %21, align 4
  %69 = add nsw i32 %68, 5
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds double, double* %67, i64 %70
  store double %66, double* %71, align 8
  %72 = load double*, double** %14, align 8
  %73 = getelementptr inbounds double, double* %72, i64 0
  %74 = load double, double* %73, align 8
  %75 = load double*, double** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @acadoVariables, i32 0, i32 0), align 8
  %76 = load i32, i32* %21, align 4
  %77 = add nsw i32 %76, 6
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds double, double* %75, i64 %78
  store double %74, double* %79, align 8
  %80 = load double*, double** %14, align 8
  %81 = getelementptr inbounds double, double* %80, i64 1
  %82 = load double, double* %81, align 8
  %83 = load double*, double** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @acadoVariables, i32 0, i32 0), align 8
  %84 = load i32, i32* %21, align 4
  %85 = add nsw i32 %84, 7
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds double, double* %83, i64 %86
  store double %82, double* %87, align 8
  %88 = load double*, double** %14, align 8
  %89 = getelementptr inbounds double, double* %88, i64 2
  %90 = load double, double* %89, align 8
  %91 = load double*, double** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @acadoVariables, i32 0, i32 0), align 8
  %92 = load i32, i32* %21, align 4
  %93 = add nsw i32 %92, 8
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds double, double* %91, i64 %94
  store double %90, double* %95, align 8
  %96 = load double*, double** %14, align 8
  %97 = getelementptr inbounds double, double* %96, i64 3
  %98 = load double, double* %97, align 8
  %99 = load double*, double** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @acadoVariables, i32 0, i32 0), align 8
  %100 = load i32, i32* %21, align 4
  %101 = add nsw i32 %100, 9
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds double, double* %99, i64 %102
  store double %98, double* %103, align 8
  %104 = load double*, double** %15, align 8
  %105 = getelementptr inbounds double, double* %104, i64 0
  %106 = load double, double* %105, align 8
  %107 = load double*, double** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @acadoVariables, i32 0, i32 0), align 8
  %108 = load i32, i32* %21, align 4
  %109 = add nsw i32 %108, 10
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds double, double* %107, i64 %110
  store double %106, double* %111, align 8
  %112 = load double*, double** %15, align 8
  %113 = getelementptr inbounds double, double* %112, i64 1
  %114 = load double, double* %113, align 8
  %115 = load double*, double** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @acadoVariables, i32 0, i32 0), align 8
  %116 = load i32, i32* %21, align 4
  %117 = add nsw i32 %116, 11
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds double, double* %115, i64 %118
  store double %114, double* %119, align 8
  %120 = load double*, double** %15, align 8
  %121 = getelementptr inbounds double, double* %120, i64 2
  %122 = load double, double* %121, align 8
  %123 = load double*, double** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @acadoVariables, i32 0, i32 0), align 8
  %124 = load i32, i32* %21, align 4
  %125 = add nsw i32 %124, 12
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds double, double* %123, i64 %126
  store double %122, double* %127, align 8
  %128 = load double*, double** %15, align 8
  %129 = getelementptr inbounds double, double* %128, i64 3
  %130 = load double, double* %129, align 8
  %131 = load double*, double** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @acadoVariables, i32 0, i32 0), align 8
  %132 = load i32, i32* %21, align 4
  %133 = add nsw i32 %132, 13
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds double, double* %131, i64 %134
  store double %130, double* %135, align 8
  %136 = load double, double* %16, align 8
  %137 = load double*, double** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @acadoVariables, i32 0, i32 0), align 8
  %138 = load i32, i32* %21, align 4
  %139 = add nsw i32 %138, 14
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds double, double* %137, i64 %140
  store double %136, double* %141, align 8
  %142 = load double, double* %17, align 8
  %143 = load double*, double** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @acadoVariables, i32 0, i32 0), align 8
  %144 = load i32, i32* %21, align 4
  %145 = add nsw i32 %144, 15
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds double, double* %143, i64 %146
  store double %142, double* %147, align 8
  %148 = load double, double* %20, align 8
  %149 = load double*, double** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @acadoVariables, i32 0, i32 0), align 8
  %150 = load i32, i32* %21, align 4
  %151 = add nsw i32 %150, 16
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds double, double* %149, i64 %152
  store double %148, double* %153, align 8
  br label %154

154:                                              ; preds = %28
  %155 = load i32, i32* @NOD, align 4
  %156 = load i32, i32* %21, align 4
  %157 = add nsw i32 %156, %155
  store i32 %157, i32* %21, align 4
  br label %22

158:                                              ; preds = %22
  %159 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %160 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %159, i32 0, i32 3
  %161 = load i32, i32* %160, align 4
  %162 = load i32*, i32** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @acadoVariables, i32 0, i32 3), align 8
  %163 = getelementptr inbounds i32, i32* %162, i64 0
  store i32 %161, i32* %163, align 4
  %164 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %165 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %164, i32 0, i32 2
  %166 = load i32, i32* %165, align 4
  %167 = load i32*, i32** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @acadoVariables, i32 0, i32 3), align 8
  %168 = getelementptr inbounds i32, i32* %167, i64 1
  store i32 %166, i32* %168, align 4
  %169 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %170 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 4
  %172 = load i32*, i32** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @acadoVariables, i32 0, i32 3), align 8
  %173 = getelementptr inbounds i32, i32* %172, i64 2
  store i32 %171, i32* %173, align 4
  %174 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %175 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 4
  %177 = load i32*, i32** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @acadoVariables, i32 0, i32 3), align 8
  %178 = getelementptr inbounds i32, i32* %177, i64 3
  store i32 %176, i32* %178, align 4
  %179 = call i32 (...) @acado_preparationStep()
  %180 = call i32 (...) @acado_feedbackStep()
  store i32 0, i32* %21, align 4
  br label %181

181:                                              ; preds = %257, %158
  %182 = load i32, i32* %21, align 4
  %183 = load i32, i32* @N, align 4
  %184 = icmp sle i32 %182, %183
  br i1 %184, label %185, label %260

185:                                              ; preds = %181
  %186 = load i32*, i32** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @acadoVariables, i32 0, i32 2), align 8
  %187 = load i32, i32* %21, align 4
  %188 = load i32, i32* @NX, align 4
  %189 = mul nsw i32 %187, %188
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds i32, i32* %186, i64 %190
  %192 = load i32, i32* %191, align 4
  %193 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %194 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %193, i32 0, i32 5
  %195 = load i32*, i32** %194, align 8
  %196 = load i32, i32* %21, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds i32, i32* %195, i64 %197
  store i32 %192, i32* %198, align 4
  %199 = load i32*, i32** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @acadoVariables, i32 0, i32 2), align 8
  %200 = load i32, i32* %21, align 4
  %201 = load i32, i32* @NX, align 4
  %202 = mul nsw i32 %200, %201
  %203 = add nsw i32 %202, 1
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds i32, i32* %199, i64 %204
  %206 = load i32, i32* %205, align 4
  %207 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %208 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %207, i32 0, i32 4
  %209 = load i32*, i32** %208, align 8
  %210 = load i32, i32* %21, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds i32, i32* %209, i64 %211
  store i32 %206, i32* %212, align 4
  %213 = load i32*, i32** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @acadoVariables, i32 0, i32 2), align 8
  %214 = load i32, i32* %21, align 4
  %215 = load i32, i32* @NX, align 4
  %216 = mul nsw i32 %214, %215
  %217 = add nsw i32 %216, 2
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds i32, i32* %213, i64 %218
  %220 = load i32, i32* %219, align 4
  %221 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %222 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %221, i32 0, i32 3
  %223 = load i32*, i32** %222, align 8
  %224 = load i32, i32* %21, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds i32, i32* %223, i64 %225
  store i32 %220, i32* %226, align 4
  %227 = load i32*, i32** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @acadoVariables, i32 0, i32 2), align 8
  %228 = load i32, i32* %21, align 4
  %229 = load i32, i32* @NX, align 4
  %230 = mul nsw i32 %228, %229
  %231 = add nsw i32 %230, 3
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds i32, i32* %227, i64 %232
  %234 = load i32, i32* %233, align 4
  %235 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %236 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %235, i32 0, i32 2
  %237 = load i32*, i32** %236, align 8
  %238 = load i32, i32* %21, align 4
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds i32, i32* %237, i64 %239
  store i32 %234, i32* %240, align 4
  %241 = load i32, i32* %21, align 4
  %242 = load i32, i32* @N, align 4
  %243 = icmp slt i32 %241, %242
  br i1 %243, label %244, label %256

244:                                              ; preds = %185
  %245 = load i32*, i32** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @acadoVariables, i32 0, i32 1), align 8
  %246 = load i32, i32* %21, align 4
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds i32, i32* %245, i64 %247
  %249 = load i32, i32* %248, align 4
  %250 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %251 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %250, i32 0, i32 1
  %252 = load i32*, i32** %251, align 8
  %253 = load i32, i32* %21, align 4
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds i32, i32* %252, i64 %254
  store i32 %249, i32* %255, align 4
  br label %256

256:                                              ; preds = %244, %185
  br label %257

257:                                              ; preds = %256
  %258 = load i32, i32* %21, align 4
  %259 = add nsw i32 %258, 1
  store i32 %259, i32* %21, align 4
  br label %181

260:                                              ; preds = %181
  %261 = call i32 (...) @acado_getObjective()
  %262 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %263 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %262, i32 0, i32 0
  store i32 %261, i32* %263, align 8
  %264 = call i32 (...) @acado_getNWSR()
  ret i32 %264
}

declare dso_local i32 @acado_preparationStep(...) #1

declare dso_local i32 @acado_feedbackStep(...) #1

declare dso_local i32 @acado_getObjective(...) #1

declare dso_local i32 @acado_getNWSR(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
