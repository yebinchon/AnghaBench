; ModuleID = '/home/carl/AnghaBench/numpy/numpy/linalg/lapack_lite/extr_f2c_c_lapack.c_ctrexc_.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/linalg/lapack_lite/extr_f2c_c_lapack.c_ctrexc_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i64 }

@ctrexc_.k = internal global i32 0, align 4
@ctrexc_.m1 = internal global i32 0, align 4
@ctrexc_.m2 = internal global i32 0, align 4
@ctrexc_.m3 = internal global i32 0, align 4
@ctrexc_.cs = internal global i32 0, align 4
@ctrexc_.t11 = internal global %struct.TYPE_6__ zeroinitializer, align 8
@ctrexc_.t22 = internal global %struct.TYPE_6__ zeroinitializer, align 8
@ctrexc_.sn = internal global %struct.TYPE_6__ zeroinitializer, align 8
@ctrexc_.temp = internal global %struct.TYPE_6__ zeroinitializer, align 8
@ctrexc_.wantq = internal global i64 0, align 8
@.str = private unnamed_addr constant [2 x i8] c"V\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"N\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"CTREXC\00", align 1
@c__1 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ctrexc_(i8* %0, i32* %1, %struct.TYPE_6__* %2, i32* %3, %struct.TYPE_6__* %4, i32* %5, i32* %6, i32* %7, i32* %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_6__*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.TYPE_6__*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca %struct.TYPE_6__, align 8
  store i8* %0, i8** %11, align 8
  store i32* %1, i32** %12, align 8
  store %struct.TYPE_6__* %2, %struct.TYPE_6__** %13, align 8
  store i32* %3, i32** %14, align 8
  store %struct.TYPE_6__* %4, %struct.TYPE_6__** %15, align 8
  store i32* %5, i32** %16, align 8
  store i32* %6, i32** %17, align 8
  store i32* %7, i32** %18, align 8
  store i32* %8, i32** %19, align 8
  %28 = load i32*, i32** %14, align 8
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %22, align 4
  %30 = load i32, i32* %22, align 4
  %31 = add nsw i32 1, %30
  store i32 %31, i32* %23, align 4
  %32 = load i32, i32* %23, align 4
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %34 = sext i32 %32 to i64
  %35 = sub i64 0, %34
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i64 %35
  store %struct.TYPE_6__* %36, %struct.TYPE_6__** %13, align 8
  %37 = load i32*, i32** %16, align 8
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %20, align 4
  %39 = load i32, i32* %20, align 4
  %40 = add nsw i32 1, %39
  store i32 %40, i32* %21, align 4
  %41 = load i32, i32* %21, align 4
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %43 = sext i32 %41 to i64
  %44 = sub i64 0, %43
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i64 %44
  store %struct.TYPE_6__* %45, %struct.TYPE_6__** %15, align 8
  %46 = load i32*, i32** %19, align 8
  store i32 0, i32* %46, align 4
  %47 = load i8*, i8** %11, align 8
  %48 = call i64 @lsame_(i8* %47, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i64 %48, i64* @ctrexc_.wantq, align 8
  %49 = load i8*, i8** %11, align 8
  %50 = call i64 @lsame_(i8* %49, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %57, label %52

52:                                               ; preds = %9
  %53 = load i64, i64* @ctrexc_.wantq, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %57, label %55

55:                                               ; preds = %52
  %56 = load i32*, i32** %19, align 8
  store i32 -1, i32* %56, align 4
  br label %117

57:                                               ; preds = %52, %9
  %58 = load i32*, i32** %12, align 8
  %59 = load i32, i32* %58, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %57
  %62 = load i32*, i32** %19, align 8
  store i32 -2, i32* %62, align 4
  br label %116

63:                                               ; preds = %57
  %64 = load i32*, i32** %14, align 8
  %65 = load i32, i32* %64, align 4
  %66 = load i32*, i32** %12, align 8
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @max(i32 1, i32 %67)
  %69 = icmp slt i32 %65, %68
  br i1 %69, label %70, label %72

70:                                               ; preds = %63
  %71 = load i32*, i32** %19, align 8
  store i32 -4, i32* %71, align 4
  br label %115

72:                                               ; preds = %63
  %73 = load i32*, i32** %16, align 8
  %74 = load i32, i32* %73, align 4
  %75 = icmp slt i32 %74, 1
  br i1 %75, label %86, label %76

76:                                               ; preds = %72
  %77 = load i64, i64* @ctrexc_.wantq, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %88

79:                                               ; preds = %76
  %80 = load i32*, i32** %16, align 8
  %81 = load i32, i32* %80, align 4
  %82 = load i32*, i32** %12, align 8
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @max(i32 1, i32 %83)
  %85 = icmp slt i32 %81, %84
  br i1 %85, label %86, label %88

86:                                               ; preds = %79, %72
  %87 = load i32*, i32** %19, align 8
  store i32 -6, i32* %87, align 4
  br label %114

88:                                               ; preds = %79, %76
  %89 = load i32*, i32** %17, align 8
  %90 = load i32, i32* %89, align 4
  %91 = icmp slt i32 %90, 1
  br i1 %91, label %98, label %92

92:                                               ; preds = %88
  %93 = load i32*, i32** %17, align 8
  %94 = load i32, i32* %93, align 4
  %95 = load i32*, i32** %12, align 8
  %96 = load i32, i32* %95, align 4
  %97 = icmp sgt i32 %94, %96
  br i1 %97, label %98, label %100

98:                                               ; preds = %92, %88
  %99 = load i32*, i32** %19, align 8
  store i32 -7, i32* %99, align 4
  br label %113

100:                                              ; preds = %92
  %101 = load i32*, i32** %18, align 8
  %102 = load i32, i32* %101, align 4
  %103 = icmp slt i32 %102, 1
  br i1 %103, label %110, label %104

104:                                              ; preds = %100
  %105 = load i32*, i32** %18, align 8
  %106 = load i32, i32* %105, align 4
  %107 = load i32*, i32** %12, align 8
  %108 = load i32, i32* %107, align 4
  %109 = icmp sgt i32 %106, %108
  br i1 %109, label %110, label %112

110:                                              ; preds = %104, %100
  %111 = load i32*, i32** %19, align 8
  store i32 -8, i32* %111, align 4
  br label %112

112:                                              ; preds = %110, %104
  br label %113

113:                                              ; preds = %112, %98
  br label %114

114:                                              ; preds = %113, %86
  br label %115

115:                                              ; preds = %114, %70
  br label %116

116:                                              ; preds = %115, %61
  br label %117

117:                                              ; preds = %116, %55
  %118 = load i32*, i32** %19, align 8
  %119 = load i32, i32* %118, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %126

121:                                              ; preds = %117
  %122 = load i32*, i32** %19, align 8
  %123 = load i32, i32* %122, align 4
  %124 = sub nsw i32 0, %123
  store i32 %124, i32* %24, align 4
  %125 = call i32 @xerbla_(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32* %24)
  store i32 0, i32* %10, align 4
  br label %342

126:                                              ; preds = %117
  %127 = load i32*, i32** %12, align 8
  %128 = load i32, i32* %127, align 4
  %129 = icmp eq i32 %128, 1
  br i1 %129, label %136, label %130

130:                                              ; preds = %126
  %131 = load i32*, i32** %17, align 8
  %132 = load i32, i32* %131, align 4
  %133 = load i32*, i32** %18, align 8
  %134 = load i32, i32* %133, align 4
  %135 = icmp eq i32 %132, %134
  br i1 %135, label %136, label %137

136:                                              ; preds = %130, %126
  store i32 0, i32* %10, align 4
  br label %342

137:                                              ; preds = %130
  %138 = load i32*, i32** %17, align 8
  %139 = load i32, i32* %138, align 4
  %140 = load i32*, i32** %18, align 8
  %141 = load i32, i32* %140, align 4
  %142 = icmp slt i32 %139, %141
  br i1 %142, label %143, label %144

143:                                              ; preds = %137
  store i32 0, i32* @ctrexc_.m1, align 4
  store i32 -1, i32* @ctrexc_.m2, align 4
  store i32 1, i32* @ctrexc_.m3, align 4
  br label %145

144:                                              ; preds = %137
  store i32 -1, i32* @ctrexc_.m1, align 4
  store i32 0, i32* @ctrexc_.m2, align 4
  store i32 -1, i32* @ctrexc_.m3, align 4
  br label %145

145:                                              ; preds = %144, %143
  %146 = load i32*, i32** %18, align 8
  %147 = load i32, i32* %146, align 4
  %148 = load i32, i32* @ctrexc_.m2, align 4
  %149 = add nsw i32 %147, %148
  store i32 %149, i32* %24, align 4
  %150 = load i32, i32* @ctrexc_.m3, align 4
  store i32 %150, i32* %25, align 4
  %151 = load i32*, i32** %17, align 8
  %152 = load i32, i32* %151, align 4
  %153 = load i32, i32* @ctrexc_.m1, align 4
  %154 = add nsw i32 %152, %153
  store i32 %154, i32* @ctrexc_.k, align 4
  br label %155

155:                                              ; preds = %337, %145
  %156 = load i32, i32* %25, align 4
  %157 = icmp slt i32 %156, 0
  br i1 %157, label %158, label %163

158:                                              ; preds = %155
  %159 = load i32, i32* @ctrexc_.k, align 4
  %160 = load i32, i32* %24, align 4
  %161 = icmp sge i32 %159, %160
  %162 = zext i1 %161 to i32
  br label %168

163:                                              ; preds = %155
  %164 = load i32, i32* @ctrexc_.k, align 4
  %165 = load i32, i32* %24, align 4
  %166 = icmp sle i32 %164, %165
  %167 = zext i1 %166 to i32
  br label %168

168:                                              ; preds = %163, %158
  %169 = phi i32 [ %162, %158 ], [ %167, %163 ]
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %341

171:                                              ; preds = %168
  %172 = load i32, i32* @ctrexc_.k, align 4
  %173 = load i32, i32* @ctrexc_.k, align 4
  %174 = load i32, i32* %22, align 4
  %175 = mul nsw i32 %173, %174
  %176 = add nsw i32 %172, %175
  store i32 %176, i32* %26, align 4
  %177 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %178 = load i32, i32* %26, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %177, i64 %179
  %181 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %180, i32 0, i32 1
  %182 = load i64, i64* %181, align 8
  store i64 %182, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ctrexc_.t11, i32 0, i32 1), align 8
  %183 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %184 = load i32, i32* %26, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %183, i64 %185
  %187 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %186, i32 0, i32 0
  %188 = load i64, i64* %187, align 8
  store i64 %188, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ctrexc_.t11, i32 0, i32 0), align 8
  %189 = load i32, i32* @ctrexc_.k, align 4
  %190 = add nsw i32 %189, 1
  %191 = load i32, i32* @ctrexc_.k, align 4
  %192 = add nsw i32 %191, 1
  %193 = load i32, i32* %22, align 4
  %194 = mul nsw i32 %192, %193
  %195 = add nsw i32 %190, %194
  store i32 %195, i32* %26, align 4
  %196 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %197 = load i32, i32* %26, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %196, i64 %198
  %200 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %199, i32 0, i32 1
  %201 = load i64, i64* %200, align 8
  store i64 %201, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ctrexc_.t22, i32 0, i32 1), align 8
  %202 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %203 = load i32, i32* %26, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %202, i64 %204
  %206 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %205, i32 0, i32 0
  %207 = load i64, i64* %206, align 8
  store i64 %207, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ctrexc_.t22, i32 0, i32 0), align 8
  %208 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ctrexc_.t22, i32 0, i32 1), align 8
  %209 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ctrexc_.t11, i32 0, i32 1), align 8
  %210 = sub nsw i64 %208, %209
  %211 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 1
  store i64 %210, i64* %211, align 8
  %212 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ctrexc_.t22, i32 0, i32 0), align 8
  %213 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ctrexc_.t11, i32 0, i32 0), align 8
  %214 = sub nsw i64 %212, %213
  %215 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  store i64 %214, i64* %215, align 8
  %216 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %217 = load i32, i32* @ctrexc_.k, align 4
  %218 = load i32, i32* @ctrexc_.k, align 4
  %219 = add nsw i32 %218, 1
  %220 = load i32, i32* %22, align 4
  %221 = mul nsw i32 %219, %220
  %222 = add nsw i32 %217, %221
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %216, i64 %223
  %225 = call i32 @clartg_(%struct.TYPE_6__* %224, %struct.TYPE_6__* %27, i32* @ctrexc_.cs, %struct.TYPE_6__* @ctrexc_.sn, %struct.TYPE_6__* @ctrexc_.temp)
  %226 = load i32, i32* @ctrexc_.k, align 4
  %227 = add nsw i32 %226, 2
  %228 = load i32*, i32** %12, align 8
  %229 = load i32, i32* %228, align 4
  %230 = icmp sle i32 %227, %229
  br i1 %230, label %231, label %259

