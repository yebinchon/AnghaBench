; ModuleID = '/home/carl/AnghaBench/mozjpeg/extr_tjexample.c_main.c'
source_filename = "/home/carl/AnghaBench/mozjpeg/extr_tjexample.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, i32, i32 }
%struct.TYPE_10__ = type { i64, i32, i32*, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32, i64, i64 }

@__const.main.scalingFactor = private unnamed_addr constant %struct.TYPE_11__ { i32 1, i32 1, i32 0, i32 0 }, align 4
@TJPF_UNKNOWN = common dso_local global i32 0, align 4
@numScalingFactors = common dso_local global i32 0, align 4
@scalingFactors = common dso_local global %struct.TYPE_11__* null, align 8
@.str = private unnamed_addr constant [24 x i8] c"getting scaling factors\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"-sc\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"%d/%d\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"-su\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"g\00", align 1
@TJSAMP_GRAY = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [4 x i8] c"444\00", align 1
@TJSAMP_444 = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [4 x i8] c"422\00", align 1
@TJSAMP_422 = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [4 x i8] c"420\00", align 1
@TJSAMP_420 = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [3 x i8] c"-q\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"-g\00", align 1
@TJXOPT_GRAY = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [7 x i8] c"-hflip\00", align 1
@TJXOP_HFLIP = common dso_local global i64 0, align 8
@.str.11 = private unnamed_addr constant [7 x i8] c"-vflip\00", align 1
@TJXOP_VFLIP = common dso_local global i64 0, align 8
@.str.12 = private unnamed_addr constant [11 x i8] c"-transpose\00", align 1
@TJXOP_TRANSPOSE = common dso_local global i64 0, align 8
@.str.13 = private unnamed_addr constant [12 x i8] c"-transverse\00", align 1
@TJXOP_TRANSVERSE = common dso_local global i64 0, align 8
@.str.14 = private unnamed_addr constant [7 x i8] c"-rot90\00", align 1
@TJXOP_ROT90 = common dso_local global i64 0, align 8
@.str.15 = private unnamed_addr constant [8 x i8] c"-rot180\00", align 1
@TJXOP_ROT180 = common dso_local global i64 0, align 8
@.str.16 = private unnamed_addr constant [8 x i8] c"-rot270\00", align 1
@TJXOP_ROT270 = common dso_local global i64 0, align 8
@.str.17 = private unnamed_addr constant [8 x i8] c"-custom\00", align 1
@customFilter = common dso_local global i32* null, align 8
@.str.18 = private unnamed_addr constant [3 x i8] c"-c\00", align 1
@.str.19 = private unnamed_addr constant [12 x i8] c"%dx%d+%d+%d\00", align 1
@TJXOPT_CROP = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [14 x i8] c"-fastupsample\00", align 1
@.str.21 = private unnamed_addr constant [28 x i8] c"Using fast upsampling code\0A\00", align 1
@TJFLAG_FASTUPSAMPLE = common dso_local global i32 0, align 4
@.str.22 = private unnamed_addr constant [9 x i8] c"-fastdct\00", align 1
@.str.23 = private unnamed_addr constant [34 x i8] c"Using fastest DCT/IDCT algorithm\0A\00", align 1
@TJFLAG_FASTDCT = common dso_local global i32 0, align 4
@.str.24 = private unnamed_addr constant [13 x i8] c"-accuratedct\00", align 1
@.str.25 = private unnamed_addr constant [40 x i8] c"Using most accurate DCT/IDCT algorithm\0A\00", align 1
@TJFLAG_ACCURATEDCT = common dso_local global i32 0, align 4
@.str.26 = private unnamed_addr constant [4 x i8] c"jpg\00", align 1
@TJXOP_NONE = common dso_local global i64 0, align 8
@.str.27 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.28 = private unnamed_addr constant [19 x i8] c"opening input file\00", align 1
@SEEK_END = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@.str.29 = private unnamed_addr constant [28 x i8] c"determining input file size\00", align 1
@.str.30 = private unnamed_addr constant [28 x i8] c"Input file contains no data\00", align 1
@.str.31 = private unnamed_addr constant [23 x i8] c"allocating JPEG buffer\00", align 1
@.str.32 = private unnamed_addr constant [19 x i8] c"reading input file\00", align 1
@.str.33 = private unnamed_addr constant [25 x i8] c"initializing transformer\00", align 1
@TJXOPT_TRIM = common dso_local global i32 0, align 4
@.str.34 = private unnamed_addr constant [25 x i8] c"transforming input image\00", align 1
@.str.35 = private unnamed_addr constant [26 x i8] c"initializing decompressor\00", align 1
@.str.36 = private unnamed_addr constant [20 x i8] c"reading JPEG header\00", align 1
@.str.37 = private unnamed_addr constant [58 x i8] c"%s Image:  %d x %d pixels, %s subsampling, %s colorspace\0A\00", align 1
@.str.38 = private unnamed_addr constant [12 x i8] c"Transformed\00", align 1
@.str.39 = private unnamed_addr constant [6 x i8] c"Input\00", align 1
@subsampName = common dso_local global i8** null, align 8
@colorspaceName = common dso_local global i8** null, align 8
@.str.40 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.41 = private unnamed_addr constant [20 x i8] c"opening output file\00", align 1
@.str.42 = private unnamed_addr constant [20 x i8] c"writing output file\00", align 1
@TJPF_BGRX = common dso_local global i32 0, align 4
@tjPixelSize = common dso_local global i32* null, align 8
@.str.43 = private unnamed_addr constant [37 x i8] c"allocating uncompressed image buffer\00", align 1
@.str.44 = private unnamed_addr constant [25 x i8] c"decompressing JPEG image\00", align 1
@.str.45 = private unnamed_addr constant [20 x i8] c"loading input image\00", align 1
@TJPF_GRAY = common dso_local global i32 0, align 4
@.str.46 = private unnamed_addr constant [30 x i8] c"Input Image:  %d x %d pixels\0A\00", align 1
@.str.47 = private unnamed_addr constant [35 x i8] c"Output Image (%s):  %d x %d pixels\00", align 1
@DEFAULT_QUALITY = common dso_local global i32 0, align 4
@.str.48 = private unnamed_addr constant [32 x i8] c", %s subsampling, quality = %d\0A\00", align 1
@.str.49 = private unnamed_addr constant [24 x i8] c"initializing compressor\00", align 1
@.str.50 = private unnamed_addr constant [18 x i8] c"compressing image\00", align 1
@.str.51 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.52 = private unnamed_addr constant [20 x i8] c"saving output image\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.TYPE_11__, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_10__, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i64, align 8
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i64, align 8
  %31 = alloca i8*, align 8
  %32 = alloca i64, align 8
  %33 = alloca i8*, align 8
  %34 = alloca i64, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %35 = bitcast %struct.TYPE_11__* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %35, i8* align 4 bitcast (%struct.TYPE_11__* @__const.main.scalingFactor to i8*), i64 16, i1 false)
  store i32 -1, i32* %7, align 4
  store i32 -1, i32* %8, align 4
  store i32 0, i32* %10, align 4
  store i32* null, i32** %15, align 8
  store i8* null, i8** %16, align 8
  store i8* null, i8** %17, align 8
  store i32 0, i32* %18, align 4
  %36 = load i32, i32* @TJPF_UNKNOWN, align 4
  store i32 %36, i32* %20, align 4
  store i32* null, i32** %21, align 8
  %37 = call %struct.TYPE_11__* @tjGetScalingFactors(i32* @numScalingFactors)
  store %struct.TYPE_11__* %37, %struct.TYPE_11__** @scalingFactors, align 8
  %38 = icmp eq %struct.TYPE_11__* %37, null
  br i1 %38, label %39, label %41

