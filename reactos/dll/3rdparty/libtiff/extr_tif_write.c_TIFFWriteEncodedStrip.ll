; ModuleID = '/home/carl/AnghaBench/reactos/dll/3rdparty/libtiff/extr_tif_write.c_TIFFWriteEncodedStrip.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/3rdparty/libtiff/extr_tif_write.c_TIFFWriteEncodedStrip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, i64, i64, i64, i64, i32*, i32*, i32 (%struct.TYPE_17__*)*, i32 (%struct.TYPE_17__*, i32*, i64, i64)*, i32 (%struct.TYPE_17__*, i32*, i64)*, i32 (%struct.TYPE_17__*, i64)*, i64, i32 (%struct.TYPE_17__*)*, i32, %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i64, i64, i64, i64, i64*, i64, i32, i32 }

@TIFFWriteEncodedStrip.module = internal constant [22 x i8] c"TIFFWriteEncodedStrip\00", align 16
@PLANARCONFIG_SEPARATE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [56 x i8] c"Can not grow image by strips when using separate planes\00", align 1
@TIFF_BUF4WRITE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"Zero strips per image\00", align 1
@TIFF_CODERSETUP = common dso_local global i32 0, align 4
@TIFF_POSTENCODE = common dso_local global i32 0, align 4
@COMPRESSION_NONE = common dso_local global i64 0, align 8
@TIFF_NOBITREV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @TIFFWriteEncodedStrip(%struct.TYPE_17__* %0, i64 %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_16__*, align 8
  %11 = alloca i64, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %6, align 8
  store i64 %1, i64* %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %12, i32 0, i32 14
  store %struct.TYPE_16__* %13, %struct.TYPE_16__** %10, align 8
  %14 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %15 = call i32 @WRITECHECKSTRIPS(%struct.TYPE_17__* %14, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @TIFFWriteEncodedStrip.module, i64 0, i64 0))
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %4
  store i64 -1, i64* %5, align 8
  br label %292

18:                                               ; preds = %4
  %19 = load i64, i64* %7, align 8
  %20 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %21 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp uge i64 %19, %22
  br i1 %23, label %24, label %50

24:                                               ; preds = %18
  %25 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %26 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @PLANARCONFIG_SEPARATE, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %35

30:                                               ; preds = %24
  %31 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %31, i32 0, i32 13
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @TIFFErrorExt(i32 %33, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @TIFFWriteEncodedStrip.module, i64 0, i64 0), i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0))
  store i64 -1, i64* %5, align 8
  br label %292

35:                                               ; preds = %24
  %36 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %37 = call i32 @TIFFGrowStrips(%struct.TYPE_17__* %36, i32 1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @TIFFWriteEncodedStrip.module, i64 0, i64 0))
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %35
  store i64 -1, i64* %5, align 8
  br label %292

40:                                               ; preds = %35
  %41 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %42 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %41, i32 0, i32 7
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %45 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %44, i32 0, i32 3
  %46 = load i64, i64* %45, align 8
  %47 = call i64 @TIFFhowmany_32(i32 %43, i64 %46)
  %48 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %49 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %48, i32 0, i32 2
  store i64 %47, i64* %49, align 8
  br label %50

