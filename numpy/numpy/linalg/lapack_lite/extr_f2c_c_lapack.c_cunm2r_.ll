; ModuleID = '/home/carl/AnghaBench/numpy/numpy/linalg/lapack_lite/extr_f2c_c_lapack.c_cunm2r_.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/linalg/lapack_lite/extr_f2c_c_lapack.c_cunm2r_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { float, float }

@cunm2r_.i__ = internal global i32 0, align 4
@cunm2r_.i1 = internal global i32 0, align 4
@cunm2r_.i2 = internal global i32 0, align 4
@cunm2r_.i3 = internal global i32 0, align 4
@cunm2r_.ic = internal global i32 0, align 4
@cunm2r_.jc = internal global i32 0, align 4
@cunm2r_.mi = internal global i32 0, align 4
@cunm2r_.ni = internal global i32 0, align 4
@cunm2r_.nq = internal global i32 0, align 4
@cunm2r_.aii = internal global %struct.TYPE_8__ zeroinitializer, align 4
@cunm2r_.left = internal global i8* null, align 8
@cunm2r_.taui = internal global %struct.TYPE_8__ zeroinitializer, align 4
@cunm2r_.notran = internal global i8* null, align 8
@.str = private unnamed_addr constant [2 x i8] c"L\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"N\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"R\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"CUNM2R\00", align 1
@c__1 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cunm2r_(i8* %0, i8* %1, i32* %2, i32* %3, i32* %4, %struct.TYPE_8__* %5, i32* %6, %struct.TYPE_8__* %7, %struct.TYPE_8__* %8, i32* %9, %struct.TYPE_8__* %10, i32* %11) #0 {
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
  store i8* %58, i8** @cunm2r_.left, align 8
  %59 = load i8*, i8** %15, align 8
  %60 = call i8* @lsame_(i8* %59, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i8* %60, i8** @cunm2r_.notran, align 8
  %61 = load i8*, i8** @cunm2r_.left, align 8
  %62 = icmp ne i8* %61, null
  br i1 %62, label %63, label %66

63:                                               ; preds = %12
  %64 = load i32*, i32** %16, align 8
  %65 = load i32, i32* %64, align 4
  store i32 %65, i32* @cunm2r_.nq, align 4
  br label %69

66:                                               ; preds = %12
  %67 = load i32*, i32** %17, align 8
  %68 = load i32, i32* %67, align 4
  store i32 %68, i32* @cunm2r_.nq, align 4
  br label %69

69:                                               ; preds = %66, %63
  %70 = load i8*, i8** @cunm2r_.left, align 8
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
  br label %133

78:                                               ; preds = %72, %69
  %79 = load i8*, i8** @cunm2r_.notran, align 8
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
  br label %132

87:                                               ; preds = %81, %78
  %88 = load i32*, i32** %16, align 8
  %89 = load i32, i32* %88, align 4
  %90 = icmp slt i32 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %87
  %92 = load i32*, i32** %25, align 8
  store i32 -3, i32* %92, align 4
  br label %131

93:                                               ; preds = %87
  %94 = load i32*, i32** %17, align 8
  %95 = load i32, i32* %94, align 4
  %96 = icmp slt i32 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %93
  %98 = load i32*, i32** %25, align 8
  store i32 -4, i32* %98, align 4
  br label %130

99:                                               ; preds = %93
  %100 = load i32*, i32** %18, align 8
  %101 = load i32, i32* %100, align 4
  %102 = icmp slt i32 %101, 0
  br i1 %102, label %108, label %103

103:                                              ; preds = %99
  %104 = load i32*, i32** %18, align 8
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* @cunm2r_.nq, align 4
  %107 = icmp sgt i32 %105, %106
  br i1 %107, label %108, label %110

108:                                              ; preds = %103, %99
  %109 = load i32*, i32** %25, align 8
  store i32 -5, i32* %109, align 4
  br label %129

110:                                              ; preds = %103
  %111 = load i32*, i32** %20, align 8
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* @cunm2r_.nq, align 4
  %114 = call i32 @max(i32 1, i32 %113)
  %115 = icmp slt i32 %112, %114
  br i1 %115, label %116, label %118

116:                                              ; preds = %110
  %117 = load i32*, i32** %25, align 8
  store i32 -7, i32* %117, align 4
  br label %128

118:                                              ; preds = %110
  %119 = load i32*, i32** %23, align 8
  %120 = load i32, i32* %119, align 4
  %121 = load i32*, i32** %16, align 8
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @max(i32 1, i32 %122)
  %124 = icmp slt i32 %120, %123
  br i1 %124, label %125, label %127

125:                                              ; preds = %118
  %126 = load i32*, i32** %25, align 8
  store i32 -10, i32* %126, align 4
  br label %127

127:                                              ; preds = %125, %118
  br label %128

128:                                              ; preds = %127, %116
  br label %129

129:                                              ; preds = %128, %108
  br label %130

130:                                              ; preds = %129, %97
  br label %131

131:                                              ; preds = %130, %91
  br label %132

132:                                              ; preds = %131, %85
  br label %133

133:                                              ; preds = %132, %76
  %134 = load i32*, i32** %25, align 8
  %135 = load i32, i32* %134, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %142

137:                                              ; preds = %133
  %138 = load i32*, i32** %25, align 8
  %139 = load i32, i32* %138, align 4
  %140 = sub nsw i32 0, %139
  store i32 %140, i32* %30, align 4
  %141 = call i32 @xerbla_(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32* %30)
  store i32 0, i32* %13, align 4
  br label %322

142:                                              ; preds = %133
  %143 = load i32*, i32** %16, align 8
  %144 = load i32, i32* %143, align 4
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %154, label %146

146:                                              ; preds = %142
  %147 = load i32*, i32** %17, align 8
  %148 = load i32, i32* %147, align 4
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %154, label %150

150:                                              ; preds = %146
  %151 = load i32*, i32** %18, align 8
  %152 = load i32, i32* %151, align 4
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %154, label %155

154:                                              ; preds = %150, %146, %142
  store i32 0, i32* %13, align 4
  br label %322

155:                                              ; preds = %150
  %156 = load i8*, i8** @cunm2r_.left, align 8
  %157 = icmp ne i8* %156, null
  br i1 %157, label %158, label %161

158:                                              ; preds = %155
  %159 = load i8*, i8** @cunm2r_.notran, align 8
  %160 = icmp ne i8* %159, null
  br i1 %160, label %161, label %167

161:                                              ; preds = %158, %155
  %162 = load i8*, i8** @cunm2r_.left, align 8
  %163 = icmp ne i8* %162, null
  br i1 %163, label %170, label %164

164:                                              ; preds = %161
  %165 = load i8*, i8** @cunm2r_.notran, align 8
  %166 = icmp ne i8* %165, null
  br i1 %166, label %167, label %170

167:                                              ; preds = %164, %158
  store i32 1, i32* @cunm2r_.i1, align 4
  %168 = load i32*, i32** %18, align 8
  %169 = load i32, i32* %168, align 4
  store i32 %169, i32* @cunm2r_.i2, align 4
  store i32 1, i32* @cunm2r_.i3, align 4
  br label %173

170:                                              ; preds = %164, %161
  %171 = load i32*, i32** %18, align 8
  %172 = load i32, i32* %171, align 4
  store i32 %172, i32* @cunm2r_.i1, align 4
  store i32 1, i32* @cunm2r_.i2, align 4
  store i32 -1, i32* @cunm2r_.i3, align 4
  br label %173

173:                                              ; preds = %170, %167
  %174 = load i8*, i8** @cunm2r_.left, align 8
  %175 = icmp ne i8* %174, null
  br i1 %175, label %176, label %179

176:                                              ; preds = %173
  %177 = load i32*, i32** %17, align 8
  %178 = load i32, i32* %177, align 4
  store i32 %178, i32* @cunm2r_.ni, align 4
  store i32 1, i32* @cunm2r_.jc, align 4
  br label %182

179:                                              ; preds = %173
  %180 = load i32*, i32** %16, align 8
  %181 = load i32, i32* %180, align 4
  store i32 %181, i32* @cunm2r_.mi, align 4
  store i32 1, i32* @cunm2r_.ic, align 4
  br label %182

182:                                              ; preds = %179, %176
  %183 = load i32, i32* @cunm2r_.i2, align 4
  store i32 %183, i32* %30, align 4
  %184 = load i32, i32* @cunm2r_.i3, align 4
  store i32 %184, i32* %31, align 4
  %185 = load i32, i32* @cunm2r_.i1, align 4
  store i32 %185, i32* @cunm2r_.i__, align 4
  br label %186

186:                                              ; preds = %317, %182
  %187 = load i32, i32* %31, align 4
  %188 = icmp slt i32 %187, 0
  br i1 %188, label %189, label %194

189:                                              ; preds = %186
  %190 = load i32, i32* @cunm2r_.i__, align 4
  %191 = load i32, i32* %30, align 4
  %192 = icmp sge i32 %190, %191
  %193 = zext i1 %192 to i32
  br label %199

194:                                              ; preds = %186
  %195 = load i32, i32* @cunm2r_.i__, align 4
  %196 = load i32, i32* %30, align 4
  %197 = icmp sle i32 %195, %196
  %198 = zext i1 %197 to i32
  br label %199

199:                                              ; preds = %194, %189
  %200 = phi i32 [ %193, %189 ], [ %198, %194 ]
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %321

202:                                              ; preds = %199
  %203 = load i8*, i8** @cunm2r_.left, align 8
  %204 = icmp ne i8* %203, null
  br i1 %204, label %205, label %212

205:                                              ; preds = %202
  %206 = load i32*, i32** %16, align 8
  %207 = load i32, i32* %206, align 4
  %208 = load i32, i32* @cunm2r_.i__, align 4
  %209 = sub nsw i32 %207, %208
  %210 = add nsw i32 %209, 1
  store i32 %210, i32* @cunm2r_.mi, align 4
  %211 = load i32, i32* @cunm2r_.i__, align 4
  store i32 %211, i32* @cunm2r_.ic, align 4
  br label %219

212:                                              ; preds = %202
  %213 = load i32*, i32** %17, align 8
  %214 = load i32, i32* %213, align 4
  %215 = load i32, i32* @cunm2r_.i__, align 4
  %216 = sub nsw i32 %214, %215
  %217 = add nsw i32 %216, 1
  store i32 %217, i32* @cunm2r_.ni, align 4
  %218 = load i32, i32* @cunm2r_.i__, align 4
  store i32 %218, i32* @cunm2r_.jc, align 4
  br label %219

219:                                              ; preds = %212, %205
  %220 = load i8*, i8** @cunm2r_.notran, align 8
  %221 = icmp ne i8* %220, null
  br i1 %221, label %222, label %236

222:                                              ; preds = %219
  %223 = load i32, i32* @cunm2r_.i__, align 4
  store i32 %223, i32* %32, align 4
  %224 = load %struct.TYPE_8__*, %struct.TYPE_8__** %21, align 8
  %225 = load i32, i32* %32, align 4
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %224, i64 %226
  %228 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %227, i32 0, i32 0
  %229 = load float, float* %228, align 4
  store float %229, float* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @cunm2r_.taui, i32 0, i32 0), align 4
  %230 = load %struct.TYPE_8__*, %struct.TYPE_8__** %21, align 8
  %231 = load i32, i32* %32, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %230, i64 %232
  %234 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %233, i32 0, i32 1
  %235 = load float, float* %234, align 4
  store float %235, float* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @cunm2r_.taui, i32 0, i32 1), align 4
  br label %246