39:                                               ; preds = %2
  %40 = call i32 @_throwtj(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %41

41:                                               ; preds = %39, %2
  %42 = call i32 @memset(%struct.TYPE_10__* %9, i32 0, i32 48)
  %43 = load i32, i32* %4, align 4
  %44 = icmp slt i32 %43, 3
  br i1 %44, label %45, label %50

45:                                               ; preds = %41
  %46 = load i8**, i8*** %5, align 8
  %47 = getelementptr inbounds i8*, i8** %46, i64 0
  %48 = load i8*, i8** %47, align 8
  %49 = call i32 @usage(i8* %48)
  br label %50

50:                                               ; preds = %45, %41
  store i32 3, i32* %19, align 4
  br label %51

51:                                               ; preds = %446, %50
  %52 = load i32, i32* %19, align 4
  %53 = load i32, i32* %4, align 4
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %55, label %449

55:                                               ; preds = %51
  %56 = load i8**, i8*** %5, align 8
  %57 = load i32, i32* %19, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i8*, i8** %56, i64 %58
  %60 = load i8*, i8** %59, align 8
  %61 = call i32 @strncasecmp(i8* %60, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 3)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %129, label %63

63:                                               ; preds = %55
  %64 = load i32, i32* %19, align 4
  %65 = load i32, i32* %4, align 4
  %66 = sub nsw i32 %65, 1
  %67 = icmp slt i32 %64, %66
  br i1 %67, label %68, label %129

68:                                               ; preds = %63
  store i32 0, i32* %22, align 4
  store i32 0, i32* %23, align 4
  store i32 0, i32* %24, align 4
  %69 = load i8**, i8*** %5, align 8
  %70 = load i32, i32* %19, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %19, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i8*, i8** %69, i64 %72
  %74 = load i8*, i8** %73, align 8
  %75 = call i32 (i8*, i8*, i32*, i32*, ...) @sscanf(i8* %74, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32* %23, i32* %24)
  %76 = icmp slt i32 %75, 2
  br i1 %76, label %77, label %82

77:                                               ; preds = %68
  %78 = load i8**, i8*** %5, align 8
  %79 = getelementptr inbounds i8*, i8** %78, i64 0
  %80 = load i8*, i8** %79, align 8
  %81 = call i32 @usage(i8* %80)
  br label %82

82:                                               ; preds = %77, %68
  store i32 0, i32* %25, align 4
  br label %83

83:                                               ; preds = %117, %82
  %84 = load i32, i32* %25, align 4
  %85 = load i32, i32* @numScalingFactors, align 4
  %86 = icmp slt i32 %84, %85
  br i1 %86, label %87, label %120

87:                                               ; preds = %83
  %88 = load i32, i32* %23, align 4
  %89 = sitofp i32 %88 to double
  %90 = load i32, i32* %24, align 4
  %91 = sitofp i32 %90 to double
  %92 = fdiv double %89, %91
  %93 = load %struct.TYPE_11__*, %struct.TYPE_11__** @scalingFactors, align 8
  %94 = load i32, i32* %25, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %93, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 4
  %99 = sitofp i32 %98 to double
  %100 = load %struct.TYPE_11__*, %struct.TYPE_11__** @scalingFactors, align 8
  %101 = load i32, i32* %25, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %100, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %103, i32 0, i32 3
  %105 = load i32, i32* %104, align 4
  %106 = sitofp i32 %105 to double
  %107 = fdiv double %99, %106
  %108 = fcmp oeq double %92, %107
  br i1 %108, label %109, label %116

109:                                              ; preds = %87
  %110 = load %struct.TYPE_11__*, %struct.TYPE_11__** @scalingFactors, align 8
  %111 = load i32, i32* %25, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %110, i64 %112
  %114 = bitcast %struct.TYPE_11__* %6 to i8*
  %115 = bitcast %struct.TYPE_11__* %113 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %114, i8* align 4 %115, i64 16, i1 false)
  store i32 1, i32* %22, align 4
  br label %120

116:                                              ; preds = %87
  br label %117

117:                                              ; preds = %116
  %118 = load i32, i32* %25, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %25, align 4
  br label %83

120:                                              ; preds = %109, %83
  %121 = load i32, i32* %22, align 4
  %122 = icmp ne i32 %121, 1
  br i1 %122, label %123, label %128

123:                                              ; preds = %120
  %124 = load i8**, i8*** %5, align 8
  %125 = getelementptr inbounds i8*, i8** %124, i64 0
  %126 = load i8*, i8** %125, align 8
  %127 = call i32 @usage(i8* %126)
  br label %128

128:                                              ; preds = %123, %120
  br label %445

129:                                              ; preds = %63, %55
  %130 = load i8**, i8*** %5, align 8
  %131 = load i32, i32* %19, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i8*, i8** %130, i64 %132
  %134 = load i8*, i8** %133, align 8
  %135 = call i32 @strncasecmp(i8* %134, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 3)
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %193, label %137

137:                                              ; preds = %129
  %138 = load i32, i32* %19, align 4
  %139 = load i32, i32* %4, align 4
  %140 = sub nsw i32 %139, 1
  %141 = icmp slt i32 %138, %140
  br i1 %141, label %142, label %193

142:                                              ; preds = %137
  %143 = load i32, i32* %19, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %19, align 4
  %145 = load i8**, i8*** %5, align 8
  %146 = load i32, i32* %19, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i8*, i8** %145, i64 %147
  %149 = load i8*, i8** %148, align 8
  %150 = call i32 @strncasecmp(i8* %149, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i32 1)
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %154, label %152

152:                                              ; preds = %142
  %153 = load i32, i32* @TJSAMP_GRAY, align 4
  store i32 %153, i32* %7, align 4
  br label %192

154:                                              ; preds = %142
  %155 = load i8**, i8*** %5, align 8
  %156 = load i32, i32* %19, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i8*, i8** %155, i64 %157
  %159 = load i8*, i8** %158, align 8
  %160 = call i32 @strcasecmp(i8* %159, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %164, label %162

162:                                              ; preds = %154
  %163 = load i32, i32* @TJSAMP_444, align 4
  store i32 %163, i32* %7, align 4
  br label %191

164:                                              ; preds = %154
  %165 = load i8**, i8*** %5, align 8
  %166 = load i32, i32* %19, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds i8*, i8** %165, i64 %167
  %169 = load i8*, i8** %168, align 8
  %170 = call i32 @strcasecmp(i8* %169, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0))
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %174, label %172

