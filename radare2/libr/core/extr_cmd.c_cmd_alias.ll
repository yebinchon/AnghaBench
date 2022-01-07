; ModuleID = '/home/carl/AnghaBench/radare2/libr/core/extr_cmd.c_cmd_alias.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/core/extr_cmd.c_cmd_alias.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32 }

@help_msg_dollar = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"unknown key '%s'\0A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"%s=%s\0A\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"%s=base64:%s\0A\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"%s %s\00", align 1
@UT64_MAX = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [20 x i8] c"Unknown alias '%s'\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @cmd_alias to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmd_alias(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i8**, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i8**, align 8
  %28 = alloca i8*, align 8
  %29 = alloca i8*, align 8
  %30 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %31 = load i8*, i8** %4, align 8
  %32 = bitcast i8* %31 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %32, %struct.TYPE_5__** %6, align 8
  %33 = load i8*, i8** %5, align 8
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp eq i32 %35, 63
  br i1 %36, label %37, label %41

37:                                               ; preds = %2
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %39 = load i32, i32* @help_msg_dollar, align 4
  %40 = call i32 @r_core_cmd_help(%struct.TYPE_5__* %38, i32 %39)
  store i32 0, i32* %3, align 4
  br label %426

41:                                               ; preds = %2
  %42 = load i8*, i8** %5, align 8
  %43 = call i8* @strlen(i8* %42)
  %44 = ptrtoint i8* %43 to i32
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* %7, align 4
  %46 = add nsw i32 %45, 2
  %47 = call i8* @malloc(i32 %46)
  store i8* %47, i8** %8, align 8
  %48 = load i8*, i8** %8, align 8
  %49 = icmp ne i8* %48, null
  br i1 %49, label %51, label %50

50:                                               ; preds = %41
  store i32 0, i32* %3, align 4
  br label %426

51:                                               ; preds = %41
  %52 = load i8*, i8** %8, align 8
  store i8 36, i8* %52, align 1
  %53 = load i8*, i8** %8, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 1
  %55 = load i8*, i8** %5, align 8
  %56 = load i32, i32* %7, align 4
  %57 = add nsw i32 %56, 1
  %58 = call i32 @memcpy(i8* %54, i8* %55, i32 %57)
  %59 = load i8*, i8** %8, align 8
  %60 = call i8* @strchr(i8* %59, i8 signext 32)
  store i8* %60, i8** %9, align 8
  %61 = load i8*, i8** %8, align 8
  %62 = call i8* @strchr(i8* %61, i8 signext 61)
  store i8* %62, i8** %10, align 8
  %63 = load i8*, i8** %8, align 8
  %64 = call i8* @strchr(i8* %63, i8 signext 63)
  store i8* %64, i8** %11, align 8
  %65 = load i8*, i8** %8, align 8
  %66 = call i8* @strchr(i8* %65, i8 signext 110)
  store i8* %66, i8** %12, align 8
  store i32 0, i32* %13, align 4
  %67 = load i8*, i8** %10, align 8
  %68 = icmp ne i8* %67, null
  br i1 %68, label %69, label %95

69:                                               ; preds = %51
  %70 = load i8*, i8** %10, align 8
  %71 = load i8*, i8** %8, align 8
  %72 = icmp ugt i8* %70, %71
  br i1 %72, label %73, label %95

73:                                               ; preds = %69
  %74 = load i8*, i8** %10, align 8
  %75 = getelementptr inbounds i8, i8* %74, i64 -1
  store i8* %75, i8** %14, align 8
  %76 = load i8*, i8** %14, align 8
  %77 = load i8, i8* %76, align 1
  %78 = sext i8 %77 to i32
  switch i32 %78, label %94 [
    i32 58, label %79
    i32 43, label %84
    i32 45, label %89
  ]

79:                                               ; preds = %73
  %80 = load i8*, i8** %14, align 8
  %81 = load i8, i8* %80, align 1
  %82 = sext i8 %81 to i32
  store i32 %82, i32* %13, align 4
  %83 = load i8*, i8** %14, align 8
  store i8 0, i8* %83, align 1
  br label %94

