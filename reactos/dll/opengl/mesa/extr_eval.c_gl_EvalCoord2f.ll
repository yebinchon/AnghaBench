; ModuleID = '/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_eval.c_gl_EvalCoord2f.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_eval.c_gl_EvalCoord2f.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_11__, %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_8__* }
%struct.TYPE_11__ = type { double*, double*, i32, i64 }
%struct.TYPE_10__ = type { %struct.gl_2d_map, %struct.gl_2d_map, %struct.gl_2d_map, %struct.gl_2d_map, %struct.gl_2d_map, %struct.gl_2d_map, %struct.gl_2d_map, %struct.gl_2d_map, %struct.gl_2d_map }
%struct.gl_2d_map = type { double, double, double, double, i32, i32, i32 }
%struct.TYPE_9__ = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.TYPE_8__ = type { double, double, double, double }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gl_EvalCoord2f(%struct.TYPE_12__* %0, double %1, double %2) #0 {
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca [4 x double], align 16
  %8 = alloca [3 x double], align 16
  %9 = alloca [4 x double], align 16
  %10 = alloca [4 x i64], align 16
  %11 = alloca i64*, align 8
  %12 = alloca [4 x double], align 16
  %13 = alloca i64, align 8
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  %16 = alloca %struct.gl_2d_map*, align 8
  %17 = alloca [4 x double], align 16
  %18 = alloca [4 x double], align 16
  %19 = alloca %struct.gl_2d_map*, align 8
  %20 = alloca [3 x double], align 16
  %21 = alloca [3 x double], align 16
  %22 = alloca double, align 8
  %23 = alloca %struct.gl_2d_map*, align 8
  %24 = alloca %struct.gl_2d_map*, align 8
  %25 = alloca [4 x i64], align 16
  %26 = alloca %struct.gl_2d_map*, align 8
  %27 = alloca %struct.gl_2d_map*, align 8
  %28 = alloca %struct.gl_2d_map*, align 8
  %29 = alloca %struct.gl_2d_map*, align 8
  %30 = alloca %struct.gl_2d_map*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %4, align 8
  store double %1, double* %5, align 8
  store double %2, double* %6, align 8
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 5
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %140

36:                                               ; preds = %3
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 8
  store %struct.gl_2d_map* %39, %struct.gl_2d_map** %16, align 8
  %40 = load double, double* %5, align 8
  %41 = load %struct.gl_2d_map*, %struct.gl_2d_map** %16, align 8
  %42 = getelementptr inbounds %struct.gl_2d_map, %struct.gl_2d_map* %41, i32 0, i32 0
  %43 = load double, double* %42, align 8
  %44 = fsub double %40, %43
  %45 = load %struct.gl_2d_map*, %struct.gl_2d_map** %16, align 8
  %46 = getelementptr inbounds %struct.gl_2d_map, %struct.gl_2d_map* %45, i32 0, i32 1
  %47 = load double, double* %46, align 8
  %48 = load %struct.gl_2d_map*, %struct.gl_2d_map** %16, align 8
  %49 = getelementptr inbounds %struct.gl_2d_map, %struct.gl_2d_map* %48, i32 0, i32 0
  %50 = load double, double* %49, align 8
  %51 = fsub double %47, %50
  %52 = fdiv double %44, %51
  store double %52, double* %14, align 8
  %53 = load double, double* %6, align 8
  %54 = load %struct.gl_2d_map*, %struct.gl_2d_map** %16, align 8
  %55 = getelementptr inbounds %struct.gl_2d_map, %struct.gl_2d_map* %54, i32 0, i32 2
  %56 = load double, double* %55, align 8
  %57 = fsub double %53, %56
  %58 = load %struct.gl_2d_map*, %struct.gl_2d_map** %16, align 8
  %59 = getelementptr inbounds %struct.gl_2d_map, %struct.gl_2d_map* %58, i32 0, i32 3
  %60 = load double, double* %59, align 8
  %61 = load %struct.gl_2d_map*, %struct.gl_2d_map** %16, align 8
  %62 = getelementptr inbounds %struct.gl_2d_map, %struct.gl_2d_map* %61, i32 0, i32 2
  %63 = load double, double* %62, align 8
  %64 = fsub double %60, %63
  %65 = fdiv double %57, %64
  store double %65, double* %15, align 8
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 7
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %125

71:                                               ; preds = %36
  %72 = load %struct.gl_2d_map*, %struct.gl_2d_map** %16, align 8
  %73 = getelementptr inbounds %struct.gl_2d_map, %struct.gl_2d_map* %72, i32 0, i32 6
  %74 = load i32, i32* %73, align 8
  %75 = getelementptr inbounds [4 x double], [4 x double]* %7, i64 0, i64 0
  %76 = getelementptr inbounds [4 x double], [4 x double]* %17, i64 0, i64 0
  %77 = getelementptr inbounds [4 x double], [4 x double]* %18, i64 0, i64 0
  %78 = load double, double* %14, align 8
  %79 = load double, double* %15, align 8
  %80 = load %struct.gl_2d_map*, %struct.gl_2d_map** %16, align 8
  %81 = getelementptr inbounds %struct.gl_2d_map, %struct.gl_2d_map* %80, i32 0, i32 5
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.gl_2d_map*, %struct.gl_2d_map** %16, align 8
  %84 = getelementptr inbounds %struct.gl_2d_map, %struct.gl_2d_map* %83, i32 0, i32 4
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @de_casteljau_surf(i32 %74, double* %75, double* %76, double* %77, double %78, double %79, i32 4, i32 %82, i32 %85)
  %87 = getelementptr inbounds [4 x double], [4 x double]* %17, i64 0, i64 1
  %88 = load double, double* %87, align 8
  %89 = getelementptr inbounds [4 x double], [4 x double]* %18, i64 0, i64 2
  %90 = load double, double* %89, align 16
  %91 = fmul double %88, %90
  %92 = getelementptr inbounds [4 x double], [4 x double]* %17, i64 0, i64 2
  %93 = load double, double* %92, align 16
  %94 = getelementptr inbounds [4 x double], [4 x double]* %18, i64 0, i64 1
  %95 = load double, double* %94, align 8
  %96 = fmul double %93, %95
  %97 = fsub double %91, %96
  %98 = getelementptr inbounds [3 x double], [3 x double]* %8, i64 0, i64 0
  store double %97, double* %98, align 16
  %99 = getelementptr inbounds [4 x double], [4 x double]* %17, i64 0, i64 2
  %100 = load double, double* %99, align 16
  %101 = getelementptr inbounds [4 x double], [4 x double]* %18, i64 0, i64 0
  %102 = load double, double* %101, align 16
  %103 = fmul double %100, %102
  %104 = getelementptr inbounds [4 x double], [4 x double]* %17, i64 0, i64 0
  %105 = load double, double* %104, align 16
  %106 = getelementptr inbounds [4 x double], [4 x double]* %18, i64 0, i64 2
  %107 = load double, double* %106, align 16
  %108 = fmul double %105, %107
  %109 = fsub double %103, %108
  %110 = getelementptr inbounds [3 x double], [3 x double]* %8, i64 0, i64 1
  store double %109, double* %110, align 8
  %111 = getelementptr inbounds [4 x double], [4 x double]* %17, i64 0, i64 0
  %112 = load double, double* %111, align 16
  %113 = getelementptr inbounds [4 x double], [4 x double]* %18, i64 0, i64 1
  %114 = load double, double* %113, align 8
  %115 = fmul double %112, %114
  %116 = getelementptr inbounds [4 x double], [4 x double]* %17, i64 0, i64 1
  %117 = load double, double* %116, align 8
  %118 = getelementptr inbounds [4 x double], [4 x double]* %18, i64 0, i64 0
  %119 = load double, double* %118, align 16
  %120 = fmul double %117, %119
  %121 = fsub double %115, %120
  %122 = getelementptr inbounds [3 x double], [3 x double]* %8, i64 0, i64 2
  store double %121, double* %122, align 16
  %123 = getelementptr inbounds [3 x double], [3 x double]* %8, i64 0, i64 0
  %124 = call i32 @NORMALIZE_3FV(double* %123)
  br label %139

