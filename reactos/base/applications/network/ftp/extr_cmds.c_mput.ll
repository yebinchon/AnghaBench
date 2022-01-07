; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/network/ftp/extr_cmds.c_mput.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/network/ftp/extr_cmds.c_mput.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@line = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"(local-files) \00", align 1
@stdout = common dso_local global i32 0, align 4
@margc = common dso_local global i32 0, align 4
@margv = common dso_local global i8** null, align 8
@.str.2 = private unnamed_addr constant [22 x i8] c"usage:%s local-files\0A\00", align 1
@code = common dso_local global i32 0, align 4
@mname = common dso_local global i8* null, align 8
@mflag = common dso_local global i32 0, align 4
@jabort = external dso_local global i32, align 4
@proxy = common dso_local global i64 0, align 8
@MAXPATHLEN = common dso_local global i32 0, align 4
@mcase = common dso_local global i64 0, align 8
@ntflag = common dso_local global i64 0, align 8
@mapflag = common dso_local global i64 0, align 8
@sunique = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [5 x i8] c"STOU\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"STOR\00", align 1
@interactive = common dso_local global i32 0, align 4
@fromatty = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [14 x i8] c"Continue with\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"mput\00", align 1
@doglob = common dso_local global i32 0, align 4
@globerr = common dso_local global i8* null, align 8
@.str.7 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mput(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8**, align 8
  %13 = alloca i8**, align 8
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  %14 = load i32, i32* %3, align 4
  %15 = icmp slt i32 %14, 2
  br i1 %15, label %16, label %30

16:                                               ; preds = %2
  %17 = load i32*, i32** @line, align 8
  %18 = call i32 @strcat(i32* %17, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %20 = load i32, i32* @stdout, align 4
  %21 = call i32 @fflush(i32 %20)
  %22 = load i32*, i32** @line, align 8
  %23 = load i32*, i32** @line, align 8
  %24 = call i64 @strlen(i32* %23)
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = call i32 @gets(i32* %25)
  %27 = call i32 (...) @makeargv()
  %28 = load i32, i32* @margc, align 4
  store i32 %28, i32* %3, align 4
  %29 = load i8**, i8*** @margv, align 8
  store i8** %29, i8*** %4, align 8
  br label %30

30:                                               ; preds = %16, %2
  %31 = load i32, i32* %3, align 4
  %32 = icmp slt i32 %31, 2
  br i1 %32, label %33, label %40

33:                                               ; preds = %30
  %34 = load i8**, i8*** %4, align 8
  %35 = getelementptr inbounds i8*, i8** %34, i64 0
  %36 = load i8*, i8** %35, align 8
  %37 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i8* %36)
  %38 = load i32, i32* @stdout, align 4
  %39 = call i32 @fflush(i32 %38)
  store i32 -1, i32* @code, align 4
  br label %381

40:                                               ; preds = %30
  %41 = load i8**, i8*** %4, align 8
  %42 = getelementptr inbounds i8*, i8** %41, i64 0
  %43 = load i8*, i8** %42, align 8
  store i8* %43, i8** @mname, align 8
  store i32 1, i32* @mflag, align 4
  %44 = load i32, i32* @jabort, align 4
  %45 = call i32 @setjmp(i32 %44) #4
  %46 = load i64, i64* @proxy, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %173

48:                                               ; preds = %40
  %49 = load i32, i32* @MAXPATHLEN, align 4
  %50 = zext i32 %49 to i64
  %51 = call i8* @llvm.stacksave()
  store i8* %51, i8** %10, align 8
  %52 = alloca i8, i64 %50, align 16
  store i64 %50, i64* %11, align 8
  br label %53

53:                                               ; preds = %170, %62, %48
  %54 = load i8**, i8*** %4, align 8
  %55 = call i8* @remglob(i8** %54, i32 0)
  store i8* %55, i8** %8, align 8
  %56 = icmp ne i8* %55, null
  br i1 %56, label %57, label %171

57:                                               ; preds = %53
  %58 = load i8*, i8** %8, align 8
  %59 = load i8, i8* %58, align 1
  %60 = sext i8 %59 to i32
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %57
  store i32 0, i32* @mflag, align 4
  br label %53

63:                                               ; preds = %57
  %64 = load i32, i32* @mflag, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %170

66:                                               ; preds = %63
  %67 = load i8**, i8*** %4, align 8
  %68 = getelementptr inbounds i8*, i8** %67, i64 0
  %69 = load i8*, i8** %68, align 8
  %70 = load i8*, i8** %8, align 8
  %71 = call i64 @confirm(i8* %69, i8* %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %170

73:                                               ; preds = %66
  %74 = load i8*, i8** %8, align 8
  store i8* %74, i8** %7, align 8
  %75 = load i64, i64* @mcase, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %125

77:                                               ; preds = %73
  br label %78

78:                                               ; preds = %91, %77
  %79 = load i8*, i8** %7, align 8
  %80 = load i8, i8* %79, align 1
  %81 = sext i8 %80 to i32
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %89

83:                                               ; preds = %78
  %84 = load i8*, i8** %7, align 8
  %85 = load i8, i8* %84, align 1
  %86 = call i32 @islower(i8 signext %85)
  %87 = icmp ne i32 %86, 0
  %88 = xor i1 %87, true
  br label %89

89:                                               ; preds = %83, %78
  %90 = phi i1 [ false, %78 ], [ %88, %83 ]
  br i1 %90, label %91, label %94

91:                                               ; preds = %89
  %92 = load i8*, i8** %7, align 8
  %93 = getelementptr inbounds i8, i8* %92, i32 1
  store i8* %93, i8** %7, align 8
  br label %78

94:                                               ; preds = %89
  %95 = load i8*, i8** %7, align 8
  %96 = load i8, i8* %95, align 1
  %97 = icmp ne i8 %96, 0
  br i1 %97, label %124, label %98

98:                                               ; preds = %94
  %99 = load i8*, i8** %8, align 8
  store i8* %99, i8** %7, align 8
  store i8* %52, i8** %9, align 8
  br label %100

100:                                              ; preds = %118, %98
  %101 = load i8*, i8** %7, align 8
  %102 = load i8, i8* %101, align 1
  %103 = load i8*, i8** %9, align 8
  store i8 %102, i8* %103, align 1
  %104 = icmp ne i8 %102, 0
  br i1 %104, label %105, label %123

105:                                              ; preds = %100
  %106 = load i8*, i8** %9, align 8
  %107 = load i8, i8* %106, align 1
  %108 = call i64 @isupper(i8 signext %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %118

110:                                              ; preds = %105
  %111 = load i8*, i8** %9, align 8
  %112 = load i8, i8* %111, align 1
  %113 = sext i8 %112 to i32
  %114 = add nsw i32 97, %113
  %115 = sub nsw i32 %114, 65
  %116 = trunc i32 %115 to i8
  %117 = load i8*, i8** %9, align 8
  store i8 %116, i8* %117, align 1
  br label %118

118:                                              ; preds = %110, %105
  %119 = load i8*, i8** %7, align 8
  %120 = getelementptr inbounds i8, i8* %119, i32 1
  store i8* %120, i8** %7, align 8
  %121 = load i8*, i8** %9, align 8
  %122 = getelementptr inbounds i8, i8* %121, i32 1
  store i8* %122, i8** %9, align 8
  br label %100

123:                                              ; preds = %100
  br label %124

124:                                              ; preds = %123, %94
  store i8* %52, i8** %7, align 8
  br label %125

125:                                              ; preds = %124, %73
  %126 = load i64, i64* @ntflag, align 8
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %131

128:                                              ; preds = %125
  %129 = load i8*, i8** %7, align 8
  %130 = call i8* @dotrans(i8* %129)
  store i8* %130, i8** %7, align 8
  br label %131

131:                                              ; preds = %128, %125
  %132 = load i64, i64* @mapflag, align 8
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %137

134:                                              ; preds = %131
  %135 = load i8*, i8** %7, align 8
  %136 = call i8* @domap(i8* %135)
  store i8* %136, i8** %7, align 8
  br label %137

137:                                              ; preds = %134, %131
  %138 = load i64, i64* @sunique, align 8
  %139 = icmp ne i64 %138, 0
  %140 = zext i1 %139 to i64
  %141 = select i1 %139, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0)
  %142 = load i8*, i8** %8, align 8
  %143 = load i8*, i8** %7, align 8
  %144 = load i8*, i8** %8, align 8
  %145 = load i8*, i8** %7, align 8
  %146 = icmp ne i8* %144, %145
  br i1 %146, label %151, label %147

147:                                              ; preds = %137
  %148 = load i32, i32* @interactive, align 4
  %149 = icmp ne i32 %148, 0
  %150 = xor i1 %149, true
  br label %151

151:                                              ; preds = %147, %137
  %152 = phi i1 [ true, %137 ], [ %150, %147 ]
  %153 = zext i1 %152 to i32
  %154 = call i32 @sendrequest(i8* %141, i8* %142, i8* %143, i32 %153)
  %155 = load i32, i32* @mflag, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %169, label %157

157:                                              ; preds = %151
  %158 = load i64, i64* @fromatty, align 8
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %169

160:                                              ; preds = %157
  %161 = load i32, i32* @interactive, align 4
  store i32 %161, i32* %6, align 4
  store i32 1, i32* @interactive, align 4
  %162 = call i64 @confirm(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %167

164:                                              ; preds = %160
  %165 = load i32, i32* @mflag, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* @mflag, align 4
  br label %167

167:                                              ; preds = %164, %160
  %168 = load i32, i32* %6, align 4
  store i32 %168, i32* @interactive, align 4
  br label %169

169:                                              ; preds = %167, %157, %151
  br label %170

170:                                              ; preds = %169, %66, %63
  br label %53

171:                                              ; preds = %53
  store i32 0, i32* @mflag, align 4
  %172 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %172)
  br label %381

173:                                              ; preds = %40
  store i32 1, i32* %5, align 4
  br label %174

174:                                              ; preds = %377, %173
  %175 = load i32, i32* %5, align 4
  %176 = load i32, i32* %3, align 4
  %177 = icmp slt i32 %175, %176
  br i1 %177, label %178, label %380

178:                                              ; preds = %174
  %179 = load i32, i32* @doglob, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %263, label %181

181:                                              ; preds = %178
  %182 = load i32, i32* @mflag, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %262

184:                                              ; preds = %181
  %185 = load i8**, i8*** %4, align 8
  %186 = getelementptr inbounds i8*, i8** %185, i64 0
  %187 = load i8*, i8** %186, align 8
  %188 = load i8**, i8*** %4, align 8
  %189 = load i32, i32* %5, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds i8*, i8** %188, i64 %190
  %192 = load i8*, i8** %191, align 8
  %193 = call i64 @confirm(i8* %187, i8* %192)
  %194 = icmp ne i64 %193, 0
  br i1 %194, label %195, label %262

195:                                              ; preds = %184
  %196 = load i64, i64* @ntflag, align 8
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %198, label %205

198:                                              ; preds = %195
  %199 = load i8**, i8*** %4, align 8
  %200 = load i32, i32* %5, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds i8*, i8** %199, i64 %201
  %203 = load i8*, i8** %202, align 8
  %204 = call i8* @dotrans(i8* %203)
  br label %211

205:                                              ; preds = %195
  %206 = load i8**, i8*** %4, align 8
  %207 = load i32, i32* %5, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds i8*, i8** %206, i64 %208
  %210 = load i8*, i8** %209, align 8
  br label %211

211:                                              ; preds = %205, %198
  %212 = phi i8* [ %204, %198 ], [ %210, %205 ]
  store i8* %212, i8** %7, align 8
  %213 = load i64, i64* @mapflag, align 8
  %214 = icmp ne i64 %213, 0
  br i1 %214, label %215, label %218

215:                                              ; preds = %211
  %216 = load i8*, i8** %7, align 8
  %217 = call i8* @domap(i8* %216)
  br label %220

218:                                              ; preds = %211
  %219 = load i8*, i8** %7, align 8
  br label %220

220:                                              ; preds = %218, %215
  %221 = phi i8* [ %217, %215 ], [ %219, %218 ]
  store i8* %221, i8** %7, align 8
  %222 = load i64, i64* @sunique, align 8
  %223 = icmp ne i64 %222, 0
  %224 = zext i1 %223 to i64
  %225 = select i1 %223, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0)
  %226 = load i8**, i8*** %4, align 8
  %227 = load i32, i32* %5, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds i8*, i8** %226, i64 %228
  %230 = load i8*, i8** %229, align 8
  %231 = load i8*, i8** %7, align 8
  %232 = load i8*, i8** %7, align 8
  %233 = load i8**, i8*** %4, align 8
  %234 = load i32, i32* %5, align 4
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds i8*, i8** %233, i64 %235
  %237 = load i8*, i8** %236, align 8
  %238 = icmp ne i8* %232, %237
  br i1 %238, label %243, label %239

239:                                              ; preds = %220
  %240 = load i32, i32* @interactive, align 4
  %241 = icmp ne i32 %240, 0
  %242 = xor i1 %241, true
  br label %243

243:                                              ; preds = %239, %220
  %244 = phi i1 [ true, %220 ], [ %242, %239 ]
  %245 = zext i1 %244 to i32
  %246 = call i32 @sendrequest(i8* %225, i8* %230, i8* %231, i32 %245)
  %247 = load i32, i32* @mflag, align 4
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %261, label %249

249:                                              ; preds = %243
  %250 = load i64, i64* @fromatty, align 8
  %251 = icmp ne i64 %250, 0
  br i1 %251, label %252, label %261

252:                                              ; preds = %249
  %253 = load i32, i32* @interactive, align 4
  store i32 %253, i32* %6, align 4
  store i32 1, i32* @interactive, align 4
  %254 = call i64 @confirm(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  %255 = icmp ne i64 %254, 0
  br i1 %255, label %256, label %259

256:                                              ; preds = %252
  %257 = load i32, i32* @mflag, align 4
  %258 = add nsw i32 %257, 1
  store i32 %258, i32* @mflag, align 4
  br label %259

259:                                              ; preds = %256, %252
  %260 = load i32, i32* %6, align 4
  store i32 %260, i32* @interactive, align 4
  br label %261

261:                                              ; preds = %259, %249, %243
  br label %262

262:                                              ; preds = %261, %184, %181
  br label %377

263:                                              ; preds = %178
  %264 = load i8**, i8*** %4, align 8
  %265 = load i32, i32* %5, align 4
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds i8*, i8** %264, i64 %266
  %268 = load i8*, i8** %267, align 8
  %269 = call i8** @glob(i8* %268)
  store i8** %269, i8*** %13, align 8
  %270 = load i8*, i8** @globerr, align 8
  %271 = icmp ne i8* %270, null
  br i1 %271, label %272, label %286

272:                                              ; preds = %263
  %273 = load i8*, i8** @globerr, align 8
  %274 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i8* %273)
  %275 = load i32, i32* @stdout, align 4
  %276 = call i32 @fflush(i32 %275)
  %277 = load i8**, i8*** %13, align 8
  %278 = icmp ne i8** %277, null
  br i1 %278, label %279, label %285

279:                                              ; preds = %272
  %280 = load i8**, i8*** %13, align 8
  %281 = call i32 @blkfree(i8** %280)
  %282 = load i8**, i8*** %13, align 8
  %283 = bitcast i8** %282 to i8*
  %284 = call i32 @free(i8* %283)
  br label %285

285:                                              ; preds = %279, %272
  br label %377

286:                                              ; preds = %263
  %287 = load i8**, i8*** %13, align 8
  store i8** %287, i8*** %12, align 8
  br label %288

288:                                              ; preds = %364, %286
  %289 = load i8**, i8*** %12, align 8
  %290 = icmp ne i8** %289, null
  br i1 %290, label %291, label %295

291:                                              ; preds = %288
  %292 = load i8**, i8*** %12, align 8
  %293 = load i8*, i8** %292, align 8
  %294 = icmp ne i8* %293, null
  br label %295

295:                                              ; preds = %291, %288
  %296 = phi i1 [ false, %288 ], [ %294, %291 ]
  br i1 %296, label %297, label %367

297:                                              ; preds = %295
  %298 = load i32, i32* @mflag, align 4
  %299 = icmp ne i32 %298, 0
  br i1 %299, label %300, label %363

300:                                              ; preds = %297
  %301 = load i8**, i8*** %4, align 8
  %302 = getelementptr inbounds i8*, i8** %301, i64 0
  %303 = load i8*, i8** %302, align 8
  %304 = load i8**, i8*** %12, align 8
  %305 = load i8*, i8** %304, align 8
  %306 = call i64 @confirm(i8* %303, i8* %305)
  %307 = icmp ne i64 %306, 0
  br i1 %307, label %308, label %363

308:                                              ; preds = %300
  %309 = load i64, i64* @ntflag, align 8
  %310 = icmp ne i64 %309, 0
  br i1 %310, label %311, label %315

311:                                              ; preds = %308
  %312 = load i8**, i8*** %12, align 8
  %313 = load i8*, i8** %312, align 8
  %314 = call i8* @dotrans(i8* %313)
  br label %318

315:                                              ; preds = %308
  %316 = load i8**, i8*** %12, align 8
  %317 = load i8*, i8** %316, align 8
  br label %318

318:                                              ; preds = %315, %311
  %319 = phi i8* [ %314, %311 ], [ %317, %315 ]
  store i8* %319, i8** %7, align 8
  %320 = load i64, i64* @mapflag, align 8
  %321 = icmp ne i64 %320, 0
  br i1 %321, label %322, label %325

322:                                              ; preds = %318
  %323 = load i8*, i8** %7, align 8
  %324 = call i8* @domap(i8* %323)
  br label %327

325:                                              ; preds = %318
  %326 = load i8*, i8** %7, align 8
  br label %327

327:                                              ; preds = %325, %322
  %328 = phi i8* [ %324, %322 ], [ %326, %325 ]
  store i8* %328, i8** %7, align 8
  %329 = load i64, i64* @sunique, align 8
  %330 = icmp ne i64 %329, 0
  %331 = zext i1 %330 to i64
  %332 = select i1 %330, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0)
  %333 = load i8**, i8*** %12, align 8
  %334 = load i8*, i8** %333, align 8
  %335 = load i8*, i8** %7, align 8
  %336 = load i8**, i8*** %12, align 8
  %337 = load i8*, i8** %336, align 8
  %338 = load i8*, i8** %7, align 8
  %339 = icmp ne i8* %337, %338
  br i1 %339, label %344, label %340

