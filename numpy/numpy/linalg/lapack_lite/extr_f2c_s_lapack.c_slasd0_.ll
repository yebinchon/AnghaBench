; ModuleID = '/home/carl/AnghaBench/numpy/numpy/linalg/lapack_lite/extr_f2c_s_lapack.c_slasd0_.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/linalg/lapack_lite/extr_f2c_s_lapack.c_slasd0_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@slasd0_.i__ = internal global i32 0, align 4
@slasd0_.j = internal global i32 0, align 4
@slasd0_.m = internal global i32 0, align 4
@slasd0_.i1 = internal global i32 0, align 4
@slasd0_.ic = internal global i32 0, align 4
@slasd0_.lf = internal global i32 0, align 4
@slasd0_.nd = internal global i32 0, align 4
@slasd0_.ll = internal global i32 0, align 4
@slasd0_.nl = internal global i32 0, align 4
@slasd0_.nr = internal global i32 0, align 4
@slasd0_.im1 = internal global i32 0, align 4
@slasd0_.ncc = internal global i32 0, align 4
@slasd0_.nlf = internal global i32 0, align 4
@slasd0_.nrf = internal global i32 0, align 4
@slasd0_.iwk = internal global i32 0, align 4
@slasd0_.lvl = internal global i32 0, align 4
@slasd0_.ndb1 = internal global i32 0, align 4
@slasd0_.nlp1 = internal global i32 0, align 4
@slasd0_.nrp1 = internal global i32 0, align 4
@slasd0_.beta = internal global i32 0, align 4
@slasd0_.idxq = internal global i32 0, align 4
@slasd0_.nlvl = internal global i32 0, align 4
@slasd0_.alpha = internal global i32 0, align 4
@slasd0_.inode = internal global i32 0, align 4
@slasd0_.ndiml = internal global i32 0, align 4
@slasd0_.idxqc = internal global i32 0, align 4
@slasd0_.ndimr = internal global i32 0, align 4
@slasd0_.itemp = internal global i32 0, align 4
@slasd0_.sqrei = internal global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"SLASD0\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"U\00", align 1
@c__0 = common dso_local global i32 0, align 4
@c__2 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @slasd0_(i32* %0, i32* %1, i32* %2, i32* %3, i32* %4, i32* %5, i32* %6, i32* %7, i32* %8, i32* %9, i32* %10, i32* %11) #0 {
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i32*, align 8
  %25 = alloca i32*, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  store i32* %0, i32** %14, align 8
  store i32* %1, i32** %15, align 8
  store i32* %2, i32** %16, align 8
  store i32* %3, i32** %17, align 8
  store i32* %4, i32** %18, align 8
  store i32* %5, i32** %19, align 8
  store i32* %6, i32** %20, align 8
  store i32* %7, i32** %21, align 8
  store i32* %8, i32** %22, align 8
  store i32* %9, i32** %23, align 8
  store i32* %10, i32** %24, align 8
  store i32* %11, i32** %25, align 8
  %32 = load i32*, i32** %16, align 8
  %33 = getelementptr inbounds i32, i32* %32, i32 -1
  store i32* %33, i32** %16, align 8
  %34 = load i32*, i32** %17, align 8
  %35 = getelementptr inbounds i32, i32* %34, i32 -1
  store i32* %35, i32** %17, align 8
  %36 = load i32*, i32** %19, align 8
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %26, align 4
  %38 = load i32, i32* %26, align 4
  %39 = add nsw i32 1, %38
  store i32 %39, i32* %27, align 4
  %40 = load i32, i32* %27, align 4
  %41 = load i32*, i32** %18, align 8
  %42 = sext i32 %40 to i64
  %43 = sub i64 0, %42
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  store i32* %44, i32** %18, align 8
  %45 = load i32*, i32** %21, align 8
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %28, align 4
  %47 = load i32, i32* %28, align 4
  %48 = add nsw i32 1, %47
  store i32 %48, i32* %29, align 4
  %49 = load i32, i32* %29, align 4
  %50 = load i32*, i32** %20, align 8
  %51 = sext i32 %49 to i64
  %52 = sub i64 0, %51
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  store i32* %53, i32** %20, align 8
  %54 = load i32*, i32** %23, align 8
  %55 = getelementptr inbounds i32, i32* %54, i32 -1
  store i32* %55, i32** %23, align 8
  %56 = load i32*, i32** %24, align 8
  %57 = getelementptr inbounds i32, i32* %56, i32 -1
  store i32* %57, i32** %24, align 8
  %58 = load i32*, i32** %25, align 8
  store i32 0, i32* %58, align 4
  %59 = load i32*, i32** %14, align 8
  %60 = load i32, i32* %59, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %12
  %63 = load i32*, i32** %25, align 8
  store i32 -1, i32* %63, align 4
  br label %75

