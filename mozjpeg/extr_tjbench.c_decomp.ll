; ModuleID = '/home/carl/AnghaBench/mozjpeg/extr_tjbench.c_decomp.c'
source_filename = "/home/carl/AnghaBench/mozjpeg/extr_tjbench.c_decomp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@tjPixelSize = common dso_local global i32* null, align 8
@pf = common dso_local global i64 0, align 8
@sf = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@.str = private unnamed_addr constant [5 x i8] c"_Q%d\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"executing tjInitDecompress()\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"allocating destination buffer\00", align 1
@doYUV = common dso_local global i64 0, align 8
@doTile = common dso_local global i64 0, align 8
@yuvPad = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [22 x i8] c"allocating YUV buffer\00", align 1
@flags = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [31 x i8] c"executing tjDecompressToYUV2()\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"executing tjDecodeYUV()\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"executing tjDecompress2()\00", align 1
@benchTime = common dso_local global double 0.000000e+00, align 8
@warmup = common dso_local global double 0.000000e+00, align 8
@.str.7 = private unnamed_addr constant [22 x i8] c"executing tjDestroy()\00", align 1
@quiet = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [7 x i8] c"%-6s%s\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"  \00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.12 = private unnamed_addr constant [35 x i8] c"%s --> Frame rate:         %f fps\0A\00", align 1
@.str.13 = private unnamed_addr constant [14 x i8] c"Decomp to YUV\00", align 1
@.str.14 = private unnamed_addr constant [14 x i8] c"Decompress   \00", align 1
@.str.15 = private unnamed_addr constant [57 x i8] c"                  Throughput:         %f Megapixels/sec\0A\00", align 1
@.str.16 = private unnamed_addr constant [46 x i8] c"YUV Decode    --> Frame rate:         %f fps\0A\00", align 1
@doWrite = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [6 x i8] c"%d_%d\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"%dx%d\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"full\00", align 1
@decompOnly = common dso_local global i64 0, align 8
@.str.20 = private unnamed_addr constant [9 x i8] c"%s_%s.%s\00", align 1
@ext = common dso_local global i8* null, align 8
@.str.21 = private unnamed_addr constant [14 x i8] c"%s_%s%s_%s.%s\00", align 1
@subName = common dso_local global i8** null, align 8
@.str.22 = private unnamed_addr constant [14 x i8] c"saving bitmap\00", align 1
@.str.23 = private unnamed_addr constant [8 x i8] c"-err.%s\00", align 1
@.str.24 = private unnamed_addr constant [34 x i8] c"Compression error written to %s.\0A\00", align 1
@TJ_GRAYSCALE = common dso_local global i32 0, align 4
@tjRedOffset = common dso_local global i32* null, align 8
@tjGreenOffset = common dso_local global i32* null, align 8
@tjBlueOffset = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @decomp(i8* %0, i8** %1, i64* %2, i8* %3, i32 %4, i32 %5, i32 %6, i32 %7, i8* %8, i32 %9, i32 %10) #0 {
  %12 = alloca i8*, align 8
  %13 = alloca i8**, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca [1024 x i8], align 16
  %24 = alloca [20 x i8], align 16
  %25 = alloca [6 x i8], align 1
  %26 = alloca i8*, align 8
  %27 = alloca i32*, align 8
  %28 = alloca i32*, align 8
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca double, align 8
  %35 = alloca double, align 8
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = alloca i32, align 4
  %40 = alloca i32, align 4
  %41 = alloca i32, align 4
  %42 = alloca i8*, align 8
  %43 = alloca i8*, align 8
  %44 = alloca i8*, align 8
  %45 = alloca i32, align 4
  %46 = alloca i32, align 4
  %47 = alloca i32, align 4
  %48 = alloca i32, align 4
  %49 = alloca double, align 8
  %50 = alloca i32, align 4
  %51 = alloca i32, align 4
  %52 = alloca double, align 8
  %53 = alloca i32, align 4
  %54 = alloca i32, align 4
  %55 = alloca i32, align 4
  %56 = alloca i32, align 4
  %57 = alloca i32, align 4
  %58 = alloca i32, align 4
  store i8* %0, i8** %12, align 8
  store i8** %1, i8*** %13, align 8
  store i64* %2, i64** %14, align 8
  store i8* %3, i8** %15, align 8
  store i32 %4, i32* %16, align 4
  store i32 %5, i32* %17, align 4
  store i32 %6, i32* %18, align 4
  store i32 %7, i32* %19, align 4
  store i8* %8, i8** %20, align 8
  store i32 %9, i32* %21, align 4
  store i32 %10, i32* %22, align 4
  %59 = bitcast [20 x i8]* %24 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %59, i8 0, i64 20, i1 false)
  %60 = bitcast [6 x i8]* %25 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 1 %60, i8 0, i64 6, i1 false)
  store i32* null, i32** %27, align 8
  store i32* null, i32** %28, align 8
  store i32 0, i32* %31, align 4
  store i32 0, i32* %32, align 4
  store i32 0, i32* %33, align 4
  %61 = load i32*, i32** @tjPixelSize, align 8
  %62 = load i64, i64* @pf, align 8
  %63 = getelementptr inbounds i32, i32* %61, i64 %62
  %64 = load i32, i32* %63, align 4
  store i32 %64, i32* %36, align 4
  %65 = load i32, i32* %16, align 4
  %66 = load i64, i64* bitcast (%struct.TYPE_3__* @sf to i64*), align 4
  %67 = call i32 @TJSCALED(i32 %65, i64 %66)
  store i32 %67, i32* %37, align 4
  %68 = load i32, i32* %17, align 4
  %69 = load i64, i64* bitcast (%struct.TYPE_3__* @sf to i64*), align 4
  %70 = call i32 @TJSCALED(i32 %68, i64 %69)
  store i32 %70, i32* %38, align 4
  %71 = load i32, i32* %37, align 4
  %72 = load i32, i32* %36, align 4
  %73 = mul nsw i32 %71, %72
  store i32 %73, i32* %39, align 4
  %74 = load i32, i32* %16, align 4
  %75 = load i32, i32* %21, align 4
  %76 = add nsw i32 %74, %75
  %77 = sub nsw i32 %76, 1
  %78 = load i32, i32* %21, align 4
  %79 = sdiv i32 %77, %78
  store i32 %79, i32* %40, align 4
  %80 = load i32, i32* %17, align 4
  %81 = load i32, i32* %22, align 4
  %82 = add nsw i32 %80, %81
  %83 = sub nsw i32 %82, 1
  %84 = load i32, i32* %22, align 4
  %85 = sdiv i32 %83, %84
  store i32 %85, i32* %41, align 4
  store i8* null, i8** %44, align 8
  %86 = load i32, i32* %19, align 4
  %87 = icmp sgt i32 %86, 0
  br i1 %87, label %88, label %93

