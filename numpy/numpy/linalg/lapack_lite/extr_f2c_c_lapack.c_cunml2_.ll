; ModuleID = '/home/carl/AnghaBench/numpy/numpy/linalg/lapack_lite/extr_f2c_c_lapack.c_cunml2_.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/linalg/lapack_lite/extr_f2c_c_lapack.c_cunml2_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { float, float }

@cunml2_.i__ = internal global i32 0, align 4
@cunml2_.i1 = internal global i32 0, align 4
@cunml2_.i2 = internal global i32 0, align 4
@cunml2_.i3 = internal global i32 0, align 4
@cunml2_.ic = internal global i32 0, align 4
@cunml2_.jc = internal global i32 0, align 4
@cunml2_.mi = internal global i32 0, align 4
@cunml2_.ni = internal global i32 0, align 4
@cunml2_.nq = internal global i32 0, align 4
@cunml2_.aii = internal global %struct.TYPE_8__ zeroinitializer, align 4
@cunml2_.left = internal global i8* null, align 8
@cunml2_.taui = internal global %struct.TYPE_8__ zeroinitializer, align 4
@cunml2_.notran = internal global i8* null, align 8
@.str = private unnamed_addr constant [2 x i8] c"L\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"N\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"R\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"CUNML2\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cunml2_(i8* %0, i8* %1, i32* %2, i32* %3, i32* %4, %struct.TYPE_8__* %5, i32* %6, %struct.TYPE_8__* %7, %struct.TYPE_8__* %8, i32* %9, %struct.TYPE_8__* %10, i32* %11) #0 {
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca %struct.TYPE_8__*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca %struct.TYPE_8__*, align 8
  %22 = alloca %struct.TYPE_8__*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca %struct.TYPE_8__*, align 8
  %25 = alloca i32*, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca %struct.TYPE_8__, align 4
  store i8* %0, i8** %14, align 8
  store i8* %1, i8** %15, align 8
  store i32* %2, i32** %16, align 8
  store i32* %3, i32** %17, align 8
  store i32* %4, i32** %18, align 8
  store %struct.TYPE_8__* %5, %struct.TYPE_8__** %19, align 8
  store i32* %6, i32** %20, align 8
  store %struct.TYPE_8__* %7, %struct.TYPE_8__** %21, align 8
  store %struct.TYPE_8__* %8, %struct.TYPE_8__** %22, align 8
  store i32* %9, i32** %23, align 8
  store %struct.TYPE_8__* %10, %struct.TYPE_8__** %24, align 8
  store i32* %11, i32** %25, align 8
  %34 = load i32*, i32** %20, align 8
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %26, align 4
  %36 = load i32, i32* %26, align 4
  %37 = add nsw i32 1, %36
  store i32 %37, i32* %27, align 4
  %38 = load i32, i32* %27, align 4
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %40 = sext i32 %38 to i64
  %41 = sub i64 0, %40
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i64 %41
  store %struct.TYPE_8__* %42, %struct.TYPE_8__** %19, align 8
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %21, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 -1
  store %struct.TYPE_8__* %44, %struct.TYPE_8__** %21, align 8
  %45 = load i32*, i32** %23, align 8
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %28, align 4
  %47 = load i32, i32* %28, align 4
  %48 = add nsw i32 1, %47
  store i32 %48, i32* %29, align 4
  %49 = load i32, i32* %29, align 4
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %22, align 8
  %51 = sext i32 %49 to i64
  %52 = sub i64 0, %51
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i64 %52
  store %struct.TYPE_8__* %53, %struct.TYPE_8__** %22, align 8
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %24, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 -1
  store %struct.TYPE_8__* %55, %struct.TYPE_8__** %24, align 8
  %56 = load i32*, i32** %25, align 8
  store i32 0, i32* %56, align 4
  %57 = load i8*, i8** %14, align 8
  %58 = call i8* @lsame_(i8* %57, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %58, i8** @cunml2_.left, align 8
  %59 = load i8*, i8** %15, align 8
  %60 = call i8* @lsame_(i8* %59, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i8* %60, i8** @cunml2_.notran, align 8
  %61 = load i8*, i8** @cunml2_.left, align 8
  %62 = icmp ne i8* %61, null
  br i1 %62, label %63, label %66

63:                                               ; preds = %12
  %64 = load i32*, i32** %16, align 8
  %65 = load i32, i32* %64, align 4
  store i32 %65, i32* @cunml2_.nq, align 4
  br label %69

66:                                               ; preds = %12
  %67 = load i32*, i32** %17, align 8
  %68 = load i32, i32* %67, align 4
  store i32 %68, i32* @cunml2_.nq, align 4
  br label %69

69:                                               ; preds = %66, %63
  %70 = load i8*, i8** @cunml2_.left, align 8
  %71 = icmp ne i8* %70, null
  br i1 %71, label %78, label %72

72:                                               ; preds = %69
  %73 = load i8*, i8** %14, align 8
  %74 = call i8* @lsame_(i8* %73, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %75 = icmp ne i8* %74, null
  br i1 %75, label %78, label %76

76:                                               ; preds = %72
  %77 = load i32*, i32** %25, align 8
  store i32 -1, i32* %77, align 4
  br label %134

78:                                               ; preds = %72, %69
  %79 = load i8*, i8** @cunml2_.notran, align 8
  %80 = icmp ne i8* %79, null
  br i1 %80, label %87, label %81

81:                                               ; preds = %78
  %82 = load i8*, i8** %15, align 8
  %83 = call i8* @lsame_(i8* %82, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %84 = icmp ne i8* %83, null
  br i1 %84, label %87, label %85

85:                                               ; preds = %81
  %86 = load i32*, i32** %25, align 8
  store i32 -2, i32* %86, align 4
  br label %133

87:                                               ; preds = %81, %78
  %88 = load i32*, i32** %16, align 8
  %89 = load i32, i32* %88, align 4
  %90 = icmp slt i32 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %87
  %92 = load i32*, i32** %25, align 8
  store i32 -3, i32* %92, align 4
  br label %132

93:                                               ; preds = %87
  %94 = load i32*, i32** %17, align 8
  %95 = load i32, i32* %94, align 4
  %96 = icmp slt i32 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %93
  %98 = load i32*, i32** %25, align 8
  store i32 -4, i32* %98, align 4
  br label %131

99:                                               ; preds = %93
  %100 = load i32*, i32** %18, align 8
  %101 = load i32, i32* %100, align 4
  %102 = icmp slt i32 %101, 0
  br i1 %102, label %108, label %103

103:                                              ; preds = %99
  %104 = load i32*, i32** %18, align 8
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* @cunml2_.nq, align 4
  %107 = icmp sgt i32 %105, %106
  br i1 %107, label %108, label %110

108:                                              ; preds = %103, %99
  %109 = load i32*, i32** %25, align 8
  store i32 -5, i32* %109, align 4
  br label %130

110:                                              ; preds = %103
  %111 = load i32*, i32** %20, align 8
  %112 = load i32, i32* %111, align 4
  %113 = load i32*, i32** %18, align 8
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @max(i32 1, i32 %114)
  %116 = icmp slt i32 %112, %115
  br i1 %116, label %117, label %119

117:                                              ; preds = %110
  %118 = load i32*, i32** %25, align 8
  store i32 -7, i32* %118, align 4
  br label %129

119:                                              ; preds = %110
  %120 = load i32*, i32** %23, align 8
  %121 = load i32, i32* %120, align 4
  %122 = load i32*, i32** %16, align 8
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @max(i32 1, i32 %123)
  %125 = icmp slt i32 %121, %124
  br i1 %125, label %126, label %128

126:                                              ; preds = %119
  %127 = load i32*, i32** %25, align 8
  store i32 -10, i32* %127, align 4
  br label %128

128:                                              ; preds = %126, %119
  br label %129

129:                                              ; preds = %128, %117
  br label %130

130:                                              ; preds = %129, %108
  br label %131

131:                                              ; preds = %130, %97
  br label %132

132:                                              ; preds = %131, %91
  br label %133

133:                                              ; preds = %132, %85
  br label %134

134:                                              ; preds = %133, %76
  %135 = load i32*, i32** %25, align 8
  %136 = load i32, i32* %135, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %143

138:                                              ; preds = %134
  %139 = load i32*, i32** %25, align 8
  %140 = load i32, i32* %139, align 4
  %141 = sub nsw i32 0, %140
  store i32 %141, i32* %30, align 4
  %142 = call i32 @xerbla_(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32* %30)
  store i32 0, i32* %13, align 4
  br label %362

143:                                              ; preds = %134
  %144 = load i32*, i32** %16, align 8
  %145 = load i32, i32* %144, align 4
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %155, label %147

147:                                              ; preds = %143
  %148 = load i32*, i32** %17, align 8
  %149 = load i32, i32* %148, align 4
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %155, label %151

151:                                              ; preds = %147
  %152 = load i32*, i32** %18, align 8
  %153 = load i32, i32* %152, align 4
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %155, label %156

155:                                              ; preds = %151, %147, %143
  store i32 0, i32* %13, align 4
  br label %362

156:                                              ; preds = %151
  %157 = load i8*, i8** @cunml2_.left, align 8
  %158 = icmp ne i8* %157, null
  br i1 %158, label %159, label %162

159:                                              ; preds = %156
  %160 = load i8*, i8** @cunml2_.notran, align 8
  %161 = icmp ne i8* %160, null
  br i1 %161, label %168, label %162

162:                                              ; preds = %159, %156
  %163 = load i8*, i8** @cunml2_.left, align 8
  %164 = icmp ne i8* %163, null
  br i1 %164, label %171, label %165

165:                                              ; preds = %162
  %166 = load i8*, i8** @cunml2_.notran, align 8
  %167 = icmp ne i8* %166, null
  br i1 %167, label %171, label %168

168:                                              ; preds = %165, %159
  store i32 1, i32* @cunml2_.i1, align 4
  %169 = load i32*, i32** %18, align 8
  %170 = load i32, i32* %169, align 4
  store i32 %170, i32* @cunml2_.i2, align 4
  store i32 1, i32* @cunml2_.i3, align 4
  br label %174

171:                                              ; preds = %165, %162
  %172 = load i32*, i32** %18, align 8
  %173 = load i32, i32* %172, align 4
  store i32 %173, i32* @cunml2_.i1, align 4
  store i32 1, i32* @cunml2_.i2, align 4
  store i32 -1, i32* @cunml2_.i3, align 4
  br label %174

174:                                              ; preds = %171, %168
  %175 = load i8*, i8** @cunml2_.left, align 8
  %176 = icmp ne i8* %175, null
  br i1 %176, label %177, label %180

177:                                              ; preds = %174
  %178 = load i32*, i32** %17, align 8
  %179 = load i32, i32* %178, align 4
  store i32 %179, i32* @cunml2_.ni, align 4
  store i32 1, i32* @cunml2_.jc, align 4
  br label %183

180:                                              ; preds = %174
  %181 = load i32*, i32** %16, align 8
  %182 = load i32, i32* %181, align 4
  store i32 %182, i32* @cunml2_.mi, align 4
  store i32 1, i32* @cunml2_.ic, align 4
  br label %183

183:                                              ; preds = %180, %177
  %184 = load i32, i32* @cunml2_.i2, align 4
  store i32 %184, i32* %30, align 4
  %185 = load i32, i32* @cunml2_.i3, align 4
  store i32 %185, i32* %31, align 4
  %186 = load i32, i32* @cunml2_.i1, align 4
  store i32 %186, i32* @cunml2_.i__, align 4
  br label %187

187:                                              ; preds = %357, %183
  %188 = load i32, i32* %31, align 4
  %189 = icmp slt i32 %188, 0
  br i1 %189, label %190, label %195

190:                                              ; preds = %187
  %191 = load i32, i32* @cunml2_.i__, align 4
  %192 = load i32, i32* %30, align 4
  %193 = icmp sge i32 %191, %192
  %194 = zext i1 %193 to i32
  br label %200

195:                                              ; preds = %187
  %196 = load i32, i32* @cunml2_.i__, align 4
  %197 = load i32, i32* %30, align 4
  %198 = icmp sle i32 %196, %197
  %199 = zext i1 %198 to i32
  br label %200

200:                                              ; preds = %195, %190
  %201 = phi i32 [ %194, %190 ], [ %199, %195 ]
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %361

203:                                              ; preds = %200
  %204 = load i8*, i8** @cunml2_.left, align 8
  %205 = icmp ne i8* %204, null
  br i1 %205, label %206, label %213

206:                                              ; preds = %203
  %207 = load i32*, i32** %16, align 8
  %208 = load i32, i32* %207, align 4
  %209 = load i32, i32* @cunml2_.i__, align 4
  %210 = sub nsw i32 %208, %209
  %211 = add nsw i32 %210, 1
  store i32 %211, i32* @cunml2_.mi, align 4
  %212 = load i32, i32* @cunml2_.i__, align 4
  store i32 %212, i32* @cunml2_.ic, align 4
  br label %220

213:                                              ; preds = %203
  %214 = load i32*, i32** %17, align 8
  %215 = load i32, i32* %214, align 4
  %216 = load i32, i32* @cunml2_.i__, align 4
  %217 = sub nsw i32 %215, %216
  %218 = add nsw i32 %217, 1
  store i32 %218, i32* @cunml2_.ni, align 4
  %219 = load i32, i32* @cunml2_.i__, align 4
  store i32 %219, i32* @cunml2_.jc, align 4
  br label %220

220:                                              ; preds = %213, %206
  %221 = load i8*, i8** @cunml2_.notran, align 8
  %222 = icmp ne i8* %221, null
  br i1 %222, label %223, label %233

223:                                              ; preds = %220
  %224 = load %struct.TYPE_8__*, %struct.TYPE_8__** %21, align 8
  %225 = load i32, i32* @cunml2_.i__, align 4
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %224, i64 %226
  %228 = call i32 @r_cnjg(%struct.TYPE_8__* %33, %struct.TYPE_8__* %227)
  %229 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  %230 = load float, float* %229, align 4
  store float %230, float* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @cunml2_.taui, i32 0, i32 0), align 4
  %231 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 1
  %232 = load float, float* %231, align 4
  store float %232, float* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @cunml2_.taui, i32 0, i32 1), align 4
  br label %247

233:                                              ; preds = %220
  %234 = load i32, i32* @cunml2_.i__, align 4
  store i32 %234, i32* %32, align 4
  %235 = load %struct.TYPE_8__*, %struct.TYPE_8__** %21, align 8
  %236 = load i32, i32* %32, align 4
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %235, i64 %237
  %239 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %238, i32 0, i32 0
  %240 = load float, float* %239, align 4
  store float %240, float* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @cunml2_.taui, i32 0, i32 0), align 4
  %241 = load %struct.TYPE_8__*, %struct.TYPE_8__** %21, align 8
  %242 = load i32, i32* %32, align 4
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %241, i64 %243
  %245 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %244, i32 0, i32 1
  %246 = load float, float* %245, align 4
  store float %246, float* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @cunml2_.taui, i32 0, i32 1), align 4
  br label %247