64:                                               ; preds = %12
  %65 = load i32*, i32** %15, align 8
  %66 = load i32, i32* %65, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %72, label %68

68:                                               ; preds = %64
  %69 = load i32*, i32** %15, align 8
  %70 = load i32, i32* %69, align 4
  %71 = icmp sgt i32 %70, 1
  br i1 %71, label %72, label %74

72:                                               ; preds = %68, %64
  %73 = load i32*, i32** %25, align 8
  store i32 -2, i32* %73, align 4
  br label %74

74:                                               ; preds = %72, %68
  br label %75

75:                                               ; preds = %74, %62
  %76 = load i32*, i32** %14, align 8
  %77 = load i32, i32* %76, align 4
  %78 = load i32*, i32** %15, align 8
  %79 = load i32, i32* %78, align 4
  %80 = add nsw i32 %77, %79
  store i32 %80, i32* @slasd0_.m, align 4
  %81 = load i32*, i32** %19, align 8
  %82 = load i32, i32* %81, align 4
  %83 = load i32*, i32** %14, align 8
  %84 = load i32, i32* %83, align 4
  %85 = icmp slt i32 %82, %84
  br i1 %85, label %86, label %88

86:                                               ; preds = %75
  %87 = load i32*, i32** %25, align 8
  store i32 -6, i32* %87, align 4
  br label %103

88:                                               ; preds = %75
  %89 = load i32*, i32** %21, align 8
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @slasd0_.m, align 4
  %92 = icmp slt i32 %90, %91
  br i1 %92, label %93, label %95

93:                                               ; preds = %88
  %94 = load i32*, i32** %25, align 8
  store i32 -8, i32* %94, align 4
  br label %102

95:                                               ; preds = %88
  %96 = load i32*, i32** %22, align 8
  %97 = load i32, i32* %96, align 4
  %98 = icmp slt i32 %97, 3
  br i1 %98, label %99, label %101

99:                                               ; preds = %95
  %100 = load i32*, i32** %25, align 8
  store i32 -9, i32* %100, align 4
  br label %101

101:                                              ; preds = %99, %95
  br label %102

102:                                              ; preds = %101, %93
  br label %103

103:                                              ; preds = %102, %86
  %104 = load i32*, i32** %25, align 8
  %105 = load i32, i32* %104, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %112

107:                                              ; preds = %103
  %108 = load i32*, i32** %25, align 8
  %109 = load i32, i32* %108, align 4
  %110 = sub nsw i32 0, %109
  store i32 %110, i32* %30, align 4
  %111 = call i32 @xerbla_(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32* %30)
  store i32 0, i32* %13, align 4
  br label %486

112:                                              ; preds = %103
  %113 = load i32*, i32** %14, align 8
  %114 = load i32, i32* %113, align 4
  %115 = load i32*, i32** %22, align 8
  %116 = load i32, i32* %115, align 4
  %117 = icmp sle i32 %114, %116
  br i1 %117, label %118, label %145