231:                                              ; preds = %171
  %232 = load i32*, i32** %12, align 8
  %233 = load i32, i32* %232, align 4
  %234 = load i32, i32* @ctrexc_.k, align 4
  %235 = sub nsw i32 %233, %234
  %236 = sub nsw i32 %235, 1
  store i32 %236, i32* %26, align 4
  %237 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %238 = load i32, i32* @ctrexc_.k, align 4
  %239 = load i32, i32* @ctrexc_.k, align 4
  %240 = add nsw i32 %239, 2
  %241 = load i32, i32* %22, align 4
  %242 = mul nsw i32 %240, %241
  %243 = add nsw i32 %238, %242
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %237, i64 %244
  %246 = load i32*, i32** %14, align 8
  %247 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %248 = load i32, i32* @ctrexc_.k, align 4
  %249 = add nsw i32 %248, 1
  %250 = load i32, i32* @ctrexc_.k, align 4
  %251 = add nsw i32 %250, 2
  %252 = load i32, i32* %22, align 4
  %253 = mul nsw i32 %251, %252
  %254 = add nsw i32 %249, %253
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %247, i64 %255
  %257 = load i32*, i32** %14, align 8
  %258 = call i32 @crot_(i32* %26, %struct.TYPE_6__* %245, i32* %246, %struct.TYPE_6__* %256, i32* %257, i32* @ctrexc_.cs, %struct.TYPE_6__* @ctrexc_.sn)
  br label %259

