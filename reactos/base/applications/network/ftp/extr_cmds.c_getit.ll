; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/network/ftp/extr_cmds.c_getit.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/network/ftp/extr_cmds.c_getit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32, i64 }
%struct.tm = type { i32, i32, i32, i32, i32, i32 }

@line = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"(remote-file) \00", align 1
@stdout = common dso_local global i32 0, align 4
@margc = common dso_local global i32 0, align 4
@margv = common dso_local global i8** null, align 8
@.str.2 = private unnamed_addr constant [38 x i8] c"usage: %s remote-file [ local-file ]\0A\00", align 1
@code = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [14 x i8] c"(local-file) \00", align 1
@mcase = common dso_local global i64 0, align 8
@MAXPATHLEN = common dso_local global i32 0, align 4
@ntflag = common dso_local global i64 0, align 8
@mapflag = common dso_local global i64 0, align 8
@restart_point = common dso_local global i64 0, align 8
@verbose = common dso_local global i32 0, align 4
@debug = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [8 x i8] c"MDTM %s\00", align 1
@COMPLETE = common dso_local global i64 0, align 8
@reply_string = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [29 x i8] c"%*s %04d%02d%02d%02d%02d%02d\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"RETR\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @getit(i32 %0, i8** %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.stat, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca %struct.tm*, align 8
  store i32 %0, i32* %6, align 4
  store i8** %1, i8*** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i32 0, i32* %10, align 4
  %27 = load i32, i32* %6, align 4
  %28 = icmp eq i32 %27, 2
  br i1 %28, label %29, label %39

29:                                               ; preds = %4
  %30 = load i32, i32* %6, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %6, align 4
  %32 = load i8**, i8*** %7, align 8
  %33 = getelementptr inbounds i8*, i8** %32, i64 1
  %34 = load i8*, i8** %33, align 8
  %35 = load i8**, i8*** %7, align 8
  %36 = getelementptr inbounds i8*, i8** %35, i64 2
  store i8* %34, i8** %36, align 8
  %37 = load i32, i32* %10, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %10, align 4
  br label %39

39:                                               ; preds = %29, %4
  %40 = load i32, i32* %6, align 4
  %41 = icmp slt i32 %40, 2
  br i1 %41, label %42, label %56

42:                                               ; preds = %39
  %43 = load i32*, i32** @line, align 8
  %44 = call i32 @strcat(i32* %43, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %45 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %46 = load i32, i32* @stdout, align 4
  %47 = call i32 @fflush(i32 %46)
  %48 = load i32*, i32** @line, align 8
  %49 = load i32*, i32** @line, align 8
  %50 = call i64 @strlen(i32* %49)
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = call i32 @gets(i32* %51)
  %53 = call i32 (...) @makeargv()
  %54 = load i32, i32* @margc, align 4
  store i32 %54, i32* %6, align 4
  %55 = load i8**, i8*** @margv, align 8
  store i8** %55, i8*** %7, align 8
  br label %56

56:                                               ; preds = %42, %39
  %57 = load i32, i32* %6, align 4
  %58 = icmp slt i32 %57, 2
  br i1 %58, label %59, label %67

59:                                               ; preds = %56
  br label %60

60:                                               ; preds = %87, %59
  %61 = load i8**, i8*** %7, align 8
  %62 = getelementptr inbounds i8*, i8** %61, i64 0
  %63 = load i8*, i8** %62, align 8
  %64 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i8* %63)
  %65 = load i32, i32* @stdout, align 4
  %66 = call i32 @fflush(i32 %65)
  store i32 -1, i32* @code, align 4
  store i32 0, i32* %5, align 4
  br label %354

67:                                               ; preds = %56
  %68 = load i32, i32* %6, align 4
  %69 = icmp slt i32 %68, 3
  br i1 %69, label %70, label %84

70:                                               ; preds = %67
  %71 = load i32*, i32** @line, align 8
  %72 = call i32 @strcat(i32* %71, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %73 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  %74 = load i32, i32* @stdout, align 4
  %75 = call i32 @fflush(i32 %74)
  %76 = load i32*, i32** @line, align 8
  %77 = load i32*, i32** @line, align 8
  %78 = call i64 @strlen(i32* %77)
  %79 = getelementptr inbounds i32, i32* %76, i64 %78
  %80 = call i32 @gets(i32* %79)
  %81 = call i32 (...) @makeargv()
  %82 = load i32, i32* @margc, align 4
  store i32 %82, i32* %6, align 4
  %83 = load i8**, i8*** @margv, align 8
  store i8** %83, i8*** %7, align 8
  br label %84

84:                                               ; preds = %70, %67
  %85 = load i32, i32* %6, align 4
  %86 = icmp slt i32 %85, 3
  br i1 %86, label %87, label %88

87:                                               ; preds = %84
  br label %60

88:                                               ; preds = %84
  %89 = load i8**, i8*** %7, align 8
  %90 = getelementptr inbounds i8*, i8** %89, i64 1
  %91 = load i8*, i8** %90, align 8
  store i8* %91, i8** %11, align 8
  %92 = load i8**, i8*** %7, align 8
  %93 = getelementptr inbounds i8*, i8** %92, i64 2
  %94 = load i8*, i8** %93, align 8
  store i8* %94, i8** %12, align 8
  %95 = load i8**, i8*** %7, align 8
  %96 = getelementptr inbounds i8*, i8** %95, i64 2
  %97 = call i32 @globulize(i8** %96)
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %100, label %99

99:                                               ; preds = %88
  store i32 -1, i32* @code, align 4
  store i32 0, i32* %5, align 4
  br label %354

100:                                              ; preds = %88
  %101 = load i32, i32* %10, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %166

103:                                              ; preds = %100
  %104 = load i64, i64* @mcase, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %166

106:                                              ; preds = %103
  %107 = load i8**, i8*** %7, align 8
  %108 = getelementptr inbounds i8*, i8** %107, i64 1
  %109 = load i8*, i8** %108, align 8
  store i8* %109, i8** %13, align 8
  %110 = load i32, i32* @MAXPATHLEN, align 4
  %111 = zext i32 %110 to i64
  %112 = call i8* @llvm.stacksave()
  store i8* %112, i8** %15, align 8
  %113 = alloca i8, i64 %111, align 16
  store i64 %111, i64* %16, align 8
  br label %114

114:                                              ; preds = %127, %106
  %115 = load i8*, i8** %13, align 8
  %116 = load i8, i8* %115, align 1
  %117 = sext i8 %116 to i32
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %125

119:                                              ; preds = %114
  %120 = load i8*, i8** %13, align 8
  %121 = load i8, i8* %120, align 1
  %122 = call i32 @islower(i8 signext %121)
  %123 = icmp ne i32 %122, 0
  %124 = xor i1 %123, true
  br label %125

125:                                              ; preds = %119, %114
  %126 = phi i1 [ false, %114 ], [ %124, %119 ]
  br i1 %126, label %127, label %130

127:                                              ; preds = %125
  %128 = load i8*, i8** %13, align 8
  %129 = getelementptr inbounds i8, i8* %128, i32 1
  store i8* %129, i8** %13, align 8
  br label %114

130:                                              ; preds = %125
  %131 = load i8*, i8** %13, align 8
  %132 = load i8, i8* %131, align 1
  %133 = icmp ne i8 %132, 0
  br i1 %133, label %164, label %134

134:                                              ; preds = %130
  %135 = load i8**, i8*** %7, align 8
  %136 = getelementptr inbounds i8*, i8** %135, i64 2
  %137 = load i8*, i8** %136, align 8
  store i8* %137, i8** %13, align 8
  store i8* %113, i8** %14, align 8
  br label %138

138:                                              ; preds = %156, %134
  %139 = load i8*, i8** %13, align 8
  %140 = load i8, i8* %139, align 1
  %141 = load i8*, i8** %14, align 8
  store i8 %140, i8* %141, align 1
  %142 = icmp ne i8 %140, 0
  br i1 %142, label %143, label %161

143:                                              ; preds = %138
  %144 = load i8*, i8** %14, align 8
  %145 = load i8, i8* %144, align 1
  %146 = call i64 @isupper(i8 signext %145)
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %156

148:                                              ; preds = %143
  %149 = load i8*, i8** %14, align 8
  %150 = load i8, i8* %149, align 1
  %151 = sext i8 %150 to i32
  %152 = add nsw i32 97, %151
  %153 = sub nsw i32 %152, 65
  %154 = trunc i32 %153 to i8
  %155 = load i8*, i8** %14, align 8
  store i8 %154, i8* %155, align 1
  br label %156

156:                                              ; preds = %148, %143
  %157 = load i8*, i8** %13, align 8
  %158 = getelementptr inbounds i8, i8* %157, i32 1
  store i8* %158, i8** %13, align 8
  %159 = load i8*, i8** %14, align 8
  %160 = getelementptr inbounds i8, i8* %159, i32 1
  store i8* %160, i8** %14, align 8
  br label %138

161:                                              ; preds = %138
  %162 = load i8**, i8*** %7, align 8
  %163 = getelementptr inbounds i8*, i8** %162, i64 2
  store i8* %113, i8** %163, align 8
  br label %164

164:                                              ; preds = %161, %130
  %165 = load i8*, i8** %15, align 8
  call void @llvm.stackrestore(i8* %165)
  br label %166

166:                                              ; preds = %164, %103, %100
  %167 = load i32, i32* %10, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %179

169:                                              ; preds = %166
  %170 = load i64, i64* @ntflag, align 8
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %179

172:                                              ; preds = %169
  %173 = load i8**, i8*** %7, align 8
  %174 = getelementptr inbounds i8*, i8** %173, i64 2
  %175 = load i8*, i8** %174, align 8
  %176 = call i8* @dotrans(i8* %175)
  %177 = load i8**, i8*** %7, align 8
  %178 = getelementptr inbounds i8*, i8** %177, i64 2
  store i8* %176, i8** %178, align 8
  br label %179

179:                                              ; preds = %172, %169, %166
  %180 = load i32, i32* %10, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %192

182:                                              ; preds = %179
  %183 = load i64, i64* @mapflag, align 8
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %192

185:                                              ; preds = %182
  %186 = load i8**, i8*** %7, align 8
  %187 = getelementptr inbounds i8*, i8** %186, i64 2
  %188 = load i8*, i8** %187, align 8
  %189 = call i8* @domap(i8* %188)
  %190 = load i8**, i8*** %7, align 8
  %191 = getelementptr inbounds i8*, i8** %190, i64 2
  store i8* %189, i8** %191, align 8
  br label %192

192:                                              ; preds = %185, %182, %179
  %193 = load i32, i32* %8, align 4
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %331

195:                                              ; preds = %192
  %196 = load i8**, i8*** %7, align 8
  %197 = getelementptr inbounds i8*, i8** %196, i64 2
  %198 = load i8*, i8** %197, align 8
  %199 = call i32 @stat(i8* %198, %struct.stat* %17)
  store i32 %199, i32* %18, align 4
  %200 = load i32, i32* %8, align 4
  %201 = icmp eq i32 %200, 1
  br i1 %201, label %202, label %213

202:                                              ; preds = %195
  %203 = load i32, i32* %18, align 4
  %204 = icmp slt i32 %203, 0
  br i1 %204, label %205, label %210

205:                                              ; preds = %202
  %206 = load i8**, i8*** %7, align 8
  %207 = getelementptr inbounds i8*, i8** %206, i64 2
  %208 = load i8*, i8** %207, align 8
  %209 = call i32 @perror(i8* %208)
  store i32 0, i32* %5, align 4
  br label %354

210:                                              ; preds = %202
  %211 = getelementptr inbounds %struct.stat, %struct.stat* %17, i32 0, i32 1
  %212 = load i64, i64* %211, align 8
  store i64 %212, i64* @restart_point, align 8
  br label %330

213:                                              ; preds = %195
  %214 = load i32, i32* %18, align 4
  %215 = icmp eq i32 %214, 0
  br i1 %215, label %216, label %329

216:                                              ; preds = %213
  %217 = load i32, i32* @verbose, align 4
  store i32 %217, i32* %19, align 4
  %218 = load i64, i64* @debug, align 8
  %219 = icmp eq i64 %218, 0
  br i1 %219, label %220, label %221

220:                                              ; preds = %216
  store i32 -1, i32* @verbose, align 4
  br label %221

221:                                              ; preds = %220, %216
  %222 = load i8**, i8*** %7, align 8
  %223 = getelementptr inbounds i8*, i8** %222, i64 1
  %224 = load i8*, i8** %223, align 8
  %225 = call i64 @command(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8* %224)
  %226 = load i64, i64* @COMPLETE, align 8
  %227 = icmp eq i64 %225, %226
  br i1 %227, label %228, label %322

228:                                              ; preds = %221
  %229 = load i32, i32* %19, align 4
  store i32 %229, i32* @verbose, align 4
  %230 = load i8*, i8** @reply_string, align 8
  %231 = call i32 @sscanf(i8* %230, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0), i32* %20, i32* %21, i32* %22, i32* %23, i32* %24, i32* %25)
  %232 = getelementptr inbounds %struct.stat, %struct.stat* %17, i32 0, i32 0
  %233 = call %struct.tm* @gmtime(i32* %232)
  store %struct.tm* %233, %struct.tm** %26, align 8
  %234 = load %struct.tm*, %struct.tm** %26, align 8
  %235 = getelementptr inbounds %struct.tm, %struct.tm* %234, i32 0, i32 0
  %236 = load i32, i32* %235, align 4
  %237 = add nsw i32 %236, 1
  store i32 %237, i32* %235, align 4
  %238 = load %struct.tm*, %struct.tm** %26, align 8
  %239 = getelementptr inbounds %struct.tm, %struct.tm* %238, i32 0, i32 1
  %240 = load i32, i32* %239, align 4
  %241 = load i32, i32* %20, align 4
  %242 = srem i32 %241, 100
  %243 = icmp sgt i32 %240, %242
  br i1 %243, label %244, label %245

244:                                              ; preds = %228
  store i32 1, i32* %5, align 4
  br label %354

245:                                              ; preds = %228
  %246 = load %struct.tm*, %struct.tm** %26, align 8
  %247 = getelementptr inbounds %struct.tm, %struct.tm* %246, i32 0, i32 1
  %248 = load i32, i32* %247, align 4
  %249 = load i32, i32* %20, align 4
  %250 = srem i32 %249, 100
  %251 = icmp eq i32 %248, %250
  br i1 %251, label %252, label %260

252:                                              ; preds = %245
  %253 = load %struct.tm*, %struct.tm** %26, align 8
  %254 = getelementptr inbounds %struct.tm, %struct.tm* %253, i32 0, i32 0
  %255 = load i32, i32* %254, align 4
  %256 = load i32, i32* %21, align 4
  %257 = icmp sgt i32 %255, %256
  br i1 %257, label %258, label %259

258:                                              ; preds = %252
  store i32 1, i32* %5, align 4
  br label %354

259:                                              ; preds = %252
  br label %320

260:                                              ; preds = %245
  %261 = load %struct.tm*, %struct.tm** %26, align 8
  %262 = getelementptr inbounds %struct.tm, %struct.tm* %261, i32 0, i32 0
  %263 = load i32, i32* %262, align 4
  %264 = load i32, i32* %21, align 4
  %265 = icmp eq i32 %263, %264
  br i1 %265, label %266, label %274

266:                                              ; preds = %260
  %267 = load %struct.tm*, %struct.tm** %26, align 8
  %268 = getelementptr inbounds %struct.tm, %struct.tm* %267, i32 0, i32 2
  %269 = load i32, i32* %268, align 4
  %270 = load i32, i32* %22, align 4
  %271 = icmp sgt i32 %269, %270
  br i1 %271, label %272, label %273

272:                                              ; preds = %266
  store i32 1, i32* %5, align 4
  br label %354

273:                                              ; preds = %266
  br label %319

274:                                              ; preds = %260
  %275 = load %struct.tm*, %struct.tm** %26, align 8
  %276 = getelementptr inbounds %struct.tm, %struct.tm* %275, i32 0, i32 2
  %277 = load i32, i32* %276, align 4
  %278 = load i32, i32* %22, align 4
  %279 = icmp eq i32 %277, %278
  br i1 %279, label %280, label %288

280:                                              ; preds = %274
  %281 = load %struct.tm*, %struct.tm** %26, align 8
  %282 = getelementptr inbounds %struct.tm, %struct.tm* %281, i32 0, i32 3
  %283 = load i32, i32* %282, align 4
  %284 = load i32, i32* %23, align 4
  %285 = icmp sgt i32 %283, %284
  br i1 %285, label %286, label %287

286:                                              ; preds = %280
  store i32 1, i32* %5, align 4
  br label %354

287:                                              ; preds = %280
  br label %318

288:                                              ; preds = %274
  %289 = load %struct.tm*, %struct.tm** %26, align 8
  %290 = getelementptr inbounds %struct.tm, %struct.tm* %289, i32 0, i32 3
  %291 = load i32, i32* %290, align 4
  %292 = load i32, i32* %23, align 4
  %293 = icmp eq i32 %291, %292
  br i1 %293, label %294, label %302

294:                                              ; preds = %288
  %295 = load %struct.tm*, %struct.tm** %26, align 8
  %296 = getelementptr inbounds %struct.tm, %struct.tm* %295, i32 0, i32 4
  %297 = load i32, i32* %296, align 4
  %298 = load i32, i32* %24, align 4
  %299 = icmp sgt i32 %297, %298
  br i1 %299, label %300, label %301

300:                                              ; preds = %294
  store i32 1, i32* %5, align 4
  br label %354

301:                                              ; preds = %294
  br label %317

302:                                              ; preds = %288
  %303 = load %struct.tm*, %struct.tm** %26, align 8
  %304 = getelementptr inbounds %struct.tm, %struct.tm* %303, i32 0, i32 4
  %305 = load i32, i32* %304, align 4
  %306 = load i32, i32* %24, align 4
  %307 = icmp eq i32 %305, %306
  br i1 %307, label %308, label %316

308:                                              ; preds = %302
  %309 = load %struct.tm*, %struct.tm** %26, align 8
  %310 = getelementptr inbounds %struct.tm, %struct.tm* %309, i32 0, i32 5
  %311 = load i32, i32* %310, align 4
  %312 = load i32, i32* %25, align 4
  %313 = icmp sgt i32 %311, %312
  br i1 %313, label %314, label %315

314:                                              ; preds = %308
  store i32 1, i32* %5, align 4
  br label %354

315:                                              ; preds = %308
  br label %316

316:                                              ; preds = %315, %302
  br label %317

317:                                              ; preds = %316, %301
  br label %318

318:                                              ; preds = %317, %287
  br label %319

319:                                              ; preds = %318, %273
  br label %320

320:                                              ; preds = %319, %259
  br label %321

321:                                              ; preds = %320
  br label %328

322:                                              ; preds = %221
  %323 = load i8*, i8** @reply_string, align 8
  %324 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i8* %323)
  %325 = load i32, i32* @stdout, align 4
  %326 = call i32 @fflush(i32 %325)
  %327 = load i32, i32* %19, align 4
  store i32 %327, i32* @verbose, align 4
  store i32 0, i32* %5, align 4
  br label %354