118:                                              ; preds = %112
  %119 = load i32*, i32** %15, align 8
  %120 = load i32*, i32** %14, align 8
  %121 = load i32*, i32** %14, align 8
  %122 = load i32*, i32** %16, align 8
  %123 = getelementptr inbounds i32, i32* %122, i64 1
  %124 = load i32*, i32** %17, align 8
  %125 = getelementptr inbounds i32, i32* %124, i64 1
  %126 = load i32*, i32** %20, align 8
  %127 = load i32, i32* %29, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i32, i32* %126, i64 %128
  %130 = load i32*, i32** %21, align 8
  %131 = load i32*, i32** %18, align 8
  %132 = load i32, i32* %27, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i32, i32* %131, i64 %133
  %135 = load i32*, i32** %19, align 8
  %136 = load i32*, i32** %18, align 8
  %137 = load i32, i32* %27, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i32, i32* %136, i64 %138
  %140 = load i32*, i32** %19, align 8
  %141 = load i32*, i32** %24, align 8
  %142 = getelementptr inbounds i32, i32* %141, i64 1
  %143 = load i32*, i32** %25, align 8
  %144 = call i32 @slasdq_(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32* %119, i32* %120, i32* @slasd0_.m, i32* %121, i32* @c__0, i32* %123, i32* %125, i32* %129, i32* %130, i32* %134, i32* %135, i32* %139, i32* %140, i32* %142, i32* %143)
  store i32 0, i32* %13, align 4
  br label %486

145:                                              ; preds = %112
  store i32 1, i32* @slasd0_.inode, align 4
  %146 = load i32, i32* @slasd0_.inode, align 4
  %147 = load i32*, i32** %14, align 8
  %148 = load i32, i32* %147, align 4
  %149 = add nsw i32 %146, %148
  store i32 %149, i32* @slasd0_.ndiml, align 4
  %150 = load i32, i32* @slasd0_.ndiml, align 4
  %151 = load i32*, i32** %14, align 8
  %152 = load i32, i32* %151, align 4
  %153 = add nsw i32 %150, %152
  store i32 %153, i32* @slasd0_.ndimr, align 4
  %154 = load i32, i32* @slasd0_.ndimr, align 4
  %155 = load i32*, i32** %14, align 8
  %156 = load i32, i32* %155, align 4
  %157 = add nsw i32 %154, %156
  store i32 %157, i32* @slasd0_.idxq, align 4
  %158 = load i32, i32* @slasd0_.idxq, align 4
  %159 = load i32*, i32** %14, align 8
  %160 = load i32, i32* %159, align 4
  %161 = add nsw i32 %158, %160
  store i32 %161, i32* @slasd0_.iwk, align 4
  %162 = load i32*, i32** %14, align 8
  %163 = load i32*, i32** %23, align 8
  %164 = load i32, i32* @slasd0_.inode, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i32, i32* %163, i64 %165
  %167 = load i32*, i32** %23, align 8
  %168 = load i32, i32* @slasd0_.ndiml, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i32, i32* %167, i64 %169
  %171 = load i32*, i32** %23, align 8
  %172 = load i32, i32* @slasd0_.ndimr, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i32, i32* %171, i64 %173
  %175 = load i32*, i32** %22, align 8
  %176 = call i32 @slasdt_(i32* %162, i32* @slasd0_.nlvl, i32* @slasd0_.nd, i32* %166, i32* %170, i32* %174, i32* %175)
  %177 = load i32, i32* @slasd0_.nd, align 4
  %178 = add nsw i32 %177, 1
  %179 = sdiv i32 %178, 2
  store i32 %179, i32* @slasd0_.ndb1, align 4
  store i32 0, i32* @slasd0_.ncc, align 4
  %180 = load i32, i32* @slasd0_.nd, align 4
  store i32 %180, i32* %30, align 4
  %181 = load i32, i32* @slasd0_.ndb1, align 4
  store i32 %181, i32* @slasd0_.i__, align 4
  br label %182

182:                                              ; preds = %360, %145
  %183 = load i32, i32* @slasd0_.i__, align 4
  %184 = load i32, i32* %30, align 4
  %185 = icmp sle i32 %183, %184
  br i1 %185, label %186, label %363

