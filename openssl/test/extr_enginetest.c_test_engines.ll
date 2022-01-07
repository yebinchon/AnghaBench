; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_enginetest.c_test_engines.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_enginetest.c_test_engines.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NUMTOADD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"test_id0\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"First test item\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"test_id1\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"Second test item\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"test_id2\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"Third test item\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"test_id3\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"Fourth test item\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"Engines:\00", align 1
@.str.9 = private unnamed_addr constant [53 x i8] c"Remove failed - probably no hardware support present\00", align 1
@.str.10 = private unnamed_addr constant [38 x i8] c"About to beef up the engine-type list\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"id%d\00", align 1
@.str.12 = private unnamed_addr constant [20 x i8] c"Fake engine type %d\00", align 1
@.str.13 = private unnamed_addr constant [30 x i8] c"Adding stopped at %d, (%s,%s)\00", align 1
@.str.14 = private unnamed_addr constant [36 x i8] c"About to empty the engine-type list\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @test_engines to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_engines() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca [256 x i8], align 16
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = load i32, i32* @NUMTOADD, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %1, align 8
  %16 = alloca i32*, i64 %14, align 16
  store i64 %14, i64* %2, align 8
  %17 = load i32, i32* @NUMTOADD, align 4
  %18 = zext i32 %17 to i64
  %19 = alloca i8*, i64 %18, align 16
  store i64 %18, i64* %3, align 8
  %20 = load i32, i32* @NUMTOADD, align 4
  %21 = zext i32 %20 to i64
  %22 = alloca i8*, i64 %21, align 16
  store i64 %21, i64* %4, align 8
  store i32 0, i32* %8, align 4
  store i32* null, i32** %9, align 8
  store i32* null, i32** %10, align 8
  store i32* null, i32** %11, align 8
  store i32* null, i32** %12, align 8
  %23 = mul nuw i64 8, %14
  %24 = trunc i64 %23 to i32
  %25 = call i32 @memset(i32** %16, i32 0, i32 %24)
  %26 = call i32* (...) @ENGINE_new()
  store i32* %26, i32** %9, align 8
  %27 = call i32 @TEST_ptr(i32* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %81

29:                                               ; preds = %0
  %30 = load i32*, i32** %9, align 8
  %31 = call i32 @ENGINE_set_id(i32* %30, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %32 = call i32 @TEST_true(i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %81

34:                                               ; preds = %29
  %35 = load i32*, i32** %9, align 8
  %36 = call i32 @ENGINE_set_name(i32* %35, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %37 = call i32 @TEST_true(i32 %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %81

39:                                               ; preds = %34
  %40 = call i32* (...) @ENGINE_new()
  store i32* %40, i32** %10, align 8
  %41 = call i32 @TEST_ptr(i32* %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %81

43:                                               ; preds = %39
  %44 = load i32*, i32** %10, align 8
  %45 = call i32 @ENGINE_set_id(i32* %44, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %46 = call i32 @TEST_true(i32 %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %81

48:                                               ; preds = %43
  %49 = load i32*, i32** %10, align 8
  %50 = call i32 @ENGINE_set_name(i32* %49, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  %51 = call i32 @TEST_true(i32 %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %81

53:                                               ; preds = %48
  %54 = call i32* (...) @ENGINE_new()
  store i32* %54, i32** %11, align 8
  %55 = call i32 @TEST_ptr(i32* %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %81

57:                                               ; preds = %53
  %58 = load i32*, i32** %11, align 8
  %59 = call i32 @ENGINE_set_id(i32* %58, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %60 = call i32 @TEST_true(i32 %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %81

62:                                               ; preds = %57
  %63 = load i32*, i32** %11, align 8
  %64 = call i32 @ENGINE_set_name(i32* %63, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0))
  %65 = call i32 @TEST_true(i32 %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %81

67:                                               ; preds = %62
  %68 = call i32* (...) @ENGINE_new()
  store i32* %68, i32** %12, align 8
  %69 = call i32 @TEST_ptr(i32* %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %81

71:                                               ; preds = %67
  %72 = load i32*, i32** %12, align 8
  %73 = call i32 @ENGINE_set_id(i32* %72, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0))
  %74 = call i32 @TEST_true(i32 %73)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %71
  %77 = load i32*, i32** %12, align 8
  %78 = call i32 @ENGINE_set_name(i32* %77, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0))
  %79 = call i32 @TEST_true(i32 %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %82, label %81

81:                                               ; preds = %76, %71, %67, %62, %57, %53, %48, %43, %39, %34, %29, %0
  br label %310

82:                                               ; preds = %76
  %83 = call i32 @TEST_info(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0))
  %84 = call i32 (...) @display_engine_list()
  %85 = load i32*, i32** %9, align 8
  %86 = call i32 @ENGINE_add(i32* %85)
  %87 = call i32 @TEST_true(i32 %86)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %90, label %89

89:                                               ; preds = %82
  br label %310

90:                                               ; preds = %82
  %91 = call i32 @TEST_info(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0))
  %92 = call i32 (...) @display_engine_list()
  %93 = call i32* (...) @ENGINE_get_first()
  store i32* %93, i32** %6, align 8
  %94 = load i32*, i32** %6, align 8
  %95 = call i32 @ENGINE_remove(i32* %94)
  %96 = call i32 @TEST_true(i32 %95)
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %99, label %98

98:                                               ; preds = %90
  br label %310

99:                                               ; preds = %90
  %100 = load i32*, i32** %6, align 8
  %101 = call i32 @ENGINE_free(i32* %100)
  %102 = call i32 @TEST_info(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0))
  %103 = call i32 (...) @display_engine_list()
  %104 = load i32*, i32** %11, align 8
  %105 = call i32 @ENGINE_add(i32* %104)
  %106 = call i32 @TEST_true(i32 %105)
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %113

108:                                              ; preds = %99
  %109 = load i32*, i32** %10, align 8
  %110 = call i32 @ENGINE_add(i32* %109)
  %111 = call i32 @TEST_true(i32 %110)
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %114, label %113

113:                                              ; preds = %108, %99
  br label %310

114:                                              ; preds = %108
  %115 = call i32 @TEST_info(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0))
  %116 = call i32 (...) @display_engine_list()
  %117 = load i32*, i32** %10, align 8
  %118 = call i32 @ENGINE_remove(i32* %117)
  %119 = call i32 @TEST_true(i32 %118)
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %122, label %121

121:                                              ; preds = %114
  br label %310

122:                                              ; preds = %114
  %123 = call i32 @TEST_info(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0))
  %124 = call i32 (...) @display_engine_list()
  %125 = load i32*, i32** %12, align 8
  %126 = call i32 @ENGINE_add(i32* %125)
  %127 = call i32 @TEST_true(i32 %126)
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %130, label %129

129:                                              ; preds = %122
  br label %310

130:                                              ; preds = %122
  %131 = call i32 @TEST_info(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0))
  %132 = call i32 (...) @display_engine_list()
  %133 = load i32*, i32** %11, align 8
  %134 = call i32 @ENGINE_add(i32* %133)
  %135 = call i32 @TEST_false(i32 %134)
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %138, label %137

137:                                              ; preds = %130
  br label %310

138:                                              ; preds = %130
  %139 = call i32 (...) @ERR_clear_error()
  %140 = load i32*, i32** %10, align 8
  %141 = call i32 @ENGINE_remove(i32* %140)
  %142 = call i32 @TEST_false(i32 %141)
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %145, label %144

144:                                              ; preds = %138
  br label %310

145:                                              ; preds = %138
  %146 = call i32 (...) @ERR_clear_error()
  %147 = load i32*, i32** %11, align 8
  %148 = call i32 @ENGINE_remove(i32* %147)
  %149 = call i32 @TEST_true(i32 %148)
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %152, label %151

151:                                              ; preds = %145
  br label %310

152:                                              ; preds = %145
  %153 = call i32 @TEST_info(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0))
  %154 = call i32 (...) @display_engine_list()
  %155 = load i32*, i32** %12, align 8
  %156 = call i32 @ENGINE_remove(i32* %155)
  %157 = call i32 @TEST_true(i32 %156)
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %160, label %159

159:                                              ; preds = %152
  br label %310

160:                                              ; preds = %152
  %161 = call i32 @TEST_info(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0))
  %162 = call i32 (...) @display_engine_list()
  %163 = call i32* (...) @ENGINE_get_first()
  store i32* %163, i32** %6, align 8
  %164 = icmp ne i32* %163, null
  br i1 %164, label %165, label %172

165:                                              ; preds = %160
  %166 = load i32*, i32** %6, align 8
  %167 = call i32 @ENGINE_remove(i32* %166)
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %171, label %169

169:                                              ; preds = %165
  %170 = call i32 @TEST_info(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.9, i64 0, i64 0))
  br label %171

171:                                              ; preds = %169, %165
  br label %172

172:                                              ; preds = %171, %160
  %173 = load i32*, i32** %6, align 8
  %174 = call i32 @ENGINE_free(i32* %173)
  %175 = call i32 @TEST_info(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0))
  %176 = call i32 (...) @display_engine_list()
  %177 = load i32*, i32** %9, align 8
  %178 = call i32 @ENGINE_add(i32* %177)
  %179 = call i32 @TEST_true(i32 %178)
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %186

181:                                              ; preds = %172
  %182 = load i32*, i32** %9, align 8
  %183 = call i32 @ENGINE_remove(i32* %182)
  %184 = call i32 @TEST_true(i32 %183)
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %187, label %186

186:                                              ; preds = %181, %172
  br label %310

187:                                              ; preds = %181
  %188 = call i32 @TEST_info(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.10, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  br label %189

189:                                              ; preds = %242, %187
  %190 = load i32, i32* %7, align 4
  %191 = load i32, i32* @NUMTOADD, align 4
  %192 = icmp slt i32 %190, %191
  br i1 %192, label %193, label %245

193:                                              ; preds = %189
  %194 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %195 = load i32, i32* %7, align 4
  %196 = call i32 @sprintf(i8* %194, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i32 %195)
  %197 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %198 = call i8* @OPENSSL_strdup(i8* %197)
  %199 = load i32, i32* %7, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds i8*, i8** %19, i64 %200
  store i8* %198, i8** %201, align 8
  %202 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %203 = load i32, i32* %7, align 4
  %204 = call i32 @sprintf(i8* %202, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.12, i64 0, i64 0), i32 %203)
  %205 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %206 = call i8* @OPENSSL_strdup(i8* %205)
  %207 = load i32, i32* %7, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds i8*, i8** %22, i64 %208
  store i8* %206, i8** %209, align 8
  %210 = call i32* (...) @ENGINE_new()
  %211 = load i32, i32* %7, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds i32*, i32** %16, i64 %212
  store i32* %210, i32** %213, align 8
  %214 = call i32 @TEST_ptr(i32* %210)
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %240

216:                                              ; preds = %193
  %217 = load i32, i32* %7, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds i32*, i32** %16, i64 %218
  %220 = load i32*, i32** %219, align 8
  %221 = load i32, i32* %7, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds i8*, i8** %19, i64 %222
  %224 = load i8*, i8** %223, align 8
  %225 = call i32 @ENGINE_set_id(i32* %220, i8* %224)
  %226 = call i32 @TEST_true(i32 %225)
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %228, label %240

228:                                              ; preds = %216
  %229 = load i32, i32* %7, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds i32*, i32** %16, i64 %230
  %232 = load i32*, i32** %231, align 8
  %233 = load i32, i32* %7, align 4
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds i8*, i8** %22, i64 %234
  %236 = load i8*, i8** %235, align 8
  %237 = call i32 @ENGINE_set_name(i32* %232, i8* %236)
  %238 = call i32 @TEST_true(i32 %237)
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %241, label %240

240:                                              ; preds = %228, %216, %193
  br label %310

241:                                              ; preds = %228
  br label %242

242:                                              ; preds = %241
  %243 = load i32, i32* %7, align 4
  %244 = add nsw i32 %243, 1
  store i32 %244, i32* %7, align 4
  br label %189

245:                                              ; preds = %189
  store i32 0, i32* %7, align 4
  br label %246

246:                                              ; preds = %272, %245
  %247 = load i32, i32* %7, align 4
  %248 = load i32, i32* @NUMTOADD, align 4
  %249 = icmp slt i32 %247, %248
  br i1 %249, label %250, label %275

250:                                              ; preds = %246
  %251 = load i32, i32* %7, align 4
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds i32*, i32** %16, i64 %252
  %254 = load i32*, i32** %253, align 8
  %255 = call i32 @ENGINE_add(i32* %254)
  %256 = call i32 @TEST_true(i32 %255)
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %271, label %258

258:                                              ; preds = %250
  %259 = load i32, i32* %7, align 4
  %260 = load i32, i32* %7, align 4
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds i32*, i32** %16, i64 %261
  %263 = load i32*, i32** %262, align 8
  %264 = call i32 @ENGINE_get_id(i32* %263)
  %265 = load i32, i32* %7, align 4
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds i32*, i32** %16, i64 %266
  %268 = load i32*, i32** %267, align 8
  %269 = call i32 @ENGINE_get_name(i32* %268)
  %270 = call i32 @test_note(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.13, i64 0, i64 0), i32 %259, i32 %264, i32 %269)
  br label %276

271:                                              ; preds = %250
  br label %272

272:                                              ; preds = %271
  %273 = load i32, i32* %7, align 4
  %274 = add nsw i32 %273, 1
  store i32 %274, i32* %7, align 4
  br label %246

275:                                              ; preds = %246
  br label %276

276:                                              ; preds = %275, %258
  %277 = call i32 @TEST_info(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.14, i64 0, i64 0))
  br label %278

278:                                              ; preds = %287, %276
  %279 = call i32* (...) @ENGINE_get_first()
  store i32* %279, i32** %6, align 8
  %280 = icmp ne i32* %279, null
  br i1 %280, label %281, label %290

281:                                              ; preds = %278
  %282 = load i32*, i32** %6, align 8
  %283 = call i32 @ENGINE_remove(i32* %282)
  %284 = call i32 @TEST_true(i32 %283)
  %285 = icmp ne i32 %284, 0
  br i1 %285, label %287, label %286

286:                                              ; preds = %281
  br label %310

287:                                              ; preds = %281
  %288 = load i32*, i32** %6, align 8
  %289 = call i32 @ENGINE_free(i32* %288)
  br label %278

290:                                              ; preds = %278
  store i32 0, i32* %7, align 4
  br label %291

291:                                              ; preds = %306, %290
  %292 = load i32, i32* %7, align 4
  %293 = load i32, i32* @NUMTOADD, align 4
  %294 = icmp slt i32 %292, %293
  br i1 %294, label %295, label %309

295:                                              ; preds = %291
  %296 = load i32, i32* %7, align 4
  %297 = sext i32 %296 to i64
  %298 = getelementptr inbounds i8*, i8** %19, i64 %297
  %299 = load i8*, i8** %298, align 8
  %300 = call i32 @OPENSSL_free(i8* %299)
  %301 = load i32, i32* %7, align 4
  %302 = sext i32 %301 to i64
  %303 = getelementptr inbounds i8*, i8** %22, i64 %302
  %304 = load i8*, i8** %303, align 8
  %305 = call i32 @OPENSSL_free(i8* %304)
  br label %306

306:                                              ; preds = %295
  %307 = load i32, i32* %7, align 4
  %308 = add nsw i32 %307, 1
  store i32 %308, i32* %7, align 4
  br label %291

309:                                              ; preds = %291
  store i32 1, i32* %8, align 4
  br label %310

310:                                              ; preds = %309, %286, %240, %186, %159, %151, %144, %137, %129, %121, %113, %98, %89, %81
  %311 = load i32*, i32** %9, align 8
  %312 = call i32 @ENGINE_free(i32* %311)
  %313 = load i32*, i32** %10, align 8
  %314 = call i32 @ENGINE_free(i32* %313)
  %315 = load i32*, i32** %11, align 8
  %316 = call i32 @ENGINE_free(i32* %315)
  %317 = load i32*, i32** %12, align 8
  %318 = call i32 @ENGINE_free(i32* %317)
  store i32 0, i32* %7, align 4
  br label %319

319:                                              ; preds = %329, %310
  %320 = load i32, i32* %7, align 4
  %321 = load i32, i32* @NUMTOADD, align 4
  %322 = icmp slt i32 %320, %321
  br i1 %322, label %323, label %332

323:                                              ; preds = %319
  %324 = load i32, i32* %7, align 4
  %325 = sext i32 %324 to i64
  %326 = getelementptr inbounds i32*, i32** %16, i64 %325
  %327 = load i32*, i32** %326, align 8
  %328 = call i32 @ENGINE_free(i32* %327)
  br label %329

329:                                              ; preds = %323
  %330 = load i32, i32* %7, align 4
  %331 = add nsw i32 %330, 1
  store i32 %331, i32* %7, align 4
  br label %319

332:                                              ; preds = %319
  %333 = load i32, i32* %8, align 4
  %334 = load i8*, i8** %1, align 8
  call void @llvm.stackrestore(i8* %334)
  ret i32 %333
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(i32**, i32, i32) #2

declare dso_local i32 @TEST_ptr(i32*) #2

declare dso_local i32* @ENGINE_new(...) #2

declare dso_local i32 @TEST_true(i32) #2

declare dso_local i32 @ENGINE_set_id(i32*, i8*) #2

declare dso_local i32 @ENGINE_set_name(i32*, i8*) #2

declare dso_local i32 @TEST_info(i8*) #2

declare dso_local i32 @display_engine_list(...) #2

declare dso_local i32 @ENGINE_add(i32*) #2

declare dso_local i32* @ENGINE_get_first(...) #2

declare dso_local i32 @ENGINE_remove(i32*) #2

declare dso_local i32 @ENGINE_free(i32*) #2

declare dso_local i32 @TEST_false(i32) #2

declare dso_local i32 @ERR_clear_error(...) #2

declare dso_local i32 @sprintf(i8*, i8*, i32) #2

declare dso_local i8* @OPENSSL_strdup(i8*) #2

declare dso_local i32 @test_note(i8*, i32, i32, i32) #2

declare dso_local i32 @ENGINE_get_id(i32*) #2

declare dso_local i32 @ENGINE_get_name(i32*) #2

declare dso_local i32 @OPENSSL_free(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
