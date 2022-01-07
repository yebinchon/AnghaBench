; ModuleID = '/home/carl/AnghaBench/mozjpeg/extr_wrjpgcom.c_main.c'
source_filename = "/home/carl/AnghaBench/mozjpeg/extr_wrjpgcom.c_main.c"
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

28:                                               ; preds = %224, %27
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* %4, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %227

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
  br label %227

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
  br label %223

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
  br label %222

83:                                               ; preds = %51
  %84 = load i8*, i8** %7, align 8
  %85 = call i64 @keymatch(i8* %84, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i32 1)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %219

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
  %119 = call i64 @strlen(i8* %118)
  %120 = add i64 %119, 2
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
  %170 = load i8**, i8*** %5, align 8
  %171 = load i32, i32* %6, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds i8*, i8** %170, i64 %172
  %174 = load i8*, i8** %173, align 8
  %175 = call i64 @strlen(i8* %174)
  %176 = add i64 %169, %175
  %177 = add i64 %176, 2
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
  br label %215

198:                                              ; preds = %94
  %199 = load i8**, i8*** %5, align 8
  %200 = load i32, i32* %6, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds i8*, i8** %199, i64 %201
  %203 = load i8*, i8** %202, align 8
  %204 = call i64 @strlen(i8* %203)
  %205 = load i64, i64* @MAX_COM_LENGTH, align 8
  %206 = icmp uge i64 %204, %205
  br i1 %206, label %207, label %214

207:                                              ; preds = %198
  %208 = load i32, i32* @stderr, align 4
  %209 = load i64, i64* @MAX_COM_LENGTH, align 8
  %210 = trunc i64 %209 to i32
  %211 = call i32 (i32, i8*, ...) @fprintf(i32 %208, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.7, i64 0, i64 0), i32 %210)
  %212 = load i32, i32* @EXIT_FAILURE, align 4
  %213 = call i32 @exit(i32 %212) #3
  unreachable

214:                                              ; preds = %198
  br label %215

215:                                              ; preds = %214, %197
  %216 = load i8*, i8** %9, align 8
  %217 = call i64 @strlen(i8* %216)
  %218 = trunc i64 %217 to i32
  store i32 %218, i32* %11, align 4
  br label %221

219:                                              ; preds = %83
  %220 = call i32 (...) @usage()
  br label %221

221:                                              ; preds = %219, %215
  br label %222

222:                                              ; preds = %221, %82
  br label %223

223:                                              ; preds = %222, %50
  br label %224

224:                                              ; preds = %223
  %225 = load i32, i32* %6, align 4
  %226 = add nsw i32 %225, 1
  store i32 %226, i32* %6, align 4
  br label %28

227:                                              ; preds = %43, %28
  %228 = load i8*, i8** %9, align 8
  %229 = icmp ne i8* %228, null
  br i1 %229, label %230, label %235

230:                                              ; preds = %227
  %231 = load i32*, i32** %10, align 8
  %232 = icmp ne i32* %231, null
  br i1 %232, label %233, label %235

233:                                              ; preds = %230
  %234 = call i32 (...) @usage()
  br label %235

235:                                              ; preds = %233, %230, %227
  %236 = load i8*, i8** %9, align 8
  %237 = icmp eq i8* %236, null
  br i1 %237, label %238, label %247

238:                                              ; preds = %235
  %239 = load i32*, i32** %10, align 8
  %240 = icmp eq i32* %239, null
  br i1 %240, label %241, label %247

241:                                              ; preds = %238
  %242 = load i32, i32* %6, align 4
  %243 = load i32, i32* %4, align 4
  %244 = icmp sge i32 %242, %243
  br i1 %244, label %245, label %247

245:                                              ; preds = %241
  %246 = call i32 (...) @usage()
  br label %247

247:                                              ; preds = %245, %241, %238, %235
  %248 = load i32, i32* %6, align 4
  %249 = load i32, i32* %4, align 4
  %250 = icmp slt i32 %248, %249
  br i1 %250, label %251, label %273

251:                                              ; preds = %247
  %252 = load i8**, i8*** %5, align 8
  %253 = load i32, i32* %6, align 4
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds i8*, i8** %252, i64 %254
  %256 = load i8*, i8** %255, align 8
  %257 = load i8*, i8** @READ_BINARY, align 8
  %258 = call i8* @fopen(i8* %256, i8* %257)
  %259 = bitcast i8* %258 to i32*
  store i32* %259, i32** @infile, align 8
  %260 = icmp eq i32* %259, null
  br i1 %260, label %261, label %272

261:                                              ; preds = %251
  %262 = load i32, i32* @stderr, align 4
  %263 = load i64*, i64** @progname, align 8
  %264 = load i8**, i8*** %5, align 8
  %265 = load i32, i32* %6, align 4
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds i8*, i8** %264, i64 %266
  %268 = load i8*, i8** %267, align 8
  %269 = call i32 (i32, i8*, ...) @fprintf(i32 %262, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i64* %263, i8* %268)
  %270 = load i32, i32* @EXIT_FAILURE, align 4
  %271 = call i32 @exit(i32 %270) #3
  unreachable

272:                                              ; preds = %251
  br label %275

273:                                              ; preds = %247
  %274 = load i32*, i32** @stdin, align 8
  store i32* %274, i32** @infile, align 8
  br label %275

275:                                              ; preds = %273, %272
  %276 = load i32, i32* %6, align 4
  %277 = load i32, i32* %4, align 4
  %278 = sub nsw i32 %277, 1
  %279 = icmp slt i32 %276, %278
  br i1 %279, label %280, label %285