186:                                              ; preds = %182
  %187 = load i32, i32* @slasd0_.i__, align 4
  %188 = sub nsw i32 %187, 1
  store i32 %188, i32* @slasd0_.i1, align 4
  %189 = load i32*, i32** %23, align 8
  %190 = load i32, i32* @slasd0_.inode, align 4
  %191 = load i32, i32* @slasd0_.i1, align 4
  %192 = add nsw i32 %190, %191
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds i32, i32* %189, i64 %193
  %195 = load i32, i32* %194, align 4
  store i32 %195, i32* @slasd0_.ic, align 4
  %196 = load i32*, i32** %23, align 8
  %197 = load i32, i32* @slasd0_.ndiml, align 4
  %198 = load i32, i32* @slasd0_.i1, align 4
  %199 = add nsw i32 %197, %198
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds i32, i32* %196, i64 %200
  %202 = load i32, i32* %201, align 4
  store i32 %202, i32* @slasd0_.nl, align 4
  %203 = load i32, i32* @slasd0_.nl, align 4
  %204 = add nsw i32 %203, 1
  store i32 %204, i32* @slasd0_.nlp1, align 4
  %205 = load i32*, i32** %23, align 8
  %206 = load i32, i32* @slasd0_.ndimr, align 4
  %207 = load i32, i32* @slasd0_.i1, align 4
  %208 = add nsw i32 %206, %207
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds i32, i32* %205, i64 %209
  %211 = load i32, i32* %210, align 4
  store i32 %211, i32* @slasd0_.nr, align 4
  %212 = load i32, i32* @slasd0_.nr, align 4
  %213 = add nsw i32 %212, 1
  store i32 %213, i32* @slasd0_.nrp1, align 4
  %214 = load i32, i32* @slasd0_.ic, align 4
  %215 = load i32, i32* @slasd0_.nl, align 4
  %216 = sub nsw i32 %214, %215
  store i32 %216, i32* @slasd0_.nlf, align 4
  %217 = load i32, i32* @slasd0_.ic, align 4
  %218 = add nsw i32 %217, 1
  store i32 %218, i32* @slasd0_.nrf, align 4
  store i32 1, i32* @slasd0_.sqrei, align 4
  %219 = load i32*, i32** %16, align 8
  %220 = load i32, i32* @slasd0_.nlf, align 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds i32, i32* %219, i64 %221
  %223 = load i32*, i32** %17, align 8
  %224 = load i32, i32* @slasd0_.nlf, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds i32, i32* %223, i64 %225
  %227 = load i32*, i32** %20, align 8
  %228 = load i32, i32* @slasd0_.nlf, align 4
  %229 = load i32, i32* @slasd0_.nlf, align 4
  %230 = load i32, i32* %28, align 4
  %231 = mul nsw i32 %229, %230
  %232 = add nsw i32 %228, %231
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds i32, i32* %227, i64 %233
  %235 = load i32*, i32** %21, align 8
  %236 = load i32*, i32** %18, align 8
  %237 = load i32, i32* @slasd0_.nlf, align 4
  %238 = load i32, i32* @slasd0_.nlf, align 4
  %239 = load i32, i32* %26, align 4
  %240 = mul nsw i32 %238, %239
  %241 = add nsw i32 %237, %240
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds i32, i32* %236, i64 %242
  %244 = load i32*, i32** %19, align 8
  %245 = load i32*, i32** %18, align 8
  %246 = load i32, i32* @slasd0_.nlf, align 4
  %247 = load i32, i32* @slasd0_.nlf, align 4
  %248 = load i32, i32* %26, align 4
  %249 = mul nsw i32 %247, %248
  %250 = add nsw i32 %246, %249
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds i32, i32* %245, i64 %251
  %253 = load i32*, i32** %19, align 8
  %254 = load i32*, i32** %24, align 8
  %255 = getelementptr inbounds i32, i32* %254, i64 1
  %256 = load i32*, i32** %25, align 8
  %257 = call i32 @slasdq_(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32* @slasd0_.sqrei, i32* @slasd0_.nl, i32* @slasd0_.nlp1, i32* @slasd0_.nl, i32* @slasd0_.ncc, i32* %222, i32* %226, i32* %234, i32* %235, i32* %243, i32* %244, i32* %252, i32* %253, i32* %255, i32* %256)
  %258 = load i32*, i32** %25, align 8
  %259 = load i32, i32* %258, align 4
  %260 = icmp ne i32 %259, 0
  br i1 %260, label %261, label %262