88:                                               ; preds = %11
  %89 = getelementptr inbounds [6 x i8], [6 x i8]* %25, i64 0, i64 0
  %90 = load i32, i32* %19, align 4
  %91 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %89, i32 6, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %90)
  %92 = getelementptr inbounds [6 x i8], [6 x i8]* %25, i64 0, i64 5
  store i8 0, i8* %92, align 1
  br label %93

93:                                               ; preds = %88, %11
  %94 = call i32* (...) @tjInitDecompress()
  store i32* %94, i32** %28, align 8
  %95 = icmp eq i32* %94, null
  br i1 %95, label %96, label %98

96:                                               ; preds = %93
  %97 = call i32 @_throwtj(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  br label %98

98:                                               ; preds = %96, %93
  %99 = load i8*, i8** %15, align 8
  %100 = icmp eq i8* %99, null
  br i1 %100, label %101, label %111

101:                                              ; preds = %98
  %102 = load i32, i32* %39, align 4
  %103 = load i32, i32* %38, align 4
  %104 = mul nsw i32 %102, %103
  %105 = call i64 @malloc(i32 %104)
  %106 = inttoptr i64 %105 to i8*
  store i8* %106, i8** %15, align 8
  %107 = icmp eq i8* %106, null
  br i1 %107, label %108, label %110

108:                                              ; preds = %101
  %109 = call i32 @_throwunix(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  br label %110

110:                                              ; preds = %108, %101
  store i32 1, i32* %32, align 4
  br label %111

111:                                              ; preds = %110, %98
  %112 = load i8*, i8** %15, align 8
  %113 = load i32, i32* %39, align 4
  %114 = load i32, i32* %38, align 4
  %115 = mul nsw i32 %113, %114
  %116 = call i32 @memset(i8* %112, i32 127, i32 %115)
  %117 = load i64, i64* @doYUV, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %151

119:                                              ; preds = %111
  %120 = load i64, i64* @doTile, align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %124

122:                                              ; preds = %119
  %123 = load i32, i32* %21, align 4
  br label %126

124:                                              ; preds = %119
  %125 = load i32, i32* %37, align 4
  br label %126

126:                                              ; preds = %124, %122
  %127 = phi i32 [ %123, %122 ], [ %125, %124 ]
  store i32 %127, i32* %45, align 4
  %128 = load i64, i64* @doTile, align 8
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %132

130:                                              ; preds = %126
  %131 = load i32, i32* %22, align 4
  br label %134

132:                                              ; preds = %126
  %133 = load i32, i32* %38, align 4
  br label %134

134:                                              ; preds = %132, %130
  %135 = phi i32 [ %131, %130 ], [ %133, %132 ]
  store i32 %135, i32* %46, align 4
  %136 = load i32, i32* %45, align 4
  %137 = load i32, i32* @yuvPad, align 4
  %138 = load i32, i32* %46, align 4
  %139 = load i32, i32* %18, align 4
  %140 = call i32 @tjBufSizeYUV2(i32 %136, i32 %137, i32 %138, i32 %139)
  store i32 %140, i32* %47, align 4
  %141 = load i32, i32* %47, align 4
  %142 = call i64 @malloc(i32 %141)
  %143 = inttoptr i64 %142 to i8*
  store i8* %143, i8** %44, align 8
  %144 = icmp eq i8* %143, null
  br i1 %144, label %145, label %147

145:                                              ; preds = %134
  %146 = call i32 @_throwunix(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  br label %147

147:                                              ; preds = %145, %134
  %148 = load i8*, i8** %44, align 8
  %149 = load i32, i32* %47, align 4
  %150 = call i32 @memset(i8* %148, i32 127, i32 %149)
  br label %151

151:                                              ; preds = %147, %111
  store i32 -1, i32* %31, align 4
  store double 0.000000e+00, double* %35, align 8
  store double 0.000000e+00, double* %34, align 8
  br label %152

152:                                              ; preds = %151, %310
  store i32 0, i32* %48, align 4
  %153 = call double (...) @getTime()
  store double %153, double* %49, align 8
  store i32 0, i32* %29, align 4
  %154 = load i8*, i8** %15, align 8
  store i8* %154, i8** %42, align 8
  br label %155

155:                                              ; preds = %279, %152
  %156 = load i32, i32* %29, align 4
  %157 = load i32, i32* %41, align 4
  %158 = icmp slt i32 %156, %157
  br i1 %158, label %159, label %288

159:                                              ; preds = %155
  store i32 0, i32* %30, align 4
  %160 = load i8*, i8** %42, align 8
  store i8* %160, i8** %43, align 8
  br label %161

161:                                              ; preds = %267, %159
  %162 = load i32, i32* %30, align 4
  %163 = load i32, i32* %40, align 4
  %164 = icmp slt i32 %162, %163
  br i1 %164, label %165, label %278

165:                                              ; preds = %161
  %166 = load i64, i64* @doTile, align 8
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %176

168:                                              ; preds = %165
  %169 = load i32, i32* %21, align 4
  %170 = load i32, i32* %16, align 4
  %171 = load i32, i32* %30, align 4
  %172 = load i32, i32* %21, align 4
  %173 = mul nsw i32 %171, %172
  %174 = sub nsw i32 %170, %173
  %175 = call i32 @min(i32 %169, i32 %174)
  br label %178

176:                                              ; preds = %165
  %177 = load i32, i32* %37, align 4
  br label %178

178:                                              ; preds = %176, %168
  %179 = phi i32 [ %175, %168 ], [ %177, %176 ]
  store i32 %179, i32* %50, align 4
  %180 = load i64, i64* @doTile, align 8
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %190

182:                                              ; preds = %178
  %183 = load i32, i32* %22, align 4
  %184 = load i32, i32* %17, align 4
  %185 = load i32, i32* %29, align 4
  %186 = load i32, i32* %22, align 4
  %187 = mul nsw i32 %185, %186
  %188 = sub nsw i32 %184, %187
  %189 = call i32 @min(i32 %183, i32 %188)
  br label %192

190:                                              ; preds = %178
  %191 = load i32, i32* %38, align 4
  br label %192

192:                                              ; preds = %190, %182
  %193 = phi i32 [ %189, %182 ], [ %191, %190 ]
  store i32 %193, i32* %51, align 4
  %194 = load i64, i64* @doYUV, align 8
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %196, label %243

196:                                              ; preds = %192
  %197 = load i32*, i32** %28, align 8
  %198 = load i8**, i8*** %13, align 8
  %199 = load i32, i32* %48, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds i8*, i8** %198, i64 %200
  %202 = load i8*, i8** %201, align 8
  %203 = load i64*, i64** %14, align 8
  %204 = load i32, i32* %48, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds i64, i64* %203, i64 %205
  %207 = load i64, i64* %206, align 8
  %208 = load i8*, i8** %44, align 8
  %209 = load i32, i32* %50, align 4
  %210 = load i32, i32* @yuvPad, align 4
  %211 = load i32, i32* %51, align 4
  %212 = load i32, i32* @flags, align 4
  %213 = call i32 @tjDecompressToYUV2(i32* %197, i8* %202, i64 %207, i8* %208, i32 %209, i32 %210, i32 %211, i32 %212)
  %214 = icmp eq i32 %213, -1
  br i1 %214, label %215, label %217

215:                                              ; preds = %196
  %216 = call i32 @_throwtj(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0))
  br label %217

217:                                              ; preds = %215, %196
  %218 = call double (...) @getTime()
  store double %218, double* %52, align 8
  %219 = load i32*, i32** %28, align 8
  %220 = load i8*, i8** %44, align 8
  %221 = load i32, i32* @yuvPad, align 4
  %222 = load i32, i32* %18, align 4
  %223 = load i8*, i8** %43, align 8
  %224 = load i32, i32* %50, align 4
  %225 = load i32, i32* %39, align 4
  %226 = load i32, i32* %51, align 4
  %227 = load i64, i64* @pf, align 8
  %228 = load i32, i32* @flags, align 4
  %229 = call i32 @tjDecodeYUV(i32* %219, i8* %220, i32 %221, i32 %222, i8* %223, i32 %224, i32 %225, i32 %226, i64 %227, i32 %228)
  %230 = icmp eq i32 %229, -1
  br i1 %230, label %231, label %233

231:                                              ; preds = %217
  %232 = call i32 @_throwtj(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0))
  br label %233

233:                                              ; preds = %231, %217
  %234 = load i32, i32* %31, align 4
  %235 = icmp sge i32 %234, 0
  br i1 %235, label %236, label %242

236:                                              ; preds = %233
  %237 = call double (...) @getTime()
  %238 = load double, double* %52, align 8
  %239 = fsub double %237, %238
  %240 = load double, double* %35, align 8
  %241 = fadd double %240, %239
  store double %241, double* %35, align 8
  br label %242

242:                                              ; preds = %236, %233
  br label %266

243:                                              ; preds = %192
  %244 = load i32*, i32** %28, align 8
  %245 = load i8**, i8*** %13, align 8
  %246 = load i32, i32* %48, align 4
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds i8*, i8** %245, i64 %247
  %249 = load i8*, i8** %248, align 8
  %250 = load i64*, i64** %14, align 8
  %251 = load i32, i32* %48, align 4
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds i64, i64* %250, i64 %252
  %254 = load i64, i64* %253, align 8
  %255 = load i8*, i8** %43, align 8
  %256 = load i32, i32* %50, align 4
  %257 = load i32, i32* %39, align 4
  %258 = load i32, i32* %51, align 4
  %259 = load i64, i64* @pf, align 8
  %260 = load i32, i32* @flags, align 4
  %261 = call i32 @tjDecompress2(i32* %244, i8* %249, i64 %254, i8* %255, i32 %256, i32 %257, i32 %258, i64 %259, i32 %260)
  %262 = icmp eq i32 %261, -1
  br i1 %262, label %263, label %265

263:                                              ; preds = %243
  %264 = call i32 @_throwtj(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0))
  br label %265

