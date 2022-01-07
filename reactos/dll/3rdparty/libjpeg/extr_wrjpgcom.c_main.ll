; ModuleID = '/home/carl/AnghaBench/reactos/dll/3rdparty/libjpeg/extr_wrjpgcom.c_main.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/3rdparty/libjpeg/extr_wrjpgcom.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@progname = common dso_local global i64* null, align 8
@.str = private unnamed_addr constant [9 x i8] c"wrjpgcom\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"replace\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"cfile\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [19 x i8] c"%s: can't open %s\0A\00", align 1
@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [8 x i8] c"comment\00", align 1
@MAX_COM_LENGTH = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [20 x i8] c"Insufficient memory\00", align 1
@.str.7 = private unnamed_addr constant [38 x i8] c"Comment text may not exceed %u bytes\0A\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"Missing ending quote mark\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c" \00", align 1
@READ_BINARY = common dso_local global i8* null, align 8
@infile = common dso_local global i32* null, align 8
@stdin = common dso_local global i32* null, align 8
@.str.10 = private unnamed_addr constant [25 x i8] c"%s: only one input file\0A\00", align 1
@stdout = common dso_local global i32* null, align 8
@outfile = common dso_local global i32* null, align 8
@EOF = common dso_local global i32 0, align 4
@M_COM = common dso_local global i32 0, align 4
@EXIT_SUCCESS = common dso_local global i32 0, align 4
@O_BINARY = common dso_local global i32 0, align 4
@WRITE_BINARY = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 1, i32* %8, align 4
  store i8* null, i8** %9, align 8
  store i32* null, i32** %10, align 8
  store i32 0, i32* %11, align 4
  %15 = load i8**, i8*** %5, align 8
  %16 = getelementptr inbounds i8*, i8** %15, i64 0
  %17 = load i8*, i8** %16, align 8
  %18 = bitcast i8* %17 to i64*
  store i64* %18, i64** @progname, align 8
  %19 = load i64*, i64** @progname, align 8
  %20 = icmp eq i64* %19, null
  br i1 %20, label %26, label %21

21:                                               ; preds = %2
  %22 = load i64*, i64** @progname, align 8
  %23 = getelementptr inbounds i64, i64* %22, i64 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %21, %2
  store i64* bitcast ([9 x i8]* @.str to i64*), i64** @progname, align 8
  br label %27

27:                                               ; preds = %26, %21
  store i32 1, i32* %6, align 4
  br label %28

28:                                               ; preds = %220, %27
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* %4, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %223

32:                                               ; preds = %28
  %33 = load i8**, i8*** %5, align 8
  %34 = load i32, i32* %6, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i8*, i8** %33, i64 %35
  %37 = load i8*, i8** %36, align 8
  store i8* %37, i8** %7, align 8
  %38 = load i8*, i8** %7, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 0
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp ne i32 %41, 45
  br i1 %42, label %43, label %44

43:                                               ; preds = %32
  br label %223

44:                                               ; preds = %32
  %45 = load i8*, i8** %7, align 8
  %46 = getelementptr inbounds i8, i8* %45, i32 1
  store i8* %46, i8** %7, align 8
  %47 = load i8*, i8** %7, align 8
  %48 = call i64 @keymatch(i8* %47, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 1)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %44
  store i32 0, i32* %8, align 4
  br label %219

51:                                               ; preds = %44
  %52 = load i8*, i8** %7, align 8
  %53 = call i64 @keymatch(i8* %52, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 2)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %83

55:                                               ; preds = %51
  %56 = load i32, i32* %6, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %6, align 4
  %58 = load i32, i32* %4, align 4
  %59 = icmp sge i32 %57, %58
  br i1 %59, label %60, label %62

60:                                               ; preds = %55
  %61 = call i32 (...) @usage()
  br label %62

