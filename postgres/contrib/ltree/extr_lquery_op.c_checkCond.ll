; ModuleID = '/home/carl/AnghaBench/postgres/contrib/ltree/extr_lquery_op.c_checkCond.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/ltree/extr_lquery_op.c_checkCond.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_11__ = type { i64, i32, i32, i32 }
%struct.TYPE_12__ = type { i32, i32, i32, i32, i32*, %struct.TYPE_11__* }

@SomeStack = common dso_local global %struct.TYPE_13__ zeroinitializer, align 4
@LQL_NOT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, i32, i32*, i32, %struct.TYPE_12__*)* @checkCond to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @checkCond(%struct.TYPE_11__* %0, i32 %1, i32* %2, i32 %3, %struct.TYPE_12__* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_12__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_11__*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca %struct.TYPE_12__, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.TYPE_12__* %4, %struct.TYPE_12__** %11, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %21 = load i32, i32* %10, align 4
  store i32 %21, i32* %15, align 4
  %22 = load i32, i32* %8, align 4
  store i32 %22, i32* %16, align 4
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %18, align 8
  store i32* null, i32** %19, align 8
  %23 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @SomeStack, i32 0, i32 0), align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %5
  %26 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @SomeStack, i32 0, i32 1), align 4
  store i32 %26, i32* %13, align 4
  %27 = load i32, i32* %16, align 4
  %28 = add nsw i32 %27, -1
  store i32 %28, i32* %16, align 4
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  store %struct.TYPE_11__* %29, %struct.TYPE_11__** %18, align 8
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %31 = call %struct.TYPE_11__* @LQL_NEXT(%struct.TYPE_11__* %30)
  store %struct.TYPE_11__* %31, %struct.TYPE_11__** %7, align 8
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @SomeStack, i32 0, i32 0), align 4
  br label %32

32:                                               ; preds = %25, %5
  br label %33

33:                                               ; preds = %321, %32
  %34 = load i32, i32* %15, align 4
  %35 = icmp sgt i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %33
  %37 = load i32, i32* %16, align 4
  %38 = icmp sgt i32 %37, 0
  br label %39

39:                                               ; preds = %36, %33
  %40 = phi i1 [ false, %33 ], [ %38, %36 ]
  br i1 %40, label %41, label %327

41:                                               ; preds = %39
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %286

46:                                               ; preds = %41
  %47 = load i32*, i32** %9, align 8
  store i32* %47, i32** %19, align 8
  br label %48

48:                                               ; preds = %75, %46
  %49 = load i32, i32* %14, align 4
  %50 = load i32, i32* %12, align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %52, label %76

52:                                               ; preds = %48
  %53 = load i32*, i32** %9, align 8
  %54 = call i32* @LEVEL_NEXT(i32* %53)
  store i32* %54, i32** %9, align 8
  %55 = load i32, i32* %15, align 4
  %56 = add nsw i32 %55, -1
  store i32 %56, i32* %15, align 4
  %57 = load i32, i32* %14, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %14, align 4
  %59 = load i32, i32* %15, align 4
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %52
  store i32 0, i32* %6, align 4
  br label %404

62:                                               ; preds = %52
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %64 = icmp ne %struct.TYPE_12__* %63, null
  br i1 %64, label %65, label %75

65:                                               ; preds = %62
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %66, i32 0, i32 5
  %68 = load %struct.TYPE_11__*, %struct.TYPE_11__** %67, align 8
  %69 = icmp ne %struct.TYPE_11__* %68, null
  br i1 %69, label %70, label %75

70:                                               ; preds = %65
  %71 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %72, align 8
  br label %75

75:                                               ; preds = %70, %65, %62
  br label %48

76:                                               ; preds = %48
  %77 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %78 = icmp ne %struct.TYPE_12__* %77, null
  br i1 %78, label %79, label %173

79:                                               ; preds = %76
  %80 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* @LQL_NOT, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %173

86:                                               ; preds = %79
  %87 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %88 = icmp ne %struct.TYPE_11__* %87, null
  br i1 %88, label %89, label %94

89:                                               ; preds = %86
  %90 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %91 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = icmp eq i64 %92, 0
  br i1 %93, label %96, label %94

