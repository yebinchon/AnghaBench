; ModuleID = '/home/carl/AnghaBench/numpy/numpy/linalg/lapack_lite/extr_f2c_z_lapack.c_zungqr_.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/linalg/lapack_lite/extr_f2c_z_lapack.c_zungqr_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }

@zungqr_.i__ = internal global i32 0, align 4
@zungqr_.j = internal global i32 0, align 4
@zungqr_.l = internal global i32 0, align 4
@zungqr_.ib = internal global i32 0, align 4
@zungqr_.nb = internal global i32 0, align 4
@zungqr_.ki = internal global i32 0, align 4
@zungqr_.kk = internal global i32 0, align 4
@zungqr_.nx = internal global i32 0, align 4
@zungqr_.iws = internal global i32 0, align 4
@zungqr_.nbmin = internal global i32 0, align 4
@zungqr_.iinfo = internal global i32 0, align 4
@zungqr_.ldwork = internal global i32 0, align 4
@zungqr_.lwkopt = internal global i32 0, align 4
@zungqr_.lquery = internal global i32 0, align 4
@c__1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"ZUNGQR\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c" \00", align 1
@c_n1 = common dso_local global i32 0, align 4
@c__3 = common dso_local global i32 0, align 4
@c__2 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"Forward\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"Columnwise\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"Left\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"No transpose\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zungqr_(i32* %0, i32* %1, i32* %2, %struct.TYPE_5__* %3, i32* %4, %struct.TYPE_5__* %5, %struct.TYPE_5__* %6, i32* %7, i32* %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_5__*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.TYPE_5__*, align 8
  %17 = alloca %struct.TYPE_5__*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store i32* %0, i32** %11, align 8
  store i32* %1, i32** %12, align 8
  store i32* %2, i32** %13, align 8
  store %struct.TYPE_5__* %3, %struct.TYPE_5__** %14, align 8
  store i32* %4, i32** %15, align 8
  store %struct.TYPE_5__* %5, %struct.TYPE_5__** %16, align 8
  store %struct.TYPE_5__* %6, %struct.TYPE_5__** %17, align 8
  store i32* %7, i32** %18, align 8
  store i32* %8, i32** %19, align 8
  %26 = load i32*, i32** %15, align 8
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %20, align 4
  %28 = load i32, i32* %20, align 4
  %29 = add nsw i32 1, %28
  store i32 %29, i32* %21, align 4
  %30 = load i32, i32* %21, align 4
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %32 = sext i32 %30 to i64
  %33 = sub i64 0, %32
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i64 %33
  store %struct.TYPE_5__* %34, %struct.TYPE_5__** %14, align 8
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 -1
  store %struct.TYPE_5__* %36, %struct.TYPE_5__** %16, align 8
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 -1
  store %struct.TYPE_5__* %38, %struct.TYPE_5__** %17, align 8
  %39 = load i32*, i32** %19, align 8
  store i32 0, i32* %39, align 4
  %40 = load i32*, i32** %11, align 8
  %41 = load i32*, i32** %12, align 8
  %42 = load i32*, i32** %13, align 8
  %43 = call i32 @ilaenv_(i32* @c__1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32* %40, i32* %41, i32* %42, i32* @c_n1, i32 6, i32 1)
  store i32 %43, i32* @zungqr_.nb, align 4
  %44 = load i32*, i32** %12, align 8
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @max(i32 1, i32 %45)
  %47 = load i32, i32* @zungqr_.nb, align 4
  %48 = mul nsw i32 %46, %47
  store i32 %48, i32* @zungqr_.lwkopt, align 4
  %49 = load i32, i32* @zungqr_.lwkopt, align 4
  %50 = sext i32 %49 to i64
  %51 = inttoptr i64 %50 to i8*
  %52 = ptrtoint i8* %51 to i32
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i64 1
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  store i32 %52, i32* %55, align 4
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i64 1
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 1
  store i32 0, i32* %58, align 4
  %59 = load i32*, i32** %18, align 8
  %60 = load i32, i32* %59, align 4
  %61 = icmp eq i32 %60, -1
  %62 = zext i1 %61 to i32
  store i32 %62, i32* @zungqr_.lquery, align 4
  %63 = load i32*, i32** %11, align 8
  %64 = load i32, i32* %63, align 4
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %9
  %67 = load i32*, i32** %19, align 8
  store i32 -1, i32* %67, align 4
  br label %117

68:                                               ; preds = %9
  %69 = load i32*, i32** %12, align 8
  %70 = load i32, i32* %69, align 4
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %78, label %72

72:                                               ; preds = %68
  %73 = load i32*, i32** %12, align 8
  %74 = load i32, i32* %73, align 4
  %75 = load i32*, i32** %11, align 8
  %76 = load i32, i32* %75, align 4
  %77 = icmp sgt i32 %74, %76
  br i1 %77, label %78, label %80

78:                                               ; preds = %72, %68
  %79 = load i32*, i32** %19, align 8
  store i32 -2, i32* %79, align 4
  br label %116

80:                                               ; preds = %72
  %81 = load i32*, i32** %13, align 8
  %82 = load i32, i32* %81, align 4
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %90, label %84

84:                                               ; preds = %80
  %85 = load i32*, i32** %13, align 8
  %86 = load i32, i32* %85, align 4
  %87 = load i32*, i32** %12, align 8
  %88 = load i32, i32* %87, align 4
  %89 = icmp sgt i32 %86, %88
  br i1 %89, label %90, label %92

90:                                               ; preds = %84, %80
  %91 = load i32*, i32** %19, align 8
  store i32 -3, i32* %91, align 4
  br label %115

92:                                               ; preds = %84
  %93 = load i32*, i32** %15, align 8
  %94 = load i32, i32* %93, align 4
  %95 = load i32*, i32** %11, align 8
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @max(i32 1, i32 %96)
  %98 = icmp slt i32 %94, %97
  br i1 %98, label %99, label %101

99:                                               ; preds = %92
  %100 = load i32*, i32** %19, align 8
  store i32 -5, i32* %100, align 4
  br label %114

101:                                              ; preds = %92
  %102 = load i32*, i32** %18, align 8
  %103 = load i32, i32* %102, align 4
  %104 = load i32*, i32** %12, align 8
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @max(i32 1, i32 %105)
  %107 = icmp slt i32 %103, %106
  br i1 %107, label %108, label %113

108:                                              ; preds = %101
  %109 = load i32, i32* @zungqr_.lquery, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %113, label %111

111:                                              ; preds = %108
  %112 = load i32*, i32** %19, align 8
  store i32 -8, i32* %112, align 4
  br label %113

113:                                              ; preds = %111, %108, %101
  br label %114

114:                                              ; preds = %113, %99
  br label %115

115:                                              ; preds = %114, %90
  br label %116

116:                                              ; preds = %115, %78
  br label %117

117:                                              ; preds = %116, %66
  %118 = load i32*, i32** %19, align 8
  %119 = load i32, i32* %118, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %126

121:                                              ; preds = %117
  %122 = load i32*, i32** %19, align 8
  %123 = load i32, i32* %122, align 4
  %124 = sub nsw i32 0, %123
  store i32 %124, i32* %22, align 4
  %125 = call i32 @xerbla_(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32* %22)
  store i32 0, i32* %10, align 4
  br label %474

126:                                              ; preds = %117
  %127 = load i32, i32* @zungqr_.lquery, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %126
  store i32 0, i32* %10, align 4
  br label %474

130:                                              ; preds = %126
  br label %131

131:                                              ; preds = %130
  %132 = load i32*, i32** %12, align 8
  %133 = load i32, i32* %132, align 4
  %134 = icmp sle i32 %133, 0
  br i1 %134, label %135, label %142

135:                                              ; preds = %131
  %136 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %137 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %136, i64 1
  %138 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %137, i32 0, i32 0
  store i32 1, i32* %138, align 4
  %139 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %140 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %139, i64 1
  %141 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %140, i32 0, i32 1
  store i32 0, i32* %141, align 4
  store i32 0, i32* %10, align 4
  br label %474

142:                                              ; preds = %131
  store i32 2, i32* @zungqr_.nbmin, align 4
  store i32 0, i32* @zungqr_.nx, align 4
  %143 = load i32*, i32** %12, align 8
  %144 = load i32, i32* %143, align 4
  store i32 %144, i32* @zungqr_.iws, align 4
  %145 = load i32, i32* @zungqr_.nb, align 4
  %146 = icmp sgt i32 %145, 1
  br i1 %146, label %147, label %188

147:                                              ; preds = %142
  %148 = load i32, i32* @zungqr_.nb, align 4
  %149 = load i32*, i32** %13, align 8
  %150 = load i32, i32* %149, align 4
  %151 = icmp slt i32 %148, %150
  br i1 %151, label %152, label %188

152:                                              ; preds = %147
  store i32 0, i32* %22, align 4
  %153 = load i32*, i32** %11, align 8
  %154 = load i32*, i32** %12, align 8
  %155 = load i32*, i32** %13, align 8
  %156 = call i32 @ilaenv_(i32* @c__3, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32* %153, i32* %154, i32* %155, i32* @c_n1, i32 6, i32 1)
  store i32 %156, i32* %23, align 4
  %157 = load i32, i32* %22, align 4
  %158 = load i32, i32* %23, align 4
  %159 = call i32 @max(i32 %157, i32 %158)
  store i32 %159, i32* @zungqr_.nx, align 4
  %160 = load i32, i32* @zungqr_.nx, align 4
  %161 = load i32*, i32** %13, align 8
  %162 = load i32, i32* %161, align 4
  %163 = icmp slt i32 %160, %162
  br i1 %163, label %164, label %187

164:                                              ; preds = %152
  %165 = load i32*, i32** %12, align 8
  %166 = load i32, i32* %165, align 4
  store i32 %166, i32* @zungqr_.ldwork, align 4
  %167 = load i32, i32* @zungqr_.ldwork, align 4
  %168 = load i32, i32* @zungqr_.nb, align 4
  %169 = mul nsw i32 %167, %168
  store i32 %169, i32* @zungqr_.iws, align 4
  %170 = load i32*, i32** %18, align 8
  %171 = load i32, i32* %170, align 4
  %172 = load i32, i32* @zungqr_.iws, align 4
  %173 = icmp slt i32 %171, %172
  br i1 %173, label %174, label %186

174:                                              ; preds = %164
  %175 = load i32*, i32** %18, align 8
  %176 = load i32, i32* %175, align 4
  %177 = load i32, i32* @zungqr_.ldwork, align 4
  %178 = sdiv i32 %176, %177
  store i32 %178, i32* @zungqr_.nb, align 4
  store i32 2, i32* %22, align 4
  %179 = load i32*, i32** %11, align 8
  %180 = load i32*, i32** %12, align 8
  %181 = load i32*, i32** %13, align 8
  %182 = call i32 @ilaenv_(i32* @c__2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32* %179, i32* %180, i32* %181, i32* @c_n1, i32 6, i32 1)
  store i32 %182, i32* %23, align 4
  %183 = load i32, i32* %22, align 4
  %184 = load i32, i32* %23, align 4
  %185 = call i32 @max(i32 %183, i32 %184)
  store i32 %185, i32* @zungqr_.nbmin, align 4
  br label %186

186:                                              ; preds = %174, %164
  br label %187

187:                                              ; preds = %186, %152
  br label %188

188:                                              ; preds = %187, %147, %142
  %189 = load i32, i32* @zungqr_.nb, align 4
  %190 = load i32, i32* @zungqr_.nbmin, align 4
  %191 = icmp sge i32 %189, %190
  br i1 %191, label %192, label %258

192:                                              ; preds = %188
  %193 = load i32, i32* @zungqr_.nb, align 4
  %194 = load i32*, i32** %13, align 8
  %195 = load i32, i32* %194, align 4
  %196 = icmp slt i32 %193, %195
  br i1 %196, label %197, label %258

197:                                              ; preds = %192
  %198 = load i32, i32* @zungqr_.nx, align 4
  %199 = load i32*, i32** %13, align 8
  %200 = load i32, i32* %199, align 4
  %201 = icmp slt i32 %198, %200
  br i1 %201, label %202, label %258

202:                                              ; preds = %197
  %203 = load i32*, i32** %13, align 8
  %204 = load i32, i32* %203, align 4
  %205 = load i32, i32* @zungqr_.nx, align 4
  %206 = sub nsw i32 %204, %205
  %207 = sub nsw i32 %206, 1
  %208 = load i32, i32* @zungqr_.nb, align 4
  %209 = sdiv i32 %207, %208
  %210 = load i32, i32* @zungqr_.nb, align 4
  %211 = mul nsw i32 %209, %210
  store i32 %211, i32* @zungqr_.ki, align 4
  %212 = load i32*, i32** %13, align 8
  %213 = load i32, i32* %212, align 4
  store i32 %213, i32* %22, align 4
  %214 = load i32, i32* @zungqr_.ki, align 4
  %215 = load i32, i32* @zungqr_.nb, align 4
  %216 = add nsw i32 %214, %215
  store i32 %216, i32* %23, align 4
  %217 = load i32, i32* %22, align 4
  %218 = load i32, i32* %23, align 4
  %219 = call i32 @min(i32 %217, i32 %218)
  store i32 %219, i32* @zungqr_.kk, align 4
  %220 = load i32*, i32** %12, align 8
  %221 = load i32, i32* %220, align 4
  store i32 %221, i32* %22, align 4
  %222 = load i32, i32* @zungqr_.kk, align 4
  %223 = add nsw i32 %222, 1
  store i32 %223, i32* @zungqr_.j, align 4
  br label %224

224:                                              ; preds = %254, %202
  %225 = load i32, i32* @zungqr_.j, align 4
  %226 = load i32, i32* %22, align 4
  %227 = icmp sle i32 %225, %226
  br i1 %227, label %228, label %257

228:                                              ; preds = %224
  %229 = load i32, i32* @zungqr_.kk, align 4
  store i32 %229, i32* %23, align 4
  store i32 1, i32* @zungqr_.i__, align 4
  br label %230

230:                                              ; preds = %250, %228
  %231 = load i32, i32* @zungqr_.i__, align 4
  %232 = load i32, i32* %23, align 4
  %233 = icmp sle i32 %231, %232
  br i1 %233, label %234, label %253

234:                                              ; preds = %230
  %235 = load i32, i32* @zungqr_.i__, align 4
  %236 = load i32, i32* @zungqr_.j, align 4
  %237 = load i32, i32* %20, align 4
  %238 = mul nsw i32 %236, %237
  %239 = add nsw i32 %235, %238
  store i32 %239, i32* %24, align 4
  %240 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %241 = load i32, i32* %24, align 4
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %240, i64 %242
  %244 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %243, i32 0, i32 0
  store i32 0, i32* %244, align 4
  %245 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %246 = load i32, i32* %24, align 4
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %245, i64 %247
  %249 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %248, i32 0, i32 1
  store i32 0, i32* %249, align 4
  br label %250

250:                                              ; preds = %234
  %251 = load i32, i32* @zungqr_.i__, align 4
  %252 = add nsw i32 %251, 1
  store i32 %252, i32* @zungqr_.i__, align 4
  br label %230

253:                                              ; preds = %230
  br label %254

254:                                              ; preds = %253
  %255 = load i32, i32* @zungqr_.j, align 4
  %256 = add nsw i32 %255, 1
  store i32 %256, i32* @zungqr_.j, align 4
  br label %224

257:                                              ; preds = %224
  br label %259

258:                                              ; preds = %197, %192, %188
  store i32 0, i32* @zungqr_.kk, align 4
  br label %259

259:                                              ; preds = %258, %257
  %260 = load i32, i32* @zungqr_.kk, align 4
  %261 = load i32*, i32** %12, align 8
  %262 = load i32, i32* %261, align 4
  %263 = icmp slt i32 %260, %262
  br i1 %263, label %264, label %296

264:                                              ; preds = %259
  %265 = load i32*, i32** %11, align 8
  %266 = load i32, i32* %265, align 4
  %267 = load i32, i32* @zungqr_.kk, align 4
  %268 = sub nsw i32 %266, %267
  store i32 %268, i32* %22, align 4
  %269 = load i32*, i32** %12, align 8
  %270 = load i32, i32* %269, align 4
  %271 = load i32, i32* @zungqr_.kk, align 4
  %272 = sub nsw i32 %270, %271
  store i32 %272, i32* %23, align 4
  %273 = load i32*, i32** %13, align 8
  %274 = load i32, i32* %273, align 4
  %275 = load i32, i32* @zungqr_.kk, align 4
  %276 = sub nsw i32 %274, %275
  store i32 %276, i32* %24, align 4
  %277 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %278 = load i32, i32* @zungqr_.kk, align 4
  %279 = add nsw i32 %278, 1
  %280 = load i32, i32* @zungqr_.kk, align 4
  %281 = add nsw i32 %280, 1
  %282 = load i32, i32* %20, align 4
  %283 = mul nsw i32 %281, %282
  %284 = add nsw i32 %279, %283
  %285 = sext i32 %284 to i64
  %286 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %277, i64 %285
  %287 = load i32*, i32** %15, align 8
  %288 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %289 = load i32, i32* @zungqr_.kk, align 4
  %290 = add nsw i32 %289, 1
  %291 = sext i32 %290 to i64
  %292 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %288, i64 %291
  %293 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %294 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %293, i64 1
  %295 = call i32 @zung2r_(i32* %22, i32* %23, i32* %24, %struct.TYPE_5__* %286, i32* %287, %struct.TYPE_5__* %292, %struct.TYPE_5__* %294, i32* @zungqr_.iinfo)
  br label %296

296:                                              ; preds = %264, %259
  %297 = load i32, i32* @zungqr_.kk, align 4
  %298 = icmp sgt i32 %297, 0
  br i1 %298, label %299, label %463

299:                                              ; preds = %296
  %300 = load i32, i32* @zungqr_.nb, align 4
  %301 = sub nsw i32 0, %300
  store i32 %301, i32* %22, align 4
  %302 = load i32, i32* @zungqr_.ki, align 4
  %303 = add nsw i32 %302, 1
  store i32 %303, i32* @zungqr_.i__, align 4
  br label %304

304:                                              ; preds = %458, %299
  %305 = load i32, i32* %22, align 4
  %306 = icmp slt i32 %305, 0
  br i1 %306, label %307, label %311

307:                                              ; preds = %304
  %308 = load i32, i32* @zungqr_.i__, align 4
  %309 = icmp sge i32 %308, 1
  %310 = zext i1 %309 to i32
  br label %315

311:                                              ; preds = %304
  %312 = load i32, i32* @zungqr_.i__, align 4
  %313 = icmp sle i32 %312, 1
  %314 = zext i1 %313 to i32
  br label %315

315:                                              ; preds = %311, %307
  %316 = phi i32 [ %310, %307 ], [ %314, %311 ]
  %317 = icmp ne i32 %316, 0
  br i1 %317, label %318, label %462

318:                                              ; preds = %315
  %319 = load i32, i32* @zungqr_.nb, align 4
  store i32 %319, i32* %23, align 4
  %320 = load i32*, i32** %13, align 8
  %321 = load i32, i32* %320, align 4
  %322 = load i32, i32* @zungqr_.i__, align 4
  %323 = sub nsw i32 %321, %322
  %324 = add nsw i32 %323, 1
  store i32 %324, i32* %24, align 4
  %325 = load i32, i32* %23, align 4
  %326 = load i32, i32* %24, align 4
  %327 = call i32 @min(i32 %325, i32 %326)
  store i32 %327, i32* @zungqr_.ib, align 4
  %328 = load i32, i32* @zungqr_.i__, align 4
  %329 = load i32, i32* @zungqr_.ib, align 4
  %330 = add nsw i32 %328, %329
  %331 = load i32*, i32** %12, align 8
  %332 = load i32, i32* %331, align 4
  %333 = icmp sle i32 %330, %332
  br i1 %333, label %334, label %396

334:                                              ; preds = %318
  %335 = load i32*, i32** %11, align 8
  %336 = load i32, i32* %335, align 4
  %337 = load i32, i32* @zungqr_.i__, align 4
  %338 = sub nsw i32 %336, %337
  %339 = add nsw i32 %338, 1
  store i32 %339, i32* %23, align 4
  %340 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %341 = load i32, i32* @zungqr_.i__, align 4
  %342 = load i32, i32* @zungqr_.i__, align 4
  %343 = load i32, i32* %20, align 4
  %344 = mul nsw i32 %342, %343
  %345 = add nsw i32 %341, %344
  %346 = sext i32 %345 to i64
  %347 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %340, i64 %346
  %348 = load i32*, i32** %15, align 8
  %349 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %350 = load i32, i32* @zungqr_.i__, align 4
  %351 = sext i32 %350 to i64
  %352 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %349, i64 %351
  %353 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %354 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %353, i64 1
  %355 = call i32 @zlarft_(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32* %23, i32* @zungqr_.ib, %struct.TYPE_5__* %347, i32* %348, %struct.TYPE_5__* %352, %struct.TYPE_5__* %354, i32* @zungqr_.ldwork)
  %356 = load i32*, i32** %11, align 8
  %357 = load i32, i32* %356, align 4
  %358 = load i32, i32* @zungqr_.i__, align 4
  %359 = sub nsw i32 %357, %358
  %360 = add nsw i32 %359, 1
  store i32 %360, i32* %23, align 4
  %361 = load i32*, i32** %12, align 8
  %362 = load i32, i32* %361, align 4
  %363 = load i32, i32* @zungqr_.i__, align 4
  %364 = sub nsw i32 %362, %363
  %365 = load i32, i32* @zungqr_.ib, align 4
  %366 = sub nsw i32 %364, %365
  %367 = add nsw i32 %366, 1
  store i32 %367, i32* %24, align 4
  %368 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %369 = load i32, i32* @zungqr_.i__, align 4
  %370 = load i32, i32* @zungqr_.i__, align 4
  %371 = load i32, i32* %20, align 4
  %372 = mul nsw i32 %370, %371
  %373 = add nsw i32 %369, %372
  %374 = sext i32 %373 to i64
  %375 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %368, i64 %374
  %376 = load i32*, i32** %15, align 8
  %377 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %378 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %377, i64 1
  %379 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %380 = load i32, i32* @zungqr_.i__, align 4
  %381 = load i32, i32* @zungqr_.i__, align 4
  %382 = load i32, i32* @zungqr_.ib, align 4
  %383 = add nsw i32 %381, %382
  %384 = load i32, i32* %20, align 4
  %385 = mul nsw i32 %383, %384
  %386 = add nsw i32 %380, %385
  %387 = sext i32 %386 to i64
  %388 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %379, i64 %387
  %389 = load i32*, i32** %15, align 8
  %390 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %391 = load i32, i32* @zungqr_.ib, align 4
  %392 = add nsw i32 %391, 1
  %393 = sext i32 %392 to i64
  %394 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %390, i64 %393
  %395 = call i32 @zlarfb_(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32* %23, i32* %24, i32* @zungqr_.ib, %struct.TYPE_5__* %375, i32* %376, %struct.TYPE_5__* %378, i32* @zungqr_.ldwork, %struct.TYPE_5__* %388, i32* %389, %struct.TYPE_5__* %394, i32* @zungqr_.ldwork)
  br label %396

396:                                              ; preds = %334, %318
  %397 = load i32*, i32** %11, align 8
  %398 = load i32, i32* %397, align 4
  %399 = load i32, i32* @zungqr_.i__, align 4
  %400 = sub nsw i32 %398, %399
  %401 = add nsw i32 %400, 1
  store i32 %401, i32* %23, align 4
  %402 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %403 = load i32, i32* @zungqr_.i__, align 4
  %404 = load i32, i32* @zungqr_.i__, align 4
  %405 = load i32, i32* %20, align 4
  %406 = mul nsw i32 %404, %405
  %407 = add nsw i32 %403, %406
  %408 = sext i32 %407 to i64
  %409 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %402, i64 %408
  %410 = load i32*, i32** %15, align 8
  %411 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %412 = load i32, i32* @zungqr_.i__, align 4
  %413 = sext i32 %412 to i64
  %414 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %411, i64 %413
  %415 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %416 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %415, i64 1
  %417 = call i32 @zung2r_(i32* %23, i32* @zungqr_.ib, i32* @zungqr_.ib, %struct.TYPE_5__* %409, i32* %410, %struct.TYPE_5__* %414, %struct.TYPE_5__* %416, i32* @zungqr_.iinfo)
  %418 = load i32, i32* @zungqr_.i__, align 4
  %419 = load i32, i32* @zungqr_.ib, align 4
  %420 = add nsw i32 %418, %419
  %421 = sub nsw i32 %420, 1
  store i32 %421, i32* %23, align 4
  %422 = load i32, i32* @zungqr_.i__, align 4
  store i32 %422, i32* @zungqr_.j, align 4
  br label %423

423:                                              ; preds = %454, %396
  %424 = load i32, i32* @zungqr_.j, align 4
  %425 = load i32, i32* %23, align 4
  %426 = icmp sle i32 %424, %425
  br i1 %426, label %427, label %457

427:                                              ; preds = %423
  %428 = load i32, i32* @zungqr_.i__, align 4
  %429 = sub nsw i32 %428, 1
  store i32 %429, i32* %24, align 4
  store i32 1, i32* @zungqr_.l, align 4
  br label %430

430:                                              ; preds = %450, %427
  %431 = load i32, i32* @zungqr_.l, align 4
  %432 = load i32, i32* %24, align 4
  %433 = icmp sle i32 %431, %432
  br i1 %433, label %434, label %453

434:                                              ; preds = %430
  %435 = load i32, i32* @zungqr_.l, align 4
  %436 = load i32, i32* @zungqr_.j, align 4
  %437 = load i32, i32* %20, align 4
  %438 = mul nsw i32 %436, %437
  %439 = add nsw i32 %435, %438
  store i32 %439, i32* %25, align 4
  %440 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %441 = load i32, i32* %25, align 4
  %442 = sext i32 %441 to i64
  %443 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %440, i64 %442
  %444 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %443, i32 0, i32 0
  store i32 0, i32* %444, align 4
  %445 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %446 = load i32, i32* %25, align 4
  %447 = sext i32 %446 to i64
  %448 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %445, i64 %447
  %449 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %448, i32 0, i32 1
  store i32 0, i32* %449, align 4
  br label %450

450:                                              ; preds = %434
  %451 = load i32, i32* @zungqr_.l, align 4
  %452 = add nsw i32 %451, 1
  store i32 %452, i32* @zungqr_.l, align 4
  br label %430

453:                                              ; preds = %430
  br label %454

454:                                              ; preds = %453
  %455 = load i32, i32* @zungqr_.j, align 4
  %456 = add nsw i32 %455, 1
  store i32 %456, i32* @zungqr_.j, align 4
  br label %423

457:                                              ; preds = %423
  br label %458

458:                                              ; preds = %457
  %459 = load i32, i32* %22, align 4
  %460 = load i32, i32* @zungqr_.i__, align 4
  %461 = add nsw i32 %460, %459
  store i32 %461, i32* @zungqr_.i__, align 4
  br label %304

462:                                              ; preds = %315
  br label %463

463:                                              ; preds = %462, %296
  %464 = load i32, i32* @zungqr_.iws, align 4
  %465 = sext i32 %464 to i64
  %466 = inttoptr i64 %465 to i8*
  %467 = ptrtoint i8* %466 to i32
  %468 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %469 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %468, i64 1
  %470 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %469, i32 0, i32 0
  store i32 %467, i32* %470, align 4
  %471 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %472 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %471, i64 1
  %473 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %472, i32 0, i32 1
  store i32 0, i32* %473, align 4
  store i32 0, i32* %10, align 4
  br label %474

474:                                              ; preds = %463, %135, %129, %121
  %475 = load i32, i32* %10, align 4
  ret i32 %475
}

declare dso_local i32 @ilaenv_(i32*, i8*, i8*, i32*, i32*, i32*, i32*, i32, i32) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @xerbla_(i8*, i32*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @zung2r_(i32*, i32*, i32*, %struct.TYPE_5__*, i32*, %struct.TYPE_5__*, %struct.TYPE_5__*, i32*) #1

declare dso_local i32 @zlarft_(i8*, i8*, i32*, i32*, %struct.TYPE_5__*, i32*, %struct.TYPE_5__*, %struct.TYPE_5__*, i32*) #1

declare dso_local i32 @zlarfb_(i8*, i8*, i8*, i8*, i32*, i32*, i32*, %struct.TYPE_5__*, i32*, %struct.TYPE_5__*, i32*, %struct.TYPE_5__*, i32*, %struct.TYPE_5__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
