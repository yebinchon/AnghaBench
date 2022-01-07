; ModuleID = '/home/carl/AnghaBench/openpilot/selfdrive/controls/lib/longitudinal_mpc/lib_mpc_export/extr_acado_solver.c_acado_getKKT.c'
source_filename = "/home/carl/AnghaBench/openpilot/selfdrive/controls/lib/longitudinal_mpc/lib_mpc_export/extr_acado_solver.c_acado_getKKT.c"
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
  store i32 %186, i32* %1, align 4
  %187 = load i32, i32* %1, align 4
  %188 = call i32 @fabs(i32 %187)
  store i32 %188, i32* %1, align 4
  store i32 0, i32* %2, align 4
  br label %189

189:                                              ; preds = %229, %0
  %190 = load i32, i32* %2, align 4
  %191 = icmp slt i32 %190, 23
  br i1 %191, label %192, label %232

192:                                              ; preds = %189
  %193 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @acadoWorkspace, i32 0, i32 2), align 8
  %194 = load i32, i32* %2, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds i32, i32* %193, i64 %195
  %197 = load i32, i32* %196, align 4
  store i32 %197, i32* %3, align 4
  %198 = load i32, i32* %3, align 4
  %199 = sitofp i32 %198 to double
  %200 = fcmp ogt double %199, 0x3D719799812DEA11
  br i1 %200, label %201, label %212

201:                                              ; preds = %192
  %202 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @acadoWorkspace, i32 0, i32 3), align 8
  %203 = load i32, i32* %2, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds i32, i32* %202, i64 %204
  %206 = load i32, i32* %205, align 4
  %207 = load i32, i32* %3, align 4
  %208 = mul nsw i32 %206, %207
  %209 = call i32 @fabs(i32 %208)
  %210 = load i32, i32* %1, align 4
  %211 = add nsw i32 %210, %209
  store i32 %211, i32* %1, align 4
  br label %228

212:                                              ; preds = %192
  %213 = load i32, i32* %3, align 4
  %214 = sitofp i32 %213 to double
  %215 = fcmp olt double %214, 0xBD719799812DEA11
  br i1 %215, label %216, label %227

216:                                              ; preds = %212
  %217 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @acadoWorkspace, i32 0, i32 4), align 8
  %218 = load i32, i32* %2, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds i32, i32* %217, i64 %219
  %221 = load i32, i32* %220, align 4
  %222 = load i32, i32* %3, align 4
  %223 = mul nsw i32 %221, %222
  %224 = call i32 @fabs(i32 %223)
  %225 = load i32, i32* %1, align 4
  %226 = add nsw i32 %225, %224
  store i32 %226, i32* %1, align 4
  br label %227

227:                                              ; preds = %216, %212
  br label %228

228:                                              ; preds = %227, %201
  br label %229

229:                                              ; preds = %228
  %230 = load i32, i32* %2, align 4
  %231 = add nsw i32 %230, 1
  store i32 %231, i32* %2, align 4
  br label %189

232:                                              ; preds = %189
  store i32 0, i32* %2, align 4
  br label %233

233:                                              ; preds = %274, %232
  %234 = load i32, i32* %2, align 4
  %235 = icmp slt i32 %234, 20
  br i1 %235, label %236, label %277

236:                                              ; preds = %233
  %237 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @acadoWorkspace, i32 0, i32 2), align 8
  %238 = load i32, i32* %2, align 4
  %239 = add nsw i32 %238, 23
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds i32, i32* %237, i64 %240
  %242 = load i32, i32* %241, align 4
  store i32 %242, i32* %3, align 4
  %243 = load i32, i32* %3, align 4
  %244 = sitofp i32 %243 to double
  %245 = fcmp ogt double %244, 0x3D719799812DEA11
  br i1 %245, label %246, label %257

246:                                              ; preds = %236
  %247 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @acadoWorkspace, i32 0, i32 5), align 8
  %248 = load i32, i32* %2, align 4
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds i32, i32* %247, i64 %249
  %251 = load i32, i32* %250, align 4
  %252 = load i32, i32* %3, align 4
  %253 = mul nsw i32 %251, %252
  %254 = call i32 @fabs(i32 %253)
  %255 = load i32, i32* %1, align 4
  %256 = add nsw i32 %255, %254
  store i32 %256, i32* %1, align 4
  br label %273

257:                                              ; preds = %236
  %258 = load i32, i32* %3, align 4
  %259 = sitofp i32 %258 to double
  %260 = fcmp olt double %259, 0xBD719799812DEA11
  br i1 %260, label %261, label %272

261:                                              ; preds = %257
  %262 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @acadoWorkspace, i32 0, i32 6), align 8
  %263 = load i32, i32* %2, align 4
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds i32, i32* %262, i64 %264
  %266 = load i32, i32* %265, align 4
  %267 = load i32, i32* %3, align 4
  %268 = mul nsw i32 %266, %267
  %269 = call i32 @fabs(i32 %268)
  %270 = load i32, i32* %1, align 4
  %271 = add nsw i32 %270, %269
  store i32 %271, i32* %1, align 4
  br label %272

272:                                              ; preds = %261, %257
  br label %273

273:                                              ; preds = %272, %246
  br label %274

274:                                              ; preds = %273
  %275 = load i32, i32* %2, align 4
  %276 = add nsw i32 %275, 1
  store i32 %276, i32* %2, align 4
  br label %233

277:                                              ; preds = %233
  %278 = load i32, i32* %1, align 4
  ret i32 %278
}

declare dso_local i32 @fabs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