94:                                               ; preds = %89, %86
  %95 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  store %struct.TYPE_11__* %95, %struct.TYPE_11__** %18, align 8
  br label %96

96:                                               ; preds = %94, %89
  %97 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %98 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %97, i32 0, i32 5
  %99 = load %struct.TYPE_11__*, %struct.TYPE_11__** %98, align 8
  %100 = icmp eq %struct.TYPE_11__* %99, null
  br i1 %100, label %101, label %132

101:                                              ; preds = %96
  %102 = load i32*, i32** %19, align 8
  %103 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %104 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %103, i32 0, i32 4
  store i32* %102, i32** %104, align 8
  %105 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %106 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %107 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %106, i32 0, i32 5
  store %struct.TYPE_11__* %105, %struct.TYPE_11__** %107, align 8
  %108 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %109 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %108, i32 0, i32 0
  store i32 1, i32* %109, align 8
  %110 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %111 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %112 = icmp eq %struct.TYPE_11__* %110, %111
  %113 = zext i1 %112 to i64
  %114 = select i1 %112, i32 0, i32 1
  %115 = add nsw i32 1, %114
  %116 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %117 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %116, i32 0, i32 1
  store i32 %115, i32* %117, align 4
  %118 = load i32, i32* %8, align 4
  %119 = load i32, i32* %16, align 4
  %120 = sub nsw i32 %118, %119
  %121 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %122 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %123 = icmp eq %struct.TYPE_11__* %121, %122
  %124 = zext i1 %123 to i64
  %125 = select i1 %123, i32 0, i32 1
  %126 = sub nsw i32 %120, %125
  %127 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %128 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %127, i32 0, i32 2
  store i32 %126, i32* %128, align 8
  %129 = load i32, i32* %14, align 4
  %130 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %131 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %130, i32 0, i32 3
  store i32 %129, i32* %131, align 4
  br label %141

132:                                              ; preds = %96
  %133 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %134 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %134, align 8
  %137 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %138 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %138, align 4
  br label %141

141:                                              ; preds = %132, %101
  %142 = load i32, i32* %16, align 4
  %143 = icmp eq i32 %142, 1
  br i1 %143, label %144, label %159

144:                                              ; preds = %141
  %145 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %146 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %145, i32 0, i32 5
  %147 = load %struct.TYPE_11__*, %struct.TYPE_11__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = icmp eq i64 %149, 0
  br i1 %150, label %151, label %159

151:                                              ; preds = %144
  %152 = load i32, i32* %10, align 4
  %153 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %154 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %153, i32 0, i32 3
  %155 = load i32, i32* %154, align 4
  %156 = sub nsw i32 %152, %155
  %157 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %158 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %157, i32 0, i32 0
  store i32 %156, i32* %158, align 8
  br label %159

159:                                              ; preds = %151, %144, %141
  %160 = load i32*, i32** %9, align 8
  %161 = call i32* @LEVEL_NEXT(i32* %160)
  store i32* %161, i32** %9, align 8
  %162 = load i32, i32* %15, align 4
  %163 = add nsw i32 %162, -1
  store i32 %163, i32* %15, align 4
  %164 = load i32, i32* %14, align 4
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %14, align 4
  %166 = load i32, i32* %13, align 4
  %167 = load i32, i32* %14, align 4
  %168 = icmp slt i32 %166, %167
  br i1 %168, label %169, label %172

169:                                              ; preds = %159
  %170 = load i32, i32* %13, align 4
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %13, align 4
  br label %172

172:                                              ; preds = %169, %159
  br label %285

173:                                              ; preds = %79, %76
  store i32 0, i32* %17, align 4
  br label %174

174:                                              ; preds = %250, %173
  %175 = load i32, i32* %14, align 4
  %176 = load i32, i32* %13, align 4
  %177 = icmp sle i32 %175, %176
  br i1 %177, label %178, label %185

178:                                              ; preds = %174
  %179 = load i32, i32* %15, align 4
  %180 = icmp sgt i32 %179, 0
  br i1 %180, label %181, label %185

181:                                              ; preds = %178
  %182 = load i32, i32* %17, align 4
  %183 = icmp ne i32 %182, 0
  %184 = xor i1 %183, true
  br label %185

