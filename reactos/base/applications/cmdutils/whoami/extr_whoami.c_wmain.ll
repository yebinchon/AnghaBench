; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/cmdutils/whoami/extr_whoami.c_wmain.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/cmdutils/whoami/extr_whoami.c_wmain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NameSamCompatible = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i32] [i32 37, i32 115, i32 10, i32 0], align 4
@.str.1 = private unnamed_addr constant [4 x i32] [i32 47, i32 110, i32 104, i32 0], align 4
@NoHeaderArgCount = common dso_local global i32 0, align 4
@NoHeader = common dso_local global i64 0, align 8
@FALSE = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [4 x i32] [i32 47, i32 102, i32 111, i32 0], align 4
@PrintFormatArgCount = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [6 x i32] [i32 116, i32 97, i32 98, i32 108, i32 101, i32 0], align 4
@PrintFormat = common dso_local global i64 0, align 8
@table = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [5 x i32] [i32 108, i32 105, i32 115, i32 116, i32 0], align 4
@list = common dso_local global i64 0, align 8
@IDS_ERROR_NH_LIST = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [4 x i32] [i32 99, i32 115, i32 118, i32 0], align 4
@csv = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [6 x i32] [i32 47, i32 112, i32 114, i32 105, i32 118, i32 0], align 4
@.str.7 = private unnamed_addr constant [8 x i32] [i32 47, i32 103, i32 114, i32 111, i32 117, i32 112, i32 115, i32 0], align 4
@.str.8 = private unnamed_addr constant [6 x i32] [i32 47, i32 117, i32 115, i32 101, i32 114, i32 0], align 4
@.str.9 = private unnamed_addr constant [5 x i32] [i32 47, i32 97, i32 108, i32 108, i32 0], align 4
@.str.10 = private unnamed_addr constant [1 x i32] zeroinitializer, align 4
@IDS_ERROR_VALUENOTALLOWED = common dso_local global i32 0, align 4
@IDS_ERROR_VALUEXPECTED = common dso_local global i32 0, align 4
@IDS_ERROR_1TIMES = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [3 x i32] [i32 47, i32 63, i32 0], align 4
@IDS_HELP = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [5 x i32] [i32 47, i32 117, i32 112, i32 110, i32 0], align 4
@NameUserPrincipal = common dso_local global i32 0, align 4
@IDS_ERROR_UPN = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [6 x i32] [i32 47, i32 102, i32 113, i32 100, i32 110, i32 0], align 4
@NameFullyQualifiedDN = common dso_local global i32 0, align 4
@IDS_ERROR_FQDN = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [9 x i32] [i32 47, i32 108, i32 111, i32 103, i32 111, i32 110, i32 105, i32 100, i32 0], align 4
@IDS_ERROR_INVALIDARG = common dso_local global i32 0, align 4
@IDS_ERROR_INVALIDSYNTAX = common dso_local global i32 0, align 4
@WAM_GROUPS = common dso_local global i32 0, align 4
@WAM_PRIV = common dso_local global i32 0, align 4
@WAM_USER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wmain(i32 %0, i32** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store i32** %1, i32*** %5, align 8
  store i32 0, i32* %7, align 4
  %11 = call i32 (...) @ConInitStdStreams()
  %12 = load i32, i32* %4, align 4
  %13 = icmp eq i32 %12, 1
  br i1 %13, label %14, label %25

14:                                               ; preds = %2
  %15 = load i32, i32* @NameSamCompatible, align 4
  %16 = call i8* @WhoamiGetUser(i32 %15)
  store i8* %16, i8** %8, align 8
  %17 = load i8*, i8** %8, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %24

19:                                               ; preds = %14
  %20 = load i8*, i8** %8, align 8
  %21 = call i32 (i8*, ...) @wprintf(i8* bitcast ([4 x i32]* @.str to i8*), i8* %20)
  %22 = load i8*, i8** %8, align 8
  %23 = call i32 @WhoamiFree(i8* %22)
  store i32 0, i32* %3, align 4
  br label %453

24:                                               ; preds = %14
  store i32 1, i32* %3, align 4
  br label %453

25:                                               ; preds = %2
  store i32 1, i32* %6, align 4
  br label %26

26:                                               ; preds = %51, %25
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* %4, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %54

30:                                               ; preds = %26
  %31 = load i32**, i32*** %5, align 8
  %32 = load i32, i32* %6, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32*, i32** %31, i64 %33
  %35 = load i32*, i32** %34, align 8
  %36 = call i64 @wcsicmp(i32* %35, i8* bitcast ([4 x i32]* @.str.1 to i8*))
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %50

38:                                               ; preds = %30
  %39 = load i32, i32* @NoHeaderArgCount, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* @NoHeaderArgCount, align 4
  %41 = load i64, i64* @NoHeader, align 8
  %42 = load i64, i64* @FALSE, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %49

44:                                               ; preds = %38
  %45 = load i64, i64* @TRUE, align 8
  store i64 %45, i64* @NoHeader, align 8
  %46 = load i32, i32* %6, align 4
  %47 = load i32**, i32*** %5, align 8
  %48 = call i32 @BlankArgument(i32 %46, i32** %47)
  br label %49

49:                                               ; preds = %44, %38
  br label %50

50:                                               ; preds = %49, %30
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* %6, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %6, align 4
  br label %26

54:                                               ; preds = %26
  store i32 1, i32* %6, align 4
  br label %55

55:                                               ; preds = %236, %54
  %56 = load i32, i32* %6, align 4
  %57 = load i32, i32* %4, align 4
  %58 = icmp slt i32 %56, %57
  br i1 %58, label %59, label %239

59:                                               ; preds = %55
  %60 = load i32**, i32*** %5, align 8
  %61 = load i32, i32* %6, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32*, i32** %60, i64 %62
  %64 = load i32*, i32** %63, align 8
  %65 = call i64 @wcsicmp(i32* %64, i8* bitcast ([4 x i32]* @.str.2 to i8*))
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %67, label %235

67:                                               ; preds = %59
  %68 = load i32, i32* %6, align 4
  %69 = add nsw i32 %68, 1
  %70 = load i32, i32* %4, align 4
  %71 = icmp slt i32 %69, %70
  br i1 %71, label %72, label %229

72:                                               ; preds = %67
  %73 = load i32, i32* @PrintFormatArgCount, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* @PrintFormatArgCount, align 4
  %75 = load i32**, i32*** %5, align 8
  %76 = load i32, i32* %6, align 4
  %77 = add nsw i32 %76, 1
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32*, i32** %75, i64 %78
  %80 = load i32*, i32** %79, align 8
  %81 = call i64 @wcsicmp(i32* %80, i8* bitcast ([6 x i32]* @.str.3 to i8*))
  %82 = icmp eq i64 %81, 0
  br i1 %82, label %83, label %96

83:                                               ; preds = %72
  %84 = load i64, i64* @PrintFormat, align 8
  %85 = load i64, i64* @table, align 8
  %86 = icmp ne i64 %84, %85
  br i1 %86, label %87, label %96

87:                                               ; preds = %83
  %88 = load i64, i64* @table, align 8
  store i64 %88, i64* @PrintFormat, align 8
  %89 = load i32, i32* %6, align 4
  %90 = load i32**, i32*** %5, align 8
  %91 = call i32 @BlankArgument(i32 %89, i32** %90)
  %92 = load i32, i32* %6, align 4
  %93 = add nsw i32 %92, 1
  %94 = load i32**, i32*** %5, align 8
  %95 = call i32 @BlankArgument(i32 %93, i32** %94)
  br label %228

96:                                               ; preds = %83, %72
  %97 = load i32**, i32*** %5, align 8
  %98 = load i32, i32* %6, align 4
  %99 = add nsw i32 %98, 1
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32*, i32** %97, i64 %100
  %102 = load i32*, i32** %101, align 8
  %103 = call i64 @wcsicmp(i32* %102, i8* bitcast ([5 x i32]* @.str.4 to i8*))
  %104 = icmp eq i64 %103, 0
  br i1 %104, label %105, label %130

105:                                              ; preds = %96
  %106 = load i64, i64* @PrintFormat, align 8
  %107 = load i64, i64* @list, align 8
  %108 = icmp ne i64 %106, %107
  br i1 %108, label %109, label %130

109:                                              ; preds = %105
  %110 = load i64, i64* @list, align 8
  store i64 %110, i64* @PrintFormat, align 8
  %111 = load i32, i32* %6, align 4
  %112 = load i32**, i32*** %5, align 8
  %113 = call i32 @BlankArgument(i32 %111, i32** %112)
  %114 = load i32, i32* %6, align 4
  %115 = add nsw i32 %114, 1
  %116 = load i32**, i32*** %5, align 8
  %117 = call i32 @BlankArgument(i32 %115, i32** %116)
  %118 = load i64, i64* @PrintFormat, align 8
  %119 = load i64, i64* @list, align 8
  %120 = icmp eq i64 %118, %119
  br i1 %120, label %121, label %129

121:                                              ; preds = %109
  %122 = load i64, i64* @NoHeader, align 8
  %123 = load i64, i64* @FALSE, align 8
  %124 = icmp ne i64 %122, %123
  br i1 %124, label %125, label %129

125:                                              ; preds = %121
  %126 = load i32, i32* @IDS_ERROR_NH_LIST, align 4
  %127 = call i8* @WhoamiLoadRcString(i32 %126)
  %128 = call i32 (i8*, ...) @wprintf(i8* %127)
  store i32 1, i32* %3, align 4
  br label %453

129:                                              ; preds = %121, %109
  br label %227

130:                                              ; preds = %105, %96
  %131 = load i32**, i32*** %5, align 8
  %132 = load i32, i32* %6, align 4
  %133 = add nsw i32 %132, 1
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i32*, i32** %131, i64 %134
  %136 = load i32*, i32** %135, align 8
  %137 = call i64 @wcsicmp(i32* %136, i8* bitcast ([4 x i32]* @.str.5 to i8*))
  %138 = icmp eq i64 %137, 0
  br i1 %138, label %139, label %152

139:                                              ; preds = %130
  %140 = load i64, i64* @PrintFormat, align 8
  %141 = load i64, i64* @csv, align 8
  %142 = icmp ne i64 %140, %141
  br i1 %142, label %143, label %152

143:                                              ; preds = %139
  %144 = load i64, i64* @csv, align 8
  store i64 %144, i64* @PrintFormat, align 8
  %145 = load i32, i32* %6, align 4
  %146 = load i32**, i32*** %5, align 8
  %147 = call i32 @BlankArgument(i32 %145, i32** %146)
  %148 = load i32, i32* %6, align 4
  %149 = add nsw i32 %148, 1
  %150 = load i32**, i32*** %5, align 8
  %151 = call i32 @BlankArgument(i32 %149, i32** %150)
  br label %226

152:                                              ; preds = %139, %130
  %153 = load i32**, i32*** %5, align 8
  %154 = load i32, i32* %6, align 4
  %155 = add nsw i32 %154, 1
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i32*, i32** %153, i64 %156
  %158 = load i32*, i32** %157, align 8
  %159 = call i64 @wcsicmp(i32* %158, i8* bitcast ([4 x i32]* @.str.1 to i8*))
  %160 = icmp eq i64 %159, 0
  br i1 %160, label %215, label %161

161:                                              ; preds = %152
  %162 = load i32**, i32*** %5, align 8
  %163 = load i32, i32* %6, align 4
  %164 = add nsw i32 %163, 1
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i32*, i32** %162, i64 %165
  %167 = load i32*, i32** %166, align 8
  %168 = call i64 @wcsicmp(i32* %167, i8* bitcast ([4 x i32]* @.str.2 to i8*))
  %169 = icmp eq i64 %168, 0
  br i1 %169, label %215, label %170

170:                                              ; preds = %161
  %171 = load i32**, i32*** %5, align 8
  %172 = load i32, i32* %6, align 4
  %173 = add nsw i32 %172, 1
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i32*, i32** %171, i64 %174
  %176 = load i32*, i32** %175, align 8
  %177 = call i64 @wcsicmp(i32* %176, i8* bitcast ([6 x i32]* @.str.6 to i8*))
  %178 = icmp eq i64 %177, 0
  br i1 %178, label %215, label %179

179:                                              ; preds = %170
  %180 = load i32**, i32*** %5, align 8
  %181 = load i32, i32* %6, align 4
  %182 = add nsw i32 %181, 1
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds i32*, i32** %180, i64 %183
  %185 = load i32*, i32** %184, align 8
  %186 = call i64 @wcsicmp(i32* %185, i8* bitcast ([8 x i32]* @.str.7 to i8*))
  %187 = icmp eq i64 %186, 0
  br i1 %187, label %215, label %188

188:                                              ; preds = %179
  %189 = load i32**, i32*** %5, align 8
  %190 = load i32, i32* %6, align 4
  %191 = add nsw i32 %190, 1
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds i32*, i32** %189, i64 %192
  %194 = load i32*, i32** %193, align 8
  %195 = call i64 @wcsicmp(i32* %194, i8* bitcast ([6 x i32]* @.str.8 to i8*))
  %196 = icmp eq i64 %195, 0
  br i1 %196, label %215, label %197

197:                                              ; preds = %188
  %198 = load i32**, i32*** %5, align 8
  %199 = load i32, i32* %6, align 4
  %200 = add nsw i32 %199, 1
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds i32*, i32** %198, i64 %201
  %203 = load i32*, i32** %202, align 8
  %204 = call i64 @wcsicmp(i32* %203, i8* bitcast ([5 x i32]* @.str.9 to i8*))
  %205 = icmp eq i64 %204, 0
  br i1 %205, label %215, label %206

206:                                              ; preds = %197
  %207 = load i32**, i32*** %5, align 8
  %208 = load i32, i32* %6, align 4
  %209 = add nsw i32 %208, 1
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds i32*, i32** %207, i64 %210
  %212 = load i32*, i32** %211, align 8
  %213 = call i64 @wcsicmp(i32* %212, i8* bitcast ([1 x i32]* @.str.10 to i8*))
  %214 = icmp eq i64 %213, 0
  br i1 %214, label %215, label %216

215:                                              ; preds = %206, %197, %188, %179, %170, %161, %152
  br label %230

216:                                              ; preds = %206
  %217 = load i32, i32* @IDS_ERROR_VALUENOTALLOWED, align 4
  %218 = call i8* @WhoamiLoadRcString(i32 %217)
  %219 = load i32**, i32*** %5, align 8
  %220 = load i32, i32* %6, align 4
  %221 = add nsw i32 %220, 1
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds i32*, i32** %219, i64 %222
  %224 = load i32*, i32** %223, align 8
  %225 = call i32 (i8*, ...) @wprintf(i8* %218, i32* %224)
  store i32 1, i32* %3, align 4
  br label %453

226:                                              ; preds = %143
  br label %227

227:                                              ; preds = %226, %129
  br label %228

228:                                              ; preds = %227, %87
  br label %234

229:                                              ; preds = %67
  br label %230

230:                                              ; preds = %229, %215
  %231 = load i32, i32* @IDS_ERROR_VALUEXPECTED, align 4
  %232 = call i8* @WhoamiLoadRcString(i32 %231)
  %233 = call i32 (i8*, ...) @wprintf(i8* %232)
  store i32 1, i32* %3, align 4
  br label %453

234:                                              ; preds = %228
  br label %235

235:                                              ; preds = %234, %59
  br label %236

236:                                              ; preds = %235
  %237 = load i32, i32* %6, align 4
  %238 = add nsw i32 %237, 1
  store i32 %238, i32* %6, align 4
  br label %55

239:                                              ; preds = %55
  %240 = load i32, i32* @NoHeaderArgCount, align 4
  %241 = icmp sge i32 %240, 2
  br i1 %241, label %242, label %246

242:                                              ; preds = %239
  %243 = load i32, i32* @IDS_ERROR_1TIMES, align 4
  %244 = call i8* @WhoamiLoadRcString(i32 %243)
  %245 = call i32 (i8*, ...) @wprintf(i8* %244, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %453

246:                                              ; preds = %239
  %247 = load i32, i32* @NoHeaderArgCount, align 4
  %248 = icmp eq i32 %247, 1
  br i1 %248, label %249, label %253

249:                                              ; preds = %246
  %250 = load i32, i32* %4, align 4
  %251 = icmp eq i32 %250, 2
  br i1 %251, label %252, label %253

252:                                              ; preds = %249
  store i32 0, i32* %3, align 4
  br label %453

253:                                              ; preds = %249, %246
  br label %254

254:                                              ; preds = %253
  %255 = load i32, i32* @PrintFormatArgCount, align 4
  %256 = icmp sge i32 %255, 2
  br i1 %256, label %257, label %261

257:                                              ; preds = %254
  %258 = load i32, i32* @IDS_ERROR_1TIMES, align 4
  %259 = call i8* @WhoamiLoadRcString(i32 %258)
  %260 = call i32 (i8*, ...) @wprintf(i8* %259, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %453

261:                                              ; preds = %254
  %262 = load i32, i32* @PrintFormatArgCount, align 4
  %263 = icmp eq i32 %262, 1
  br i1 %263, label %264, label %268

264:                                              ; preds = %261
  %265 = load i32, i32* %4, align 4
  %266 = icmp eq i32 %265, 3
  br i1 %266, label %267, label %268

267:                                              ; preds = %264
  br label %449

268:                                              ; preds = %264, %261
  br label %269

269:                                              ; preds = %268
  %270 = load i32, i32* %4, align 4
  %271 = icmp eq i32 %270, 2
  br i1 %271, label %272, label %334

272:                                              ; preds = %269
  %273 = load i32**, i32*** %5, align 8
  %274 = getelementptr inbounds i32*, i32** %273, i64 1
  %275 = load i32*, i32** %274, align 8
  %276 = call i64 @wcsicmp(i32* %275, i8* bitcast ([3 x i32]* @.str.11 to i8*))
  %277 = icmp eq i64 %276, 0
  br i1 %277, label %278, label %282

278:                                              ; preds = %272
  %279 = load i32, i32* @IDS_HELP, align 4
  %280 = call i8* @WhoamiLoadRcString(i32 %279)
  %281 = call i32 (i8*, ...) @wprintf(i8* %280)
  store i32 0, i32* %3, align 4
  br label %453

282:                                              ; preds = %272
  %283 = load i32**, i32*** %5, align 8
  %284 = getelementptr inbounds i32*, i32** %283, i64 1
  %285 = load i32*, i32** %284, align 8
  %286 = call i64 @wcsicmp(i32* %285, i8* bitcast ([5 x i32]* @.str.12 to i8*))
  %287 = icmp eq i64 %286, 0
  br i1 %287, label %288, label %302

288:                                              ; preds = %282
  %289 = load i32, i32* @NameUserPrincipal, align 4
  %290 = call i8* @WhoamiGetUser(i32 %289)
  store i8* %290, i8** %9, align 8
  %291 = load i8*, i8** %9, align 8
  %292 = icmp ne i8* %291, null
  br i1 %292, label %293, label %298

293:                                              ; preds = %288
  %294 = load i8*, i8** %9, align 8
  %295 = call i32 (i8*, ...) @wprintf(i8* bitcast ([4 x i32]* @.str to i8*), i8* %294)
  %296 = load i8*, i8** %9, align 8
  %297 = call i32 @WhoamiFree(i8* %296)
  store i32 0, i32* %3, align 4
  br label %453

298:                                              ; preds = %288
  %299 = load i32, i32* @IDS_ERROR_UPN, align 4
  %300 = call i8* @WhoamiLoadRcString(i32 %299)
  %301 = call i32 (i8*, ...) @wprintf(i8* %300)
  store i32 1, i32* %3, align 4
  br label %453

302:                                              ; preds = %282
  %303 = load i32**, i32*** %5, align 8
  %304 = getelementptr inbounds i32*, i32** %303, i64 1
  %305 = load i32*, i32** %304, align 8
  %306 = call i64 @wcsicmp(i32* %305, i8* bitcast ([6 x i32]* @.str.13 to i8*))
  %307 = icmp eq i64 %306, 0
  br i1 %307, label %308, label %322

308:                                              ; preds = %302
  %309 = load i32, i32* @NameFullyQualifiedDN, align 4
  %310 = call i8* @WhoamiGetUser(i32 %309)
  store i8* %310, i8** %10, align 8
  %311 = load i8*, i8** %10, align 8
  %312 = icmp ne i8* %311, null
  br i1 %312, label %313, label %318

313:                                              ; preds = %308
  %314 = load i8*, i8** %10, align 8
  %315 = call i32 (i8*, ...) @wprintf(i8* bitcast ([4 x i32]* @.str to i8*), i8* %314)
  %316 = load i8*, i8** %10, align 8
  %317 = call i32 @WhoamiFree(i8* %316)
  store i32 0, i32* %3, align 4
  br label %453

318:                                              ; preds = %308
  %319 = load i32, i32* @IDS_ERROR_FQDN, align 4
  %320 = call i8* @WhoamiLoadRcString(i32 %319)
  %321 = call i32 (i8*, ...) @wprintf(i8* %320)
  store i32 1, i32* %3, align 4
  br label %453

322:                                              ; preds = %302
  %323 = load i32**, i32*** %5, align 8
  %324 = getelementptr inbounds i32*, i32** %323, i64 1
  %325 = load i32*, i32** %324, align 8
  %326 = call i64 @wcsicmp(i32* %325, i8* bitcast ([9 x i32]* @.str.14 to i8*))
  %327 = icmp eq i64 %326, 0
  br i1 %327, label %328, label %330

328:                                              ; preds = %322
  %329 = call i32 (...) @WhoamiLogonId()
  store i32 %329, i32* %3, align 4
  br label %453

330:                                              ; preds = %322
  br label %331

331:                                              ; preds = %330
  br label %332

332:                                              ; preds = %331
  br label %333

333:                                              ; preds = %332
  br label %334

334:                                              ; preds = %333, %269
  store i32 1, i32* %6, align 4
  br label %335

335:                                              ; preds = %389, %334
  %336 = load i32, i32* %6, align 4
  %337 = load i32, i32* %4, align 4
  %338 = icmp slt i32 %336, %337
  br i1 %338, label %339, label %392

339:                                              ; preds = %335
  %340 = load i32**, i32*** %5, align 8
  %341 = load i32, i32* %6, align 4
  %342 = sext i32 %341 to i64
  %343 = getelementptr inbounds i32*, i32** %340, i64 %342
  %344 = load i32*, i32** %343, align 8
  %345 = call i64 @wcsicmp(i32* %344, i8* bitcast ([6 x i32]* @.str.8 to i8*))
  %346 = icmp ne i64 %345, 0
  br i1 %346, label %347, label %388

347:                                              ; preds = %339
  %348 = load i32**, i32*** %5, align 8
  %349 = load i32, i32* %6, align 4
  %350 = sext i32 %349 to i64
  %351 = getelementptr inbounds i32*, i32** %348, i64 %350
  %352 = load i32*, i32** %351, align 8
  %353 = call i64 @wcsicmp(i32* %352, i8* bitcast ([8 x i32]* @.str.7 to i8*))
  %354 = icmp ne i64 %353, 0
  br i1 %354, label %355, label %388

355:                                              ; preds = %347
  %356 = load i32**, i32*** %5, align 8
  %357 = load i32, i32* %6, align 4
  %358 = sext i32 %357 to i64
  %359 = getelementptr inbounds i32*, i32** %356, i64 %358
  %360 = load i32*, i32** %359, align 8
  %361 = call i64 @wcsicmp(i32* %360, i8* bitcast ([6 x i32]* @.str.6 to i8*))
  %362 = icmp ne i64 %361, 0
  br i1 %362, label %363, label %388

363:                                              ; preds = %355
  %364 = load i32**, i32*** %5, align 8
  %365 = load i32, i32* %6, align 4
  %366 = sext i32 %365 to i64
  %367 = getelementptr inbounds i32*, i32** %364, i64 %366
  %368 = load i32*, i32** %367, align 8
  %369 = call i64 @wcsicmp(i32* %368, i8* bitcast ([5 x i32]* @.str.9 to i8*))
  %370 = icmp ne i64 %369, 0
  br i1 %370, label %371, label %388

371:                                              ; preds = %363
  %372 = load i32**, i32*** %5, align 8
  %373 = load i32, i32* %6, align 4
  %374 = sext i32 %373 to i64
  %375 = getelementptr inbounds i32*, i32** %372, i64 %374
  %376 = load i32*, i32** %375, align 8
  %377 = call i64 @wcsicmp(i32* %376, i8* bitcast ([1 x i32]* @.str.10 to i8*))
  %378 = icmp ne i64 %377, 0
  br i1 %378, label %379, label %388

379:                                              ; preds = %371
  %380 = load i32, i32* @IDS_ERROR_INVALIDARG, align 4
  %381 = call i8* @WhoamiLoadRcString(i32 %380)
  %382 = load i32**, i32*** %5, align 8
  %383 = load i32, i32* %6, align 4
  %384 = sext i32 %383 to i64
  %385 = getelementptr inbounds i32*, i32** %382, i64 %384
  %386 = load i32*, i32** %385, align 8
  %387 = call i32 (i8*, ...) @wprintf(i8* %381, i32* %386)
  store i32 1, i32* %3, align 4
  br label %453

388:                                              ; preds = %371, %363, %355, %347, %339
  br label %389

389:                                              ; preds = %388
  %390 = load i32, i32* %6, align 4
  %391 = add nsw i32 %390, 1
  store i32 %391, i32* %6, align 4
  br label %335

392:                                              ; preds = %335
  %393 = load i32, i32* %4, align 4
  %394 = load i32**, i32*** %5, align 8
  %395 = call i64 @GetArgument(i8* bitcast ([6 x i32]* @.str.8 to i8*), i32 %393, i32** %394)
  %396 = icmp ne i64 %395, 0
  br i1 %396, label %397, label %400

397:                                              ; preds = %392
  %398 = load i32, i32* %7, align 4
  %399 = or i32 %398, 1
  store i32 %399, i32* %7, align 4
  br label %400

400:                                              ; preds = %397, %392
  %401 = load i32, i32* %4, align 4
  %402 = load i32**, i32*** %5, align 8
  %403 = call i64 @GetArgument(i8* bitcast ([8 x i32]* @.str.7 to i8*), i32 %401, i32** %402)
  %404 = icmp ne i64 %403, 0
  br i1 %404, label %405, label %408

405:                                              ; preds = %400
  %406 = load i32, i32* %7, align 4
  %407 = or i32 %406, 2
  store i32 %407, i32* %7, align 4
  br label %408

408:                                              ; preds = %405, %400
  %409 = load i32, i32* %4, align 4
  %410 = load i32**, i32*** %5, align 8
  %411 = call i64 @GetArgument(i8* bitcast ([6 x i32]* @.str.6 to i8*), i32 %409, i32** %410)
  %412 = icmp ne i64 %411, 0
  br i1 %412, label %413, label %416

413:                                              ; preds = %408
  %414 = load i32, i32* %7, align 4
  %415 = or i32 %414, 4
  store i32 %415, i32* %7, align 4
  br label %416

416:                                              ; preds = %413, %408
  %417 = load i32, i32* %4, align 4
  %418 = load i32**, i32*** %5, align 8
  %419 = call i64 @GetArgument(i8* bitcast ([5 x i32]* @.str.9 to i8*), i32 %417, i32** %418)
  %420 = icmp ne i64 %419, 0
  br i1 %420, label %421, label %430

421:                                              ; preds = %416
  %422 = load i32, i32* %7, align 4
  %423 = and i32 %422, 7
  %424 = icmp eq i32 %423, 0
  br i1 %424, label %425, label %428

425:                                              ; preds = %421
  %426 = load i32, i32* %7, align 4
  %427 = or i32 %426, 7
  store i32 %427, i32* %7, align 4
  br label %429

428:                                              ; preds = %421
  br label %449

429:                                              ; preds = %425
  br label %430

430:                                              ; preds = %429, %416
  %431 = load i32, i32* %7, align 4
  %432 = and i32 %431, 1
  %433 = icmp ne i32 %432, 0
  br i1 %433, label %434, label %436

434:                                              ; preds = %430
  %435 = call i32 (...) @WhoamiUser()
  br label %436

436:                                              ; preds = %434, %430
  %437 = load i32, i32* %7, align 4
  %438 = and i32 %437, 2
  %439 = icmp ne i32 %438, 0
  br i1 %439, label %440, label %442

440:                                              ; preds = %436
  %441 = call i32 (...) @WhoamiGroups()
  br label %442

442:                                              ; preds = %440, %436
  %443 = load i32, i32* %7, align 4
  %444 = and i32 %443, 4
  %445 = icmp ne i32 %444, 0
  br i1 %445, label %446, label %448

446:                                              ; preds = %442
  %447 = call i32 (...) @WhoamiPriv()
  br label %448

448:                                              ; preds = %446, %442
  store i32 0, i32* %3, align 4
  br label %453

449:                                              ; preds = %428, %267
  %450 = load i32, i32* @IDS_ERROR_INVALIDSYNTAX, align 4
  %451 = call i8* @WhoamiLoadRcString(i32 %450)
  %452 = call i32 (i8*, ...) @wprintf(i8* %451)
  store i32 1, i32* %3, align 4
  br label %453

453:                                              ; preds = %449, %448, %379, %328, %318, %313, %298, %293, %278, %257, %252, %242, %230, %216, %125, %24, %19
  %454 = load i32, i32* %3, align 4
  ret i32 %454
}

declare dso_local i32 @ConInitStdStreams(...) #1

declare dso_local i8* @WhoamiGetUser(i32) #1

declare dso_local i32 @wprintf(i8*, ...) #1

declare dso_local i32 @WhoamiFree(i8*) #1

declare dso_local i64 @wcsicmp(i32*, i8*) #1

declare dso_local i32 @BlankArgument(i32, i32**) #1

declare dso_local i8* @WhoamiLoadRcString(i32) #1

declare dso_local i32 @WhoamiLogonId(...) #1

declare dso_local i64 @GetArgument(i8*, i32, i32**) #1

declare dso_local i32 @WhoamiUser(...) #1

declare dso_local i32 @WhoamiGroups(...) #1

declare dso_local i32 @WhoamiPriv(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