265:                                              ; preds = %263, %243
  br label %266

266:                                              ; preds = %265, %242
  br label %267

267:                                              ; preds = %266
  %268 = load i32, i32* %30, align 4
  %269 = add nsw i32 %268, 1
  store i32 %269, i32* %30, align 4
  %270 = load i32, i32* %48, align 4
  %271 = add nsw i32 %270, 1
  store i32 %271, i32* %48, align 4
  %272 = load i32, i32* %36, align 4
  %273 = load i32, i32* %21, align 4
  %274 = mul nsw i32 %272, %273
  %275 = load i8*, i8** %43, align 8
  %276 = sext i32 %274 to i64
  %277 = getelementptr inbounds i8, i8* %275, i64 %276
  store i8* %277, i8** %43, align 8
  br label %161

278:                                              ; preds = %161
  br label %279

279:                                              ; preds = %278
  %280 = load i32, i32* %29, align 4
  %281 = add nsw i32 %280, 1
  store i32 %281, i32* %29, align 4
  %282 = load i32, i32* %39, align 4
  %283 = load i32, i32* %22, align 4
  %284 = mul nsw i32 %282, %283
  %285 = load i8*, i8** %42, align 8
  %286 = sext i32 %284 to i64
  %287 = getelementptr inbounds i8, i8* %285, i64 %286
  store i8* %287, i8** %42, align 8
  br label %155

