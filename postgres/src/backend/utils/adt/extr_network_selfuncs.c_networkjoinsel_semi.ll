; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_network_selfuncs.c_networkjoinsel_semi.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_network_selfuncs.c_networkjoinsel_semi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_10__*, i32 }
%struct.TYPE_10__ = type { double }
%struct.TYPE_12__ = type { double }
%struct.TYPE_13__ = type { i32, double*, i32* }

@STATISTIC_KIND_MCV = common dso_local global i32 0, align 4
@InvalidOid = common dso_local global i32 0, align 4
@ATTSTATSSLOT_VALUES = common dso_local global i32 0, align 4
@ATTSTATSSLOT_NUMBERS = common dso_local global i32 0, align 4
@STATISTIC_KIND_HISTOGRAM = common dso_local global i32 0, align 4
@MAX_CONSIDERED_ELEMS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (double (i32, %struct.TYPE_11__*, %struct.TYPE_11__*)* @networkjoinsel_semi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal double @networkjoinsel_semi(i32 %0, %struct.TYPE_11__* %1, %struct.TYPE_11__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca %struct.TYPE_13__, align 8
  %24 = alloca %struct.TYPE_13__, align 8
  %25 = alloca %struct.TYPE_13__, align 8
  %26 = alloca %struct.TYPE_13__, align 8
  %27 = alloca double, align 8
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %5, align 8
  store %struct.TYPE_11__* %2, %struct.TYPE_11__** %6, align 8
  store double 0.000000e+00, double* %8, align 8
  store double 0.000000e+00, double* %9, align 8
  store double 0.000000e+00, double* %10, align 8
  store double 0.000000e+00, double* %11, align 8
  store double 0.000000e+00, double* %12, align 8
  store double 0.000000e+00, double* %13, align 8
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %21, align 4
  store i32 0, i32* %22, align 4
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = call i64 @HeapTupleIsValid(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %72

35:                                               ; preds = %3
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = call i64 @GETSTRUCT(i32 %38)
  %40 = inttoptr i64 %39 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %40, %struct.TYPE_12__** %7, align 8
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i32 0, i32 0
  %43 = load double, double* %42, align 8
  store double %43, double* %11, align 8
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @STATISTIC_KIND_MCV, align 4
  %48 = load i32, i32* @InvalidOid, align 4
  %49 = load i32, i32* @ATTSTATSSLOT_VALUES, align 4
  %50 = load i32, i32* @ATTSTATSSLOT_NUMBERS, align 4
  %51 = or i32 %49, %50
  %52 = call i32 @get_attstatsslot(%struct.TYPE_13__* %23, i32 %46, i32 %47, i32 %48, i32 %51)
  store i32 %52, i32* %14, align 4
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @STATISTIC_KIND_HISTOGRAM, align 4
  %57 = load i32, i32* @InvalidOid, align 4
  %58 = load i32, i32* @ATTSTATSSLOT_VALUES, align 4
  %59 = call i32 @get_attstatsslot(%struct.TYPE_13__* %25, i32 %55, i32 %56, i32 %57, i32 %58)
  store i32 %59, i32* %16, align 4
  %60 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %23, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @MAX_CONSIDERED_ELEMS, align 4
  %63 = call i32 @Min(i32 %61, i32 %62)
  store i32 %63, i32* %21, align 4
  %64 = load i32, i32* %14, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %35
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %23, i32 0, i32 1
  %68 = load double*, double** %67, align 8
  %69 = load i32, i32* %21, align 4
  %70 = call double @mcv_population(double* %68, i32 %69)
  store double %70, double* %9, align 8
  br label %71

71:                                               ; preds = %66, %35
  br label %75

72:                                               ; preds = %3
  %73 = call i32 @memset(%struct.TYPE_13__* %23, i32 0, i32 24)
  %74 = call i32 @memset(%struct.TYPE_13__* %25, i32 0, i32 24)
  br label %75

75:                                               ; preds = %72, %71
  %76 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = call i64 @HeapTupleIsValid(i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %118

81:                                               ; preds = %75
  %82 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = call i64 @GETSTRUCT(i32 %84)
  %86 = inttoptr i64 %85 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %86, %struct.TYPE_12__** %7, align 8
  %87 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %88 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %87, i32 0, i32 0
  %89 = load double, double* %88, align 8
  store double %89, double* %12, align 8
  %90 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %91 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* @STATISTIC_KIND_MCV, align 4
  %94 = load i32, i32* @InvalidOid, align 4
  %95 = load i32, i32* @ATTSTATSSLOT_VALUES, align 4
  %96 = load i32, i32* @ATTSTATSSLOT_NUMBERS, align 4
  %97 = or i32 %95, %96
  %98 = call i32 @get_attstatsslot(%struct.TYPE_13__* %24, i32 %92, i32 %93, i32 %94, i32 %97)
  store i32 %98, i32* %15, align 4
  %99 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %100 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* @STATISTIC_KIND_HISTOGRAM, align 4
  %103 = load i32, i32* @InvalidOid, align 4
  %104 = load i32, i32* @ATTSTATSSLOT_VALUES, align 4
  %105 = call i32 @get_attstatsslot(%struct.TYPE_13__* %26, i32 %101, i32 %102, i32 %103, i32 %104)
  store i32 %105, i32* %17, align 4
  %106 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %24, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = load i32, i32* @MAX_CONSIDERED_ELEMS, align 4
  %109 = call i32 @Min(i32 %107, i32 %108)
  store i32 %109, i32* %22, align 4
  %110 = load i32, i32* %15, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %117

112:                                              ; preds = %81
  %113 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %24, i32 0, i32 1
  %114 = load double*, double** %113, align 8
  %115 = load i32, i32* %22, align 4
  %116 = call double @mcv_population(double* %114, i32 %115)
  store double %116, double* %10, align 8
  br label %117

117:                                              ; preds = %112, %81
  br label %121

118:                                              ; preds = %75
  %119 = call i32 @memset(%struct.TYPE_13__* %24, i32 0, i32 24)
  %120 = call i32 @memset(%struct.TYPE_13__* %26, i32 0, i32 24)
  br label %121

121:                                              ; preds = %118, %117
  %122 = load i32, i32* %4, align 4
  %123 = call i32 @inet_opr_codenum(i32 %122)
  store i32 %123, i32* %18, align 4
  %124 = load i32, i32* %4, align 4
  %125 = call i32 @get_opcode(i32 %124)
  %126 = call i32 @fmgr_info(i32 %125, i32* %19)
  %127 = load i32, i32* %17, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %145

129:                                              ; preds = %121
  %130 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %131 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %130, i32 0, i32 0
  %132 = load %struct.TYPE_10__*, %struct.TYPE_10__** %131, align 8
  %133 = icmp ne %struct.TYPE_10__* %132, null
  br i1 %133, label %134, label %145

134:                                              ; preds = %129
  %135 = load double, double* %12, align 8
  %136 = fsub double 1.000000e+00, %135
  %137 = load double, double* %10, align 8
  %138 = fsub double %136, %137
  %139 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %140 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %139, i32 0, i32 0
  %141 = load %struct.TYPE_10__*, %struct.TYPE_10__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %141, i32 0, i32 0
  %143 = load double, double* %142, align 8
  %144 = fmul double %138, %143
  store double %144, double* %13, align 8
  br label %145

145:                                              ; preds = %134, %129, %121
  %146 = load i32, i32* %14, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %191

148:                                              ; preds = %145
  %149 = load i32, i32* %15, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %154, label %151

151:                                              ; preds = %148
  %152 = load i32, i32* %17, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %191

154:                                              ; preds = %151, %148
  store i32 0, i32* %20, align 4
  br label %155

155:                                              ; preds = %187, %154
  %156 = load i32, i32* %20, align 4
  %157 = load i32, i32* %21, align 4
  %158 = icmp slt i32 %156, %157
  br i1 %158, label %159, label %190

159:                                              ; preds = %155
  %160 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %23, i32 0, i32 1
  %161 = load double*, double** %160, align 8
  %162 = load i32, i32* %20, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds double, double* %161, i64 %163
  %165 = load double, double* %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %23, i32 0, i32 2
  %167 = load i32*, i32** %166, align 8
  %168 = load i32, i32* %20, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i32, i32* %167, i64 %169
  %171 = load i32, i32* %170, align 4
  %172 = load i32, i32* %15, align 4
  %173 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %24, i32 0, i32 2
  %174 = load i32*, i32** %173, align 8
  %175 = load i32, i32* %22, align 4
  %176 = load i32, i32* %17, align 4
  %177 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %26, i32 0, i32 2
  %178 = load i32*, i32** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %26, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  %181 = load double, double* %13, align 8
  %182 = load i32, i32* %18, align 4
  %183 = call double @inet_semi_join_sel(i32 %171, i32 %172, i32* %174, i32 %175, i32 %176, i32* %178, i32 %180, double %181, i32* %19, i32 %182)
  %184 = fmul double %165, %183
  %185 = load double, double* %8, align 8
  %186 = fadd double %185, %184
  store double %186, double* %8, align 8
  br label %187

187:                                              ; preds = %159
  %188 = load i32, i32* %20, align 4
  %189 = add nsw i32 %188, 1
  store i32 %189, i32* %20, align 4
  br label %155

190:                                              ; preds = %155
  br label %191

191:                                              ; preds = %190, %151, %145
  %192 = load i32, i32* %16, align 4
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %256

194:                                              ; preds = %191
  %195 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %25, i32 0, i32 0
  %196 = load i32, i32* %195, align 8
  %197 = icmp sgt i32 %196, 2
  br i1 %197, label %198, label %256

198:                                              ; preds = %194
  %199 = load i32, i32* %15, align 4
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %204, label %201

201:                                              ; preds = %198
  %202 = load i32, i32* %17, align 4
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %256

204:                                              ; preds = %201, %198
  store double 0.000000e+00, double* %27, align 8
  %205 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %25, i32 0, i32 0
  %206 = load i32, i32* %205, align 8
  %207 = sub nsw i32 %206, 3
  %208 = load i32, i32* @MAX_CONSIDERED_ELEMS, align 4
  %209 = sdiv i32 %207, %208
  %210 = add nsw i32 %209, 1
  store i32 %210, i32* %28, align 4
  store i32 0, i32* %29, align 4
  store i32 1, i32* %20, align 4
  br label %211

211:                                              ; preds = %240, %204
  %212 = load i32, i32* %20, align 4
  %213 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %25, i32 0, i32 0
  %214 = load i32, i32* %213, align 8
  %215 = sub nsw i32 %214, 1
  %216 = icmp slt i32 %212, %215
  br i1 %216, label %217, label %244

217:                                              ; preds = %211
  %218 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %25, i32 0, i32 2
  %219 = load i32*, i32** %218, align 8
  %220 = load i32, i32* %20, align 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds i32, i32* %219, i64 %221
  %223 = load i32, i32* %222, align 4
  %224 = load i32, i32* %15, align 4
  %225 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %24, i32 0, i32 2
  %226 = load i32*, i32** %225, align 8
  %227 = load i32, i32* %22, align 4
  %228 = load i32, i32* %17, align 4
  %229 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %26, i32 0, i32 2
  %230 = load i32*, i32** %229, align 8
  %231 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %26, i32 0, i32 0
  %232 = load i32, i32* %231, align 8
  %233 = load double, double* %13, align 8
  %234 = load i32, i32* %18, align 4
  %235 = call double @inet_semi_join_sel(i32 %223, i32 %224, i32* %226, i32 %227, i32 %228, i32* %230, i32 %232, double %233, i32* %19, i32 %234)
  %236 = load double, double* %27, align 8
  %237 = fadd double %236, %235
  store double %237, double* %27, align 8
  %238 = load i32, i32* %29, align 4
  %239 = add nsw i32 %238, 1
  store i32 %239, i32* %29, align 4
  br label %240

240:                                              ; preds = %217
  %241 = load i32, i32* %28, align 4
  %242 = load i32, i32* %20, align 4
  %243 = add nsw i32 %242, %241
  store i32 %243, i32* %20, align 4
  br label %211

244:                                              ; preds = %211
  %245 = load double, double* %11, align 8
  %246 = fsub double 1.000000e+00, %245
  %247 = load double, double* %9, align 8
  %248 = fsub double %246, %247
  %249 = load double, double* %27, align 8
  %250 = fmul double %248, %249
  %251 = load i32, i32* %29, align 4
  %252 = sitofp i32 %251 to double
  %253 = fdiv double %250, %252
  %254 = load double, double* %8, align 8
  %255 = fadd double %254, %253
  store double %255, double* %8, align 8
  br label %256

256:                                              ; preds = %244, %201, %194, %191
  %257 = load i32, i32* %14, align 4
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %262, label %259

259:                                              ; preds = %256
  %260 = load i32, i32* %16, align 4
  %261 = icmp ne i32 %260, 0
  br i1 %261, label %262, label %268

262:                                              ; preds = %259, %256
  %263 = load i32, i32* %15, align 4
  %264 = icmp ne i32 %263, 0
  br i1 %264, label %277, label %265

265:                                              ; preds = %262
  %266 = load i32, i32* %17, align 4
  %267 = icmp ne i32 %266, 0
  br i1 %267, label %277, label %268

268:                                              ; preds = %265, %259
  %269 = load double, double* %11, align 8
  %270 = fsub double 1.000000e+00, %269
  %271 = load double, double* %12, align 8
  %272 = fsub double 1.000000e+00, %271
  %273 = fmul double %270, %272
  %274 = load i32, i32* %4, align 4
  %275 = call double @DEFAULT_SEL(i32 %274)
  %276 = fmul double %273, %275
  store double %276, double* %8, align 8
  br label %277

277:                                              ; preds = %268, %265, %262
  %278 = call i32 @free_attstatsslot(%struct.TYPE_13__* %23)
  %279 = call i32 @free_attstatsslot(%struct.TYPE_13__* %24)
  %280 = call i32 @free_attstatsslot(%struct.TYPE_13__* %25)
  %281 = call i32 @free_attstatsslot(%struct.TYPE_13__* %26)
  %282 = load double, double* %8, align 8
  ret double %282
}

declare dso_local i64 @HeapTupleIsValid(i32) #1

declare dso_local i64 @GETSTRUCT(i32) #1

declare dso_local i32 @get_attstatsslot(%struct.TYPE_13__*, i32, i32, i32, i32) #1

declare dso_local i32 @Min(i32, i32) #1

declare dso_local double @mcv_population(double*, i32) #1

declare dso_local i32 @memset(%struct.TYPE_13__*, i32, i32) #1

declare dso_local i32 @inet_opr_codenum(i32) #1

declare dso_local i32 @fmgr_info(i32, i32*) #1

declare dso_local i32 @get_opcode(i32) #1

declare dso_local double @inet_semi_join_sel(i32, i32, i32*, i32, i32, i32*, i32, double, i32*, i32) #1

declare dso_local double @DEFAULT_SEL(i32) #1

declare dso_local i32 @free_attstatsslot(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
