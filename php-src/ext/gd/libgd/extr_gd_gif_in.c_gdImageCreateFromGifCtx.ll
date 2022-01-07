; ModuleID = '/home/carl/AnghaBench/php-src/ext/gd/libgd/extr_gd_gif_in.c_gdImageCreateFromGifCtx.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/gd/libgd/extr_gd_gif_in.c_gdImageCreateFromGifCtx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i64*, i8* }

@MAXCOLORMAPSIZE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"GIF\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"87a\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"89a\00", align 1
@LOCALCOLORMAP = common dso_local global i32 0, align 4
@VERBOSE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [44 x i8] c"Frame is not confined to screen dimension.\0A\00", align 1
@INTERLACE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_7__* @gdImageCreateFromGifCtx(i32 %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [16 x i8], align 16
  %7 = alloca i8, align 1
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.TYPE_7__*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 -1, i32* %5, align 4
  %26 = load i32, i32* @MAXCOLORMAPSIZE, align 4
  %27 = zext i32 %26 to i64
  %28 = call i8* @llvm.stacksave()
  store i8* %28, i8** %8, align 8
  %29 = mul nuw i64 3, %27
  %30 = alloca i8, i64 %29, align 16
  store i64 %27, i64* %9, align 8
  %31 = load i32, i32* @MAXCOLORMAPSIZE, align 4
  %32 = zext i32 %31 to i64
  %33 = mul nuw i64 3, %32
  %34 = alloca i8, i64 %33, align 16
  store i64 %32, i64* %10, align 8
  %35 = load i32, i32* @FALSE, align 4
  store i32 %35, i32* %18, align 4
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %20, align 8
  %36 = bitcast i8* %30 to i8**
  %37 = load i32, i32* @MAXCOLORMAPSIZE, align 4
  %38 = mul nsw i32 3, %37
  %39 = call i32 @memset(i8** %36, i32 0, i32 %38)
  %40 = bitcast i8* %34 to i8**
  %41 = load i32, i32* @MAXCOLORMAPSIZE, align 4
  %42 = mul nsw i32 3, %41
  %43 = call i32 @memset(i8** %40, i32 0, i32 %42)
  %44 = load i32, i32* %3, align 4
  %45 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 0
  %46 = call i32 @ReadOK(i32 %44, i8* %45, i32 6)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %1
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %2, align 8
  store i32 1, i32* %21, align 4
  br label %292

49:                                               ; preds = %1
  %50 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 0
  %51 = call i64 @strncmp(i8* %50, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 3)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %49
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %2, align 8
  store i32 1, i32* %21, align 4
  br label %292

54:                                               ; preds = %49
  %55 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 0
  %56 = getelementptr inbounds i8, i8* %55, i64 3
  %57 = call i64 @memcmp(i8* %56, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 3)
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %54
  br label %68

60:                                               ; preds = %54
  %61 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 0
  %62 = getelementptr inbounds i8, i8* %61, i64 3
  %63 = call i64 @memcmp(i8* %62, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 3)
  %64 = icmp eq i64 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %60
  br label %67

66:                                               ; preds = %60
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %2, align 8
  store i32 1, i32* %21, align 4
  br label %292

67:                                               ; preds = %65
  br label %68

68:                                               ; preds = %67, %59
  %69 = load i32, i32* %3, align 4
  %70 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 0
  %71 = call i32 @ReadOK(i32 %69, i8* %70, i32 7)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %74, label %73

73:                                               ; preds = %68
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %2, align 8
  store i32 1, i32* %21, align 4
  br label %292

74:                                               ; preds = %68
  %75 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 4
  %76 = load i8, i8* %75, align 4
  %77 = zext i8 %76 to i32
  %78 = and i32 %77, 7
  %79 = shl i32 2, %78
  store i32 %79, i32* %4, align 4
  %80 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 0
  %81 = load i8, i8* %80, align 16
  %82 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 1
  %83 = load i8, i8* %82, align 1
  %84 = call i32 @LM_to_uint(i8 zeroext %81, i8 zeroext %83)
  store i32 %84, i32* %11, align 4
  store i32 %84, i32* %13, align 4
  %85 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 2
  %86 = load i8, i8* %85, align 2
  %87 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 3
  %88 = load i8, i8* %87, align 1
  %89 = call i32 @LM_to_uint(i8 zeroext %86, i8 zeroext %88)
  store i32 %89, i32* %12, align 4
  store i32 %89, i32* %14, align 4
  %90 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 4
  %91 = load i8, i8* %90, align 4
  %92 = load i32, i32* @LOCALCOLORMAP, align 4
  %93 = call i8* @BitSet(i8 zeroext %91, i32 %92)
  %94 = ptrtoint i8* %93 to i32
  store i32 %94, i32* %19, align 4
  %95 = load i32, i32* %19, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %105

97:                                               ; preds = %74
  %98 = load i32, i32* %3, align 4
  %99 = load i32, i32* %4, align 4
  %100 = bitcast i8* %30 to i8**
  %101 = call i64 @ReadColorMap(i32 %98, i32 %99, i8** %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %97
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %2, align 8
  store i32 1, i32* %21, align 4
  br label %292

104:                                              ; preds = %97
  br label %105

105:                                              ; preds = %104, %74
  br label %106

106:                                              ; preds = %133, %125, %105
  %107 = load i32, i32* %3, align 4
  %108 = call i32 @ReadOK(i32 %107, i8* %7, i32 1)
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %111, label %110

110:                                              ; preds = %106
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %2, align 8
  store i32 1, i32* %21, align 4
  br label %292

111:                                              ; preds = %106
  %112 = load i8, i8* %7, align 1
  %113 = zext i8 %112 to i32
  %114 = icmp eq i32 %113, 59
  br i1 %114, label %115, label %116

115:                                              ; preds = %111
  br label %251

116:                                              ; preds = %111
  %117 = load i8, i8* %7, align 1
  %118 = zext i8 %117 to i32
  %119 = icmp eq i32 %118, 33
  br i1 %119, label %120, label %129

120:                                              ; preds = %116
  %121 = load i32, i32* %3, align 4
  %122 = call i32 @ReadOK(i32 %121, i8* %7, i32 1)
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %125, label %124

124:                                              ; preds = %120
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %2, align 8
  store i32 1, i32* %21, align 4
  br label %292

125:                                              ; preds = %120
  %126 = load i32, i32* %3, align 4
  %127 = load i8, i8* %7, align 1
  %128 = call i32 @DoExtension(i32 %126, i8 zeroext %127, i32* %5, i32* %18)
  br label %106

129:                                              ; preds = %116
  %130 = load i8, i8* %7, align 1
  %131 = zext i8 %130 to i32
  %132 = icmp ne i32 %131, 44
  br i1 %132, label %133, label %134

133:                                              ; preds = %129
  br label %106

134:                                              ; preds = %129
  %135 = load i32, i32* %3, align 4
  %136 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 0
  %137 = call i32 @ReadOK(i32 %135, i8* %136, i32 9)
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %140, label %139

139:                                              ; preds = %134
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %2, align 8
  store i32 1, i32* %21, align 4
  br label %292

140:                                              ; preds = %134
  %141 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 8
  %142 = load i8, i8* %141, align 8
  %143 = load i32, i32* @LOCALCOLORMAP, align 4
  %144 = call i8* @BitSet(i8 zeroext %142, i32 %143)
  %145 = icmp ne i8* %144, null
  %146 = xor i1 %145, true
  %147 = zext i1 %146 to i32
  store i32 %147, i32* %15, align 4
  %148 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 8
  %149 = load i8, i8* %148, align 8
  %150 = zext i8 %149 to i32
  %151 = and i32 %150, 7
  %152 = add nsw i32 %151, 1
  %153 = shl i32 1, %152
  store i32 %153, i32* %16, align 4
  %154 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 0
  %155 = load i8, i8* %154, align 16
  %156 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 1
  %157 = load i8, i8* %156, align 1
  %158 = call i32 @LM_to_uint(i8 zeroext %155, i8 zeroext %157)
  store i32 %158, i32* %23, align 4
  %159 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 2
  %160 = load i8, i8* %159, align 2
  %161 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 3
  %162 = load i8, i8* %161, align 1
  %163 = call i32 @LM_to_uint(i8 zeroext %160, i8 zeroext %162)
  store i32 %163, i32* %22, align 4
  %164 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 4
  %165 = load i8, i8* %164, align 4
  %166 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 5
  %167 = load i8, i8* %166, align 1
  %168 = call i32 @LM_to_uint(i8 zeroext %165, i8 zeroext %167)
  store i32 %168, i32* %24, align 4
  %169 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 6
  %170 = load i8, i8* %169, align 2
  %171 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 7
  %172 = load i8, i8* %171, align 1
  %173 = call i32 @LM_to_uint(i8 zeroext %170, i8 zeroext %172)
  store i32 %173, i32* %25, align 4
  %174 = load i32, i32* %23, align 4
  %175 = load i32, i32* %24, align 4
  %176 = add nsw i32 %174, %175
  %177 = load i32, i32* %13, align 4
  %178 = icmp sgt i32 %176, %177
  br i1 %178, label %185, label %179

179:                                              ; preds = %140
  %180 = load i32, i32* %22, align 4
  %181 = load i32, i32* %25, align 4
  %182 = add nsw i32 %180, %181
  %183 = load i32, i32* %14, align 4
  %184 = icmp sgt i32 %182, %183
  br i1 %184, label %185, label %191

185:                                              ; preds = %179, %140
  %186 = load i64, i64* @VERBOSE, align 8
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %188, label %190

188:                                              ; preds = %185
  %189 = call i32 @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0))
  br label %190

