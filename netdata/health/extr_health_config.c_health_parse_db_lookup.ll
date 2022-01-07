; ModuleID = '/home/carl/AnghaBench/netdata/health/extr_health_config.c_health_parse_db_lookup.c'
source_filename = "/home/carl/AnghaBench/netdata/health/extr_health_config.c_health_parse_db_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@D_HEALTH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"Health configuration parsing database lookup %zu@%s: %s\00", align 1
@.str.1 = private unnamed_addr constant [138 x i8] c"Health configuration invalid chart calculation at line %zu of file '%s': expected group method followed by the 'after' time, but got '%s'\00", align 1
@RRDR_GROUPING_UNDEFINED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [73 x i8] c"Health configuration at line %zu of file '%s': invalid group method '%s'\00", align 1
@.str.3 = private unnamed_addr constant [88 x i8] c"Health configuration at line %zu of file '%s': invalid duration '%s' after group method\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"at\00", align 1
@.str.5 = private unnamed_addr constant [86 x i8] c"Health configuration at line %zu of file '%s': invalid duration '%s' for '%s' keyword\00", align 1
@HEALTH_EVERY_KEY = common dso_local global i8* null, align 8
@.str.6 = private unnamed_addr constant [9 x i8] c"absolute\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"abs\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"absolute_sum\00", align 1
@RRDR_OPTION_ABSOLUTE = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [8 x i8] c"min2max\00", align 1
@RRDR_OPTION_MIN2MAX = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [10 x i8] c"null2zero\00", align 1
@RRDR_OPTION_NULL2ZERO = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [11 x i8] c"percentage\00", align 1
@RRDR_OPTION_PERCENTAGE = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [10 x i8] c"unaligned\00", align 1
@RRDR_OPTION_NOT_ALIGNED = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [10 x i8] c"match-ids\00", align 1
@.str.14 = private unnamed_addr constant [10 x i8] c"match_ids\00", align 1
@RRDR_OPTION_MATCH_IDS = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [12 x i8] c"match-names\00", align 1
@.str.16 = private unnamed_addr constant [12 x i8] c"match_names\00", align 1
@RRDR_OPTION_MATCH_NAMES = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [3 x i8] c"of\00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"all\00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c" foreach\00", align 1
@HEALTH_FOREACH_KEY = common dso_local global i8* null, align 8
@.str.20 = private unnamed_addr constant [68 x i8] c"Health configuration at line %zu of file '%s': unknown keyword '%s'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i8*, i8*, i32*, i32*, i32*, i32*, i32*, i8**, i8**)* @health_parse_db_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @health_parse_db_lookup(i64 %0, i8* %1, i8* %2, i32* %3, i32* %4, i32* %5, i32* %6, i32* %7, i8** %8, i8** %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i8**, align 8
  %21 = alloca i8**, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i8*, align 8
  %26 = alloca i8*, align 8
  store i64 %0, i64* %12, align 8
  store i8* %1, i8** %13, align 8
  store i8* %2, i8** %14, align 8
  store i32* %3, i32** %15, align 8
  store i32* %4, i32** %16, align 8
  store i32* %5, i32** %17, align 8
  store i32* %6, i32** %18, align 8
  store i32* %7, i32** %19, align 8
  store i8** %8, i8*** %20, align 8
  store i8** %9, i8*** %21, align 8
  %27 = load i32, i32* @D_HEALTH, align 4
  %28 = load i64, i64* %12, align 8
  %29 = load i8*, i8** %13, align 8
  %30 = load i8*, i8** %14, align 8
  %31 = call i32 @debug(i32 %27, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i64 %28, i8* %29, i8* %30)
  %32 = load i8**, i8*** %20, align 8
  %33 = load i8*, i8** %32, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %35, label %39

35:                                               ; preds = %10
  %36 = load i8**, i8*** %20, align 8
  %37 = load i8*, i8** %36, align 8
  %38 = call i32 @freez(i8* %37)
  br label %39

39:                                               ; preds = %35, %10
  %40 = load i8**, i8*** %21, align 8
  %41 = load i8*, i8** %40, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %43, label %47