185:                                              ; preds = %181, %178, %174
  %186 = phi i1 [ false, %178 ], [ false, %174 ], [ %184, %181 ]
  br i1 %186, label %187, label %251

187:                                              ; preds = %185
  %188 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %189 = load i32*, i32** %9, align 8
  %190 = call i32 @checkLevel(%struct.TYPE_11__* %188, i32* %189)
  store i32 %190, i32* %17, align 4
  %191 = load i32*, i32** %9, align 8
  %192 = call i32* @LEVEL_NEXT(i32* %191)
  store i32* %192, i32** %9, align 8
  %193 = load i32, i32* %15, align 4
  %194 = add nsw i32 %193, -1
  store i32 %194, i32* %15, align 4
  %195 = load i32, i32* %14, align 4
  %196 = add nsw i32 %195, 1
  store i32 %196, i32* %14, align 4
  %197 = load i32, i32* %17, align 4
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %239

199:                                              ; preds = %187
  %200 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %201 = icmp ne %struct.TYPE_11__* %200, null
  br i1 %201, label %202, label %239

202:                                              ; preds = %199
  %203 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %204 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %203, i32 0, i32 0
  %205 = load i64, i64* %204, align 8
  %206 = icmp eq i64 %205, 0
  br i1 %206, label %207, label %239

207:                                              ; preds = %202
  %208 = load i32, i32* %15, align 4
  %209 = icmp sgt i32 %208, 0
  br i1 %209, label %210, label %239

210:                                              ; preds = %207
  %211 = load i32, i32* %14, align 4
  %212 = load i32, i32* %13, align 4
  %213 = icmp sle i32 %211, %212
  br i1 %213, label %214, label %239

214:                                              ; preds = %210
  %215 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %216 = icmp ne %struct.TYPE_12__* %215, null
  br i1 %216, label %217, label %220

217:                                              ; preds = %214
  %218 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %219 = call i32 @memcpy(%struct.TYPE_12__* %20, %struct.TYPE_12__* %218, i32 32)
  br label %220

220:                                              ; preds = %217, %214
  %221 = load i32, i32* %13, align 4
  %222 = load i32, i32* %14, align 4
  %223 = sub nsw i32 %221, %222
  store i32 %223, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @SomeStack, i32 0, i32 1), align 4
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @SomeStack, i32 0, i32 0), align 4
  %224 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %225 = load i32, i32* %16, align 4
  %226 = add nsw i32 %225, 1
  %227 = load i32*, i32** %9, align 8
  %228 = load i32, i32* %15, align 4
  %229 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %230 = icmp ne %struct.TYPE_12__* %229, null
  br i1 %230, label %231, label %232

231:                                              ; preds = %220
  br label %233

232:                                              ; preds = %220
  br label %233

233:                                              ; preds = %232, %231
  %234 = phi %struct.TYPE_12__* [ %20, %231 ], [ null, %232 ]
  %235 = call i32 @checkCond(%struct.TYPE_11__* %224, i32 %226, i32* %227, i32 %228, %struct.TYPE_12__* %234)
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %237, label %238

237:                                              ; preds = %233
  store i32 1, i32* %6, align 4
  br label %404

238:                                              ; preds = %233
  br label %239

239:                                              ; preds = %238, %210, %207, %202, %199, %187
  %240 = load i32, i32* %17, align 4
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %250, label %242

242:                                              ; preds = %239
  %243 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %244 = icmp ne %struct.TYPE_12__* %243, null
  br i1 %244, label %245, label %250

245:                                              ; preds = %242
  %246 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %247 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %246, i32 0, i32 0
  %248 = load i32, i32* %247, align 8
  %249 = add nsw i32 %248, 1
  store i32 %249, i32* %247, align 8
  br label %250

250:                                              ; preds = %245, %242, %239
  br label %174

251:                                              ; preds = %185
  %252 = load i32, i32* %17, align 4
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %255, label %254

254:                                              ; preds = %251
  store i32 0, i32* %6, align 4
  br label %404

255:                                              ; preds = %251
  %256 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %257 = icmp ne %struct.TYPE_12__* %256, null
  br i1 %257, label %258, label %282

258:                                              ; preds = %255
  %259 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %260 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %259, i32 0, i32 5
  %261 = load %struct.TYPE_11__*, %struct.TYPE_11__** %260, align 8
  %262 = icmp ne %struct.TYPE_11__* %261, null
  br i1 %262, label %263, label %282