190:                                              ; preds = %188, %185
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %2, align 8
  store i32 1, i32* %21, align 4
  br label %292

191:                                              ; preds = %179
  %192 = load i32, i32* %24, align 4
  %193 = load i32, i32* %25, align 4
  %194 = call %struct.TYPE_7__* @gdImageCreate(i32 %192, i32 %193)
  store %struct.TYPE_7__* %194, %struct.TYPE_7__** %20, align 8
  %195 = icmp ne %struct.TYPE_7__* %194, null
  br i1 %195, label %197, label %196

196:                                              ; preds = %191
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %2, align 8
  store i32 1, i32* %21, align 4
  br label %292

197:                                              ; preds = %191
  %198 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 8
  %199 = load i8, i8* %198, align 8
  %200 = load i32, i32* @INTERLACE, align 4
  %201 = call i8* @BitSet(i8 zeroext %199, i32 %200)
  %202 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %203 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %202, i32 0, i32 2
  store i8* %201, i8** %203, align 8
  %204 = load i32, i32* %15, align 4
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %226, label %206

206:                                              ; preds = %197
  %207 = load i32, i32* %3, align 4
  %208 = load i32, i32* %16, align 4
  %209 = bitcast i8* %34 to i8**
  %210 = call i64 @ReadColorMap(i32 %207, i32 %208, i8** %209)
  %211 = icmp ne i64 %210, 0
  br i1 %211, label %212, label %215