259:                                              ; preds = %231, %171
  %260 = load i32, i32* @ctrexc_.k, align 4
  %261 = sub nsw i32 %260, 1
  store i32 %261, i32* %26, align 4
  %262 = call i32 @r_cnjg(%struct.TYPE_6__* %27, %struct.TYPE_6__* @ctrexc_.sn)
  %263 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %264 = load i32, i32* @ctrexc_.k, align 4
  %265 = load i32, i32* %22, align 4
  %266 = mul nsw i32 %264, %265
  %267 = add nsw i32 %266, 1
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %263, i64 %268
  %270 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %271 = load i32, i32* @ctrexc_.k, align 4
  %272 = add nsw i32 %271, 1
  %273 = load i32, i32* %22, align 4
  %274 = mul nsw i32 %272, %273
  %275 = add nsw i32 %274, 1
  %276 = sext i32 %275 to i64
  %277 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %270, i64 %276
  %278 = call i32 @crot_(i32* %26, %struct.TYPE_6__* %269, i32* @c__1, %struct.TYPE_6__* %277, i32* @c__1, i32* @ctrexc_.cs, %struct.TYPE_6__* %27)
  %279 = load i32, i32* @ctrexc_.k, align 4
  %280 = load i32, i32* @ctrexc_.k, align 4
  %281 = load i32, i32* %22, align 4
  %282 = mul nsw i32 %280, %281
  %283 = add nsw i32 %279, %282
  store i32 %283, i32* %26, align 4
  %284 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ctrexc_.t22, i32 0, i32 1), align 8
  %285 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %286 = load i32, i32* %26, align 4
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %285, i64 %287
  %289 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %288, i32 0, i32 1
  store i64 %284, i64* %289, align 8
  %290 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ctrexc_.t22, i32 0, i32 0), align 8
  %291 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %292 = load i32, i32* %26, align 4
  %293 = sext i32 %292 to i64
  %294 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %291, i64 %293
  %295 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %294, i32 0, i32 0
  store i64 %290, i64* %295, align 8
  %296 = load i32, i32* @ctrexc_.k, align 4
  %297 = add nsw i32 %296, 1
  %298 = load i32, i32* @ctrexc_.k, align 4
  %299 = add nsw i32 %298, 1
  %300 = load i32, i32* %22, align 4
  %301 = mul nsw i32 %299, %300
  %302 = add nsw i32 %297, %301
  store i32 %302, i32* %26, align 4
  %303 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ctrexc_.t11, i32 0, i32 1), align 8
  %304 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %305 = load i32, i32* %26, align 4
  %306 = sext i32 %305 to i64
  %307 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %304, i64 %306
  %308 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %307, i32 0, i32 1
  store i64 %303, i64* %308, align 8
  %309 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ctrexc_.t11, i32 0, i32 0), align 8
  %310 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %311 = load i32, i32* %26, align 4
  %312 = sext i32 %311 to i64
  %313 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %310, i64 %312
  %314 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %313, i32 0, i32 0
  store i64 %309, i64* %314, align 8
  %315 = load i64, i64* @ctrexc_.wantq, align 8
  %316 = icmp ne i64 %315, 0
  br i1 %316, label %317, label %336