62:                                               ; preds = %60, %55
  %63 = load i8**, i8*** %5, align 8
  %64 = load i32, i32* %6, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i8*, i8** %63, i64 %65
  %67 = load i8*, i8** %66, align 8
  %68 = call i8* @fopen(i8* %67, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %69 = bitcast i8* %68 to i32*
  store i32* %69, i32** %10, align 8
  %70 = icmp eq i32* %69, null
  br i1 %70, label %71, label %82

71:                                               ; preds = %62
  %72 = load i32, i32* @stderr, align 4
  %73 = load i64*, i64** @progname, align 8
  %74 = load i8**, i8*** %5, align 8
  %75 = load i32, i32* %6, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i8*, i8** %74, i64 %76
  %78 = load i8*, i8** %77, align 8
  %79 = call i32 (i32, i8*, ...) @fprintf(i32 %72, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i64* %73, i8* %78)
  %80 = load i32, i32* @EXIT_FAILURE, align 4
  %81 = call i32 @exit(i32 %80) #3
  unreachable

82:                                               ; preds = %62
  br label %218

83:                                               ; preds = %51
  %84 = load i8*, i8** %7, align 8
  %85 = call i64 @keymatch(i8* %84, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i32 1)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %215

87:                                               ; preds = %83
  %88 = load i32, i32* %6, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %6, align 4
  %90 = load i32, i32* %4, align 4
  %91 = icmp sge i32 %89, %90
  br i1 %91, label %92, label %94

92:                                               ; preds = %87
  %93 = call i32 (...) @usage()
  br label %94

94:                                               ; preds = %92, %87
  %95 = load i8**, i8*** %5, align 8
  %96 = load i32, i32* %6, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i8*, i8** %95, i64 %97
  %99 = load i8*, i8** %98, align 8
  store i8* %99, i8** %9, align 8
  %100 = load i8*, i8** %9, align 8
  %101 = getelementptr inbounds i8, i8* %100, i64 0
  %102 = load i8, i8* %101, align 1
  %103 = sext i8 %102 to i32
  %104 = icmp eq i32 %103, 34
  br i1 %104, label %105, label %198

105:                                              ; preds = %94
  %106 = load i64, i64* @MAX_COM_LENGTH, align 8
  %107 = call i64 @malloc(i64 %106)
  %108 = inttoptr i64 %107 to i8*
  store i8* %108, i8** %9, align 8
  %109 = load i8*, i8** %9, align 8
  %110 = icmp eq i8* %109, null
  br i1 %110, label %111, label %113

111:                                              ; preds = %105
  %112 = call i32 @ERREXIT(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0))
  br label %113

113:                                              ; preds = %111, %105
  %114 = load i8**, i8*** %5, align 8
  %115 = load i32, i32* %6, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i8*, i8** %114, i64 %116
  %118 = load i8*, i8** %117, align 8
  %119 = getelementptr inbounds i8, i8* %118, i64 1
  %120 = call i64 @strlen(i8* %119)
  %121 = load i64, i64* @MAX_COM_LENGTH, align 8
  %122 = icmp uge i64 %120, %121
  br i1 %122, label %123, label %130

123:                                              ; preds = %113
  %124 = load i32, i32* @stderr, align 4
  %125 = load i64, i64* @MAX_COM_LENGTH, align 8
  %126 = trunc i64 %125 to i32
  %127 = call i32 (i32, i8*, ...) @fprintf(i32 %124, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.7, i64 0, i64 0), i32 %126)
  %128 = load i32, i32* @EXIT_FAILURE, align 4
  %129 = call i32 @exit(i32 %128) #3
  unreachable

130:                                              ; preds = %113
  %131 = load i8*, i8** %9, align 8
  %132 = load i8**, i8*** %5, align 8
  %133 = load i32, i32* %6, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i8*, i8** %132, i64 %134
  %136 = load i8*, i8** %135, align 8
  %137 = getelementptr inbounds i8, i8* %136, i64 1
  %138 = call i32 @strcpy(i8* %131, i8* %137)
  br label %139

139:                                              ; preds = %187, %130
  %140 = load i8*, i8** %9, align 8
  %141 = call i64 @strlen(i8* %140)
  %142 = trunc i64 %141 to i32
  store i32 %142, i32* %11, align 4
  %143 = load i32, i32* %11, align 4
  %144 = icmp ugt i32 %143, 0
  br i1 %144, label %145, label %160

145:                                              ; preds = %139
  %146 = load i8*, i8** %9, align 8
  %147 = load i32, i32* %11, align 4
  %148 = sub i32 %147, 1
  %149 = zext i32 %148 to i64
  %150 = getelementptr inbounds i8, i8* %146, i64 %149
  %151 = load i8, i8* %150, align 1
  %152 = sext i8 %151 to i32
  %153 = icmp eq i32 %152, 34
  br i1 %153, label %154, label %160