43:                                               ; preds = %39
  %44 = load i8**, i8*** %21, align 8
  %45 = load i8*, i8** %44, align 8
  %46 = call i32 @freez(i8* %45)
  br label %47

47:                                               ; preds = %43, %39
  %48 = load i8**, i8*** %20, align 8
  store i8* null, i8** %48, align 8
  %49 = load i8**, i8*** %21, align 8
  store i8* null, i8** %49, align 8
  %50 = load i32*, i32** %16, align 8
  store i32 0, i32* %50, align 4
  %51 = load i32*, i32** %17, align 8
  store i32 0, i32* %51, align 4
  %52 = load i32*, i32** %18, align 8
  store i32 0, i32* %52, align 4
  %53 = load i32*, i32** %19, align 8
  store i32 0, i32* %53, align 4
  %54 = load i8*, i8** %14, align 8
  store i8* %54, i8** %22, align 8
  %55 = load i8*, i8** %22, align 8
  store i8* %55, i8** %23, align 8
  br label %56

56:                                               ; preds = %69, %47
  %57 = load i8*, i8** %22, align 8
  %58 = load i8, i8* %57, align 1
  %59 = sext i8 %58 to i32
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %56
  %62 = load i8*, i8** %22, align 8
  %63 = load i8, i8* %62, align 1
  %64 = call i64 @isspace(i8 signext %63)
  %65 = icmp ne i64 %64, 0
  %66 = xor i1 %65, true
  br label %67

67:                                               ; preds = %61, %56
  %68 = phi i1 [ false, %56 ], [ %66, %61 ]
  br i1 %68, label %69, label %72

69:                                               ; preds = %67
  %70 = load i8*, i8** %22, align 8
  %71 = getelementptr inbounds i8, i8* %70, i32 1
  store i8* %71, i8** %22, align 8
  br label %56

72:                                               ; preds = %67
  br label %73

73:                                               ; preds = %85, %72
  %74 = load i8*, i8** %22, align 8
  %75 = load i8, i8* %74, align 1
  %76 = sext i8 %75 to i32
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %83

78:                                               ; preds = %73
  %79 = load i8*, i8** %22, align 8
  %80 = load i8, i8* %79, align 1
  %81 = call i64 @isspace(i8 signext %80)
  %82 = icmp ne i64 %81, 0
  br label %83

83:                                               ; preds = %78, %73
  %84 = phi i1 [ false, %73 ], [ %82, %78 ]
  br i1 %84, label %85, label %88

85:                                               ; preds = %83
  %86 = load i8*, i8** %22, align 8
  %87 = getelementptr inbounds i8, i8* %86, i32 1
  store i8* %87, i8** %22, align 8
  store i8 0, i8* %86, align 1
  br label %73

88:                                               ; preds = %83
  %89 = load i8*, i8** %22, align 8
  %90 = load i8, i8* %89, align 1
  %91 = icmp ne i8 %90, 0
  br i1 %91, label %97, label %92

92:                                               ; preds = %88
  %93 = load i64, i64* %12, align 8
  %94 = load i8*, i8** %13, align 8
  %95 = load i8*, i8** %23, align 8
  %96 = call i32 (i8*, i64, i8*, i8*, ...) @error(i8* getelementptr inbounds ([138 x i8], [138 x i8]* @.str.1, i64 0, i64 0), i64 %93, i8* %94, i8* %95)
  store i32 0, i32* %11, align 4
  br label %438

97:                                               ; preds = %88
  %98 = load i8*, i8** %23, align 8
  %99 = load i32, i32* @RRDR_GROUPING_UNDEFINED, align 4
  %100 = call i32 @web_client_api_request_v1_data_group(i8* %98, i32 %99)
  %101 = load i32*, i32** %15, align 8
  store i32 %100, i32* %101, align 4
  %102 = load i32, i32* @RRDR_GROUPING_UNDEFINED, align 4
  %103 = icmp eq i32 %100, %102
  br i1 %103, label %104, label %109

104:                                              ; preds = %97
  %105 = load i64, i64* %12, align 8
  %106 = load i8*, i8** %13, align 8
  %107 = load i8*, i8** %23, align 8
  %108 = call i32 (i8*, i64, i8*, i8*, ...) @error(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.2, i64 0, i64 0), i64 %105, i8* %106, i8* %107)
  store i32 0, i32* %11, align 4
  br label %438

