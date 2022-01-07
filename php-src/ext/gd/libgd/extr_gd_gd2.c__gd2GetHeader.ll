; ModuleID = '/home/carl/AnghaBench/php-src/ext/gd/libgd/extr_gd_gd2.c__gd2GetHeader.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/gd/libgd/extr_gd_gd2.c__gd2GetHeader.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i64 }

@.str = private unnamed_addr constant [24 x i8] c"Reading gd2 header info\00", align 1
@EOF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"Got file code: %s\00", align 1
@GD2_ID = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"Not a valid gd2 file\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"Version: %d\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"Bad version: %d\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"Could not get x-size\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"Could not get y-size\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"Image is %dx%d\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"ChunkSize: %d\00", align 1
@GD2_CHUNKSIZE_MIN = common dso_local global i32 0, align 4
@GD2_CHUNKSIZE_MAX = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [19 x i8] c"Bad chunk size: %d\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"Format: %d\00", align 1
@GD2_FMT_RAW = common dso_local global i32 0, align 4
@GD2_FMT_COMPRESSED = common dso_local global i32 0, align 4
@GD2_FMT_TRUECOLOR_RAW = common dso_local global i32 0, align 4
@GD2_FMT_TRUECOLOR_COMPRESSED = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [20 x i8] c"Bad data format: %d\00", align 1
@.str.12 = private unnamed_addr constant [15 x i8] c"%d Chunks Wide\00", align 1
@.str.13 = private unnamed_addr constant [21 x i8] c"%d Chunks vertically\00", align 1
@INT_MAX = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [31 x i8] c"Illegal chunk counts: %d * %d\0A\00", align 1
@.str.15 = private unnamed_addr constant [31 x i8] c"Reading %d chunk index entries\00", align 1
@.str.16 = private unnamed_addr constant [20 x i8] c"gd2 header complete\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, %struct.TYPE_5__**)* @_gd2GetHeader to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_gd2GetHeader(i32 %0, i32* %1, i32* %2, i32* %3, i32* %4, i32* %5, i32* %6, i32* %7, %struct.TYPE_5__** %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca %struct.TYPE_5__**, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca [5 x i8], align 1
  %23 = alloca %struct.TYPE_5__*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store i32 %0, i32* %11, align 4
  store i32* %1, i32** %12, align 8
  store i32* %2, i32** %13, align 8
  store i32* %3, i32** %14, align 8
  store i32* %4, i32** %15, align 8
  store i32* %5, i32** %16, align 8
  store i32* %6, i32** %17, align 8
  store i32* %7, i32** %18, align 8
  store %struct.TYPE_5__** %8, %struct.TYPE_5__*** %19, align 8
  %26 = call i32 (i8*, ...) @gd_error(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %27 = call i32 @GD2_DBG(i32 %26)
  store i32 0, i32* %20, align 4
  br label %28

28:                                               ; preds = %44, %9
  %29 = load i32, i32* %20, align 4
  %30 = icmp slt i32 %29, 4
  br i1 %30, label %31, label %47

31:                                               ; preds = %28
  %32 = load i32, i32* %11, align 4
  %33 = call i32 @gdGetC(i32 %32)
  store i32 %33, i32* %21, align 4
  %34 = load i32, i32* %21, align 4
  %35 = load i32, i32* @EOF, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %31
  br label %297

38:                                               ; preds = %31
  %39 = load i32, i32* %21, align 4
  %40 = trunc i32 %39 to i8
  %41 = load i32, i32* %20, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [5 x i8], [5 x i8]* %22, i64 0, i64 %42
  store i8 %40, i8* %43, align 1
  br label %44

44:                                               ; preds = %38
  %45 = load i32, i32* %20, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %20, align 4
  br label %28

47:                                               ; preds = %28
  %48 = getelementptr inbounds [5 x i8], [5 x i8]* %22, i64 0, i64 4
  store i8 0, i8* %48, align 1
  %49 = getelementptr inbounds [5 x i8], [5 x i8]* %22, i64 0, i64 0
  %50 = call i32 (i8*, ...) @gd_error(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8* %49)
  %51 = call i32 @GD2_DBG(i32 %50)
  %52 = getelementptr inbounds [5 x i8], [5 x i8]* %22, i64 0, i64 0
  %53 = load i32, i32* @GD2_ID, align 4
  %54 = call i64 @strcmp(i8* %52, i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %47
  %57 = call i32 (i8*, ...) @gd_error(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %58 = call i32 @GD2_DBG(i32 %57)
  br label %297

59:                                               ; preds = %47
  %60 = load i32*, i32** %15, align 8
  %61 = load i32, i32* %11, align 4
  %62 = call i32 @gdGetWord(i32* %60, i32 %61)
  %63 = icmp ne i32 %62, 1
  br i1 %63, label %64, label %65

64:                                               ; preds = %59
  br label %297

65:                                               ; preds = %59
  %66 = load i32*, i32** %15, align 8
  %67 = load i32, i32* %66, align 4
  %68 = call i32 (i8*, ...) @gd_error(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 %67)
  %69 = call i32 @GD2_DBG(i32 %68)
  %70 = load i32*, i32** %15, align 8
  %71 = load i32, i32* %70, align 4
  %72 = icmp ne i32 %71, 1
  br i1 %72, label %73, label %82

73:                                               ; preds = %65
  %74 = load i32*, i32** %15, align 8
  %75 = load i32, i32* %74, align 4
  %76 = icmp ne i32 %75, 2
  br i1 %76, label %77, label %82

77:                                               ; preds = %73
  %78 = load i32*, i32** %15, align 8
  %79 = load i32, i32* %78, align 4
  %80 = call i32 (i8*, ...) @gd_error(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32 %79)
  %81 = call i32 @GD2_DBG(i32 %80)
  br label %297

82:                                               ; preds = %73, %65
  %83 = load i32*, i32** %12, align 8
  %84 = load i32, i32* %11, align 4
  %85 = call i32 @gdGetWord(i32* %83, i32 %84)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %90, label %87

87:                                               ; preds = %82
  %88 = call i32 (i8*, ...) @gd_error(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0))
  %89 = call i32 @GD2_DBG(i32 %88)
  br label %297

90:                                               ; preds = %82
  %91 = load i32*, i32** %13, align 8
  %92 = load i32, i32* %11, align 4
  %93 = call i32 @gdGetWord(i32* %91, i32 %92)
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %98, label %95

95:                                               ; preds = %90
  %96 = call i32 (i8*, ...) @gd_error(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0))
  %97 = call i32 @GD2_DBG(i32 %96)
  br label %297

98:                                               ; preds = %90
  %99 = load i32*, i32** %12, align 8
  %100 = load i32, i32* %99, align 4
  %101 = load i32*, i32** %13, align 8
  %102 = load i32, i32* %101, align 4
  %103 = call i32 (i8*, ...) @gd_error(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0), i32 %100, i32 %102)
  %104 = call i32 @GD2_DBG(i32 %103)
  %105 = load i32*, i32** %14, align 8
  %106 = load i32, i32* %11, align 4
  %107 = call i32 @gdGetWord(i32* %105, i32 %106)
  %108 = icmp ne i32 %107, 1
  br i1 %108, label %109, label %110