263:                                              ; preds = %258
  %264 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %265 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %264, i32 0, i32 5
  %266 = load %struct.TYPE_11__*, %struct.TYPE_11__** %265, align 8
  %267 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %268 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %267, i32 0, i32 1
  %269 = load i32, i32* %268, align 4
  %270 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %271 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %270, i32 0, i32 4
  %272 = load i32*, i32** %271, align 8
  %273 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %274 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %273, i32 0, i32 0
  %275 = load i32, i32* %274, align 8
  %276 = call i32 @checkCond(%struct.TYPE_11__* %266, i32 %269, i32* %272, i32 %275, %struct.TYPE_12__* null)
  %277 = icmp ne i32 %276, 0
  br i1 %277, label %278, label %279

278:                                              ; preds = %263
  store i32 0, i32* %6, align 4
  br label %404

279:                                              ; preds = %263
  %280 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %281 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %280, i32 0, i32 5
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %281, align 8
  br label %282

282:                                              ; preds = %279, %258, %255
  %283 = load i32, i32* %14, align 4
  store i32 %283, i32* %12, align 4
  %284 = load i32, i32* %14, align 4
  store i32 %284, i32* %13, align 4
  br label %285

285:                                              ; preds = %282, %172
  br label %321

286:                                              ; preds = %41
  %287 = load i32, i32* %14, align 4
  %288 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %289 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %288, i32 0, i32 2
  %290 = load i32, i32* %289, align 4
  %291 = add nsw i32 %287, %290
  store i32 %291, i32* %12, align 4
  %292 = load i32, i32* %14, align 4
  %293 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %294 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %293, i32 0, i32 3
  %295 = load i32, i32* %294, align 8
  %296 = add nsw i32 %292, %295
  store i32 %296, i32* %13, align 4
  %297 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %298 = icmp ne %struct.TYPE_12__* %297, null
  br i1 %298, label %299, label %320

299:                                              ; preds = %286
  %300 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %301 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %300, i32 0, i32 5
  %302 = load %struct.TYPE_11__*, %struct.TYPE_11__** %301, align 8
  %303 = icmp ne %struct.TYPE_11__* %302, null
  br i1 %303, label %304, label %320

304:                                              ; preds = %299
  %305 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %306 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %305, i32 0, i32 1
  %307 = load i32, i32* %306, align 4
  %308 = add nsw i32 %307, 1
  store i32 %308, i32* %306, align 4
  %309 = load i32, i32* %16, align 4
  %310 = icmp eq i32 %309, 1
  br i1 %310, label %311, label %319

311:                                              ; preds = %304
  %312 = load i32, i32* %10, align 4
  %313 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %314 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %313, i32 0, i32 3
  %315 = load i32, i32* %314, align 4
  %316 = sub nsw i32 %312, %315
  %317 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %318 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %317, i32 0, i32 0
  store i32 %316, i32* %318, align 8
  br label %319

319:                                              ; preds = %311, %304
  br label %320

320:                                              ; preds = %319, %299, %286
  br label %321

321:                                              ; preds = %320, %285
  %322 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  store %struct.TYPE_11__* %322, %struct.TYPE_11__** %18, align 8
  %323 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %324 = call %struct.TYPE_11__* @LQL_NEXT(%struct.TYPE_11__* %323)
  store %struct.TYPE_11__* %324, %struct.TYPE_11__** %7, align 8
  %325 = load i32, i32* %16, align 4
  %326 = add nsw i32 %325, -1
  store i32 %326, i32* %16, align 4
  br label %33

327:                                              ; preds = %39
  %328 = load i32, i32* %12, align 4
  %329 = load i32, i32* %10, align 4
  %330 = icmp sgt i32 %328, %329
  br i1 %330, label %335, label %331

331:                                              ; preds = %327
  %332 = load i32, i32* %10, align 4
  %333 = load i32, i32* %13, align 4
  %334 = icmp sgt i32 %332, %333
  br i1 %334, label %335, label %336

335:                                              ; preds = %331, %327
  store i32 0, i32* %6, align 4
  br label %404

336:                                              ; preds = %331
  br label %337