50:                                               ; preds = %40, %18
  %51 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %52 = call i32 @BUFFERCHECK(%struct.TYPE_17__* %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %50
  store i64 -1, i64* %5, align 8
  br label %292

55:                                               ; preds = %50
  %56 = load i32, i32* @TIFF_BUF4WRITE, align 4
  %57 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = or i32 %59, %56
  store i32 %60, i32* %58, align 8
  %61 = load i64, i64* %7, align 8
  %62 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %62, i32 0, i32 1
  store i64 %61, i64* %63, align 8
  %64 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %65 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = icmp eq i64 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %55
  %69 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %69, i32 0, i32 13
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @TIFFErrorExt(i32 %71, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @TIFFWriteEncodedStrip.module, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  store i64 -1, i64* %5, align 8
  br label %292

73:                                               ; preds = %55
  %74 = load i64, i64* %7, align 8
  %75 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %76 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %75, i32 0, i32 2
  %77 = load i64, i64* %76, align 8
  %78 = urem i64 %74, %77
  %79 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %80 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %79, i32 0, i32 3
  %81 = load i64, i64* %80, align 8
  %82 = mul i64 %78, %81
  %83 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %83, i32 0, i32 2
  store i64 %82, i64* %84, align 8
  %85 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* @TIFF_CODERSETUP, align 4
  %89 = and i32 %87, %88
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %105

91:                                               ; preds = %73
  %92 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %93 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %92, i32 0, i32 12
  %94 = load i32 (%struct.TYPE_17__*)*, i32 (%struct.TYPE_17__*)** %93, align 8
  %95 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %96 = call i32 %94(%struct.TYPE_17__* %95)
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %99, label %98

98:                                               ; preds = %91
  store i64 -1, i64* %5, align 8
  br label %292

99:                                               ; preds = %91
  %100 = load i32, i32* @TIFF_CODERSETUP, align 4
  %101 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %102 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = or i32 %103, %100
  store i32 %104, i32* %102, align 8
  br label %105

105:                                              ; preds = %99, %73
  %106 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %107 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %106, i32 0, i32 4
  %108 = load i64*, i64** %107, align 8
  %109 = load i64, i64* %7, align 8
  %110 = getelementptr inbounds i64, i64* %108, i64 %109
  %111 = load i64, i64* %110, align 8
  %112 = icmp sgt i64 %111, 0
  br i1 %112, label %113, label %142

113:                                              ; preds = %105
  %114 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %115 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %114, i32 0, i32 3
  %116 = load i64, i64* %115, align 8
  %117 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %118 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %117, i32 0, i32 4
  %119 = load i64*, i64** %118, align 8
  %120 = load i64, i64* %7, align 8
  %121 = getelementptr inbounds i64, i64* %119, i64 %120
  %122 = load i64, i64* %121, align 8
  %123 = icmp sle i64 %116, %122
  br i1 %123, label %124, label %139

124:                                              ; preds = %113
  %125 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %126 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %127 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %126, i32 0, i32 4
  %128 = load i64*, i64** %127, align 8
  %129 = load i64, i64* %7, align 8
  %130 = getelementptr inbounds i64, i64* %128, i64 %129
  %131 = load i64, i64* %130, align 8
  %132 = add nsw i64 %131, 1
  %133 = trunc i64 %132 to i32
  %134 = call i64 @TIFFroundup_64(i32 %133, i32 1024)
  %135 = call i32 @TIFFWriteBufferSetup(%struct.TYPE_17__* %125, i32* null, i64 %134)
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %138, label %137

137:                                              ; preds = %124
  store i64 -1, i64* %5, align 8
  br label %292

138:                                              ; preds = %124
  br label %139

139:                                              ; preds = %138, %113
  %140 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %141 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %140, i32 0, i32 11
  store i64 0, i64* %141, align 8
  br label %142

142:                                              ; preds = %139, %105
  %143 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %144 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %143, i32 0, i32 4
  store i64 0, i64* %144, align 8
  %145 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %146 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %145, i32 0, i32 5
  %147 = load i32*, i32** %146, align 8
  %148 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %149 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %148, i32 0, i32 6
  store i32* %147, i32** %149, align 8
  %150 = load i32, i32* @TIFF_POSTENCODE, align 4
  %151 = xor i32 %150, -1
  %152 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %153 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = and i32 %154, %151
  store i32 %155, i32* %153, align 8
  %156 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %157 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %156, i32 0, i32 5
  %158 = load i64, i64* %157, align 8
  %159 = load i64, i64* @COMPRESSION_NONE, align 8
  %160 = icmp eq i64 %158, %159
  br i1 %160, label %161, label %202

161:                                              ; preds = %142
  %162 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %163 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %162, i32 0, i32 9
  %164 = load i32 (%struct.TYPE_17__*, i32*, i64)*, i32 (%struct.TYPE_17__*, i32*, i64)** %163, align 8
  %165 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %166 = load i8*, i8** %8, align 8
  %167 = bitcast i8* %166 to i32*
  %168 = load i64, i64* %9, align 8
  %169 = call i32 %164(%struct.TYPE_17__* %165, i32* %167, i64 %168)
  %170 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %171 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %172 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %171, i32 0, i32 6
  %173 = load i32, i32* %172, align 8
  %174 = call i32 @isFillOrder(%struct.TYPE_17__* %170, i32 %173)
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %188, label %176

176:                                              ; preds = %161
  %177 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %178 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  %180 = load i32, i32* @TIFF_NOBITREV, align 4
  %181 = and i32 %179, %180
  %182 = icmp eq i32 %181, 0
  br i1 %182, label %183, label %188

183:                                              ; preds = %176
  %184 = load i8*, i8** %8, align 8
  %185 = bitcast i8* %184 to i32*
  %186 = load i64, i64* %9, align 8
  %187 = call i32 @TIFFReverseBits(i32* %185, i64 %186)
  br label %188

188:                                              ; preds = %183, %176, %161
  %189 = load i64, i64* %9, align 8
  %190 = icmp sgt i64 %189, 0
  br i1 %190, label %191, label %200

191:                                              ; preds = %188
  %192 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %193 = load i64, i64* %7, align 8
  %194 = load i8*, i8** %8, align 8
  %195 = bitcast i8* %194 to i32*
  %196 = load i64, i64* %9, align 8
  %197 = call i32 @TIFFAppendToStrip(%struct.TYPE_17__* %192, i64 %193, i32* %195, i64 %196)
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %200, label %199

199:                                              ; preds = %191
  store i64 -1, i64* %5, align 8
  br label %292

200:                                              ; preds = %191, %188
  %201 = load i64, i64* %9, align 8
  store i64 %201, i64* %5, align 8
  br label %292

202:                                              ; preds = %142
  %203 = load i64, i64* %7, align 8
  %204 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %205 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %204, i32 0, i32 2
  %206 = load i64, i64* %205, align 8
  %207 = udiv i64 %203, %206
  store i64 %207, i64* %11, align 8
  %208 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %209 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %208, i32 0, i32 10
  %210 = load i32 (%struct.TYPE_17__*, i64)*, i32 (%struct.TYPE_17__*, i64)** %209, align 8
  %211 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %212 = load i64, i64* %11, align 8
  %213 = call i32 %210(%struct.TYPE_17__* %211, i64 %212)
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %216, label %215

215:                                              ; preds = %202
  store i64 -1, i64* %5, align 8
  br label %292

216:                                              ; preds = %202
  %217 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %218 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %217, i32 0, i32 9
  %219 = load i32 (%struct.TYPE_17__*, i32*, i64)*, i32 (%struct.TYPE_17__*, i32*, i64)** %218, align 8
  %220 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %221 = load i8*, i8** %8, align 8
  %222 = bitcast i8* %221 to i32*
  %223 = load i64, i64* %9, align 8
  %224 = call i32 %219(%struct.TYPE_17__* %220, i32* %222, i64 %223)
  %225 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %226 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %225, i32 0, i32 8
  %227 = load i32 (%struct.TYPE_17__*, i32*, i64, i64)*, i32 (%struct.TYPE_17__*, i32*, i64, i64)** %226, align 8
  %228 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %229 = load i8*, i8** %8, align 8
  %230 = bitcast i8* %229 to i32*
  %231 = load i64, i64* %9, align 8
  %232 = load i64, i64* %11, align 8
  %233 = call i32 %227(%struct.TYPE_17__* %228, i32* %230, i64 %231, i64 %232)
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %236, label %235

235:                                              ; preds = %216
  store i64 -1, i64* %5, align 8
  br label %292

236:                                              ; preds = %216
  %237 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %238 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %237, i32 0, i32 7
  %239 = load i32 (%struct.TYPE_17__*)*, i32 (%struct.TYPE_17__*)** %238, align 8
  %240 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %241 = call i32 %239(%struct.TYPE_17__* %240)
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %244, label %243

243:                                              ; preds = %236
  store i64 -1, i64* %5, align 8
  br label %292

244:                                              ; preds = %236
  %245 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %246 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %247 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %246, i32 0, i32 6
  %248 = load i32, i32* %247, align 8
  %249 = call i32 @isFillOrder(%struct.TYPE_17__* %245, i32 %248)
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %266, label %251

251:                                              ; preds = %244
  %252 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %253 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %252, i32 0, i32 0
  %254 = load i32, i32* %253, align 8
  %255 = load i32, i32* @TIFF_NOBITREV, align 4
  %256 = and i32 %254, %255
  %257 = icmp eq i32 %256, 0
  br i1 %257, label %258, label %266

258:                                              ; preds = %251
  %259 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %260 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %259, i32 0, i32 5
  %261 = load i32*, i32** %260, align 8
  %262 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %263 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %262, i32 0, i32 4
  %264 = load i64, i64* %263, align 8
  %265 = call i32 @TIFFReverseBits(i32* %261, i64 %264)
  br label %266

266:                                              ; preds = %258, %251, %244
  %267 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %268 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %267, i32 0, i32 4
  %269 = load i64, i64* %268, align 8
  %270 = icmp sgt i64 %269, 0
  br i1 %270, label %271, label %283

271:                                              ; preds = %266
  %272 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %273 = load i64, i64* %7, align 8
  %274 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %275 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %274, i32 0, i32 5
  %276 = load i32*, i32** %275, align 8
  %277 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %278 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %277, i32 0, i32 4
  %279 = load i64, i64* %278, align 8
  %280 = call i32 @TIFFAppendToStrip(%struct.TYPE_17__* %272, i64 %273, i32* %276, i64 %279)
  %281 = icmp ne i32 %280, 0
  br i1 %281, label %283, label %282

282:                                              ; preds = %271
  store i64 -1, i64* %5, align 8
  br label %292

283:                                              ; preds = %271, %266
  %284 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %285 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %284, i32 0, i32 4
  store i64 0, i64* %285, align 8
  %286 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %287 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %286, i32 0, i32 5
  %288 = load i32*, i32** %287, align 8
  %289 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %290 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %289, i32 0, i32 6
  store i32* %288, i32** %290, align 8
  %291 = load i64, i64* %9, align 8
  store i64 %291, i64* %5, align 8
  br label %292

292:                                              ; preds = %283, %282, %243, %235, %215, %200, %199, %137, %98, %68, %54, %39, %30, %17
  %293 = load i64, i64* %5, align 8
  ret i64 %293
}

declare dso_local i32 @WRITECHECKSTRIPS(%struct.TYPE_17__*, i8*) #1

declare dso_local i32 @TIFFErrorExt(i32, i8*, i8*) #1

declare dso_local i32 @TIFFGrowStrips(%struct.TYPE_17__*, i32, i8*) #1

declare dso_local i64 @TIFFhowmany_32(i32, i64) #1

declare dso_local i32 @BUFFERCHECK(%struct.TYPE_17__*) #1

declare dso_local i32 @TIFFWriteBufferSetup(%struct.TYPE_17__*, i32*, i64) #1

declare dso_local i64 @TIFFroundup_64(i32, i32) #1

declare dso_local i32 @isFillOrder(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @TIFFReverseBits(i32*, i64) #1

declare dso_local i32 @TIFFAppendToStrip(%struct.TYPE_17__*, i64, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