288:                                              ; preds = %155
  %289 = call double (...) @getTime()
  %290 = load double, double* %49, align 8
  %291 = fsub double %289, %290
  %292 = load double, double* %34, align 8
  %293 = fadd double %292, %291
  store double %293, double* %34, align 8
  %294 = load i32, i32* %31, align 4
  %295 = icmp sge i32 %294, 0
  br i1 %295, label %296, label %304

296:                                              ; preds = %288
  %297 = load i32, i32* %31, align 4
  %298 = add nsw i32 %297, 1
  store i32 %298, i32* %31, align 4
  %299 = load double, double* %34, align 8
  %300 = load double, double* @benchTime, align 8
  %301 = fcmp oge double %299, %300
  br i1 %301, label %302, label %303

302:                                              ; preds = %296
  br label %311

303:                                              ; preds = %296
  br label %310

304:                                              ; preds = %288
  %305 = load double, double* %34, align 8
  %306 = load double, double* @warmup, align 8
  %307 = fcmp oge double %305, %306
  br i1 %307, label %308, label %309

308:                                              ; preds = %304
  store i32 0, i32* %31, align 4
  store double 0.000000e+00, double* %35, align 8
  store double 0.000000e+00, double* %34, align 8
  br label %309

309:                                              ; preds = %308, %304
  br label %310

310:                                              ; preds = %309, %303
  br label %152

311:                                              ; preds = %302
  %312 = load i64, i64* @doYUV, align 8
  %313 = icmp ne i64 %312, 0
  br i1 %313, label %314, label %318

314:                                              ; preds = %311
  %315 = load double, double* %35, align 8
  %316 = load double, double* %34, align 8
  %317 = fsub double %316, %315
  store double %317, double* %34, align 8
  br label %318

318:                                              ; preds = %314, %311
  %319 = load i32*, i32** %28, align 8
  %320 = call i32 @tjDestroy(i32* %319)
  %321 = icmp eq i32 %320, -1
  br i1 %321, label %322, label %324

322:                                              ; preds = %318
  %323 = call i32 @_throwtj(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0))
  br label %324

324:                                              ; preds = %322, %318
  store i32* null, i32** %28, align 8
  %325 = load i32, i32* @quiet, align 4
  %326 = icmp ne i32 %325, 0
  br i1 %326, label %327, label %368

327:                                              ; preds = %324
  %328 = load i32, i32* %16, align 4
  %329 = load i32, i32* %17, align 4
  %330 = mul nsw i32 %328, %329
  %331 = sitofp i32 %330 to double
  %332 = fdiv double %331, 1.000000e+06
  %333 = load i32, i32* %31, align 4
  %334 = sitofp i32 %333 to double
  %335 = fmul double %332, %334
  %336 = load double, double* %34, align 8
  %337 = fdiv double %335, %336
  %338 = getelementptr inbounds [1024 x i8], [1024 x i8]* %23, i64 0, i64 0
  %339 = call i8* @sigfig(double %337, i32 4, i8* %338, i32 1024)
  %340 = load i32, i32* @quiet, align 4
  %341 = icmp eq i32 %340, 2
  %342 = zext i1 %341 to i64
  %343 = select i1 %341, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0)
  %344 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i8* %339, i8* %343)
  %345 = load i64, i64* @doYUV, align 8
  %346 = icmp ne i64 %345, 0
  br i1 %346, label %347, label %361

347:                                              ; preds = %327
  %348 = load i32, i32* %16, align 4
  %349 = load i32, i32* %17, align 4
  %350 = mul nsw i32 %348, %349
  %351 = sitofp i32 %350 to double
  %352 = fdiv double %351, 1.000000e+06
  %353 = load i32, i32* %31, align 4
  %354 = sitofp i32 %353 to double
  %355 = fmul double %352, %354
  %356 = load double, double* %35, align 8
  %357 = fdiv double %355, %356
  %358 = getelementptr inbounds [1024 x i8], [1024 x i8]* %23, i64 0, i64 0
  %359 = call i8* @sigfig(double %357, i32 4, i8* %358, i32 1024)
  %360 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i8* %359)
  br label %367

