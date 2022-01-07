; ModuleID = '/home/carl/AnghaBench/openpilot/selfdrive/controls/lib/lateral_mpc/lib_mpc_export/extr_acado_solver.c_acado_getKKT.c'
source_filename = "/home/carl/AnghaBench/openpilot/selfdrive/controls/lib/lateral_mpc/lib_mpc_export/extr_acado_solver.c_acado_getKKT.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32*, i32*, i32*, i32*, i32*, i32*, i32* }

@acadoWorkspace = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acado_getKKT() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @acadoWorkspace, i32 0, i32 0), align 8
  %5 = getelementptr inbounds i32, i32* %4, i64 0
  %6 = load i32, i32* %5, align 4
  %7 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @acadoWorkspace, i32 0, i32 1), align 8
  %8 = getelementptr inbounds i32, i32* %7, i64 0
  %9 = load i32, i32* %8, align 4
  %10 = mul nsw i32 %6, %9
  %11 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @acadoWorkspace, i32 0, i32 0), align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 1
  %13 = load i32, i32* %12, align 4
  %14 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @acadoWorkspace, i32 0, i32 1), align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 1
  %16 = load i32, i32* %15, align 4
  %17 = mul nsw i32 %13, %16
  %18 = add nsw i32 %10, %17
  %19 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @acadoWorkspace, i32 0, i32 0), align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 2
  %21 = load i32, i32* %20, align 4
  %22 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @acadoWorkspace, i32 0, i32 1), align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 2
  %24 = load i32, i32* %23, align 4
  %25 = mul nsw i32 %21, %24
  %26 = add nsw i32 %18, %25
  %27 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @acadoWorkspace, i32 0, i32 0), align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 3
  %29 = load i32, i32* %28, align 4
  %30 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @acadoWorkspace, i32 0, i32 1), align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 3
  %32 = load i32, i32* %31, align 4
  %33 = mul nsw i32 %29, %32
  %34 = add nsw i32 %26, %33
  %35 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @acadoWorkspace, i32 0, i32 0), align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 4
  %37 = load i32, i32* %36, align 4
  %38 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @acadoWorkspace, i32 0, i32 1), align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 4
  %40 = load i32, i32* %39, align 4
  %41 = mul nsw i32 %37, %40
  %42 = add nsw i32 %34, %41
  %43 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @acadoWorkspace, i32 0, i32 0), align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 5
  %45 = load i32, i32* %44, align 4
  %46 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @acadoWorkspace, i32 0, i32 1), align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 5
  %48 = load i32, i32* %47, align 4
  %49 = mul nsw i32 %45, %48
  %50 = add nsw i32 %42, %49
  %51 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @acadoWorkspace, i32 0, i32 0), align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 6
  %53 = load i32, i32* %52, align 4
  %54 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @acadoWorkspace, i32 0, i32 1), align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 6
  %56 = load i32, i32* %55, align 4
  %57 = mul nsw i32 %53, %56
  %58 = add nsw i32 %50, %57
  %59 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @acadoWorkspace, i32 0, i32 0), align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 7
  %61 = load i32, i32* %60, align 4
  %62 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @acadoWorkspace, i32 0, i32 1), align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 7
  %64 = load i32, i32* %63, align 4
  %65 = mul nsw i32 %61, %64
  %66 = add nsw i32 %58, %65
  %67 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @acadoWorkspace, i32 0, i32 0), align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 8
  %69 = load i32, i32* %68, align 4
  %70 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @acadoWorkspace, i32 0, i32 1), align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 8
  %72 = load i32, i32* %71, align 4
  %73 = mul nsw i32 %69, %72
  %74 = add nsw i32 %66, %73
  %75 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @acadoWorkspace, i32 0, i32 0), align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 9
  %77 = load i32, i32* %76, align 4
  %78 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @acadoWorkspace, i32 0, i32 1), align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 9
  %80 = load i32, i32* %79, align 4
  %81 = mul nsw i32 %77, %80
  %82 = add nsw i32 %74, %81
  %83 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @acadoWorkspace, i32 0, i32 0), align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 10
  %85 = load i32, i32* %84, align 4
  %86 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @acadoWorkspace, i32 0, i32 1), align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 10
  %88 = load i32, i32* %87, align 4
  %89 = mul nsw i32 %85, %88
  %90 = add nsw i32 %82, %89
  %91 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @acadoWorkspace, i32 0, i32 0), align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 11
  %93 = load i32, i32* %92, align 4
  %94 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @acadoWorkspace, i32 0, i32 1), align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 11
  %96 = load i32, i32* %95, align 4
  %97 = mul nsw i32 %93, %96
  %98 = add nsw i32 %90, %97
  %99 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @acadoWorkspace, i32 0, i32 0), align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 12
  %101 = load i32, i32* %100, align 4
  %102 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @acadoWorkspace, i32 0, i32 1), align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 12
  %104 = load i32, i32* %103, align 4
  %105 = mul nsw i32 %101, %104
  %106 = add nsw i32 %98, %105
  %107 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @acadoWorkspace, i32 0, i32 0), align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 13
  %109 = load i32, i32* %108, align 4
  %110 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @acadoWorkspace, i32 0, i32 1), align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 13
  %112 = load i32, i32* %111, align 4
  %113 = mul nsw i32 %109, %112
  %114 = add nsw i32 %106, %113
  %115 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @acadoWorkspace, i32 0, i32 0), align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 14
  %117 = load i32, i32* %116, align 4
  %118 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @acadoWorkspace, i32 0, i32 1), align 8
  %119 = getelementptr inbounds i32, i32* %118, i64 14
  %120 = load i32, i32* %119, align 4
  %121 = mul nsw i32 %117, %120
  %122 = add nsw i32 %114, %121
  %123 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @acadoWorkspace, i32 0, i32 0), align 8
  %124 = getelementptr inbounds i32, i32* %123, i64 15
  %125 = load i32, i32* %124, align 4
  %126 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @acadoWorkspace, i32 0, i32 1), align 8
  %127 = getelementptr inbounds i32, i32* %126, i64 15
  %128 = load i32, i32* %127, align 4
  %129 = mul nsw i32 %125, %128
  %130 = add nsw i32 %122, %129
  %131 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @acadoWorkspace, i32 0, i32 0), align 8
  %132 = getelementptr inbounds i32, i32* %131, i64 16
  %133 = load i32, i32* %132, align 4
  %134 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @acadoWorkspace, i32 0, i32 1), align 8
  %135 = getelementptr inbounds i32, i32* %134, i64 16
  %136 = load i32, i32* %135, align 4
  %137 = mul nsw i32 %133, %136
  %138 = add nsw i32 %130, %137
  %139 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @acadoWorkspace, i32 0, i32 0), align 8
  %140 = getelementptr inbounds i32, i32* %139, i64 17
  %141 = load i32, i32* %140, align 4
  %142 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @acadoWorkspace, i32 0, i32 1), align 8
  %143 = getelementptr inbounds i32, i32* %142, i64 17
  %144 = load i32, i32* %143, align 4
  %145 = mul nsw i32 %141, %144
  %146 = add nsw i32 %138, %145
  %147 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @acadoWorkspace, i32 0, i32 0), align 8
  %148 = getelementptr inbounds i32, i32* %147, i64 18
  %149 = load i32, i32* %148, align 4
  %150 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @acadoWorkspace, i32 0, i32 1), align 8
  %151 = getelementptr inbounds i32, i32* %150, i64 18
  %152 = load i32, i32* %151, align 4
  %153 = mul nsw i32 %149, %152
  %154 = add nsw i32 %146, %153
  %155 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @acadoWorkspace, i32 0, i32 0), align 8
  %156 = getelementptr inbounds i32, i32* %155, i64 19
  %157 = load i32, i32* %156, align 4
  %158 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @acadoWorkspace, i32 0, i32 1), align 8
  %159 = getelementptr inbounds i32, i32* %158, i64 19
  %160 = load i32, i32* %159, align 4
  %161 = mul nsw i32 %157, %160
  %162 = add nsw i32 %154, %161
  %163 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @acadoWorkspace, i32 0, i32 0), align 8
  %164 = getelementptr inbounds i32, i32* %163, i64 20
  %165 = load i32, i32* %164, align 4
  %166 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @acadoWorkspace, i32 0, i32 1), align 8
  %167 = getelementptr inbounds i32, i32* %166, i64 20
  %168 = load i32, i32* %167, align 4
  %169 = mul nsw i32 %165, %168
  %170 = add nsw i32 %162, %169
  %171 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @acadoWorkspace, i32 0, i32 0), align 8
  %172 = getelementptr inbounds i32, i32* %171, i64 21
  %173 = load i32, i32* %172, align 4
  %174 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @acadoWorkspace, i32 0, i32 1), align 8
  %175 = getelementptr inbounds i32, i32* %174, i64 21
  %176 = load i32, i32* %175, align 4
  %177 = mul nsw i32 %173, %176
  %178 = add nsw i32 %170, %177
  %179 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @acadoWorkspace, i32 0, i32 0), align 8
  %180 = getelementptr inbounds i32, i32* %179, i64 22
  %181 = load i32, i32* %180, align 4
  %182 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @acadoWorkspace, i32 0, i32 1), align 8
  %183 = getelementptr inbounds i32, i32* %182, i64 22
  %184 = load i32, i32* %183, align 4
  %185 = mul nsw i32 %181, %184
  %186 = add nsw i32 %178, %185
  %187 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @acadoWorkspace, i32 0, i32 0), align 8
  %188 = getelementptr inbounds i32, i32* %187, i64 23
  %189 = load i32, i32* %188, align 4
  %190 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @acadoWorkspace, i32 0, i32 1), align 8
  %191 = getelementptr inbounds i32, i32* %190, i64 23
  %192 = load i32, i32* %191, align 4
  %193 = mul nsw i32 %189, %192
  %194 = add nsw i32 %186, %193
  store i32 %194, i32* %1, align 4
  %195 = load i32, i32* %1, align 4
  %196 = call i32 @fabs(i32 %195)
  store i32 %196, i32* %1, align 4
  store i32 0, i32* %2, align 4
  br label %197