109:                                              ; preds = %97
  %110 = load i8*, i8** %22, align 8
  store i8* %110, i8** %23, align 8
  br label %111

111:                                              ; preds = %124, %109
  %112 = load i8*, i8** %22, align 8
  %113 = load i8, i8* %112, align 1
  %114 = sext i8 %113 to i32
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %122

116:                                              ; preds = %111
  %117 = load i8*, i8** %22, align 8
  %118 = load i8, i8* %117, align 1
  %119 = call i64 @isspace(i8 signext %118)
  %120 = icmp ne i64 %119, 0
  %121 = xor i1 %120, true
  br label %122

122:                                              ; preds = %116, %111
  %123 = phi i1 [ false, %111 ], [ %121, %116 ]
  br i1 %123, label %124, label %127

124:                                              ; preds = %122
  %125 = load i8*, i8** %22, align 8
  %126 = getelementptr inbounds i8, i8* %125, i32 1
  store i8* %126, i8** %22, align 8
  br label %111

127:                                              ; preds = %122
  br label %128

128:                                              ; preds = %140, %127
  %129 = load i8*, i8** %22, align 8
  %130 = load i8, i8* %129, align 1
  %131 = sext i8 %130 to i32
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %138

133:                                              ; preds = %128
  %134 = load i8*, i8** %22, align 8
  %135 = load i8, i8* %134, align 1
  %136 = call i64 @isspace(i8 signext %135)
  %137 = icmp ne i64 %136, 0
  br label %138

138:                                              ; preds = %133, %128
  %139 = phi i1 [ false, %128 ], [ %137, %133 ]
  br i1 %139, label %140, label %143

140:                                              ; preds = %138
  %141 = load i8*, i8** %22, align 8
  %142 = getelementptr inbounds i8, i8* %141, i32 1
  store i8* %142, i8** %22, align 8
  store i8 0, i8* %141, align 1
  br label %128

143:                                              ; preds = %138
  %144 = load i8*, i8** %23, align 8
  %145 = load i32*, i32** %16, align 8
  %146 = call i32 @config_parse_duration(i8* %144, i32* %145)
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %153, label %148

148:                                              ; preds = %143
  %149 = load i64, i64* %12, align 8
  %150 = load i8*, i8** %13, align 8
  %151 = load i8*, i8** %23, align 8
  %152 = call i32 (i8*, i64, i8*, i8*, ...) @error(i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str.3, i64 0, i64 0), i64 %149, i8* %150, i8* %151)
  store i32 0, i32* %11, align 4
  br label %438

153:                                              ; preds = %143
  %154 = load i32*, i32** %16, align 8
  %155 = load i32, i32* %154, align 4
  %156 = call i32 @abs(i32 %155) #3
  %157 = load i32*, i32** %18, align 8
  store i32 %156, i32* %157, align 4
  br label %158

158:                                              ; preds = %436, %153
  %159 = load i8*, i8** %22, align 8
  %160 = load i8, i8* %159, align 1
  %161 = icmp ne i8 %160, 0
  br i1 %161, label %162, label %437

162:                                              ; preds = %158
  %163 = load i8*, i8** %22, align 8
  store i8* %163, i8** %23, align 8
  br label %164

164:                                              ; preds = %177, %162
  %165 = load i8*, i8** %22, align 8
  %166 = load i8, i8* %165, align 1
  %167 = sext i8 %166 to i32
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %175

169:                                              ; preds = %164
  %170 = load i8*, i8** %22, align 8
  %171 = load i8, i8* %170, align 1
  %172 = call i64 @isspace(i8 signext %171)
  %173 = icmp ne i64 %172, 0
  %174 = xor i1 %173, true
  br label %175

175:                                              ; preds = %169, %164
  %176 = phi i1 [ false, %164 ], [ %174, %169 ]
  br i1 %176, label %177, label %180

177:                                              ; preds = %175
  %178 = load i8*, i8** %22, align 8
  %179 = getelementptr inbounds i8, i8* %178, i32 1
  store i8* %179, i8** %22, align 8
  br label %164