125:                                              ; preds = %36
  %126 = load %struct.gl_2d_map*, %struct.gl_2d_map** %16, align 8
  %127 = getelementptr inbounds %struct.gl_2d_map, %struct.gl_2d_map* %126, i32 0, i32 6
  %128 = load i32, i32* %127, align 8
  %129 = getelementptr inbounds [4 x double], [4 x double]* %7, i64 0, i64 0
  %130 = load double, double* %14, align 8
  %131 = load double, double* %15, align 8
  %132 = load %struct.gl_2d_map*, %struct.gl_2d_map** %16, align 8
  %133 = getelementptr inbounds %struct.gl_2d_map, %struct.gl_2d_map* %132, i32 0, i32 5
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.gl_2d_map*, %struct.gl_2d_map** %16, align 8
  %136 = getelementptr inbounds %struct.gl_2d_map, %struct.gl_2d_map* %135, i32 0, i32 4
  %137 = load i32, i32* %136, align 8
  %138 = call i32 @horner_bezier_surf(i32 %128, double* %129, double %130, double %131, i32 4, i32 %134, i32 %137)
  br label %139

139:                                              ; preds = %125, %71
  br label %252

140:                                              ; preds = %3
  %141 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %142 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %141, i32 0, i32 2
  %143 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %142, i32 0, i32 6
  %144 = load i64, i64* %143, align 8
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %251

146:                                              ; preds = %140
  %147 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %148 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %147, i32 0, i32 1
  %149 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %148, i32 0, i32 7
  store %struct.gl_2d_map* %149, %struct.gl_2d_map** %19, align 8
  %150 = load double, double* %5, align 8
  %151 = load %struct.gl_2d_map*, %struct.gl_2d_map** %19, align 8
  %152 = getelementptr inbounds %struct.gl_2d_map, %struct.gl_2d_map* %151, i32 0, i32 0
  %153 = load double, double* %152, align 8
  %154 = fsub double %150, %153
  %155 = load %struct.gl_2d_map*, %struct.gl_2d_map** %19, align 8
  %156 = getelementptr inbounds %struct.gl_2d_map, %struct.gl_2d_map* %155, i32 0, i32 1
  %157 = load double, double* %156, align 8
  %158 = load %struct.gl_2d_map*, %struct.gl_2d_map** %19, align 8
  %159 = getelementptr inbounds %struct.gl_2d_map, %struct.gl_2d_map* %158, i32 0, i32 0
  %160 = load double, double* %159, align 8
  %161 = fsub double %157, %160
  %162 = fdiv double %154, %161
  store double %162, double* %14, align 8
  %163 = load double, double* %6, align 8
  %164 = load %struct.gl_2d_map*, %struct.gl_2d_map** %19, align 8
  %165 = getelementptr inbounds %struct.gl_2d_map, %struct.gl_2d_map* %164, i32 0, i32 2
  %166 = load double, double* %165, align 8
  %167 = fsub double %163, %166
  %168 = load %struct.gl_2d_map*, %struct.gl_2d_map** %19, align 8
  %169 = getelementptr inbounds %struct.gl_2d_map, %struct.gl_2d_map* %168, i32 0, i32 3
  %170 = load double, double* %169, align 8
  %171 = load %struct.gl_2d_map*, %struct.gl_2d_map** %19, align 8
  %172 = getelementptr inbounds %struct.gl_2d_map, %struct.gl_2d_map* %171, i32 0, i32 2
  %173 = load double, double* %172, align 8
  %174 = fsub double %170, %173
  %175 = fdiv double %167, %174
  store double %175, double* %15, align 8
  %176 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %177 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %176, i32 0, i32 2
  %178 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %177, i32 0, i32 7
  %179 = load i64, i64* %178, align 8
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %235

