; ModuleID = '/home/carl/AnghaBench/mozjpeg/extr_turbojpeg.c_tjDecompress2.c'
source_filename = "/home/carl/AnghaBench/mozjpeg/extr_turbojpeg.c_tjDecompress2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, %struct.TYPE_14__, %struct.TYPE_13__ }
%struct.TYPE_14__ = type { i8*, i64, i32 }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_17__ = type { i32, i32, i32, i32, i32, i64, i32, i32, i8* }
%struct.TYPE_16__ = type { i32, i32 }

@TJFLAG_STOPONWARNING = common dso_local global i32 0, align 4
@TRUE = common dso_local global i8* null, align 8
@FALSE = common dso_local global i8* null, align 8
@this = common dso_local global %struct.TYPE_15__* null, align 8
@DECOMPRESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [69 x i8] c"tjDecompress2(): Instance has not been initialized for decompression\00", align 1
@TJ_NUMPF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"tjDecompress2(): Invalid argument\00", align 1
@TJFLAG_FORCEMMX = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"JSIMD_FORCEMMX=1\00", align 1
@TJFLAG_FORCESSE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [17 x i8] c"JSIMD_FORCESSE=1\00", align 1
@TJFLAG_FORCESSE2 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [18 x i8] c"JSIMD_FORCESSE2=1\00", align 1
@dinfo = common dso_local global %struct.TYPE_17__* null, align 8
@pf2cs = common dso_local global i32* null, align 8
@TJFLAG_FASTDCT = common dso_local global i32 0, align 4
@JDCT_FASTEST = common dso_local global i32 0, align 4
@TJFLAG_FASTUPSAMPLE = common dso_local global i32 0, align 4
@NUMSF = common dso_local global i32 0, align 4
@sf = common dso_local global %struct.TYPE_16__* null, align 8
@.str.5 = private unnamed_addr constant [66 x i8] c"tjDecompress2(): Could not scale down to desired image dimensions\00", align 1
@tjPixelSize = common dso_local global i32* null, align 8
@.str.6 = private unnamed_addr constant [43 x i8] c"tjDecompress2(): Memory allocation failure\00", align 1
@TJFLAG_BOTTOMUP = common dso_local global i32 0, align 4
@DSTATE_START = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tjDecompress2(i32 %0, i8* %1, i64 %2, i8* %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i8**, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store i32 %0, i32* %10, align 4
  store i8* %1, i8** %11, align 8
  store i64 %2, i64* %12, align 8
  store i8* %3, i8** %13, align 8
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  store i32 %8, i32* %18, align 4
  store i8** null, i8*** %19, align 8
  store i32 0, i32* %21, align 4
  %26 = load i32, i32* %10, align 4
  %27 = call i32 @getdinstance(i32 %26)
  %28 = load i32, i32* %18, align 4
  %29 = load i32, i32* @TJFLAG_STOPONWARNING, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %9
  %33 = load i8*, i8** @TRUE, align 8
  br label %36

34:                                               ; preds = %9
  %35 = load i8*, i8** @FALSE, align 8
  br label %36

36:                                               ; preds = %34, %32
  %37 = phi i8* [ %33, %32 ], [ %35, %34 ]
  %38 = load %struct.TYPE_15__*, %struct.TYPE_15__** @this, align 8
  %39 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %39, i32 0, i32 0
  store i8* %37, i8** %40, align 8
  %41 = load %struct.TYPE_15__*, %struct.TYPE_15__** @this, align 8
  %42 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @DECOMPRESS, align 4
  %45 = and i32 %43, %44
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %36
  %48 = call i32 @_throw(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str, i64 0, i64 0))
  br label %49

49:                                               ; preds = %47, %36
  %50 = load i8*, i8** %11, align 8
  %51 = icmp eq i8* %50, null
  br i1 %51, label %74, label %52

52:                                               ; preds = %49
  %53 = load i64, i64* %12, align 8
  %54 = icmp ule i64 %53, 0
  br i1 %54, label %74, label %55

55:                                               ; preds = %52
  %56 = load i8*, i8** %13, align 8
  %57 = icmp eq i8* %56, null
  br i1 %57, label %74, label %58

58:                                               ; preds = %55
  %59 = load i32, i32* %14, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %74, label %61