180:                                              ; preds = %175
  br label %181

181:                                              ; preds = %193, %180
  %182 = load i8*, i8** %22, align 8
  %183 = load i8, i8* %182, align 1
  %184 = sext i8 %183 to i32
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %191

186:                                              ; preds = %181
  %187 = load i8*, i8** %22, align 8
  %188 = load i8, i8* %187, align 1
  %189 = call i64 @isspace(i8 signext %188)
  %190 = icmp ne i64 %189, 0
  br label %191

191:                                              ; preds = %186, %181
  %192 = phi i1 [ false, %181 ], [ %190, %186 ]
  br i1 %192, label %193, label %196

193:                                              ; preds = %191
  %194 = load i8*, i8** %22, align 8
  %195 = getelementptr inbounds i8, i8* %194, i32 1
  store i8* %195, i8** %22, align 8
  store i8 0, i8* %194, align 1
  br label %181

196:                                              ; preds = %191
  %197 = load i8*, i8** %23, align 8
  %198 = load i8, i8* %197, align 1
  %199 = icmp ne i8 %198, 0
  br i1 %199, label %201, label %200

200:                                              ; preds = %196
  br label %437

201:                                              ; preds = %196
  %202 = load i8*, i8** %23, align 8
  %203 = call i64 @strcasecmp(i8* %202, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  %204 = icmp ne i64 %203, 0
  br i1 %204, label %251, label %205

205:                                              ; preds = %201
  %206 = load i8*, i8** %22, align 8
  store i8* %206, i8** %24, align 8
  br label %207

207:                                              ; preds = %220, %205
  %208 = load i8*, i8** %22, align 8
  %209 = load i8, i8* %208, align 1
  %210 = sext i8 %209 to i32
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %218

212:                                              ; preds = %207
  %213 = load i8*, i8** %22, align 8
  %214 = load i8, i8* %213, align 1
  %215 = call i64 @isspace(i8 signext %214)
  %216 = icmp ne i64 %215, 0
  %217 = xor i1 %216, true
  br label %218

218:                                              ; preds = %212, %207
  %219 = phi i1 [ false, %207 ], [ %217, %212 ]
  br i1 %219, label %220, label %223

220:                                              ; preds = %218
  %221 = load i8*, i8** %22, align 8
  %222 = getelementptr inbounds i8, i8* %221, i32 1
  store i8* %222, i8** %22, align 8
  br label %207

223:                                              ; preds = %218
  br label %224

224:                                              ; preds = %236, %223
  %225 = load i8*, i8** %22, align 8
  %226 = load i8, i8* %225, align 1
  %227 = sext i8 %226 to i32
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %229, label %234

229:                                              ; preds = %224
  %230 = load i8*, i8** %22, align 8
  %231 = load i8, i8* %230, align 1
  %232 = call i64 @isspace(i8 signext %231)
  %233 = icmp ne i64 %232, 0
  br label %234

234:                                              ; preds = %229, %224
  %235 = phi i1 [ false, %224 ], [ %233, %229 ]
  br i1 %235, label %236, label %239

236:                                              ; preds = %234
  %237 = load i8*, i8** %22, align 8
  %238 = getelementptr inbounds i8, i8* %237, i32 1
  store i8* %238, i8** %22, align 8
  store i8 0, i8* %237, align 1
  br label %224

239:                                              ; preds = %234
  %240 = load i8*, i8** %24, align 8
  %241 = load i32*, i32** %17, align 8
  %242 = call i32 @config_parse_duration(i8* %240, i32* %241)
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %250, label %244

244:                                              ; preds = %239
  %245 = load i64, i64* %12, align 8
  %246 = load i8*, i8** %13, align 8
  %247 = load i8*, i8** %24, align 8
  %248 = load i8*, i8** %23, align 8
  %249 = call i32 (i8*, i64, i8*, i8*, ...) @error(i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str.5, i64 0, i64 0), i64 %245, i8* %246, i8* %247, i8* %248)
  br label %250

250:                                              ; preds = %244, %239
  br label %436

251:                                              ; preds = %201
  %252 = load i8*, i8** %23, align 8
  %253 = load i8*, i8** @HEALTH_EVERY_KEY, align 8
  %254 = call i64 @strcasecmp(i8* %252, i8* %253)
  %255 = icmp ne i64 %254, 0
  br i1 %255, label %302, label %256

