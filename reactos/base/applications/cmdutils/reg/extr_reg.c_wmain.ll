; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/cmdutils/reg/extr_reg.c_wmain.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/cmdutils/reg/extr_reg.c_wmain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i64 0, align 8
@wmain.switchVAW = internal constant [3 x i8] c"va\00", align 1
@wmain.switchVEW = internal constant [3 x i8] c"ve\00", align 1
@STRING_INVALID_SYNTAX = common dso_local global i32 0, align 4
@STRING_REG_HELP = common dso_local global i32 0, align 4
@STRING_USAGE = common dso_local global i32 0, align 4
@REG_INVALID = common dso_local global i32 0, align 4
@STRING_INVALID_OPTION = common dso_local global i32 0, align 4
@REG_IMPORT = common dso_local global i32 0, align 4
@STRING_FUNC_HELP = common dso_local global i32 0, align 4
@REG_EXPORT = common dso_local global i32 0, align 4
@REG_SAVE = common dso_local global i32 0, align 4
@REG_RESTORE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@STRING_INVALID_CMDLINE = common dso_local global i32 0, align 4
@REG_QUERY = common dso_local global i32 0, align 4
@REG_ADD = common dso_local global i32 0, align 4
@REG_DELETE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wmain(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8, align 1
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %23 = load i64, i64* @FALSE, align 8
  store i64 %23, i64* %10, align 8
  store i8* null, i8** %13, align 8
  store i8* null, i8** %14, align 8
  store i8* null, i8** %15, align 8
  store i8 0, i8* %16, align 1
  %24 = load i64, i64* @FALSE, align 8
  store i64 %24, i64* %17, align 8
  %25 = load i64, i64* @FALSE, align 8
  store i64 %25, i64* %18, align 8
  %26 = load i64, i64* @FALSE, align 8
  store i64 %26, i64* %19, align 8
  %27 = load i64, i64* @FALSE, align 8
  store i64 %27, i64* %20, align 8
  %28 = load i32, i32* %4, align 4
  %29 = icmp eq i32 %28, 1
  br i1 %29, label %30, label %35

30:                                               ; preds = %2
  %31 = load i32, i32* @STRING_INVALID_SYNTAX, align 4
  %32 = call i32 (i32, ...) @output_message(i32 %31)
  %33 = load i32, i32* @STRING_REG_HELP, align 4
  %34 = call i32 (i32, ...) @output_message(i32 %33)
  store i32 1, i32* %3, align 4
  br label %345

35:                                               ; preds = %2
  %36 = load i8**, i8*** %5, align 8
  %37 = getelementptr inbounds i8*, i8** %36, i64 1
  %38 = load i8*, i8** %37, align 8
  %39 = call i64 @is_help_switch(i8* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %35
  %42 = load i32, i32* @STRING_USAGE, align 4
  %43 = call i32 (i32, ...) @output_message(i32 %42)
  store i32 0, i32* %3, align 4
  br label %345

44:                                               ; preds = %35
  %45 = load i8**, i8*** %5, align 8
  %46 = getelementptr inbounds i8*, i8** %45, i64 1
  %47 = load i8*, i8** %46, align 8
  %48 = call i32 @get_operation(i8* %47, i32* %8)
  store i32 %48, i32* %7, align 4
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* @REG_INVALID, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %60

52:                                               ; preds = %44
  %53 = load i32, i32* @STRING_INVALID_OPTION, align 4
  %54 = load i8**, i8*** %5, align 8
  %55 = getelementptr inbounds i8*, i8** %54, i64 1
  %56 = load i8*, i8** %55, align 8
  %57 = call i32 (i32, ...) @output_message(i32 %53, i8* %56)
  %58 = load i32, i32* @STRING_REG_HELP, align 4
  %59 = call i32 (i32, ...) @output_message(i32 %58)
  store i32 1, i32* %3, align 4
  br label %345

60:                                               ; preds = %44
  %61 = load i32, i32* %4, align 4
  %62 = icmp sgt i32 %61, 2
  br i1 %62, label %63, label %68

63:                                               ; preds = %60
  %64 = load i8**, i8*** %5, align 8
  %65 = getelementptr inbounds i8*, i8** %64, i64 2
  %66 = load i8*, i8** %65, align 8
  %67 = call i64 @is_help_switch(i8* %66)
  store i64 %67, i64* %10, align 8
  br label %68

68:                                               ; preds = %63, %60
  %69 = load i32, i32* %4, align 4
  %70 = icmp eq i32 %69, 2
  br i1 %70, label %81, label %71

71:                                               ; preds = %68
  %72 = load i64, i64* %10, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %78, label %74

74:                                               ; preds = %71
  %75 = load i32, i32* %7, align 4
  %76 = load i32, i32* @REG_IMPORT, align 4
  %77 = icmp eq i32 %75, %76
  br i1 %77, label %78, label %90

78:                                               ; preds = %74, %71
  %79 = load i32, i32* %4, align 4
  %80 = icmp sgt i32 %79, 3
  br i1 %80, label %81, label %90

81:                                               ; preds = %78, %68
  %82 = load i32, i32* @STRING_INVALID_SYNTAX, align 4
  %83 = call i32 (i32, ...) @output_message(i32 %82)
  %84 = load i32, i32* @STRING_FUNC_HELP, align 4
  %85 = load i8**, i8*** %5, align 8
  %86 = getelementptr inbounds i8*, i8** %85, i64 1
  %87 = load i8*, i8** %86, align 8
  %88 = call i32 @struprW(i8* %87)
  %89 = call i32 (i32, ...) @output_message(i32 %84, i32 %88)
  store i32 1, i32* %3, align 4
  br label %345

90:                                               ; preds = %78, %74
  %91 = load i64, i64* %10, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %90
  %94 = load i32, i32* %8, align 4
  %95 = call i32 (i32, ...) @output_message(i32 %94)
  store i32 0, i32* %3, align 4
  br label %345

96:                                               ; preds = %90
  br label %97

97:                                               ; preds = %96
  %98 = load i32, i32* %7, align 4
  %99 = load i32, i32* @REG_IMPORT, align 4
  %100 = icmp eq i32 %98, %99
  br i1 %100, label %101, label %106

101:                                              ; preds = %97
  %102 = load i8**, i8*** %5, align 8
  %103 = getelementptr inbounds i8*, i8** %102, i64 2
  %104 = load i8*, i8** %103, align 8
  %105 = call i32 @reg_import(i8* %104)
  store i32 %105, i32* %3, align 4
  br label %345

106:                                              ; preds = %97
  %107 = load i32, i32* %7, align 4
  %108 = load i32, i32* @REG_EXPORT, align 4
  %109 = icmp eq i32 %107, %108
  br i1 %109, label %110, label %114

110:                                              ; preds = %106
  %111 = load i32, i32* %4, align 4
  %112 = load i8**, i8*** %5, align 8
  %113 = call i32 @reg_export(i32 %111, i8** %112)
  store i32 %113, i32* %3, align 4
  br label %345

114:                                              ; preds = %106
  %115 = load i32, i32* %7, align 4
  %116 = load i32, i32* @REG_SAVE, align 4
  %117 = icmp eq i32 %115, %116
  br i1 %117, label %118, label %122

118:                                              ; preds = %114
  %119 = load i32, i32* %4, align 4
  %120 = load i8**, i8*** %5, align 8
  %121 = call i32 @reg_save(i32 %119, i8** %120)
  store i32 %121, i32* %3, align 4
  br label %345

122:                                              ; preds = %114
  %123 = load i32, i32* %7, align 4
  %124 = load i32, i32* @REG_RESTORE, align 4
  %125 = icmp eq i32 %123, %124
  br i1 %125, label %126, label %130

126:                                              ; preds = %122
  %127 = load i32, i32* %4, align 4
  %128 = load i8**, i8*** %5, align 8
  %129 = call i32 @reg_restore(i32 %127, i8** %128)
  store i32 %129, i32* %3, align 4
  br label %345

130:                                              ; preds = %122
  %131 = load i8**, i8*** %5, align 8
  %132 = getelementptr inbounds i8*, i8** %131, i64 2
  %133 = load i8*, i8** %132, align 8
  %134 = call i32 @parse_registry_key(i8* %133, i32* %21, i8** %12, i8** %11)
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %137, label %136

136:                                              ; preds = %130
  store i32 1, i32* %3, align 4
  br label %345

137:                                              ; preds = %130
  store i32 3, i32* %6, align 4
  br label %138

138:                                              ; preds = %283, %137
  %139 = load i32, i32* %6, align 4
  %140 = load i32, i32* %4, align 4
  %141 = icmp slt i32 %139, %140
  br i1 %141, label %142, label %286

142:                                              ; preds = %138
  %143 = load i8**, i8*** %5, align 8
  %144 = load i32, i32* %6, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i8*, i8** %143, i64 %145
  %147 = load i8*, i8** %146, align 8
  %148 = getelementptr inbounds i8, i8* %147, i64 0
  %149 = load i8, i8* %148, align 1
  %150 = sext i8 %149 to i32
  %151 = icmp eq i32 %150, 47
  br i1 %151, label %162, label %152

152:                                              ; preds = %142
  %153 = load i8**, i8*** %5, align 8
  %154 = load i32, i32* %6, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i8*, i8** %153, i64 %155
  %157 = load i8*, i8** %156, align 8
  %158 = getelementptr inbounds i8, i8* %157, i64 0
  %159 = load i8, i8* %158, align 1
  %160 = sext i8 %159 to i32
  %161 = icmp eq i32 %160, 45
  br i1 %161, label %162, label %282

162:                                              ; preds = %152, %142
  %163 = load i8**, i8*** %5, align 8
  %164 = load i32, i32* %6, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i8*, i8** %163, i64 %165
  %167 = load i8*, i8** %166, align 8
  %168 = getelementptr inbounds i8, i8* %167, i64 1
  store i8* %168, i8** %22, align 8
  %169 = load i8*, i8** %22, align 8
  %170 = call i32 @lstrcmpiW(i8* %169, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @wmain.switchVEW, i64 0, i64 0))
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %174, label %172

172:                                              ; preds = %162
  %173 = load i64, i64* @TRUE, align 8
  store i64 %173, i64* %17, align 8
  br label %283

174:                                              ; preds = %162
  %175 = load i8*, i8** %22, align 8
  %176 = call i32 @lstrcmpiW(i8* %175, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @wmain.switchVAW, i64 0, i64 0))
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %180, label %178