212:                                              ; preds = %206
  %213 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %214 = call i32 @gdImageDestroy(%struct.TYPE_7__* %213)
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %2, align 8
  store i32 1, i32* %21, align 4
  br label %292

215:                                              ; preds = %206
  %216 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %217 = load i32, i32* %3, align 4
  %218 = load i32, i32* %24, align 4
  %219 = load i32, i32* %25, align 4
  %220 = bitcast i8* %34 to i8**
  %221 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 8
  %222 = load i8, i8* %221, align 8
  %223 = load i32, i32* @INTERLACE, align 4
  %224 = call i8* @BitSet(i8 zeroext %222, i32 %223)
  %225 = call i32 @ReadImage(%struct.TYPE_7__* %216, i32 %217, i32 %218, i32 %219, i8** %220, i8* %224, i32* %18)
  br label %243

226:                                              ; preds = %197
  %227 = load i32, i32* %19, align 4
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %232, label %229

229:                                              ; preds = %226
  %230 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %231 = call i32 @gdImageDestroy(%struct.TYPE_7__* %230)
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %2, align 8
  store i32 1, i32* %21, align 4
  br label %292

232:                                              ; preds = %226
  %233 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %234 = load i32, i32* %3, align 4
  %235 = load i32, i32* %24, align 4
  %236 = load i32, i32* %25, align 4
  %237 = bitcast i8* %30 to i8**
  %238 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 8
  %239 = load i8, i8* %238, align 8
  %240 = load i32, i32* @INTERLACE, align 4
  %241 = call i8* @BitSet(i8 zeroext %239, i32 %240)
  %242 = call i32 @ReadImage(%struct.TYPE_7__* %233, i32 %234, i32 %235, i32 %236, i8** %237, i8* %241, i32* %18)
  br label %243