172:                                              ; preds = %164
  %173 = load i32, i32* @TJSAMP_422, align 4
  store i32 %173, i32* %7, align 4
  br label %190

174:                                              ; preds = %164
  %175 = load i8**, i8*** %5, align 8
  %176 = load i32, i32* %19, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds i8*, i8** %175, i64 %177
  %179 = load i8*, i8** %178, align 8
  %180 = call i32 @strcasecmp(i8* %179, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0))
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %184, label %182

182:                                              ; preds = %174
  %183 = load i32, i32* @TJSAMP_420, align 4
  store i32 %183, i32* %7, align 4
  br label %189

184:                                              ; preds = %174
  %185 = load i8**, i8*** %5, align 8
  %186 = getelementptr inbounds i8*, i8** %185, i64 0
  %187 = load i8*, i8** %186, align 8
  %188 = call i32 @usage(i8* %187)
  br label %189

189:                                              ; preds = %184, %182
  br label %190

190:                                              ; preds = %189, %172
  br label %191

191:                                              ; preds = %190, %162
  br label %192

192:                                              ; preds = %191, %152
  br label %444

193:                                              ; preds = %137, %129
  %194 = load i8**, i8*** %5, align 8
  %195 = load i32, i32* %19, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds i8*, i8** %194, i64 %196
  %198 = load i8*, i8** %197, align 8
  %199 = call i32 @strncasecmp(i8* %198, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i32 2)
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %225, label %201

201:                                              ; preds = %193
  %202 = load i32, i32* %19, align 4
  %203 = load i32, i32* %4, align 4
  %204 = sub nsw i32 %203, 1
  %205 = icmp slt i32 %202, %204
  br i1 %205, label %206, label %225

206:                                              ; preds = %201
  %207 = load i8**, i8*** %5, align 8
  %208 = load i32, i32* %19, align 4
  %209 = add nsw i32 %208, 1
  store i32 %209, i32* %19, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds i8*, i8** %207, i64 %210
  %212 = load i8*, i8** %211, align 8
  %213 = call i32 @atoi(i8* %212)
  store i32 %213, i32* %8, align 4
  %214 = load i32, i32* %8, align 4
  %215 = icmp slt i32 %214, 1
  br i1 %215, label %219, label %216

216:                                              ; preds = %206
  %217 = load i32, i32* %8, align 4
  %218 = icmp sgt i32 %217, 100
  br i1 %218, label %219, label %224

219:                                              ; preds = %216, %206
  %220 = load i8**, i8*** %5, align 8
  %221 = getelementptr inbounds i8*, i8** %220, i64 0
  %222 = load i8*, i8** %221, align 8
  %223 = call i32 @usage(i8* %222)
  br label %224

224:                                              ; preds = %219, %216
  br label %443

225:                                              ; preds = %201, %193
  %226 = load i8**, i8*** %5, align 8
  %227 = load i32, i32* %19, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds i8*, i8** %226, i64 %228
  %230 = load i8*, i8** %229, align 8
  %231 = call i32 @strncasecmp(i8* %230, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0), i32 2)
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %238, label %233

233:                                              ; preds = %225
  %234 = load i32, i32* @TJXOPT_GRAY, align 4
  %235 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 1
  %236 = load i32, i32* %235, align 8
  %237 = or i32 %236, %234
  store i32 %237, i32* %235, align 8
  br label %442

238:                                              ; preds = %225
  %239 = load i8**, i8*** %5, align 8
  %240 = load i32, i32* %19, align 4
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds i8*, i8** %239, i64 %241
  %243 = load i8*, i8** %242, align 8
  %244 = call i32 @strcasecmp(i8* %243, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0))
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %249, label %246

246:                                              ; preds = %238
  %247 = load i64, i64* @TJXOP_HFLIP, align 8
  %248 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 0
  store i64 %247, i64* %248, align 8
  br label %441

249:                                              ; preds = %238
  %250 = load i8**, i8*** %5, align 8
  %251 = load i32, i32* %19, align 4
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds i8*, i8** %250, i64 %252
  %254 = load i8*, i8** %253, align 8
  %255 = call i32 @strcasecmp(i8* %254, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0))
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %260, label %257

257:                                              ; preds = %249
  %258 = load i64, i64* @TJXOP_VFLIP, align 8
  %259 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 0
  store i64 %258, i64* %259, align 8
  br label %440

260:                                              ; preds = %249
  %261 = load i8**, i8*** %5, align 8
  %262 = load i32, i32* %19, align 4
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds i8*, i8** %261, i64 %263
  %265 = load i8*, i8** %264, align 8
  %266 = call i32 @strcasecmp(i8* %265, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i64 0, i64 0))
  %267 = icmp ne i32 %266, 0
  br i1 %267, label %271, label %268

268:                                              ; preds = %260
  %269 = load i64, i64* @TJXOP_TRANSPOSE, align 8
  %270 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 0
  store i64 %269, i64* %270, align 8
  br label %439

271:                                              ; preds = %260
  %272 = load i8**, i8*** %5, align 8
  %273 = load i32, i32* %19, align 4
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds i8*, i8** %272, i64 %274
  %276 = load i8*, i8** %275, align 8
  %277 = call i32 @strcasecmp(i8* %276, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i64 0, i64 0))
  %278 = icmp ne i32 %277, 0
  br i1 %278, label %282, label %279

279:                                              ; preds = %271
  %280 = load i64, i64* @TJXOP_TRANSVERSE, align 8
  %281 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 0
  store i64 %280, i64* %281, align 8
  br label %438

282:                                              ; preds = %271
  %283 = load i8**, i8*** %5, align 8
  %284 = load i32, i32* %19, align 4
  %285 = sext i32 %284 to i64
  %286 = getelementptr inbounds i8*, i8** %283, i64 %285
  %287 = load i8*, i8** %286, align 8
  %288 = call i32 @strcasecmp(i8* %287, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i64 0, i64 0))
  %289 = icmp ne i32 %288, 0
  br i1 %289, label %293, label %290

290:                                              ; preds = %282
  %291 = load i64, i64* @TJXOP_ROT90, align 8
  %292 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 0
  store i64 %291, i64* %292, align 8
  br label %437

293:                                              ; preds = %282
  %294 = load i8**, i8*** %5, align 8
  %295 = load i32, i32* %19, align 4
  %296 = sext i32 %295 to i64
  %297 = getelementptr inbounds i8*, i8** %294, i64 %296
  %298 = load i8*, i8** %297, align 8
  %299 = call i32 @strcasecmp(i8* %298, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i64 0, i64 0))
  %300 = icmp ne i32 %299, 0
  br i1 %300, label %304, label %301

