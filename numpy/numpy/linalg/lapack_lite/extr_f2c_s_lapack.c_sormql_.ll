; ModuleID = '/home/carl/AnghaBench/numpy/numpy/linalg/lapack_lite/extr_f2c_s_lapack.c_sormql_.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/linalg/lapack_lite/extr_f2c_s_lapack.c_sormql_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@sormql_.i__ = internal global i32 0, align 4
@sormql_.t = internal global [4160 x i32] zeroinitializer, align 16
@sormql_.i1 = internal global i32 0, align 4
@sormql_.i2 = internal global i32 0, align 4
@sormql_.i3 = internal global i32 0, align 4
@sormql_.ib = internal global i32 0, align 4
@sormql_.nb = internal global i32 0, align 4
@sormql_.mi = internal global i32 0, align 4
@sormql_.ni = internal global i32 0, align 4
@sormql_.nq = internal global i32 0, align 4
@sormql_.nw = internal global i32 0, align 4
@sormql_.iws = internal global i32 0, align 4
@sormql_.left = internal global i32 0, align 4
@sormql_.nbmin = internal global i32 0, align 4
@sormql_.iinfo = internal global i32 0, align 4
@sormql_.notran = internal global i32 0, align 4
@sormql_.ldwork = internal global i32 0, align 4
@sormql_.lwkopt = internal global i32 0, align 4
@sormql_.lquery = internal global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"L\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"N\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"R\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"T\00", align 1
@c__2 = common dso_local global i32 0, align 4
@c__1 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [7 x i8] c"SORMQL\00", align 1
@c_n1 = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [9 x i8] c"Backward\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"Columnwise\00", align 1
@c__65 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sormql_(i8* %0, i8* %1, i32* %2, i32* %3, i32* %4, i32* %5, i32* %6, i32* %7, i32* %8, i32* %9, i32* %10, i32* %11, i32* %12) #0 {
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i32*, align 8
  %25 = alloca i32*, align 8
  %26 = alloca i32*, align 8
  %27 = alloca i32*, align 8
  %28 = alloca [2 x i8*], align 16
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca [2 x i32], align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca [2 x i8], align 1
  store i8* %0, i8** %15, align 8
  store i8* %1, i8** %16, align 8
  store i32* %2, i32** %17, align 8
  store i32* %3, i32** %18, align 8
  store i32* %4, i32** %19, align 8
  store i32* %5, i32** %20, align 8
  store i32* %6, i32** %21, align 8
  store i32* %7, i32** %22, align 8
  store i32* %8, i32** %23, align 8
  store i32* %9, i32** %24, align 8
  store i32* %10, i32** %25, align 8
  store i32* %11, i32** %26, align 8
  store i32* %12, i32** %27, align 8
  %39 = load i32*, i32** %21, align 8
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %29, align 4
  %41 = load i32, i32* %29, align 4
  %42 = add nsw i32 1, %41
  store i32 %42, i32* %30, align 4
  %43 = load i32, i32* %30, align 4
  %44 = load i32*, i32** %20, align 8
  %45 = sext i32 %43 to i64
  %46 = sub i64 0, %45
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  store i32* %47, i32** %20, align 8
  %48 = load i32*, i32** %22, align 8
  %49 = getelementptr inbounds i32, i32* %48, i32 -1
  store i32* %49, i32** %22, align 8
  %50 = load i32*, i32** %24, align 8
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %31, align 4
  %52 = load i32, i32* %31, align 4
  %53 = add nsw i32 1, %52
  store i32 %53, i32* %32, align 4
  %54 = load i32, i32* %32, align 4
  %55 = load i32*, i32** %23, align 8
  %56 = sext i32 %54 to i64
  %57 = sub i64 0, %56
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  store i32* %58, i32** %23, align 8
  %59 = load i32*, i32** %25, align 8
  %60 = getelementptr inbounds i32, i32* %59, i32 -1
  store i32* %60, i32** %25, align 8
  %61 = load i32*, i32** %27, align 8
  store i32 0, i32* %61, align 4
  %62 = load i8*, i8** %15, align 8
  %63 = call i32 @lsame_(i8* %62, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32 %63, i32* @sormql_.left, align 4
  %64 = load i8*, i8** %16, align 8
  %65 = call i32 @lsame_(i8* %64, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32 %65, i32* @sormql_.notran, align 4
  %66 = load i32*, i32** %26, align 8
  %67 = load i32, i32* %66, align 4
  %68 = icmp eq i32 %67, -1
  %69 = zext i1 %68 to i32
  store i32 %69, i32* @sormql_.lquery, align 4
  %70 = load i32, i32* @sormql_.left, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %78

72:                                               ; preds = %13
  %73 = load i32*, i32** %17, align 8
  %74 = load i32, i32* %73, align 4
  store i32 %74, i32* @sormql_.nq, align 4
  %75 = load i32*, i32** %18, align 8
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @max(i32 1, i32 %76)
  store i32 %77, i32* @sormql_.nw, align 4
  br label %84

78:                                               ; preds = %13
  %79 = load i32*, i32** %18, align 8
  %80 = load i32, i32* %79, align 4
  store i32 %80, i32* @sormql_.nq, align 4
  %81 = load i32*, i32** %17, align 8
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @max(i32 1, i32 %82)
  store i32 %83, i32* @sormql_.nw, align 4
  br label %84

84:                                               ; preds = %78, %72
  %85 = load i32, i32* @sormql_.left, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %93, label %87

87:                                               ; preds = %84
  %88 = load i8*, i8** %15, align 8
  %89 = call i32 @lsame_(i8* %88, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %93, label %91

91:                                               ; preds = %87
  %92 = load i32*, i32** %27, align 8
  store i32 -1, i32* %92, align 4
  br label %148

93:                                               ; preds = %87, %84
  %94 = load i32, i32* @sormql_.notran, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %102, label %96

96:                                               ; preds = %93
  %97 = load i8*, i8** %16, align 8
  %98 = call i32 @lsame_(i8* %97, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %102, label %100

100:                                              ; preds = %96
  %101 = load i32*, i32** %27, align 8
  store i32 -2, i32* %101, align 4
  br label %147

102:                                              ; preds = %96, %93
  %103 = load i32*, i32** %17, align 8
  %104 = load i32, i32* %103, align 4
  %105 = icmp slt i32 %104, 0
  br i1 %105, label %106, label %108

106:                                              ; preds = %102
  %107 = load i32*, i32** %27, align 8
  store i32 -3, i32* %107, align 4
  br label %146

108:                                              ; preds = %102
  %109 = load i32*, i32** %18, align 8
  %110 = load i32, i32* %109, align 4
  %111 = icmp slt i32 %110, 0
  br i1 %111, label %112, label %114

112:                                              ; preds = %108
  %113 = load i32*, i32** %27, align 8
  store i32 -4, i32* %113, align 4
  br label %145

114:                                              ; preds = %108
  %115 = load i32*, i32** %19, align 8
  %116 = load i32, i32* %115, align 4
  %117 = icmp slt i32 %116, 0
  br i1 %117, label %123, label %118

118:                                              ; preds = %114
  %119 = load i32*, i32** %19, align 8
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* @sormql_.nq, align 4
  %122 = icmp sgt i32 %120, %121
  br i1 %122, label %123, label %125

123:                                              ; preds = %118, %114
  %124 = load i32*, i32** %27, align 8
  store i32 -5, i32* %124, align 4
  br label %144

125:                                              ; preds = %118
  %126 = load i32*, i32** %21, align 8
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* @sormql_.nq, align 4
  %129 = call i32 @max(i32 1, i32 %128)
  %130 = icmp slt i32 %127, %129
  br i1 %130, label %131, label %133

131:                                              ; preds = %125
  %132 = load i32*, i32** %27, align 8
  store i32 -7, i32* %132, align 4
  br label %143

133:                                              ; preds = %125
  %134 = load i32*, i32** %24, align 8
  %135 = load i32, i32* %134, align 4
  %136 = load i32*, i32** %17, align 8
  %137 = load i32, i32* %136, align 4
  %138 = call i32 @max(i32 1, i32 %137)
  %139 = icmp slt i32 %135, %138
  br i1 %139, label %140, label %142

140:                                              ; preds = %133
  %141 = load i32*, i32** %27, align 8
  store i32 -10, i32* %141, align 4
  br label %142

142:                                              ; preds = %140, %133
  br label %143

143:                                              ; preds = %142, %131
  br label %144

144:                                              ; preds = %143, %123
  br label %145

145:                                              ; preds = %144, %112
  br label %146

146:                                              ; preds = %145, %106
  br label %147

147:                                              ; preds = %146, %100
  br label %148

148:                                              ; preds = %147, %91
  %149 = load i32*, i32** %27, align 8
  %150 = load i32, i32* %149, align 4
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %152, label %197

152:                                              ; preds = %148
  %153 = load i32*, i32** %17, align 8
  %154 = load i32, i32* %153, align 4
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %160, label %156

156:                                              ; preds = %152
  %157 = load i32*, i32** %18, align 8
  %158 = load i32, i32* %157, align 4
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %160, label %161

160:                                              ; preds = %156, %152
  store i32 1, i32* @sormql_.lwkopt, align 4
  br label %183

161:                                              ; preds = %156
  %162 = getelementptr inbounds [2 x i32], [2 x i32]* %35, i64 0, i64 0
  store i32 1, i32* %162, align 4
  %163 = load i8*, i8** %15, align 8
  %164 = getelementptr inbounds [2 x i8*], [2 x i8*]* %28, i64 0, i64 0
  store i8* %163, i8** %164, align 16
  %165 = getelementptr inbounds [2 x i32], [2 x i32]* %35, i64 0, i64 1
  store i32 1, i32* %165, align 4
  %166 = load i8*, i8** %16, align 8
  %167 = getelementptr inbounds [2 x i8*], [2 x i8*]* %28, i64 0, i64 1
  store i8* %166, i8** %167, align 8
  %168 = getelementptr inbounds [2 x i8], [2 x i8]* %38, i64 0, i64 0
  %169 = getelementptr inbounds [2 x i8*], [2 x i8*]* %28, i64 0, i64 0
  %170 = getelementptr inbounds [2 x i32], [2 x i32]* %35, i64 0, i64 0
  %171 = call i32 @s_cat(i8* %168, i8** %169, i32* %170, i32* @c__2, i32 2)
  store i32 64, i32* %33, align 4
  %172 = getelementptr inbounds [2 x i8], [2 x i8]* %38, i64 0, i64 0
  %173 = load i32*, i32** %17, align 8
  %174 = load i32*, i32** %18, align 8
  %175 = load i32*, i32** %19, align 8
  %176 = call i32 @ilaenv_(i32* @c__1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8* %172, i32* %173, i32* %174, i32* %175, i32* @c_n1, i32 6, i32 2)
  store i32 %176, i32* %34, align 4
  %177 = load i32, i32* %33, align 4
  %178 = load i32, i32* %34, align 4
  %179 = call i32 @min(i32 %177, i32 %178)
  store i32 %179, i32* @sormql_.nb, align 4
  %180 = load i32, i32* @sormql_.nw, align 4
  %181 = load i32, i32* @sormql_.nb, align 4
  %182 = mul nsw i32 %180, %181
  store i32 %182, i32* @sormql_.lwkopt, align 4
  br label %183

183:                                              ; preds = %161, %160
  %184 = load i32, i32* @sormql_.lwkopt, align 4
  %185 = load i32*, i32** %25, align 8
  %186 = getelementptr inbounds i32, i32* %185, i64 1
  store i32 %184, i32* %186, align 4
  %187 = load i32*, i32** %26, align 8
  %188 = load i32, i32* %187, align 4
  %189 = load i32, i32* @sormql_.nw, align 4
  %190 = icmp slt i32 %188, %189
  br i1 %190, label %191, label %196

191:                                              ; preds = %183
  %192 = load i32, i32* @sormql_.lquery, align 4
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %196, label %194

194:                                              ; preds = %191
  %195 = load i32*, i32** %27, align 8
  store i32 -12, i32* %195, align 4
  br label %196

196:                                              ; preds = %194, %191, %183
  br label %197

197:                                              ; preds = %196, %148
  %198 = load i32*, i32** %27, align 8
  %199 = load i32, i32* %198, align 4
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %206

201:                                              ; preds = %197
  %202 = load i32*, i32** %27, align 8
  %203 = load i32, i32* %202, align 4
  %204 = sub nsw i32 0, %203
  store i32 %204, i32* %33, align 4
  %205 = call i32 @xerbla_(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32* %33)
  store i32 0, i32* %14, align 4
  br label %433

206:                                              ; preds = %197
  %207 = load i32, i32* @sormql_.lquery, align 4
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %210

209:                                              ; preds = %206
  store i32 0, i32* %14, align 4
  br label %433

210:                                              ; preds = %206
  br label %211

211:                                              ; preds = %210
  %212 = load i32*, i32** %17, align 8
  %213 = load i32, i32* %212, align 4
  %214 = icmp eq i32 %213, 0
  br i1 %214, label %219, label %215

215:                                              ; preds = %211
  %216 = load i32*, i32** %18, align 8
  %217 = load i32, i32* %216, align 4
  %218 = icmp eq i32 %217, 0
  br i1 %218, label %219, label %220

219:                                              ; preds = %215, %211
  store i32 0, i32* %14, align 4
  br label %433

220:                                              ; preds = %215
  store i32 2, i32* @sormql_.nbmin, align 4
  %221 = load i32, i32* @sormql_.nw, align 4
  store i32 %221, i32* @sormql_.ldwork, align 4
  %222 = load i32, i32* @sormql_.nb, align 4
  %223 = icmp sgt i32 %222, 1
  br i1 %223, label %224, label %261

224:                                              ; preds = %220
  %225 = load i32, i32* @sormql_.nb, align 4
  %226 = load i32*, i32** %19, align 8
  %227 = load i32, i32* %226, align 4
  %228 = icmp slt i32 %225, %227
  br i1 %228, label %229, label %261

229:                                              ; preds = %224
  %230 = load i32, i32* @sormql_.nw, align 4
  %231 = load i32, i32* @sormql_.nb, align 4
  %232 = mul nsw i32 %230, %231
  store i32 %232, i32* @sormql_.iws, align 4
  %233 = load i32*, i32** %26, align 8
  %234 = load i32, i32* %233, align 4
  %235 = load i32, i32* @sormql_.iws, align 4
  %236 = icmp slt i32 %234, %235
  br i1 %236, label %237, label %260

237:                                              ; preds = %229
  %238 = load i32*, i32** %26, align 8
  %239 = load i32, i32* %238, align 4
  %240 = load i32, i32* @sormql_.ldwork, align 4
  %241 = sdiv i32 %239, %240
  store i32 %241, i32* @sormql_.nb, align 4
  %242 = getelementptr inbounds [2 x i32], [2 x i32]* %35, i64 0, i64 0
  store i32 1, i32* %242, align 4
  %243 = load i8*, i8** %15, align 8
  %244 = getelementptr inbounds [2 x i8*], [2 x i8*]* %28, i64 0, i64 0
  store i8* %243, i8** %244, align 16
  %245 = getelementptr inbounds [2 x i32], [2 x i32]* %35, i64 0, i64 1
  store i32 1, i32* %245, align 4
  %246 = load i8*, i8** %16, align 8
  %247 = getelementptr inbounds [2 x i8*], [2 x i8*]* %28, i64 0, i64 1
  store i8* %246, i8** %247, align 8
  %248 = getelementptr inbounds [2 x i8], [2 x i8]* %38, i64 0, i64 0
  %249 = getelementptr inbounds [2 x i8*], [2 x i8*]* %28, i64 0, i64 0
  %250 = getelementptr inbounds [2 x i32], [2 x i32]* %35, i64 0, i64 0
  %251 = call i32 @s_cat(i8* %248, i8** %249, i32* %250, i32* @c__2, i32 2)
  store i32 2, i32* %33, align 4
  %252 = getelementptr inbounds [2 x i8], [2 x i8]* %38, i64 0, i64 0
  %253 = load i32*, i32** %17, align 8
  %254 = load i32*, i32** %18, align 8
  %255 = load i32*, i32** %19, align 8
  %256 = call i32 @ilaenv_(i32* @c__2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8* %252, i32* %253, i32* %254, i32* %255, i32* @c_n1, i32 6, i32 2)
  store i32 %256, i32* %34, align 4
  %257 = load i32, i32* %33, align 4
  %258 = load i32, i32* %34, align 4
  %259 = call i32 @max(i32 %257, i32 %258)
  store i32 %259, i32* @sormql_.nbmin, align 4
  br label %260

260:                                              ; preds = %237, %229
  br label %263

261:                                              ; preds = %224, %220
  %262 = load i32, i32* @sormql_.nw, align 4
  store i32 %262, i32* @sormql_.iws, align 4
  br label %263

263:                                              ; preds = %261, %260
  %264 = load i32, i32* @sormql_.nb, align 4
  %265 = load i32, i32* @sormql_.nbmin, align 4
  %266 = icmp slt i32 %264, %265
  br i1 %266, label %272, label %267

267:                                              ; preds = %263
  %268 = load i32, i32* @sormql_.nb, align 4
  %269 = load i32*, i32** %19, align 8
  %270 = load i32, i32* %269, align 4
  %271 = icmp sge i32 %268, %270
  br i1 %271, label %272, label %293

272:                                              ; preds = %267, %263
  %273 = load i8*, i8** %15, align 8
  %274 = load i8*, i8** %16, align 8
  %275 = load i32*, i32** %17, align 8
  %276 = load i32*, i32** %18, align 8
  %277 = load i32*, i32** %19, align 8
  %278 = load i32*, i32** %20, align 8
  %279 = load i32, i32* %30, align 4
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds i32, i32* %278, i64 %280
  %282 = load i32*, i32** %21, align 8
  %283 = load i32*, i32** %22, align 8
  %284 = getelementptr inbounds i32, i32* %283, i64 1
  %285 = load i32*, i32** %23, align 8
  %286 = load i32, i32* %32, align 4
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds i32, i32* %285, i64 %287
  %289 = load i32*, i32** %24, align 8
  %290 = load i32*, i32** %25, align 8
  %291 = getelementptr inbounds i32, i32* %290, i64 1
  %292 = call i32 @sorm2l_(i8* %273, i8* %274, i32* %275, i32* %276, i32* %277, i32* %281, i32* %282, i32* %284, i32* %288, i32* %289, i32* %291, i32* @sormql_.iinfo)
  br label %429

293:                                              ; preds = %267
  %294 = load i32, i32* @sormql_.left, align 4
  %295 = icmp ne i32 %294, 0
  br i1 %295, label %296, label %299

296:                                              ; preds = %293
  %297 = load i32, i32* @sormql_.notran, align 4
  %298 = icmp ne i32 %297, 0
  br i1 %298, label %305, label %299

299:                                              ; preds = %296, %293
  %300 = load i32, i32* @sormql_.left, align 4
  %301 = icmp ne i32 %300, 0
  br i1 %301, label %309, label %302

302:                                              ; preds = %299
  %303 = load i32, i32* @sormql_.notran, align 4
  %304 = icmp ne i32 %303, 0
  br i1 %304, label %309, label %305

305:                                              ; preds = %302, %296
  store i32 1, i32* @sormql_.i1, align 4
  %306 = load i32*, i32** %19, align 8
  %307 = load i32, i32* %306, align 4
  store i32 %307, i32* @sormql_.i2, align 4
  %308 = load i32, i32* @sormql_.nb, align 4
  store i32 %308, i32* @sormql_.i3, align 4
  br label %320

309:                                              ; preds = %302, %299
  %310 = load i32*, i32** %19, align 8
  %311 = load i32, i32* %310, align 4
  %312 = sub nsw i32 %311, 1
  %313 = load i32, i32* @sormql_.nb, align 4
  %314 = sdiv i32 %312, %313
  %315 = load i32, i32* @sormql_.nb, align 4
  %316 = mul nsw i32 %314, %315
  %317 = add nsw i32 %316, 1
  store i32 %317, i32* @sormql_.i1, align 4
  store i32 1, i32* @sormql_.i2, align 4
  %318 = load i32, i32* @sormql_.nb, align 4
  %319 = sub nsw i32 0, %318
  store i32 %319, i32* @sormql_.i3, align 4
  br label %320

320:                                              ; preds = %309, %305
  %321 = load i32, i32* @sormql_.left, align 4
  %322 = icmp ne i32 %321, 0
  br i1 %322, label %323, label %326

323:                                              ; preds = %320
  %324 = load i32*, i32** %18, align 8
  %325 = load i32, i32* %324, align 4
  store i32 %325, i32* @sormql_.ni, align 4
  br label %329

326:                                              ; preds = %320
  %327 = load i32*, i32** %17, align 8
  %328 = load i32, i32* %327, align 4
  store i32 %328, i32* @sormql_.mi, align 4
  br label %329

329:                                              ; preds = %326, %323
  %330 = load i32, i32* @sormql_.i2, align 4
  store i32 %330, i32* %33, align 4
  %331 = load i32, i32* @sormql_.i3, align 4
  store i32 %331, i32* %34, align 4
  %332 = load i32, i32* @sormql_.i1, align 4
  store i32 %332, i32* @sormql_.i__, align 4
  br label %333

333:                                              ; preds = %424, %329
  %334 = load i32, i32* %34, align 4
  %335 = icmp slt i32 %334, 0
  br i1 %335, label %336, label %341

336:                                              ; preds = %333
  %337 = load i32, i32* @sormql_.i__, align 4
  %338 = load i32, i32* %33, align 4
  %339 = icmp sge i32 %337, %338
  %340 = zext i1 %339 to i32
  br label %346

341:                                              ; preds = %333
  %342 = load i32, i32* @sormql_.i__, align 4
  %343 = load i32, i32* %33, align 4
  %344 = icmp sle i32 %342, %343
  %345 = zext i1 %344 to i32
  br label %346

346:                                              ; preds = %341, %336
  %347 = phi i32 [ %340, %336 ], [ %345, %341 ]
  %348 = icmp ne i32 %347, 0
  br i1 %348, label %349, label %428

349:                                              ; preds = %346
  %350 = load i32, i32* @sormql_.nb, align 4
  store i32 %350, i32* %36, align 4
  %351 = load i32*, i32** %19, align 8
  %352 = load i32, i32* %351, align 4
  %353 = load i32, i32* @sormql_.i__, align 4
  %354 = sub nsw i32 %352, %353
  %355 = add nsw i32 %354, 1
  store i32 %355, i32* %37, align 4
  %356 = load i32, i32* %36, align 4
  %357 = load i32, i32* %37, align 4
  %358 = call i32 @min(i32 %356, i32 %357)
  store i32 %358, i32* @sormql_.ib, align 4
  %359 = load i32, i32* @sormql_.nq, align 4
  %360 = load i32*, i32** %19, align 8
  %361 = load i32, i32* %360, align 4
  %362 = sub nsw i32 %359, %361
  %363 = load i32, i32* @sormql_.i__, align 4
  %364 = add nsw i32 %362, %363
  %365 = load i32, i32* @sormql_.ib, align 4
  %366 = add nsw i32 %364, %365
  %367 = sub nsw i32 %366, 1
  store i32 %367, i32* %36, align 4
  %368 = load i32*, i32** %20, align 8
  %369 = load i32, i32* @sormql_.i__, align 4
  %370 = load i32, i32* %29, align 4
  %371 = mul nsw i32 %369, %370
  %372 = add nsw i32 %371, 1
  %373 = sext i32 %372 to i64
  %374 = getelementptr inbounds i32, i32* %368, i64 %373
  %375 = load i32*, i32** %21, align 8
  %376 = load i32*, i32** %22, align 8
  %377 = load i32, i32* @sormql_.i__, align 4
  %378 = sext i32 %377 to i64
  %379 = getelementptr inbounds i32, i32* %376, i64 %378
  %380 = call i32 @slarft_(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i32* %36, i32* @sormql_.ib, i32* %374, i32* %375, i32* %379, i32* getelementptr inbounds ([4160 x i32], [4160 x i32]* @sormql_.t, i64 0, i64 0), i32* @c__65)
  %381 = load i32, i32* @sormql_.left, align 4
  %382 = icmp ne i32 %381, 0
  br i1 %382, label %383, label %394

383:                                              ; preds = %349
  %384 = load i32*, i32** %17, align 8
  %385 = load i32, i32* %384, align 4
  %386 = load i32*, i32** %19, align 8
  %387 = load i32, i32* %386, align 4
  %388 = sub nsw i32 %385, %387
  %389 = load i32, i32* @sormql_.i__, align 4
  %390 = add nsw i32 %388, %389
  %391 = load i32, i32* @sormql_.ib, align 4
  %392 = add nsw i32 %390, %391
  %393 = sub nsw i32 %392, 1
  store i32 %393, i32* @sormql_.mi, align 4
  br label %405

394:                                              ; preds = %349
  %395 = load i32*, i32** %18, align 8
  %396 = load i32, i32* %395, align 4
  %397 = load i32*, i32** %19, align 8
  %398 = load i32, i32* %397, align 4
  %399 = sub nsw i32 %396, %398
  %400 = load i32, i32* @sormql_.i__, align 4
  %401 = add nsw i32 %399, %400
  %402 = load i32, i32* @sormql_.ib, align 4
  %403 = add nsw i32 %401, %402
  %404 = sub nsw i32 %403, 1
  store i32 %404, i32* @sormql_.ni, align 4
  br label %405

405:                                              ; preds = %394, %383
  %406 = load i8*, i8** %15, align 8
  %407 = load i8*, i8** %16, align 8
  %408 = load i32*, i32** %20, align 8
  %409 = load i32, i32* @sormql_.i__, align 4
  %410 = load i32, i32* %29, align 4
  %411 = mul nsw i32 %409, %410
  %412 = add nsw i32 %411, 1
  %413 = sext i32 %412 to i64
  %414 = getelementptr inbounds i32, i32* %408, i64 %413
  %415 = load i32*, i32** %21, align 8
  %416 = load i32*, i32** %23, align 8
  %417 = load i32, i32* %32, align 4
  %418 = sext i32 %417 to i64
  %419 = getelementptr inbounds i32, i32* %416, i64 %418
  %420 = load i32*, i32** %24, align 8
  %421 = load i32*, i32** %25, align 8
  %422 = getelementptr inbounds i32, i32* %421, i64 1
  %423 = call i32 @slarfb_(i8* %406, i8* %407, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i32* @sormql_.mi, i32* @sormql_.ni, i32* @sormql_.ib, i32* %414, i32* %415, i32* getelementptr inbounds ([4160 x i32], [4160 x i32]* @sormql_.t, i64 0, i64 0), i32* @c__65, i32* %419, i32* %420, i32* %422, i32* @sormql_.ldwork)
  br label %424

424:                                              ; preds = %405
  %425 = load i32, i32* %34, align 4
  %426 = load i32, i32* @sormql_.i__, align 4
  %427 = add nsw i32 %426, %425
  store i32 %427, i32* @sormql_.i__, align 4
  br label %333

428:                                              ; preds = %346
  br label %429

429:                                              ; preds = %428, %272
  %430 = load i32, i32* @sormql_.lwkopt, align 4
  %431 = load i32*, i32** %25, align 8
  %432 = getelementptr inbounds i32, i32* %431, i64 1
  store i32 %430, i32* %432, align 4
  store i32 0, i32* %14, align 4
  br label %433

433:                                              ; preds = %429, %219, %209, %201
  %434 = load i32, i32* %14, align 4
  ret i32 %434
}

declare dso_local i32 @lsame_(i8*, i8*) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @s_cat(i8*, i8**, i32*, i32*, i32) #1

declare dso_local i32 @ilaenv_(i32*, i8*, i8*, i32*, i32*, i32*, i32*, i32, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @xerbla_(i8*, i32*) #1

declare dso_local i32 @sorm2l_(i8*, i8*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @slarft_(i8*, i8*, i32*, i32*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @slarfb_(i8*, i8*, i8*, i8*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