361:                                              ; preds = %327
  %362 = load i32, i32* @quiet, align 4
  %363 = icmp ne i32 %362, 2
  br i1 %363, label %364, label %366

364:                                              ; preds = %361
  %365 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0))
  br label %366

366:                                              ; preds = %364, %361
  br label %367

367:                                              ; preds = %366, %347
  br label %409

368:                                              ; preds = %324
  %369 = load i64, i64* @doYUV, align 8
  %370 = icmp ne i64 %369, 0
  %371 = zext i1 %370 to i64
  %372 = select i1 %370, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.14, i64 0, i64 0)
  %373 = load i32, i32* %31, align 4
  %374 = sitofp i32 %373 to double
  %375 = load double, double* %34, align 8
  %376 = fdiv double %374, %375
  %377 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.12, i64 0, i64 0), i8* %372, double %376)
  %378 = load i32, i32* %16, align 4
  %379 = load i32, i32* %17, align 4
  %380 = mul nsw i32 %378, %379
  %381 = sitofp i32 %380 to double
  %382 = fdiv double %381, 1.000000e+06
  %383 = load i32, i32* %31, align 4
  %384 = sitofp i32 %383 to double
  %385 = fmul double %382, %384
  %386 = load double, double* %34, align 8
  %387 = fdiv double %385, %386
  %388 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.15, i64 0, i64 0), double %387)
  %389 = load i64, i64* @doYUV, align 8
  %390 = icmp ne i64 %389, 0
  br i1 %390, label %391, label %408

391:                                              ; preds = %368
  %392 = load i32, i32* %31, align 4
  %393 = sitofp i32 %392 to double
  %394 = load double, double* %35, align 8
  %395 = fdiv double %393, %394
  %396 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.16, i64 0, i64 0), double %395)
  %397 = load i32, i32* %16, align 4
  %398 = load i32, i32* %17, align 4
  %399 = mul nsw i32 %397, %398
  %400 = sitofp i32 %399 to double
  %401 = fdiv double %400, 1.000000e+06
  %402 = load i32, i32* %31, align 4
  %403 = sitofp i32 %402 to double
  %404 = fmul double %401, %403
  %405 = load double, double* %35, align 8
  %406 = fdiv double %404, %405
  %407 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.15, i64 0, i64 0), double %406)
  br label %408

408:                                              ; preds = %391, %368
  br label %409

409:                                              ; preds = %408, %367
  %410 = load i32, i32* @doWrite, align 4
  %411 = icmp ne i32 %410, 0
  br i1 %411, label %413, label %412

412:                                              ; preds = %409
  br label %688

413:                                              ; preds = %409
  %414 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @sf, i32 0, i32 0), align 4
  %415 = icmp ne i32 %414, 1
  br i1 %415, label %419, label %416

416:                                              ; preds = %413
  %417 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @sf, i32 0, i32 1), align 4
  %418 = icmp ne i32 %417, 1
  br i1 %418, label %419, label %424

419:                                              ; preds = %416, %413
  %420 = getelementptr inbounds [20 x i8], [20 x i8]* %24, i64 0, i64 0
  %421 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @sf, i32 0, i32 0), align 4
  %422 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @sf, i32 0, i32 1), align 4
  %423 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %420, i32 20, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i64 0, i64 0), i32 %421, i32 %422)
  br label %441

424:                                              ; preds = %416
  %425 = load i32, i32* %21, align 4
  %426 = load i32, i32* %16, align 4
  %427 = icmp ne i32 %425, %426
  br i1 %427, label %432, label %428

428:                                              ; preds = %424
  %429 = load i32, i32* %22, align 4
  %430 = load i32, i32* %17, align 4
  %431 = icmp ne i32 %429, %430
  br i1 %431, label %432, label %437

432:                                              ; preds = %428, %424
  %433 = getelementptr inbounds [20 x i8], [20 x i8]* %24, i64 0, i64 0
  %434 = load i32, i32* %21, align 4
  %435 = load i32, i32* %22, align 4
  %436 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %433, i32 20, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i64 0, i64 0), i32 %434, i32 %435)
  br label %440

437:                                              ; preds = %428
  %438 = getelementptr inbounds [20 x i8], [20 x i8]* %24, i64 0, i64 0
  %439 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %438, i32 20, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i64 0, i64 0))
  br label %440

440:                                              ; preds = %437, %432
  br label %441

441:                                              ; preds = %440, %419
  %442 = load i64, i64* @decompOnly, align 8
  %443 = icmp ne i64 %442, 0
  br i1 %443, label %444, label %450

444:                                              ; preds = %441
  %445 = getelementptr inbounds [1024 x i8], [1024 x i8]* %23, i64 0, i64 0
  %446 = load i8*, i8** %20, align 8
  %447 = getelementptr inbounds [20 x i8], [20 x i8]* %24, i64 0, i64 0
  %448 = load i8*, i8** @ext, align 8
  %449 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %445, i32 1024, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.20, i64 0, i64 0), i8* %446, i8* %447, i8* %448)
  br label %462

450:                                              ; preds = %441
  %451 = getelementptr inbounds [1024 x i8], [1024 x i8]* %23, i64 0, i64 0
  %452 = load i8*, i8** %20, align 8
  %453 = load i8**, i8*** @subName, align 8
  %454 = load i32, i32* %18, align 4
  %455 = sext i32 %454 to i64
  %456 = getelementptr inbounds i8*, i8** %453, i64 %455
  %457 = load i8*, i8** %456, align 8
  %458 = getelementptr inbounds [6 x i8], [6 x i8]* %25, i64 0, i64 0
  %459 = getelementptr inbounds [20 x i8], [20 x i8]* %24, i64 0, i64 0
  %460 = load i8*, i8** @ext, align 8
  %461 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %451, i32 1024, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.21, i64 0, i64 0), i8* %452, i8* %457, i8* %458, i8* %459, i8* %460)
  br label %462

