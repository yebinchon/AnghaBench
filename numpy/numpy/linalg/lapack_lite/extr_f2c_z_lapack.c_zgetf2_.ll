; ModuleID = '/home/carl/AnghaBench/numpy/numpy/linalg/lapack_lite/extr_f2c_z_lapack.c_zgetf2_.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/linalg/lapack_lite/extr_f2c_z_lapack.c_zgetf2_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32 }

@zgetf2_.i__ = internal global i32 0, align 4
@zgetf2_.j = internal global i32 0, align 4
@zgetf2_.jp = internal global i32 0, align 4
@zgetf2_.sfmin = internal global i64 0, align 8
@.str = private unnamed_addr constant [7 x i8] c"ZGETF2\00", align 1
@SAFEMINIMUM = common dso_local global i64 0, align 8
@c__1 = common dso_local global i32 0, align 4
@c_b57 = common dso_local global %struct.TYPE_14__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zgetf2_(i32* %0, i32* %1, %struct.TYPE_14__* %2, i32* %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_14__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_14__, align 4
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store %struct.TYPE_14__* %2, %struct.TYPE_14__** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %20 = load i32*, i32** %11, align 8
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %14, align 4
  %22 = load i32, i32* %14, align 4
  %23 = add nsw i32 1, %22
  store i32 %23, i32* %15, align 4
  %24 = load i32, i32* %15, align 4
  %25 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %26 = sext i32 %24 to i64
  %27 = sub i64 0, %26
  %28 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %25, i64 %27
  store %struct.TYPE_14__* %28, %struct.TYPE_14__** %10, align 8
  %29 = load i32*, i32** %12, align 8
  %30 = getelementptr inbounds i32, i32* %29, i32 -1
  store i32* %30, i32** %12, align 8
  %31 = load i32*, i32** %13, align 8
  store i32 0, i32* %31, align 4
  %32 = load i32*, i32** %8, align 8
  %33 = load i32, i32* %32, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %6
  %36 = load i32*, i32** %13, align 8
  store i32 -1, i32* %36, align 4
  br label %54

37:                                               ; preds = %6
  %38 = load i32*, i32** %9, align 8
  %39 = load i32, i32* %38, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %37
  %42 = load i32*, i32** %13, align 8
  store i32 -2, i32* %42, align 4
  br label %53

43:                                               ; preds = %37
  %44 = load i32*, i32** %11, align 8
  %45 = load i32, i32* %44, align 4
  %46 = load i32*, i32** %8, align 8
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @max(i32 1, i32 %47)
  %49 = icmp slt i32 %45, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %43
  %51 = load i32*, i32** %13, align 8
  store i32 -4, i32* %51, align 4
  br label %52

52:                                               ; preds = %50, %43
  br label %53

53:                                               ; preds = %52, %41
  br label %54

54:                                               ; preds = %53, %35
  %55 = load i32*, i32** %13, align 8
  %56 = load i32, i32* %55, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %54
  %59 = load i32*, i32** %13, align 8
  %60 = load i32, i32* %59, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %16, align 4
  %62 = call i32 @xerbla_(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32* %16)
  store i32 0, i32* %7, align 4
  br label %309

63:                                               ; preds = %54
  %64 = load i32*, i32** %8, align 8
  %65 = load i32, i32* %64, align 4
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %71, label %67

67:                                               ; preds = %63
  %68 = load i32*, i32** %9, align 8
  %69 = load i32, i32* %68, align 4
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %67, %63
  store i32 0, i32* %7, align 4
  br label %309

72:                                               ; preds = %67
  %73 = load i64, i64* @SAFEMINIMUM, align 8
  store i64 %73, i64* @zgetf2_.sfmin, align 8
  %74 = load i32*, i32** %8, align 8
  %75 = load i32, i32* %74, align 4
  %76 = load i32*, i32** %9, align 8
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @min(i32 %75, i32 %77)
  store i32 %78, i32* %16, align 4
  store i32 1, i32* @zgetf2_.j, align 4
  br label %79

79:                                               ; preds = %305, %72
  %80 = load i32, i32* @zgetf2_.j, align 4
  %81 = load i32, i32* %16, align 4
  %82 = icmp sle i32 %80, %81
  br i1 %82, label %83, label %308

83:                                               ; preds = %79
  %84 = load i32*, i32** %8, align 8
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @zgetf2_.j, align 4
  %87 = sub nsw i32 %85, %86
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %17, align 4
  %89 = load i32, i32* @zgetf2_.j, align 4
  %90 = sub nsw i32 %89, 1
  %91 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %92 = load i32, i32* @zgetf2_.j, align 4
  %93 = load i32, i32* @zgetf2_.j, align 4
  %94 = load i32, i32* %14, align 4
  %95 = mul nsw i32 %93, %94
  %96 = add nsw i32 %92, %95
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %91, i64 %97
  %99 = call i32 @izamax_(i32* %17, %struct.TYPE_14__* %98, i32* @c__1)
  %100 = add nsw i32 %90, %99
  store i32 %100, i32* @zgetf2_.jp, align 4
  %101 = load i32, i32* @zgetf2_.jp, align 4
  %102 = load i32*, i32** %12, align 8
  %103 = load i32, i32* @zgetf2_.j, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %102, i64 %104
  store i32 %101, i32* %105, align 4
  %106 = load i32, i32* @zgetf2_.jp, align 4
  %107 = load i32, i32* @zgetf2_.j, align 4
  %108 = load i32, i32* %14, align 4
  %109 = mul nsw i32 %107, %108
  %110 = add nsw i32 %106, %109
  store i32 %110, i32* %17, align 4
  %111 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %112 = load i32, i32* %17, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %111, i64 %113
  %115 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = sitofp i32 %116 to double
  %118 = fcmp une double %117, 0.000000e+00
  br i1 %118, label %128, label %119

119:                                              ; preds = %83
  %120 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %121 = load i32, i32* %17, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %120, i64 %122
  %124 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = sitofp i32 %125 to double
  %127 = fcmp une double %126, 0.000000e+00
  br i1 %127, label %128, label %246

128:                                              ; preds = %119, %83
  %129 = load i32, i32* @zgetf2_.jp, align 4
  %130 = load i32, i32* @zgetf2_.j, align 4
  %131 = icmp ne i32 %129, %130
  br i1 %131, label %132, label %149

132:                                              ; preds = %128
  %133 = load i32*, i32** %9, align 8
  %134 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %135 = load i32, i32* @zgetf2_.j, align 4
  %136 = load i32, i32* %14, align 4
  %137 = add nsw i32 %135, %136
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %134, i64 %138
  %140 = load i32*, i32** %11, align 8
  %141 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %142 = load i32, i32* @zgetf2_.jp, align 4
  %143 = load i32, i32* %14, align 4
  %144 = add nsw i32 %142, %143
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %141, i64 %145
  %147 = load i32*, i32** %11, align 8
  %148 = call i32 @zswap_(i32* %133, %struct.TYPE_14__* %139, i32* %140, %struct.TYPE_14__* %146, i32* %147)
  br label %149

149:                                              ; preds = %132, %128
  %150 = load i32, i32* @zgetf2_.j, align 4
  %151 = load i32*, i32** %8, align 8
  %152 = load i32, i32* %151, align 4
  %153 = icmp slt i32 %150, %152
  br i1 %153, label %154, label %245

154:                                              ; preds = %149
  %155 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %156 = load i32, i32* @zgetf2_.j, align 4
  %157 = load i32, i32* @zgetf2_.j, align 4
  %158 = load i32, i32* %14, align 4
  %159 = mul nsw i32 %157, %158
  %160 = add nsw i32 %156, %159
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %155, i64 %161
  %163 = call i64 @z_abs(%struct.TYPE_14__* %162)
  %164 = load i64, i64* @zgetf2_.sfmin, align 8
  %165 = icmp sge i64 %163, %164
  br i1 %165, label %166, label %190

166:                                              ; preds = %154
  %167 = load i32*, i32** %8, align 8
  %168 = load i32, i32* %167, align 4
  %169 = load i32, i32* @zgetf2_.j, align 4
  %170 = sub nsw i32 %168, %169
  store i32 %170, i32* %17, align 4
  %171 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %172 = load i32, i32* @zgetf2_.j, align 4
  %173 = load i32, i32* @zgetf2_.j, align 4
  %174 = load i32, i32* %14, align 4
  %175 = mul nsw i32 %173, %174
  %176 = add nsw i32 %172, %175
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %171, i64 %177
  %179 = call i32 @z_div(%struct.TYPE_14__* %19, %struct.TYPE_14__* @c_b57, %struct.TYPE_14__* %178)
  %180 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %181 = load i32, i32* @zgetf2_.j, align 4
  %182 = add nsw i32 %181, 1
  %183 = load i32, i32* @zgetf2_.j, align 4
  %184 = load i32, i32* %14, align 4
  %185 = mul nsw i32 %183, %184
  %186 = add nsw i32 %182, %185
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %180, i64 %187
  %189 = call i32 @zscal_(i32* %17, %struct.TYPE_14__* %19, %struct.TYPE_14__* %188, i32* @c__1)
  br label %244

190:                                              ; preds = %154
  %191 = load i32*, i32** %8, align 8
  %192 = load i32, i32* %191, align 4
  %193 = load i32, i32* @zgetf2_.j, align 4
  %194 = sub nsw i32 %192, %193
  store i32 %194, i32* %17, align 4
  store i32 1, i32* @zgetf2_.i__, align 4
  br label %195

195:                                              ; preds = %240, %190
  %196 = load i32, i32* @zgetf2_.i__, align 4
  %197 = load i32, i32* %17, align 4
  %198 = icmp sle i32 %196, %197
  br i1 %198, label %199, label %243

199:                                              ; preds = %195
  %200 = load i32, i32* @zgetf2_.j, align 4
  %201 = load i32, i32* @zgetf2_.i__, align 4
  %202 = add nsw i32 %200, %201
  %203 = load i32, i32* @zgetf2_.j, align 4
  %204 = load i32, i32* %14, align 4
  %205 = mul nsw i32 %203, %204
  %206 = add nsw i32 %202, %205
  store i32 %206, i32* %18, align 4
  %207 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %208 = load i32, i32* @zgetf2_.j, align 4
  %209 = load i32, i32* @zgetf2_.i__, align 4
  %210 = add nsw i32 %208, %209
  %211 = load i32, i32* @zgetf2_.j, align 4
  %212 = load i32, i32* %14, align 4
  %213 = mul nsw i32 %211, %212
  %214 = add nsw i32 %210, %213
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %207, i64 %215
  %217 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %218 = load i32, i32* @zgetf2_.j, align 4
  %219 = load i32, i32* @zgetf2_.j, align 4
  %220 = load i32, i32* %14, align 4
  %221 = mul nsw i32 %219, %220
  %222 = add nsw i32 %218, %221
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %217, i64 %223
  %225 = call i32 @z_div(%struct.TYPE_14__* %19, %struct.TYPE_14__* %216, %struct.TYPE_14__* %224)
  %226 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i32 0, i32 0
  %227 = load i32, i32* %226, align 4
  %228 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %229 = load i32, i32* %18, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %228, i64 %230
  %232 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %231, i32 0, i32 0
  store i32 %227, i32* %232, align 4
  %233 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i32 0, i32 1
  %234 = load i32, i32* %233, align 4
  %235 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %236 = load i32, i32* %18, align 4
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %235, i64 %237
  %239 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %238, i32 0, i32 1
  store i32 %234, i32* %239, align 4
  br label %240

240:                                              ; preds = %199
  %241 = load i32, i32* @zgetf2_.i__, align 4
  %242 = add nsw i32 %241, 1
  store i32 %242, i32* @zgetf2_.i__, align 4
  br label %195

243:                                              ; preds = %195
  br label %244

244:                                              ; preds = %243, %166
  br label %245

245:                                              ; preds = %244, %149
  br label %254

246:                                              ; preds = %119
  %247 = load i32*, i32** %13, align 8
  %248 = load i32, i32* %247, align 4
  %249 = icmp eq i32 %248, 0
  br i1 %249, label %250, label %253

250:                                              ; preds = %246
  %251 = load i32, i32* @zgetf2_.j, align 4
  %252 = load i32*, i32** %13, align 8
  store i32 %251, i32* %252, align 4
  br label %253

253:                                              ; preds = %250, %246
  br label %254

254:                                              ; preds = %253, %245
  %255 = load i32, i32* @zgetf2_.j, align 4
  %256 = load i32*, i32** %8, align 8
  %257 = load i32, i32* %256, align 4
  %258 = load i32*, i32** %9, align 8
  %259 = load i32, i32* %258, align 4
  %260 = call i32 @min(i32 %257, i32 %259)
  %261 = icmp slt i32 %255, %260
  br i1 %261, label %262, label %304

262:                                              ; preds = %254
  %263 = load i32*, i32** %8, align 8
  %264 = load i32, i32* %263, align 4
  %265 = load i32, i32* @zgetf2_.j, align 4
  %266 = sub nsw i32 %264, %265
  store i32 %266, i32* %17, align 4
  %267 = load i32*, i32** %9, align 8
  %268 = load i32, i32* %267, align 4
  %269 = load i32, i32* @zgetf2_.j, align 4
  %270 = sub nsw i32 %268, %269
  store i32 %270, i32* %18, align 4
  %271 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i32 0, i32 0
  store i32 -1, i32* %271, align 4
  %272 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i32 0, i32 1
  store i32 0, i32* %272, align 4
  %273 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %274 = load i32, i32* @zgetf2_.j, align 4
  %275 = add nsw i32 %274, 1
  %276 = load i32, i32* @zgetf2_.j, align 4
  %277 = load i32, i32* %14, align 4
  %278 = mul nsw i32 %276, %277
  %279 = add nsw i32 %275, %278
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %273, i64 %280
  %282 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %283 = load i32, i32* @zgetf2_.j, align 4
  %284 = load i32, i32* @zgetf2_.j, align 4
  %285 = add nsw i32 %284, 1
  %286 = load i32, i32* %14, align 4
  %287 = mul nsw i32 %285, %286
  %288 = add nsw i32 %283, %287
  %289 = sext i32 %288 to i64
  %290 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %282, i64 %289
  %291 = load i32*, i32** %11, align 8
  %292 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %293 = load i32, i32* @zgetf2_.j, align 4
  %294 = add nsw i32 %293, 1
  %295 = load i32, i32* @zgetf2_.j, align 4
  %296 = add nsw i32 %295, 1
  %297 = load i32, i32* %14, align 4
  %298 = mul nsw i32 %296, %297
  %299 = add nsw i32 %294, %298
  %300 = sext i32 %299 to i64
  %301 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %292, i64 %300
  %302 = load i32*, i32** %11, align 8
  %303 = call i32 @zgeru_(i32* %17, i32* %18, %struct.TYPE_14__* %19, %struct.TYPE_14__* %281, i32* @c__1, %struct.TYPE_14__* %290, i32* %291, %struct.TYPE_14__* %301, i32* %302)
  br label %304

304:                                              ; preds = %262, %254
  br label %305

305:                                              ; preds = %304
  %306 = load i32, i32* @zgetf2_.j, align 4
  %307 = add nsw i32 %306, 1
  store i32 %307, i32* @zgetf2_.j, align 4
  br label %79

308:                                              ; preds = %79
  store i32 0, i32* %7, align 4
  br label %309

309:                                              ; preds = %308, %71, %58
  %310 = load i32, i32* %7, align 4
  ret i32 %310
}

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @xerbla_(i8*, i32*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @izamax_(i32*, %struct.TYPE_14__*, i32*) #1

declare dso_local i32 @zswap_(i32*, %struct.TYPE_14__*, i32*, %struct.TYPE_14__*, i32*) #1

declare dso_local i64 @z_abs(%struct.TYPE_14__*) #1

declare dso_local i32 @z_div(%struct.TYPE_14__*, %struct.TYPE_14__*, %struct.TYPE_14__*) #1

declare dso_local i32 @zscal_(i32*, %struct.TYPE_14__*, %struct.TYPE_14__*, i32*) #1

declare dso_local i32 @zgeru_(i32*, i32*, %struct.TYPE_14__*, %struct.TYPE_14__*, i32*, %struct.TYPE_14__*, i32*, %struct.TYPE_14__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