197:                                              ; preds = %237, %0
  %198 = load i32, i32* %2, align 4
  %199 = icmp slt i32 %198, 24
  br i1 %199, label %200, label %240

200:                                              ; preds = %197
  %201 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @acadoWorkspace, i32 0, i32 2), align 8
  %202 = load i32, i32* %2, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds i32, i32* %201, i64 %203
  %205 = load i32, i32* %204, align 4
  store i32 %205, i32* %3, align 4
  %206 = load i32, i32* %3, align 4
  %207 = sitofp i32 %206 to double
  %208 = fcmp ogt double %207, 0x3D719799812DEA11
  br i1 %208, label %209, label %220

209:                                              ; preds = %200
  %210 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @acadoWorkspace, i32 0, i32 3), align 8
  %211 = load i32, i32* %2, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds i32, i32* %210, i64 %212
  %214 = load i32, i32* %213, align 4
  %215 = load i32, i32* %3, align 4
  %216 = mul nsw i32 %214, %215
  %217 = call i32 @fabs(i32 %216)
  %218 = load i32, i32* %1, align 4
  %219 = add nsw i32 %218, %217
  store i32 %219, i32* %1, align 4
  br label %236

220:                                              ; preds = %200
  %221 = load i32, i32* %3, align 4
  %222 = sitofp i32 %221 to double
  %223 = fcmp olt double %222, 0xBD719799812DEA11
  br i1 %223, label %224, label %235