178:                                              ; preds = %174
  %179 = load i64, i64* @TRUE, align 8
  store i64 %179, i64* %18, align 8
  br label %283

180:                                              ; preds = %174
  %181 = load i8*, i8** %22, align 8
  %182 = getelementptr inbounds i8, i8* %181, i64 0
  %183 = load i8, i8* %182, align 1
  %184 = icmp ne i8 %183, 0
  br i1 %184, label %185, label %191

185:                                              ; preds = %180
  %186 = load i8*, i8** %22, align 8
  %187 = getelementptr inbounds i8, i8* %186, i64 1
  %188 = load i8, i8* %187, align 1
  %189 = sext i8 %188 to i32
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %194

191:                                              ; preds = %185, %180
  %192 = load i32, i32* @STRING_INVALID_CMDLINE, align 4
  %193 = call i32 (i32, ...) @output_message(i32 %192)
  store i32 1, i32* %3, align 4
  br label %345

194:                                              ; preds = %185
  br label %195

195:                                              ; preds = %194
  br label %196

196:                                              ; preds = %195
  %197 = load i8**, i8*** %5, align 8
  %198 = load i32, i32* %6, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds i8*, i8** %197, i64 %199
  %201 = load i8*, i8** %200, align 8
  %202 = getelementptr inbounds i8, i8* %201, i64 1
  %203 = load i8, i8* %202, align 1
  %204 = call i32 @tolowerW(i8 signext %203)
  switch i32 %204, label %278 [
    i32 118, label %205
    i32 116, label %220
    i32 100, label %235
    i32 115, label %250
    i32 102, label %276
  ]