181:                                              ; preds = %146
  %182 = load %struct.gl_2d_map*, %struct.gl_2d_map** %19, align 8
  %183 = getelementptr inbounds %struct.gl_2d_map, %struct.gl_2d_map* %182, i32 0, i32 6
  %184 = load i32, i32* %183, align 8
  %185 = getelementptr inbounds [4 x double], [4 x double]* %7, i64 0, i64 0
  %186 = getelementptr inbounds [3 x double], [3 x double]* %20, i64 0, i64 0
  %187 = getelementptr inbounds [3 x double], [3 x double]* %21, i64 0, i64 0
  %188 = load double, double* %14, align 8
  %189 = load double, double* %15, align 8
  %190 = load %struct.gl_2d_map*, %struct.gl_2d_map** %19, align 8
  %191 = getelementptr inbounds %struct.gl_2d_map, %struct.gl_2d_map* %190, i32 0, i32 5
  %192 = load i32, i32* %191, align 4
  %193 = load %struct.gl_2d_map*, %struct.gl_2d_map** %19, align 8
  %194 = getelementptr inbounds %struct.gl_2d_map, %struct.gl_2d_map* %193, i32 0, i32 4
  %195 = load i32, i32* %194, align 8
  %196 = call i32 @de_casteljau_surf(i32 %184, double* %185, double* %186, double* %187, double %188, double %189, i32 3, i32 %192, i32 %195)
  %197 = getelementptr inbounds [3 x double], [3 x double]* %20, i64 0, i64 1
  %198 = load double, double* %197, align 8
  %199 = getelementptr inbounds [3 x double], [3 x double]* %21, i64 0, i64 2
  %200 = load double, double* %199, align 16
  %201 = fmul double %198, %200
  %202 = getelementptr inbounds [3 x double], [3 x double]* %20, i64 0, i64 2
  %203 = load double, double* %202, align 16
  %204 = getelementptr inbounds [3 x double], [3 x double]* %21, i64 0, i64 1
  %205 = load double, double* %204, align 8
  %206 = fmul double %203, %205
  %207 = fsub double %201, %206
  %208 = getelementptr inbounds [3 x double], [3 x double]* %8, i64 0, i64 0
  store double %207, double* %208, align 16
  %209 = getelementptr inbounds [3 x double], [3 x double]* %20, i64 0, i64 2
  %210 = load double, double* %209, align 16
  %211 = getelementptr inbounds [3 x double], [3 x double]* %21, i64 0, i64 0
  %212 = load double, double* %211, align 16
  %213 = fmul double %210, %212
  %214 = getelementptr inbounds [3 x double], [3 x double]* %20, i64 0, i64 0
  %215 = load double, double* %214, align 16
  %216 = getelementptr inbounds [3 x double], [3 x double]* %21, i64 0, i64 2
  %217 = load double, double* %216, align 16
  %218 = fmul double %215, %217
  %219 = fsub double %213, %218
  %220 = getelementptr inbounds [3 x double], [3 x double]* %8, i64 0, i64 1
  store double %219, double* %220, align 8
  %221 = getelementptr inbounds [3 x double], [3 x double]* %20, i64 0, i64 0
  %222 = load double, double* %221, align 16
  %223 = getelementptr inbounds [3 x double], [3 x double]* %21, i64 0, i64 1
  %224 = load double, double* %223, align 8
  %225 = fmul double %222, %224
  %226 = getelementptr inbounds [3 x double], [3 x double]* %20, i64 0, i64 1
  %227 = load double, double* %226, align 8
  %228 = getelementptr inbounds [3 x double], [3 x double]* %21, i64 0, i64 0
  %229 = load double, double* %228, align 16
  %230 = fmul double %227, %229
  %231 = fsub double %225, %230
  %232 = getelementptr inbounds [3 x double], [3 x double]* %8, i64 0, i64 2
  store double %231, double* %232, align 16
  %233 = getelementptr inbounds [3 x double], [3 x double]* %8, i64 0, i64 0
  %234 = call i32 @NORMALIZE_3FV(double* %233)
  br label %249

235:                                              ; preds = %146
  %236 = load %struct.gl_2d_map*, %struct.gl_2d_map** %19, align 8
  %237 = getelementptr inbounds %struct.gl_2d_map, %struct.gl_2d_map* %236, i32 0, i32 6
  %238 = load i32, i32* %237, align 8
  %239 = getelementptr inbounds [4 x double], [4 x double]* %7, i64 0, i64 0
  %240 = load double, double* %14, align 8
  %241 = load double, double* %15, align 8
  %242 = load %struct.gl_2d_map*, %struct.gl_2d_map** %19, align 8
  %243 = getelementptr inbounds %struct.gl_2d_map, %struct.gl_2d_map* %242, i32 0, i32 5
  %244 = load i32, i32* %243, align 4
  %245 = load %struct.gl_2d_map*, %struct.gl_2d_map** %19, align 8
  %246 = getelementptr inbounds %struct.gl_2d_map, %struct.gl_2d_map* %245, i32 0, i32 4
  %247 = load i32, i32* %246, align 8
  %248 = call i32 @horner_bezier_surf(i32 %238, double* %239, double %240, double %241, i32 3, i32 %244, i32 %247)
  br label %249

249:                                              ; preds = %235, %181
  %250 = getelementptr inbounds [4 x double], [4 x double]* %7, i64 0, i64 3
  store double 1.000000e+00, double* %250, align 8
  br label %251

251:                                              ; preds = %249, %140
  br label %252

252:                                              ; preds = %251, %139
  %253 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %254 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %253, i32 0, i32 2
  %255 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %254, i32 0, i32 9
  %256 = load i64, i64* %255, align 8
  %257 = icmp ne i64 %256, 0
  br i1 %257, label %258, label %302

258:                                              ; preds = %252
  %259 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %260 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %259, i32 0, i32 1
  %261 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %260, i32 0, i32 6
  store %struct.gl_2d_map* %261, %struct.gl_2d_map** %23, align 8
  %262 = load double, double* %5, align 8
  %263 = load %struct.gl_2d_map*, %struct.gl_2d_map** %23, align 8
  %264 = getelementptr inbounds %struct.gl_2d_map, %struct.gl_2d_map* %263, i32 0, i32 0
  %265 = load double, double* %264, align 8
  %266 = fsub double %262, %265
  %267 = load %struct.gl_2d_map*, %struct.gl_2d_map** %23, align 8
  %268 = getelementptr inbounds %struct.gl_2d_map, %struct.gl_2d_map* %267, i32 0, i32 1
  %269 = load double, double* %268, align 8
  %270 = load %struct.gl_2d_map*, %struct.gl_2d_map** %23, align 8
  %271 = getelementptr inbounds %struct.gl_2d_map, %struct.gl_2d_map* %270, i32 0, i32 0
  %272 = load double, double* %271, align 8
  %273 = fsub double %269, %272
  %274 = fdiv double %266, %273
  store double %274, double* %14, align 8
  %275 = load double, double* %6, align 8
  %276 = load %struct.gl_2d_map*, %struct.gl_2d_map** %23, align 8
  %277 = getelementptr inbounds %struct.gl_2d_map, %struct.gl_2d_map* %276, i32 0, i32 2
  %278 = load double, double* %277, align 8
  %279 = fsub double %275, %278
  %280 = load %struct.gl_2d_map*, %struct.gl_2d_map** %23, align 8
  %281 = getelementptr inbounds %struct.gl_2d_map, %struct.gl_2d_map* %280, i32 0, i32 3
  %282 = load double, double* %281, align 8
  %283 = load %struct.gl_2d_map*, %struct.gl_2d_map** %23, align 8
  %284 = getelementptr inbounds %struct.gl_2d_map, %struct.gl_2d_map* %283, i32 0, i32 2
  %285 = load double, double* %284, align 8
  %286 = fsub double %282, %285
  %287 = fdiv double %279, %286
  store double %287, double* %15, align 8
  %288 = load %struct.gl_2d_map*, %struct.gl_2d_map** %23, align 8
  %289 = getelementptr inbounds %struct.gl_2d_map, %struct.gl_2d_map* %288, i32 0, i32 6
  %290 = load i32, i32* %289, align 8
  %291 = load double, double* %14, align 8
  %292 = load double, double* %15, align 8
  %293 = load %struct.gl_2d_map*, %struct.gl_2d_map** %23, align 8
  %294 = getelementptr inbounds %struct.gl_2d_map, %struct.gl_2d_map* %293, i32 0, i32 5
  %295 = load i32, i32* %294, align 4
  %296 = load %struct.gl_2d_map*, %struct.gl_2d_map** %23, align 8
  %297 = getelementptr inbounds %struct.gl_2d_map, %struct.gl_2d_map* %296, i32 0, i32 4
  %298 = load i32, i32* %297, align 8
  %299 = call i32 @horner_bezier_surf(i32 %290, double* %22, double %291, double %292, i32 1, i32 %295, i32 %298)
  %300 = load double, double* %22, align 8
  %301 = fptosi double %300 to i64
  store i64 %301, i64* %13, align 8
  br label %307