247:                                              ; preds = %233, %223
  %248 = load i32, i32* @cunml2_.i__, align 4
  %249 = load i32, i32* @cunml2_.nq, align 4
  %250 = icmp slt i32 %248, %249
  br i1 %250, label %251, label %266

251:                                              ; preds = %247
  %252 = load i32, i32* @cunml2_.nq, align 4
  %253 = load i32, i32* @cunml2_.i__, align 4
  %254 = sub nsw i32 %252, %253
  store i32 %254, i32* %32, align 4
  %255 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %256 = load i32, i32* @cunml2_.i__, align 4
  %257 = load i32, i32* @cunml2_.i__, align 4
  %258 = add nsw i32 %257, 1
  %259 = load i32, i32* %26, align 4
  %260 = mul nsw i32 %258, %259
  %261 = add nsw i32 %256, %260
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %255, i64 %262
  %264 = load i32*, i32** %20, align 8
  %265 = call i32 @clacgv_(i32* %32, %struct.TYPE_8__* %263, i32* %264)
  br label %266

266:                                              ; preds = %251, %247
  %267 = load i32, i32* @cunml2_.i__, align 4
  %268 = load i32, i32* @cunml2_.i__, align 4
  %269 = load i32, i32* %26, align 4
  %270 = mul nsw i32 %268, %269
  %271 = add nsw i32 %267, %270
  store i32 %271, i32* %32, align 4
  %272 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %273 = load i32, i32* %32, align 4
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %272, i64 %274
  %276 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %275, i32 0, i32 0
  %277 = load float, float* %276, align 4
  store float %277, float* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @cunml2_.aii, i32 0, i32 0), align 4
  %278 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %279 = load i32, i32* %32, align 4
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %278, i64 %280
  %282 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %281, i32 0, i32 1
  %283 = load float, float* %282, align 4
  store float %283, float* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @cunml2_.aii, i32 0, i32 1), align 4
  %284 = load i32, i32* @cunml2_.i__, align 4
  %285 = load i32, i32* @cunml2_.i__, align 4
  %286 = load i32, i32* %26, align 4
  %287 = mul nsw i32 %285, %286
  %288 = add nsw i32 %284, %287
  store i32 %288, i32* %32, align 4
  %289 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %290 = load i32, i32* %32, align 4
  %291 = sext i32 %290 to i64
  %292 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %289, i64 %291
  %293 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %292, i32 0, i32 0
  store float 1.000000e+00, float* %293, align 4
  %294 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %295 = load i32, i32* %32, align 4
  %296 = sext i32 %295 to i64
  %297 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %294, i64 %296
  %298 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %297, i32 0, i32 1
  store float 0.000000e+00, float* %298, align 4
  %299 = load i8*, i8** %14, align 8
  %300 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %301 = load i32, i32* @cunml2_.i__, align 4
  %302 = load i32, i32* @cunml2_.i__, align 4
  %303 = load i32, i32* %26, align 4
  %304 = mul nsw i32 %302, %303
  %305 = add nsw i32 %301, %304
  %306 = sext i32 %305 to i64
  %307 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %300, i64 %306
  %308 = load i32*, i32** %20, align 8
  %309 = load %struct.TYPE_8__*, %struct.TYPE_8__** %22, align 8
  %310 = load i32, i32* @cunml2_.ic, align 4
  %311 = load i32, i32* @cunml2_.jc, align 4
  %312 = load i32, i32* %28, align 4
  %313 = mul nsw i32 %311, %312
  %314 = add nsw i32 %310, %313
  %315 = sext i32 %314 to i64
  %316 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %309, i64 %315
  %317 = load i32*, i32** %23, align 8
  %318 = load %struct.TYPE_8__*, %struct.TYPE_8__** %24, align 8
  %319 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %318, i64 1
  %320 = call i32 @clarf_(i8* %299, i32* @cunml2_.mi, i32* @cunml2_.ni, %struct.TYPE_8__* %307, i32* %308, %struct.TYPE_8__* @cunml2_.taui, %struct.TYPE_8__* %316, i32* %317, %struct.TYPE_8__* %319)
  %321 = load i32, i32* @cunml2_.i__, align 4
  %322 = load i32, i32* @cunml2_.i__, align 4
  %323 = load i32, i32* %26, align 4
  %324 = mul nsw i32 %322, %323
  %325 = add nsw i32 %321, %324
  store i32 %325, i32* %32, align 4
  %326 = load float, float* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @cunml2_.aii, i32 0, i32 0), align 4
  %327 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %328 = load i32, i32* %32, align 4
  %329 = sext i32 %328 to i64
  %330 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %327, i64 %329
  %331 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %330, i32 0, i32 0
  store float %326, float* %331, align 4
  %332 = load float, float* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @cunml2_.aii, i32 0, i32 1), align 4
  %333 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %334 = load i32, i32* %32, align 4
  %335 = sext i32 %334 to i64
  %336 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %333, i64 %335
  %337 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %336, i32 0, i32 1
  store float %332, float* %337, align 4
  %338 = load i32, i32* @cunml2_.i__, align 4
  %339 = load i32, i32* @cunml2_.nq, align 4
  %340 = icmp slt i32 %338, %339
  br i1 %340, label %341, label %356