301:                                              ; preds = %293
  %302 = load i64, i64* @TJXOP_ROT180, align 8
  %303 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 0
  store i64 %302, i64* %303, align 8
  br label %436

304:                                              ; preds = %293
  %305 = load i8**, i8*** %5, align 8
  %306 = load i32, i32* %19, align 4
  %307 = sext i32 %306 to i64
  %308 = getelementptr inbounds i8*, i8** %305, i64 %307
  %309 = load i8*, i8** %308, align 8
  %310 = call i32 @strcasecmp(i8* %309, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i64 0, i64 0))
  %311 = icmp ne i32 %310, 0
  br i1 %311, label %315, label %312

312:                                              ; preds = %304
  %313 = load i64, i64* @TJXOP_ROT270, align 8
  %314 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 0
  store i64 %313, i64* %314, align 8
  br label %435

315:                                              ; preds = %304
  %316 = load i8**, i8*** %5, align 8
  %317 = load i32, i32* %19, align 4
  %318 = sext i32 %317 to i64
  %319 = getelementptr inbounds i8*, i8** %316, i64 %318
  %320 = load i8*, i8** %319, align 8
  %321 = call i32 @strcasecmp(i8* %320, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i64 0, i64 0))
  %322 = icmp ne i32 %321, 0
  br i1 %322, label %326, label %323

323:                                              ; preds = %315
  %324 = load i32*, i32** @customFilter, align 8
  %325 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 2
  store i32* %324, i32** %325, align 8
  br label %434

326:                                              ; preds = %315
  %327 = load i8**, i8*** %5, align 8
  %328 = load i32, i32* %19, align 4
  %329 = sext i32 %328 to i64
  %330 = getelementptr inbounds i8*, i8** %327, i64 %329
  %331 = load i8*, i8** %330, align 8
  %332 = call i32 @strncasecmp(i8* %331, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i64 0, i64 0), i32 2)
  %333 = icmp ne i32 %332, 0
  br i1 %333, label %386, label %334

334:                                              ; preds = %326
  %335 = load i32, i32* %19, align 4
  %336 = load i32, i32* %4, align 4
  %337 = sub nsw i32 %336, 1
  %338 = icmp slt i32 %335, %337
  br i1 %338, label %339, label %386

339:                                              ; preds = %334
  %340 = load i8**, i8*** %5, align 8
  %341 = load i32, i32* %19, align 4
  %342 = add nsw i32 %341, 1
  store i32 %342, i32* %19, align 4
  %343 = sext i32 %342 to i64
  %344 = getelementptr inbounds i8*, i8** %340, i64 %343
  %345 = load i8*, i8** %344, align 8
  %346 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 3
  %347 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %346, i32 0, i32 0
  %348 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 3
  %349 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %348, i32 0, i32 1
  %350 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 3
  %351 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %350, i32 0, i32 2
  %352 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 3
  %353 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %352, i32 0, i32 3
  %354 = call i32 (i8*, i8*, i32*, i32*, ...) @sscanf(i8* %345, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.19, i64 0, i64 0), i32* %347, i32* %349, i64* %351, i64* %353)
  %355 = icmp slt i32 %354, 4
  br i1 %355, label %376, label %356

356:                                              ; preds = %339
  %357 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 3
  %358 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %357, i32 0, i32 2
  %359 = load i64, i64* %358, align 8
  %360 = icmp slt i64 %359, 0
  br i1 %360, label %376, label %361

361:                                              ; preds = %356
  %362 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 3
  %363 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %362, i32 0, i32 3
  %364 = load i64, i64* %363, align 8
  %365 = icmp slt i64 %364, 0
  br i1 %365, label %376, label %366

366:                                              ; preds = %361
  %367 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 3
  %368 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %367, i32 0, i32 0
  %369 = load i32, i32* %368, align 8
  %370 = icmp slt i32 %369, 1
  br i1 %370, label %376, label %371

371:                                              ; preds = %366
  %372 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 3
  %373 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %372, i32 0, i32 1
  %374 = load i32, i32* %373, align 4
  %375 = icmp slt i32 %374, 1
  br i1 %375, label %376, label %381

376:                                              ; preds = %371, %366, %361, %356, %339
  %377 = load i8**, i8*** %5, align 8
  %378 = getelementptr inbounds i8*, i8** %377, i64 0
  %379 = load i8*, i8** %378, align 8
  %380 = call i32 @usage(i8* %379)
  br label %381

381:                                              ; preds = %376, %371
  %382 = load i32, i32* @TJXOPT_CROP, align 4
  %383 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 1
  %384 = load i32, i32* %383, align 8
  %385 = or i32 %384, %382
  store i32 %385, i32* %383, align 8
  br label %433

386:                                              ; preds = %334, %326
  %387 = load i8**, i8*** %5, align 8
  %388 = load i32, i32* %19, align 4
  %389 = sext i32 %388 to i64
  %390 = getelementptr inbounds i8*, i8** %387, i64 %389
  %391 = load i8*, i8** %390, align 8
  %392 = call i32 @strcasecmp(i8* %391, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20, i64 0, i64 0))
  %393 = icmp ne i32 %392, 0
  br i1 %393, label %399, label %394

394:                                              ; preds = %386
  %395 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.21, i64 0, i64 0))
  %396 = load i32, i32* @TJFLAG_FASTUPSAMPLE, align 4
  %397 = load i32, i32* %10, align 4
  %398 = or i32 %397, %396
  store i32 %398, i32* %10, align 4
  br label %432

399:                                              ; preds = %386
  %400 = load i8**, i8*** %5, align 8
  %401 = load i32, i32* %19, align 4
  %402 = sext i32 %401 to i64
  %403 = getelementptr inbounds i8*, i8** %400, i64 %402
  %404 = load i8*, i8** %403, align 8
  %405 = call i32 @strcasecmp(i8* %404, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.22, i64 0, i64 0))
  %406 = icmp ne i32 %405, 0
  br i1 %406, label %412, label %407

407:                                              ; preds = %399
  %408 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.23, i64 0, i64 0))
  %409 = load i32, i32* @TJFLAG_FASTDCT, align 4
  %410 = load i32, i32* %10, align 4
  %411 = or i32 %410, %409
  store i32 %411, i32* %10, align 4
  br label %431

412:                                              ; preds = %399
  %413 = load i8**, i8*** %5, align 8
  %414 = load i32, i32* %19, align 4
  %415 = sext i32 %414 to i64
  %416 = getelementptr inbounds i8*, i8** %413, i64 %415
  %417 = load i8*, i8** %416, align 8
  %418 = call i32 @strcasecmp(i8* %417, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.24, i64 0, i64 0))
  %419 = icmp ne i32 %418, 0
  br i1 %419, label %425, label %420

420:                                              ; preds = %412
  %421 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.25, i64 0, i64 0))
  %422 = load i32, i32* @TJFLAG_ACCURATEDCT, align 4
  %423 = load i32, i32* %10, align 4
  %424 = or i32 %423, %422
  store i32 %424, i32* %10, align 4
  br label %430

