; ModuleID = '/home/carl/AnghaBench/radare2/libr/magic/extr_softmagic.c_match.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/magic/extr_softmagic.c_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32, %struct.TYPE_12__, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32, i32, i32 }
%struct.r_magic = type { i32, i64, i32, i8, i64, i32, i32 }

@BINTEST = common dso_local global i32 0, align 4
@R_MAGIC_DESC = common dso_local global i64* null, align 8
@OFFADD = common dso_local global i32 0, align 4
@COND_ELSE = common dso_local global i64 0, align 8
@COND_ELIF = common dso_local global i64 0, align 8
@FILE_DEFAULT = common dso_local global i32 0, align 4
@NOSPACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c" \00", align 1
@R_MAGIC_CONTINUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*, %struct.r_magic*, i64, i32*, i64, i32)* @match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @match(%struct.TYPE_13__* %0, %struct.r_magic* %1, i64 %2, i32* %3, i64 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca %struct.r_magic*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.r_magic*, align 8
  %22 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %8, align 8
  store %struct.r_magic* %1, %struct.r_magic** %9, align 8
  store i64 %2, i64* %10, align 8
  store i32* %3, i32** %11, align 8
  store i64 %4, i64* %12, align 8
  store i32 %5, i32* %13, align 4
  store i64 0, i64* %14, align 8
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  store i32 1, i32* %18, align 4
  store i32 0, i32* %19, align 4
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %24 = load i32, i32* %15, align 4
  %25 = call i32 @file_check_mem(%struct.TYPE_13__* %23, i32 %24)
  %26 = icmp eq i32 %25, -1
  br i1 %26, label %27, label %28

27:                                               ; preds = %6
  store i32 -1, i32* %7, align 4
  br label %421

28:                                               ; preds = %6
  store i64 0, i64* %14, align 8
  br label %29

29:                                               ; preds = %416, %28
  %30 = load i64, i64* %14, align 8
  %31 = load i64, i64* %10, align 8
  %32 = icmp ult i64 %30, %31
  br i1 %32, label %33, label %419

33:                                               ; preds = %29
  %34 = load %struct.r_magic*, %struct.r_magic** %9, align 8
  %35 = load i64, i64* %14, align 8
  %36 = getelementptr inbounds %struct.r_magic, %struct.r_magic* %34, i64 %35
  store %struct.r_magic* %36, %struct.r_magic** %21, align 8
  %37 = load %struct.r_magic*, %struct.r_magic** %21, align 8
  %38 = getelementptr inbounds %struct.r_magic, %struct.r_magic* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @BINTEST, align 4
  %41 = and i32 %39, %40
  %42 = load i32, i32* %13, align 4
  %43 = icmp ne i32 %41, %42
  br i1 %43, label %44, label %63

44:                                               ; preds = %33
  br label %45

45:                                               ; preds = %61, %44
  %46 = load %struct.r_magic*, %struct.r_magic** %9, align 8
  %47 = load i64, i64* %14, align 8
  %48 = add i64 %47, 1
  %49 = getelementptr inbounds %struct.r_magic, %struct.r_magic* %46, i64 %48
  %50 = getelementptr inbounds %struct.r_magic, %struct.r_magic* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %45
  %54 = load i64, i64* %14, align 8
  %55 = add i64 %54, 1
  store i64 %55, i64* %14, align 8
  %56 = load i64, i64* %10, align 8
  %57 = sub i64 %56, 1
  %58 = icmp ult i64 %55, %57
  br label %59

59:                                               ; preds = %53, %45
  %60 = phi i1 [ false, %45 ], [ %58, %53 ]
  br i1 %60, label %61, label %62

61:                                               ; preds = %59
  br label %45

62:                                               ; preds = %59
  br label %416

63:                                               ; preds = %33
  %64 = load %struct.r_magic*, %struct.r_magic** %21, align 8
  %65 = getelementptr inbounds %struct.r_magic, %struct.r_magic* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 8
  %69 = load %struct.r_magic*, %struct.r_magic** %21, align 8
  %70 = getelementptr inbounds %struct.r_magic, %struct.r_magic* %69, i32 0, i32 6
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %73 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %72, i32 0, i32 3
  store i32 %71, i32* %73, align 8
  %74 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %75 = load i32*, i32** %11, align 8
  %76 = load %struct.r_magic*, %struct.r_magic** %21, align 8
  %77 = load i64, i64* %12, align 8
  %78 = load i32, i32* %15, align 4
  %79 = call i32 @mget(%struct.TYPE_13__* %74, i32* %75, %struct.r_magic* %76, i64 %77, i32 %78)
  %80 = icmp ne i32 %79, 0
  %81 = xor i1 %80, true
  %82 = zext i1 %81 to i32
  store i32 %82, i32* %20, align 4
  %83 = load i32, i32* %20, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %93

85:                                               ; preds = %63
  %86 = load %struct.r_magic*, %struct.r_magic** %21, align 8
  %87 = getelementptr inbounds %struct.r_magic, %struct.r_magic* %86, i32 0, i32 3
  %88 = load i8, i8* %87, align 4
  %89 = sext i8 %88 to i32
  %90 = icmp eq i32 %89, 33
  br i1 %90, label %91, label %92

91:                                               ; preds = %85
  store i32 0, i32* %20, align 4
  br label %92

92:                                               ; preds = %91, %85
  br label %107

93:                                               ; preds = %63
  %94 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %95 = load %struct.r_magic*, %struct.r_magic** %21, align 8
  %96 = call i32 @magiccheck(%struct.TYPE_13__* %94, %struct.r_magic* %95)
  store i32 %96, i32* %22, align 4
  %97 = load i32, i32* %22, align 4
  %98 = icmp eq i32 %97, -1
  br i1 %98, label %99, label %100

99:                                               ; preds = %93
  store i32 -1, i32* %7, align 4
  br label %421

100:                                              ; preds = %93
  %101 = load i32, i32* %22, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %106, label %103

103:                                              ; preds = %100
  %104 = load i32, i32* %20, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %20, align 4
  br label %106

106:                                              ; preds = %103, %100
  br label %107

107:                                              ; preds = %106, %92
  %108 = load i32, i32* %20, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %130

110:                                              ; preds = %107
  br label %111

111:                                              ; preds = %126, %110
  %112 = load i64, i64* %14, align 8
  %113 = load i64, i64* %10, align 8
  %114 = sub i64 %113, 1
  %115 = icmp ult i64 %112, %114
  br i1 %115, label %116, label %124

116:                                              ; preds = %111
  %117 = load %struct.r_magic*, %struct.r_magic** %9, align 8
  %118 = load i64, i64* %14, align 8
  %119 = add i64 %118, 1
  %120 = getelementptr inbounds %struct.r_magic, %struct.r_magic* %117, i64 %119
  %121 = getelementptr inbounds %struct.r_magic, %struct.r_magic* %120, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  %123 = icmp ne i64 %122, 0
  br label %124

124:                                              ; preds = %116, %111
  %125 = phi i1 [ false, %111 ], [ %123, %116 ]
  br i1 %125, label %126, label %129

126:                                              ; preds = %124
  %127 = load i64, i64* %14, align 8
  %128 = add i64 %127, 1
  store i64 %128, i64* %14, align 8
  br label %111

129:                                              ; preds = %124
  br label %416

130:                                              ; preds = %107
  %131 = load i64*, i64** @R_MAGIC_DESC, align 8
  %132 = load i64, i64* %131, align 8
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %141

134:                                              ; preds = %130
  store i32 1, i32* %16, align 4
  store i32 1, i32* %19, align 4
  %135 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %136 = load i32, i32* %18, align 4
  %137 = call i32 @print_sep(%struct.TYPE_13__* %135, i32 %136)
  %138 = icmp eq i32 %137, -1
  br i1 %138, label %139, label %140

139:                                              ; preds = %134
  store i32 -1, i32* %7, align 4
  br label %421

140:                                              ; preds = %134
  br label %141

141:                                              ; preds = %140, %130
  %142 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %143 = load %struct.r_magic*, %struct.r_magic** %21, align 8
  %144 = call i32 @mprint(%struct.TYPE_13__* %142, %struct.r_magic* %143)
  %145 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %146 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %145, i32 0, i32 2
  %147 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %146, i32 0, i32 0
  %148 = load %struct.TYPE_11__*, %struct.TYPE_11__** %147, align 8
  %149 = load i32, i32* %15, align 4
  %150 = zext i32 %149 to i64
  %151 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %148, i64 %150
  %152 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %151, i32 0, i32 0
  store i32 %144, i32* %152, align 4
  %153 = icmp eq i32 %144, -1
  br i1 %153, label %154, label %155

154:                                              ; preds = %141
  store i32 -1, i32* %7, align 4
  br label %421

155:                                              ; preds = %141
  %156 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %157 = load i32, i32* %15, align 4
  %158 = add i32 %157, 1
  store i32 %158, i32* %15, align 4
  %159 = call i32 @file_check_mem(%struct.TYPE_13__* %156, i32 %158)
  %160 = icmp eq i32 %159, -1
  br i1 %160, label %161, label %162

161:                                              ; preds = %155
  store i32 -1, i32* %7, align 4
  br label %421

162:                                              ; preds = %155
  br label %163

163:                                              ; preds = %399, %276, %256, %193, %162
  %164 = load i64, i64* %14, align 8
  %165 = add i64 %164, 1
  store i64 %165, i64* %14, align 8
  %166 = load i64, i64* %10, align 8
  %167 = sub i64 %166, 1
  %168 = icmp ult i64 %165, %167
  br i1 %168, label %169, label %176

169:                                              ; preds = %163
  %170 = load %struct.r_magic*, %struct.r_magic** %9, align 8
  %171 = load i64, i64* %14, align 8
  %172 = getelementptr inbounds %struct.r_magic, %struct.r_magic* %170, i64 %171
  %173 = getelementptr inbounds %struct.r_magic, %struct.r_magic* %172, i32 0, i32 1
  %174 = load i64, i64* %173, align 8
  %175 = icmp ne i64 %174, 0
  br label %176

176:                                              ; preds = %169, %163
  %177 = phi i1 [ false, %163 ], [ %175, %169 ]
  br i1 %177, label %178, label %400

178:                                              ; preds = %176
  %179 = load %struct.r_magic*, %struct.r_magic** %9, align 8
  %180 = load i64, i64* %14, align 8
  %181 = getelementptr inbounds %struct.r_magic, %struct.r_magic* %179, i64 %180
  store %struct.r_magic* %181, %struct.r_magic** %21, align 8
  %182 = load %struct.r_magic*, %struct.r_magic** %21, align 8
  %183 = getelementptr inbounds %struct.r_magic, %struct.r_magic* %182, i32 0, i32 6
  %184 = load i32, i32* %183, align 4
  %185 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %186 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %185, i32 0, i32 3
  store i32 %184, i32* %186, align 8
  %187 = load i32, i32* %15, align 4
  %188 = zext i32 %187 to i64
  %189 = load %struct.r_magic*, %struct.r_magic** %21, align 8
  %190 = getelementptr inbounds %struct.r_magic, %struct.r_magic* %189, i32 0, i32 1
  %191 = load i64, i64* %190, align 8
  %192 = icmp slt i64 %188, %191
  br i1 %192, label %193, label %194

193:                                              ; preds = %178
  br label %163

194:                                              ; preds = %178
  %195 = load i32, i32* %15, align 4
  %196 = zext i32 %195 to i64
  %197 = load %struct.r_magic*, %struct.r_magic** %21, align 8
  %198 = getelementptr inbounds %struct.r_magic, %struct.r_magic* %197, i32 0, i32 1
  %199 = load i64, i64* %198, align 8
  %200 = icmp sgt i64 %196, %199
  br i1 %200, label %201, label %206

201:                                              ; preds = %194
  %202 = load %struct.r_magic*, %struct.r_magic** %21, align 8
  %203 = getelementptr inbounds %struct.r_magic, %struct.r_magic* %202, i32 0, i32 1
  %204 = load i64, i64* %203, align 8
  %205 = trunc i64 %204 to i32
  store i32 %205, i32* %15, align 4
  br label %206

206:                                              ; preds = %201, %194
  %207 = load %struct.r_magic*, %struct.r_magic** %21, align 8
  %208 = getelementptr inbounds %struct.r_magic, %struct.r_magic* %207, i32 0, i32 2
  %209 = load i32, i32* %208, align 8
  %210 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %211 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %210, i32 0, i32 0
  store i32 %209, i32* %211, align 8
  %212 = load %struct.r_magic*, %struct.r_magic** %21, align 8
  %213 = getelementptr inbounds %struct.r_magic, %struct.r_magic* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 8
  %215 = load i32, i32* @OFFADD, align 4
  %216 = and i32 %214, %215
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %233

218:                                              ; preds = %206
  %219 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %220 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %219, i32 0, i32 2
  %221 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %220, i32 0, i32 0
  %222 = load %struct.TYPE_11__*, %struct.TYPE_11__** %221, align 8
  %223 = load i32, i32* %15, align 4
  %224 = sub i32 %223, 1
  %225 = zext i32 %224 to i64
  %226 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %222, i64 %225
  %227 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %226, i32 0, i32 0
  %228 = load i32, i32* %227, align 4
  %229 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %230 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %229, i32 0, i32 0
  %231 = load i32, i32* %230, align 8
  %232 = add nsw i32 %231, %228
  store i32 %232, i32* %230, align 8
  br label %233

233:                                              ; preds = %218, %206
  %234 = load %struct.r_magic*, %struct.r_magic** %21, align 8
  %235 = getelementptr inbounds %struct.r_magic, %struct.r_magic* %234, i32 0, i32 4
  %236 = load i64, i64* %235, align 8
  %237 = load i64, i64* @COND_ELSE, align 8
  %238 = icmp eq i64 %236, %237
  br i1 %238, label %245, label %239

239:                                              ; preds = %233
  %240 = load %struct.r_magic*, %struct.r_magic** %21, align 8
  %241 = getelementptr inbounds %struct.r_magic, %struct.r_magic* %240, i32 0, i32 4
  %242 = load i64, i64* %241, align 8
  %243 = load i64, i64* @COND_ELIF, align 8
  %244 = icmp eq i64 %242, %243
  br i1 %244, label %245, label %258

245:                                              ; preds = %239, %233
  %246 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %247 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %246, i32 0, i32 2
  %248 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %247, i32 0, i32 0
  %249 = load %struct.TYPE_11__*, %struct.TYPE_11__** %248, align 8
  %250 = load i32, i32* %15, align 4
  %251 = zext i32 %250 to i64
  %252 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %249, i64 %251
  %253 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %252, i32 0, i32 1
  %254 = load i32, i32* %253, align 4
  %255 = icmp eq i32 %254, 1
  br i1 %255, label %256, label %257

256:                                              ; preds = %245
  br label %163

257:                                              ; preds = %245
  br label %258

258:                                              ; preds = %257, %239
  %259 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %260 = load i32*, i32** %11, align 8
  %261 = load %struct.r_magic*, %struct.r_magic** %21, align 8
  %262 = load i64, i64* %12, align 8
  %263 = load i32, i32* %15, align 4
  %264 = call i32 @mget(%struct.TYPE_13__* %259, i32* %260, %struct.r_magic* %261, i64 %262, i32 %263)
  %265 = icmp ne i32 %264, 0
  %266 = xor i1 %265, true
  %267 = zext i1 %266 to i32
  store i32 %267, i32* %20, align 4
  %268 = load i32, i32* %20, align 4
  %269 = icmp ne i32 %268, 0
  br i1 %269, label %270, label %277

270:                                              ; preds = %258
  %271 = load %struct.r_magic*, %struct.r_magic** %21, align 8
  %272 = getelementptr inbounds %struct.r_magic, %struct.r_magic* %271, i32 0, i32 3
  %273 = load i8, i8* %272, align 4
  %274 = sext i8 %273 to i32
  %275 = icmp ne i32 %274, 33
  br i1 %275, label %276, label %277

276:                                              ; preds = %270
  br label %163

277:                                              ; preds = %270, %258
  %278 = load i32, i32* %20, align 4
  %279 = icmp ne i32 %278, 0
  br i1 %279, label %280, label %281

280:                                              ; preds = %277
  br label %285

281:                                              ; preds = %277
  %282 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %283 = load %struct.r_magic*, %struct.r_magic** %21, align 8
  %284 = call i32 @magiccheck(%struct.TYPE_13__* %282, %struct.r_magic* %283)
  br label %285

285:                                              ; preds = %281, %280
  %286 = phi i32 [ 1, %280 ], [ %284, %281 ]
  switch i32 %286, label %297 [
    i32 -1, label %287
    i32 0, label %288
  ]

287:                                              ; preds = %285
  store i32 -1, i32* %7, align 4
  br label %421

288:                                              ; preds = %285
  %289 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %290 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %289, i32 0, i32 2
  %291 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %290, i32 0, i32 0
  %292 = load %struct.TYPE_11__*, %struct.TYPE_11__** %291, align 8
  %293 = load i32, i32* %15, align 4
  %294 = zext i32 %293 to i64
  %295 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %292, i64 %294
  %296 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %295, i32 0, i32 1
  store i32 0, i32* %296, align 4
  br label %399

297:                                              ; preds = %285
  %298 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %299 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %298, i32 0, i32 2
  %300 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %299, i32 0, i32 0
  %301 = load %struct.TYPE_11__*, %struct.TYPE_11__** %300, align 8
  %302 = load i32, i32* %15, align 4
  %303 = zext i32 %302 to i64
  %304 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %301, i64 %303
  %305 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %304, i32 0, i32 1
  store i32 1, i32* %305, align 4
  %306 = load %struct.r_magic*, %struct.r_magic** %21, align 8
  %307 = getelementptr inbounds %struct.r_magic, %struct.r_magic* %306, i32 0, i32 5
  %308 = load i32, i32* %307, align 8
  %309 = load i32, i32* @FILE_DEFAULT, align 4
  %310 = icmp ne i32 %308, %309
  br i1 %310, label %311, label %320

311:                                              ; preds = %297
  %312 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %313 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %312, i32 0, i32 2
  %314 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %313, i32 0, i32 0
  %315 = load %struct.TYPE_11__*, %struct.TYPE_11__** %314, align 8
  %316 = load i32, i32* %15, align 4
  %317 = zext i32 %316 to i64
  %318 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %315, i64 %317
  %319 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %318, i32 0, i32 2
  store i32 1, i32* %319, align 4
  br label %341

320:                                              ; preds = %297
  %321 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %322 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %321, i32 0, i32 2
  %323 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %322, i32 0, i32 0
  %324 = load %struct.TYPE_11__*, %struct.TYPE_11__** %323, align 8
  %325 = load i32, i32* %15, align 4
  %326 = zext i32 %325 to i64
  %327 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %324, i64 %326
  %328 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %327, i32 0, i32 2
  %329 = load i32, i32* %328, align 4
  %330 = icmp ne i32 %329, 0
  br i1 %330, label %331, label %340

331:                                              ; preds = %320
  %332 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %333 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %332, i32 0, i32 2
  %334 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %333, i32 0, i32 0
  %335 = load %struct.TYPE_11__*, %struct.TYPE_11__** %334, align 8
  %336 = load i32, i32* %15, align 4
  %337 = zext i32 %336 to i64
  %338 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %335, i64 %337
  %339 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %338, i32 0, i32 2
  store i32 0, i32* %339, align 4
  br label %399

340:                                              ; preds = %320
  br label %341

341:                                              ; preds = %340, %311
  %342 = load i64*, i64** @R_MAGIC_DESC, align 8
  %343 = load i64, i64* %342, align 8
  %344 = icmp ne i64 %343, 0
  br i1 %344, label %345, label %352

345:                                              ; preds = %341
  store i32 1, i32* %19, align 4
  %346 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %347 = load i32, i32* %18, align 4
  %348 = call i32 @print_sep(%struct.TYPE_13__* %346, i32 %347)
  %349 = icmp eq i32 %348, -1
  br i1 %349, label %350, label %351

350:                                              ; preds = %345
  store i32 -1, i32* %7, align 4
  br label %421

351:                                              ; preds = %345
  br label %352

352:                                              ; preds = %351, %341
  %353 = load i32, i32* %16, align 4
  %354 = icmp ne i32 %353, 0
  br i1 %354, label %355, label %372

355:                                              ; preds = %352
  %356 = load %struct.r_magic*, %struct.r_magic** %21, align 8
  %357 = getelementptr inbounds %struct.r_magic, %struct.r_magic* %356, i32 0, i32 0
  %358 = load i32, i32* %357, align 8
  %359 = load i32, i32* @NOSPACE, align 4
  %360 = and i32 %358, %359
  %361 = icmp eq i32 %360, 0
  br i1 %361, label %362, label %372

362:                                              ; preds = %355
  %363 = load i64*, i64** @R_MAGIC_DESC, align 8
  %364 = load i64, i64* %363, align 8
  %365 = icmp ne i64 %364, 0
  br i1 %365, label %366, label %372

366:                                              ; preds = %362
  %367 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %368 = call i32 @file_printf(%struct.TYPE_13__* %367, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %369 = icmp eq i32 %368, -1
  br i1 %369, label %370, label %371

370:                                              ; preds = %366
  store i32 -1, i32* %7, align 4
  br label %421

371:                                              ; preds = %366
  store i32 0, i32* %16, align 4
  br label %372

372:                                              ; preds = %371, %362, %355, %352
  %373 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %374 = load %struct.r_magic*, %struct.r_magic** %21, align 8
  %375 = call i32 @mprint(%struct.TYPE_13__* %373, %struct.r_magic* %374)
  %376 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %377 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %376, i32 0, i32 2
  %378 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %377, i32 0, i32 0
  %379 = load %struct.TYPE_11__*, %struct.TYPE_11__** %378, align 8
  %380 = load i32, i32* %15, align 4
  %381 = zext i32 %380 to i64
  %382 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %379, i64 %381
  %383 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %382, i32 0, i32 0
  store i32 %375, i32* %383, align 4
  %384 = icmp eq i32 %375, -1
  br i1 %384, label %385, label %386

385:                                              ; preds = %372
  store i32 -1, i32* %7, align 4
  br label %421

386:                                              ; preds = %372
  %387 = load i64*, i64** @R_MAGIC_DESC, align 8
  %388 = load i64, i64* %387, align 8
  %389 = icmp ne i64 %388, 0
  br i1 %389, label %390, label %391

390:                                              ; preds = %386
  store i32 1, i32* %16, align 4
  br label %391

391:                                              ; preds = %390, %386
  %392 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %393 = load i32, i32* %15, align 4
  %394 = add i32 %393, 1
  store i32 %394, i32* %15, align 4
  %395 = call i32 @file_check_mem(%struct.TYPE_13__* %392, i32 %394)
  %396 = icmp eq i32 %395, -1
  br i1 %396, label %397, label %398

397:                                              ; preds = %391
  store i32 -1, i32* %7, align 4
  br label %421

398:                                              ; preds = %391
  br label %399

399:                                              ; preds = %398, %331, %288
  br label %163

400:                                              ; preds = %176
  %401 = load i32, i32* %19, align 4
  %402 = icmp ne i32 %401, 0
  br i1 %402, label %403, label %404

403:                                              ; preds = %400
  store i32 0, i32* %18, align 4
  store i32 1, i32* %17, align 4
  br label %404

404:                                              ; preds = %403, %400
  %405 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %406 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %405, i32 0, i32 1
  %407 = load i32, i32* %406, align 4
  %408 = load i32, i32* @R_MAGIC_CONTINUE, align 4
  %409 = and i32 %407, %408
  %410 = icmp eq i32 %409, 0
  br i1 %410, label %411, label %415

411:                                              ; preds = %404
  %412 = load i32, i32* %19, align 4
  %413 = icmp ne i32 %412, 0
  br i1 %413, label %414, label %415

414:                                              ; preds = %411
  store i32 1, i32* %7, align 4
  br label %421

415:                                              ; preds = %411, %404
  br label %416

416:                                              ; preds = %415, %129, %62
  %417 = load i64, i64* %14, align 8
  %418 = add i64 %417, 1
  store i64 %418, i64* %14, align 8
  br label %29

419:                                              ; preds = %29
  %420 = load i32, i32* %17, align 4
  store i32 %420, i32* %7, align 4
  br label %421

421:                                              ; preds = %419, %414, %397, %385, %370, %350, %287, %161, %154, %139, %99, %27
  %422 = load i32, i32* %7, align 4
  ret i32 %422
}

declare dso_local i32 @file_check_mem(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @mget(%struct.TYPE_13__*, i32*, %struct.r_magic*, i64, i32) #1

declare dso_local i32 @magiccheck(%struct.TYPE_13__*, %struct.r_magic*) #1

declare dso_local i32 @print_sep(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @mprint(%struct.TYPE_13__*, %struct.r_magic*) #1

declare dso_local i32 @file_printf(%struct.TYPE_13__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