462:                                              ; preds = %450, %444
  %463 = getelementptr inbounds [1024 x i8], [1024 x i8]* %23, i64 0, i64 0
  %464 = load i8*, i8** %15, align 8
  %465 = load i32, i32* %37, align 4
  %466 = load i32, i32* %38, align 4
  %467 = load i64, i64* @pf, align 8
  %468 = load i32, i32* @flags, align 4
  %469 = call i32 @tjSaveImage(i8* %463, i8* %464, i32 %465, i32 0, i32 %466, i64 %467, i32 %468)
  %470 = icmp eq i32 %469, -1
  br i1 %470, label %471, label %473

471:                                              ; preds = %462
  %472 = call i32 @_throwtjg(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.22, i64 0, i64 0))
  br label %473

473:                                              ; preds = %471, %462
  %474 = getelementptr inbounds [1024 x i8], [1024 x i8]* %23, i64 0, i64 0
  %475 = call i8* @strrchr(i8* %474, i8 signext 46)
  store i8* %475, i8** %26, align 8
  %476 = load i8*, i8** %26, align 8
  %477 = load i8*, i8** %26, align 8
  %478 = getelementptr inbounds [1024 x i8], [1024 x i8]* %23, i64 0, i64 0
  %479 = ptrtoint i8* %477 to i64
  %480 = ptrtoint i8* %478 to i64
  %481 = sub i64 %479, %480
  %482 = sub nsw i64 1024, %481
  %483 = trunc i64 %482 to i32
  %484 = load i8*, i8** @ext, align 8
  %485 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %476, i32 %483, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.23, i64 0, i64 0), i8* %484)
  %486 = load i8*, i8** %12, align 8
  %487 = icmp ne i8* %486, null
  br i1 %487, label %488, label %687

488:                                              ; preds = %473
  %489 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @sf, i32 0, i32 0), align 4
  %490 = icmp eq i32 %489, 1
  br i1 %490, label %491, label %687

491:                                              ; preds = %488
  %492 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @sf, i32 0, i32 1), align 4
  %493 = icmp eq i32 %492, 1
  br i1 %493, label %494, label %687

494:                                              ; preds = %491
  %495 = load i32, i32* @quiet, align 4
  %496 = icmp ne i32 %495, 0
  br i1 %496, label %500, label %497

497:                                              ; preds = %494
  %498 = getelementptr inbounds [1024 x i8], [1024 x i8]* %23, i64 0, i64 0
  %499 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.24, i64 0, i64 0), i8* %498)
  br label %500

500:                                              ; preds = %497, %494
  %501 = load i32, i32* %18, align 4
  %502 = load i32, i32* @TJ_GRAYSCALE, align 4
  %503 = icmp eq i32 %501, %502
  br i1 %503, label %504, label %623

504:                                              ; preds = %500
  store i32 0, i32* %29, align 4
  store i32 0, i32* %53, align 4
  br label %505

505:                                              ; preds = %616, %504
  %506 = load i32, i32* %29, align 4
  %507 = load i32, i32* %17, align 4
  %508 = icmp slt i32 %506, %507
  br i1 %508, label %509, label %622

509:                                              ; preds = %505
  store i32 0, i32* %30, align 4
  %510 = load i32, i32* %53, align 4
  store i32 %510, i32* %54, align 4
  br label %511

511:                                              ; preds = %609, %509
  %512 = load i32, i32* %30, align 4
  %513 = load i32, i32* %16, align 4
  %514 = icmp slt i32 %512, %513
  br i1 %514, label %515, label %615

515:                                              ; preds = %511
  %516 = load i32, i32* %54, align 4
  %517 = load i32*, i32** @tjRedOffset, align 8
  %518 = load i64, i64* @pf, align 8
  %519 = getelementptr inbounds i32, i32* %517, i64 %518
  %520 = load i32, i32* %519, align 4
  %521 = add nsw i32 %516, %520
  store i32 %521, i32* %55, align 4
  %522 = load i32, i32* %54, align 4
  %523 = load i32*, i32** @tjGreenOffset, align 8
  %524 = load i64, i64* @pf, align 8
  %525 = getelementptr inbounds i32, i32* %523, i64 %524
  %526 = load i32, i32* %525, align 4
  %527 = add nsw i32 %522, %526
  store i32 %527, i32* %56, align 4
  %528 = load i32, i32* %54, align 4
  %529 = load i32*, i32** @tjBlueOffset, align 8
  %530 = load i64, i64* @pf, align 8
  %531 = getelementptr inbounds i32, i32* %529, i64 %530
  %532 = load i32, i32* %531, align 4
  %533 = add nsw i32 %528, %532
  store i32 %533, i32* %57, align 4
  %534 = load i8*, i8** %12, align 8
  %535 = load i32, i32* %55, align 4
  %536 = sext i32 %535 to i64
  %537 = getelementptr inbounds i8, i8* %534, i64 %536
  %538 = load i8, i8* %537, align 1
  %539 = uitofp i8 %538 to double
  %540 = fmul double %539, 2.990000e-01
  %541 = load i8*, i8** %12, align 8
  %542 = load i32, i32* %56, align 4
  %543 = sext i32 %542 to i64
  %544 = getelementptr inbounds i8, i8* %541, i64 %543
  %545 = load i8, i8* %544, align 1
  %546 = uitofp i8 %545 to double
  %547 = fmul double %546, 5.870000e-01
  %548 = fadd double %540, %547
  %549 = load i8*, i8** %12, align 8
  %550 = load i32, i32* %57, align 4
  %551 = sext i32 %550 to i64
  %552 = getelementptr inbounds i8, i8* %549, i64 %551
  %553 = load i8, i8* %552, align 1
  %554 = uitofp i8 %553 to double
  %555 = fmul double %554, 1.140000e-01
  %556 = fadd double %548, %555
  %557 = fadd double %556, 5.000000e-01
  %558 = fptosi double %557 to i32
  store i32 %558, i32* %58, align 4
  %559 = load i32, i32* %58, align 4
  %560 = icmp sgt i32 %559, 255
  br i1 %560, label %561, label %562

