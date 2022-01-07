; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/commands/extr_tsearchcmds.c_deserialize_deflist.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/commands/extr_tsearchcmds.c_deserialize_deflist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NIL = common dso_local global i32* null, align 8
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_SYNTAX_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"invalid parameter list format: \22%s\22\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"unrecognized deserialize_deflist state: %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @deserialize_deflist(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %12 = load i32, i32* %2, align 4
  %13 = call i32* @DatumGetTextPP(i32 %12)
  store i32* %13, i32** %3, align 8
  %14 = load i32*, i32** @NIL, align 8
  store i32* %14, i32** %4, align 8
  %15 = load i32*, i32** %3, align 8
  %16 = call i32 @VARSIZE_ANY_EXHDR(i32* %15)
  store i32 %16, i32* %5, align 4
  store i8* null, i8** %9, align 8
  store i8* null, i8** %10, align 8
  store i32 0, i32* %11, align 4
  %17 = load i32, i32* %5, align 4
  %18 = add nsw i32 %17, 1
  %19 = call i64 @palloc(i32 %18)
  %20 = inttoptr i64 %19 to i8*
  store i8* %20, i8** %8, align 8
  %21 = load i32*, i32** %3, align 8
  %22 = call i8* @VARDATA_ANY(i32* %21)
  store i8* %22, i8** %6, align 8
  %23 = load i8*, i8** %6, align 8
  %24 = load i32, i32* %5, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i8, i8* %23, i64 %25
  store i8* %26, i8** %7, align 8
  br label %27

27:                                               ; preds = %327, %1
  %28 = load i8*, i8** %6, align 8
  %29 = load i8*, i8** %7, align 8
  %30 = icmp ult i8* %28, %29
  br i1 %30, label %31, label %330

31:                                               ; preds = %27
  %32 = load i32, i32* %11, align 4
  switch i32 %32, label %322 [
    i32 0, label %33
    i32 1, label %58
    i32 2, label %81
    i32 3, label %113
    i32 4, label %134
    i32 5, label %183
    i32 6, label %253
    i32 7, label %294
  ]

33:                                               ; preds = %31
  %34 = load i8*, i8** %6, align 8
  %35 = load i8, i8* %34, align 1
  %36 = call i32 @isspace(i8 zeroext %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %43, label %38

38:                                               ; preds = %33
  %39 = load i8*, i8** %6, align 8
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp eq i32 %41, 44
  br i1 %42, label %43, label %44

43:                                               ; preds = %38, %33
  br label %327

44:                                               ; preds = %38
  %45 = load i8*, i8** %6, align 8
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp eq i32 %47, 34
  br i1 %48, label %49, label %51

49:                                               ; preds = %44
  %50 = load i8*, i8** %8, align 8
  store i8* %50, i8** %9, align 8
  store i32 2, i32* %11, align 4
  br label %57

51:                                               ; preds = %44
  %52 = load i8*, i8** %8, align 8
  store i8* %52, i8** %9, align 8
  %53 = load i8*, i8** %6, align 8
  %54 = load i8, i8* %53, align 1
  %55 = load i8*, i8** %9, align 8
  %56 = getelementptr inbounds i8, i8* %55, i32 1
  store i8* %56, i8** %9, align 8
  store i8 %54, i8* %55, align 1
  store i32 1, i32* %11, align 4
  br label %57

57:                                               ; preds = %51, %49
  br label %326

58:                                               ; preds = %31
  %59 = load i8*, i8** %6, align 8
  %60 = load i8, i8* %59, align 1
  %61 = call i32 @isspace(i8 zeroext %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %58
  %64 = load i8*, i8** %9, align 8
  %65 = getelementptr inbounds i8, i8* %64, i32 1
  store i8* %65, i8** %9, align 8
  store i8 0, i8* %64, align 1
  store i32 3, i32* %11, align 4
  br label %80

66:                                               ; preds = %58
  %67 = load i8*, i8** %6, align 8
  %68 = load i8, i8* %67, align 1
  %69 = sext i8 %68 to i32
  %70 = icmp eq i32 %69, 61
  br i1 %70, label %71, label %74

71:                                               ; preds = %66
  %72 = load i8*, i8** %9, align 8
  %73 = getelementptr inbounds i8, i8* %72, i32 1
  store i8* %73, i8** %9, align 8
  store i8 0, i8* %72, align 1
  store i32 4, i32* %11, align 4
  br label %79

74:                                               ; preds = %66
  %75 = load i8*, i8** %6, align 8
  %76 = load i8, i8* %75, align 1
  %77 = load i8*, i8** %9, align 8
  %78 = getelementptr inbounds i8, i8* %77, i32 1
  store i8* %78, i8** %9, align 8
  store i8 %76, i8* %77, align 1
  br label %79

79:                                               ; preds = %74, %71
  br label %80

80:                                               ; preds = %79, %63
  br label %326

81:                                               ; preds = %31
  %82 = load i8*, i8** %6, align 8
  %83 = load i8, i8* %82, align 1
  %84 = sext i8 %83 to i32
  %85 = icmp eq i32 %84, 34
  br i1 %85, label %86, label %107

86:                                               ; preds = %81
  %87 = load i8*, i8** %6, align 8
  %88 = getelementptr inbounds i8, i8* %87, i64 1
  %89 = load i8*, i8** %7, align 8
  %90 = icmp ult i8* %88, %89
  br i1 %90, label %91, label %103

91:                                               ; preds = %86
  %92 = load i8*, i8** %6, align 8
  %93 = getelementptr inbounds i8, i8* %92, i64 1
  %94 = load i8, i8* %93, align 1
  %95 = sext i8 %94 to i32
  %96 = icmp eq i32 %95, 34
  br i1 %96, label %97, label %103

97:                                               ; preds = %91
  %98 = load i8*, i8** %6, align 8
  %99 = getelementptr inbounds i8, i8* %98, i32 1
  store i8* %99, i8** %6, align 8
  %100 = load i8, i8* %98, align 1
  %101 = load i8*, i8** %9, align 8
  %102 = getelementptr inbounds i8, i8* %101, i32 1
  store i8* %102, i8** %9, align 8
  store i8 %100, i8* %101, align 1
  br label %106

103:                                              ; preds = %91, %86
  %104 = load i8*, i8** %9, align 8
  %105 = getelementptr inbounds i8, i8* %104, i32 1
  store i8* %105, i8** %9, align 8
  store i8 0, i8* %104, align 1
  store i32 3, i32* %11, align 4
  br label %106

106:                                              ; preds = %103, %97
  br label %112

107:                                              ; preds = %81
  %108 = load i8*, i8** %6, align 8
  %109 = load i8, i8* %108, align 1
  %110 = load i8*, i8** %9, align 8
  %111 = getelementptr inbounds i8, i8* %110, i32 1
  store i8* %111, i8** %9, align 8
  store i8 %109, i8* %110, align 1
  br label %112

112:                                              ; preds = %107, %106
  br label %326

113:                                              ; preds = %31
  %114 = load i8*, i8** %6, align 8
  %115 = load i8, i8* %114, align 1
  %116 = sext i8 %115 to i32
  %117 = icmp eq i32 %116, 61
  br i1 %117, label %118, label %119

118:                                              ; preds = %113
  store i32 4, i32* %11, align 4
  br label %133

119:                                              ; preds = %113
  %120 = load i8*, i8** %6, align 8
  %121 = load i8, i8* %120, align 1
  %122 = call i32 @isspace(i8 zeroext %121)
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %132, label %124

124:                                              ; preds = %119
  %125 = load i32, i32* @ERROR, align 4
  %126 = load i32, i32* @ERRCODE_SYNTAX_ERROR, align 4
  %127 = call i32 @errcode(i32 %126)
  %128 = load i32*, i32** %3, align 8
  %129 = call i32 @text_to_cstring(i32* %128)
  %130 = call i32 @errmsg(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %129)
  %131 = call i32 @ereport(i32 %125, i32 %130)
  br label %132

132:                                              ; preds = %124, %119
  br label %133

133:                                              ; preds = %132, %118
  br label %326

134:                                              ; preds = %31
  %135 = load i8*, i8** %6, align 8
  %136 = load i8, i8* %135, align 1
  %137 = sext i8 %136 to i32
  %138 = icmp eq i32 %137, 39
  br i1 %138, label %139, label %141

139:                                              ; preds = %134
  %140 = load i8*, i8** %9, align 8
  store i8* %140, i8** %10, align 8
  store i32 5, i32* %11, align 4
  br label %182

141:                                              ; preds = %134
  %142 = load i8*, i8** %6, align 8
  %143 = load i8, i8* %142, align 1
  %144 = sext i8 %143 to i32
  %145 = icmp eq i32 %144, 69
  br i1 %145, label %146, label %161

146:                                              ; preds = %141
  %147 = load i8*, i8** %6, align 8
  %148 = getelementptr inbounds i8, i8* %147, i64 1
  %149 = load i8*, i8** %7, align 8
  %150 = icmp ult i8* %148, %149
  br i1 %150, label %151, label %161

151:                                              ; preds = %146
  %152 = load i8*, i8** %6, align 8
  %153 = getelementptr inbounds i8, i8* %152, i64 1
  %154 = load i8, i8* %153, align 1
  %155 = sext i8 %154 to i32
  %156 = icmp eq i32 %155, 39
  br i1 %156, label %157, label %161

157:                                              ; preds = %151
  %158 = load i8*, i8** %6, align 8
  %159 = getelementptr inbounds i8, i8* %158, i32 1
  store i8* %159, i8** %6, align 8
  %160 = load i8*, i8** %9, align 8
  store i8* %160, i8** %10, align 8
  store i32 5, i32* %11, align 4
  br label %181

161:                                              ; preds = %151, %146, %141
  %162 = load i8*, i8** %6, align 8
  %163 = load i8, i8* %162, align 1
  %164 = sext i8 %163 to i32
  %165 = icmp eq i32 %164, 34
  br i1 %165, label %166, label %168

166:                                              ; preds = %161
  %167 = load i8*, i8** %9, align 8
  store i8* %167, i8** %10, align 8
  store i32 6, i32* %11, align 4
  br label %180

168:                                              ; preds = %161
  %169 = load i8*, i8** %6, align 8
  %170 = load i8, i8* %169, align 1
  %171 = call i32 @isspace(i8 zeroext %170)
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %179, label %173

173:                                              ; preds = %168
  %174 = load i8*, i8** %9, align 8
  store i8* %174, i8** %10, align 8
  %175 = load i8*, i8** %6, align 8
  %176 = load i8, i8* %175, align 1
  %177 = load i8*, i8** %9, align 8
  %178 = getelementptr inbounds i8, i8* %177, i32 1
  store i8* %178, i8** %9, align 8
  store i8 %176, i8* %177, align 1
  store i32 7, i32* %11, align 4
  br label %179

179:                                              ; preds = %173, %168
  br label %180

180:                                              ; preds = %179, %166
  br label %181

181:                                              ; preds = %180, %157
  br label %182

182:                                              ; preds = %181, %139
  br label %326

183:                                              ; preds = %31
  %184 = load i8*, i8** %6, align 8
  %185 = load i8, i8* %184, align 1
  %186 = sext i8 %185 to i32
  %187 = icmp eq i32 %186, 39
  br i1 %187, label %188, label %218

188:                                              ; preds = %183
  %189 = load i8*, i8** %6, align 8
  %190 = getelementptr inbounds i8, i8* %189, i64 1
  %191 = load i8*, i8** %7, align 8
  %192 = icmp ult i8* %190, %191
  br i1 %192, label %193, label %205

193:                                              ; preds = %188
  %194 = load i8*, i8** %6, align 8
  %195 = getelementptr inbounds i8, i8* %194, i64 1
  %196 = load i8, i8* %195, align 1
  %197 = sext i8 %196 to i32
  %198 = icmp eq i32 %197, 39
  br i1 %198, label %199, label %205

199:                                              ; preds = %193
  %200 = load i8*, i8** %6, align 8
  %201 = getelementptr inbounds i8, i8* %200, i32 1
  store i8* %201, i8** %6, align 8
  %202 = load i8, i8* %200, align 1
  %203 = load i8*, i8** %9, align 8
  %204 = getelementptr inbounds i8, i8* %203, i32 1
  store i8* %204, i8** %9, align 8
  store i8 %202, i8* %203, align 1
  br label %217

205:                                              ; preds = %193, %188
  %206 = load i8*, i8** %9, align 8
  %207 = getelementptr inbounds i8, i8* %206, i32 1
  store i8* %207, i8** %9, align 8
  store i8 0, i8* %206, align 1
  %208 = load i32*, i32** %4, align 8
  %209 = load i8*, i8** %8, align 8
  %210 = call i32 @pstrdup(i8* %209)
  %211 = load i8*, i8** %10, align 8
  %212 = call i32 @pstrdup(i8* %211)
  %213 = call i64 @makeString(i32 %212)
  %214 = inttoptr i64 %213 to i32*
  %215 = call i32 @makeDefElem(i32 %210, i32* %214, i32 -1)
  %216 = call i32* @lappend(i32* %208, i32 %215)
  store i32* %216, i32** %4, align 8
  store i32 0, i32* %11, align 4
  br label %217

217:                                              ; preds = %205, %199
  br label %252

218:                                              ; preds = %183
  %219 = load i8*, i8** %6, align 8
  %220 = load i8, i8* %219, align 1
  %221 = sext i8 %220 to i32
  %222 = icmp eq i32 %221, 92
  br i1 %222, label %223, label %246

223:                                              ; preds = %218
  %224 = load i8*, i8** %6, align 8
  %225 = getelementptr inbounds i8, i8* %224, i64 1
  %226 = load i8*, i8** %7, align 8
  %227 = icmp ult i8* %225, %226
  br i1 %227, label %228, label %240

228:                                              ; preds = %223
  %229 = load i8*, i8** %6, align 8
  %230 = getelementptr inbounds i8, i8* %229, i64 1
  %231 = load i8, i8* %230, align 1
  %232 = sext i8 %231 to i32
  %233 = icmp eq i32 %232, 92
  br i1 %233, label %234, label %240

234:                                              ; preds = %228
  %235 = load i8*, i8** %6, align 8
  %236 = getelementptr inbounds i8, i8* %235, i32 1
  store i8* %236, i8** %6, align 8
  %237 = load i8, i8* %235, align 1
  %238 = load i8*, i8** %9, align 8
  %239 = getelementptr inbounds i8, i8* %238, i32 1
  store i8* %239, i8** %9, align 8
  store i8 %237, i8* %238, align 1
  br label %245

240:                                              ; preds = %228, %223
  %241 = load i8*, i8** %6, align 8
  %242 = load i8, i8* %241, align 1
  %243 = load i8*, i8** %9, align 8
  %244 = getelementptr inbounds i8, i8* %243, i32 1
  store i8* %244, i8** %9, align 8
  store i8 %242, i8* %243, align 1
  br label %245

245:                                              ; preds = %240, %234
  br label %251

246:                                              ; preds = %218
  %247 = load i8*, i8** %6, align 8
  %248 = load i8, i8* %247, align 1
  %249 = load i8*, i8** %9, align 8
  %250 = getelementptr inbounds i8, i8* %249, i32 1
  store i8* %250, i8** %9, align 8
  store i8 %248, i8* %249, align 1
  br label %251

251:                                              ; preds = %246, %245
  br label %252

252:                                              ; preds = %251, %217
  br label %326

253:                                              ; preds = %31
  %254 = load i8*, i8** %6, align 8
  %255 = load i8, i8* %254, align 1
  %256 = sext i8 %255 to i32
  %257 = icmp eq i32 %256, 34
  br i1 %257, label %258, label %288

258:                                              ; preds = %253
  %259 = load i8*, i8** %6, align 8
  %260 = getelementptr inbounds i8, i8* %259, i64 1
  %261 = load i8*, i8** %7, align 8
  %262 = icmp ult i8* %260, %261
  br i1 %262, label %263, label %275

263:                                              ; preds = %258
  %264 = load i8*, i8** %6, align 8
  %265 = getelementptr inbounds i8, i8* %264, i64 1
  %266 = load i8, i8* %265, align 1
  %267 = sext i8 %266 to i32
  %268 = icmp eq i32 %267, 34
  br i1 %268, label %269, label %275

269:                                              ; preds = %263
  %270 = load i8*, i8** %6, align 8
  %271 = getelementptr inbounds i8, i8* %270, i32 1
  store i8* %271, i8** %6, align 8
  %272 = load i8, i8* %270, align 1
  %273 = load i8*, i8** %9, align 8
  %274 = getelementptr inbounds i8, i8* %273, i32 1
  store i8* %274, i8** %9, align 8
  store i8 %272, i8* %273, align 1
  br label %287

275:                                              ; preds = %263, %258
  %276 = load i8*, i8** %9, align 8
  %277 = getelementptr inbounds i8, i8* %276, i32 1
  store i8* %277, i8** %9, align 8
  store i8 0, i8* %276, align 1
  %278 = load i32*, i32** %4, align 8
  %279 = load i8*, i8** %8, align 8
  %280 = call i32 @pstrdup(i8* %279)
  %281 = load i8*, i8** %10, align 8
  %282 = call i32 @pstrdup(i8* %281)
  %283 = call i64 @makeString(i32 %282)
  %284 = inttoptr i64 %283 to i32*
  %285 = call i32 @makeDefElem(i32 %280, i32* %284, i32 -1)
  %286 = call i32* @lappend(i32* %278, i32 %285)
  store i32* %286, i32** %4, align 8
  store i32 0, i32* %11, align 4
  br label %287

287:                                              ; preds = %275, %269
  br label %293

288:                                              ; preds = %253
  %289 = load i8*, i8** %6, align 8
  %290 = load i8, i8* %289, align 1
  %291 = load i8*, i8** %9, align 8
  %292 = getelementptr inbounds i8, i8* %291, i32 1
  store i8* %292, i8** %9, align 8
  store i8 %290, i8* %291, align 1
  br label %293

293:                                              ; preds = %288, %287
  br label %326

294:                                              ; preds = %31
  %295 = load i8*, i8** %6, align 8
  %296 = load i8, i8* %295, align 1
  %297 = sext i8 %296 to i32
  %298 = icmp eq i32 %297, 44
  br i1 %298, label %304, label %299

299:                                              ; preds = %294
  %300 = load i8*, i8** %6, align 8
  %301 = load i8, i8* %300, align 1
  %302 = call i32 @isspace(i8 zeroext %301)
  %303 = icmp ne i32 %302, 0
  br i1 %303, label %304, label %316

304:                                              ; preds = %299, %294
  %305 = load i8*, i8** %9, align 8
  %306 = getelementptr inbounds i8, i8* %305, i32 1
  store i8* %306, i8** %9, align 8
  store i8 0, i8* %305, align 1
  %307 = load i32*, i32** %4, align 8
  %308 = load i8*, i8** %8, align 8
  %309 = call i32 @pstrdup(i8* %308)
  %310 = load i8*, i8** %10, align 8
  %311 = call i32 @pstrdup(i8* %310)
  %312 = call i64 @makeString(i32 %311)
  %313 = inttoptr i64 %312 to i32*
  %314 = call i32 @makeDefElem(i32 %309, i32* %313, i32 -1)
  %315 = call i32* @lappend(i32* %307, i32 %314)
  store i32* %315, i32** %4, align 8
  store i32 0, i32* %11, align 4
  br label %321

316:                                              ; preds = %299
  %317 = load i8*, i8** %6, align 8
  %318 = load i8, i8* %317, align 1
  %319 = load i8*, i8** %9, align 8
  %320 = getelementptr inbounds i8, i8* %319, i32 1
  store i8* %320, i8** %9, align 8
  store i8 %318, i8* %319, align 1
  br label %321

321:                                              ; preds = %316, %304
  br label %326

322:                                              ; preds = %31
  %323 = load i32, i32* @ERROR, align 4
  %324 = load i32, i32* %11, align 4
  %325 = call i32 @elog(i32 %323, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %324)
  br label %326

326:                                              ; preds = %322, %321, %293, %252, %182, %133, %112, %80, %57
  br label %327

327:                                              ; preds = %326, %43
  %328 = load i8*, i8** %6, align 8
  %329 = getelementptr inbounds i8, i8* %328, i32 1
  store i8* %329, i8** %6, align 8
  br label %27

330:                                              ; preds = %27
  %331 = load i32, i32* %11, align 4
  %332 = icmp eq i32 %331, 7
  br i1 %332, label %333, label %345

333:                                              ; preds = %330
  %334 = load i8*, i8** %9, align 8
  %335 = getelementptr inbounds i8, i8* %334, i32 1
  store i8* %335, i8** %9, align 8
  store i8 0, i8* %334, align 1
  %336 = load i32*, i32** %4, align 8
  %337 = load i8*, i8** %8, align 8
  %338 = call i32 @pstrdup(i8* %337)
  %339 = load i8*, i8** %10, align 8
  %340 = call i32 @pstrdup(i8* %339)
  %341 = call i64 @makeString(i32 %340)
  %342 = inttoptr i64 %341 to i32*
  %343 = call i32 @makeDefElem(i32 %338, i32* %342, i32 -1)
  %344 = call i32* @lappend(i32* %336, i32 %343)
  store i32* %344, i32** %4, align 8
  br label %357

345:                                              ; preds = %330
  %346 = load i32, i32* %11, align 4
  %347 = icmp ne i32 %346, 0
  br i1 %347, label %348, label %356

348:                                              ; preds = %345
  %349 = load i32, i32* @ERROR, align 4
  %350 = load i32, i32* @ERRCODE_SYNTAX_ERROR, align 4
  %351 = call i32 @errcode(i32 %350)
  %352 = load i32*, i32** %3, align 8
  %353 = call i32 @text_to_cstring(i32* %352)
  %354 = call i32 @errmsg(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %353)
  %355 = call i32 @ereport(i32 %349, i32 %354)
  br label %356

356:                                              ; preds = %348, %345
  br label %357

357:                                              ; preds = %356, %333
  %358 = load i8*, i8** %8, align 8
  %359 = call i32 @pfree(i8* %358)
  %360 = load i32*, i32** %4, align 8
  ret i32* %360
}

declare dso_local i32* @DatumGetTextPP(i32) #1

declare dso_local i32 @VARSIZE_ANY_EXHDR(i32*) #1

declare dso_local i64 @palloc(i32) #1

declare dso_local i8* @VARDATA_ANY(i32*) #1

declare dso_local i32 @isspace(i8 zeroext) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i32) #1

declare dso_local i32 @text_to_cstring(i32*) #1

declare dso_local i32* @lappend(i32*, i32) #1

declare dso_local i32 @makeDefElem(i32, i32*, i32) #1

declare dso_local i32 @pstrdup(i8*) #1

declare dso_local i64 @makeString(i32) #1

declare dso_local i32 @elog(i32, i8*, i32) #1

declare dso_local i32 @pfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
