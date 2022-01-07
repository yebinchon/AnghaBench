; ModuleID = '/home/carl/AnghaBench/numpy/numpy/linalg/lapack_lite/extr_f2c_d_lapack.c_dormlq_.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/linalg/lapack_lite/extr_f2c_d_lapack.c_dormlq_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@dormlq_.i__ = internal global i32 0, align 4
@dormlq_.t = internal global [4160 x i32] zeroinitializer, align 16
@dormlq_.i1 = internal global i32 0, align 4
@dormlq_.i2 = internal global i32 0, align 4
@dormlq_.i3 = internal global i32 0, align 4
@dormlq_.ib = internal global i32 0, align 4
@dormlq_.ic = internal global i32 0, align 4
@dormlq_.jc = internal global i32 0, align 4
@dormlq_.nb = internal global i32 0, align 4
@dormlq_.mi = internal global i32 0, align 4
@dormlq_.ni = internal global i32 0, align 4
@dormlq_.nq = internal global i32 0, align 4
@dormlq_.nw = internal global i32 0, align 4
@dormlq_.iws = internal global i32 0, align 4
@dormlq_.left = internal global i32 0, align 4
@dormlq_.nbmin = internal global i32 0, align 4
@dormlq_.iinfo = internal global i32 0, align 4
@dormlq_.notran = internal global i32 0, align 4
@dormlq_.ldwork = internal global i32 0, align 4
@dormlq_.transt = internal global [1 x i8] zeroinitializer, align 1
@dormlq_.lwkopt = internal global i32 0, align 4
@dormlq_.lquery = internal global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"L\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"N\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"R\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"T\00", align 1
@c__2 = common dso_local global i32 0, align 4
@c__1 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [7 x i8] c"DORMLQ\00", align 1
@c_n1 = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [8 x i8] c"Forward\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"Rowwise\00", align 1
@c__65 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dormlq_(i8* %0, i8* %1, i32* %2, i32* %3, i32* %4, i32* %5, i32* %6, i32* %7, i32* %8, i32* %9, i32* %10, i32* %11, i32* %12) #0 {
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
  store i32 %63, i32* @dormlq_.left, align 4
  %64 = load i8*, i8** %16, align 8
  %65 = call i32 @lsame_(i8* %64, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32 %65, i32* @dormlq_.notran, align 4
  %66 = load i32*, i32** %26, align 8
  %67 = load i32, i32* %66, align 4
  %68 = icmp eq i32 %67, -1
  %69 = zext i1 %68 to i32
  store i32 %69, i32* @dormlq_.lquery, align 4
  %70 = load i32, i32* @dormlq_.left, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %13
  %73 = load i32*, i32** %17, align 8
  %74 = load i32, i32* %73, align 4
  store i32 %74, i32* @dormlq_.nq, align 4
  %75 = load i32*, i32** %18, align 8
  %76 = load i32, i32* %75, align 4
  store i32 %76, i32* @dormlq_.nw, align 4
  br label %82

77:                                               ; preds = %13
  %78 = load i32*, i32** %18, align 8
  %79 = load i32, i32* %78, align 4
  store i32 %79, i32* @dormlq_.nq, align 4
  %80 = load i32*, i32** %17, align 8
  %81 = load i32, i32* %80, align 4
  store i32 %81, i32* @dormlq_.nw, align 4
  br label %82

82:                                               ; preds = %77, %72
  %83 = load i32, i32* @dormlq_.left, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %91, label %85

85:                                               ; preds = %82
  %86 = load i8*, i8** %15, align 8
  %87 = call i32 @lsame_(i8* %86, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %91, label %89

89:                                               ; preds = %85
  %90 = load i32*, i32** %27, align 8
  store i32 -1, i32* %90, align 4
  br label %159

91:                                               ; preds = %85, %82
  %92 = load i32, i32* @dormlq_.notran, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %100, label %94

94:                                               ; preds = %91
  %95 = load i8*, i8** %16, align 8
  %96 = call i32 @lsame_(i8* %95, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %100, label %98

98:                                               ; preds = %94
  %99 = load i32*, i32** %27, align 8
  store i32 -2, i32* %99, align 4
  br label %158

100:                                              ; preds = %94, %91
  %101 = load i32*, i32** %17, align 8
  %102 = load i32, i32* %101, align 4
  %103 = icmp slt i32 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %100
  %105 = load i32*, i32** %27, align 8
  store i32 -3, i32* %105, align 4
  br label %157

106:                                              ; preds = %100
  %107 = load i32*, i32** %18, align 8
  %108 = load i32, i32* %107, align 4
  %109 = icmp slt i32 %108, 0
  br i1 %109, label %110, label %112

110:                                              ; preds = %106
  %111 = load i32*, i32** %27, align 8
  store i32 -4, i32* %111, align 4
  br label %156

112:                                              ; preds = %106
  %113 = load i32*, i32** %19, align 8
  %114 = load i32, i32* %113, align 4
  %115 = icmp slt i32 %114, 0
  br i1 %115, label %121, label %116

116:                                              ; preds = %112
  %117 = load i32*, i32** %19, align 8
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* @dormlq_.nq, align 4
  %120 = icmp sgt i32 %118, %119
  br i1 %120, label %121, label %123

121:                                              ; preds = %116, %112
  %122 = load i32*, i32** %27, align 8
  store i32 -5, i32* %122, align 4
  br label %155

123:                                              ; preds = %116
  %124 = load i32*, i32** %21, align 8
  %125 = load i32, i32* %124, align 4
  %126 = load i32*, i32** %19, align 8
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @max(i32 1, i32 %127)
  %129 = icmp slt i32 %125, %128
  br i1 %129, label %130, label %132

130:                                              ; preds = %123
  %131 = load i32*, i32** %27, align 8
  store i32 -7, i32* %131, align 4
  br label %154

132:                                              ; preds = %123
  %133 = load i32*, i32** %24, align 8
  %134 = load i32, i32* %133, align 4
  %135 = load i32*, i32** %17, align 8
  %136 = load i32, i32* %135, align 4
  %137 = call i32 @max(i32 1, i32 %136)
  %138 = icmp slt i32 %134, %137
  br i1 %138, label %139, label %141

139:                                              ; preds = %132
  %140 = load i32*, i32** %27, align 8
  store i32 -10, i32* %140, align 4
  br label %153

141:                                              ; preds = %132
  %142 = load i32*, i32** %26, align 8
  %143 = load i32, i32* %142, align 4
  %144 = load i32, i32* @dormlq_.nw, align 4
  %145 = call i32 @max(i32 1, i32 %144)
  %146 = icmp slt i32 %143, %145
  br i1 %146, label %147, label %152

147:                                              ; preds = %141
  %148 = load i32, i32* @dormlq_.lquery, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %152, label %150

150:                                              ; preds = %147
  %151 = load i32*, i32** %27, align 8
  store i32 -12, i32* %151, align 4
  br label %152

152:                                              ; preds = %150, %147, %141
  br label %153

153:                                              ; preds = %152, %139
  br label %154

154:                                              ; preds = %153, %130
  br label %155

155:                                              ; preds = %154, %121
  br label %156

156:                                              ; preds = %155, %110
  br label %157

157:                                              ; preds = %156, %104
  br label %158

158:                                              ; preds = %157, %98
  br label %159

159:                                              ; preds = %158, %89
  %160 = load i32*, i32** %27, align 8
  %161 = load i32, i32* %160, align 4
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %163, label %189

163:                                              ; preds = %159
  %164 = getelementptr inbounds [2 x i32], [2 x i32]* %35, i64 0, i64 0
  store i32 1, i32* %164, align 4
  %165 = load i8*, i8** %15, align 8
  %166 = getelementptr inbounds [2 x i8*], [2 x i8*]* %28, i64 0, i64 0
  store i8* %165, i8** %166, align 16
  %167 = getelementptr inbounds [2 x i32], [2 x i32]* %35, i64 0, i64 1
  store i32 1, i32* %167, align 4
  %168 = load i8*, i8** %16, align 8
  %169 = getelementptr inbounds [2 x i8*], [2 x i8*]* %28, i64 0, i64 1
  store i8* %168, i8** %169, align 8
  %170 = getelementptr inbounds [2 x i8], [2 x i8]* %38, i64 0, i64 0
  %171 = getelementptr inbounds [2 x i8*], [2 x i8*]* %28, i64 0, i64 0
  %172 = getelementptr inbounds [2 x i32], [2 x i32]* %35, i64 0, i64 0
  %173 = call i32 @s_cat(i8* %170, i8** %171, i32* %172, i32* @c__2, i32 2)
  store i32 64, i32* %33, align 4
  %174 = getelementptr inbounds [2 x i8], [2 x i8]* %38, i64 0, i64 0
  %175 = load i32*, i32** %17, align 8
  %176 = load i32*, i32** %18, align 8
  %177 = load i32*, i32** %19, align 8
  %178 = call i32 @ilaenv_(i32* @c__1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8* %174, i32* %175, i32* %176, i32* %177, i32* @c_n1, i32 6, i32 2)
  store i32 %178, i32* %34, align 4
  %179 = load i32, i32* %33, align 4
  %180 = load i32, i32* %34, align 4
  %181 = call i32 @min(i32 %179, i32 %180)
  store i32 %181, i32* @dormlq_.nb, align 4
  %182 = load i32, i32* @dormlq_.nw, align 4
  %183 = call i32 @max(i32 1, i32 %182)
  %184 = load i32, i32* @dormlq_.nb, align 4
  %185 = mul nsw i32 %183, %184
  store i32 %185, i32* @dormlq_.lwkopt, align 4
  %186 = load i32, i32* @dormlq_.lwkopt, align 4
  %187 = load i32*, i32** %25, align 8
  %188 = getelementptr inbounds i32, i32* %187, i64 1
  store i32 %186, i32* %188, align 4
  br label %189

189:                                              ; preds = %163, %159
  %190 = load i32*, i32** %27, align 8
  %191 = load i32, i32* %190, align 4
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %198

193:                                              ; preds = %189
  %194 = load i32*, i32** %27, align 8
  %195 = load i32, i32* %194, align 4
  %196 = sub nsw i32 0, %195
  store i32 %196, i32* %33, align 4
  %197 = call i32 @xerbla_(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32* %33)
  store i32 0, i32* %14, align 4
  br label %428

198:                                              ; preds = %189
  %199 = load i32, i32* @dormlq_.lquery, align 4
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %202

201:                                              ; preds = %198
  store i32 0, i32* %14, align 4
  br label %428

202:                                              ; preds = %198
  br label %203

203:                                              ; preds = %202
  %204 = load i32*, i32** %17, align 8
  %205 = load i32, i32* %204, align 4
  %206 = icmp eq i32 %205, 0
  br i1 %206, label %215, label %207

207:                                              ; preds = %203
  %208 = load i32*, i32** %18, align 8
  %209 = load i32, i32* %208, align 4
  %210 = icmp eq i32 %209, 0
  br i1 %210, label %215, label %211

211:                                              ; preds = %207
  %212 = load i32*, i32** %19, align 8
  %213 = load i32, i32* %212, align 4
  %214 = icmp eq i32 %213, 0
  br i1 %214, label %215, label %218

215:                                              ; preds = %211, %207, %203
  %216 = load i32*, i32** %25, align 8
  %217 = getelementptr inbounds i32, i32* %216, i64 1
  store i32 1, i32* %217, align 4
  store i32 0, i32* %14, align 4
  br label %428

218:                                              ; preds = %211
  store i32 2, i32* @dormlq_.nbmin, align 4
  %219 = load i32, i32* @dormlq_.nw, align 4
  store i32 %219, i32* @dormlq_.ldwork, align 4
  %220 = load i32, i32* @dormlq_.nb, align 4
  %221 = icmp sgt i32 %220, 1
  br i1 %221, label %222, label %259

222:                                              ; preds = %218
  %223 = load i32, i32* @dormlq_.nb, align 4
  %224 = load i32*, i32** %19, align 8
  %225 = load i32, i32* %224, align 4
  %226 = icmp slt i32 %223, %225
  br i1 %226, label %227, label %259

227:                                              ; preds = %222
  %228 = load i32, i32* @dormlq_.nw, align 4
  %229 = load i32, i32* @dormlq_.nb, align 4
  %230 = mul nsw i32 %228, %229
  store i32 %230, i32* @dormlq_.iws, align 4
  %231 = load i32*, i32** %26, align 8
  %232 = load i32, i32* %231, align 4
  %233 = load i32, i32* @dormlq_.iws, align 4
  %234 = icmp slt i32 %232, %233
  br i1 %234, label %235, label %258

235:                                              ; preds = %227
  %236 = load i32*, i32** %26, align 8
  %237 = load i32, i32* %236, align 4
  %238 = load i32, i32* @dormlq_.ldwork, align 4
  %239 = sdiv i32 %237, %238
  store i32 %239, i32* @dormlq_.nb, align 4
  %240 = getelementptr inbounds [2 x i32], [2 x i32]* %35, i64 0, i64 0
  store i32 1, i32* %240, align 4
  %241 = load i8*, i8** %15, align 8
  %242 = getelementptr inbounds [2 x i8*], [2 x i8*]* %28, i64 0, i64 0
  store i8* %241, i8** %242, align 16
  %243 = getelementptr inbounds [2 x i32], [2 x i32]* %35, i64 0, i64 1
  store i32 1, i32* %243, align 4
  %244 = load i8*, i8** %16, align 8
  %245 = getelementptr inbounds [2 x i8*], [2 x i8*]* %28, i64 0, i64 1
  store i8* %244, i8** %245, align 8
  %246 = getelementptr inbounds [2 x i8], [2 x i8]* %38, i64 0, i64 0
  %247 = getelementptr inbounds [2 x i8*], [2 x i8*]* %28, i64 0, i64 0
  %248 = getelementptr inbounds [2 x i32], [2 x i32]* %35, i64 0, i64 0
  %249 = call i32 @s_cat(i8* %246, i8** %247, i32* %248, i32* @c__2, i32 2)
  store i32 2, i32* %33, align 4
  %250 = getelementptr inbounds [2 x i8], [2 x i8]* %38, i64 0, i64 0
  %251 = load i32*, i32** %17, align 8
  %252 = load i32*, i32** %18, align 8
  %253 = load i32*, i32** %19, align 8
  %254 = call i32 @ilaenv_(i32* @c__2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8* %250, i32* %251, i32* %252, i32* %253, i32* @c_n1, i32 6, i32 2)
  store i32 %254, i32* %34, align 4
  %255 = load i32, i32* %33, align 4
  %256 = load i32, i32* %34, align 4
  %257 = call i32 @max(i32 %255, i32 %256)
  store i32 %257, i32* @dormlq_.nbmin, align 4
  br label %258

258:                                              ; preds = %235, %227
  br label %261

259:                                              ; preds = %222, %218
  %260 = load i32, i32* @dormlq_.nw, align 4
  store i32 %260, i32* @dormlq_.iws, align 4
  br label %261

261:                                              ; preds = %259, %258
  %262 = load i32, i32* @dormlq_.nb, align 4
  %263 = load i32, i32* @dormlq_.nbmin, align 4
  %264 = icmp slt i32 %262, %263
  br i1 %264, label %270, label %265

265:                                              ; preds = %261
  %266 = load i32, i32* @dormlq_.nb, align 4
  %267 = load i32*, i32** %19, align 8
  %268 = load i32, i32* %267, align 4
  %269 = icmp sge i32 %266, %268
  br i1 %269, label %270, label %291

270:                                              ; preds = %265, %261
  %271 = load i8*, i8** %15, align 8
  %272 = load i8*, i8** %16, align 8
  %273 = load i32*, i32** %17, align 8
  %274 = load i32*, i32** %18, align 8
  %275 = load i32*, i32** %19, align 8
  %276 = load i32*, i32** %20, align 8
  %277 = load i32, i32* %30, align 4
  %278 = sext i32 %277 to i64
  %279 = getelementptr inbounds i32, i32* %276, i64 %278
  %280 = load i32*, i32** %21, align 8
  %281 = load i32*, i32** %22, align 8
  %282 = getelementptr inbounds i32, i32* %281, i64 1
  %283 = load i32*, i32** %23, align 8
  %284 = load i32, i32* %32, align 4
  %285 = sext i32 %284 to i64
  %286 = getelementptr inbounds i32, i32* %283, i64 %285
  %287 = load i32*, i32** %24, align 8
  %288 = load i32*, i32** %25, align 8
  %289 = getelementptr inbounds i32, i32* %288, i64 1
  %290 = call i32 @dorml2_(i8* %271, i8* %272, i32* %273, i32* %274, i32* %275, i32* %279, i32* %280, i32* %282, i32* %286, i32* %287, i32* %289, i32* @dormlq_.iinfo)
  br label %424

291:                                              ; preds = %265
  %292 = load i32, i32* @dormlq_.left, align 4
  %293 = icmp ne i32 %292, 0
  br i1 %293, label %294, label %297

294:                                              ; preds = %291
  %295 = load i32, i32* @dormlq_.notran, align 4
  %296 = icmp ne i32 %295, 0
  br i1 %296, label %303, label %297

297:                                              ; preds = %294, %291
  %298 = load i32, i32* @dormlq_.left, align 4
  %299 = icmp ne i32 %298, 0
  br i1 %299, label %307, label %300

300:                                              ; preds = %297
  %301 = load i32, i32* @dormlq_.notran, align 4
  %302 = icmp ne i32 %301, 0
  br i1 %302, label %307, label %303

303:                                              ; preds = %300, %294
  store i32 1, i32* @dormlq_.i1, align 4
  %304 = load i32*, i32** %19, align 8
  %305 = load i32, i32* %304, align 4
  store i32 %305, i32* @dormlq_.i2, align 4
  %306 = load i32, i32* @dormlq_.nb, align 4
  store i32 %306, i32* @dormlq_.i3, align 4
  br label %318

307:                                              ; preds = %300, %297
  %308 = load i32*, i32** %19, align 8
  %309 = load i32, i32* %308, align 4
  %310 = sub nsw i32 %309, 1
  %311 = load i32, i32* @dormlq_.nb, align 4
  %312 = sdiv i32 %310, %311
  %313 = load i32, i32* @dormlq_.nb, align 4
  %314 = mul nsw i32 %312, %313
  %315 = add nsw i32 %314, 1
  store i32 %315, i32* @dormlq_.i1, align 4
  store i32 1, i32* @dormlq_.i2, align 4
  %316 = load i32, i32* @dormlq_.nb, align 4
  %317 = sub nsw i32 0, %316
  store i32 %317, i32* @dormlq_.i3, align 4
  br label %318

318:                                              ; preds = %307, %303
  %319 = load i32, i32* @dormlq_.left, align 4
  %320 = icmp ne i32 %319, 0
  br i1 %320, label %321, label %324

321:                                              ; preds = %318
  %322 = load i32*, i32** %18, align 8
  %323 = load i32, i32* %322, align 4
  store i32 %323, i32* @dormlq_.ni, align 4
  store i32 1, i32* @dormlq_.jc, align 4
  br label %327

324:                                              ; preds = %318
  %325 = load i32*, i32** %17, align 8
  %326 = load i32, i32* %325, align 4
  store i32 %326, i32* @dormlq_.mi, align 4
  store i32 1, i32* @dormlq_.ic, align 4
  br label %327

327:                                              ; preds = %324, %321
  %328 = load i32, i32* @dormlq_.notran, align 4
  %329 = icmp ne i32 %328, 0
  br i1 %329, label %330, label %331

330:                                              ; preds = %327
  store i8 84, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @dormlq_.transt, i64 0, i64 0), align 1
  br label %332

331:                                              ; preds = %327
  store i8 78, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @dormlq_.transt, i64 0, i64 0), align 1
  br label %332

332:                                              ; preds = %331, %330
  %333 = load i32, i32* @dormlq_.i2, align 4
  store i32 %333, i32* %33, align 4
  %334 = load i32, i32* @dormlq_.i3, align 4
  store i32 %334, i32* %34, align 4
  %335 = load i32, i32* @dormlq_.i1, align 4
  store i32 %335, i32* @dormlq_.i__, align 4
  br label %336

336:                                              ; preds = %419, %332
  %337 = load i32, i32* %34, align 4
  %338 = icmp slt i32 %337, 0
  br i1 %338, label %339, label %344

339:                                              ; preds = %336
  %340 = load i32, i32* @dormlq_.i__, align 4
  %341 = load i32, i32* %33, align 4
  %342 = icmp sge i32 %340, %341
  %343 = zext i1 %342 to i32
  br label %349

344:                                              ; preds = %336
  %345 = load i32, i32* @dormlq_.i__, align 4
  %346 = load i32, i32* %33, align 4
  %347 = icmp sle i32 %345, %346
  %348 = zext i1 %347 to i32
  br label %349

349:                                              ; preds = %344, %339
  %350 = phi i32 [ %343, %339 ], [ %348, %344 ]
  %351 = icmp ne i32 %350, 0
  br i1 %351, label %352, label %423

352:                                              ; preds = %349
  %353 = load i32, i32* @dormlq_.nb, align 4
  store i32 %353, i32* %36, align 4
  %354 = load i32*, i32** %19, align 8
  %355 = load i32, i32* %354, align 4
  %356 = load i32, i32* @dormlq_.i__, align 4
  %357 = sub nsw i32 %355, %356
  %358 = add nsw i32 %357, 1
  store i32 %358, i32* %37, align 4
  %359 = load i32, i32* %36, align 4
  %360 = load i32, i32* %37, align 4
  %361 = call i32 @min(i32 %359, i32 %360)
  store i32 %361, i32* @dormlq_.ib, align 4
  %362 = load i32, i32* @dormlq_.nq, align 4
  %363 = load i32, i32* @dormlq_.i__, align 4
  %364 = sub nsw i32 %362, %363
  %365 = add nsw i32 %364, 1
  store i32 %365, i32* %36, align 4
  %366 = load i32*, i32** %20, align 8
  %367 = load i32, i32* @dormlq_.i__, align 4
  %368 = load i32, i32* @dormlq_.i__, align 4
  %369 = load i32, i32* %29, align 4
  %370 = mul nsw i32 %368, %369
  %371 = add nsw i32 %367, %370
  %372 = sext i32 %371 to i64
  %373 = getelementptr inbounds i32, i32* %366, i64 %372
  %374 = load i32*, i32** %21, align 8
  %375 = load i32*, i32** %22, align 8
  %376 = load i32, i32* @dormlq_.i__, align 4
  %377 = sext i32 %376 to i64
  %378 = getelementptr inbounds i32, i32* %375, i64 %377
  %379 = call i32 @dlarft_(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i32* %36, i32* @dormlq_.ib, i32* %373, i32* %374, i32* %378, i32* getelementptr inbounds ([4160 x i32], [4160 x i32]* @dormlq_.t, i64 0, i64 0), i32* @c__65)
  %380 = load i32, i32* @dormlq_.left, align 4
  %381 = icmp ne i32 %380, 0
  br i1 %381, label %382, label %389

382:                                              ; preds = %352
  %383 = load i32*, i32** %17, align 8
  %384 = load i32, i32* %383, align 4
  %385 = load i32, i32* @dormlq_.i__, align 4
  %386 = sub nsw i32 %384, %385
  %387 = add nsw i32 %386, 1
  store i32 %387, i32* @dormlq_.mi, align 4
  %388 = load i32, i32* @dormlq_.i__, align 4
  store i32 %388, i32* @dormlq_.ic, align 4
  br label %396

389:                                              ; preds = %352
  %390 = load i32*, i32** %18, align 8
  %391 = load i32, i32* %390, align 4
  %392 = load i32, i32* @dormlq_.i__, align 4
  %393 = sub nsw i32 %391, %392
  %394 = add nsw i32 %393, 1
  store i32 %394, i32* @dormlq_.ni, align 4
  %395 = load i32, i32* @dormlq_.i__, align 4
  store i32 %395, i32* @dormlq_.jc, align 4
  br label %396

396:                                              ; preds = %389, %382
  %397 = load i8*, i8** %15, align 8
  %398 = load i32*, i32** %20, align 8
  %399 = load i32, i32* @dormlq_.i__, align 4
  %400 = load i32, i32* @dormlq_.i__, align 4
  %401 = load i32, i32* %29, align 4
  %402 = mul nsw i32 %400, %401
  %403 = add nsw i32 %399, %402
  %404 = sext i32 %403 to i64
  %405 = getelementptr inbounds i32, i32* %398, i64 %404
  %406 = load i32*, i32** %21, align 8
  %407 = load i32*, i32** %23, align 8
  %408 = load i32, i32* @dormlq_.ic, align 4
  %409 = load i32, i32* @dormlq_.jc, align 4
  %410 = load i32, i32* %31, align 4
  %411 = mul nsw i32 %409, %410
  %412 = add nsw i32 %408, %411
  %413 = sext i32 %412 to i64
  %414 = getelementptr inbounds i32, i32* %407, i64 %413
  %415 = load i32*, i32** %24, align 8
  %416 = load i32*, i32** %25, align 8
  %417 = getelementptr inbounds i32, i32* %416, i64 1
  %418 = call i32 @dlarfb_(i8* %397, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @dormlq_.transt, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i32* @dormlq_.mi, i32* @dormlq_.ni, i32* @dormlq_.ib, i32* %405, i32* %406, i32* getelementptr inbounds ([4160 x i32], [4160 x i32]* @dormlq_.t, i64 0, i64 0), i32* @c__65, i32* %414, i32* %415, i32* %417, i32* @dormlq_.ldwork)
  br label %419

419:                                              ; preds = %396
  %420 = load i32, i32* %34, align 4
  %421 = load i32, i32* @dormlq_.i__, align 4
  %422 = add nsw i32 %421, %420
  store i32 %422, i32* @dormlq_.i__, align 4
  br label %336

423:                                              ; preds = %349
  br label %424

424:                                              ; preds = %423, %270
  %425 = load i32, i32* @dormlq_.lwkopt, align 4
  %426 = load i32*, i32** %25, align 8
  %427 = getelementptr inbounds i32, i32* %426, i64 1
  store i32 %425, i32* %427, align 4
  store i32 0, i32* %14, align 4
  br label %428

428:                                              ; preds = %424, %215, %201, %193
  %429 = load i32, i32* %14, align 4
  ret i32 %429
}

declare dso_local i32 @lsame_(i8*, i8*) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @s_cat(i8*, i8**, i32*, i32*, i32) #1

declare dso_local i32 @ilaenv_(i32*, i8*, i8*, i32*, i32*, i32*, i32*, i32, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @xerbla_(i8*, i32*) #1

declare dso_local i32 @dorml2_(i8*, i8*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @dlarft_(i8*, i8*, i32*, i32*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @dlarfb_(i8*, i8*, i8*, i8*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