328:                                              ; preds = %321
  br label %329

329:                                              ; preds = %328, %213
  br label %330

330:                                              ; preds = %329, %210
  br label %331

331:                                              ; preds = %330, %192
  %332 = load i8**, i8*** %7, align 8
  %333 = getelementptr inbounds i8*, i8** %332, i64 2
  %334 = load i8*, i8** %333, align 8
  %335 = load i8**, i8*** %7, align 8
  %336 = getelementptr inbounds i8*, i8** %335, i64 1
  %337 = load i8*, i8** %336, align 8
  %338 = load i8*, i8** %9, align 8
  %339 = load i8**, i8*** %7, align 8
  %340 = getelementptr inbounds i8*, i8** %339, i64 1
  %341 = load i8*, i8** %340, align 8
  %342 = load i8*, i8** %11, align 8
  %343 = icmp ne i8* %341, %342
  br i1 %343, label %350, label %344

344:                                              ; preds = %331
  %345 = load i8**, i8*** %7, align 8
  %346 = getelementptr inbounds i8*, i8** %345, i64 2
  %347 = load i8*, i8** %346, align 8
  %348 = load i8*, i8** %12, align 8
  %349 = icmp ne i8* %347, %348
  br label %350

350:                                              ; preds = %344, %331
  %351 = phi i1 [ true, %331 ], [ %349, %344 ]
  %352 = zext i1 %351 to i32
  %353 = call i32 @recvrequest(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i8* %334, i8* %337, i8* %338, i32 %352)
  store i64 0, i64* @restart_point, align 8
  store i32 0, i32* %5, align 4
  br label %354

354:                                              ; preds = %350, %322, %314, %300, %286, %272, %258, %244, %205, %99, %60
  %355 = load i32, i32* %5, align 4
  ret i32 %355
}

declare dso_local i32 @strcat(i32*, i8*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @fflush(i32) #1

declare dso_local i32 @gets(i32*) #1

declare dso_local i64 @strlen(i32*) #1

declare dso_local i32 @makeargv(...) #1

declare dso_local i32 @globulize(i8**) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @islower(i8 signext) #1

declare dso_local i64 @isupper(i8 signext) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i8* @dotrans(i8*) #1

declare dso_local i8* @domap(i8*) #1

declare dso_local i32 @stat(i8*, %struct.stat*) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i64 @command(i8*, i8*) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local %struct.tm* @gmtime(i32*) #1

declare dso_local i32 @recvrequest(i8*, i8*, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
