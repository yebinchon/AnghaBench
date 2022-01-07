; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/optimizer/path/extr_costsize.c_final_cost_mergejoin.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/optimizer/path/extr_costsize.c_final_cost_mergejoin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_29__ = type { i32, i32, %struct.TYPE_21__, i32*, i32* }
%struct.TYPE_21__ = type { i64, %struct.TYPE_20__, i32*, %struct.TYPE_28__*, %struct.TYPE_28__* }
%struct.TYPE_20__ = type { double, i64, double, double, %struct.TYPE_26__*, %struct.TYPE_23__*, %struct.TYPE_22__* }
%struct.TYPE_26__ = type { %struct.TYPE_25__ }
%struct.TYPE_25__ = type { double, i32 }
%struct.TYPE_23__ = type { double }
%struct.TYPE_22__ = type { double }
%struct.TYPE_28__ = type { double, %struct.TYPE_24__* }
%struct.TYPE_24__ = type { i32 }
%struct.TYPE_19__ = type { double, double, double, double, double, double, double }
%struct.TYPE_30__ = type { i64 }
%struct.TYPE_27__ = type { double, double }

@enable_mergejoin = common dso_local global i32 0, align 4
@disable_cost = common dso_local global double 0.000000e+00, align 8
@JOIN_SEMI = common dso_local global i64 0, align 8
@JOIN_ANTI = common dso_local global i64 0, align 8
@UniquePath = common dso_local global i32 0, align 4
@cpu_operator_cost = common dso_local global double 0.000000e+00, align 8
@enable_material = common dso_local global i64 0, align 8
@NIL = common dso_local global i32* null, align 8
@work_mem = common dso_local global i64 0, align 8
@cpu_tuple_cost = common dso_local global double 0.000000e+00, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @final_cost_mergejoin(i32* %0, %struct.TYPE_29__* %1, %struct.TYPE_19__* %2, %struct.TYPE_30__* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_29__*, align 8
  %7 = alloca %struct.TYPE_19__*, align 8
  %8 = alloca %struct.TYPE_30__*, align 8
  %9 = alloca %struct.TYPE_28__*, align 8
  %10 = alloca %struct.TYPE_28__*, align 8
  %11 = alloca double, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  %17 = alloca double, align 8
  %18 = alloca double, align 8
  %19 = alloca double, align 8
  %20 = alloca double, align 8
  %21 = alloca double, align 8
  %22 = alloca double, align 8
  %23 = alloca double, align 8
  %24 = alloca %struct.TYPE_27__, align 8
  %25 = alloca %struct.TYPE_27__, align 8
  %26 = alloca double, align 8
  %27 = alloca double, align 8
  %28 = alloca double, align 8
  %29 = alloca double, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_29__* %1, %struct.TYPE_29__** %6, align 8
  store %struct.TYPE_19__* %2, %struct.TYPE_19__** %7, align 8
  store %struct.TYPE_30__* %3, %struct.TYPE_30__** %8, align 8
  %30 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %31, i32 0, i32 4
  %33 = load %struct.TYPE_28__*, %struct.TYPE_28__** %32, align 8
  store %struct.TYPE_28__* %33, %struct.TYPE_28__** %9, align 8
  %34 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %35, i32 0, i32 3
  %37 = load %struct.TYPE_28__*, %struct.TYPE_28__** %36, align 8
  store %struct.TYPE_28__* %37, %struct.TYPE_28__** %10, align 8
  %38 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %39 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %38, i32 0, i32 0
  %40 = load double, double* %39, align 8
  store double %40, double* %11, align 8
  %41 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %41, i32 0, i32 3
  %43 = load i32*, i32** %42, align 8
  store i32* %43, i32** %12, align 8
  %44 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %44, i32 0, i32 4
  %46 = load i32*, i32** %45, align 8
  store i32* %46, i32** %13, align 8
  %47 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %47, i32 0, i32 0
  %49 = load double, double* %48, align 8
  store double %49, double* %14, align 8
  %50 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %50, i32 0, i32 1
  %52 = load double, double* %51, align 8
  store double %52, double* %15, align 8
  %53 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %53, i32 0, i32 2
  %55 = load double, double* %54, align 8
  store double %55, double* %16, align 8
  %56 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %56, i32 0, i32 3
  %58 = load double, double* %57, align 8
  store double %58, double* %17, align 8
  %59 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %59, i32 0, i32 4
  %61 = load double, double* %60, align 8
  store double %61, double* %18, align 8
  %62 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %63 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %62, i32 0, i32 5
  %64 = load double, double* %63, align 8
  store double %64, double* %19, align 8
  %65 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %65, i32 0, i32 6
  %67 = load double, double* %66, align 8
  store double %67, double* %20, align 8
  %68 = load double, double* %11, align 8
  %69 = fcmp ole double %68, 0.000000e+00
  br i1 %69, label %74, label %70

70:                                               ; preds = %4
  %71 = load double, double* %11, align 8
  %72 = call i64 @isnan(double %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %70, %4
  store double 1.000000e+00, double* %11, align 8
  br label %75

75:                                               ; preds = %74, %70
  %76 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %76, i32 0, i32 2
  %78 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %78, i32 0, i32 6
  %80 = load %struct.TYPE_22__*, %struct.TYPE_22__** %79, align 8
  %81 = icmp ne %struct.TYPE_22__* %80, null
  br i1 %81, label %82, label %94

82:                                               ; preds = %75
  %83 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %83, i32 0, i32 2
  %85 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %85, i32 0, i32 6
  %87 = load %struct.TYPE_22__*, %struct.TYPE_22__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %87, i32 0, i32 0
  %89 = load double, double* %88, align 8
  %90 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %91 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %90, i32 0, i32 2
  %92 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %92, i32 0, i32 0
  store double %89, double* %93, align 8
  br label %106

94:                                               ; preds = %75
  %95 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %96 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %95, i32 0, i32 2
  %97 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %97, i32 0, i32 5
  %99 = load %struct.TYPE_23__*, %struct.TYPE_23__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %99, i32 0, i32 0
  %101 = load double, double* %100, align 8
  %102 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %103 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %102, i32 0, i32 2
  %104 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %104, i32 0, i32 0
  store double %101, double* %105, align 8
  br label %106

106:                                              ; preds = %94, %82
  %107 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %108 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %107, i32 0, i32 2
  %109 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = icmp sgt i64 %111, 0
  br i1 %112, label %113, label %130

113:                                              ; preds = %106
  %114 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %115 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %114, i32 0, i32 2
  %116 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %115, i32 0, i32 1
  %117 = call double @get_parallel_divisor(%struct.TYPE_20__* %116)
  store double %117, double* %29, align 8
  %118 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %119 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %118, i32 0, i32 2
  %120 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %119, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %120, i32 0, i32 0
  %122 = load double, double* %121, align 8
  %123 = load double, double* %29, align 8
  %124 = fdiv double %122, %123
  %125 = call double @clamp_row_est(double %124)
  %126 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %127 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %126, i32 0, i32 2
  %128 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %127, i32 0, i32 1
  %129 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %128, i32 0, i32 0
  store double %125, double* %129, align 8
  br label %130

130:                                              ; preds = %113, %106
  %131 = load i32, i32* @enable_mergejoin, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %137, label %133

133:                                              ; preds = %130
  %134 = load double, double* @disable_cost, align 8
  %135 = load double, double* %14, align 8
  %136 = fadd double %135, %134
  store double %136, double* %14, align 8
  br label %137

137:                                              ; preds = %133, %130
  %138 = load i32*, i32** %12, align 8
  %139 = load i32*, i32** %5, align 8
  %140 = call i32 @cost_qual_eval(%struct.TYPE_27__* %24, i32* %138, i32* %139)
  %141 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %142 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %141, i32 0, i32 2
  %143 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %142, i32 0, i32 2
  %144 = load i32*, i32** %143, align 8
  %145 = load i32*, i32** %5, align 8
  %146 = call i32 @cost_qual_eval(%struct.TYPE_27__* %25, i32* %144, i32* %145)
  %147 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %24, i32 0, i32 0
  %148 = load double, double* %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %25, i32 0, i32 0
  %150 = load double, double* %149, align 8
  %151 = fsub double %150, %148
  store double %151, double* %149, align 8
  %152 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %24, i32 0, i32 1
  %153 = load double, double* %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %25, i32 0, i32 1
  %155 = load double, double* %154, align 8
  %156 = fsub double %155, %153
  store double %156, double* %154, align 8
  %157 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %158 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %157, i32 0, i32 2
  %159 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %158, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  %161 = load i64, i64* @JOIN_SEMI, align 8
  %162 = icmp eq i64 %160, %161
  br i1 %162, label %175, label %163

163:                                              ; preds = %137
  %164 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %165 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %164, i32 0, i32 2
  %166 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %165, i32 0, i32 0
  %167 = load i64, i64* %166, align 8
  %168 = load i64, i64* @JOIN_ANTI, align 8
  %169 = icmp eq i64 %167, %168
  br i1 %169, label %175, label %170

170:                                              ; preds = %163
  %171 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %172 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %171, i32 0, i32 0
  %173 = load i64, i64* %172, align 8
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %189

175:                                              ; preds = %170, %163, %137
  %176 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %177 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %176, i32 0, i32 2
  %178 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %177, i32 0, i32 2
  %179 = load i32*, i32** %178, align 8
  %180 = call i64 @list_length(i32* %179)
  %181 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %182 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %181, i32 0, i32 3
  %183 = load i32*, i32** %182, align 8
  %184 = call i64 @list_length(i32* %183)
  %185 = icmp eq i64 %180, %184
  br i1 %185, label %186, label %189

186:                                              ; preds = %175
  %187 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %188 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %187, i32 0, i32 0
  store i32 1, i32* %188, align 8
  br label %192

189:                                              ; preds = %175, %170
  %190 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %191 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %190, i32 0, i32 0
  store i32 0, i32* %191, align 8
  br label %192

192:                                              ; preds = %189, %186
  %193 = load i32*, i32** %5, align 8
  %194 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %195 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %194, i32 0, i32 2
  %196 = load i32*, i32** %12, align 8
  %197 = call double @approx_tuple_count(i32* %193, %struct.TYPE_21__* %195, i32* %196)
  store double %197, double* %26, align 8
  %198 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %199 = load i32, i32* @UniquePath, align 4
  %200 = call i64 @IsA(%struct.TYPE_28__* %198, i32 %199)
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %207, label %202

202:                                              ; preds = %192
  %203 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %204 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 8
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %208

207:                                              ; preds = %202, %192
  store double 0.000000e+00, double* %27, align 8
  br label %216

208:                                              ; preds = %202
  %209 = load double, double* %26, align 8
  %210 = load double, double* %11, align 8
  %211 = fsub double %209, %210
  store double %211, double* %27, align 8
  %212 = load double, double* %27, align 8
  %213 = fcmp olt double %212, 0.000000e+00
  br i1 %213, label %214, label %215

214:                                              ; preds = %208
  store double 0.000000e+00, double* %27, align 8
  br label %215

215:                                              ; preds = %214, %208
  br label %216

216:                                              ; preds = %215, %207
  %217 = load double, double* %27, align 8
  %218 = load double, double* %18, align 8
  %219 = fdiv double %217, %218
  %220 = fadd double 1.000000e+00, %219
  store double %220, double* %28, align 8
  %221 = load double, double* %16, align 8
  %222 = load double, double* %28, align 8
  %223 = fmul double %221, %222
  store double %223, double* %22, align 8
  %224 = load double, double* %16, align 8
  %225 = load double, double* @cpu_operator_cost, align 8
  %226 = load double, double* %18, align 8
  %227 = fmul double %225, %226
  %228 = load double, double* %28, align 8
  %229 = fmul double %227, %228
  %230 = fadd double %224, %229
  store double %230, double* %23, align 8
  %231 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %232 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %231, i32 0, i32 0
  %233 = load i32, i32* %232, align 8
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %235, label %238

235:                                              ; preds = %216
  %236 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %237 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %236, i32 0, i32 1
  store i32 0, i32* %237, align 4
  br label %286

238:                                              ; preds = %216
  %239 = load i64, i64* @enable_material, align 8
  %240 = icmp ne i64 %239, 0
  br i1 %240, label %241, label %248

241:                                              ; preds = %238
  %242 = load double, double* %23, align 8
  %243 = load double, double* %22, align 8
  %244 = fcmp olt double %242, %243
  br i1 %244, label %245, label %248

245:                                              ; preds = %241
  %246 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %247 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %246, i32 0, i32 1
  store i32 1, i32* %247, align 4
  br label %285

248:                                              ; preds = %241, %238
  %249 = load i32*, i32** %13, align 8
  %250 = load i32*, i32** @NIL, align 8
  %251 = icmp eq i32* %249, %250
  br i1 %251, label %252, label %259

252:                                              ; preds = %248
  %253 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %254 = call i32 @ExecSupportsMarkRestore(%struct.TYPE_28__* %253)
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %259, label %256

256:                                              ; preds = %252
  %257 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %258 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %257, i32 0, i32 1
  store i32 1, i32* %258, align 4
  br label %284

259:                                              ; preds = %252, %248
  %260 = load i64, i64* @enable_material, align 8
  %261 = icmp ne i64 %260, 0
  br i1 %261, label %262, label %280

262:                                              ; preds = %259
  %263 = load i32*, i32** %13, align 8
  %264 = load i32*, i32** @NIL, align 8
  %265 = icmp ne i32* %263, %264
  br i1 %265, label %266, label %280

266:                                              ; preds = %262
  %267 = load double, double* %11, align 8
  %268 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %269 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %268, i32 0, i32 1
  %270 = load %struct.TYPE_24__*, %struct.TYPE_24__** %269, align 8
  %271 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %270, i32 0, i32 0
  %272 = load i32, i32* %271, align 4
  %273 = call i64 @relation_byte_size(double %267, i32 %272)
  %274 = load i64, i64* @work_mem, align 8
  %275 = mul nsw i64 %274, 1024
  %276 = icmp sgt i64 %273, %275
  br i1 %276, label %277, label %280

277:                                              ; preds = %266
  %278 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %279 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %278, i32 0, i32 1
  store i32 1, i32* %279, align 4
  br label %283

280:                                              ; preds = %266, %262, %259
  %281 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %282 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %281, i32 0, i32 1
  store i32 0, i32* %282, align 4
  br label %283

283:                                              ; preds = %280, %277
  br label %284

284:                                              ; preds = %283, %256
  br label %285

285:                                              ; preds = %284, %245
  br label %286

286:                                              ; preds = %285, %235
  %287 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %288 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %287, i32 0, i32 1
  %289 = load i32, i32* %288, align 4
  %290 = icmp ne i32 %289, 0
  br i1 %290, label %291, label %295

291:                                              ; preds = %286
  %292 = load double, double* %23, align 8
  %293 = load double, double* %15, align 8
  %294 = fadd double %293, %292
  store double %294, double* %15, align 8
  br label %299

295:                                              ; preds = %286
  %296 = load double, double* %22, align 8
  %297 = load double, double* %15, align 8
  %298 = fadd double %297, %296
  store double %298, double* %15, align 8
  br label %299

299:                                              ; preds = %295, %291
  %300 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %24, i32 0, i32 0
  %301 = load double, double* %300, align 8
  %302 = load double, double* %14, align 8
  %303 = fadd double %302, %301
  store double %303, double* %14, align 8
  %304 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %24, i32 0, i32 1
  %305 = load double, double* %304, align 8
  %306 = load double, double* %19, align 8
  %307 = load double, double* %20, align 8
  %308 = load double, double* %28, align 8
  %309 = fmul double %307, %308
  %310 = fadd double %306, %309
  %311 = fmul double %305, %310
  %312 = load double, double* %14, align 8
  %313 = fadd double %312, %311
  store double %313, double* %14, align 8
  %314 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %24, i32 0, i32 1
  %315 = load double, double* %314, align 8
  %316 = load double, double* %17, align 8
  %317 = load double, double* %19, align 8
  %318 = fsub double %316, %317
  %319 = load double, double* %18, align 8
  %320 = load double, double* %20, align 8
  %321 = fsub double %319, %320
  %322 = load double, double* %28, align 8
  %323 = fmul double %321, %322
  %324 = fadd double %318, %323
  %325 = fmul double %315, %324
  %326 = load double, double* %15, align 8
  %327 = fadd double %326, %325
  store double %327, double* %15, align 8
  %328 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %25, i32 0, i32 0
  %329 = load double, double* %328, align 8
  %330 = load double, double* %14, align 8
  %331 = fadd double %330, %329
  store double %331, double* %14, align 8
  %332 = load double, double* @cpu_tuple_cost, align 8
  %333 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %25, i32 0, i32 1
  %334 = load double, double* %333, align 8
  %335 = fadd double %332, %334
  store double %335, double* %21, align 8
  %336 = load double, double* %21, align 8
  %337 = load double, double* %26, align 8
  %338 = fmul double %336, %337
  %339 = load double, double* %15, align 8
  %340 = fadd double %339, %338
  store double %340, double* %15, align 8
  %341 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %342 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %341, i32 0, i32 2
  %343 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %342, i32 0, i32 1
  %344 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %343, i32 0, i32 4
  %345 = load %struct.TYPE_26__*, %struct.TYPE_26__** %344, align 8
  %346 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %345, i32 0, i32 0
  %347 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %346, i32 0, i32 0
  %348 = load double, double* %347, align 8
  %349 = load double, double* %14, align 8
  %350 = fadd double %349, %348
  store double %350, double* %14, align 8
  %351 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %352 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %351, i32 0, i32 2
  %353 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %352, i32 0, i32 1
  %354 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %353, i32 0, i32 4
  %355 = load %struct.TYPE_26__*, %struct.TYPE_26__** %354, align 8
  %356 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %355, i32 0, i32 0
  %357 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %356, i32 0, i32 1
  %358 = load i32, i32* %357, align 8
  %359 = sitofp i32 %358 to double
  %360 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %361 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %360, i32 0, i32 2
  %362 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %361, i32 0, i32 1
  %363 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %362, i32 0, i32 0
  %364 = load double, double* %363, align 8
  %365 = fmul double %359, %364
  %366 = load double, double* %15, align 8
  %367 = fadd double %366, %365
  store double %367, double* %15, align 8
  %368 = load double, double* %14, align 8
  %369 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %370 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %369, i32 0, i32 2
  %371 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %370, i32 0, i32 1
  %372 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %371, i32 0, i32 2
  store double %368, double* %372, align 8
  %373 = load double, double* %14, align 8
  %374 = load double, double* %15, align 8
  %375 = fadd double %373, %374
  %376 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %377 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %376, i32 0, i32 2
  %378 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %377, i32 0, i32 1
  %379 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %378, i32 0, i32 3
  store double %375, double* %379, align 8
  ret void
}

declare dso_local i64 @isnan(double) #1

declare dso_local double @get_parallel_divisor(%struct.TYPE_20__*) #1

declare dso_local double @clamp_row_est(double) #1

declare dso_local i32 @cost_qual_eval(%struct.TYPE_27__*, i32*, i32*) #1

declare dso_local i64 @list_length(i32*) #1

declare dso_local double @approx_tuple_count(i32*, %struct.TYPE_21__*, i32*) #1

declare dso_local i64 @IsA(%struct.TYPE_28__*, i32) #1

declare dso_local i32 @ExecSupportsMarkRestore(%struct.TYPE_28__*) #1

declare dso_local i64 @relation_byte_size(double, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