337:                                              ; preds = %365, %336
  %338 = load i32, i32* %16, align 4
  %339 = icmp sgt i32 %338, 0
  br i1 %339, label %340, label %370

340:                                              ; preds = %337
  %341 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %342 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %341, i32 0, i32 0
  %343 = load i64, i64* %342, align 8
  %344 = icmp ne i64 %343, 0
  br i1 %344, label %345, label %354

345:                                              ; preds = %340
  %346 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %347 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %346, i32 0, i32 1
  %348 = load i32, i32* %347, align 8
  %349 = load i32, i32* @LQL_NOT, align 4
  %350 = and i32 %348, %349
  %351 = icmp ne i32 %350, 0
  br i1 %351, label %353, label %352

352:                                              ; preds = %345
  store i32 0, i32* %6, align 4
  br label %404

353:                                              ; preds = %345
  br label %365

354:                                              ; preds = %340
  %355 = load i32, i32* %14, align 4
  %356 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %357 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %356, i32 0, i32 2
  %358 = load i32, i32* %357, align 4
  %359 = add nsw i32 %355, %358
  store i32 %359, i32* %12, align 4
  %360 = load i32, i32* %14, align 4
  %361 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %362 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %361, i32 0, i32 3
  %363 = load i32, i32* %362, align 8
  %364 = add nsw i32 %360, %363
  store i32 %364, i32* %13, align 4
  br label %365

365:                                              ; preds = %354, %353
  %366 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %367 = call %struct.TYPE_11__* @LQL_NEXT(%struct.TYPE_11__* %366)
  store %struct.TYPE_11__* %367, %struct.TYPE_11__** %7, align 8
  %368 = load i32, i32* %16, align 4
  %369 = add nsw i32 %368, -1
  store i32 %369, i32* %16, align 4
  br label %337

370:                                              ; preds = %337
  %371 = load i32, i32* %12, align 4
  %372 = load i32, i32* %10, align 4
  %373 = icmp sgt i32 %371, %372
  br i1 %373, label %378, label %374

374:                                              ; preds = %370
  %375 = load i32, i32* %10, align 4
  %376 = load i32, i32* %13, align 4
  %377 = icmp sgt i32 %375, %376
  br i1 %377, label %378, label %379

378:                                              ; preds = %374, %370
  store i32 0, i32* %6, align 4
  br label %404

379:                                              ; preds = %374
  %380 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %381 = icmp ne %struct.TYPE_12__* %380, null
  br i1 %381, label %382, label %403

382:                                              ; preds = %379
  %383 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %384 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %383, i32 0, i32 5
  %385 = load %struct.TYPE_11__*, %struct.TYPE_11__** %384, align 8
  %386 = icmp ne %struct.TYPE_11__* %385, null
  br i1 %386, label %387, label %403

387:                                              ; preds = %382
  %388 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %389 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %388, i32 0, i32 5
  %390 = load %struct.TYPE_11__*, %struct.TYPE_11__** %389, align 8
  %391 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %392 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %391, i32 0, i32 1
  %393 = load i32, i32* %392, align 4
  %394 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %395 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %394, i32 0, i32 4
  %396 = load i32*, i32** %395, align 8
  %397 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %398 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %397, i32 0, i32 0
  %399 = load i32, i32* %398, align 8
  %400 = call i32 @checkCond(%struct.TYPE_11__* %390, i32 %393, i32* %396, i32 %399, %struct.TYPE_12__* null)
  %401 = icmp ne i32 %400, 0
  br i1 %401, label %402, label %403

402:                                              ; preds = %387
  store i32 0, i32* %6, align 4
  br label %404

403:                                              ; preds = %387, %382, %379
  store i32 1, i32* %6, align 4
  br label %404

404:                                              ; preds = %403, %402, %378, %352, %335, %278, %254, %237, %61
  %405 = load i32, i32* %6, align 4
  ret i32 %405
}

declare dso_local %struct.TYPE_11__* @LQL_NEXT(%struct.TYPE_11__*) #1

declare dso_local i32* @LEVEL_NEXT(i32*) #1

declare dso_local i32 @checkLevel(%struct.TYPE_11__*, i32*) #1

declare dso_local i32 @memcpy(%struct.TYPE_12__*, %struct.TYPE_12__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