205:                                              ; preds = %196
  %206 = load i8*, i8** %13, align 8
  %207 = icmp ne i8* %206, null
  br i1 %207, label %216, label %208

208:                                              ; preds = %205
  %209 = load i8**, i8*** %5, align 8
  %210 = load i32, i32* %6, align 4
  %211 = add nsw i32 %210, 1
  store i32 %211, i32* %6, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds i8*, i8** %209, i64 %212
  %214 = load i8*, i8** %213, align 8
  store i8* %214, i8** %13, align 8
  %215 = icmp ne i8* %214, null
  br i1 %215, label %219, label %216

216:                                              ; preds = %208, %205
  %217 = load i32, i32* @STRING_INVALID_CMDLINE, align 4
  %218 = call i32 (i32, ...) @output_message(i32 %217)
  store i32 1, i32* %3, align 4
  br label %345

219:                                              ; preds = %208
  br label %281

220:                                              ; preds = %196
  %221 = load i8*, i8** %14, align 8
  %222 = icmp ne i8* %221, null
  br i1 %222, label %231, label %223

223:                                              ; preds = %220
  %224 = load i8**, i8*** %5, align 8
  %225 = load i32, i32* %6, align 4
  %226 = add nsw i32 %225, 1
  store i32 %226, i32* %6, align 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds i8*, i8** %224, i64 %227
  %229 = load i8*, i8** %228, align 8
  store i8* %229, i8** %14, align 8
  %230 = icmp ne i8* %229, null
  br i1 %230, label %234, label %231