154:                                              ; preds = %145
  %155 = load i8*, i8** %9, align 8
  %156 = load i32, i32* %11, align 4
  %157 = sub i32 %156, 1
  %158 = zext i32 %157 to i64
  %159 = getelementptr inbounds i8, i8* %155, i64 %158
  store i8 0, i8* %159, align 1
  br label %197

160:                                              ; preds = %145, %139
  %161 = load i32, i32* %6, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %6, align 4
  %163 = load i32, i32* %4, align 4
  %164 = icmp sge i32 %162, %163
  br i1 %164, label %165, label %167

165:                                              ; preds = %160
  %166 = call i32 @ERREXIT(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0))
  br label %167

167:                                              ; preds = %165, %160
  %168 = load i8*, i8** %9, align 8
  %169 = call i64 @strlen(i8* %168)
  %170 = add i64 %169, 1
  %171 = load i8**, i8*** %5, align 8
  %172 = load i32, i32* %6, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i8*, i8** %171, i64 %173
  %175 = load i8*, i8** %174, align 8
  %176 = call i64 @strlen(i8* %175)
  %177 = add i64 %170, %176
  %178 = load i64, i64* @MAX_COM_LENGTH, align 8
  %179 = icmp uge i64 %177, %178
  br i1 %179, label %180, label %187

180:                                              ; preds = %167
  %181 = load i32, i32* @stderr, align 4
  %182 = load i64, i64* @MAX_COM_LENGTH, align 8
  %183 = trunc i64 %182 to i32
  %184 = call i32 (i32, i8*, ...) @fprintf(i32 %181, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.7, i64 0, i64 0), i32 %183)
  %185 = load i32, i32* @EXIT_FAILURE, align 4
  %186 = call i32 @exit(i32 %185) #3
  unreachable

187:                                              ; preds = %167
  %188 = load i8*, i8** %9, align 8
  %189 = call i32 @strcat(i8* %188, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0))
  %190 = load i8*, i8** %9, align 8
  %191 = load i8**, i8*** %5, align 8
  %192 = load i32, i32* %6, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds i8*, i8** %191, i64 %193
  %195 = load i8*, i8** %194, align 8
  %196 = call i32 @strcat(i8* %190, i8* %195)
  br label %139

197:                                              ; preds = %154
  br label %211

198:                                              ; preds = %94
  %199 = load i8*, i8** %9, align 8
  %200 = call i64 @strlen(i8* %199)
  %201 = load i64, i64* @MAX_COM_LENGTH, align 8
  %202 = icmp uge i64 %200, %201
  br i1 %202, label %203, label %210

203:                                              ; preds = %198
  %204 = load i32, i32* @stderr, align 4
  %205 = load i64, i64* @MAX_COM_LENGTH, align 8
  %206 = trunc i64 %205 to i32
  %207 = call i32 (i32, i8*, ...) @fprintf(i32 %204, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.7, i64 0, i64 0), i32 %206)
  %208 = load i32, i32* @EXIT_FAILURE, align 4
  %209 = call i32 @exit(i32 %208) #3
  unreachable

210:                                              ; preds = %198
  br label %211

211:                                              ; preds = %210, %197
  %212 = load i8*, i8** %9, align 8
  %213 = call i64 @strlen(i8* %212)
  %214 = trunc i64 %213 to i32
  store i32 %214, i32* %11, align 4
  br label %217

215:                                              ; preds = %83
  %216 = call i32 (...) @usage()
  br label %217

217:                                              ; preds = %215, %211
  br label %218

218:                                              ; preds = %217, %82
  br label %219

219:                                              ; preds = %218, %50
  br label %220

220:                                              ; preds = %219
  %221 = load i32, i32* %6, align 4
  %222 = add nsw i32 %221, 1
  store i32 %222, i32* %6, align 4
  br label %28

223:                                              ; preds = %43, %28
  %224 = load i8*, i8** %9, align 8
  %225 = icmp ne i8* %224, null
  br i1 %225, label %226, label %231

226:                                              ; preds = %223
  %227 = load i32*, i32** %10, align 8
  %228 = icmp ne i32* %227, null
  br i1 %228, label %229, label %231