109:                                              ; preds = %98
  br label %297

110:                                              ; preds = %98
  %111 = load i32*, i32** %14, align 8
  %112 = load i32, i32* %111, align 4
  %113 = call i32 (i8*, ...) @gd_error(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0), i32 %112)
  %114 = call i32 @GD2_DBG(i32 %113)
  %115 = load i32*, i32** %14, align 8
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* @GD2_CHUNKSIZE_MIN, align 4
  %118 = icmp slt i32 %116, %117
  br i1 %118, label %124, label %119

119:                                              ; preds = %110
  %120 = load i32*, i32** %14, align 8
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* @GD2_CHUNKSIZE_MAX, align 4
  %123 = icmp sgt i32 %121, %122
  br i1 %123, label %124, label %129

124:                                              ; preds = %119, %110
  %125 = load i32*, i32** %14, align 8
  %126 = load i32, i32* %125, align 4
  %127 = call i32 (i8*, ...) @gd_error(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i64 0, i64 0), i32 %126)
  %128 = call i32 @GD2_DBG(i32 %127)
  br label %297

129:                                              ; preds = %119
  %130 = load i32*, i32** %16, align 8
  %131 = load i32, i32* %11, align 4
  %132 = call i32 @gdGetWord(i32* %130, i32 %131)
  %133 = icmp ne i32 %132, 1
  br i1 %133, label %134, label %135

134:                                              ; preds = %129
  br label %297

135:                                              ; preds = %129
  %136 = load i32*, i32** %16, align 8
  %137 = load i32, i32* %136, align 4
  %138 = call i32 (i8*, ...) @gd_error(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0), i32 %137)
  %139 = call i32 @GD2_DBG(i32 %138)
  %140 = load i32*, i32** %16, align 8
  %141 = load i32, i32* %140, align 4
  %142 = load i32, i32* @GD2_FMT_RAW, align 4
  %143 = icmp ne i32 %141, %142
  br i1 %143, label %144, label %164