261:                                              ; preds = %186
  store i32 0, i32* %13, align 4
  br label %486

262:                                              ; preds = %186
  %263 = load i32, i32* @slasd0_.idxq, align 4
  %264 = load i32, i32* @slasd0_.nlf, align 4
  %265 = add nsw i32 %263, %264
  %266 = sub nsw i32 %265, 2
  store i32 %266, i32* @slasd0_.itemp, align 4
  %267 = load i32, i32* @slasd0_.nl, align 4
  store i32 %267, i32* %31, align 4
  store i32 1, i32* @slasd0_.j, align 4
  br label %268

268:                                              ; preds = %280, %262
  %269 = load i32, i32* @slasd0_.j, align 4
  %270 = load i32, i32* %31, align 4
  %271 = icmp sle i32 %269, %270
  br i1 %271, label %272, label %283

272:                                              ; preds = %268
  %273 = load i32, i32* @slasd0_.j, align 4
  %274 = load i32*, i32** %23, align 8
  %275 = load i32, i32* @slasd0_.itemp, align 4
  %276 = load i32, i32* @slasd0_.j, align 4
  %277 = add nsw i32 %275, %276
  %278 = sext i32 %277 to i64
  %279 = getelementptr inbounds i32, i32* %274, i64 %278
  store i32 %273, i32* %279, align 4
  br label %280

280:                                              ; preds = %272
  %281 = load i32, i32* @slasd0_.j, align 4
  %282 = add nsw i32 %281, 1
  store i32 %282, i32* @slasd0_.j, align 4
  br label %268

283:                                              ; preds = %268
  %284 = load i32, i32* @slasd0_.i__, align 4
  %285 = load i32, i32* @slasd0_.nd, align 4
  %286 = icmp eq i32 %284, %285
  br i1 %286, label %287, label %290

287:                                              ; preds = %283
  %288 = load i32*, i32** %15, align 8
  %289 = load i32, i32* %288, align 4
  store i32 %289, i32* @slasd0_.sqrei, align 4
  br label %291

290:                                              ; preds = %283
  store i32 1, i32* @slasd0_.sqrei, align 4
  br label %291

291:                                              ; preds = %290, %287
  %292 = load i32, i32* @slasd0_.nr, align 4
  %293 = load i32, i32* @slasd0_.sqrei, align 4
  %294 = add nsw i32 %292, %293
  store i32 %294, i32* @slasd0_.nrp1, align 4
  %295 = load i32*, i32** %16, align 8
  %296 = load i32, i32* @slasd0_.nrf, align 4
  %297 = sext i32 %296 to i64
  %298 = getelementptr inbounds i32, i32* %295, i64 %297
  %299 = load i32*, i32** %17, align 8
  %300 = load i32, i32* @slasd0_.nrf, align 4
  %301 = sext i32 %300 to i64
  %302 = getelementptr inbounds i32, i32* %299, i64 %301
  %303 = load i32*, i32** %20, align 8
  %304 = load i32, i32* @slasd0_.nrf, align 4
  %305 = load i32, i32* @slasd0_.nrf, align 4
  %306 = load i32, i32* %28, align 4
  %307 = mul nsw i32 %305, %306
  %308 = add nsw i32 %304, %307
  %309 = sext i32 %308 to i64
  %310 = getelementptr inbounds i32, i32* %303, i64 %309
  %311 = load i32*, i32** %21, align 8
  %312 = load i32*, i32** %18, align 8
  %313 = load i32, i32* @slasd0_.nrf, align 4
  %314 = load i32, i32* @slasd0_.nrf, align 4
  %315 = load i32, i32* %26, align 4
  %316 = mul nsw i32 %314, %315
  %317 = add nsw i32 %313, %316
  %318 = sext i32 %317 to i64
  %319 = getelementptr inbounds i32, i32* %312, i64 %318
  %320 = load i32*, i32** %19, align 8
  %321 = load i32*, i32** %18, align 8
  %322 = load i32, i32* @slasd0_.nrf, align 4
  %323 = load i32, i32* @slasd0_.nrf, align 4
  %324 = load i32, i32* %26, align 4
  %325 = mul nsw i32 %323, %324
  %326 = add nsw i32 %322, %325
  %327 = sext i32 %326 to i64
  %328 = getelementptr inbounds i32, i32* %321, i64 %327
  %329 = load i32*, i32** %19, align 8
  %330 = load i32*, i32** %24, align 8
  %331 = getelementptr inbounds i32, i32* %330, i64 1
  %332 = load i32*, i32** %25, align 8
  %333 = call i32 @slasdq_(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32* @slasd0_.sqrei, i32* @slasd0_.nr, i32* @slasd0_.nrp1, i32* @slasd0_.nr, i32* @slasd0_.ncc, i32* %298, i32* %302, i32* %310, i32* %311, i32* %319, i32* %320, i32* %328, i32* %329, i32* %331, i32* %332)
  %334 = load i32*, i32** %25, align 8
  %335 = load i32, i32* %334, align 4
  %336 = icmp ne i32 %335, 0
  br i1 %336, label %337, label %338