236:                                              ; preds = %219
  %237 = load %struct.TYPE_8__*, %struct.TYPE_8__** %21, align 8
  %238 = load i32, i32* @cunm2r_.i__, align 4
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %237, i64 %239
  %241 = call i32 @r_cnjg(%struct.TYPE_8__* %33, %struct.TYPE_8__* %240)
  %242 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  %243 = load float, float* %242, align 4
  store float %243, float* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @cunm2r_.taui, i32 0, i32 0), align 4
  %244 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 1
  %245 = load float, float* %244, align 4
  store float %245, float* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @cunm2r_.taui, i32 0, i32 1), align 4
  br label %246

246:                                              ; preds = %236, %222
  %247 = load i32, i32* @cunm2r_.i__, align 4
  %248 = load i32, i32* @cunm2r_.i__, align 4
  %249 = load i32, i32* %26, align 4
  %250 = mul nsw i32 %248, %249
  %251 = add nsw i32 %247, %250
  store i32 %251, i32* %32, align 4
  %252 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %253 = load i32, i32* %32, align 4
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %252, i64 %254
  %256 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %255, i32 0, i32 0
  %257 = load float, float* %256, align 4
  store float %257, float* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @cunm2r_.aii, i32 0, i32 0), align 4
  %258 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %259 = load i32, i32* %32, align 4
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %258, i64 %260
  %262 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %261, i32 0, i32 1
  %263 = load float, float* %262, align 4
  store float %263, float* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @cunm2r_.aii, i32 0, i32 1), align 4
  %264 = load i32, i32* @cunm2r_.i__, align 4
  %265 = load i32, i32* @cunm2r_.i__, align 4
  %266 = load i32, i32* %26, align 4
  %267 = mul nsw i32 %265, %266
  %268 = add nsw i32 %264, %267
  store i32 %268, i32* %32, align 4
  %269 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %270 = load i32, i32* %32, align 4
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %269, i64 %271
  %273 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %272, i32 0, i32 0
  store float 1.000000e+00, float* %273, align 4
  %274 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %275 = load i32, i32* %32, align 4
  %276 = sext i32 %275 to i64
  %277 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %274, i64 %276
  %278 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %277, i32 0, i32 1
  store float 0.000000e+00, float* %278, align 4
  %279 = load i8*, i8** %14, align 8
  %280 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %281 = load i32, i32* @cunm2r_.i__, align 4
  %282 = load i32, i32* @cunm2r_.i__, align 4
  %283 = load i32, i32* %26, align 4
  %284 = mul nsw i32 %282, %283
  %285 = add nsw i32 %281, %284
  %286 = sext i32 %285 to i64
  %287 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %280, i64 %286
  %288 = load %struct.TYPE_8__*, %struct.TYPE_8__** %22, align 8
  %289 = load i32, i32* @cunm2r_.ic, align 4
  %290 = load i32, i32* @cunm2r_.jc, align 4
  %291 = load i32, i32* %28, align 4
  %292 = mul nsw i32 %290, %291
  %293 = add nsw i32 %289, %292
  %294 = sext i32 %293 to i64
  %295 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %288, i64 %294
  %296 = load i32*, i32** %23, align 8
  %297 = load %struct.TYPE_8__*, %struct.TYPE_8__** %24, align 8
  %298 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %297, i64 1
  %299 = call i32 @clarf_(i8* %279, i32* @cunm2r_.mi, i32* @cunm2r_.ni, %struct.TYPE_8__* %287, i32* @c__1, %struct.TYPE_8__* @cunm2r_.taui, %struct.TYPE_8__* %295, i32* %296, %struct.TYPE_8__* %298)
  %300 = load i32, i32* @cunm2r_.i__, align 4
  %301 = load i32, i32* @cunm2r_.i__, align 4
  %302 = load i32, i32* %26, align 4
  %303 = mul nsw i32 %301, %302
  %304 = add nsw i32 %300, %303
  store i32 %304, i32* %32, align 4
  %305 = load float, float* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @cunm2r_.aii, i32 0, i32 0), align 4
  %306 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %307 = load i32, i32* %32, align 4
  %308 = sext i32 %307 to i64
  %309 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %306, i64 %308
  %310 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %309, i32 0, i32 0
  store float %305, float* %310, align 4
  %311 = load float, float* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @cunm2r_.aii, i32 0, i32 1), align 4
  %312 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %313 = load i32, i32* %32, align 4
  %314 = sext i32 %313 to i64
  %315 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %312, i64 %314
  %316 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %315, i32 0, i32 1
  store float %311, float* %316, align 4
  br label %317

317:                                              ; preds = %246
  %318 = load i32, i32* %31, align 4
  %319 = load i32, i32* @cunm2r_.i__, align 4
  %320 = add nsw i32 %319, %318
  store i32 %320, i32* @cunm2r_.i__, align 4
  br label %186

321:                                              ; preds = %199
  store i32 0, i32* %13, align 4
  br label %322

322:                                              ; preds = %321, %154, %137
  %323 = load i32, i32* %13, align 4
  ret i32 %323
}

declare dso_local i8* @lsame_(i8*, i8*) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @xerbla_(i8*, i32*) #1

declare dso_local i32 @r_cnjg(%struct.TYPE_8__*, %struct.TYPE_8__*) #1

declare dso_local i32 @clarf_(i8*, i32*, i32*, %struct.TYPE_8__*, i32*, %struct.TYPE_8__*, %struct.TYPE_8__*, i32*, %struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