144:                                              ; preds = %135
  %145 = load i32*, i32** %16, align 8
  %146 = load i32, i32* %145, align 4
  %147 = load i32, i32* @GD2_FMT_COMPRESSED, align 4
  %148 = icmp ne i32 %146, %147
  br i1 %148, label %149, label %164

149:                                              ; preds = %144
  %150 = load i32*, i32** %16, align 8
  %151 = load i32, i32* %150, align 4
  %152 = load i32, i32* @GD2_FMT_TRUECOLOR_RAW, align 4
  %153 = icmp ne i32 %151, %152
  br i1 %153, label %154, label %164

154:                                              ; preds = %149
  %155 = load i32*, i32** %16, align 8
  %156 = load i32, i32* %155, align 4
  %157 = load i32, i32* @GD2_FMT_TRUECOLOR_COMPRESSED, align 4
  %158 = icmp ne i32 %156, %157
  br i1 %158, label %159, label %164

159:                                              ; preds = %154
  %160 = load i32*, i32** %16, align 8
  %161 = load i32, i32* %160, align 4
  %162 = call i32 (i8*, ...) @gd_error(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11, i64 0, i64 0), i32 %161)
  %163 = call i32 @GD2_DBG(i32 %162)
  br label %297

164:                                              ; preds = %154, %149, %144, %135
  %165 = load i32*, i32** %17, align 8
  %166 = load i32, i32* %11, align 4
  %167 = call i32 @gdGetWord(i32* %165, i32 %166)
  %168 = icmp ne i32 %167, 1
  br i1 %168, label %169, label %170

169:                                              ; preds = %164
  br label %297

170:                                              ; preds = %164
  %171 = load i32*, i32** %17, align 8
  %172 = load i32, i32* %171, align 4
  %173 = call i32 (i8*, ...) @gd_error(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i64 0, i64 0), i32 %172)
  %174 = call i32 @GD2_DBG(i32 %173)
  %175 = load i32*, i32** %18, align 8
  %176 = load i32, i32* %11, align 4
  %177 = call i32 @gdGetWord(i32* %175, i32 %176)
  %178 = icmp ne i32 %177, 1
  br i1 %178, label %179, label %180

179:                                              ; preds = %170
  br label %297

180:                                              ; preds = %170
  %181 = load i32*, i32** %18, align 8
  %182 = load i32, i32* %181, align 4
  %183 = call i32 (i8*, ...) @gd_error(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.13, i64 0, i64 0), i32 %182)
  %184 = call i32 @GD2_DBG(i32 %183)
  %185 = load i32*, i32** %16, align 8
  %186 = load i32, i32* %185, align 4
  %187 = call i64 @gd2_compressed(i32 %186)
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %189, label %294

189:                                              ; preds = %180
  %190 = load i32*, i32** %17, align 8
  %191 = load i32, i32* %190, align 4
  %192 = icmp sle i32 %191, 0
  br i1 %192, label %205, label %193

193:                                              ; preds = %189
  %194 = load i32*, i32** %18, align 8
  %195 = load i32, i32* %194, align 4
  %196 = icmp sle i32 %195, 0
  br i1 %196, label %205, label %197

197:                                              ; preds = %193
  %198 = load i32*, i32** %17, align 8
  %199 = load i32, i32* %198, align 4
  %200 = load i32, i32* @INT_MAX, align 4
  %201 = load i32*, i32** %18, align 8
  %202 = load i32, i32* %201, align 4
  %203 = sdiv i32 %200, %202
  %204 = icmp sgt i32 %199, %203
  br i1 %204, label %205, label %212

205:                                              ; preds = %197, %193, %189
  %206 = load i32*, i32** %17, align 8
  %207 = load i32, i32* %206, align 4
  %208 = load i32*, i32** %18, align 8
  %209 = load i32, i32* %208, align 4
  %210 = call i32 @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.14, i64 0, i64 0), i32 %207, i32 %209)
  %211 = call i32 @GD2_DBG(i32 %210)
  br label %297

212:                                              ; preds = %197
  %213 = load i32*, i32** %17, align 8
  %214 = load i32, i32* %213, align 4
  %215 = load i32*, i32** %18, align 8
  %216 = load i32, i32* %215, align 4
  %217 = mul nsw i32 %214, %216
  store i32 %217, i32* %25, align 4
  %218 = load i32, i32* %25, align 4
  %219 = call i32 (i8*, ...) @gd_error(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.15, i64 0, i64 0), i32 %218)
  %220 = call i32 @GD2_DBG(i32 %219)
  %221 = load i32, i32* %25, align 4
  %222 = call i64 @overflow2(i32 16, i32 %221)
  %223 = icmp ne i64 %222, 0
  br i1 %223, label %224, label %225