337:                                              ; preds = %291
  store i32 0, i32* %13, align 4
  br label %486

338:                                              ; preds = %291
  %339 = load i32, i32* @slasd0_.idxq, align 4
  %340 = load i32, i32* @slasd0_.ic, align 4
  %341 = add nsw i32 %339, %340
  store i32 %341, i32* @slasd0_.itemp, align 4
  %342 = load i32, i32* @slasd0_.nr, align 4
  store i32 %342, i32* %31, align 4
  store i32 1, i32* @slasd0_.j, align 4
  br label %343

343:                                              ; preds = %356, %338
  %344 = load i32, i32* @slasd0_.j, align 4
  %345 = load i32, i32* %31, align 4
  %346 = icmp sle i32 %344, %345
  br i1 %346, label %347, label %359

347:                                              ; preds = %343
  %348 = load i32, i32* @slasd0_.j, align 4
  %349 = load i32*, i32** %23, align 8
  %350 = load i32, i32* @slasd0_.itemp, align 4
  %351 = load i32, i32* @slasd0_.j, align 4
  %352 = add nsw i32 %350, %351
  %353 = sub nsw i32 %352, 1
  %354 = sext i32 %353 to i64
  %355 = getelementptr inbounds i32, i32* %349, i64 %354
  store i32 %348, i32* %355, align 4
  br label %356

356:                                              ; preds = %347
  %357 = load i32, i32* @slasd0_.j, align 4
  %358 = add nsw i32 %357, 1
  store i32 %358, i32* @slasd0_.j, align 4
  br label %343

359:                                              ; preds = %343
  br label %360

360:                                              ; preds = %359
  %361 = load i32, i32* @slasd0_.i__, align 4
  %362 = add nsw i32 %361, 1
  store i32 %362, i32* @slasd0_.i__, align 4
  br label %182

363:                                              ; preds = %182
  %364 = load i32, i32* @slasd0_.nlvl, align 4
  store i32 %364, i32* @slasd0_.lvl, align 4
  br label %365

365:                                              ; preds = %482, %363
  %366 = load i32, i32* @slasd0_.lvl, align 4
  %367 = icmp sge i32 %366, 1
  br i1 %367, label %368, label %485

368:                                              ; preds = %365
  %369 = load i32, i32* @slasd0_.lvl, align 4
  %370 = icmp eq i32 %369, 1
  br i1 %370, label %371, label %372

371:                                              ; preds = %368
  store i32 1, i32* @slasd0_.lf, align 4
  store i32 1, i32* @slasd0_.ll, align 4
  br label %379