425:                                              ; preds = %412
  %426 = load i8**, i8*** %5, align 8
  %427 = getelementptr inbounds i8*, i8** %426, i64 0
  %428 = load i8*, i8** %427, align 8
  %429 = call i32 @usage(i8* %428)
  br label %430

430:                                              ; preds = %425, %420
  br label %431

431:                                              ; preds = %430, %407
  br label %432

432:                                              ; preds = %431, %394
  br label %433

433:                                              ; preds = %432, %381
  br label %434

434:                                              ; preds = %433, %323
  br label %435

435:                                              ; preds = %434, %312
  br label %436

436:                                              ; preds = %435, %301
  br label %437

437:                                              ; preds = %436, %290
  br label %438

438:                                              ; preds = %437, %279
  br label %439

439:                                              ; preds = %438, %268
  br label %440

440:                                              ; preds = %439, %257
  br label %441

441:                                              ; preds = %440, %246
  br label %442

442:                                              ; preds = %441, %233
  br label %443

443:                                              ; preds = %442, %224
  br label %444

444:                                              ; preds = %443, %192
  br label %445

445:                                              ; preds = %444, %128
  br label %446

446:                                              ; preds = %445
  %447 = load i32, i32* %19, align 4
  %448 = add nsw i32 %447, 1
  store i32 %448, i32* %19, align 4
  br label %51

449:                                              ; preds = %51
  %450 = load i8**, i8*** %5, align 8
  %451 = getelementptr inbounds i8*, i8** %450, i64 1
  %452 = load i8*, i8** %451, align 8
  %453 = call i8* @strrchr(i8* %452, i8 signext 46)
  store i8* %453, i8** %13, align 8
  %454 = load i8**, i8*** %5, align 8
  %455 = getelementptr inbounds i8*, i8** %454, i64 2
  %456 = load i8*, i8** %455, align 8
  %457 = call i8* @strrchr(i8* %456, i8 signext 46)
  store i8* %457, i8** %14, align 8
  %458 = load i8*, i8** %13, align 8
  %459 = icmp eq i8* %458, null
  br i1 %459, label %471, label %460

460:                                              ; preds = %449
  %461 = load i8*, i8** %14, align 8
  %462 = icmp eq i8* %461, null
  br i1 %462, label %471, label %463

463:                                              ; preds = %460
  %464 = load i8*, i8** %13, align 8
  %465 = call i32 @strlen(i8* %464)
  %466 = icmp slt i32 %465, 2
  br i1 %466, label %471, label %467

467:                                              ; preds = %463
  %468 = load i8*, i8** %14, align 8
  %469 = call i32 @strlen(i8* %468)
  %470 = icmp slt i32 %469, 2
  br i1 %470, label %471, label %476

471:                                              ; preds = %467, %463, %460, %449
  %472 = load i8**, i8*** %5, align 8
  %473 = getelementptr inbounds i8*, i8** %472, i64 0
  %474 = load i8*, i8** %473, align 8
  %475 = call i32 @usage(i8* %474)
  br label %476

476:                                              ; preds = %471, %467
  %477 = load i8*, i8** %13, align 8
  %478 = getelementptr inbounds i8, i8* %477, i64 1
  store i8* %478, i8** %13, align 8
  %479 = load i8*, i8** %14, align 8
  %480 = getelementptr inbounds i8, i8* %479, i64 1
  store i8* %480, i8** %14, align 8
  %481 = load i8*, i8** %13, align 8
  %482 = call i32 @strcasecmp(i8* %481, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.26, i64 0, i64 0))
  %483 = icmp ne i32 %482, 0
  br i1 %483, label %697, label %484

484:                                              ; preds = %476
  %485 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 0
  %486 = load i64, i64* %485, align 8
  %487 = load i64, i64* @TJXOP_NONE, align 8
  %488 = icmp ne i64 %486, %487
  br i1 %488, label %497, label %489

489:                                              ; preds = %484
  %490 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 1
  %491 = load i32, i32* %490, align 8
  %492 = icmp ne i32 %491, 0
  br i1 %492, label %497, label %493

493:                                              ; preds = %489
  %494 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 2
  %495 = load i32*, i32** %494, align 8
  %496 = icmp ne i32* %495, null
  br label %497

497:                                              ; preds = %493, %489, %484
  %498 = phi i1 [ true, %489 ], [ true, %484 ], [ %496, %493 ]
  %499 = zext i1 %498 to i32
  store i32 %499, i32* %29, align 4
  %500 = load i8**, i8*** %5, align 8
  %501 = getelementptr inbounds i8*, i8** %500, i64 1
  %502 = load i8*, i8** %501, align 8
  %503 = call i32* @fopen(i8* %502, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.27, i64 0, i64 0))
  store i32* %503, i32** %15, align 8
  %504 = icmp eq i32* %503, null
  br i1 %504, label %505, label %507

505:                                              ; preds = %497
  %506 = call i32 @_throwunix(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.28, i64 0, i64 0))
  br label %507

507:                                              ; preds = %505, %497
  %508 = load i32*, i32** %15, align 8
  %509 = load i32, i32* @SEEK_END, align 4
  %510 = call i64 @fseek(i32* %508, i32 0, i32 %509)
  %511 = icmp slt i64 %510, 0
  br i1 %511, label %521, label %512

512:                                              ; preds = %507
  %513 = load i32*, i32** %15, align 8
  %514 = call i64 @ftell(i32* %513)
  store i64 %514, i64* %26, align 8
  %515 = icmp slt i64 %514, 0
  br i1 %515, label %521, label %516

516:                                              ; preds = %512
  %517 = load i32*, i32** %15, align 8
  %518 = load i32, i32* @SEEK_SET, align 4
  %519 = call i64 @fseek(i32* %517, i32 0, i32 %518)
  %520 = icmp slt i64 %519, 0
  br i1 %520, label %521, label %523

521:                                              ; preds = %516, %512, %507
  %522 = call i32 @_throwunix(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.29, i64 0, i64 0))
  br label %523

523:                                              ; preds = %521, %516
  %524 = load i64, i64* %26, align 8
  %525 = icmp eq i64 %524, 0
  br i1 %525, label %526, label %528

526:                                              ; preds = %523
  %527 = call i32 @_throw(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.29, i64 0, i64 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.30, i64 0, i64 0))
  br label %528

528:                                              ; preds = %526, %523
  %529 = load i64, i64* %26, align 8
  store i64 %529, i64* %30, align 8
  %530 = load i64, i64* %30, align 8
  %531 = trunc i64 %530 to i32
  %532 = call i64 @tjAlloc(i32 %531)
  %533 = inttoptr i64 %532 to i8*
  store i8* %533, i8** %17, align 8
  %534 = icmp eq i8* %533, null
  br i1 %534, label %535, label %537

