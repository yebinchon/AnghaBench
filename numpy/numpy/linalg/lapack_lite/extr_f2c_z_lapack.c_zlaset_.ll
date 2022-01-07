; ModuleID = '/home/carl/AnghaBench/numpy/numpy/linalg/lapack_lite/extr_f2c_z_lapack.c_zlaset_.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/linalg/lapack_lite/extr_f2c_z_lapack.c_zlaset_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }

@zlaset_.i__ = internal global i32 0, align 4
@zlaset_.j = internal global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"U\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"L\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zlaset_(i8* %0, i32* %1, i32* %2, %struct.TYPE_5__* %3, %struct.TYPE_5__* %4, %struct.TYPE_5__* %5, i32* %6) #0 {
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_5__*, align 8
  %12 = alloca %struct.TYPE_5__*, align 8
  %13 = alloca %struct.TYPE_5__*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i8* %0, i8** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32* %2, i32** %10, align 8
  store %struct.TYPE_5__* %3, %struct.TYPE_5__** %11, align 8
  store %struct.TYPE_5__* %4, %struct.TYPE_5__** %12, align 8
  store %struct.TYPE_5__* %5, %struct.TYPE_5__** %13, align 8
  store i32* %6, i32** %14, align 8
  %20 = load i32*, i32** %14, align 8
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %15, align 4
  %22 = load i32, i32* %15, align 4
  %23 = add nsw i32 1, %22
  store i32 %23, i32* %16, align 4
  %24 = load i32, i32* %16, align 4
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %26 = sext i32 %24 to i64
  %27 = sub i64 0, %26
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i64 %27
  store %struct.TYPE_5__* %28, %struct.TYPE_5__** %13, align 8
  %29 = load i8*, i8** %8, align 8
  %30 = call i8* @lsame_(i8* %29, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %31 = icmp ne i8* %30, null
  br i1 %31, label %32, label %115

32:                                               ; preds = %7
  %33 = load i32*, i32** %10, align 8
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %17, align 4
  store i32 2, i32* @zlaset_.j, align 4
  br label %35

35:                                               ; preds = %76, %32
  %36 = load i32, i32* @zlaset_.j, align 4
  %37 = load i32, i32* %17, align 4
  %38 = icmp sle i32 %36, %37
  br i1 %38, label %39, label %79

39:                                               ; preds = %35
  %40 = load i32, i32* @zlaset_.j, align 4
  %41 = sub nsw i32 %40, 1
  store i32 %41, i32* %19, align 4
  %42 = load i32, i32* %19, align 4
  %43 = load i32*, i32** %9, align 8
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @min(i32 %42, i32 %44)
  store i32 %45, i32* %18, align 4
  store i32 1, i32* @zlaset_.i__, align 4
  br label %46

46:                                               ; preds = %72, %39
  %47 = load i32, i32* @zlaset_.i__, align 4
  %48 = load i32, i32* %18, align 4
  %49 = icmp sle i32 %47, %48
  br i1 %49, label %50, label %75

50:                                               ; preds = %46
  %51 = load i32, i32* @zlaset_.i__, align 4
  %52 = load i32, i32* @zlaset_.j, align 4
  %53 = load i32, i32* %15, align 4
  %54 = mul nsw i32 %52, %53
  %55 = add nsw i32 %51, %54
  store i32 %55, i32* %19, align 4
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %60 = load i32, i32* %19, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 1
  store i32 %58, i32* %63, align 4
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %68 = load i32, i32* %19, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 0
  store i32 %66, i32* %71, align 4
  br label %72

72:                                               ; preds = %50
  %73 = load i32, i32* @zlaset_.i__, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* @zlaset_.i__, align 4
  br label %46

75:                                               ; preds = %46
  br label %76

76:                                               ; preds = %75
  %77 = load i32, i32* @zlaset_.j, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* @zlaset_.j, align 4
  br label %35

79:                                               ; preds = %35
  %80 = load i32*, i32** %10, align 8
  %81 = load i32, i32* %80, align 4
  %82 = load i32*, i32** %9, align 8
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @min(i32 %81, i32 %83)
  store i32 %84, i32* %17, align 4
  store i32 1, i32* @zlaset_.i__, align 4
  br label %85

85:                                               ; preds = %111, %79
  %86 = load i32, i32* @zlaset_.i__, align 4
  %87 = load i32, i32* %17, align 4
  %88 = icmp sle i32 %86, %87
  br i1 %88, label %89, label %114

89:                                               ; preds = %85
  %90 = load i32, i32* @zlaset_.i__, align 4
  %91 = load i32, i32* @zlaset_.i__, align 4
  %92 = load i32, i32* %15, align 4
  %93 = mul nsw i32 %91, %92
  %94 = add nsw i32 %90, %93
  store i32 %94, i32* %18, align 4
  %95 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %99 = load i32, i32* %18, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 1
  store i32 %97, i32* %102, align 4
  %103 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %107 = load i32, i32* %18, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i64 %108
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 0
  store i32 %105, i32* %110, align 4
  br label %111

111:                                              ; preds = %89
  %112 = load i32, i32* @zlaset_.i__, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* @zlaset_.i__, align 4
  br label %85

114:                                              ; preds = %85
  br label %283

115:                                              ; preds = %7
  %116 = load i8*, i8** %8, align 8
  %117 = call i8* @lsame_(i8* %116, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %118 = icmp ne i8* %117, null
  br i1 %118, label %119, label %203

119:                                              ; preds = %115
  %120 = load i32*, i32** %9, align 8
  %121 = load i32, i32* %120, align 4
  %122 = load i32*, i32** %10, align 8
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @min(i32 %121, i32 %123)
  store i32 %124, i32* %17, align 4
  store i32 1, i32* @zlaset_.j, align 4
  br label %125

125:                                              ; preds = %164, %119
  %126 = load i32, i32* @zlaset_.j, align 4
  %127 = load i32, i32* %17, align 4
  %128 = icmp sle i32 %126, %127
  br i1 %128, label %129, label %167

129:                                              ; preds = %125
  %130 = load i32*, i32** %9, align 8
  %131 = load i32, i32* %130, align 4
  store i32 %131, i32* %18, align 4
  %132 = load i32, i32* @zlaset_.j, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* @zlaset_.i__, align 4
  br label %134

134:                                              ; preds = %160, %129
  %135 = load i32, i32* @zlaset_.i__, align 4
  %136 = load i32, i32* %18, align 4
  %137 = icmp sle i32 %135, %136
  br i1 %137, label %138, label %163

138:                                              ; preds = %134
  %139 = load i32, i32* @zlaset_.i__, align 4
  %140 = load i32, i32* @zlaset_.j, align 4
  %141 = load i32, i32* %15, align 4
  %142 = mul nsw i32 %140, %141
  %143 = add nsw i32 %139, %142
  store i32 %143, i32* %19, align 4
  %144 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %145 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %148 = load i32, i32* %19, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %147, i64 %149
  %151 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %150, i32 0, i32 1
  store i32 %146, i32* %151, align 4
  %152 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %153 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %156 = load i32, i32* %19, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %155, i64 %157
  %159 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %158, i32 0, i32 0
  store i32 %154, i32* %159, align 4
  br label %160

160:                                              ; preds = %138
  %161 = load i32, i32* @zlaset_.i__, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* @zlaset_.i__, align 4
  br label %134

163:                                              ; preds = %134
  br label %164

164:                                              ; preds = %163
  %165 = load i32, i32* @zlaset_.j, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* @zlaset_.j, align 4
  br label %125

167:                                              ; preds = %125
  %168 = load i32*, i32** %10, align 8
  %169 = load i32, i32* %168, align 4
  %170 = load i32*, i32** %9, align 8
  %171 = load i32, i32* %170, align 4
  %172 = call i32 @min(i32 %169, i32 %171)
  store i32 %172, i32* %17, align 4
  store i32 1, i32* @zlaset_.i__, align 4
  br label %173

173:                                              ; preds = %199, %167
  %174 = load i32, i32* @zlaset_.i__, align 4
  %175 = load i32, i32* %17, align 4
  %176 = icmp sle i32 %174, %175
  br i1 %176, label %177, label %202

177:                                              ; preds = %173
  %178 = load i32, i32* @zlaset_.i__, align 4
  %179 = load i32, i32* @zlaset_.i__, align 4
  %180 = load i32, i32* %15, align 4
  %181 = mul nsw i32 %179, %180
  %182 = add nsw i32 %178, %181
  store i32 %182, i32* %18, align 4
  %183 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %184 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %183, i32 0, i32 1
  %185 = load i32, i32* %184, align 4
  %186 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %187 = load i32, i32* %18, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %186, i64 %188
  %190 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %189, i32 0, i32 1
  store i32 %185, i32* %190, align 4
  %191 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %192 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 4
  %194 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %195 = load i32, i32* %18, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %194, i64 %196
  %198 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %197, i32 0, i32 0
  store i32 %193, i32* %198, align 4
  br label %199

199:                                              ; preds = %177
  %200 = load i32, i32* @zlaset_.i__, align 4
  %201 = add nsw i32 %200, 1
  store i32 %201, i32* @zlaset_.i__, align 4
  br label %173

202:                                              ; preds = %173
  br label %282

203:                                              ; preds = %115
  %204 = load i32*, i32** %10, align 8
  %205 = load i32, i32* %204, align 4
  store i32 %205, i32* %17, align 4
  store i32 1, i32* @zlaset_.j, align 4
  br label %206

206:                                              ; preds = %243, %203
  %207 = load i32, i32* @zlaset_.j, align 4
  %208 = load i32, i32* %17, align 4
  %209 = icmp sle i32 %207, %208
  br i1 %209, label %210, label %246

210:                                              ; preds = %206
  %211 = load i32*, i32** %9, align 8
  %212 = load i32, i32* %211, align 4
  store i32 %212, i32* %18, align 4
  store i32 1, i32* @zlaset_.i__, align 4
  br label %213

213:                                              ; preds = %239, %210
  %214 = load i32, i32* @zlaset_.i__, align 4
  %215 = load i32, i32* %18, align 4
  %216 = icmp sle i32 %214, %215
  br i1 %216, label %217, label %242

217:                                              ; preds = %213
  %218 = load i32, i32* @zlaset_.i__, align 4
  %219 = load i32, i32* @zlaset_.j, align 4
  %220 = load i32, i32* %15, align 4
  %221 = mul nsw i32 %219, %220
  %222 = add nsw i32 %218, %221
  store i32 %222, i32* %19, align 4
  %223 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %224 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %223, i32 0, i32 1
  %225 = load i32, i32* %224, align 4
  %226 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %227 = load i32, i32* %19, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %226, i64 %228
  %230 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %229, i32 0, i32 1
  store i32 %225, i32* %230, align 4
  %231 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %232 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %231, i32 0, i32 0
  %233 = load i32, i32* %232, align 4
  %234 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %235 = load i32, i32* %19, align 4
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %234, i64 %236
  %238 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %237, i32 0, i32 0
  store i32 %233, i32* %238, align 4
  br label %239

239:                                              ; preds = %217
  %240 = load i32, i32* @zlaset_.i__, align 4
  %241 = add nsw i32 %240, 1
  store i32 %241, i32* @zlaset_.i__, align 4
  br label %213

242:                                              ; preds = %213
  br label %243

243:                                              ; preds = %242
  %244 = load i32, i32* @zlaset_.j, align 4
  %245 = add nsw i32 %244, 1
  store i32 %245, i32* @zlaset_.j, align 4
  br label %206

246:                                              ; preds = %206
  %247 = load i32*, i32** %9, align 8
  %248 = load i32, i32* %247, align 4
  %249 = load i32*, i32** %10, align 8
  %250 = load i32, i32* %249, align 4
  %251 = call i32 @min(i32 %248, i32 %250)
  store i32 %251, i32* %17, align 4
  store i32 1, i32* @zlaset_.i__, align 4
  br label %252

252:                                              ; preds = %278, %246
  %253 = load i32, i32* @zlaset_.i__, align 4
  %254 = load i32, i32* %17, align 4
  %255 = icmp sle i32 %253, %254
  br i1 %255, label %256, label %281

256:                                              ; preds = %252
  %257 = load i32, i32* @zlaset_.i__, align 4
  %258 = load i32, i32* @zlaset_.i__, align 4
  %259 = load i32, i32* %15, align 4
  %260 = mul nsw i32 %258, %259
  %261 = add nsw i32 %257, %260
  store i32 %261, i32* %18, align 4
  %262 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %263 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %262, i32 0, i32 1
  %264 = load i32, i32* %263, align 4
  %265 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %266 = load i32, i32* %18, align 4
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %265, i64 %267
  %269 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %268, i32 0, i32 1
  store i32 %264, i32* %269, align 4
  %270 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %271 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %270, i32 0, i32 0
  %272 = load i32, i32* %271, align 4
  %273 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %274 = load i32, i32* %18, align 4
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %273, i64 %275
  %277 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %276, i32 0, i32 0
  store i32 %272, i32* %277, align 4
  br label %278

278:                                              ; preds = %256
  %279 = load i32, i32* @zlaset_.i__, align 4
  %280 = add nsw i32 %279, 1
  store i32 %280, i32* @zlaset_.i__, align 4
  br label %252

281:                                              ; preds = %252
  br label %282

282:                                              ; preds = %281, %202
  br label %283

283:                                              ; preds = %282, %114
  ret i32 0
}

declare dso_local i8* @lsame_(i8*, i8*) #1

declare dso_local i32 @min(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