302:                                              ; preds = %252
  %303 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %304 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %303, i32 0, i32 0
  %305 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %304, i32 0, i32 3
  %306 = load i64, i64* %305, align 8
  store i64 %306, i64* %13, align 8
  br label %307

307:                                              ; preds = %302, %258
  %308 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %309 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %308, i32 0, i32 2
  %310 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %309, i32 0, i32 8
  %311 = load i64, i64* %310, align 8
  %312 = icmp ne i64 %311, 0
  br i1 %312, label %313, label %397

313:                                              ; preds = %307
  %314 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %315 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %314, i32 0, i32 1
  %316 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %315, i32 0, i32 5
  store %struct.gl_2d_map* %316, %struct.gl_2d_map** %24, align 8
  %317 = load double, double* %5, align 8
  %318 = load %struct.gl_2d_map*, %struct.gl_2d_map** %24, align 8
  %319 = getelementptr inbounds %struct.gl_2d_map, %struct.gl_2d_map* %318, i32 0, i32 0
  %320 = load double, double* %319, align 8
  %321 = fsub double %317, %320
  %322 = load %struct.gl_2d_map*, %struct.gl_2d_map** %24, align 8
  %323 = getelementptr inbounds %struct.gl_2d_map, %struct.gl_2d_map* %322, i32 0, i32 1
  %324 = load double, double* %323, align 8
  %325 = load %struct.gl_2d_map*, %struct.gl_2d_map** %24, align 8
  %326 = getelementptr inbounds %struct.gl_2d_map, %struct.gl_2d_map* %325, i32 0, i32 0
  %327 = load double, double* %326, align 8
  %328 = fsub double %324, %327
  %329 = fdiv double %321, %328
  store double %329, double* %14, align 8
  %330 = load double, double* %6, align 8
  %331 = load %struct.gl_2d_map*, %struct.gl_2d_map** %24, align 8
  %332 = getelementptr inbounds %struct.gl_2d_map, %struct.gl_2d_map* %331, i32 0, i32 2
  %333 = load double, double* %332, align 8
  %334 = fsub double %330, %333
  %335 = load %struct.gl_2d_map*, %struct.gl_2d_map** %24, align 8
  %336 = getelementptr inbounds %struct.gl_2d_map, %struct.gl_2d_map* %335, i32 0, i32 3
  %337 = load double, double* %336, align 8
  %338 = load %struct.gl_2d_map*, %struct.gl_2d_map** %24, align 8
  %339 = getelementptr inbounds %struct.gl_2d_map, %struct.gl_2d_map* %338, i32 0, i32 2
  %340 = load double, double* %339, align 8
  %341 = fsub double %337, %340
  %342 = fdiv double %334, %341
  store double %342, double* %15, align 8
  %343 = load %struct.gl_2d_map*, %struct.gl_2d_map** %24, align 8
  %344 = getelementptr inbounds %struct.gl_2d_map, %struct.gl_2d_map* %343, i32 0, i32 6
  %345 = load i32, i32* %344, align 8
  %346 = getelementptr inbounds [4 x double], [4 x double]* %9, i64 0, i64 0
  %347 = load double, double* %14, align 8
  %348 = load double, double* %15, align 8
  %349 = load %struct.gl_2d_map*, %struct.gl_2d_map** %24, align 8
  %350 = getelementptr inbounds %struct.gl_2d_map, %struct.gl_2d_map* %349, i32 0, i32 5
  %351 = load i32, i32* %350, align 4
  %352 = load %struct.gl_2d_map*, %struct.gl_2d_map** %24, align 8
  %353 = getelementptr inbounds %struct.gl_2d_map, %struct.gl_2d_map* %352, i32 0, i32 4
  %354 = load i32, i32* %353, align 8
  %355 = call i32 @horner_bezier_surf(i32 %345, double* %346, double %347, double %348, i32 4, i32 %351, i32 %354)
  %356 = getelementptr inbounds [4 x double], [4 x double]* %9, i64 0, i64 0
  %357 = load double, double* %356, align 16
  %358 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %359 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %358, i32 0, i32 3
  %360 = load %struct.TYPE_8__*, %struct.TYPE_8__** %359, align 8
  %361 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %360, i32 0, i32 0
  %362 = load double, double* %361, align 8
  %363 = fmul double %357, %362
  %364 = fptosi double %363 to i64
  %365 = getelementptr inbounds [4 x i64], [4 x i64]* %10, i64 0, i64 0
  store i64 %364, i64* %365, align 16
  %366 = getelementptr inbounds [4 x double], [4 x double]* %9, i64 0, i64 1
  %367 = load double, double* %366, align 8
  %368 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %369 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %368, i32 0, i32 3
  %370 = load %struct.TYPE_8__*, %struct.TYPE_8__** %369, align 8
  %371 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %370, i32 0, i32 1
  %372 = load double, double* %371, align 8
  %373 = fmul double %367, %372
  %374 = fptosi double %373 to i64
  %375 = getelementptr inbounds [4 x i64], [4 x i64]* %10, i64 0, i64 1
  store i64 %374, i64* %375, align 8
  %376 = getelementptr inbounds [4 x double], [4 x double]* %9, i64 0, i64 2
  %377 = load double, double* %376, align 16
  %378 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %379 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %378, i32 0, i32 3
  %380 = load %struct.TYPE_8__*, %struct.TYPE_8__** %379, align 8
  %381 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %380, i32 0, i32 2
  %382 = load double, double* %381, align 8
  %383 = fmul double %377, %382
  %384 = fptosi double %383 to i64
  %385 = getelementptr inbounds [4 x i64], [4 x i64]* %10, i64 0, i64 2
  store i64 %384, i64* %385, align 16
  %386 = getelementptr inbounds [4 x double], [4 x double]* %9, i64 0, i64 3
  %387 = load double, double* %386, align 8
  %388 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %389 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %388, i32 0, i32 3
  %390 = load %struct.TYPE_8__*, %struct.TYPE_8__** %389, align 8
  %391 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %390, i32 0, i32 3
  %392 = load double, double* %391, align 8
  %393 = fmul double %387, %392
  %394 = fptosi double %393 to i64
  %395 = getelementptr inbounds [4 x i64], [4 x i64]* %10, i64 0, i64 3
  store i64 %394, i64* %395, align 8
  %396 = getelementptr inbounds [4 x i64], [4 x i64]* %10, i64 0, i64 0
  store i64* %396, i64** %11, align 8
  br label %405