229:                                              ; preds = %226
  %230 = call i32 (...) @usage()
  br label %231

231:                                              ; preds = %229, %226, %223
  %232 = load i8*, i8** %9, align 8
  %233 = icmp eq i8* %232, null
  br i1 %233, label %234, label %243

234:                                              ; preds = %231
  %235 = load i32*, i32** %10, align 8
  %236 = icmp eq i32* %235, null
  br i1 %236, label %237, label %243

237:                                              ; preds = %234
  %238 = load i32, i32* %6, align 4
  %239 = load i32, i32* %4, align 4
  %240 = icmp sge i32 %238, %239
  br i1 %240, label %241, label %243

241:                                              ; preds = %237
  %242 = call i32 (...) @usage()
  br label %243

243:                                              ; preds = %241, %237, %234, %231
  %244 = load i32, i32* %6, align 4
  %245 = load i32, i32* %4, align 4
  %246 = icmp slt i32 %244, %245
  br i1 %246, label %247, label %269

247:                                              ; preds = %243
  %248 = load i8**, i8*** %5, align 8
  %249 = load i32, i32* %6, align 4
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds i8*, i8** %248, i64 %250
  %252 = load i8*, i8** %251, align 8
  %253 = load i8*, i8** @READ_BINARY, align 8
  %254 = call i8* @fopen(i8* %252, i8* %253)
  %255 = bitcast i8* %254 to i32*
  store i32* %255, i32** @infile, align 8
  %256 = icmp eq i32* %255, null
  br i1 %256, label %257, label %268

257:                                              ; preds = %247
  %258 = load i32, i32* @stderr, align 4
  %259 = load i64*, i64** @progname, align 8
  %260 = load i8**, i8*** %5, align 8
  %261 = load i32, i32* %6, align 4
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds i8*, i8** %260, i64 %262
  %264 = load i8*, i8** %263, align 8
  %265 = call i32 (i32, i8*, ...) @fprintf(i32 %258, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i64* %259, i8* %264)
  %266 = load i32, i32* @EXIT_FAILURE, align 4
  %267 = call i32 @exit(i32 %266) #3
  unreachable

268:                                              ; preds = %247
  br label %271

269:                                              ; preds = %243
  %270 = load i32*, i32** @stdin, align 8
  store i32* %270, i32** @infile, align 8
  br label %271

271:                                              ; preds = %269, %268
  %272 = load i32, i32* %6, align 4
  %273 = load i32, i32* %4, align 4
  %274 = sub nsw i32 %273, 1
  %275 = icmp slt i32 %272, %274
  br i1 %275, label %276, label %281

276:                                              ; preds = %271
  %277 = load i32, i32* @stderr, align 4
  %278 = load i64*, i64** @progname, align 8
  %279 = call i32 (i32, i8*, ...) @fprintf(i32 %277, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.10, i64 0, i64 0), i64* %278)
  %280 = call i32 (...) @usage()
  br label %281

281:                                              ; preds = %276, %271
  %282 = load i32*, i32** @stdout, align 8
  store i32* %282, i32** @outfile, align 8
  %283 = load i8*, i8** %9, align 8
  %284 = icmp eq i8* %283, null
  br i1 %284, label %285, label %334

285:                                              ; preds = %281
  %286 = load i64, i64* @MAX_COM_LENGTH, align 8
  %287 = call i64 @malloc(i64 %286)
  %288 = inttoptr i64 %287 to i8*
  store i8* %288, i8** %9, align 8
  %289 = load i8*, i8** %9, align 8
  %290 = icmp eq i8* %289, null
  br i1 %290, label %291, label %293

291:                                              ; preds = %285
  %292 = call i32 @ERREXIT(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0))
  br label %293

293:                                              ; preds = %291, %285
  store i32 0, i32* %11, align 4
  %294 = load i32*, i32** %10, align 8
  %295 = icmp ne i32* %294, null
  br i1 %295, label %296, label %298

296:                                              ; preds = %293
  %297 = load i32*, i32** %10, align 8
  br label %300

298:                                              ; preds = %293
  %299 = load i32*, i32** @stdin, align 8
  br label %300

300:                                              ; preds = %298, %296
  %301 = phi i32* [ %297, %296 ], [ %299, %298 ]
  store i32* %301, i32** %13, align 8
  br label %302