256:                                              ; preds = %251
  %257 = load i8*, i8** %22, align 8
  store i8* %257, i8** %25, align 8
  br label %258

258:                                              ; preds = %271, %256
  %259 = load i8*, i8** %22, align 8
  %260 = load i8, i8* %259, align 1
  %261 = sext i8 %260 to i32
  %262 = icmp ne i32 %261, 0
  br i1 %262, label %263, label %269

263:                                              ; preds = %258
  %264 = load i8*, i8** %22, align 8
  %265 = load i8, i8* %264, align 1
  %266 = call i64 @isspace(i8 signext %265)
  %267 = icmp ne i64 %266, 0
  %268 = xor i1 %267, true
  br label %269

269:                                              ; preds = %263, %258
  %270 = phi i1 [ false, %258 ], [ %268, %263 ]
  br i1 %270, label %271, label %274

271:                                              ; preds = %269
  %272 = load i8*, i8** %22, align 8
  %273 = getelementptr inbounds i8, i8* %272, i32 1
  store i8* %273, i8** %22, align 8
  br label %258

274:                                              ; preds = %269
  br label %275

275:                                              ; preds = %287, %274
  %276 = load i8*, i8** %22, align 8
  %277 = load i8, i8* %276, align 1
  %278 = sext i8 %277 to i32
  %279 = icmp ne i32 %278, 0
  br i1 %279, label %280, label %285

280:                                              ; preds = %275
  %281 = load i8*, i8** %22, align 8
  %282 = load i8, i8* %281, align 1
  %283 = call i64 @isspace(i8 signext %282)
  %284 = icmp ne i64 %283, 0
  br label %285

285:                                              ; preds = %280, %275
  %286 = phi i1 [ false, %275 ], [ %284, %280 ]
  br i1 %286, label %287, label %290

287:                                              ; preds = %285
  %288 = load i8*, i8** %22, align 8
  %289 = getelementptr inbounds i8, i8* %288, i32 1
  store i8* %289, i8** %22, align 8
  store i8 0, i8* %288, align 1
  br label %275

290:                                              ; preds = %285
  %291 = load i8*, i8** %25, align 8
  %292 = load i32*, i32** %18, align 8
  %293 = call i32 @config_parse_duration(i8* %291, i32* %292)
  %294 = icmp ne i32 %293, 0
  br i1 %294, label %301, label %295

295:                                              ; preds = %290
  %296 = load i64, i64* %12, align 8
  %297 = load i8*, i8** %13, align 8
  %298 = load i8*, i8** %25, align 8
  %299 = load i8*, i8** %23, align 8
  %300 = call i32 (i8*, i64, i8*, i8*, ...) @error(i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str.5, i64 0, i64 0), i64 %296, i8* %297, i8* %298, i8* %299)
  br label %301

301:                                              ; preds = %295, %290
  br label %435

302:                                              ; preds = %251
  %303 = load i8*, i8** %23, align 8
  %304 = call i64 @strcasecmp(i8* %303, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0))
  %305 = icmp ne i64 %304, 0
  br i1 %305, label %306, label %314

306:                                              ; preds = %302
  %307 = load i8*, i8** %23, align 8
  %308 = call i64 @strcasecmp(i8* %307, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0))
  %309 = icmp ne i64 %308, 0
  br i1 %309, label %310, label %314

310:                                              ; preds = %306
  %311 = load i8*, i8** %23, align 8
  %312 = call i64 @strcasecmp(i8* %311, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0))
  %313 = icmp ne i64 %312, 0
  br i1 %313, label %319, label %314

314:                                              ; preds = %310, %306, %302
  %315 = load i32, i32* @RRDR_OPTION_ABSOLUTE, align 4
  %316 = load i32*, i32** %19, align 8
  %317 = load i32, i32* %316, align 4
  %318 = or i32 %317, %315
  store i32 %318, i32* %316, align 4
  br label %434

319:                                              ; preds = %310
  %320 = load i8*, i8** %23, align 8
  %321 = call i64 @strcasecmp(i8* %320, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0))
  %322 = icmp ne i64 %321, 0
  br i1 %322, label %328, label %323