243:                                              ; preds = %232, %215
  %244 = load i32, i32* %5, align 4
  %245 = icmp ne i32 %244, -1
  br i1 %245, label %246, label %250

246:                                              ; preds = %243
  %247 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %248 = load i32, i32* %5, align 4
  %249 = call i32 @gdImageColorTransparent(%struct.TYPE_7__* %247, i32 %248)
  br label %250

250:                                              ; preds = %246, %243
  br label %251

251:                                              ; preds = %250, %115
  %252 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %253 = icmp ne %struct.TYPE_7__* %252, null
  br i1 %253, label %255, label %254

254:                                              ; preds = %251
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %2, align 8
  store i32 1, i32* %21, align 4
  br label %292

255:                                              ; preds = %251
  %256 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %257 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %256, i32 0, i32 0
  %258 = load i32, i32* %257, align 8
  %259 = sub nsw i32 %258, 1
  store i32 %259, i32* %17, align 4
  br label %260

260:                                              ; preds = %279, %255
  %261 = load i32, i32* %17, align 4
  %262 = icmp sge i32 %261, 0
  br i1 %262, label %263, label %282

263:                                              ; preds = %260
  %264 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %265 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %264, i32 0, i32 1
  %266 = load i64*, i64** %265, align 8
  %267 = load i32, i32* %17, align 4
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds i64, i64* %266, i64 %268
  %270 = load i64, i64* %269, align 8
  %271 = icmp ne i64 %270, 0
  br i1 %271, label %272, label %277

272:                                              ; preds = %263
  %273 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %274 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %273, i32 0, i32 0
  %275 = load i32, i32* %274, align 8
  %276 = add nsw i32 %275, -1
  store i32 %276, i32* %274, align 8
  br label %278

277:                                              ; preds = %263
  br label %282

278:                                              ; preds = %272
  br label %279

279:                                              ; preds = %278
  %280 = load i32, i32* %17, align 4
  %281 = add nsw i32 %280, -1
  store i32 %281, i32* %17, align 4
  br label %260

282:                                              ; preds = %277, %260
  %283 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %284 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %283, i32 0, i32 0
  %285 = load i32, i32* %284, align 8
  %286 = icmp ne i32 %285, 0
  br i1 %286, label %290, label %287

287:                                              ; preds = %282
  %288 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %289 = call i32 @gdImageDestroy(%struct.TYPE_7__* %288)
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %2, align 8
  store i32 1, i32* %21, align 4
  br label %292

290:                                              ; preds = %282
  %291 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  store %struct.TYPE_7__* %291, %struct.TYPE_7__** %2, align 8
  store i32 1, i32* %21, align 4
  br label %292

292:                                              ; preds = %290, %287, %254, %229, %212, %196, %190, %139, %124, %110, %103, %73, %66, %53, %48
  %293 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %293)
  %294 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  ret %struct.TYPE_7__* %294
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(i8**, i32, i32) #2

declare dso_local i32 @ReadOK(i32, i8*, i32) #2

declare dso_local i64 @strncmp(i8*, i8*, i32) #2

declare dso_local i64 @memcmp(i8*, i8*, i32) #2

declare dso_local i32 @LM_to_uint(i8 zeroext, i8 zeroext) #2

declare dso_local i8* @BitSet(i8 zeroext, i32) #2

declare dso_local i64 @ReadColorMap(i32, i32, i8**) #2

declare dso_local i32 @DoExtension(i32, i8 zeroext, i32*, i32*) #2

declare dso_local i32 @printf(i8*) #2

declare dso_local %struct.TYPE_7__* @gdImageCreate(i32, i32) #2

declare dso_local i32 @gdImageDestroy(%struct.TYPE_7__*) #2

declare dso_local i32 @ReadImage(%struct.TYPE_7__*, i32, i32, i32, i8**, i8*, i32*) #2

declare dso_local i32 @gdImageColorTransparent(%struct.TYPE_7__*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