535:                                              ; preds = %528
  %536 = call i32 @_throwunix(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.31, i64 0, i64 0))
  br label %537

537:                                              ; preds = %535, %528
  %538 = load i8*, i8** %17, align 8
  %539 = load i64, i64* %30, align 8
  %540 = load i32*, i32** %15, align 8
  %541 = call i32 @fread(i8* %538, i64 %539, i32 1, i32* %540)
  %542 = icmp slt i32 %541, 1
  br i1 %542, label %543, label %545

543:                                              ; preds = %537
  %544 = call i32 @_throwunix(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.32, i64 0, i64 0))
  br label %545

545:                                              ; preds = %543, %537
  %546 = load i32*, i32** %15, align 8
  %547 = call i32 @fclose(i32* %546)
  store i32* null, i32** %15, align 8
  %548 = load i32, i32* %29, align 4
  %549 = icmp ne i32 %548, 0
  br i1 %549, label %550, label %573

550:                                              ; preds = %545
  store i8* null, i8** %31, align 8
  store i64 0, i64* %32, align 8
  %551 = call i32* (...) @tjInitTransform()
  store i32* %551, i32** %21, align 8
  %552 = icmp eq i32* %551, null
  br i1 %552, label %553, label %555

553:                                              ; preds = %550
  %554 = call i32 @_throwtj(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.33, i64 0, i64 0))
  br label %555

555:                                              ; preds = %553, %550
  %556 = load i32, i32* @TJXOPT_TRIM, align 4
  %557 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 1
  %558 = load i32, i32* %557, align 8
  %559 = or i32 %558, %556
  store i32 %559, i32* %557, align 8
  %560 = load i32*, i32** %21, align 8
  %561 = load i8*, i8** %17, align 8
  %562 = load i64, i64* %30, align 8
  %563 = load i32, i32* %10, align 4
  %564 = call i64 @tjTransform(i32* %560, i8* %561, i64 %562, i32 1, i8** %31, i64* %32, %struct.TYPE_10__* %9, i32 %563)
  %565 = icmp slt i64 %564, 0
  br i1 %565, label %566, label %568

566:                                              ; preds = %555
  %567 = call i32 @_throwtj(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.34, i64 0, i64 0))
  br label %568

568:                                              ; preds = %566, %555
  %569 = load i8*, i8** %17, align 8
  %570 = call i32 @tjFree(i8* %569)
  %571 = load i8*, i8** %31, align 8
  store i8* %571, i8** %17, align 8
  %572 = load i64, i64* %32, align 8
  store i64 %572, i64* %30, align 8
  br label %579

573:                                              ; preds = %545
  %574 = call i32* (...) @tjInitDecompress()
  store i32* %574, i32** %21, align 8
  %575 = icmp eq i32* %574, null
  br i1 %575, label %576, label %578

576:                                              ; preds = %573
  %577 = call i32 @_throwtj(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.35, i64 0, i64 0))
  br label %578

578:                                              ; preds = %576, %573
  br label %579

579:                                              ; preds = %578, %568
  %580 = load i32*, i32** %21, align 8
  %581 = load i8*, i8** %17, align 8
  %582 = load i64, i64* %30, align 8
  %583 = call i64 @tjDecompressHeader3(i32* %580, i8* %581, i64 %582, i32* %11, i32* %12, i32* %27, i32* %28)
  %584 = icmp slt i64 %583, 0
  br i1 %584, label %585, label %587

585:                                              ; preds = %579
  %586 = call i32 @_throwtj(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.36, i64 0, i64 0))
  br label %587

587:                                              ; preds = %585, %579
  %588 = load i32, i32* %29, align 4
  %589 = icmp ne i32 %588, 0
  %590 = zext i1 %589 to i64
  %591 = select i1 %589, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.38, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.39, i64 0, i64 0)
  %592 = load i32, i32* %11, align 4
  %593 = load i32, i32* %12, align 4
  %594 = load i8**, i8*** @subsampName, align 8
  %595 = load i32, i32* %27, align 4
  %596 = sext i32 %595 to i64
  %597 = getelementptr inbounds i8*, i8** %594, i64 %596
  %598 = load i8*, i8** %597, align 8
  %599 = load i8**, i8*** @colorspaceName, align 8
  %600 = load i32, i32* %28, align 4
  %601 = sext i32 %600 to i64
  %602 = getelementptr inbounds i8*, i8** %599, i64 %601
  %603 = load i8*, i8** %602, align 8
  %604 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.37, i64 0, i64 0), i8* %591, i32 %592, i32 %593, i8* %598, i8* %603)
  %605 = load i8*, i8** %14, align 8
  %606 = call i32 @strcasecmp(i8* %605, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.26, i64 0, i64 0))
  %607 = icmp ne i32 %606, 0
  br i1 %607, label %644, label %608

608:                                              ; preds = %587
  %609 = load i32, i32* %29, align 4
  %610 = icmp ne i32 %609, 0
  br i1 %610, label %611, label %644

611:                                              ; preds = %608
  %612 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %6, i32 0, i32 2
  %613 = load i32, i32* %612, align 4
  %614 = icmp eq i32 %613, 1
  br i1 %614, label %615, label %644

615:                                              ; preds = %611
  %616 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %6, i32 0, i32 3
  %617 = load i32, i32* %616, align 4
  %618 = icmp eq i32 %617, 1
  br i1 %618, label %619, label %644

619:                                              ; preds = %615
  %620 = load i32, i32* %7, align 4
  %621 = icmp slt i32 %620, 0
  br i1 %621, label %622, label %644

622:                                              ; preds = %619
  %623 = load i32, i32* %8, align 4
  %624 = icmp slt i32 %623, 0
  br i1 %624, label %625, label %644

625:                                              ; preds = %622
  %626 = load i8**, i8*** %5, align 8
  %627 = getelementptr inbounds i8*, i8** %626, i64 2
  %628 = load i8*, i8** %627, align 8
  %629 = call i32* @fopen(i8* %628, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.40, i64 0, i64 0))
  store i32* %629, i32** %15, align 8
  %630 = icmp eq i32* %629, null
  br i1 %630, label %631, label %633

631:                                              ; preds = %625
  %632 = call i32 @_throwunix(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.41, i64 0, i64 0))
  br label %633

633:                                              ; preds = %631, %625
  %634 = load i8*, i8** %17, align 8
  %635 = load i64, i64* %30, align 8
  %636 = load i32*, i32** %15, align 8
  %637 = call i32 @fwrite(i8* %634, i64 %635, i32 1, i32* %636)
  %638 = icmp slt i32 %637, 1
  br i1 %638, label %639, label %641

639:                                              ; preds = %633
  %640 = call i32 @_throwunix(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.42, i64 0, i64 0))
  br label %641

641:                                              ; preds = %639, %633
  %642 = load i32*, i32** %15, align 8
  %643 = call i32 @fclose(i32* %642)
  store i32* null, i32** %15, align 8
  br label %799

