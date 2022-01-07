; ModuleID = '/home/carl/AnghaBench/reactos/dll/opengl/glu32/src/libtess/extr_render.c_ComputeNormal.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/opengl/glu32/src/libtess/extr_render.c_ComputeNormal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { double* }

@SIGN_INCONSISTENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, double*, i32)* @ComputeNormal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ComputeNormal(%struct.TYPE_4__* %0, double* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca double*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca %struct.TYPE_5__*, align 8
  %10 = alloca %struct.TYPE_5__*, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  %17 = alloca double, align 8
  %18 = alloca [3 x double], align 16
  %19 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store double* %1, double** %6, align 8
  store i32 %2, i32* %7, align 4
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 1
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  store %struct.TYPE_5__* %22, %struct.TYPE_5__** %8, align 8
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i64 %27
  store %struct.TYPE_5__* %28, %struct.TYPE_5__** %9, align 8
  store i32 0, i32* %19, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %38, label %31

31:                                               ; preds = %3
  %32 = load double*, double** %6, align 8
  %33 = getelementptr inbounds double, double* %32, i64 2
  store double 0.000000e+00, double* %33, align 8
  %34 = load double*, double** %6, align 8
  %35 = getelementptr inbounds double, double* %34, i64 1
  store double 0.000000e+00, double* %35, align 8
  %36 = load double*, double** %6, align 8
  %37 = getelementptr inbounds double, double* %36, i64 0
  store double 0.000000e+00, double* %37, align 8
  br label %38

38:                                               ; preds = %31, %3
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i64 1
  store %struct.TYPE_5__* %40, %struct.TYPE_5__** %10, align 8
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load double*, double** %42, align 8
  %44 = getelementptr inbounds double, double* %43, i64 0
  %45 = load double, double* %44, align 8
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = load double*, double** %47, align 8
  %49 = getelementptr inbounds double, double* %48, i64 0
  %50 = load double, double* %49, align 8
  %51 = fsub double %45, %50
  store double %51, double* %12, align 8
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = load double*, double** %53, align 8
  %55 = getelementptr inbounds double, double* %54, i64 1
  %56 = load double, double* %55, align 8
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = load double*, double** %58, align 8
  %60 = getelementptr inbounds double, double* %59, i64 1
  %61 = load double, double* %60, align 8
  %62 = fsub double %56, %61
  store double %62, double* %13, align 8
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  %65 = load double*, double** %64, align 8
  %66 = getelementptr inbounds double, double* %65, i64 2
  %67 = load double, double* %66, align 8
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 0
  %70 = load double*, double** %69, align 8
  %71 = getelementptr inbounds double, double* %70, i64 2
  %72 = load double, double* %71, align 8
  %73 = fsub double %67, %72
  store double %73, double* %14, align 8
  br label %74

74:                                               ; preds = %224, %38
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 1
  store %struct.TYPE_5__* %76, %struct.TYPE_5__** %10, align 8
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %78 = icmp ult %struct.TYPE_5__* %76, %77
  br i1 %78, label %79, label %225

79:                                               ; preds = %74
  %80 = load double, double* %12, align 8
  store double %80, double* %15, align 8
  %81 = load double, double* %13, align 8
  store double %81, double* %16, align 8
  %82 = load double, double* %14, align 8
  store double %82, double* %17, align 8
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 0
  %85 = load double*, double** %84, align 8
  %86 = getelementptr inbounds double, double* %85, i64 0
  %87 = load double, double* %86, align 8
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 0
  %90 = load double*, double** %89, align 8
  %91 = getelementptr inbounds double, double* %90, i64 0
  %92 = load double, double* %91, align 8
  %93 = fsub double %87, %92
  store double %93, double* %12, align 8
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 0
  %96 = load double*, double** %95, align 8
  %97 = getelementptr inbounds double, double* %96, i64 1
  %98 = load double, double* %97, align 8
  %99 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 0
  %101 = load double*, double** %100, align 8
  %102 = getelementptr inbounds double, double* %101, i64 1
  %103 = load double, double* %102, align 8
  %104 = fsub double %98, %103
  store double %104, double* %13, align 8
  %105 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 0
  %107 = load double*, double** %106, align 8
  %108 = getelementptr inbounds double, double* %107, i64 2
  %109 = load double, double* %108, align 8
  %110 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 0
  %112 = load double*, double** %111, align 8
  %113 = getelementptr inbounds double, double* %112, i64 2
  %114 = load double, double* %113, align 8
  %115 = fsub double %109, %114
  store double %115, double* %14, align 8
  %116 = load double, double* %16, align 8
  %117 = load double, double* %14, align 8
  %118 = fmul double %116, %117
  %119 = load double, double* %17, align 8
  %120 = load double, double* %13, align 8
  %121 = fmul double %119, %120
  %122 = fsub double %118, %121
  %123 = getelementptr inbounds [3 x double], [3 x double]* %18, i64 0, i64 0
  store double %122, double* %123, align 16
  %124 = load double, double* %17, align 8
  %125 = load double, double* %12, align 8
  %126 = fmul double %124, %125
  %127 = load double, double* %15, align 8
  %128 = load double, double* %14, align 8
  %129 = fmul double %127, %128
  %130 = fsub double %126, %129
  %131 = getelementptr inbounds [3 x double], [3 x double]* %18, i64 0, i64 1
  store double %130, double* %131, align 8
  %132 = load double, double* %15, align 8
  %133 = load double, double* %13, align 8
  %134 = fmul double %132, %133
  %135 = load double, double* %16, align 8
  %136 = load double, double* %12, align 8
  %137 = fmul double %135, %136
  %138 = fsub double %134, %137
  %139 = getelementptr inbounds [3 x double], [3 x double]* %18, i64 0, i64 2
  store double %138, double* %139, align 16
  %140 = getelementptr inbounds [3 x double], [3 x double]* %18, i64 0, i64 0
  %141 = load double, double* %140, align 16
  %142 = load double*, double** %6, align 8
  %143 = getelementptr inbounds double, double* %142, i64 0
  %144 = load double, double* %143, align 8
  %145 = fmul double %141, %144
  %146 = getelementptr inbounds [3 x double], [3 x double]* %18, i64 0, i64 1
  %147 = load double, double* %146, align 8
  %148 = load double*, double** %6, align 8
  %149 = getelementptr inbounds double, double* %148, i64 1
  %150 = load double, double* %149, align 8
  %151 = fmul double %147, %150
  %152 = fadd double %145, %151
  %153 = getelementptr inbounds [3 x double], [3 x double]* %18, i64 0, i64 2
  %154 = load double, double* %153, align 16
  %155 = load double*, double** %6, align 8
  %156 = getelementptr inbounds double, double* %155, i64 2
  %157 = load double, double* %156, align 8
  %158 = fmul double %154, %157
  %159 = fadd double %152, %158
  store double %159, double* %11, align 8
  %160 = load i32, i32* %7, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %204, label %162

162:                                              ; preds = %79
  %163 = load double, double* %11, align 8
  %164 = fcmp oge double %163, 0.000000e+00
  br i1 %164, label %165, label %184

165:                                              ; preds = %162
  %166 = getelementptr inbounds [3 x double], [3 x double]* %18, i64 0, i64 0
  %167 = load double, double* %166, align 16
  %168 = load double*, double** %6, align 8
  %169 = getelementptr inbounds double, double* %168, i64 0
  %170 = load double, double* %169, align 8
  %171 = fadd double %170, %167
  store double %171, double* %169, align 8
  %172 = getelementptr inbounds [3 x double], [3 x double]* %18, i64 0, i64 1
  %173 = load double, double* %172, align 8
  %174 = load double*, double** %6, align 8
  %175 = getelementptr inbounds double, double* %174, i64 1
  %176 = load double, double* %175, align 8
  %177 = fadd double %176, %173
  store double %177, double* %175, align 8
  %178 = getelementptr inbounds [3 x double], [3 x double]* %18, i64 0, i64 2
  %179 = load double, double* %178, align 16
  %180 = load double*, double** %6, align 8
  %181 = getelementptr inbounds double, double* %180, i64 2
  %182 = load double, double* %181, align 8
  %183 = fadd double %182, %179
  store double %183, double* %181, align 8
  br label %203

184:                                              ; preds = %162
  %185 = getelementptr inbounds [3 x double], [3 x double]* %18, i64 0, i64 0
  %186 = load double, double* %185, align 16
  %187 = load double*, double** %6, align 8
  %188 = getelementptr inbounds double, double* %187, i64 0
  %189 = load double, double* %188, align 8
  %190 = fsub double %189, %186
  store double %190, double* %188, align 8
  %191 = getelementptr inbounds [3 x double], [3 x double]* %18, i64 0, i64 1
  %192 = load double, double* %191, align 8
  %193 = load double*, double** %6, align 8
  %194 = getelementptr inbounds double, double* %193, i64 1
  %195 = load double, double* %194, align 8
  %196 = fsub double %195, %192
  store double %196, double* %194, align 8
  %197 = getelementptr inbounds [3 x double], [3 x double]* %18, i64 0, i64 2
  %198 = load double, double* %197, align 16
  %199 = load double*, double** %6, align 8
  %200 = getelementptr inbounds double, double* %199, i64 2
  %201 = load double, double* %200, align 8
  %202 = fsub double %201, %198
  store double %202, double* %200, align 8
  br label %203

203:                                              ; preds = %184, %165
  br label %224

204:                                              ; preds = %79
  %205 = load double, double* %11, align 8
  %206 = fcmp une double %205, 0.000000e+00
  br i1 %206, label %207, label %223

207:                                              ; preds = %204
  %208 = load double, double* %11, align 8
  %209 = fcmp ogt double %208, 0.000000e+00
  br i1 %209, label %210, label %216

210:                                              ; preds = %207
  %211 = load i32, i32* %19, align 4
  %212 = icmp slt i32 %211, 0
  br i1 %212, label %213, label %215

213:                                              ; preds = %210
  %214 = load i32, i32* @SIGN_INCONSISTENT, align 4
  store i32 %214, i32* %4, align 4
  br label %227

215:                                              ; preds = %210
  store i32 1, i32* %19, align 4
  br label %222

216:                                              ; preds = %207
  %217 = load i32, i32* %19, align 4
  %218 = icmp sgt i32 %217, 0
  br i1 %218, label %219, label %221

219:                                              ; preds = %216
  %220 = load i32, i32* @SIGN_INCONSISTENT, align 4
  store i32 %220, i32* %4, align 4
  br label %227

221:                                              ; preds = %216
  store i32 -1, i32* %19, align 4
  br label %222

222:                                              ; preds = %221, %215
  br label %223

223:                                              ; preds = %222, %204
  br label %224

224:                                              ; preds = %223, %203
  br label %74

225:                                              ; preds = %74
  %226 = load i32, i32* %19, align 4
  store i32 %226, i32* %4, align 4
  br label %227

227:                                              ; preds = %225, %219, %213
  %228 = load i32, i32* %4, align 4
  ret i32 %228
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