372:                                              ; preds = %368
  %373 = load i32, i32* @slasd0_.lvl, align 4
  %374 = sub nsw i32 %373, 1
  store i32 %374, i32* %30, align 4
  %375 = call i32 @pow_ii(i32* @c__2, i32* %30)
  store i32 %375, i32* @slasd0_.lf, align 4
  %376 = load i32, i32* @slasd0_.lf, align 4
  %377 = shl i32 %376, 1
  %378 = sub nsw i32 %377, 1
  store i32 %378, i32* @slasd0_.ll, align 4
  br label %379

379:                                              ; preds = %372, %371
  %380 = load i32, i32* @slasd0_.ll, align 4
  store i32 %380, i32* %30, align 4
  %381 = load i32, i32* @slasd0_.lf, align 4
  store i32 %381, i32* @slasd0_.i__, align 4
  br label %382

382:                                              ; preds = %478, %379
  %383 = load i32, i32* @slasd0_.i__, align 4
  %384 = load i32, i32* %30, align 4
  %385 = icmp sle i32 %383, %384
  br i1 %385, label %386, label %481

386:                                              ; preds = %382
  %387 = load i32, i32* @slasd0_.i__, align 4
  %388 = sub nsw i32 %387, 1
  store i32 %388, i32* @slasd0_.im1, align 4
  %389 = load i32*, i32** %23, align 8
  %390 = load i32, i32* @slasd0_.inode, align 4
  %391 = load i32, i32* @slasd0_.im1, align 4
  %392 = add nsw i32 %390, %391
  %393 = sext i32 %392 to i64
  %394 = getelementptr inbounds i32, i32* %389, i64 %393
  %395 = load i32, i32* %394, align 4
  store i32 %395, i32* @slasd0_.ic, align 4
  %396 = load i32*, i32** %23, align 8
  %397 = load i32, i32* @slasd0_.ndiml, align 4
  %398 = load i32, i32* @slasd0_.im1, align 4
  %399 = add nsw i32 %397, %398
  %400 = sext i32 %399 to i64
  %401 = getelementptr inbounds i32, i32* %396, i64 %400
  %402 = load i32, i32* %401, align 4
  store i32 %402, i32* @slasd0_.nl, align 4
  %403 = load i32*, i32** %23, align 8
  %404 = load i32, i32* @slasd0_.ndimr, align 4
  %405 = load i32, i32* @slasd0_.im1, align 4
  %406 = add nsw i32 %404, %405
  %407 = sext i32 %406 to i64
  %408 = getelementptr inbounds i32, i32* %403, i64 %407
  %409 = load i32, i32* %408, align 4
  store i32 %409, i32* @slasd0_.nr, align 4
  %410 = load i32, i32* @slasd0_.ic, align 4
  %411 = load i32, i32* @slasd0_.nl, align 4
  %412 = sub nsw i32 %410, %411
  store i32 %412, i32* @slasd0_.nlf, align 4
  %413 = load i32*, i32** %15, align 8
  %414 = load i32, i32* %413, align 4
  %415 = icmp eq i32 %414, 0
  br i1 %415, label %416, label %423

416:                                              ; preds = %386
  %417 = load i32, i32* @slasd0_.i__, align 4
  %418 = load i32, i32* @slasd0_.ll, align 4
  %419 = icmp eq i32 %417, %418
  br i1 %419, label %420, label %423

420:                                              ; preds = %416
  %421 = load i32*, i32** %15, align 8
  %422 = load i32, i32* %421, align 4
  store i32 %422, i32* @slasd0_.sqrei, align 4
  br label %424

423:                                              ; preds = %416, %386
  store i32 1, i32* @slasd0_.sqrei, align 4
  br label %424

