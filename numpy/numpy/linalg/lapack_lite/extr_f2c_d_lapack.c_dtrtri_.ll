; ModuleID = '/home/carl/AnghaBench/numpy/numpy/linalg/lapack_lite/extr_f2c_d_lapack.c_dtrtri_.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/linalg/lapack_lite/extr_f2c_d_lapack.c_dtrtri_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@dtrtri_.j = internal global i32 0, align 4
@dtrtri_.jb = internal global i32 0, align 4
@dtrtri_.nb = internal global i32 0, align 4
@dtrtri_.nn = internal global i32 0, align 4
@dtrtri_.upper = internal global i8* null, align 8
@dtrtri_.nounit = internal global i8* null, align 8
@.str = private unnamed_addr constant [2 x i8] c"U\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"N\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"L\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"DTRTRI\00", align 1
@c__2 = common dso_local global i32 0, align 4
@c__1 = common dso_local global i32 0, align 4
@c_n1 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"Left\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"Upper\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"No transpose\00", align 1
@c_b15 = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [6 x i8] c"Right\00", align 1
@c_b151 = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [6 x i8] c"Lower\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dtrtri_(i8* %0, i8* %1, i32* %2, i32* %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca [2 x i8*], align 16
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca [2 x i32], align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca [2 x i8], align 1
  store i8* %0, i8** %8, align 8
  store i8* %1, i8** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %23 = load i32*, i32** %12, align 8
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %15, align 4
  %25 = load i32, i32* %15, align 4
  %26 = add nsw i32 1, %25
  store i32 %26, i32* %16, align 4
  %27 = load i32, i32* %16, align 4
  %28 = load i32*, i32** %11, align 8
  %29 = sext i32 %27 to i64
  %30 = sub i64 0, %29
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  store i32* %31, i32** %11, align 8
  %32 = load i32*, i32** %13, align 8
  store i32 0, i32* %32, align 4
  %33 = load i8*, i8** %8, align 8
  %34 = call i8* @lsame_(i8* %33, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %34, i8** @dtrtri_.upper, align 8
  %35 = load i8*, i8** %9, align 8
  %36 = call i8* @lsame_(i8* %35, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i8* %36, i8** @dtrtri_.nounit, align 8
  %37 = load i8*, i8** @dtrtri_.upper, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %45, label %39

39:                                               ; preds = %6
  %40 = load i8*, i8** %8, align 8
  %41 = call i8* @lsame_(i8* %40, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %42 = icmp ne i8* %41, null
  br i1 %42, label %45, label %43

43:                                               ; preds = %39
  %44 = load i32*, i32** %13, align 8
  store i32 -1, i32* %44, align 4
  br label %72

45:                                               ; preds = %39, %6
  %46 = load i8*, i8** @dtrtri_.nounit, align 8
  %47 = icmp ne i8* %46, null
  br i1 %47, label %54, label %48

48:                                               ; preds = %45
  %49 = load i8*, i8** %9, align 8
  %50 = call i8* @lsame_(i8* %49, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %51 = icmp ne i8* %50, null
  br i1 %51, label %54, label %52

52:                                               ; preds = %48
  %53 = load i32*, i32** %13, align 8
  store i32 -2, i32* %53, align 4
  br label %71

54:                                               ; preds = %48, %45
  %55 = load i32*, i32** %10, align 8
  %56 = load i32, i32* %55, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %54
  %59 = load i32*, i32** %13, align 8
  store i32 -3, i32* %59, align 4
  br label %70

60:                                               ; preds = %54
  %61 = load i32*, i32** %12, align 8
  %62 = load i32, i32* %61, align 4
  %63 = load i32*, i32** %10, align 8
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @max(i32 1, i32 %64)
  %66 = icmp slt i32 %62, %65
  br i1 %66, label %67, label %69

67:                                               ; preds = %60
  %68 = load i32*, i32** %13, align 8
  store i32 -5, i32* %68, align 4
  br label %69

69:                                               ; preds = %67, %60
  br label %70

70:                                               ; preds = %69, %58
  br label %71

71:                                               ; preds = %70, %52
  br label %72

72:                                               ; preds = %71, %43
  %73 = load i32*, i32** %13, align 8
  %74 = load i32, i32* %73, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %72
  %77 = load i32*, i32** %13, align 8
  %78 = load i32, i32* %77, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %17, align 4
  %80 = call i32 @xerbla_(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32* %17)
  store i32 0, i32* %7, align 4
  br label %365

81:                                               ; preds = %72
  %82 = load i32*, i32** %10, align 8
  %83 = load i32, i32* %82, align 4
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %81
  store i32 0, i32* %7, align 4
  br label %365

86:                                               ; preds = %81
  %87 = load i8*, i8** @dtrtri_.nounit, align 8
  %88 = icmp ne i8* %87, null
  br i1 %88, label %89, label %120

89:                                               ; preds = %86
  %90 = load i32*, i32** %10, align 8
  %91 = load i32, i32* %90, align 4
  store i32 %91, i32* %17, align 4
  %92 = load i32*, i32** %13, align 8
  store i32 1, i32* %92, align 4
  br label %93

93:                                               ; preds = %114, %89
  %94 = load i32*, i32** %13, align 8
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* %17, align 4
  %97 = icmp sle i32 %95, %96
  br i1 %97, label %98, label %118

98:                                               ; preds = %93
  %99 = load i32*, i32** %11, align 8
  %100 = load i32*, i32** %13, align 8
  %101 = load i32, i32* %100, align 4
  %102 = load i32*, i32** %13, align 8
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* %15, align 4
  %105 = mul nsw i32 %103, %104
  %106 = add nsw i32 %101, %105
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %99, i64 %107
  %109 = load i32, i32* %108, align 4
  %110 = sitofp i32 %109 to double
  %111 = fcmp oeq double %110, 0.000000e+00
  br i1 %111, label %112, label %113

112:                                              ; preds = %98
  store i32 0, i32* %7, align 4
  br label %365

113:                                              ; preds = %98
  br label %114

114:                                              ; preds = %113
  %115 = load i32*, i32** %13, align 8
  %116 = load i32, i32* %115, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %115, align 4
  br label %93

118:                                              ; preds = %93
  %119 = load i32*, i32** %13, align 8
  store i32 0, i32* %119, align 4
  br label %120

120:                                              ; preds = %118, %86
  %121 = getelementptr inbounds [2 x i32], [2 x i32]* %18, i64 0, i64 0
  store i32 1, i32* %121, align 4
  %122 = load i8*, i8** %8, align 8
  %123 = getelementptr inbounds [2 x i8*], [2 x i8*]* %14, i64 0, i64 0
  store i8* %122, i8** %123, align 16
  %124 = getelementptr inbounds [2 x i32], [2 x i32]* %18, i64 0, i64 1
  store i32 1, i32* %124, align 4
  %125 = load i8*, i8** %9, align 8
  %126 = getelementptr inbounds [2 x i8*], [2 x i8*]* %14, i64 0, i64 1
  store i8* %125, i8** %126, align 8
  %127 = getelementptr inbounds [2 x i8], [2 x i8]* %22, i64 0, i64 0
  %128 = getelementptr inbounds [2 x i8*], [2 x i8*]* %14, i64 0, i64 0
  %129 = getelementptr inbounds [2 x i32], [2 x i32]* %18, i64 0, i64 0
  %130 = call i32 @s_cat(i8* %127, i8** %128, i32* %129, i32* @c__2, i32 2)
  %131 = getelementptr inbounds [2 x i8], [2 x i8]* %22, i64 0, i64 0
  %132 = load i32*, i32** %10, align 8
  %133 = call i32 @ilaenv_(i32* @c__1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* %131, i32* %132, i32* @c_n1, i32* @c_n1, i32* @c_n1, i32 6, i32 2)
  store i32 %133, i32* @dtrtri_.nb, align 4
  %134 = load i32, i32* @dtrtri_.nb, align 4
  %135 = icmp sle i32 %134, 1
  br i1 %135, label %141, label %136

136:                                              ; preds = %120
  %137 = load i32, i32* @dtrtri_.nb, align 4
  %138 = load i32*, i32** %10, align 8
  %139 = load i32, i32* %138, align 4
  %140 = icmp sge i32 %137, %139
  br i1 %140, label %141, label %152

141:                                              ; preds = %136, %120
  %142 = load i8*, i8** %8, align 8
  %143 = load i8*, i8** %9, align 8
  %144 = load i32*, i32** %10, align 8
  %145 = load i32*, i32** %11, align 8
  %146 = load i32, i32* %16, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i32, i32* %145, i64 %147
  %149 = load i32*, i32** %12, align 8
  %150 = load i32*, i32** %13, align 8
  %151 = call i32 @dtrti2_(i8* %142, i8* %143, i32* %144, i32* %148, i32* %149, i32* %150)
  br label %364

152:                                              ; preds = %136
  %153 = load i8*, i8** @dtrtri_.upper, align 8
  %154 = icmp ne i8* %153, null
  br i1 %154, label %155, label %240

155:                                              ; preds = %152
  %156 = load i32*, i32** %10, align 8
  %157 = load i32, i32* %156, align 4
  store i32 %157, i32* %17, align 4
  %158 = load i32, i32* @dtrtri_.nb, align 4
  store i32 %158, i32* %19, align 4
  store i32 1, i32* @dtrtri_.j, align 4
  br label %159

159:                                              ; preds = %235, %155
  %160 = load i32, i32* %19, align 4
  %161 = icmp slt i32 %160, 0
  br i1 %161, label %162, label %167

162:                                              ; preds = %159
  %163 = load i32, i32* @dtrtri_.j, align 4
  %164 = load i32, i32* %17, align 4
  %165 = icmp sge i32 %163, %164
  %166 = zext i1 %165 to i32
  br label %172

167:                                              ; preds = %159
  %168 = load i32, i32* @dtrtri_.j, align 4
  %169 = load i32, i32* %17, align 4
  %170 = icmp sle i32 %168, %169
  %171 = zext i1 %170 to i32
  br label %172

172:                                              ; preds = %167, %162
  %173 = phi i32 [ %166, %162 ], [ %171, %167 ]
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %239

175:                                              ; preds = %172
  %176 = load i32, i32* @dtrtri_.nb, align 4
  store i32 %176, i32* %20, align 4
  %177 = load i32*, i32** %10, align 8
  %178 = load i32, i32* %177, align 4
  %179 = load i32, i32* @dtrtri_.j, align 4
  %180 = sub nsw i32 %178, %179
  %181 = add nsw i32 %180, 1
  store i32 %181, i32* %21, align 4
  %182 = load i32, i32* %20, align 4
  %183 = load i32, i32* %21, align 4
  %184 = call i32 @min(i32 %182, i32 %183)
  store i32 %184, i32* @dtrtri_.jb, align 4
  %185 = load i32, i32* @dtrtri_.j, align 4
  %186 = sub nsw i32 %185, 1
  store i32 %186, i32* %20, align 4
  %187 = load i8*, i8** %9, align 8
  %188 = load i32*, i32** %11, align 8
  %189 = load i32, i32* %16, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds i32, i32* %188, i64 %190
  %192 = load i32*, i32** %12, align 8
  %193 = load i32*, i32** %11, align 8
  %194 = load i32, i32* @dtrtri_.j, align 4
  %195 = load i32, i32* %15, align 4
  %196 = mul nsw i32 %194, %195
  %197 = add nsw i32 %196, 1
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds i32, i32* %193, i64 %198
  %200 = load i32*, i32** %12, align 8
  %201 = call i32 @dtrmm_(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0), i8* %187, i32* %20, i32* @dtrtri_.jb, i32* @c_b15, i32* %191, i32* %192, i32* %199, i32* %200)
  %202 = load i32, i32* @dtrtri_.j, align 4
  %203 = sub nsw i32 %202, 1
  store i32 %203, i32* %20, align 4
  %204 = load i8*, i8** %9, align 8
  %205 = load i32*, i32** %11, align 8
  %206 = load i32, i32* @dtrtri_.j, align 4
  %207 = load i32, i32* @dtrtri_.j, align 4
  %208 = load i32, i32* %15, align 4
  %209 = mul nsw i32 %207, %208
  %210 = add nsw i32 %206, %209
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds i32, i32* %205, i64 %211
  %213 = load i32*, i32** %12, align 8
  %214 = load i32*, i32** %11, align 8
  %215 = load i32, i32* @dtrtri_.j, align 4
  %216 = load i32, i32* %15, align 4
  %217 = mul nsw i32 %215, %216
  %218 = add nsw i32 %217, 1
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds i32, i32* %214, i64 %219
  %221 = load i32*, i32** %12, align 8
  %222 = call i32 @dtrsm_(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0), i8* %204, i32* %20, i32* @dtrtri_.jb, i32* @c_b151, i32* %212, i32* %213, i32* %220, i32* %221)
  %223 = load i8*, i8** %9, align 8
  %224 = load i32*, i32** %11, align 8
  %225 = load i32, i32* @dtrtri_.j, align 4
  %226 = load i32, i32* @dtrtri_.j, align 4
  %227 = load i32, i32* %15, align 4
  %228 = mul nsw i32 %226, %227
  %229 = add nsw i32 %225, %228
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds i32, i32* %224, i64 %230
  %232 = load i32*, i32** %12, align 8
  %233 = load i32*, i32** %13, align 8
  %234 = call i32 @dtrti2_(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i8* %223, i32* @dtrtri_.jb, i32* %231, i32* %232, i32* %233)
  br label %235

235:                                              ; preds = %175
  %236 = load i32, i32* %19, align 4
  %237 = load i32, i32* @dtrtri_.j, align 4
  %238 = add nsw i32 %237, %236
  store i32 %238, i32* @dtrtri_.j, align 4
  br label %159

239:                                              ; preds = %172
  br label %363

240:                                              ; preds = %152
  %241 = load i32*, i32** %10, align 8
  %242 = load i32, i32* %241, align 4
  %243 = sub nsw i32 %242, 1
  %244 = load i32, i32* @dtrtri_.nb, align 4
  %245 = sdiv i32 %243, %244
  %246 = load i32, i32* @dtrtri_.nb, align 4
  %247 = mul nsw i32 %245, %246
  %248 = add nsw i32 %247, 1
  store i32 %248, i32* @dtrtri_.nn, align 4
  %249 = load i32, i32* @dtrtri_.nb, align 4
  %250 = sub nsw i32 0, %249
  store i32 %250, i32* %19, align 4
  %251 = load i32, i32* @dtrtri_.nn, align 4
  store i32 %251, i32* @dtrtri_.j, align 4
  br label %252

252:                                              ; preds = %358, %240
  %253 = load i32, i32* %19, align 4
  %254 = icmp slt i32 %253, 0
  br i1 %254, label %255, label %259

255:                                              ; preds = %252
  %256 = load i32, i32* @dtrtri_.j, align 4
  %257 = icmp sge i32 %256, 1
  %258 = zext i1 %257 to i32
  br label %263

259:                                              ; preds = %252
  %260 = load i32, i32* @dtrtri_.j, align 4
  %261 = icmp sle i32 %260, 1
  %262 = zext i1 %261 to i32
  br label %263

263:                                              ; preds = %259, %255
  %264 = phi i32 [ %258, %255 ], [ %262, %259 ]
  %265 = icmp ne i32 %264, 0
  br i1 %265, label %266, label %362

266:                                              ; preds = %263
  %267 = load i32, i32* @dtrtri_.nb, align 4
  store i32 %267, i32* %17, align 4
  %268 = load i32*, i32** %10, align 8
  %269 = load i32, i32* %268, align 4
  %270 = load i32, i32* @dtrtri_.j, align 4
  %271 = sub nsw i32 %269, %270
  %272 = add nsw i32 %271, 1
  store i32 %272, i32* %20, align 4
  %273 = load i32, i32* %17, align 4
  %274 = load i32, i32* %20, align 4
  %275 = call i32 @min(i32 %273, i32 %274)
  store i32 %275, i32* @dtrtri_.jb, align 4
  %276 = load i32, i32* @dtrtri_.j, align 4
  %277 = load i32, i32* @dtrtri_.jb, align 4
  %278 = add nsw i32 %276, %277
  %279 = load i32*, i32** %10, align 8
  %280 = load i32, i32* %279, align 4
  %281 = icmp sle i32 %278, %280
  br i1 %281, label %282, label %345

282:                                              ; preds = %266
  %283 = load i32*, i32** %10, align 8
  %284 = load i32, i32* %283, align 4
  %285 = load i32, i32* @dtrtri_.j, align 4
  %286 = sub nsw i32 %284, %285
  %287 = load i32, i32* @dtrtri_.jb, align 4
  %288 = sub nsw i32 %286, %287
  %289 = add nsw i32 %288, 1
  store i32 %289, i32* %17, align 4
  %290 = load i8*, i8** %9, align 8
  %291 = load i32*, i32** %11, align 8
  %292 = load i32, i32* @dtrtri_.j, align 4
  %293 = load i32, i32* @dtrtri_.jb, align 4
  %294 = add nsw i32 %292, %293
  %295 = load i32, i32* @dtrtri_.j, align 4
  %296 = load i32, i32* @dtrtri_.jb, align 4
  %297 = add nsw i32 %295, %296
  %298 = load i32, i32* %15, align 4
  %299 = mul nsw i32 %297, %298
  %300 = add nsw i32 %294, %299
  %301 = sext i32 %300 to i64
  %302 = getelementptr inbounds i32, i32* %291, i64 %301
  %303 = load i32*, i32** %12, align 8
  %304 = load i32*, i32** %11, align 8
  %305 = load i32, i32* @dtrtri_.j, align 4
  %306 = load i32, i32* @dtrtri_.jb, align 4
  %307 = add nsw i32 %305, %306
  %308 = load i32, i32* @dtrtri_.j, align 4
  %309 = load i32, i32* %15, align 4
  %310 = mul nsw i32 %308, %309
  %311 = add nsw i32 %307, %310
  %312 = sext i32 %311 to i64
  %313 = getelementptr inbounds i32, i32* %304, i64 %312
  %314 = load i32*, i32** %12, align 8
  %315 = call i32 @dtrmm_(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0), i8* %290, i32* %17, i32* @dtrtri_.jb, i32* @c_b15, i32* %302, i32* %303, i32* %313, i32* %314)
  %316 = load i32*, i32** %10, align 8
  %317 = load i32, i32* %316, align 4
  %318 = load i32, i32* @dtrtri_.j, align 4
  %319 = sub nsw i32 %317, %318
  %320 = load i32, i32* @dtrtri_.jb, align 4
  %321 = sub nsw i32 %319, %320
  %322 = add nsw i32 %321, 1
  store i32 %322, i32* %17, align 4
  %323 = load i8*, i8** %9, align 8
  %324 = load i32*, i32** %11, align 8
  %325 = load i32, i32* @dtrtri_.j, align 4
  %326 = load i32, i32* @dtrtri_.j, align 4
  %327 = load i32, i32* %15, align 4
  %328 = mul nsw i32 %326, %327
  %329 = add nsw i32 %325, %328
  %330 = sext i32 %329 to i64
  %331 = getelementptr inbounds i32, i32* %324, i64 %330
  %332 = load i32*, i32** %12, align 8
  %333 = load i32*, i32** %11, align 8
  %334 = load i32, i32* @dtrtri_.j, align 4
  %335 = load i32, i32* @dtrtri_.jb, align 4
  %336 = add nsw i32 %334, %335
  %337 = load i32, i32* @dtrtri_.j, align 4
  %338 = load i32, i32* %15, align 4
  %339 = mul nsw i32 %337, %338
  %340 = add nsw i32 %336, %339
  %341 = sext i32 %340 to i64
  %342 = getelementptr inbounds i32, i32* %333, i64 %341
  %343 = load i32*, i32** %12, align 8
  %344 = call i32 @dtrsm_(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0), i8* %323, i32* %17, i32* @dtrtri_.jb, i32* @c_b151, i32* %331, i32* %332, i32* %342, i32* %343)
  br label %345