84:                                               ; preds = %73
  %85 = load i8*, i8** %14, align 8
  %86 = load i8, i8* %85, align 1
  %87 = sext i8 %86 to i32
  store i32 %87, i32* %13, align 4
  %88 = load i8*, i8** %14, align 8
  store i8 0, i8* %88, align 1
  br label %94

89:                                               ; preds = %73
  %90 = load i8*, i8** %14, align 8
  %91 = load i8, i8* %90, align 1
  %92 = sext i8 %91 to i32
  store i32 %92, i32* %13, align 4
  %93 = load i8*, i8** %14, align 8
  store i8 0, i8* %93, align 1
  br label %94

94:                                               ; preds = %73, %89, %84, %79
  br label %95

95:                                               ; preds = %94, %69, %51
  %96 = load i8*, i8** %10, align 8
  %97 = icmp ne i8* %96, null
  br i1 %97, label %98, label %105

98:                                               ; preds = %95
  %99 = load i8*, i8** %9, align 8
  %100 = icmp ne i8* %99, null
  br i1 %100, label %101, label %105

101:                                              ; preds = %98
  %102 = load i8*, i8** %10, align 8
  %103 = load i8*, i8** %9, align 8
  %104 = icmp ult i8* %102, %103
  br i1 %104, label %111, label %105

105:                                              ; preds = %101, %98, %95
  %106 = load i8*, i8** %10, align 8
  %107 = icmp ne i8* %106, null
  br i1 %107, label %108, label %245

108:                                              ; preds = %105
  %109 = load i8*, i8** %9, align 8
  %110 = icmp ne i8* %109, null
  br i1 %110, label %245, label %111

111:                                              ; preds = %108, %101
  %112 = load i8*, i8** %10, align 8
  %113 = getelementptr inbounds i8, i8* %112, i32 1
  store i8* %113, i8** %10, align 8
  store i8 0, i8* %112, align 1
  %114 = load i8*, i8** %10, align 8
  %115 = call i8* @strlen(i8* %114)
  %116 = ptrtoint i8* %115 to i64
  store i64 %116, i64* %15, align 8
  %117 = load i32, i32* %13, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %167

119:                                              ; preds = %111
  %120 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = load i8*, i8** %10, align 8
  %124 = call i64 @r_num_math(i32 %122, i8* %123)
  store i64 %124, i64* %16, align 8
  %125 = load i32, i32* %13, align 4
  switch i32 %125, label %166 [
    i32 58, label %126
    i32 43, label %134
    i32 45, label %150
  ]

126:                                              ; preds = %119
  %127 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %128 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 4
  %130 = load i8*, i8** %8, align 8
  %131 = getelementptr inbounds i8, i8* %130, i64 1
  %132 = load i64, i64* %16, align 8
  %133 = call i32 @r_flag_set(i32 %129, i8* %131, i64 %132, i32 1)
  store i32 1, i32* %3, align 4
  br label %426

134:                                              ; preds = %119
  %135 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %136 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = load i8*, i8** %8, align 8
  %139 = getelementptr inbounds i8, i8* %138, i64 1
  %140 = call i64 @r_num_get(i32 %137, i8* %139)
  %141 = load i64, i64* %16, align 8
  %142 = add nsw i64 %140, %141
  store i64 %142, i64* %16, align 8
  %143 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %144 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %143, i32 0, i32 2
  %145 = load i32, i32* %144, align 4
  %146 = load i8*, i8** %8, align 8
  %147 = getelementptr inbounds i8, i8* %146, i64 1
  %148 = load i64, i64* %16, align 8
  %149 = call i32 @r_flag_set(i32 %145, i8* %147, i64 %148, i32 1)
  store i32 1, i32* %3, align 4
  br label %426

150:                                              ; preds = %119
  %151 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %152 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = load i8*, i8** %8, align 8
  %155 = getelementptr inbounds i8, i8* %154, i64 1
  %156 = call i64 @r_num_get(i32 %153, i8* %155)
  %157 = load i64, i64* %16, align 8
  %158 = sub nsw i64 %156, %157
  store i64 %158, i64* %16, align 8
  %159 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %160 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %159, i32 0, i32 2
  %161 = load i32, i32* %160, align 4
  %162 = load i8*, i8** %8, align 8
  %163 = getelementptr inbounds i8, i8* %162, i64 1
  %164 = load i64, i64* %16, align 8
  %165 = call i32 @r_flag_set(i32 %161, i8* %163, i64 %164, i32 1)
  store i32 1, i32* %3, align 4
  br label %426