231:                                              ; preds = %223, %220
  %232 = load i32, i32* @STRING_INVALID_CMDLINE, align 4
  %233 = call i32 (i32, ...) @output_message(i32 %232)
  store i32 1, i32* %3, align 4
  br label %345

234:                                              ; preds = %223
  br label %281

235:                                              ; preds = %196
  %236 = load i8*, i8** %15, align 8
  %237 = icmp ne i8* %236, null
  br i1 %237, label %246, label %238

238:                                              ; preds = %235
  %239 = load i8**, i8*** %5, align 8
  %240 = load i32, i32* %6, align 4
  %241 = add nsw i32 %240, 1
  store i32 %241, i32* %6, align 4
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds i8*, i8** %239, i64 %242
  %244 = load i8*, i8** %243, align 8
  store i8* %244, i8** %15, align 8
  %245 = icmp ne i8* %244, null
  br i1 %245, label %249, label %246

246:                                              ; preds = %238, %235
  %247 = load i32, i32* @STRING_INVALID_CMDLINE, align 4
  %248 = call i32 (i32, ...) @output_message(i32 %247)
  store i32 1, i32* %3, align 4
  br label %345

249:                                              ; preds = %238
  br label %281

250:                                              ; preds = %196
  %251 = load i32, i32* %7, align 4
  %252 = load i32, i32* @REG_QUERY, align 4
  %253 = icmp eq i32 %251, %252
  br i1 %253, label %254, label %256

254:                                              ; preds = %250
  %255 = load i64, i64* @TRUE, align 8
  store i64 %255, i64* %19, align 8
  br label %281

256:                                              ; preds = %250
  %257 = load i8**, i8*** %5, align 8
  %258 = load i32, i32* %6, align 4
  %259 = add nsw i32 %258, 1
  store i32 %259, i32* %6, align 4
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds i8*, i8** %257, i64 %260
  %262 = load i8*, i8** %261, align 8
  store i8* %262, i8** %22, align 8
  %263 = load i8*, i8** %22, align 8
  %264 = icmp ne i8* %263, null
  br i1 %264, label %265, label %269

265:                                              ; preds = %256
  %266 = load i8*, i8** %22, align 8
  %267 = call i32 @strlenW(i8* %266)
  %268 = icmp ne i32 %267, 1
  br i1 %268, label %269, label %272

269:                                              ; preds = %265, %256
  %270 = load i32, i32* @STRING_INVALID_CMDLINE, align 4
  %271 = call i32 (i32, ...) @output_message(i32 %270)
  store i32 1, i32* %3, align 4
  br label %345

272:                                              ; preds = %265
  %273 = load i8*, i8** %22, align 8
  %274 = getelementptr inbounds i8, i8* %273, i64 0
  %275 = load i8, i8* %274, align 1
  store i8 %275, i8* %16, align 1
  br label %281

276:                                              ; preds = %196
  %277 = load i64, i64* @TRUE, align 8
  store i64 %277, i64* %20, align 8
  br label %281

278:                                              ; preds = %196
  %279 = load i32, i32* @STRING_INVALID_CMDLINE, align 4
  %280 = call i32 (i32, ...) @output_message(i32 %279)
  store i32 1, i32* %3, align 4
  br label %345

281:                                              ; preds = %276, %272, %254, %249, %234, %219
  br label %282

282:                                              ; preds = %281, %152
  br label %283

283:                                              ; preds = %282, %178, %172
  %284 = load i32, i32* %6, align 4
  %285 = add nsw i32 %284, 1
  store i32 %285, i32* %6, align 4
  br label %138

286:                                              ; preds = %138
  %287 = load i8*, i8** %13, align 8
  %288 = icmp ne i8* %287, null
  br i1 %288, label %289, label %292

289:                                              ; preds = %286
  %290 = load i64, i64* %17, align 8
  %291 = icmp ne i64 %290, 0
  br i1 %291, label %304, label %292

292:                                              ; preds = %289, %286
  %293 = load i8*, i8** %13, align 8
  %294 = icmp ne i8* %293, null
  br i1 %294, label %295, label %298