397:                                              ; preds = %307
  %398 = getelementptr inbounds [4 x i64], [4 x i64]* %25, i64 0, i64 0
  %399 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %400 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %399, i32 0, i32 0
  %401 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %400, i32 0, i32 2
  %402 = load i32, i32* %401, align 8
  %403 = call i32 @COPY_4V(i64* %398, i32 %402)
  %404 = getelementptr inbounds [4 x i64], [4 x i64]* %25, i64 0, i64 0
  store i64* %404, i64** %11, align 8
  br label %405

405:                                              ; preds = %397, %313
  %406 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %407 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %406, i32 0, i32 2
  %408 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %407, i32 0, i32 7
  %409 = load i64, i64* %408, align 8
  %410 = icmp ne i64 %409, 0
  br i1 %410, label %411, label %423

411:                                              ; preds = %405
  %412 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %413 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %412, i32 0, i32 2
  %414 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %413, i32 0, i32 6
  %415 = load i64, i64* %414, align 8
  %416 = icmp ne i64 %415, 0
  br i1 %416, label %495, label %417

417:                                              ; preds = %411
  %418 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %419 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %418, i32 0, i32 2
  %420 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %419, i32 0, i32 5
  %421 = load i64, i64* %420, align 8
  %422 = icmp ne i64 %421, 0
  br i1 %422, label %495, label %423

423:                                              ; preds = %417, %405
  %424 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %425 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %424, i32 0, i32 2
  %426 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %425, i32 0, i32 4
  %427 = load i64, i64* %426, align 8
  %428 = icmp ne i64 %427, 0
  br i1 %428, label %429, label %472

429:                                              ; preds = %423
  %430 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %431 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %430, i32 0, i32 1
  %432 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %431, i32 0, i32 4
  store %struct.gl_2d_map* %432, %struct.gl_2d_map** %26, align 8
  %433 = load double, double* %5, align 8
  %434 = load %struct.gl_2d_map*, %struct.gl_2d_map** %26, align 8
  %435 = getelementptr inbounds %struct.gl_2d_map, %struct.gl_2d_map* %434, i32 0, i32 0
  %436 = load double, double* %435, align 8
  %437 = fsub double %433, %436
  %438 = load %struct.gl_2d_map*, %struct.gl_2d_map** %26, align 8
  %439 = getelementptr inbounds %struct.gl_2d_map, %struct.gl_2d_map* %438, i32 0, i32 1
  %440 = load double, double* %439, align 8
  %441 = load %struct.gl_2d_map*, %struct.gl_2d_map** %26, align 8
  %442 = getelementptr inbounds %struct.gl_2d_map, %struct.gl_2d_map* %441, i32 0, i32 0
  %443 = load double, double* %442, align 8
  %444 = fsub double %440, %443
  %445 = fdiv double %437, %444
  store double %445, double* %14, align 8
  %446 = load double, double* %6, align 8
  %447 = load %struct.gl_2d_map*, %struct.gl_2d_map** %26, align 8
  %448 = getelementptr inbounds %struct.gl_2d_map, %struct.gl_2d_map* %447, i32 0, i32 2
  %449 = load double, double* %448, align 8
  %450 = fsub double %446, %449
  %451 = load %struct.gl_2d_map*, %struct.gl_2d_map** %26, align 8
  %452 = getelementptr inbounds %struct.gl_2d_map, %struct.gl_2d_map* %451, i32 0, i32 3
  %453 = load double, double* %452, align 8
  %454 = load %struct.gl_2d_map*, %struct.gl_2d_map** %26, align 8
  %455 = getelementptr inbounds %struct.gl_2d_map, %struct.gl_2d_map* %454, i32 0, i32 2
  %456 = load double, double* %455, align 8
  %457 = fsub double %453, %456
  %458 = fdiv double %450, %457
  store double %458, double* %15, align 8
  %459 = load %struct.gl_2d_map*, %struct.gl_2d_map** %26, align 8
  %460 = getelementptr inbounds %struct.gl_2d_map, %struct.gl_2d_map* %459, i32 0, i32 6
  %461 = load i32, i32* %460, align 8
  %462 = getelementptr inbounds [3 x double], [3 x double]* %8, i64 0, i64 0
  %463 = load double, double* %14, align 8
  %464 = load double, double* %15, align 8
  %465 = load %struct.gl_2d_map*, %struct.gl_2d_map** %26, align 8
  %466 = getelementptr inbounds %struct.gl_2d_map, %struct.gl_2d_map* %465, i32 0, i32 5
  %467 = load i32, i32* %466, align 4
  %468 = load %struct.gl_2d_map*, %struct.gl_2d_map** %26, align 8
  %469 = getelementptr inbounds %struct.gl_2d_map, %struct.gl_2d_map* %468, i32 0, i32 4
  %470 = load i32, i32* %469, align 8
  %471 = call i32 @horner_bezier_surf(i32 %461, double* %462, double %463, double %464, i32 3, i32 %467, i32 %470)
  br label %494