323:                                              ; preds = %319
  %324 = load i32, i32* @RRDR_OPTION_MIN2MAX, align 4
  %325 = load i32*, i32** %19, align 8
  %326 = load i32, i32* %325, align 4
  %327 = or i32 %326, %324
  store i32 %327, i32* %325, align 4
  br label %433

328:                                              ; preds = %319
  %329 = load i8*, i8** %23, align 8
  %330 = call i64 @strcasecmp(i8* %329, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0))
  %331 = icmp ne i64 %330, 0
  br i1 %331, label %337, label %332

332:                                              ; preds = %328
  %333 = load i32, i32* @RRDR_OPTION_NULL2ZERO, align 4
  %334 = load i32*, i32** %19, align 8
  %335 = load i32, i32* %334, align 4
  %336 = or i32 %335, %333
  store i32 %336, i32* %334, align 4
  br label %432

337:                                              ; preds = %328
  %338 = load i8*, i8** %23, align 8
  %339 = call i64 @strcasecmp(i8* %338, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i64 0, i64 0))
  %340 = icmp ne i64 %339, 0
  br i1 %340, label %346, label %341

341:                                              ; preds = %337
  %342 = load i32, i32* @RRDR_OPTION_PERCENTAGE, align 4
  %343 = load i32*, i32** %19, align 8
  %344 = load i32, i32* %343, align 4
  %345 = or i32 %344, %342
  store i32 %345, i32* %343, align 4
  br label %431

346:                                              ; preds = %337
  %347 = load i8*, i8** %23, align 8
  %348 = call i64 @strcasecmp(i8* %347, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0))
  %349 = icmp ne i64 %348, 0
  br i1 %349, label %355, label %350

350:                                              ; preds = %346
  %351 = load i32, i32* @RRDR_OPTION_NOT_ALIGNED, align 4
  %352 = load i32*, i32** %19, align 8
  %353 = load i32, i32* %352, align 4
  %354 = or i32 %353, %351
  store i32 %354, i32* %352, align 4
  br label %430

355:                                              ; preds = %346
  %356 = load i8*, i8** %23, align 8
  %357 = call i64 @strcasecmp(i8* %356, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0))
  %358 = icmp ne i64 %357, 0
  br i1 %358, label %359, label %363

359:                                              ; preds = %355
  %360 = load i8*, i8** %23, align 8
  %361 = call i64 @strcasecmp(i8* %360, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i64 0, i64 0))
  %362 = icmp ne i64 %361, 0
  br i1 %362, label %368, label %363

363:                                              ; preds = %359, %355
  %364 = load i32, i32* @RRDR_OPTION_MATCH_IDS, align 4
  %365 = load i32*, i32** %19, align 8
  %366 = load i32, i32* %365, align 4
  %367 = or i32 %366, %364
  store i32 %367, i32* %365, align 4
  br label %429

368:                                              ; preds = %359
  %369 = load i8*, i8** %23, align 8
  %370 = call i64 @strcasecmp(i8* %369, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i64 0, i64 0))
  %371 = icmp ne i64 %370, 0
  br i1 %371, label %372, label %376

372:                                              ; preds = %368
  %373 = load i8*, i8** %23, align 8
  %374 = call i64 @strcasecmp(i8* %373, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i64 0, i64 0))
  %375 = icmp ne i64 %374, 0
  br i1 %375, label %381, label %376

376:                                              ; preds = %372, %368
  %377 = load i32, i32* @RRDR_OPTION_MATCH_NAMES, align 4
  %378 = load i32*, i32** %19, align 8
  %379 = load i32, i32* %378, align 4
  %380 = or i32 %379, %377
  store i32 %380, i32* %378, align 4
  br label %428

381:                                              ; preds = %372
  %382 = load i8*, i8** %23, align 8
  %383 = call i64 @strcasecmp(i8* %382, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i64 0, i64 0))
  %384 = icmp ne i64 %383, 0
  br i1 %384, label %412, label %385