302:                                              ; preds = %319, %300
  %303 = load i32*, i32** %13, align 8
  %304 = call i32 @getc(i32* %303)
  store i32 %304, i32* %14, align 4
  %305 = load i32, i32* @EOF, align 4
  %306 = icmp ne i32 %304, %305
  br i1 %306, label %307, label %327

307:                                              ; preds = %302
  %308 = load i32, i32* %11, align 4
  %309 = load i64, i64* @MAX_COM_LENGTH, align 8
  %310 = trunc i64 %309 to i32
  %311 = icmp uge i32 %308, %310
  br i1 %311, label %312, label %319

312:                                              ; preds = %307
  %313 = load i32, i32* @stderr, align 4
  %314 = load i64, i64* @MAX_COM_LENGTH, align 8
  %315 = trunc i64 %314 to i32
  %316 = call i32 (i32, i8*, ...) @fprintf(i32 %313, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.7, i64 0, i64 0), i32 %315)
  %317 = load i32, i32* @EXIT_FAILURE, align 4
  %318 = call i32 @exit(i32 %317) #3
  unreachable

319:                                              ; preds = %307
  %320 = load i32, i32* %14, align 4
  %321 = trunc i32 %320 to i8
  %322 = load i8*, i8** %9, align 8
  %323 = load i32, i32* %11, align 4
  %324 = add i32 %323, 1
  store i32 %324, i32* %11, align 4
  %325 = zext i32 %323 to i64
  %326 = getelementptr inbounds i8, i8* %322, i64 %325
  store i8 %321, i8* %326, align 1
  br label %302

327:                                              ; preds = %302
  %328 = load i32*, i32** %10, align 8
  %329 = icmp ne i32* %328, null
  br i1 %329, label %330, label %333

330:                                              ; preds = %327
  %331 = load i32*, i32** %10, align 8
  %332 = call i32 @fclose(i32* %331)
  br label %333

333:                                              ; preds = %330, %327
  br label %334

334:                                              ; preds = %333, %281
  %335 = load i32, i32* %8, align 4
  %336 = call i32 @scan_JPEG_header(i32 %335)
  store i32 %336, i32* %12, align 4
  %337 = load i32, i32* %11, align 4
  %338 = icmp ugt i32 %337, 0
  br i1 %338, label %339, label %357

339:                                              ; preds = %334
  %340 = load i32, i32* @M_COM, align 4
  %341 = call i32 @write_marker(i32 %340)
  %342 = load i32, i32* %11, align 4
  %343 = add i32 %342, 2
  %344 = call i32 @write_2_bytes(i32 %343)
  br label %345

345:                                              ; preds = %348, %339
  %346 = load i32, i32* %11, align 4
  %347 = icmp ugt i32 %346, 0
  br i1 %347, label %348, label %356

348:                                              ; preds = %345
  %349 = load i8*, i8** %9, align 8
  %350 = getelementptr inbounds i8, i8* %349, i32 1
  store i8* %350, i8** %9, align 8
  %351 = load i8, i8* %349, align 1
  %352 = sext i8 %351 to i32
  %353 = call i32 @write_1_byte(i32 %352)
  %354 = load i32, i32* %11, align 4
  %355 = add i32 %354, -1
  store i32 %355, i32* %11, align 4
  br label %345

356:                                              ; preds = %345
  br label %357

357:                                              ; preds = %356, %334
  %358 = load i32, i32* %12, align 4
  %359 = call i32 @write_marker(i32 %358)
  %360 = call i32 (...) @copy_rest_of_file()
  %361 = load i32, i32* @EXIT_SUCCESS, align 4
  %362 = call i32 @exit(i32 %361) #3
  unreachable
}

declare dso_local i64 @keymatch(i8*, i8*, i32) #1

declare dso_local i32 @usage(...) #1

declare dso_local i8* @fopen(i8*, i8*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i64 @malloc(i64) #1

declare dso_local i32 @ERREXIT(i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @strcat(i8*, i8*) #1

declare dso_local i32 @getc(i32*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @scan_JPEG_header(i32) #1

declare dso_local i32 @write_marker(i32) #1

declare dso_local i32 @write_2_bytes(i32) #1

declare dso_local i32 @write_1_byte(i32) #1

declare dso_local i32 @copy_rest_of_file(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