644:                                              ; preds = %622, %619, %615, %611, %608, %587
  %645 = load i32, i32* %11, align 4
  %646 = bitcast %struct.TYPE_11__* %6 to { i64, i64 }*
  %647 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %646, i32 0, i32 0
  %648 = load i64, i64* %647, align 4
  %649 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %646, i32 0, i32 1
  %650 = load i64, i64* %649, align 4
  %651 = call i32 @TJSCALED(i32 %645, i64 %648, i64 %650)
  store i32 %651, i32* %11, align 4
  %652 = load i32, i32* %12, align 4
  %653 = bitcast %struct.TYPE_11__* %6 to { i64, i64 }*
  %654 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %653, i32 0, i32 0
  %655 = load i64, i64* %654, align 4
  %656 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %653, i32 0, i32 1
  %657 = load i64, i64* %656, align 4
  %658 = call i32 @TJSCALED(i32 %652, i64 %655, i64 %657)
  store i32 %658, i32* %12, align 4
  %659 = load i32, i32* %7, align 4
  %660 = icmp slt i32 %659, 0
  br i1 %660, label %661, label %663

661:                                              ; preds = %644
  %662 = load i32, i32* %27, align 4
  store i32 %662, i32* %7, align 4
  br label %663

663:                                              ; preds = %661, %644
  %664 = load i32, i32* @TJPF_BGRX, align 4
  store i32 %664, i32* %20, align 4
  %665 = load i32, i32* %11, align 4
  %666 = load i32, i32* %12, align 4
  %667 = mul nsw i32 %665, %666
  %668 = load i32*, i32** @tjPixelSize, align 8
  %669 = load i32, i32* %20, align 4
  %670 = sext i32 %669 to i64
  %671 = getelementptr inbounds i32, i32* %668, i64 %670
  %672 = load i32, i32* %671, align 4
  %673 = mul nsw i32 %667, %672
  %674 = call i64 @tjAlloc(i32 %673)
  %675 = inttoptr i64 %674 to i8*
  store i8* %675, i8** %16, align 8
  %676 = icmp eq i8* %675, null
  br i1 %676, label %677, label %679

677:                                              ; preds = %663
  %678 = call i32 @_throwunix(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.43, i64 0, i64 0))
  br label %679

679:                                              ; preds = %677, %663
  %680 = load i32*, i32** %21, align 8
  %681 = load i8*, i8** %17, align 8
  %682 = load i64, i64* %30, align 8
  %683 = load i8*, i8** %16, align 8
  %684 = load i32, i32* %11, align 4
  %685 = load i32, i32* %12, align 4
  %686 = load i32, i32* %20, align 4
  %687 = load i32, i32* %10, align 4
  %688 = call i64 @tjDecompress2(i32* %680, i8* %681, i64 %682, i8* %683, i32 %684, i32 0, i32 %685, i32 %686, i32 %687)
  %689 = icmp slt i64 %688, 0
  br i1 %689, label %690, label %692

690:                                              ; preds = %679
  %691 = call i32 @_throwtj(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.44, i64 0, i64 0))
  br label %692

692:                                              ; preds = %690, %679
  %693 = load i8*, i8** %17, align 8
  %694 = call i32 @tjFree(i8* %693)
  store i8* null, i8** %17, align 8
  %695 = load i32*, i32** %21, align 8
  %696 = call i32 @tjDestroy(i32* %695)
  store i32* null, i32** %21, align 8
  br label %721

697:                                              ; preds = %476
  %698 = load i8**, i8*** %5, align 8
  %699 = getelementptr inbounds i8*, i8** %698, i64 1
  %700 = load i8*, i8** %699, align 8
  %701 = call i8* @tjLoadImage(i8* %700, i32* %11, i32 1, i32* %12, i32* %20, i32 0)
  store i8* %701, i8** %16, align 8
  %702 = icmp eq i8* %701, null
  br i1 %702, label %703, label %705

703:                                              ; preds = %697
  %704 = call i32 @_throwtj(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.45, i64 0, i64 0))
  br label %705

705:                                              ; preds = %703, %697
  %706 = load i32, i32* %7, align 4
  %707 = icmp slt i32 %706, 0
  br i1 %707, label %708, label %717

708:                                              ; preds = %705
  %709 = load i32, i32* %20, align 4
  %710 = load i32, i32* @TJPF_GRAY, align 4
  %711 = icmp eq i32 %709, %710
  br i1 %711, label %712, label %714

712:                                              ; preds = %708
  %713 = load i32, i32* @TJSAMP_GRAY, align 4
  store i32 %713, i32* %7, align 4
  br label %716

714:                                              ; preds = %708
  %715 = load i32, i32* @TJSAMP_444, align 4
  store i32 %715, i32* %7, align 4
  br label %716

716:                                              ; preds = %714, %712
  br label %717

717:                                              ; preds = %716, %705
  %718 = load i32, i32* %11, align 4
  %719 = load i32, i32* %12, align 4
  %720 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.46, i64 0, i64 0), i32 %718, i32 %719)
  br label %721

721:                                              ; preds = %717, %692
  %722 = load i8*, i8** %14, align 8
  %723 = load i32, i32* %11, align 4
  %724 = load i32, i32* %12, align 4
  %725 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.47, i64 0, i64 0), i8* %722, i32 %723, i32 %724)
  %726 = load i8*, i8** %14, align 8
  %727 = call i32 @strcasecmp(i8* %726, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.26, i64 0, i64 0))
  %728 = icmp ne i32 %727, 0
  br i1 %728, label %784, label %729

729:                                              ; preds = %721
  store i8* null, i8** %33, align 8
  store i64 0, i64* %34, align 8
  %730 = load i32, i32* %8, align 4
  %731 = icmp slt i32 %730, 0
  br i1 %731, label %732, label %734

732:                                              ; preds = %729
  %733 = load i32, i32* @DEFAULT_QUALITY, align 4
  store i32 %733, i32* %8, align 4
  br label %734

734:                                              ; preds = %732, %729
  %735 = load i8**, i8*** @subsampName, align 8
  %736 = load i32, i32* %7, align 4
  %737 = sext i32 %736 to i64
  %738 = getelementptr inbounds i8*, i8** %735, i64 %737
  %739 = load i8*, i8** %738, align 8
  %740 = load i32, i32* %8, align 4
  %741 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.48, i64 0, i64 0), i8* %739, i32 %740)
  %742 = call i32* (...) @tjInitCompress()
  store i32* %742, i32** %21, align 8
  %743 = icmp eq i32* %742, null
  br i1 %743, label %744, label %746

744:                                              ; preds = %734
  %745 = call i32 @_throwtj(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.49, i64 0, i64 0))
  br label %746