166:                                              ; preds = %119
  br label %167

167:                                              ; preds = %166, %111
  %168 = load i64, i64* %15, align 8
  %169 = icmp ugt i64 %168, 0
  br i1 %169, label %170, label %191

170:                                              ; preds = %167
  %171 = load i8*, i8** %10, align 8
  %172 = getelementptr inbounds i8, i8* %171, i64 0
  %173 = load i8, i8* %172, align 1
  %174 = sext i8 %173 to i32
  %175 = icmp eq i32 %174, 39
  br i1 %175, label %176, label %191

176:                                              ; preds = %170
  %177 = load i8*, i8** %10, align 8
  %178 = load i64, i64* %15, align 8
  %179 = sub i64 %178, 1
  %180 = getelementptr inbounds i8, i8* %177, i64 %179
  %181 = load i8, i8* %180, align 1
  %182 = sext i8 %181 to i32
  %183 = icmp eq i32 %182, 39
  br i1 %183, label %184, label %191

184:                                              ; preds = %176
  %185 = load i8*, i8** %10, align 8
  %186 = load i64, i64* %15, align 8
  %187 = sub i64 %186, 1
  %188 = getelementptr inbounds i8, i8* %185, i64 %187
  store i8 0, i8* %188, align 1
  %189 = load i8*, i8** %10, align 8
  %190 = getelementptr inbounds i8, i8* %189, i32 1
  store i8* %190, i8** %10, align 8
  br label %191

191:                                              ; preds = %184, %176, %170, %167
  %192 = load i8*, i8** %9, align 8
  %193 = icmp ne i8* %192, null
  br i1 %193, label %194, label %201

194:                                              ; preds = %191
  %195 = load i8*, i8** %9, align 8
  %196 = icmp ne i8* %195, null
  br i1 %196, label %197, label %244

197:                                              ; preds = %194
  %198 = load i8*, i8** %9, align 8
  %199 = load i8*, i8** %10, align 8
  %200 = icmp ugt i8* %198, %199
  br i1 %200, label %201, label %244

201:                                              ; preds = %197, %191
  %202 = load i8*, i8** %10, align 8
  %203 = load i8, i8* %202, align 1
  %204 = icmp ne i8 %203, 0
  br i1 %204, label %205, label %237