385:                                              ; preds = %381
  store i8* null, i8** %26, align 8
  %386 = load i8*, i8** %22, align 8
  %387 = load i8, i8* %386, align 1
  %388 = sext i8 %387 to i32
  %389 = icmp ne i32 %388, 0
  br i1 %389, label %390, label %405

390:                                              ; preds = %385
  %391 = load i8*, i8** %22, align 8
  %392 = call i64 @strcasecmp(i8* %391, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i64 0, i64 0))
  %393 = icmp ne i64 %392, 0
  br i1 %393, label %394, label %405

394:                                              ; preds = %390
  %395 = load i8*, i8** %22, align 8
  %396 = call i8* @strcasestr(i8* %395, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i64 0, i64 0))
  store i8* %396, i8** %26, align 8
  %397 = load i8*, i8** %26, align 8
  %398 = icmp ne i8* %397, null
  br i1 %398, label %399, label %401

399:                                              ; preds = %394
  %400 = load i8*, i8** %26, align 8
  store i8 0, i8* %400, align 1
  br label %401

401:                                              ; preds = %399, %394
  %402 = load i8*, i8** %22, align 8
  %403 = call i8* @strdupz(i8* %402)
  %404 = load i8**, i8*** %20, align 8
  store i8* %403, i8** %404, align 8
  br label %405

405:                                              ; preds = %401, %390, %385
  %406 = load i8*, i8** %26, align 8
  %407 = icmp ne i8* %406, null
  br i1 %407, label %409, label %408

408:                                              ; preds = %405
  br label %437

409:                                              ; preds = %405
  %410 = load i8*, i8** %26, align 8
  %411 = getelementptr inbounds i8, i8* %410, i32 1
  store i8* %411, i8** %26, align 8
  store i8* %411, i8** %22, align 8
  br label %427

412:                                              ; preds = %381
  %413 = load i8*, i8** %23, align 8
  %414 = load i8*, i8** @HEALTH_FOREACH_KEY, align 8
  %415 = call i64 @strcasecmp(i8* %413, i8* %414)
  %416 = icmp ne i64 %415, 0
  br i1 %416, label %421, label %417

417:                                              ; preds = %412
  %418 = load i8*, i8** %22, align 8
  %419 = call i8* @strdupz(i8* %418)
  %420 = load i8**, i8*** %21, align 8
  store i8* %419, i8** %420, align 8
  br label %437

421:                                              ; preds = %412
  %422 = load i64, i64* %12, align 8
  %423 = load i8*, i8** %13, align 8
  %424 = load i8*, i8** %23, align 8
  %425 = call i32 (i8*, i64, i8*, i8*, ...) @error(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.20, i64 0, i64 0), i64 %422, i8* %423, i8* %424)
  br label %426

426:                                              ; preds = %421
  br label %427

427:                                              ; preds = %426, %409
  br label %428

428:                                              ; preds = %427, %376
  br label %429

429:                                              ; preds = %428, %363
  br label %430

430:                                              ; preds = %429, %350
  br label %431

431:                                              ; preds = %430, %341
  br label %432

432:                                              ; preds = %431, %332
  br label %433

433:                                              ; preds = %432, %323
  br label %434

434:                                              ; preds = %433, %314
  br label %435

435:                                              ; preds = %434, %301
  br label %436

436:                                              ; preds = %435, %250
  br label %158

437:                                              ; preds = %417, %408, %200, %158
  store i32 1, i32* %11, align 4
  br label %438

438:                                              ; preds = %437, %148, %104, %92
  %439 = load i32, i32* %11, align 4
  ret i32 %439
}

declare dso_local i32 @debug(i32, i8*, i64, i8*, i8*) #1

declare dso_local i32 @freez(i8*) #1

declare dso_local i64 @isspace(i8 signext) #1

declare dso_local i32 @error(i8*, i64, i8*, i8*, ...) #1

declare dso_local i32 @web_client_api_request_v1_data_group(i8*, i32) #1

declare dso_local i32 @config_parse_duration(i8*, i32*) #1

; Function Attrs: nounwind readnone
declare dso_local i32 @abs(i32) #2

declare dso_local i64 @strcasecmp(i8*, i8*) #1

declare dso_local i8* @strcasestr(i8*, i8*) #1

declare dso_local i8* @strdupz(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