224:                                              ; preds = %212
  br label %297

225:                                              ; preds = %212
  %226 = load i32, i32* %25, align 4
  %227 = sext i32 %226 to i64
  %228 = mul i64 16, %227
  %229 = trunc i64 %228 to i32
  store i32 %229, i32* %24, align 4
  %230 = load i32, i32* %24, align 4
  %231 = icmp sle i32 %230, 0
  br i1 %231, label %232, label %233

232:                                              ; preds = %225
  br label %297

233:                                              ; preds = %225
  %234 = load i32, i32* %24, align 4
  %235 = call %struct.TYPE_5__* @gdCalloc(i32 %234, i32 1)
  store %struct.TYPE_5__* %235, %struct.TYPE_5__** %23, align 8
  %236 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %237 = icmp eq %struct.TYPE_5__* %236, null
  br i1 %237, label %238, label %239

238:                                              ; preds = %233
  br label %297

239:                                              ; preds = %233
  store i32 0, i32* %20, align 4
  br label %240

240:                                              ; preds = %288, %239
  %241 = load i32, i32* %20, align 4
  %242 = load i32, i32* %25, align 4
  %243 = icmp slt i32 %241, %242
  br i1 %243, label %244, label %291

244:                                              ; preds = %240
  %245 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %246 = load i32, i32* %20, align 4
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %245, i64 %247
  %249 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %248, i32 0, i32 0
  %250 = load i32, i32* %11, align 4
  %251 = call i32 @gdGetInt(i64* %249, i32 %250)
  %252 = icmp ne i32 %251, 1
  br i1 %252, label %253, label %256

253:                                              ; preds = %244
  %254 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %255 = call i32 @gdFree(%struct.TYPE_5__* %254)
  br label %297

256:                                              ; preds = %244
  %257 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %258 = load i32, i32* %20, align 4
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %257, i64 %259
  %261 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %260, i32 0, i32 1
  %262 = load i32, i32* %11, align 4
  %263 = call i32 @gdGetInt(i64* %261, i32 %262)
  %264 = icmp ne i32 %263, 1
  br i1 %264, label %265, label %268

265:                                              ; preds = %256
  %266 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %267 = call i32 @gdFree(%struct.TYPE_5__* %266)
  br label %297

268:                                              ; preds = %256
  %269 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %270 = load i32, i32* %20, align 4
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %269, i64 %271
  %273 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %272, i32 0, i32 0
  %274 = load i64, i64* %273, align 8
  %275 = icmp slt i64 %274, 0
  br i1 %275, label %284, label %276

276:                                              ; preds = %268
  %277 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %278 = load i32, i32* %20, align 4
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %277, i64 %279
  %281 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %280, i32 0, i32 1
  %282 = load i64, i64* %281, align 8
  %283 = icmp slt i64 %282, 0
  br i1 %283, label %284, label %287

284:                                              ; preds = %276, %268
  %285 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %286 = call i32 @gdFree(%struct.TYPE_5__* %285)
  br label %297

287:                                              ; preds = %276
  br label %288

288:                                              ; preds = %287
  %289 = load i32, i32* %20, align 4
  %290 = add nsw i32 %289, 1
  store i32 %290, i32* %20, align 4
  br label %240

291:                                              ; preds = %240
  %292 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %293 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %19, align 8
  store %struct.TYPE_5__* %292, %struct.TYPE_5__** %293, align 8
  br label %294

294:                                              ; preds = %291, %180
  %295 = call i32 (i8*, ...) @gd_error(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16, i64 0, i64 0))
  %296 = call i32 @GD2_DBG(i32 %295)
  store i32 1, i32* %10, align 4
  br label %298

297:                                              ; preds = %284, %265, %253, %238, %232, %224, %205, %179, %169, %159, %134, %124, %109, %95, %87, %77, %64, %56, %37
  store i32 0, i32* %10, align 4
  br label %298

298:                                              ; preds = %297, %294
  %299 = load i32, i32* %10, align 4
  ret i32 %299
}

declare dso_local i32 @GD2_DBG(i32) #1

declare dso_local i32 @gd_error(i8*, ...) #1

declare dso_local i32 @gdGetC(i32) #1

declare dso_local i64 @strcmp(i8*, i32) #1

declare dso_local i32 @gdGetWord(i32*, i32) #1

declare dso_local i64 @gd2_compressed(i32) #1

declare dso_local i32 @printf(i8*, i32, i32) #1

declare dso_local i64 @overflow2(i32, i32) #1

declare dso_local %struct.TYPE_5__* @gdCalloc(i32, i32) #1

declare dso_local i32 @gdGetInt(i64*, i32) #1

declare dso_local i32 @gdFree(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