205:                                              ; preds = %201
  %206 = load i8*, i8** %10, align 8
  %207 = call i32 @strcmp(i8* %206, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %229, label %209

209:                                              ; preds = %205
  %210 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %211 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %210, i32 0, i32 1
  %212 = load i32, i32* %211, align 4
  %213 = load i8*, i8** %8, align 8
  %214 = call i8* @r_cmd_alias_get(i32 %212, i8* %213, i32 0)
  store i8* %214, i8** %17, align 8
  %215 = load i8*, i8** %17, align 8
  %216 = call i8* @r_cons_editor(i32* null, i8* %215)
  store i8* %216, i8** %18, align 8
  %217 = load i8*, i8** %18, align 8
  %218 = icmp ne i8* %217, null
  br i1 %218, label %219, label %228

219:                                              ; preds = %209
  %220 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %221 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %220, i32 0, i32 1
  %222 = load i32, i32* %221, align 4
  %223 = load i8*, i8** %8, align 8
  %224 = load i8*, i8** %18, align 8
  %225 = call i32 @r_cmd_alias_set(i32 %222, i8* %223, i8* %224, i32 0)
  %226 = load i8*, i8** %18, align 8
  %227 = call i32 @free(i8* %226)
  br label %228

228:                                              ; preds = %219, %209
  br label %236

229:                                              ; preds = %205
  %230 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %231 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %230, i32 0, i32 1
  %232 = load i32, i32* %231, align 4
  %233 = load i8*, i8** %8, align 8
  %234 = load i8*, i8** %10, align 8
  %235 = call i32 @r_cmd_alias_set(i32 %232, i8* %233, i8* %234, i32 0)
  br label %236

236:                                              ; preds = %229, %228
  br label %243

237:                                              ; preds = %201
  %238 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %239 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %238, i32 0, i32 1
  %240 = load i32, i32* %239, align 4
  %241 = load i8*, i8** %8, align 8
  %242 = call i32 @r_cmd_alias_del(i32 %240, i8* %241)
  br label %243

243:                                              ; preds = %237, %236
  br label %244

244:                                              ; preds = %243, %197, %194
  br label %423

245:                                              ; preds = %108, %105
  %246 = load i8*, i8** %11, align 8
  %247 = icmp ne i8* %246, null
  br i1 %247, label %248, label %278

248:                                              ; preds = %245
  %249 = load i8*, i8** %9, align 8
  %250 = icmp ne i8* %249, null
  br i1 %250, label %278, label %251

251:                                              ; preds = %248
  %252 = load i8*, i8** %11, align 8
  store i8 0, i8* %252, align 1
  %253 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %254 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %253, i32 0, i32 1
  %255 = load i32, i32* %254, align 4
  %256 = load i8*, i8** %8, align 8
  %257 = call i8* @r_cmd_alias_get(i32 %255, i8* %256, i32 0)
  store i8* %257, i8** %19, align 8
  %258 = load i8*, i8** %19, align 8
  %259 = icmp ne i8* %258, null
  br i1 %259, label %260, label %274

260:                                              ; preds = %251
  %261 = load i8*, i8** %12, align 8
  %262 = load i8*, i8** %11, align 8
  %263 = getelementptr inbounds i8, i8* %262, i64 1
  %264 = icmp eq i8* %261, %263
  br i1 %264, label %265, label %268

265:                                              ; preds = %260
  %266 = load i8*, i8** %19, align 8
  %267 = call i32 @r_cons_print(i8* %266)
  br label %271

268:                                              ; preds = %260
  %269 = load i8*, i8** %19, align 8
  %270 = call i32 @r_cons_println(i8* %269)
  br label %271

271:                                              ; preds = %268, %265
  %272 = load i8*, i8** %8, align 8
  %273 = call i32 @free(i8* %272)
  store i32 1, i32* %3, align 4
  br label %426

274:                                              ; preds = %251
  %275 = load i8*, i8** %8, align 8
  %276 = call i32 @eprintf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8* %275)
  br label %277

277:                                              ; preds = %274
  br label %422

278:                                              ; preds = %248, %245
  %279 = load i8*, i8** %8, align 8
  %280 = getelementptr inbounds i8, i8* %279, i64 1
  %281 = load i8, i8* %280, align 1
  %282 = sext i8 %281 to i32
  %283 = icmp eq i32 %282, 42
  br i1 %283, label %284, label %333

284:                                              ; preds = %278
  store i32 0, i32* %21, align 4
  %285 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %286 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %285, i32 0, i32 1
  %287 = load i32, i32* %286, align 4
  %288 = call i8** @r_cmd_alias_keys(i32 %287, i32* %21)
  store i8** %288, i8*** %22, align 8
  store i32 0, i32* %20, align 4
  br label %289

289:                                              ; preds = %329, %284
  %290 = load i32, i32* %20, align 4
  %291 = load i32, i32* %21, align 4
  %292 = icmp slt i32 %290, %291
  br i1 %292, label %293, label %332

293:                                              ; preds = %289
  %294 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %295 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %294, i32 0, i32 1
  %296 = load i32, i32* %295, align 4
  %297 = load i8**, i8*** %22, align 8
  %298 = load i32, i32* %20, align 4
  %299 = sext i32 %298 to i64
  %300 = getelementptr inbounds i8*, i8** %297, i64 %299
  %301 = load i8*, i8** %300, align 8
  %302 = call i8* @r_cmd_alias_get(i32 %296, i8* %301, i32 0)
  store i8* %302, i8** %23, align 8
  %303 = load i8*, i8** %23, align 8
  %304 = call i8* @r_base64_encode_dyn(i8* %303, i32 -1)
  store i8* %304, i8** %24, align 8
  %305 = load i8*, i8** %8, align 8
  %306 = getelementptr inbounds i8, i8* %305, i64 2
  %307 = load i8, i8* %306, align 1
  %308 = sext i8 %307 to i32
  %309 = icmp eq i32 %308, 42
  br i1 %309, label %310, label %318