472:                                              ; preds = %423
  %473 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %474 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %473, i32 0, i32 0
  %475 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %474, i32 0, i32 0
  %476 = load double*, double** %475, align 8
  %477 = getelementptr inbounds double, double* %476, i64 0
  %478 = load double, double* %477, align 8
  %479 = getelementptr inbounds [3 x double], [3 x double]* %8, i64 0, i64 0
  store double %478, double* %479, align 16
  %480 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %481 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %480, i32 0, i32 0
  %482 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %481, i32 0, i32 0
  %483 = load double*, double** %482, align 8
  %484 = getelementptr inbounds double, double* %483, i64 1
  %485 = load double, double* %484, align 8
  %486 = getelementptr inbounds [3 x double], [3 x double]* %8, i64 0, i64 1
  store double %485, double* %486, align 8
  %487 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %488 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %487, i32 0, i32 0
  %489 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %488, i32 0, i32 0
  %490 = load double*, double** %489, align 8
  %491 = getelementptr inbounds double, double* %490, i64 2
  %492 = load double, double* %491, align 8
  %493 = getelementptr inbounds [3 x double], [3 x double]* %8, i64 0, i64 2
  store double %492, double* %493, align 16
  br label %494

494:                                              ; preds = %472, %429
  br label %495

495:                                              ; preds = %494, %417, %411
  %496 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %497 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %496, i32 0, i32 2
  %498 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %497, i32 0, i32 3
  %499 = load i64, i64* %498, align 8
  %500 = icmp ne i64 %499, 0
  br i1 %500, label %501, label %544

501:                                              ; preds = %495
  %502 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %503 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %502, i32 0, i32 1
  %504 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %503, i32 0, i32 3
  store %struct.gl_2d_map* %504, %struct.gl_2d_map** %27, align 8
  %505 = load double, double* %5, align 8
  %506 = load %struct.gl_2d_map*, %struct.gl_2d_map** %27, align 8
  %507 = getelementptr inbounds %struct.gl_2d_map, %struct.gl_2d_map* %506, i32 0, i32 0
  %508 = load double, double* %507, align 8
  %509 = fsub double %505, %508
  %510 = load %struct.gl_2d_map*, %struct.gl_2d_map** %27, align 8
  %511 = getelementptr inbounds %struct.gl_2d_map, %struct.gl_2d_map* %510, i32 0, i32 1
  %512 = load double, double* %511, align 8
  %513 = load %struct.gl_2d_map*, %struct.gl_2d_map** %27, align 8
  %514 = getelementptr inbounds %struct.gl_2d_map, %struct.gl_2d_map* %513, i32 0, i32 0
  %515 = load double, double* %514, align 8
  %516 = fsub double %512, %515
  %517 = fdiv double %509, %516
  store double %517, double* %14, align 8
  %518 = load double, double* %6, align 8
  %519 = load %struct.gl_2d_map*, %struct.gl_2d_map** %27, align 8
  %520 = getelementptr inbounds %struct.gl_2d_map, %struct.gl_2d_map* %519, i32 0, i32 2
  %521 = load double, double* %520, align 8
  %522 = fsub double %518, %521
  %523 = load %struct.gl_2d_map*, %struct.gl_2d_map** %27, align 8
  %524 = getelementptr inbounds %struct.gl_2d_map, %struct.gl_2d_map* %523, i32 0, i32 3
  %525 = load double, double* %524, align 8
  %526 = load %struct.gl_2d_map*, %struct.gl_2d_map** %27, align 8
  %527 = getelementptr inbounds %struct.gl_2d_map, %struct.gl_2d_map* %526, i32 0, i32 2
  %528 = load double, double* %527, align 8
  %529 = fsub double %525, %528
  %530 = fdiv double %522, %529
  store double %530, double* %15, align 8
  %531 = load %struct.gl_2d_map*, %struct.gl_2d_map** %27, align 8
  %532 = getelementptr inbounds %struct.gl_2d_map, %struct.gl_2d_map* %531, i32 0, i32 6
  %533 = load i32, i32* %532, align 8
  %534 = getelementptr inbounds [4 x double], [4 x double]* %12, i64 0, i64 0
  %535 = load double, double* %14, align 8
  %536 = load double, double* %15, align 8
  %537 = load %struct.gl_2d_map*, %struct.gl_2d_map** %27, align 8
  %538 = getelementptr inbounds %struct.gl_2d_map, %struct.gl_2d_map* %537, i32 0, i32 5
  %539 = load i32, i32* %538, align 4
  %540 = load %struct.gl_2d_map*, %struct.gl_2d_map** %27, align 8
  %541 = getelementptr inbounds %struct.gl_2d_map, %struct.gl_2d_map* %540, i32 0, i32 4
  %542 = load i32, i32* %541, align 8
  %543 = call i32 @horner_bezier_surf(i32 %533, double* %534, double %535, double %536, i32 4, i32 %539, i32 %542)
  br label %729

544:                                              ; preds = %495
  %545 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %546 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %545, i32 0, i32 2
  %547 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %546, i32 0, i32 2
  %548 = load i64, i64* %547, align 8
  %549 = icmp ne i64 %548, 0
  br i1 %549, label %550, label %594