341:                                              ; preds = %266
  %342 = load i32, i32* @cunml2_.nq, align 4
  %343 = load i32, i32* @cunml2_.i__, align 4
  %344 = sub nsw i32 %342, %343
  store i32 %344, i32* %32, align 4
  %345 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %346 = load i32, i32* @cunml2_.i__, align 4
  %347 = load i32, i32* @cunml2_.i__, align 4
  %348 = add nsw i32 %347, 1
  %349 = load i32, i32* %26, align 4
  %350 = mul nsw i32 %348, %349
  %351 = add nsw i32 %346, %350
  %352 = sext i32 %351 to i64
  %353 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %345, i64 %352
  %354 = load i32*, i32** %20, align 8
  %355 = call i32 @clacgv_(i32* %32, %struct.TYPE_8__* %353, i32* %354)
  br label %356

356:                                              ; preds = %341, %266
  br label %357

357:                                              ; preds = %356
  %358 = load i32, i32* %31, align 4
  %359 = load i32, i32* @cunml2_.i__, align 4
  %360 = add nsw i32 %359, %358
  store i32 %360, i32* @cunml2_.i__, align 4
  br label %187

361:                                              ; preds = %200
  store i32 0, i32* %13, align 4
  br label %362

362:                                              ; preds = %361, %155, %138
  %363 = load i32, i32* %13, align 4
  ret i32 %363
}

declare dso_local i8* @lsame_(i8*, i8*) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @xerbla_(i8*, i32*) #1

declare dso_local i32 @r_cnjg(%struct.TYPE_8__*, %struct.TYPE_8__*) #1

declare dso_local i32 @clacgv_(i32*, %struct.TYPE_8__*, i32*) #1

declare dso_local i32 @clarf_(i8*, i32*, i32*, %struct.TYPE_8__*, i32*, %struct.TYPE_8__*, %struct.TYPE_8__*, i32*, %struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
