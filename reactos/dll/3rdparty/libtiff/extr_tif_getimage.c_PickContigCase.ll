; ModuleID = '/home/carl/AnghaBench/reactos/dll/3rdparty/libtiff/extr_tif_getimage.c_PickContigCase.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/3rdparty/libtiff/extr_tif_getimage.c_PickContigCase.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, i32, %struct.TYPE_9__, i32*, i32, i32, i32 }
%struct.TYPE_9__ = type { i32* }

@gtTileContig = common dso_local global i32* null, align 8
@gtStripContig = common dso_local global i32* null, align 8
@EXTRASAMPLE_ASSOCALPHA = common dso_local global i32 0, align 4
@putRGBAAcontig8bittile = common dso_local global i32* null, align 8
@EXTRASAMPLE_UNASSALPHA = common dso_local global i32 0, align 4
@putRGBUAcontig8bittile = common dso_local global i32* null, align 8
@putRGBcontig8bittile = common dso_local global i32* null, align 8
@putRGBAAcontig16bittile = common dso_local global i32* null, align 8
@putRGBUAcontig16bittile = common dso_local global i32* null, align 8
@putRGBcontig16bittile = common dso_local global i32* null, align 8
@putRGBcontig8bitCMYKtile = common dso_local global i32* null, align 8
@putRGBcontig8bitCMYKMaptile = common dso_local global i32* null, align 8
@put8bitcmaptile = common dso_local global i32* null, align 8
@put4bitcmaptile = common dso_local global i32* null, align 8
@put2bitcmaptile = common dso_local global i32* null, align 8
@put1bitcmaptile = common dso_local global i32* null, align 8
@put16bitbwtile = common dso_local global i32* null, align 8
@putagreytile = common dso_local global i32* null, align 8
@putgreytile = common dso_local global i32* null, align 8
@put4bitbwtile = common dso_local global i32* null, align 8
@put2bitbwtile = common dso_local global i32* null, align 8
@put1bitbwtile = common dso_local global i32* null, align 8
@TIFFTAG_YCBCRSUBSAMPLING = common dso_local global i32 0, align 4
@putcontig8bitYCbCr44tile = common dso_local global i32* null, align 8
@putcontig8bitYCbCr42tile = common dso_local global i32* null, align 8
@putcontig8bitYCbCr41tile = common dso_local global i32* null, align 8
@putcontig8bitYCbCr22tile = common dso_local global i32* null, align 8
@putcontig8bitYCbCr21tile = common dso_local global i32* null, align 8
@putcontig8bitYCbCr12tile = common dso_local global i32* null, align 8
@putcontig8bitYCbCr11tile = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*)* @PickContigCase to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @PickContigCase(%struct.TYPE_10__* %0) #0 {
  %2 = alloca %struct.TYPE_10__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %2, align 8
  %5 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 5
  %7 = load i32, i32* %6, align 8
  %8 = call i64 @TIFFIsTiled(i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32*, i32** @gtTileContig, align 8
  br label %14

12:                                               ; preds = %1
  %13 = load i32*, i32** @gtStripContig, align 8
  br label %14

14:                                               ; preds = %12, %10
  %15 = phi i32* [ %11, %10 ], [ %13, %12 ]
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 4
  store i32* %15, i32** %17, align 8
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 3
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 0
  store i32* null, i32** %20, align 8
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  switch i32 %23, label %340 [
    i32 130, label %24
    i32 129, label %143
    i32 131, label %175
    i32 132, label %205
    i32 133, label %205
    i32 128, label %256
    i32 134, label %318
  ]

24:                                               ; preds = %14
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  switch i32 %27, label %142 [
    i32 8, label %28
    i32 16, label %78
  ]

28:                                               ; preds = %24
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 6
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @EXTRASAMPLE_ASSOCALPHA, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %44

34:                                               ; preds = %28
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = icmp sge i32 %37, 4
  br i1 %38, label %39, label %44

39:                                               ; preds = %34
  %40 = load i32*, i32** @putRGBAAcontig8bittile, align 8
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 3
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 0
  store i32* %40, i32** %43, align 8
  br label %77

44:                                               ; preds = %34, %28
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 6
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @EXTRASAMPLE_UNASSALPHA, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %65

50:                                               ; preds = %44
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = icmp sge i32 %53, 4
  br i1 %54, label %55, label %65

55:                                               ; preds = %50
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %57 = call i32 @BuildMapUaToAa(%struct.TYPE_10__* %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %55
  %60 = load i32*, i32** @putRGBUAcontig8bittile, align 8
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 3
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 0
  store i32* %60, i32** %63, align 8
  br label %64

64:                                               ; preds = %59, %55
  br label %76

65:                                               ; preds = %50, %44
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = icmp sge i32 %68, 3
  br i1 %69, label %70, label %75

70:                                               ; preds = %65
  %71 = load i32*, i32** @putRGBcontig8bittile, align 8
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 3
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 0
  store i32* %71, i32** %74, align 8
  br label %75

75:                                               ; preds = %70, %65
  br label %76

76:                                               ; preds = %75, %64
  br label %77

77:                                               ; preds = %76, %39
  br label %142

78:                                               ; preds = %24
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 6
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @EXTRASAMPLE_ASSOCALPHA, align 4
  %83 = icmp eq i32 %81, %82
  br i1 %83, label %84, label %99

84:                                               ; preds = %78
  %85 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = icmp sge i32 %87, 4
  br i1 %88, label %89, label %99

89:                                               ; preds = %84
  %90 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %91 = call i32 @BuildMapBitdepth16To8(%struct.TYPE_10__* %90)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %98

93:                                               ; preds = %89
  %94 = load i32*, i32** @putRGBAAcontig16bittile, align 8
  %95 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i32 0, i32 3
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %96, i32 0, i32 0
  store i32* %94, i32** %97, align 8
  br label %98

98:                                               ; preds = %93, %89
  br label %141

99:                                               ; preds = %84, %78
  %100 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %100, i32 0, i32 6
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* @EXTRASAMPLE_UNASSALPHA, align 4
  %104 = icmp eq i32 %102, %103
  br i1 %104, label %105, label %124

105:                                              ; preds = %99
  %106 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 8
  %109 = icmp sge i32 %108, 4
  br i1 %109, label %110, label %124

110:                                              ; preds = %105
  %111 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %112 = call i32 @BuildMapBitdepth16To8(%struct.TYPE_10__* %111)
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %123

114:                                              ; preds = %110
  %115 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %116 = call i32 @BuildMapUaToAa(%struct.TYPE_10__* %115)
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %123

118:                                              ; preds = %114
  %119 = load i32*, i32** @putRGBUAcontig16bittile, align 8
  %120 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %121 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %120, i32 0, i32 3
  %122 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %121, i32 0, i32 0
  store i32* %119, i32** %122, align 8
  br label %123

123:                                              ; preds = %118, %114, %110
  br label %140

124:                                              ; preds = %105, %99
  %125 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %126 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 8
  %128 = icmp sge i32 %127, 3
  br i1 %128, label %129, label %139

129:                                              ; preds = %124
  %130 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %131 = call i32 @BuildMapBitdepth16To8(%struct.TYPE_10__* %130)
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %138

133:                                              ; preds = %129
  %134 = load i32*, i32** @putRGBcontig16bittile, align 8
  %135 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %136 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %135, i32 0, i32 3
  %137 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %136, i32 0, i32 0
  store i32* %134, i32** %137, align 8
  br label %138

138:                                              ; preds = %133, %129
  br label %139

139:                                              ; preds = %138, %124
  br label %140

140:                                              ; preds = %139, %123
  br label %141

141:                                              ; preds = %140, %98
  br label %142

142:                                              ; preds = %24, %141, %77
  br label %340

143:                                              ; preds = %14
  %144 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %145 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %144, i32 0, i32 2
  %146 = load i32, i32* %145, align 8
  %147 = icmp sge i32 %146, 4
  br i1 %147, label %148, label %174

148:                                              ; preds = %143
  %149 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %150 = call i32 @buildMap(%struct.TYPE_10__* %149)
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %174

152:                                              ; preds = %148
  %153 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %154 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = icmp eq i32 %155, 8
  br i1 %156, label %157, label %173

157:                                              ; preds = %152
  %158 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %159 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %158, i32 0, i32 7
  %160 = load i32, i32* %159, align 8
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %167, label %162

162:                                              ; preds = %157
  %163 = load i32*, i32** @putRGBcontig8bitCMYKtile, align 8
  %164 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %165 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %164, i32 0, i32 3
  %166 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %165, i32 0, i32 0
  store i32* %163, i32** %166, align 8
  br label %172

167:                                              ; preds = %157
  %168 = load i32*, i32** @putRGBcontig8bitCMYKMaptile, align 8
  %169 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %170 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %169, i32 0, i32 3
  %171 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %170, i32 0, i32 0
  store i32* %168, i32** %171, align 8
  br label %172

172:                                              ; preds = %167, %162
  br label %173

173:                                              ; preds = %172, %152
  br label %174

174:                                              ; preds = %173, %148, %143
  br label %340

175:                                              ; preds = %14
  %176 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %177 = call i32 @buildMap(%struct.TYPE_10__* %176)
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %204

179:                                              ; preds = %175
  %180 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %181 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 4
  switch i32 %182, label %203 [
    i32 8, label %183
    i32 4, label %188
    i32 2, label %193
    i32 1, label %198
  ]

183:                                              ; preds = %179
  %184 = load i32*, i32** @put8bitcmaptile, align 8
  %185 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %186 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %185, i32 0, i32 3
  %187 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %186, i32 0, i32 0
  store i32* %184, i32** %187, align 8
  br label %203

188:                                              ; preds = %179
  %189 = load i32*, i32** @put4bitcmaptile, align 8
  %190 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %191 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %190, i32 0, i32 3
  %192 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %191, i32 0, i32 0
  store i32* %189, i32** %192, align 8
  br label %203

193:                                              ; preds = %179
  %194 = load i32*, i32** @put2bitcmaptile, align 8
  %195 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %196 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %195, i32 0, i32 3
  %197 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %196, i32 0, i32 0
  store i32* %194, i32** %197, align 8
  br label %203

198:                                              ; preds = %179
  %199 = load i32*, i32** @put1bitcmaptile, align 8
  %200 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %201 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %200, i32 0, i32 3
  %202 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %201, i32 0, i32 0
  store i32* %199, i32** %202, align 8
  br label %203

203:                                              ; preds = %179, %198, %193, %188, %183
  br label %204

204:                                              ; preds = %203, %175
  br label %340

205:                                              ; preds = %14, %14
  %206 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %207 = call i32 @buildMap(%struct.TYPE_10__* %206)
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %255

209:                                              ; preds = %205
  %210 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %211 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %210, i32 0, i32 1
  %212 = load i32, i32* %211, align 4
  switch i32 %212, label %254 [
    i32 16, label %213
    i32 8, label %218
    i32 4, label %239
    i32 2, label %244
    i32 1, label %249
  ]

213:                                              ; preds = %209
  %214 = load i32*, i32** @put16bitbwtile, align 8
  %215 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %216 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %215, i32 0, i32 3
  %217 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %216, i32 0, i32 0
  store i32* %214, i32** %217, align 8
  br label %254

218:                                              ; preds = %209
  %219 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %220 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %219, i32 0, i32 6
  %221 = load i32, i32* %220, align 4
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %223, label %233

223:                                              ; preds = %218
  %224 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %225 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %224, i32 0, i32 2
  %226 = load i32, i32* %225, align 8
  %227 = icmp eq i32 %226, 2
  br i1 %227, label %228, label %233

228:                                              ; preds = %223
  %229 = load i32*, i32** @putagreytile, align 8
  %230 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %231 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %230, i32 0, i32 3
  %232 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %231, i32 0, i32 0
  store i32* %229, i32** %232, align 8
  br label %238

233:                                              ; preds = %223, %218
  %234 = load i32*, i32** @putgreytile, align 8
  %235 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %236 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %235, i32 0, i32 3
  %237 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %236, i32 0, i32 0
  store i32* %234, i32** %237, align 8
  br label %238

238:                                              ; preds = %233, %228
  br label %254

239:                                              ; preds = %209
  %240 = load i32*, i32** @put4bitbwtile, align 8
  %241 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %242 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %241, i32 0, i32 3
  %243 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %242, i32 0, i32 0
  store i32* %240, i32** %243, align 8
  br label %254

244:                                              ; preds = %209
  %245 = load i32*, i32** @put2bitbwtile, align 8
  %246 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %247 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %246, i32 0, i32 3
  %248 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %247, i32 0, i32 0
  store i32* %245, i32** %248, align 8
  br label %254

249:                                              ; preds = %209
  %250 = load i32*, i32** @put1bitbwtile, align 8
  %251 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %252 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %251, i32 0, i32 3
  %253 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %252, i32 0, i32 0
  store i32* %250, i32** %253, align 8
  br label %254

254:                                              ; preds = %209, %249, %244, %239, %238, %213
  br label %255

255:                                              ; preds = %254, %205
  br label %340

256:                                              ; preds = %14
  %257 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %258 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %257, i32 0, i32 1
  %259 = load i32, i32* %258, align 4
  %260 = icmp eq i32 %259, 8
  br i1 %260, label %261, label %317

261:                                              ; preds = %256
  %262 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %263 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %262, i32 0, i32 2
  %264 = load i32, i32* %263, align 8
  %265 = icmp eq i32 %264, 3
  br i1 %265, label %266, label %317

266:                                              ; preds = %261
  %267 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %268 = call i32 @initYCbCrConversion(%struct.TYPE_10__* %267)
  %269 = icmp ne i32 %268, 0
  br i1 %269, label %270, label %316

270:                                              ; preds = %266
  %271 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %272 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %271, i32 0, i32 5
  %273 = load i32, i32* %272, align 8
  %274 = load i32, i32* @TIFFTAG_YCBCRSUBSAMPLING, align 4
  %275 = call i32 @TIFFGetFieldDefaulted(i32 %273, i32 %274, i32* %3, i32* %4)
  %276 = load i32, i32* %3, align 4
  %277 = shl i32 %276, 4
  %278 = load i32, i32* %4, align 4
  %279 = or i32 %277, %278
  switch i32 %279, label %315 [
    i32 68, label %280
    i32 66, label %285
    i32 65, label %290
    i32 34, label %295
    i32 33, label %300
    i32 18, label %305
    i32 17, label %310
  ]

280:                                              ; preds = %270
  %281 = load i32*, i32** @putcontig8bitYCbCr44tile, align 8
  %282 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %283 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %282, i32 0, i32 3
  %284 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %283, i32 0, i32 0
  store i32* %281, i32** %284, align 8
  br label %315

285:                                              ; preds = %270
  %286 = load i32*, i32** @putcontig8bitYCbCr42tile, align 8
  %287 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %288 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %287, i32 0, i32 3
  %289 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %288, i32 0, i32 0
  store i32* %286, i32** %289, align 8
  br label %315

290:                                              ; preds = %270
  %291 = load i32*, i32** @putcontig8bitYCbCr41tile, align 8
  %292 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %293 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %292, i32 0, i32 3
  %294 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %293, i32 0, i32 0
  store i32* %291, i32** %294, align 8
  br label %315

295:                                              ; preds = %270
  %296 = load i32*, i32** @putcontig8bitYCbCr22tile, align 8
  %297 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %298 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %297, i32 0, i32 3
  %299 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %298, i32 0, i32 0
  store i32* %296, i32** %299, align 8
  br label %315

300:                                              ; preds = %270
  %301 = load i32*, i32** @putcontig8bitYCbCr21tile, align 8
  %302 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %303 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %302, i32 0, i32 3
  %304 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %303, i32 0, i32 0
  store i32* %301, i32** %304, align 8
  br label %315

305:                                              ; preds = %270
  %306 = load i32*, i32** @putcontig8bitYCbCr12tile, align 8
  %307 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %308 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %307, i32 0, i32 3
  %309 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %308, i32 0, i32 0
  store i32* %306, i32** %309, align 8
  br label %315

310:                                              ; preds = %270
  %311 = load i32*, i32** @putcontig8bitYCbCr11tile, align 8
  %312 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %313 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %312, i32 0, i32 3
  %314 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %313, i32 0, i32 0
  store i32* %311, i32** %314, align 8
  br label %315

315:                                              ; preds = %270, %310, %305, %300, %295, %290, %285, %280
  br label %316

316:                                              ; preds = %315, %266
  br label %317

317:                                              ; preds = %316, %261, %256
  br label %340

318:                                              ; preds = %14
  %319 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %320 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %319, i32 0, i32 2
  %321 = load i32, i32* %320, align 8
  %322 = icmp eq i32 %321, 3
  br i1 %322, label %323, label %339

323:                                              ; preds = %318
  %324 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %325 = call i32 @buildMap(%struct.TYPE_10__* %324)
  %326 = icmp ne i32 %325, 0
  br i1 %326, label %327, label %339

327:                                              ; preds = %323
  %328 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %329 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %328, i32 0, i32 1
  %330 = load i32, i32* %329, align 4
  %331 = icmp eq i32 %330, 8
  br i1 %331, label %332, label %338

332:                                              ; preds = %327
  %333 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %334 = call i32* @initCIELabConversion(%struct.TYPE_10__* %333)
  %335 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %336 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %335, i32 0, i32 3
  %337 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %336, i32 0, i32 0
  store i32* %334, i32** %337, align 8
  br label %338

338:                                              ; preds = %332, %327
  br label %340

339:                                              ; preds = %323, %318
  br label %340

340:                                              ; preds = %339, %14, %338, %317, %255, %204, %174, %142
  %341 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %342 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %341, i32 0, i32 4
  %343 = load i32*, i32** %342, align 8
  %344 = icmp ne i32* %343, null
  br i1 %344, label %345, label %351

345:                                              ; preds = %340
  %346 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %347 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %346, i32 0, i32 3
  %348 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %347, i32 0, i32 0
  %349 = load i32*, i32** %348, align 8
  %350 = icmp ne i32* %349, null
  br label %351

351:                                              ; preds = %345, %340
  %352 = phi i1 [ false, %340 ], [ %350, %345 ]
  %353 = zext i1 %352 to i32
  ret i32 %353
}

declare dso_local i64 @TIFFIsTiled(i32) #1

declare dso_local i32 @BuildMapUaToAa(%struct.TYPE_10__*) #1

declare dso_local i32 @BuildMapBitdepth16To8(%struct.TYPE_10__*) #1

declare dso_local i32 @buildMap(%struct.TYPE_10__*) #1

declare dso_local i32 @initYCbCrConversion(%struct.TYPE_10__*) #1

declare dso_local i32 @TIFFGetFieldDefaulted(i32, i32, i32*, i32*) #1

declare dso_local i32* @initCIELabConversion(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