340:                                              ; preds = %327
  %341 = load i32, i32* @interactive, align 4
  %342 = icmp ne i32 %341, 0
  %343 = xor i1 %342, true
  br label %344

344:                                              ; preds = %340, %327
  %345 = phi i1 [ true, %327 ], [ %343, %340 ]
  %346 = zext i1 %345 to i32
  %347 = call i32 @sendrequest(i8* %332, i8* %334, i8* %335, i32 %346)
  %348 = load i32, i32* @mflag, align 4
  %349 = icmp ne i32 %348, 0
  br i1 %349, label %362, label %350

350:                                              ; preds = %344
  %351 = load i64, i64* @fromatty, align 8
  %352 = icmp ne i64 %351, 0
  br i1 %352, label %353, label %362

353:                                              ; preds = %350
  %354 = load i32, i32* @interactive, align 4
  store i32 %354, i32* %6, align 4
  store i32 1, i32* @interactive, align 4
  %355 = call i64 @confirm(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  %356 = icmp ne i64 %355, 0
  br i1 %356, label %357, label %360

357:                                              ; preds = %353
  %358 = load i32, i32* @mflag, align 4
  %359 = add nsw i32 %358, 1
  store i32 %359, i32* @mflag, align 4
  br label %360

360:                                              ; preds = %357, %353
  %361 = load i32, i32* %6, align 4
  store i32 %361, i32* @interactive, align 4
  br label %362

362:                                              ; preds = %360, %350, %344
  br label %363

363:                                              ; preds = %362, %300, %297
  br label %364

364:                                              ; preds = %363
  %365 = load i8**, i8*** %12, align 8
  %366 = getelementptr inbounds i8*, i8** %365, i32 1
  store i8** %366, i8*** %12, align 8
  br label %288

367:                                              ; preds = %295
  %368 = load i8**, i8*** %13, align 8
  %369 = icmp ne i8** %368, null
  br i1 %369, label %370, label %376

370:                                              ; preds = %367
  %371 = load i8**, i8*** %13, align 8
  %372 = call i32 @blkfree(i8** %371)
  %373 = load i8**, i8*** %13, align 8
  %374 = bitcast i8** %373 to i8*
  %375 = call i32 @free(i8* %374)
  br label %376

376:                                              ; preds = %370, %367
  br label %377

377:                                              ; preds = %376, %285, %262
  %378 = load i32, i32* %5, align 4
  %379 = add nsw i32 %378, 1
  store i32 %379, i32* %5, align 4
  br label %174

380:                                              ; preds = %174
  store i32 0, i32* @mflag, align 4
  br label %381

381:                                              ; preds = %380, %171, %33
  ret void
}

declare dso_local i32 @strcat(i32*, i8*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @fflush(i32) #1

declare dso_local i32 @gets(i32*) #1

declare dso_local i64 @strlen(i32*) #1

declare dso_local i32 @makeargv(...) #1

; Function Attrs: returns_twice
declare dso_local i32 @setjmp(i32) #2

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #3

declare dso_local i8* @remglob(i8**, i32) #1

declare dso_local i64 @confirm(i8*, i8*) #1

declare dso_local i32 @islower(i8 signext) #1

declare dso_local i64 @isupper(i8 signext) #1

declare dso_local i8* @dotrans(i8*) #1

declare dso_local i8* @domap(i8*) #1

declare dso_local i32 @sendrequest(i8*, i8*, i8*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #3

declare dso_local i8** @glob(i8*) #1

declare dso_local i32 @blkfree(i8**) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { returns_twice "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { returns_twice }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