224:                                              ; preds = %220
  %225 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @acadoWorkspace, i32 0, i32 4), align 8
  %226 = load i32, i32* %2, align 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds i32, i32* %225, i64 %227
  %229 = load i32, i32* %228, align 4
  %230 = load i32, i32* %3, align 4
  %231 = mul nsw i32 %229, %230
  %232 = call i32 @fabs(i32 %231)
  %233 = load i32, i32* %1, align 4
  %234 = add nsw i32 %233, %232
  store i32 %234, i32* %1, align 4
  br label %235

235:                                              ; preds = %224, %220
  br label %236

236:                                              ; preds = %235, %209
  br label %237

237:                                              ; preds = %236
  %238 = load i32, i32* %2, align 4
  %239 = add nsw i32 %238, 1
  store i32 %239, i32* %2, align 4
  br label %197

240:                                              ; preds = %197
  store i32 0, i32* %2, align 4
  br label %241

241:                                              ; preds = %282, %240
  %242 = load i32, i32* %2, align 4
  %243 = icmp slt i32 %242, 40
  br i1 %243, label %244, label %285

244:                                              ; preds = %241
  %245 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @acadoWorkspace, i32 0, i32 2), align 8
  %246 = load i32, i32* %2, align 4
  %247 = add nsw i32 %246, 24
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds i32, i32* %245, i64 %248
  %250 = load i32, i32* %249, align 4
  store i32 %250, i32* %3, align 4
  %251 = load i32, i32* %3, align 4
  %252 = sitofp i32 %251 to double
  %253 = fcmp ogt double %252, 0x3D719799812DEA11
  br i1 %253, label %254, label %265

254:                                              ; preds = %244
  %255 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @acadoWorkspace, i32 0, i32 5), align 8
  %256 = load i32, i32* %2, align 4
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds i32, i32* %255, i64 %257
  %259 = load i32, i32* %258, align 4
  %260 = load i32, i32* %3, align 4
  %261 = mul nsw i32 %259, %260
  %262 = call i32 @fabs(i32 %261)
  %263 = load i32, i32* %1, align 4
  %264 = add nsw i32 %263, %262
  store i32 %264, i32* %1, align 4
  br label %281

265:                                              ; preds = %244
  %266 = load i32, i32* %3, align 4
  %267 = sitofp i32 %266 to double
  %268 = fcmp olt double %267, 0xBD719799812DEA11
  br i1 %268, label %269, label %280

269:                                              ; preds = %265
  %270 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @acadoWorkspace, i32 0, i32 6), align 8
  %271 = load i32, i32* %2, align 4
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds i32, i32* %270, i64 %272
  %274 = load i32, i32* %273, align 4
  %275 = load i32, i32* %3, align 4
  %276 = mul nsw i32 %274, %275
  %277 = call i32 @fabs(i32 %276)
  %278 = load i32, i32* %1, align 4
  %279 = add nsw i32 %278, %277
  store i32 %279, i32* %1, align 4
  br label %280

280:                                              ; preds = %269, %265
  br label %281

281:                                              ; preds = %280, %254
  br label %282

282:                                              ; preds = %281
  %283 = load i32, i32* %2, align 4
  %284 = add nsw i32 %283, 1
  store i32 %284, i32* %2, align 4
  br label %241

285:                                              ; preds = %241
  %286 = load i32, i32* %1, align 4
  ret i32 %286
}

declare dso_local i32 @fabs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