61:                                               ; preds = %58
  %62 = load i32, i32* %15, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %74, label %64

64:                                               ; preds = %61
  %65 = load i32, i32* %16, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %74, label %67

67:                                               ; preds = %64
  %68 = load i32, i32* %17, align 4
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %74, label %70

70:                                               ; preds = %67
  %71 = load i32, i32* %17, align 4
  %72 = load i32, i32* @TJ_NUMPF, align 4
  %73 = icmp sge i32 %71, %72
  br i1 %73, label %74, label %76

74:                                               ; preds = %70, %67, %64, %61, %58, %55, %52, %49
  %75 = call i32 @_throw(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  br label %76

76:                                               ; preds = %74, %70
  %77 = load i32, i32* %18, align 4
  %78 = load i32, i32* @TJFLAG_FORCEMMX, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %76
  %82 = call i32 @putenv(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  br label %99

83:                                               ; preds = %76
  %84 = load i32, i32* %18, align 4
  %85 = load i32, i32* @TJFLAG_FORCESSE, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %83
  %89 = call i32 @putenv(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  br label %98

90:                                               ; preds = %83
  %91 = load i32, i32* %18, align 4
  %92 = load i32, i32* @TJFLAG_FORCESSE2, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %90
  %96 = call i32 @putenv(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  br label %97

97:                                               ; preds = %95, %90
  br label %98

98:                                               ; preds = %97, %88
  br label %99

99:                                               ; preds = %98, %81
  %100 = load %struct.TYPE_15__*, %struct.TYPE_15__** @this, align 8
  %101 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 8
  %104 = call i64 @setjmp(i32 %103) #3
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %99
  store i32 -1, i32* %21, align 4
  br label %321

107:                                              ; preds = %99
  %108 = load %struct.TYPE_17__*, %struct.TYPE_17__** @dinfo, align 8
  %109 = load i8*, i8** %11, align 8
  %110 = load i64, i64* %12, align 8
  %111 = call i32 @jpeg_mem_src_tj(%struct.TYPE_17__* %108, i8* %109, i64 %110)
  %112 = load %struct.TYPE_17__*, %struct.TYPE_17__** @dinfo, align 8
  %113 = load i8*, i8** @TRUE, align 8
  %114 = call i32 @jpeg_read_header(%struct.TYPE_17__* %112, i8* %113)
  %115 = load i32*, i32** @pf2cs, align 8
  %116 = load i32, i32* %17, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i32, i32* %115, i64 %117
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.TYPE_15__*, %struct.TYPE_15__** @this, align 8
  %121 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %120, i32 0, i32 2
  %122 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %121, i32 0, i32 1
  store i32 %119, i32* %122, align 4
  %123 = load i32, i32* %18, align 4
  %124 = load i32, i32* @TJFLAG_FASTDCT, align 4
  %125 = and i32 %123, %124
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %132

127:                                              ; preds = %107
  %128 = load i32, i32* @JDCT_FASTEST, align 4
  %129 = load %struct.TYPE_15__*, %struct.TYPE_15__** @this, align 8
  %130 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %129, i32 0, i32 2
  %131 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %130, i32 0, i32 0
  store i32 %128, i32* %131, align 8
  br label %132

132:                                              ; preds = %127, %107
  %133 = load i32, i32* %18, align 4
  %134 = load i32, i32* @TJFLAG_FASTUPSAMPLE, align 4
  %135 = and i32 %133, %134
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %141

137:                                              ; preds = %132
  %138 = load i8*, i8** @FALSE, align 8
  %139 = load %struct.TYPE_17__*, %struct.TYPE_17__** @dinfo, align 8
  %140 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %139, i32 0, i32 8
  store i8* %138, i8** %140, align 8
  br label %141

141:                                              ; preds = %137, %132
  %142 = load %struct.TYPE_17__*, %struct.TYPE_17__** @dinfo, align 8
  %143 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  store i32 %144, i32* %22, align 4
  %145 = load %struct.TYPE_17__*, %struct.TYPE_17__** @dinfo, align 8
  %146 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  store i32 %147, i32* %23, align 4
  %148 = load i32, i32* %14, align 4
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %150, label %152

150:                                              ; preds = %141
  %151 = load i32, i32* %22, align 4
  store i32 %151, i32* %14, align 4
  br label %152

152:                                              ; preds = %150, %141
  %153 = load i32, i32* %16, align 4
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %155, label %157

155:                                              ; preds = %152
  %156 = load i32, i32* %23, align 4
  store i32 %156, i32* %16, align 4
  br label %157

157:                                              ; preds = %155, %152
  store i32 0, i32* %20, align 4
  br label %158

158:                                              ; preds = %188, %157
  %159 = load i32, i32* %20, align 4
  %160 = load i32, i32* @NUMSF, align 4
  %161 = icmp slt i32 %159, %160
  br i1 %161, label %162, label %191

162:                                              ; preds = %158
  %163 = load i32, i32* %22, align 4
  %164 = load %struct.TYPE_16__*, %struct.TYPE_16__** @sf, align 8
  %165 = load i32, i32* %20, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %164, i64 %166
  %168 = bitcast %struct.TYPE_16__* %167 to i64*
  %169 = load i64, i64* %168, align 4
  %170 = call i32 @TJSCALED(i32 %163, i64 %169)
  store i32 %170, i32* %24, align 4
  %171 = load i32, i32* %23, align 4
  %172 = load %struct.TYPE_16__*, %struct.TYPE_16__** @sf, align 8
  %173 = load i32, i32* %20, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %172, i64 %174
  %176 = bitcast %struct.TYPE_16__* %175 to i64*
  %177 = load i64, i64* %176, align 4
  %178 = call i32 @TJSCALED(i32 %171, i64 %177)
  store i32 %178, i32* %25, align 4
  %179 = load i32, i32* %24, align 4
  %180 = load i32, i32* %14, align 4
  %181 = icmp sle i32 %179, %180
  br i1 %181, label %182, label %187

182:                                              ; preds = %162
  %183 = load i32, i32* %25, align 4
  %184 = load i32, i32* %16, align 4
  %185 = icmp sle i32 %183, %184
  br i1 %185, label %186, label %187

186:                                              ; preds = %182
  br label %191

187:                                              ; preds = %182, %162
  br label %188

188:                                              ; preds = %187
  %189 = load i32, i32* %20, align 4
  %190 = add nsw i32 %189, 1
  store i32 %190, i32* %20, align 4
  br label %158

191:                                              ; preds = %186, %158
  %192 = load i32, i32* %20, align 4
  %193 = load i32, i32* @NUMSF, align 4
  %194 = icmp sge i32 %192, %193
  br i1 %194, label %195, label %197

195:                                              ; preds = %191
  %196 = call i32 @_throw(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.5, i64 0, i64 0))
  br label %197

197:                                              ; preds = %195, %191
  %198 = load i32, i32* %24, align 4
  store i32 %198, i32* %14, align 4
  %199 = load i32, i32* %25, align 4
  store i32 %199, i32* %16, align 4
  %200 = load %struct.TYPE_16__*, %struct.TYPE_16__** @sf, align 8
  %201 = load i32, i32* %20, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %200, i64 %202
  %204 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %203, i32 0, i32 1
  %205 = load i32, i32* %204, align 4
  %206 = load %struct.TYPE_17__*, %struct.TYPE_17__** @dinfo, align 8
  %207 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %206, i32 0, i32 7
  store i32 %205, i32* %207, align 4
  %208 = load %struct.TYPE_16__*, %struct.TYPE_16__** @sf, align 8
  %209 = load i32, i32* %20, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %208, i64 %210
  %212 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 4
  %214 = load %struct.TYPE_17__*, %struct.TYPE_17__** @dinfo, align 8
  %215 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %214, i32 0, i32 6
  store i32 %213, i32* %215, align 8
  %216 = load %struct.TYPE_17__*, %struct.TYPE_17__** @dinfo, align 8
  %217 = call i32 @jpeg_start_decompress(%struct.TYPE_17__* %216)
  %218 = load i32, i32* %15, align 4
  %219 = icmp eq i32 %218, 0
  br i1 %219, label %220, label %230

220:                                              ; preds = %197
  %221 = load %struct.TYPE_17__*, %struct.TYPE_17__** @dinfo, align 8
  %222 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %221, i32 0, i32 2
  %223 = load i32, i32* %222, align 8
  %224 = load i32*, i32** @tjPixelSize, align 8
  %225 = load i32, i32* %17, align 4
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds i32, i32* %224, i64 %226
  %228 = load i32, i32* %227, align 4
  %229 = mul nsw i32 %223, %228
  store i32 %229, i32* %15, align 4
  br label %230

230:                                              ; preds = %220, %197
  %231 = load %struct.TYPE_17__*, %struct.TYPE_17__** @dinfo, align 8
  %232 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %231, i32 0, i32 3
  %233 = load i32, i32* %232, align 4
  %234 = sext i32 %233 to i64
  %235 = mul i64 8, %234
  %236 = trunc i64 %235 to i32
  %237 = call i64 @malloc(i32 %236)
  %238 = inttoptr i64 %237 to i8**
  store i8** %238, i8*** %19, align 8
  %239 = icmp eq i8** %238, null
  br i1 %239, label %240, label %242

240:                                              ; preds = %230
  %241 = call i32 @_throw(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.6, i64 0, i64 0))
  br label %242

242:                                              ; preds = %240, %230
  %243 = load %struct.TYPE_15__*, %struct.TYPE_15__** @this, align 8
  %244 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %243, i32 0, i32 1
  %245 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %244, i32 0, i32 2
  %246 = load i32, i32* %245, align 8
  %247 = call i64 @setjmp(i32 %246) #3
  %248 = icmp ne i64 %247, 0
  br i1 %248, label %249, label %250

249:                                              ; preds = %242
  store i32 -1, i32* %21, align 4
  br label %321

250:                                              ; preds = %242
  store i32 0, i32* %20, align 4
  br label %251

251:                                              ; preds = %290, %250
  %252 = load i32, i32* %20, align 4
  %253 = load %struct.TYPE_17__*, %struct.TYPE_17__** @dinfo, align 8
  %254 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %253, i32 0, i32 3
  %255 = load i32, i32* %254, align 4
  %256 = icmp slt i32 %252, %255
  br i1 %256, label %257, label %293

257:                                              ; preds = %251
  %258 = load i32, i32* %18, align 4
  %259 = load i32, i32* @TJFLAG_BOTTOMUP, align 4
  %260 = and i32 %258, %259
  %261 = icmp ne i32 %260, 0
  br i1 %261, label %262, label %278

262:                                              ; preds = %257
  %263 = load i8*, i8** %13, align 8
  %264 = load %struct.TYPE_17__*, %struct.TYPE_17__** @dinfo, align 8
  %265 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %264, i32 0, i32 3
  %266 = load i32, i32* %265, align 4
  %267 = load i32, i32* %20, align 4
  %268 = sub nsw i32 %266, %267
  %269 = sub nsw i32 %268, 1
  %270 = load i32, i32* %15, align 4
  %271 = mul nsw i32 %269, %270
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds i8, i8* %263, i64 %272
  %274 = load i8**, i8*** %19, align 8
  %275 = load i32, i32* %20, align 4
  %276 = sext i32 %275 to i64
  %277 = getelementptr inbounds i8*, i8** %274, i64 %276
  store i8* %273, i8** %277, align 8
  br label %289

278:                                              ; preds = %257
  %279 = load i8*, i8** %13, align 8
  %280 = load i32, i32* %20, align 4
  %281 = load i32, i32* %15, align 4
  %282 = mul nsw i32 %280, %281
  %283 = sext i32 %282 to i64
  %284 = getelementptr inbounds i8, i8* %279, i64 %283
  %285 = load i8**, i8*** %19, align 8
  %286 = load i32, i32* %20, align 4
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds i8*, i8** %285, i64 %287
  store i8* %284, i8** %288, align 8
  br label %289

289:                                              ; preds = %278, %262
  br label %290

290:                                              ; preds = %289
  %291 = load i32, i32* %20, align 4
  %292 = add nsw i32 %291, 1
  store i32 %292, i32* %20, align 4
  br label %251

293:                                              ; preds = %251
  br label %294

294:                                              ; preds = %302, %293
  %295 = load %struct.TYPE_17__*, %struct.TYPE_17__** @dinfo, align 8
  %296 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %295, i32 0, i32 4
  %297 = load i32, i32* %296, align 8
  %298 = load %struct.TYPE_17__*, %struct.TYPE_17__** @dinfo, align 8
  %299 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %298, i32 0, i32 3
  %300 = load i32, i32* %299, align 4
  %301 = icmp slt i32 %297, %300
  br i1 %301, label %302, label %318

302:                                              ; preds = %294
  %303 = load %struct.TYPE_17__*, %struct.TYPE_17__** @dinfo, align 8
  %304 = load i8**, i8*** %19, align 8
  %305 = load %struct.TYPE_17__*, %struct.TYPE_17__** @dinfo, align 8
  %306 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %305, i32 0, i32 4
  %307 = load i32, i32* %306, align 8
  %308 = sext i32 %307 to i64
  %309 = getelementptr inbounds i8*, i8** %304, i64 %308
  %310 = load %struct.TYPE_17__*, %struct.TYPE_17__** @dinfo, align 8
  %311 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %310, i32 0, i32 3
  %312 = load i32, i32* %311, align 4
  %313 = load %struct.TYPE_17__*, %struct.TYPE_17__** @dinfo, align 8
  %314 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %313, i32 0, i32 4
  %315 = load i32, i32* %314, align 8
  %316 = sub nsw i32 %312, %315
  %317 = call i32 @jpeg_read_scanlines(%struct.TYPE_17__* %303, i8** %309, i32 %316)
  br label %294

318:                                              ; preds = %294
  %319 = load %struct.TYPE_17__*, %struct.TYPE_17__** @dinfo, align 8
  %320 = call i32 @jpeg_finish_decompress(%struct.TYPE_17__* %319)
  br label %321

321:                                              ; preds = %318, %249, %106
  %322 = load %struct.TYPE_17__*, %struct.TYPE_17__** @dinfo, align 8
  %323 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %322, i32 0, i32 5
  %324 = load i64, i64* %323, align 8
  %325 = load i64, i64* @DSTATE_START, align 8
  %326 = icmp sgt i64 %324, %325
  br i1 %326, label %327, label %330

327:                                              ; preds = %321
  %328 = load %struct.TYPE_17__*, %struct.TYPE_17__** @dinfo, align 8
  %329 = call i32 @jpeg_abort_decompress(%struct.TYPE_17__* %328)
  br label %330

330:                                              ; preds = %327, %321
  %331 = load i8**, i8*** %19, align 8
  %332 = icmp ne i8** %331, null
  br i1 %332, label %333, label %336

333:                                              ; preds = %330
  %334 = load i8**, i8*** %19, align 8
  %335 = call i32 @free(i8** %334)
  br label %336

336:                                              ; preds = %333, %330
  %337 = load %struct.TYPE_15__*, %struct.TYPE_15__** @this, align 8
  %338 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %337, i32 0, i32 1
  %339 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %338, i32 0, i32 1
  %340 = load i64, i64* %339, align 8
  %341 = icmp ne i64 %340, 0
  br i1 %341, label %342, label %343

342:                                              ; preds = %336
  store i32 -1, i32* %21, align 4
  br label %343

343:                                              ; preds = %342, %336
  %344 = load i8*, i8** @FALSE, align 8
  %345 = load %struct.TYPE_15__*, %struct.TYPE_15__** @this, align 8
  %346 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %345, i32 0, i32 1
  %347 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %346, i32 0, i32 0
  store i8* %344, i8** %347, align 8
  %348 = load i32, i32* %21, align 4
  ret i32 %348
}

declare dso_local i32 @getdinstance(i32) #1

declare dso_local i32 @_throw(i8*) #1

declare dso_local i32 @putenv(i8*) #1

; Function Attrs: returns_twice
declare dso_local i64 @setjmp(i32) #2

declare dso_local i32 @jpeg_mem_src_tj(%struct.TYPE_17__*, i8*, i64) #1

declare dso_local i32 @jpeg_read_header(%struct.TYPE_17__*, i8*) #1

declare dso_local i32 @TJSCALED(i32, i64) #1

declare dso_local i32 @jpeg_start_decompress(%struct.TYPE_17__*) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @jpeg_read_scanlines(%struct.TYPE_17__*, i8**, i32) #1

declare dso_local i32 @jpeg_finish_decompress(%struct.TYPE_17__*) #1

declare dso_local i32 @jpeg_abort_decompress(%struct.TYPE_17__*) #1

declare dso_local i32 @free(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { returns_twice "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { returns_twice }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