550:                                              ; preds = %544
  %551 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %552 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %551, i32 0, i32 1
  %553 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %552, i32 0, i32 2
  store %struct.gl_2d_map* %553, %struct.gl_2d_map** %28, align 8
  %554 = load double, double* %5, align 8
  %555 = load %struct.gl_2d_map*, %struct.gl_2d_map** %28, align 8
  %556 = getelementptr inbounds %struct.gl_2d_map, %struct.gl_2d_map* %555, i32 0, i32 0
  %557 = load double, double* %556, align 8
  %558 = fsub double %554, %557
  %559 = load %struct.gl_2d_map*, %struct.gl_2d_map** %28, align 8
  %560 = getelementptr inbounds %struct.gl_2d_map, %struct.gl_2d_map* %559, i32 0, i32 1
  %561 = load double, double* %560, align 8
  %562 = load %struct.gl_2d_map*, %struct.gl_2d_map** %28, align 8
  %563 = getelementptr inbounds %struct.gl_2d_map, %struct.gl_2d_map* %562, i32 0, i32 0
  %564 = load double, double* %563, align 8
  %565 = fsub double %561, %564
  %566 = fdiv double %558, %565
  store double %566, double* %14, align 8
  %567 = load double, double* %6, align 8
  %568 = load %struct.gl_2d_map*, %struct.gl_2d_map** %28, align 8
  %569 = getelementptr inbounds %struct.gl_2d_map, %struct.gl_2d_map* %568, i32 0, i32 2
  %570 = load double, double* %569, align 8
  %571 = fsub double %567, %570
  %572 = load %struct.gl_2d_map*, %struct.gl_2d_map** %28, align 8
  %573 = getelementptr inbounds %struct.gl_2d_map, %struct.gl_2d_map* %572, i32 0, i32 3
  %574 = load double, double* %573, align 8
  %575 = load %struct.gl_2d_map*, %struct.gl_2d_map** %28, align 8
  %576 = getelementptr inbounds %struct.gl_2d_map, %struct.gl_2d_map* %575, i32 0, i32 2
  %577 = load double, double* %576, align 8
  %578 = fsub double %574, %577
  %579 = fdiv double %571, %578
  store double %579, double* %15, align 8
  %580 = load %struct.gl_2d_map*, %struct.gl_2d_map** %28, align 8
  %581 = getelementptr inbounds %struct.gl_2d_map, %struct.gl_2d_map* %580, i32 0, i32 6
  %582 = load i32, i32* %581, align 8
  %583 = getelementptr inbounds [4 x double], [4 x double]* %12, i64 0, i64 0
  %584 = load double, double* %14, align 8
  %585 = load double, double* %15, align 8
  %586 = load %struct.gl_2d_map*, %struct.gl_2d_map** %28, align 8
  %587 = getelementptr inbounds %struct.gl_2d_map, %struct.gl_2d_map* %586, i32 0, i32 5
  %588 = load i32, i32* %587, align 4
  %589 = load %struct.gl_2d_map*, %struct.gl_2d_map** %28, align 8
  %590 = getelementptr inbounds %struct.gl_2d_map, %struct.gl_2d_map* %589, i32 0, i32 4
  %591 = load i32, i32* %590, align 8
  %592 = call i32 @horner_bezier_surf(i32 %582, double* %583, double %584, double %585, i32 3, i32 %588, i32 %591)
  %593 = getelementptr inbounds [4 x double], [4 x double]* %12, i64 0, i64 3
  store double 1.000000e+00, double* %593, align 8
  br label %728

594:                                              ; preds = %544
  %595 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %596 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %595, i32 0, i32 2
  %597 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %596, i32 0, i32 1
  %598 = load i64, i64* %597, align 8
  %599 = icmp ne i64 %598, 0
  br i1 %599, label %600, label %645

600:                                              ; preds = %594
  %601 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %602 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %601, i32 0, i32 1
  %603 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %602, i32 0, i32 1
  store %struct.gl_2d_map* %603, %struct.gl_2d_map** %29, align 8
  %604 = load double, double* %5, align 8
  %605 = load %struct.gl_2d_map*, %struct.gl_2d_map** %29, align 8
  %606 = getelementptr inbounds %struct.gl_2d_map, %struct.gl_2d_map* %605, i32 0, i32 0
  %607 = load double, double* %606, align 8
  %608 = fsub double %604, %607
  %609 = load %struct.gl_2d_map*, %struct.gl_2d_map** %29, align 8
  %610 = getelementptr inbounds %struct.gl_2d_map, %struct.gl_2d_map* %609, i32 0, i32 1
  %611 = load double, double* %610, align 8
  %612 = load %struct.gl_2d_map*, %struct.gl_2d_map** %29, align 8
  %613 = getelementptr inbounds %struct.gl_2d_map, %struct.gl_2d_map* %612, i32 0, i32 0
  %614 = load double, double* %613, align 8
  %615 = fsub double %611, %614
  %616 = fdiv double %608, %615
  store double %616, double* %14, align 8
  %617 = load double, double* %6, align 8
  %618 = load %struct.gl_2d_map*, %struct.gl_2d_map** %29, align 8
  %619 = getelementptr inbounds %struct.gl_2d_map, %struct.gl_2d_map* %618, i32 0, i32 2
  %620 = load double, double* %619, align 8
  %621 = fsub double %617, %620
  %622 = load %struct.gl_2d_map*, %struct.gl_2d_map** %29, align 8
  %623 = getelementptr inbounds %struct.gl_2d_map, %struct.gl_2d_map* %622, i32 0, i32 3
  %624 = load double, double* %623, align 8
  %625 = load %struct.gl_2d_map*, %struct.gl_2d_map** %29, align 8
  %626 = getelementptr inbounds %struct.gl_2d_map, %struct.gl_2d_map* %625, i32 0, i32 2
  %627 = load double, double* %626, align 8
  %628 = fsub double %624, %627
  %629 = fdiv double %621, %628
  store double %629, double* %15, align 8
  %630 = load %struct.gl_2d_map*, %struct.gl_2d_map** %29, align 8
  %631 = getelementptr inbounds %struct.gl_2d_map, %struct.gl_2d_map* %630, i32 0, i32 6
  %632 = load i32, i32* %631, align 8
  %633 = getelementptr inbounds [4 x double], [4 x double]* %12, i64 0, i64 0
  %634 = load double, double* %14, align 8
  %635 = load double, double* %15, align 8
  %636 = load %struct.gl_2d_map*, %struct.gl_2d_map** %29, align 8
  %637 = getelementptr inbounds %struct.gl_2d_map, %struct.gl_2d_map* %636, i32 0, i32 5
  %638 = load i32, i32* %637, align 4
  %639 = load %struct.gl_2d_map*, %struct.gl_2d_map** %29, align 8
  %640 = getelementptr inbounds %struct.gl_2d_map, %struct.gl_2d_map* %639, i32 0, i32 4
  %641 = load i32, i32* %640, align 8
  %642 = call i32 @horner_bezier_surf(i32 %632, double* %633, double %634, double %635, i32 2, i32 %638, i32 %641)
  %643 = getelementptr inbounds [4 x double], [4 x double]* %12, i64 0, i64 2
  store double 0.000000e+00, double* %643, align 16
  %644 = getelementptr inbounds [4 x double], [4 x double]* %12, i64 0, i64 3
  store double 1.000000e+00, double* %644, align 8
  br label %727

645:                                              ; preds = %594
  %646 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %647 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %646, i32 0, i32 2
  %648 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %647, i32 0, i32 0
  %649 = load i64, i64* %648, align 8
  %650 = icmp ne i64 %649, 0
  br i1 %650, label %651, label %697