310:                                              ; preds = %293
  %311 = load i8**, i8*** %22, align 8
  %312 = load i32, i32* %20, align 4
  %313 = sext i32 %312 to i64
  %314 = getelementptr inbounds i8*, i8** %311, i64 %313
  %315 = load i8*, i8** %314, align 8
  %316 = load i8*, i8** %23, align 8
  %317 = call i32 @r_cons_printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* %315, i8* %316)
  br label %326

318:                                              ; preds = %293
  %319 = load i8**, i8*** %22, align 8
  %320 = load i32, i32* %20, align 4
  %321 = sext i32 %320 to i64
  %322 = getelementptr inbounds i8*, i8** %319, i64 %321
  %323 = load i8*, i8** %322, align 8
  %324 = load i8*, i8** %24, align 8
  %325 = call i32 @r_cons_printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i8* %323, i8* %324)
  br label %326

326:                                              ; preds = %318, %310
  %327 = load i8*, i8** %24, align 8
  %328 = call i32 @free(i8* %327)
  br label %329

329:                                              ; preds = %326
  %330 = load i32, i32* %20, align 4
  %331 = add nsw i32 %330, 1
  store i32 %331, i32* %20, align 4
  br label %289

332:                                              ; preds = %289
  br label %421

333:                                              ; preds = %278
  %334 = load i8*, i8** %8, align 8
  %335 = getelementptr inbounds i8, i8* %334, i64 1
  %336 = load i8, i8* %335, align 1
  %337 = icmp ne i8 %336, 0
  br i1 %337, label %358, label %338

338:                                              ; preds = %333
  store i32 0, i32* %26, align 4
  %339 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %340 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %339, i32 0, i32 1
  %341 = load i32, i32* %340, align 4
  %342 = call i8** @r_cmd_alias_keys(i32 %341, i32* %26)
  store i8** %342, i8*** %27, align 8
  store i32 0, i32* %25, align 4
  br label %343

343:                                              ; preds = %354, %338
  %344 = load i32, i32* %25, align 4
  %345 = load i32, i32* %26, align 4
  %346 = icmp slt i32 %344, %345
  br i1 %346, label %347, label %357

347:                                              ; preds = %343
  %348 = load i8**, i8*** %27, align 8
  %349 = load i32, i32* %25, align 4
  %350 = sext i32 %349 to i64
  %351 = getelementptr inbounds i8*, i8** %348, i64 %350
  %352 = load i8*, i8** %351, align 8
  %353 = call i32 @r_cons_println(i8* %352)
  br label %354

354:                                              ; preds = %347
  %355 = load i32, i32* %25, align 4
  %356 = add nsw i32 %355, 1
  store i32 %356, i32* %25, align 4
  br label %343

357:                                              ; preds = %343
  br label %420

358:                                              ; preds = %333
  %359 = load i8*, i8** %9, align 8
  %360 = icmp ne i8* %359, null
  br i1 %360, label %361, label %363

361:                                              ; preds = %358
  %362 = load i8*, i8** %9, align 8
  store i8 0, i8* %362, align 1
  br label %363

363:                                              ; preds = %361, %358
  %364 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %365 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %364, i32 0, i32 1
  %366 = load i32, i32* %365, align 4
  %367 = load i8*, i8** %8, align 8
  %368 = call i8* @r_cmd_alias_get(i32 %366, i8* %367, i32 0)
  store i8* %368, i8** %28, align 8
  %369 = load i8*, i8** %28, align 8
  %370 = icmp ne i8* %369, null
  br i1 %370, label %371, label %400

371:                                              ; preds = %363
  %372 = load i8*, i8** %28, align 8
  %373 = load i8, i8* %372, align 1
  %374 = sext i8 %373 to i32
  %375 = icmp eq i32 %374, 36
  br i1 %375, label %376, label %381

376:                                              ; preds = %371
  %377 = load i8*, i8** %28, align 8
  %378 = getelementptr inbounds i8, i8* %377, i64 1
  %379 = call i32 @r_cons_strcat(i8* %378)
  %380 = call i32 (...) @r_cons_newline()
  br label %399