561:                                              ; preds = %515
  store i32 255, i32* %58, align 4
  br label %562

562:                                              ; preds = %561, %515
  %563 = load i32, i32* %58, align 4
  %564 = icmp slt i32 %563, 0
  br i1 %564, label %565, label %566

565:                                              ; preds = %562
  store i32 0, i32* %58, align 4
  br label %566

566:                                              ; preds = %565, %562
  %567 = load i8*, i8** %15, align 8
  %568 = load i32, i32* %55, align 4
  %569 = sext i32 %568 to i64
  %570 = getelementptr inbounds i8, i8* %567, i64 %569
  %571 = load i8, i8* %570, align 1
  %572 = zext i8 %571 to i32
  %573 = load i32, i32* %58, align 4
  %574 = sub nsw i32 %572, %573
  %575 = trunc i32 %574 to i8
  %576 = call zeroext i8 @abs(i8 zeroext %575)
  %577 = load i8*, i8** %15, align 8
  %578 = load i32, i32* %55, align 4
  %579 = sext i32 %578 to i64
  %580 = getelementptr inbounds i8, i8* %577, i64 %579
  store i8 %576, i8* %580, align 1
  %581 = load i8*, i8** %15, align 8
  %582 = load i32, i32* %56, align 4
  %583 = sext i32 %582 to i64
  %584 = getelementptr inbounds i8, i8* %581, i64 %583
  %585 = load i8, i8* %584, align 1
  %586 = zext i8 %585 to i32
  %587 = load i32, i32* %58, align 4
  %588 = sub nsw i32 %586, %587
  %589 = trunc i32 %588 to i8
  %590 = call zeroext i8 @abs(i8 zeroext %589)
  %591 = load i8*, i8** %15, align 8
  %592 = load i32, i32* %56, align 4
  %593 = sext i32 %592 to i64
  %594 = getelementptr inbounds i8, i8* %591, i64 %593
  store i8 %590, i8* %594, align 1
  %595 = load i8*, i8** %15, align 8
  %596 = load i32, i32* %57, align 4
  %597 = sext i32 %596 to i64
  %598 = getelementptr inbounds i8, i8* %595, i64 %597
  %599 = load i8, i8* %598, align 1
  %600 = zext i8 %599 to i32
  %601 = load i32, i32* %58, align 4
  %602 = sub nsw i32 %600, %601
  %603 = trunc i32 %602 to i8
  %604 = call zeroext i8 @abs(i8 zeroext %603)
  %605 = load i8*, i8** %15, align 8
  %606 = load i32, i32* %57, align 4
  %607 = sext i32 %606 to i64
  %608 = getelementptr inbounds i8, i8* %605, i64 %607
  store i8 %604, i8* %608, align 1
  br label %609

609:                                              ; preds = %566
  %610 = load i32, i32* %30, align 4
  %611 = add nsw i32 %610, 1
  store i32 %611, i32* %30, align 4
  %612 = load i32, i32* %36, align 4
  %613 = load i32, i32* %54, align 4
  %614 = add nsw i32 %613, %612
  store i32 %614, i32* %54, align 4
  br label %511

615:                                              ; preds = %511
  br label %616

616:                                              ; preds = %615
  %617 = load i32, i32* %29, align 4
  %618 = add nsw i32 %617, 1
  store i32 %618, i32* %29, align 4
  %619 = load i32, i32* %39, align 4
  %620 = load i32, i32* %53, align 4
  %621 = add nsw i32 %620, %619
  store i32 %621, i32* %53, align 4
  br label %505

622:                                              ; preds = %505
  br label %675

623:                                              ; preds = %500
  store i32 0, i32* %29, align 4
  br label %624

624:                                              ; preds = %671, %623
  %625 = load i32, i32* %29, align 4
  %626 = load i32, i32* %17, align 4
  %627 = icmp slt i32 %625, %626
  br i1 %627, label %628, label %674

628:                                              ; preds = %624
  store i32 0, i32* %30, align 4
  br label %629

629:                                              ; preds = %667, %628
  %630 = load i32, i32* %30, align 4
  %631 = load i32, i32* %16, align 4
  %632 = load i32, i32* %36, align 4
  %633 = mul nsw i32 %631, %632
  %634 = icmp slt i32 %630, %633
  br i1 %634, label %635, label %670