280:                                              ; preds = %275
  %281 = load i32, i32* @stderr, align 4
  %282 = load i64*, i64** @progname, align 8
  %283 = call i32 (i32, i8*, ...) @fprintf(i32 %281, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.10, i64 0, i64 0), i64* %282)
  %284 = call i32 (...) @usage()
  br label %285

285:                                              ; preds = %280, %275
  %286 = load i32*, i32** @stdout, align 8
  store i32* %286, i32** @outfile, align 8
  %287 = load i8*, i8** %9, align 8
  %288 = icmp eq i8* %287, null
  br i1 %288, label %289, label %338

289:                                              ; preds = %285
  %290 = load i64, i64* @MAX_COM_LENGTH, align 8
  %291 = call i64 @malloc(i64 %290)
  %292 = inttoptr i64 %291 to i8*
  store i8* %292, i8** %9, align 8
  %293 = load i8*, i8** %9, align 8
  %294 = icmp eq i8* %293, null
  br i1 %294, label %295, label %297

295:                                              ; preds = %289
  %296 = call i32 @ERREXIT(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0))
  br label %297

297:                                              ; preds = %295, %289
  store i32 0, i32* %11, align 4
  %298 = load i32*, i32** %10, align 8
  %299 = icmp ne i32* %298, null
  br i1 %299, label %300, label %302

300:                                              ; preds = %297
  %301 = load i32*, i32** %10, align 8
  br label %304

302:                                              ; preds = %297
  %303 = load i32*, i32** @stdin, align 8
  br label %304

304:                                              ; preds = %302, %300
  %305 = phi i32* [ %301, %300 ], [ %303, %302 ]
  store i32* %305, i32** %13, align 8
  br label %306

306:                                              ; preds = %323, %304
  %307 = load i32*, i32** %13, align 8
  %308 = call i32 @getc(i32* %307)
  store i32 %308, i32* %14, align 4
  %309 = load i32, i32* @EOF, align 4
  %310 = icmp ne i32 %308, %309
  br i1 %310, label %311, label %331

311:                                              ; preds = %306
  %312 = load i32, i32* %11, align 4
  %313 = load i64, i64* @MAX_COM_LENGTH, align 8
  %314 = trunc i64 %313 to i32
  %315 = icmp uge i32 %312, %314
  br i1 %315, label %316, label %323

316:                                              ; preds = %311
  %317 = load i32, i32* @stderr, align 4
  %318 = load i64, i64* @MAX_COM_LENGTH, align 8
  %319 = trunc i64 %318 to i32
  %320 = call i32 (i32, i8*, ...) @fprintf(i32 %317, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.7, i64 0, i64 0), i32 %319)
  %321 = load i32, i32* @EXIT_FAILURE, align 4
  %322 = call i32 @exit(i32 %321) #3
  unreachable

323:                                              ; preds = %311
  %324 = load i32, i32* %14, align 4
  %325 = trunc i32 %324 to i8
  %326 = load i8*, i8** %9, align 8
  %327 = load i32, i32* %11, align 4
  %328 = add i32 %327, 1
  store i32 %328, i32* %11, align 4
  %329 = zext i32 %327 to i64
  %330 = getelementptr inbounds i8, i8* %326, i64 %329
  store i8 %325, i8* %330, align 1
  br label %306

331:                                              ; preds = %306
  %332 = load i32*, i32** %10, align 8
  %333 = icmp ne i32* %332, null
  br i1 %333, label %334, label %337

334:                                              ; preds = %331
  %335 = load i32*, i32** %10, align 8
  %336 = call i32 @fclose(i32* %335)
  br label %337

337:                                              ; preds = %334, %331
  br label %338

338:                                              ; preds = %337, %285
  %339 = load i32, i32* %8, align 4
  %340 = call i32 @scan_JPEG_header(i32 %339)
  store i32 %340, i32* %12, align 4
  %341 = load i32, i32* %11, align 4
  %342 = icmp ugt i32 %341, 0
  br i1 %342, label %343, label %361

343:                                              ; preds = %338
  %344 = load i32, i32* @M_COM, align 4
  %345 = call i32 @write_marker(i32 %344)
  %346 = load i32, i32* %11, align 4
  %347 = add i32 %346, 2
  %348 = call i32 @write_2_bytes(i32 %347)
  br label %349

349:                                              ; preds = %352, %343
  %350 = load i32, i32* %11, align 4
  %351 = icmp ugt i32 %350, 0
  br i1 %351, label %352, label %360

352:                                              ; preds = %349
  %353 = load i8*, i8** %9, align 8
  %354 = getelementptr inbounds i8, i8* %353, i32 1
  store i8* %354, i8** %9, align 8
  %355 = load i8, i8* %353, align 1
  %356 = sext i8 %355 to i32
  %357 = call i32 @write_1_byte(i32 %356)
  %358 = load i32, i32* %11, align 4
  %359 = add i32 %358, -1
  store i32 %359, i32* %11, align 4
  br label %349

360:                                              ; preds = %349
  br label %361

361:                                              ; preds = %360, %338
  %362 = load i32, i32* %12, align 4
  %363 = call i32 @write_marker(i32 %362)
  %364 = call i32 (...) @copy_rest_of_file()
  %365 = load i32, i32* @EXIT_SUCCESS, align 4
  %366 = call i32 @exit(i32 %365) #3
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