651:                                              ; preds = %645
  %652 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %653 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %652, i32 0, i32 1
  %654 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %653, i32 0, i32 0
  store %struct.gl_2d_map* %654, %struct.gl_2d_map** %30, align 8
  %655 = load double, double* %5, align 8
  %656 = load %struct.gl_2d_map*, %struct.gl_2d_map** %30, align 8
  %657 = getelementptr inbounds %struct.gl_2d_map, %struct.gl_2d_map* %656, i32 0, i32 0
  %658 = load double, double* %657, align 8
  %659 = fsub double %655, %658
  %660 = load %struct.gl_2d_map*, %struct.gl_2d_map** %30, align 8
  %661 = getelementptr inbounds %struct.gl_2d_map, %struct.gl_2d_map* %660, i32 0, i32 1
  %662 = load double, double* %661, align 8
  %663 = load %struct.gl_2d_map*, %struct.gl_2d_map** %30, align 8
  %664 = getelementptr inbounds %struct.gl_2d_map, %struct.gl_2d_map* %663, i32 0, i32 0
  %665 = load double, double* %664, align 8
  %666 = fsub double %662, %665
  %667 = fdiv double %659, %666
  store double %667, double* %14, align 8
  %668 = load double, double* %6, align 8
  %669 = load %struct.gl_2d_map*, %struct.gl_2d_map** %30, align 8
  %670 = getelementptr inbounds %struct.gl_2d_map, %struct.gl_2d_map* %669, i32 0, i32 2
  %671 = load double, double* %670, align 8
  %672 = fsub double %668, %671
  %673 = load %struct.gl_2d_map*, %struct.gl_2d_map** %30, align 8
  %674 = getelementptr inbounds %struct.gl_2d_map, %struct.gl_2d_map* %673, i32 0, i32 3
  %675 = load double, double* %674, align 8
  %676 = load %struct.gl_2d_map*, %struct.gl_2d_map** %30, align 8
  %677 = getelementptr inbounds %struct.gl_2d_map, %struct.gl_2d_map* %676, i32 0, i32 2
  %678 = load double, double* %677, align 8
  %679 = fsub double %675, %678
  %680 = fdiv double %672, %679
  store double %680, double* %15, align 8
  %681 = load %struct.gl_2d_map*, %struct.gl_2d_map** %30, align 8
  %682 = getelementptr inbounds %struct.gl_2d_map, %struct.gl_2d_map* %681, i32 0, i32 6
  %683 = load i32, i32* %682, align 8
  %684 = getelementptr inbounds [4 x double], [4 x double]* %12, i64 0, i64 0
  %685 = load double, double* %14, align 8
  %686 = load double, double* %15, align 8
  %687 = load %struct.gl_2d_map*, %struct.gl_2d_map** %30, align 8
  %688 = getelementptr inbounds %struct.gl_2d_map, %struct.gl_2d_map* %687, i32 0, i32 5
  %689 = load i32, i32* %688, align 4
  %690 = load %struct.gl_2d_map*, %struct.gl_2d_map** %30, align 8
  %691 = getelementptr inbounds %struct.gl_2d_map, %struct.gl_2d_map* %690, i32 0, i32 4
  %692 = load i32, i32* %691, align 8
  %693 = call i32 @horner_bezier_surf(i32 %683, double* %684, double %685, double %686, i32 1, i32 %689, i32 %692)
  %694 = getelementptr inbounds [4 x double], [4 x double]* %12, i64 0, i64 1
  store double 0.000000e+00, double* %694, align 8
  %695 = getelementptr inbounds [4 x double], [4 x double]* %12, i64 0, i64 2
  store double 0.000000e+00, double* %695, align 16
  %696 = getelementptr inbounds [4 x double], [4 x double]* %12, i64 0, i64 3
  store double 1.000000e+00, double* %696, align 8
  br label %726

697:                                              ; preds = %645
  %698 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %699 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %698, i32 0, i32 0
  %700 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %699, i32 0, i32 1
  %701 = load double*, double** %700, align 8
  %702 = getelementptr inbounds double, double* %701, i64 0
  %703 = load double, double* %702, align 8
  %704 = getelementptr inbounds [4 x double], [4 x double]* %12, i64 0, i64 0
  store double %703, double* %704, align 16
  %705 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %706 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %705, i32 0, i32 0
  %707 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %706, i32 0, i32 1
  %708 = load double*, double** %707, align 8
  %709 = getelementptr inbounds double, double* %708, i64 1
  %710 = load double, double* %709, align 8
  %711 = getelementptr inbounds [4 x double], [4 x double]* %12, i64 0, i64 1
  store double %710, double* %711, align 8
  %712 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %713 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %712, i32 0, i32 0
  %714 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %713, i32 0, i32 1
  %715 = load double*, double** %714, align 8
  %716 = getelementptr inbounds double, double* %715, i64 2
  %717 = load double, double* %716, align 8
  %718 = getelementptr inbounds [4 x double], [4 x double]* %12, i64 0, i64 2
  store double %717, double* %718, align 16
  %719 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %720 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %719, i32 0, i32 0
  %721 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %720, i32 0, i32 1
  %722 = load double*, double** %721, align 8
  %723 = getelementptr inbounds double, double* %722, i64 3
  %724 = load double, double* %723, align 8
  %725 = getelementptr inbounds [4 x double], [4 x double]* %12, i64 0, i64 3
  store double %724, double* %725, align 8
  br label %726

726:                                              ; preds = %697, %651
  br label %727

727:                                              ; preds = %726, %600
  br label %728

728:                                              ; preds = %727, %550
  br label %729

729:                                              ; preds = %728, %501
  %730 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %731 = getelementptr inbounds [4 x double], [4 x double]* %7, i64 0, i64 0
  %732 = getelementptr inbounds [3 x double], [3 x double]* %8, i64 0, i64 0
  %733 = load i64*, i64** %11, align 8
  %734 = load i64, i64* %13, align 8
  %735 = getelementptr inbounds [4 x double], [4 x double]* %12, i64 0, i64 0
  %736 = call i32 @gl_eval_vertex(%struct.TYPE_12__* %730, double* %731, double* %732, i64* %733, i64 %734, double* %735)
  ret void
}

declare dso_local i32 @de_casteljau_surf(i32, double*, double*, double*, double, double, i32, i32, i32) #1

declare dso_local i32 @NORMALIZE_3FV(double*) #1

declare dso_local i32 @horner_bezier_surf(i32, double*, double, double, i32, i32, i32) #1

declare dso_local i32 @COPY_4V(i64*, i32) #1

declare dso_local i32 @gl_eval_vertex(%struct.TYPE_12__*, double*, double*, i64*, i64, double*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