295:                                              ; preds = %292
  %296 = load i64, i64* %18, align 8
  %297 = icmp ne i64 %296, 0
  br i1 %297, label %304, label %298

298:                                              ; preds = %295, %292
  %299 = load i64, i64* %17, align 8
  %300 = icmp ne i64 %299, 0
  br i1 %300, label %301, label %307

301:                                              ; preds = %298
  %302 = load i64, i64* %18, align 8
  %303 = icmp ne i64 %302, 0
  br i1 %303, label %304, label %307

304:                                              ; preds = %301, %295, %289
  %305 = load i32, i32* @STRING_INVALID_CMDLINE, align 4
  %306 = call i32 (i32, ...) @output_message(i32 %305)
  store i32 1, i32* %3, align 4
  br label %345

307:                                              ; preds = %301, %298
  %308 = load i32, i32* %7, align 4
  %309 = load i32, i32* @REG_ADD, align 4
  %310 = icmp eq i32 %308, %309
  br i1 %310, label %311, label %321

311:                                              ; preds = %307
  %312 = load i32, i32* %21, align 4
  %313 = load i8*, i8** %12, align 8
  %314 = load i8*, i8** %13, align 8
  %315 = load i64, i64* %17, align 8
  %316 = load i8*, i8** %14, align 8
  %317 = load i8, i8* %16, align 1
  %318 = load i8*, i8** %15, align 8
  %319 = load i64, i64* %20, align 8
  %320 = call i32 @reg_add(i32 %312, i8* %313, i8* %314, i64 %315, i8* %316, i8 signext %317, i8* %318, i64 %319)
  store i32 %320, i32* %9, align 4
  br label %343

321:                                              ; preds = %307
  %322 = load i32, i32* %7, align 4
  %323 = load i32, i32* @REG_DELETE, align 4
  %324 = icmp eq i32 %322, %323
  br i1 %324, label %325, label %334

325:                                              ; preds = %321
  %326 = load i32, i32* %21, align 4
  %327 = load i8*, i8** %12, align 8
  %328 = load i8*, i8** %11, align 8
  %329 = load i8*, i8** %13, align 8
  %330 = load i64, i64* %17, align 8
  %331 = load i64, i64* %18, align 8
  %332 = load i64, i64* %20, align 8
  %333 = call i32 @reg_delete(i32 %326, i8* %327, i8* %328, i8* %329, i64 %330, i64 %331, i64 %332)
  store i32 %333, i32* %9, align 4
  br label %342

334:                                              ; preds = %321
  %335 = load i32, i32* %21, align 4
  %336 = load i8*, i8** %12, align 8
  %337 = load i8*, i8** %11, align 8
  %338 = load i8*, i8** %13, align 8
  %339 = load i64, i64* %17, align 8
  %340 = load i64, i64* %19, align 8
  %341 = call i32 @reg_query(i32 %335, i8* %336, i8* %337, i8* %338, i64 %339, i64 %340)
  store i32 %341, i32* %9, align 4
  br label %342

342:                                              ; preds = %334, %325
  br label %343

343:                                              ; preds = %342, %311
  %344 = load i32, i32* %9, align 4
  store i32 %344, i32* %3, align 4
  br label %345

345:                                              ; preds = %343, %304, %278, %269, %246, %231, %216, %191, %136, %126, %118, %110, %101, %93, %81, %52, %41, %30
  %346 = load i32, i32* %3, align 4
  ret i32 %346
}

declare dso_local i32 @output_message(i32, ...) #1

declare dso_local i64 @is_help_switch(i8*) #1

declare dso_local i32 @get_operation(i8*, i32*) #1

declare dso_local i32 @struprW(i8*) #1

declare dso_local i32 @reg_import(i8*) #1

declare dso_local i32 @reg_export(i32, i8**) #1

declare dso_local i32 @reg_save(i32, i8**) #1

declare dso_local i32 @reg_restore(i32, i8**) #1

declare dso_local i32 @parse_registry_key(i8*, i32*, i8**, i8**) #1

declare dso_local i32 @lstrcmpiW(i8*, i8*) #1

declare dso_local i32 @tolowerW(i8 signext) #1

declare dso_local i32 @strlenW(i8*) #1

declare dso_local i32 @reg_add(i32, i8*, i8*, i64, i8*, i8 signext, i8*, i64) #1

declare dso_local i32 @reg_delete(i32, i8*, i8*, i8*, i64, i64, i64) #1

declare dso_local i32 @reg_query(i32, i8*, i8*, i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