345:                                              ; preds = %282, %266
  %346 = load i8*, i8** %9, align 8
  %347 = load i32*, i32** %11, align 8
  %348 = load i32, i32* @dtrtri_.j, align 4
  %349 = load i32, i32* @dtrtri_.j, align 4
  %350 = load i32, i32* %15, align 4
  %351 = mul nsw i32 %349, %350
  %352 = add nsw i32 %348, %351
  %353 = sext i32 %352 to i64
  %354 = getelementptr inbounds i32, i32* %347, i64 %353
  %355 = load i32*, i32** %12, align 8
  %356 = load i32*, i32** %13, align 8
  %357 = call i32 @dtrti2_(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i8* %346, i32* @dtrtri_.jb, i32* %354, i32* %355, i32* %356)
  br label %358

358:                                              ; preds = %345
  %359 = load i32, i32* %19, align 4
  %360 = load i32, i32* @dtrtri_.j, align 4
  %361 = add nsw i32 %360, %359
  store i32 %361, i32* @dtrtri_.j, align 4
  br label %252

362:                                              ; preds = %263
  br label %363

363:                                              ; preds = %362, %239
  br label %364

364:                                              ; preds = %363, %141
  store i32 0, i32* %7, align 4
  br label %365

365:                                              ; preds = %364, %112, %85, %76
  %366 = load i32, i32* %7, align 4
  ret i32 %366
}

declare dso_local i8* @lsame_(i8*, i8*) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @xerbla_(i8*, i32*) #1

declare dso_local i32 @s_cat(i8*, i8**, i32*, i32*, i32) #1

declare dso_local i32 @ilaenv_(i32*, i8*, i8*, i32*, i32*, i32*, i32*, i32, i32) #1

declare dso_local i32 @dtrti2_(i8*, i8*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @dtrmm_(i8*, i8*, i8*, i8*, i32*, i32*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @dtrsm_(i8*, i8*, i8*, i8*, i32*, i32*, i32*, i32*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