635:                                              ; preds = %629
  %636 = load i8*, i8** %15, align 8
  %637 = load i32, i32* %39, align 4
  %638 = load i32, i32* %29, align 4
  %639 = mul nsw i32 %637, %638
  %640 = load i32, i32* %30, align 4
  %641 = add nsw i32 %639, %640
  %642 = sext i32 %641 to i64
  %643 = getelementptr inbounds i8, i8* %636, i64 %642
  %644 = load i8, i8* %643, align 1
  %645 = zext i8 %644 to i32
  %646 = load i8*, i8** %12, align 8
  %647 = load i32, i32* %39, align 4
  %648 = load i32, i32* %29, align 4
  %649 = mul nsw i32 %647, %648
  %650 = load i32, i32* %30, align 4
  %651 = add nsw i32 %649, %650
  %652 = sext i32 %651 to i64
  %653 = getelementptr inbounds i8, i8* %646, i64 %652
  %654 = load i8, i8* %653, align 1
  %655 = zext i8 %654 to i32
  %656 = sub nsw i32 %645, %655
  %657 = trunc i32 %656 to i8
  %658 = call zeroext i8 @abs(i8 zeroext %657)
  %659 = load i8*, i8** %15, align 8
  %660 = load i32, i32* %39, align 4
  %661 = load i32, i32* %29, align 4
  %662 = mul nsw i32 %660, %661
  %663 = load i32, i32* %30, align 4
  %664 = add nsw i32 %662, %663
  %665 = sext i32 %664 to i64
  %666 = getelementptr inbounds i8, i8* %659, i64 %665
  store i8 %658, i8* %666, align 1
  br label %667

667:                                              ; preds = %635
  %668 = load i32, i32* %30, align 4
  %669 = add nsw i32 %668, 1
  store i32 %669, i32* %30, align 4
  br label %629

670:                                              ; preds = %629
  br label %671

671:                                              ; preds = %670
  %672 = load i32, i32* %29, align 4
  %673 = add nsw i32 %672, 1
  store i32 %673, i32* %29, align 4
  br label %624

674:                                              ; preds = %624
  br label %675

675:                                              ; preds = %674, %622
  %676 = getelementptr inbounds [1024 x i8], [1024 x i8]* %23, i64 0, i64 0
  %677 = load i8*, i8** %15, align 8
  %678 = load i32, i32* %16, align 4
  %679 = load i32, i32* %17, align 4
  %680 = load i64, i64* @pf, align 8
  %681 = load i32, i32* @flags, align 4
  %682 = call i32 @tjSaveImage(i8* %676, i8* %677, i32 %678, i32 0, i32 %679, i64 %680, i32 %681)
  %683 = icmp eq i32 %682, -1
  br i1 %683, label %684, label %686

684:                                              ; preds = %675
  %685 = call i32 @_throwtjg(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.22, i64 0, i64 0))
  br label %686

686:                                              ; preds = %684, %675
  br label %687

687:                                              ; preds = %686, %491, %488, %473
  br label %688

688:                                              ; preds = %687, %412
  %689 = load i32*, i32** %27, align 8
  %690 = icmp ne i32* %689, null
  br i1 %690, label %691, label %694

691:                                              ; preds = %688
  %692 = load i32*, i32** %27, align 8
  %693 = call i32 @fclose(i32* %692)
  br label %694

694:                                              ; preds = %691, %688
  %695 = load i32*, i32** %28, align 8
  %696 = icmp ne i32* %695, null
  br i1 %696, label %697, label %700

697:                                              ; preds = %694
  %698 = load i32*, i32** %28, align 8
  %699 = call i32 @tjDestroy(i32* %698)
  br label %700

700:                                              ; preds = %697, %694
  %701 = load i8*, i8** %15, align 8
  %702 = icmp ne i8* %701, null
  br i1 %702, label %703, label %709

703:                                              ; preds = %700
  %704 = load i32, i32* %32, align 4
  %705 = icmp ne i32 %704, 0
  br i1 %705, label %706, label %709

706:                                              ; preds = %703
  %707 = load i8*, i8** %15, align 8
  %708 = call i32 @free(i8* %707)
  br label %709

709:                                              ; preds = %706, %703, %700
  %710 = load i8*, i8** %44, align 8
  %711 = icmp ne i8* %710, null
  br i1 %711, label %712, label %715

712:                                              ; preds = %709
  %713 = load i8*, i8** %44, align 8
  %714 = call i32 @free(i8* %713)
  br label %715

715:                                              ; preds = %712, %709
  %716 = load i32, i32* %33, align 4
  ret i32 %716
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @TJSCALED(i32, i64) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, ...) #2

declare dso_local i32* @tjInitDecompress(...) #2

declare dso_local i32 @_throwtj(i8*) #2

declare dso_local i64 @malloc(i32) #2

declare dso_local i32 @_throwunix(i8*) #2

declare dso_local i32 @memset(i8*, i32, i32) #2

declare dso_local i32 @tjBufSizeYUV2(i32, i32, i32, i32) #2

declare dso_local double @getTime(...) #2

declare dso_local i32 @min(i32, i32) #2

declare dso_local i32 @tjDecompressToYUV2(i32*, i8*, i64, i8*, i32, i32, i32, i32) #2

declare dso_local i32 @tjDecodeYUV(i32*, i8*, i32, i32, i8*, i32, i32, i32, i64, i32) #2

declare dso_local i32 @tjDecompress2(i32*, i8*, i64, i8*, i32, i32, i32, i64, i32) #2

declare dso_local i32 @tjDestroy(i32*) #2

declare dso_local i32 @printf(i8*, ...) #2

declare dso_local i8* @sigfig(double, i32, i8*, i32) #2

declare dso_local i32 @tjSaveImage(i8*, i8*, i32, i32, i32, i64, i32) #2

declare dso_local i32 @_throwtjg(i8*) #2

declare dso_local i8* @strrchr(i8*, i8 signext) #2

declare dso_local zeroext i8 @abs(i8 zeroext) #2

declare dso_local i32 @fclose(i32*) #2

declare dso_local i32 @free(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