424:                                              ; preds = %423, %420
  %425 = load i32, i32* @slasd0_.idxq, align 4
  %426 = load i32, i32* @slasd0_.nlf, align 4
  %427 = add nsw i32 %425, %426
  %428 = sub nsw i32 %427, 1
  store i32 %428, i32* @slasd0_.idxqc, align 4
  %429 = load i32*, i32** %16, align 8
  %430 = load i32, i32* @slasd0_.ic, align 4
  %431 = sext i32 %430 to i64
  %432 = getelementptr inbounds i32, i32* %429, i64 %431
  %433 = load i32, i32* %432, align 4
  store i32 %433, i32* @slasd0_.alpha, align 4
  %434 = load i32*, i32** %17, align 8
  %435 = load i32, i32* @slasd0_.ic, align 4
  %436 = sext i32 %435 to i64
  %437 = getelementptr inbounds i32, i32* %434, i64 %436
  %438 = load i32, i32* %437, align 4
  store i32 %438, i32* @slasd0_.beta, align 4
  %439 = load i32*, i32** %16, align 8
  %440 = load i32, i32* @slasd0_.nlf, align 4
  %441 = sext i32 %440 to i64
  %442 = getelementptr inbounds i32, i32* %439, i64 %441
  %443 = load i32*, i32** %18, align 8
  %444 = load i32, i32* @slasd0_.nlf, align 4
  %445 = load i32, i32* @slasd0_.nlf, align 4
  %446 = load i32, i32* %26, align 4
  %447 = mul nsw i32 %445, %446
  %448 = add nsw i32 %444, %447
  %449 = sext i32 %448 to i64
  %450 = getelementptr inbounds i32, i32* %443, i64 %449
  %451 = load i32*, i32** %19, align 8
  %452 = load i32*, i32** %20, align 8
  %453 = load i32, i32* @slasd0_.nlf, align 4
  %454 = load i32, i32* @slasd0_.nlf, align 4
  %455 = load i32, i32* %28, align 4
  %456 = mul nsw i32 %454, %455
  %457 = add nsw i32 %453, %456
  %458 = sext i32 %457 to i64
  %459 = getelementptr inbounds i32, i32* %452, i64 %458
  %460 = load i32*, i32** %21, align 8
  %461 = load i32*, i32** %23, align 8
  %462 = load i32, i32* @slasd0_.idxqc, align 4
  %463 = sext i32 %462 to i64
  %464 = getelementptr inbounds i32, i32* %461, i64 %463
  %465 = load i32*, i32** %23, align 8
  %466 = load i32, i32* @slasd0_.iwk, align 4
  %467 = sext i32 %466 to i64
  %468 = getelementptr inbounds i32, i32* %465, i64 %467
  %469 = load i32*, i32** %24, align 8
  %470 = getelementptr inbounds i32, i32* %469, i64 1
  %471 = load i32*, i32** %25, align 8
  %472 = call i32 @slasd1_(i32* @slasd0_.nl, i32* @slasd0_.nr, i32* @slasd0_.sqrei, i32* %442, i32* @slasd0_.alpha, i32* @slasd0_.beta, i32* %450, i32* %451, i32* %459, i32* %460, i32* %464, i32* %468, i32* %470, i32* %471)
  %473 = load i32*, i32** %25, align 8
  %474 = load i32, i32* %473, align 4
  %475 = icmp ne i32 %474, 0
  br i1 %475, label %476, label %477

476:                                              ; preds = %424
  store i32 0, i32* %13, align 4
  br label %486

477:                                              ; preds = %424
  br label %478

478:                                              ; preds = %477
  %479 = load i32, i32* @slasd0_.i__, align 4
  %480 = add nsw i32 %479, 1
  store i32 %480, i32* @slasd0_.i__, align 4
  br label %382

481:                                              ; preds = %382
  br label %482

482:                                              ; preds = %481
  %483 = load i32, i32* @slasd0_.lvl, align 4
  %484 = add nsw i32 %483, -1
  store i32 %484, i32* @slasd0_.lvl, align 4
  br label %365

485:                                              ; preds = %365
  store i32 0, i32* %13, align 4
  br label %486

486:                                              ; preds = %485, %476, %337, %261, %118, %107
  %487 = load i32, i32* %13, align 4
  ret i32 %487
}

declare dso_local i32 @xerbla_(i8*, i32*) #1

declare dso_local i32 @slasdq_(i8*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @slasdt_(i32*, i32*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @pow_ii(i32*, i32*) #1

declare dso_local i32 @slasd1_(i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