746:                                              ; preds = %744, %734
  %747 = load i32*, i32** %21, align 8
  %748 = load i8*, i8** %16, align 8
  %749 = load i32, i32* %11, align 4
  %750 = load i32, i32* %12, align 4
  %751 = load i32, i32* %20, align 4
  %752 = load i32, i32* %7, align 4
  %753 = load i32, i32* %8, align 4
  %754 = load i32, i32* %10, align 4
  %755 = call i64 @tjCompress2(i32* %747, i8* %748, i32 %749, i32 0, i32 %750, i32 %751, i8** %33, i64* %34, i32 %752, i32 %753, i32 %754)
  %756 = icmp slt i64 %755, 0
  br i1 %756, label %757, label %759

757:                                              ; preds = %746
  %758 = call i32 @_throwtj(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.50, i64 0, i64 0))
  br label %759

759:                                              ; preds = %757, %746
  %760 = load i32*, i32** %21, align 8
  %761 = call i32 @tjDestroy(i32* %760)
  store i32* null, i32** %21, align 8
  %762 = load i8**, i8*** %5, align 8
  %763 = getelementptr inbounds i8*, i8** %762, i64 2
  %764 = load i8*, i8** %763, align 8
  %765 = call i32* @fopen(i8* %764, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.40, i64 0, i64 0))
  store i32* %765, i32** %15, align 8
  %766 = icmp eq i32* %765, null
  br i1 %766, label %767, label %769

767:                                              ; preds = %759
  %768 = call i32 @_throwunix(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.41, i64 0, i64 0))
  br label %769

769:                                              ; preds = %767, %759
  %770 = load i8*, i8** %33, align 8
  %771 = load i64, i64* %34, align 8
  %772 = load i32*, i32** %15, align 8
  %773 = call i32 @fwrite(i8* %770, i64 %771, i32 1, i32* %772)
  %774 = icmp slt i32 %773, 1
  br i1 %774, label %775, label %777

775:                                              ; preds = %769
  %776 = call i32 @_throwunix(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.42, i64 0, i64 0))
  br label %777

777:                                              ; preds = %775, %769
  %778 = load i32*, i32** %21, align 8
  %779 = call i32 @tjDestroy(i32* %778)
  store i32* null, i32** %21, align 8
  %780 = load i32*, i32** %15, align 8
  %781 = call i32 @fclose(i32* %780)
  store i32* null, i32** %15, align 8
  %782 = load i8*, i8** %33, align 8
  %783 = call i32 @tjFree(i8* %782)
  store i8* null, i8** %33, align 8
  br label %798

784:                                              ; preds = %721
  %785 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.51, i64 0, i64 0))
  %786 = load i8**, i8*** %5, align 8
  %787 = getelementptr inbounds i8*, i8** %786, i64 2
  %788 = load i8*, i8** %787, align 8
  %789 = load i8*, i8** %16, align 8
  %790 = load i32, i32* %11, align 4
  %791 = load i32, i32* %12, align 4
  %792 = load i32, i32* %20, align 4
  %793 = call i64 @tjSaveImage(i8* %788, i8* %789, i32 %790, i32 0, i32 %791, i32 %792, i32 0)
  %794 = icmp slt i64 %793, 0
  br i1 %794, label %795, label %797

795:                                              ; preds = %784
  %796 = call i32 @_throwtj(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.52, i64 0, i64 0))
  br label %797

797:                                              ; preds = %795, %784
  br label %798

798:                                              ; preds = %797, %777
  br label %799

799:                                              ; preds = %798, %641
  %800 = load i8*, i8** %16, align 8
  %801 = icmp ne i8* %800, null
  br i1 %801, label %802, label %805

802:                                              ; preds = %799
  %803 = load i8*, i8** %16, align 8
  %804 = call i32 @tjFree(i8* %803)
  br label %805

805:                                              ; preds = %802, %799
  %806 = load i32*, i32** %21, align 8
  %807 = icmp ne i32* %806, null
  br i1 %807, label %808, label %811

808:                                              ; preds = %805
  %809 = load i32*, i32** %21, align 8
  %810 = call i32 @tjDestroy(i32* %809)
  br label %811

811:                                              ; preds = %808, %805
  %812 = load i8*, i8** %17, align 8
  %813 = icmp ne i8* %812, null
  br i1 %813, label %814, label %817

814:                                              ; preds = %811
  %815 = load i8*, i8** %17, align 8
  %816 = call i32 @tjFree(i8* %815)
  br label %817

817:                                              ; preds = %814, %811
  %818 = load i32*, i32** %15, align 8
  %819 = icmp ne i32* %818, null
  br i1 %819, label %820, label %823

820:                                              ; preds = %817
  %821 = load i32*, i32** %15, align 8
  %822 = call i32 @fclose(i32* %821)
  br label %823

823:                                              ; preds = %820, %817
  %824 = load i32, i32* %18, align 4
  ret i32 %824
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local %struct.TYPE_11__* @tjGetScalingFactors(i32*) #2

declare dso_local i32 @_throwtj(i8*) #2

declare dso_local i32 @memset(%struct.TYPE_10__*, i32, i32) #2

declare dso_local i32 @usage(i8*) #2

declare dso_local i32 @strncasecmp(i8*, i8*, i32) #2

declare dso_local i32 @sscanf(i8*, i8*, i32*, i32*, ...) #2

declare dso_local i32 @strcasecmp(i8*, i8*) #2

declare dso_local i32 @atoi(i8*) #2

declare dso_local i32 @printf(i8*, ...) #2

declare dso_local i8* @strrchr(i8*, i8 signext) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32* @fopen(i8*, i8*) #2

declare dso_local i32 @_throwunix(i8*) #2

declare dso_local i64 @fseek(i32*, i32, i32) #2

declare dso_local i64 @ftell(i32*) #2

declare dso_local i32 @_throw(i8*, i8*) #2

declare dso_local i64 @tjAlloc(i32) #2

declare dso_local i32 @fread(i8*, i64, i32, i32*) #2

declare dso_local i32 @fclose(i32*) #2

declare dso_local i32* @tjInitTransform(...) #2

declare dso_local i64 @tjTransform(i32*, i8*, i64, i32, i8**, i64*, %struct.TYPE_10__*, i32) #2

declare dso_local i32 @tjFree(i8*) #2

declare dso_local i32* @tjInitDecompress(...) #2

declare dso_local i64 @tjDecompressHeader3(i32*, i8*, i64, i32*, i32*, i32*, i32*) #2

declare dso_local i32 @fwrite(i8*, i64, i32, i32*) #2

declare dso_local i32 @TJSCALED(i32, i64, i64) #2

declare dso_local i64 @tjDecompress2(i32*, i8*, i64, i8*, i32, i32, i32, i32, i32) #2

declare dso_local i32 @tjDestroy(i32*) #2

declare dso_local i8* @tjLoadImage(i8*, i32*, i32, i32*, i32*, i32) #2

declare dso_local i32* @tjInitCompress(...) #2

declare dso_local i64 @tjCompress2(i32*, i8*, i32, i32, i32, i32, i8**, i64*, i32, i32, i32) #2

declare dso_local i64 @tjSaveImage(i8*, i8*, i32, i32, i32, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