381:                                              ; preds = %371
  %382 = load i8*, i8** %9, align 8
  %383 = icmp ne i8* %382, null
  br i1 %383, label %384, label %394

384:                                              ; preds = %381
  %385 = load i8*, i8** %28, align 8
  %386 = load i8*, i8** %9, align 8
  %387 = getelementptr inbounds i8, i8* %386, i64 1
  %388 = call i8* @r_str_newf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8* %385, i8* %387)
  store i8* %388, i8** %29, align 8
  %389 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %390 = load i8*, i8** %29, align 8
  %391 = call i32 @r_core_cmd0(%struct.TYPE_5__* %389, i8* %390)
  %392 = load i8*, i8** %29, align 8
  %393 = call i32 @free(i8* %392)
  br label %398

394:                                              ; preds = %381
  %395 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %396 = load i8*, i8** %28, align 8
  %397 = call i32 @r_core_cmd0(%struct.TYPE_5__* %395, i8* %396)
  br label %398

398:                                              ; preds = %394, %384
  br label %399

399:                                              ; preds = %398, %376
  br label %419

400:                                              ; preds = %363
  %401 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %402 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %401, i32 0, i32 0
  %403 = load i32, i32* %402, align 4
  %404 = load i8*, i8** %8, align 8
  %405 = getelementptr inbounds i8, i8* %404, i64 1
  %406 = call i64 @r_num_get(i32 %403, i8* %405)
  store i64 %406, i64* %30, align 8
  %407 = load i64, i64* %30, align 8
  %408 = load i64, i64* @UT64_MAX, align 8
  %409 = icmp ne i64 %407, %408
  br i1 %409, label %410, label %414

410:                                              ; preds = %400
  %411 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %412 = load i64, i64* %30, align 8
  %413 = call i32 @r_core_seek(%struct.TYPE_5__* %411, i64 %412, i32 1)
  br label %418

414:                                              ; preds = %400
  %415 = load i8*, i8** %8, align 8
  %416 = getelementptr inbounds i8, i8* %415, i64 1
  %417 = call i32 @eprintf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i8* %416)
  br label %418

418:                                              ; preds = %414, %410
  br label %419

419:                                              ; preds = %418, %399
  br label %420

420:                                              ; preds = %419, %357
  br label %421

421:                                              ; preds = %420, %332
  br label %422

422:                                              ; preds = %421, %277
  br label %423

423:                                              ; preds = %422, %244
  %424 = load i8*, i8** %8, align 8
  %425 = call i32 @free(i8* %424)
  store i32 0, i32* %3, align 4
  br label %426

426:                                              ; preds = %423, %271, %150, %134, %126, %50, %37
  %427 = load i32, i32* %3, align 4
  ret i32 %427
}

declare dso_local i32 @r_core_cmd_help(%struct.TYPE_5__*, i32) #1

declare dso_local i8* @strlen(i8*) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i64 @r_num_math(i32, i8*) #1

declare dso_local i32 @r_flag_set(i32, i8*, i64, i32) #1

declare dso_local i64 @r_num_get(i32, i8*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i8* @r_cmd_alias_get(i32, i8*, i32) #1

declare dso_local i8* @r_cons_editor(i32*, i8*) #1

declare dso_local i32 @r_cmd_alias_set(i32, i8*, i8*, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @r_cmd_alias_del(i32, i8*) #1

declare dso_local i32 @r_cons_print(i8*) #1

declare dso_local i32 @r_cons_println(i8*) #1

declare dso_local i32 @eprintf(i8*, i8*) #1

declare dso_local i8** @r_cmd_alias_keys(i32, i32*) #1

declare dso_local i8* @r_base64_encode_dyn(i8*, i32) #1

declare dso_local i32 @r_cons_printf(i8*, i8*, i8*) #1

declare dso_local i32 @r_cons_strcat(i8*) #1

declare dso_local i32 @r_cons_newline(...) #1

declare dso_local i8* @r_str_newf(i8*, i8*, i8*) #1

declare dso_local i32 @r_core_cmd0(%struct.TYPE_5__*, i8*) #1

declare dso_local i32 @r_core_seek(%struct.TYPE_5__*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