317:                                              ; preds = %259
  %318 = call i32 @r_cnjg(%struct.TYPE_6__* %27, %struct.TYPE_6__* @ctrexc_.sn)
  %319 = load i32*, i32** %12, align 8
  %320 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %321 = load i32, i32* @ctrexc_.k, align 4
  %322 = load i32, i32* %20, align 4
  %323 = mul nsw i32 %321, %322
  %324 = add nsw i32 %323, 1
  %325 = sext i32 %324 to i64
  %326 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %320, i64 %325
  %327 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %328 = load i32, i32* @ctrexc_.k, align 4
  %329 = add nsw i32 %328, 1
  %330 = load i32, i32* %20, align 4
  %331 = mul nsw i32 %329, %330
  %332 = add nsw i32 %331, 1
  %333 = sext i32 %332 to i64
  %334 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %327, i64 %333
  %335 = call i32 @crot_(i32* %319, %struct.TYPE_6__* %326, i32* @c__1, %struct.TYPE_6__* %334, i32* @c__1, i32* @ctrexc_.cs, %struct.TYPE_6__* %27)
  br label %336

336:                                              ; preds = %317, %259
  br label %337

337:                                              ; preds = %336
  %338 = load i32, i32* %25, align 4
  %339 = load i32, i32* @ctrexc_.k, align 4
  %340 = add nsw i32 %339, %338
  store i32 %340, i32* @ctrexc_.k, align 4
  br label %155

341:                                              ; preds = %168
  store i32 0, i32* %10, align 4
  br label %342

342:                                              ; preds = %341, %136, %121
  %343 = load i32, i32* %10, align 4
  ret i32 %343
}

declare dso_local i64 @lsame_(i8*, i8*) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @xerbla_(i8*, i32*) #1

declare dso_local i32 @clartg_(%struct.TYPE_6__*, %struct.TYPE_6__*, i32*, %struct.TYPE_6__*, %struct.TYPE_6__*) #1

declare dso_local i32 @crot_(i32*, %struct.TYPE_6__*, i32*, %struct.TYPE_6__*, i32*, i32*, %struct.TYPE_6__*) #1

declare dso_local i32 @r_cnjg(%struct.TYPE_6__*, %struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
