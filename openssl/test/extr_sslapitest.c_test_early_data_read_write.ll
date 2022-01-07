; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_sslapitest.c_test_early_data_read_write.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_sslapitest.c_test_early_data_read_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MSG1 = common dso_local global i8* null, align 8
@SSL_READ_EARLY_DATA_SUCCESS = common dso_local global i32 0, align 4
@SSL_EARLY_DATA_ACCEPTED = common dso_local global i32 0, align 4
@MSG2 = common dso_local global i8* null, align 8
@MSG3 = common dso_local global i8* null, align 8
@MSG4 = common dso_local global i8* null, align 8
@MSG5 = common dso_local global i8* null, align 8
@SSL3_RT_HEADER_LENGTH = common dso_local global i8 0, align 1
@SSL_READ_EARLY_DATA_FINISH = common dso_local global i32 0, align 4
@MSG6 = common dso_local global i8* null, align 8
@SSL_READ_EARLY_DATA_ERROR = common dso_local global i32 0, align 4
@MSG7 = common dso_local global i8* null, align 8
@use_session_cb_cnt = common dso_local global i64 0, align 8
@find_session_cb_cnt = common dso_local global i64 0, align 8
@clientpsk = common dso_local global i32* null, align 8
@serverpsk = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @test_early_data_read_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_early_data_read_write(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca [20 x i8], align 16
  %10 = alloca [1024 x i8], align 16
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32*, align 8
  store i32 %0, i32* %2, align 4
  store i32* null, i32** %3, align 8
  store i32* null, i32** %4, align 8
  store i32* null, i32** %5, align 8
  store i32* null, i32** %6, align 8
  store i32 0, i32* %7, align 4
  store i32* null, i32** %8, align 8
  %17 = load i32, i32* %2, align 4
  %18 = call i32 @setupearly_data_test(i32** %3, i32** %4, i32** %5, i32** %6, i32** %8, i32 %17)
  %19 = call i32 @TEST_true(i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %1
  br label %459

22:                                               ; preds = %1
  %23 = load i32*, i32** %5, align 8
  %24 = load i8*, i8** @MSG1, align 8
  %25 = load i8*, i8** @MSG1, align 8
  %26 = call i64 @strlen(i8* %25)
  %27 = call i32 @SSL_write_early_data(i32* %23, i8* %24, i64 %26, i64* %12)
  %28 = call i32 @TEST_true(i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %57

30:                                               ; preds = %22
  %31 = load i64, i64* %12, align 8
  %32 = load i8*, i8** @MSG1, align 8
  %33 = call i64 @strlen(i8* %32)
  %34 = call i32 @TEST_size_t_eq(i64 %31, i64 %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %57

36:                                               ; preds = %30
  %37 = load i32*, i32** %6, align 8
  %38 = getelementptr inbounds [20 x i8], [20 x i8]* %9, i64 0, i64 0
  %39 = call i32 @SSL_read_early_data(i32* %37, i8* %38, i32 20, i64* %11)
  %40 = load i32, i32* @SSL_READ_EARLY_DATA_SUCCESS, align 4
  %41 = call i32 @TEST_int_eq(i32 %39, i32 %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %57

43:                                               ; preds = %36
  %44 = load i8*, i8** @MSG1, align 8
  %45 = load i64, i64* %11, align 8
  %46 = getelementptr inbounds [20 x i8], [20 x i8]* %9, i64 0, i64 0
  %47 = load i8*, i8** @MSG1, align 8
  %48 = call i64 @strlen(i8* %47)
  %49 = call i32 @TEST_mem_eq(i8* %44, i64 %45, i8* %46, i64 %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %43
  %52 = load i32*, i32** %6, align 8
  %53 = call i32 @SSL_get_early_data_status(i32* %52)
  %54 = load i32, i32* @SSL_EARLY_DATA_ACCEPTED, align 4
  %55 = call i32 @TEST_int_eq(i32 %53, i32 %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %51, %43, %36, %30, %22
  br label %459

58:                                               ; preds = %51
  %59 = load i32*, i32** %6, align 8
  %60 = load i8*, i8** @MSG2, align 8
  %61 = load i8*, i8** @MSG2, align 8
  %62 = call i64 @strlen(i8* %61)
  %63 = call i32 @SSL_write_early_data(i32* %59, i8* %60, i64 %62, i64* %12)
  %64 = call i32 @TEST_true(i32 %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %86

66:                                               ; preds = %58
  %67 = load i64, i64* %12, align 8
  %68 = load i8*, i8** @MSG2, align 8
  %69 = call i64 @strlen(i8* %68)
  %70 = call i32 @TEST_size_t_eq(i64 %67, i64 %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %86

72:                                               ; preds = %66
  %73 = load i32*, i32** %5, align 8
  %74 = getelementptr inbounds [20 x i8], [20 x i8]* %9, i64 0, i64 0
  %75 = call i32 @SSL_read_ex(i32* %73, i8* %74, i32 20, i64* %11)
  %76 = call i32 @TEST_true(i32 %75)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %86

78:                                               ; preds = %72
  %79 = getelementptr inbounds [20 x i8], [20 x i8]* %9, i64 0, i64 0
  %80 = load i64, i64* %11, align 8
  %81 = load i8*, i8** @MSG2, align 8
  %82 = load i8*, i8** @MSG2, align 8
  %83 = call i64 @strlen(i8* %82)
  %84 = call i32 @TEST_mem_eq(i8* %79, i64 %80, i8* %81, i64 %83)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %87, label %86

86:                                               ; preds = %78, %72, %66, %58
  br label %459

87:                                               ; preds = %78
  %88 = load i32*, i32** %5, align 8
  %89 = load i8*, i8** @MSG3, align 8
  %90 = load i8*, i8** @MSG3, align 8
  %91 = call i64 @strlen(i8* %90)
  %92 = call i32 @SSL_write_early_data(i32* %88, i8* %89, i64 %91, i64* %12)
  %93 = call i32 @TEST_true(i32 %92)
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %101

95:                                               ; preds = %87
  %96 = load i64, i64* %12, align 8
  %97 = load i8*, i8** @MSG3, align 8
  %98 = call i64 @strlen(i8* %97)
  %99 = call i32 @TEST_size_t_eq(i64 %96, i64 %98)
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %102, label %101

101:                                              ; preds = %95, %87
  br label %459

102:                                              ; preds = %95
  %103 = load i32*, i32** %6, align 8
  %104 = getelementptr inbounds [20 x i8], [20 x i8]* %9, i64 0, i64 0
  %105 = call i32 @SSL_read_early_data(i32* %103, i8* %104, i32 20, i64* %11)
  %106 = load i32, i32* @SSL_READ_EARLY_DATA_SUCCESS, align 4
  %107 = call i32 @TEST_int_eq(i32 %105, i32 %106)
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %117

109:                                              ; preds = %102
  %110 = getelementptr inbounds [20 x i8], [20 x i8]* %9, i64 0, i64 0
  %111 = load i64, i64* %11, align 8
  %112 = load i8*, i8** @MSG3, align 8
  %113 = load i8*, i8** @MSG3, align 8
  %114 = call i64 @strlen(i8* %113)
  %115 = call i32 @TEST_mem_eq(i8* %110, i64 %111, i8* %112, i64 %114)
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %118, label %117

117:                                              ; preds = %109, %102
  br label %459

118:                                              ; preds = %109
  %119 = load i32*, i32** %6, align 8
  %120 = load i8*, i8** @MSG4, align 8
  %121 = load i8*, i8** @MSG4, align 8
  %122 = call i64 @strlen(i8* %121)
  %123 = call i32 @SSL_write_early_data(i32* %119, i8* %120, i64 %122, i64* %12)
  %124 = call i32 @TEST_true(i32 %123)
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %146

126:                                              ; preds = %118
  %127 = load i64, i64* %12, align 8
  %128 = load i8*, i8** @MSG4, align 8
  %129 = call i64 @strlen(i8* %128)
  %130 = call i32 @TEST_size_t_eq(i64 %127, i64 %129)
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %146

132:                                              ; preds = %126
  %133 = load i32*, i32** %5, align 8
  %134 = getelementptr inbounds [20 x i8], [20 x i8]* %9, i64 0, i64 0
  %135 = call i32 @SSL_read_ex(i32* %133, i8* %134, i32 20, i64* %11)
  %136 = call i32 @TEST_true(i32 %135)
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %146

138:                                              ; preds = %132
  %139 = getelementptr inbounds [20 x i8], [20 x i8]* %9, i64 0, i64 0
  %140 = load i64, i64* %11, align 8
  %141 = load i8*, i8** @MSG4, align 8
  %142 = load i8*, i8** @MSG4, align 8
  %143 = call i64 @strlen(i8* %142)
  %144 = call i32 @TEST_mem_eq(i8* %139, i64 %140, i8* %141, i64 %143)
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %147, label %146

146:                                              ; preds = %138, %132, %126, %118
  br label %459

147:                                              ; preds = %138
  %148 = load i32*, i32** %5, align 8
  %149 = load i8*, i8** @MSG5, align 8
  %150 = load i8*, i8** @MSG5, align 8
  %151 = call i64 @strlen(i8* %150)
  %152 = call i32 @SSL_write_ex(i32* %148, i8* %149, i64 %151, i64* %12)
  %153 = call i32 @TEST_true(i32 %152)
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %167

155:                                              ; preds = %147
  %156 = load i64, i64* %12, align 8
  %157 = load i8*, i8** @MSG5, align 8
  %158 = call i64 @strlen(i8* %157)
  %159 = call i32 @TEST_size_t_eq(i64 %156, i64 %158)
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %167

161:                                              ; preds = %155
  %162 = load i32*, i32** %5, align 8
  %163 = call i32 @SSL_get_early_data_status(i32* %162)
  %164 = load i32, i32* @SSL_EARLY_DATA_ACCEPTED, align 4
  %165 = call i32 @TEST_int_eq(i32 %163, i32 %164)
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %168, label %167

167:                                              ; preds = %161, %155, %147
  br label %459

168:                                              ; preds = %161
  %169 = load i32*, i32** %6, align 8
  %170 = call i32* @SSL_get_rbio(i32* %169)
  store i32* %170, i32** %16, align 8
  %171 = load i32*, i32** %16, align 8
  %172 = getelementptr inbounds [1024 x i8], [1024 x i8]* %10, i64 0, i64 0
  %173 = call i32 @BIO_read_ex(i32* %171, i8* %172, i32 1024, i64* %14)
  %174 = call i32 @TEST_true(i32 %173)
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %185

176:                                              ; preds = %168
  %177 = load i64, i64* %14, align 8
  %178 = call i32 @TEST_size_t_lt(i64 %177, i32 1024)
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %185

180:                                              ; preds = %176
  %181 = load i64, i64* %14, align 8
  %182 = load i8, i8* @SSL3_RT_HEADER_LENGTH, align 1
  %183 = call i32 @TEST_size_t_gt(i64 %181, i8 zeroext %182)
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %186, label %185

185:                                              ; preds = %180, %176, %168
  br label %459

186:                                              ; preds = %180
  %187 = load i8, i8* @SSL3_RT_HEADER_LENGTH, align 1
  %188 = zext i8 %187 to i32
  %189 = getelementptr inbounds [1024 x i8], [1024 x i8]* %10, i64 0, i64 3
  %190 = load i8, i8* %189, align 1
  %191 = zext i8 %190 to i32
  %192 = shl i32 %191, 8
  %193 = getelementptr inbounds [1024 x i8], [1024 x i8]* %10, i64 0, i64 4
  %194 = load i8, i8* %193, align 4
  %195 = zext i8 %194 to i32
  %196 = or i32 %192, %195
  %197 = add nsw i32 %188, %196
  %198 = sext i32 %197 to i64
  store i64 %198, i64* %13, align 8
  %199 = load i32*, i32** %16, align 8
  %200 = getelementptr inbounds [1024 x i8], [1024 x i8]* %10, i64 0, i64 0
  %201 = load i64, i64* %13, align 8
  %202 = call i32 @BIO_write_ex(i32* %199, i8* %200, i64 %201, i64* %15)
  %203 = call i32 @TEST_true(i32 %202)
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %210

205:                                              ; preds = %186
  %206 = load i64, i64* %15, align 8
  %207 = load i64, i64* %13, align 8
  %208 = call i32 @TEST_size_t_eq(i64 %206, i64 %207)
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %211, label %210

210:                                              ; preds = %205, %186
  br label %459

211:                                              ; preds = %205
  %212 = load i32*, i32** %6, align 8
  %213 = getelementptr inbounds [20 x i8], [20 x i8]* %9, i64 0, i64 0
  %214 = call i32 @SSL_read_early_data(i32* %212, i8* %213, i32 20, i64* %11)
  %215 = load i32, i32* @SSL_READ_EARLY_DATA_FINISH, align 4
  %216 = call i32 @TEST_int_eq(i32 %214, i32 %215)
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %222

218:                                              ; preds = %211
  %219 = load i64, i64* %11, align 8
  %220 = call i32 @TEST_size_t_eq(i64 %219, i64 0)
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %223, label %222

222:                                              ; preds = %218, %211
  br label %459

223:                                              ; preds = %218
  %224 = load i32*, i32** %6, align 8
  %225 = load i8*, i8** @MSG6, align 8
  %226 = load i8*, i8** @MSG6, align 8
  %227 = call i64 @strlen(i8* %226)
  %228 = call i32 @SSL_write_early_data(i32* %224, i8* %225, i64 %227, i64* %12)
  %229 = call i32 @TEST_true(i32 %228)
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %237

231:                                              ; preds = %223
  %232 = load i64, i64* %12, align 8
  %233 = load i8*, i8** @MSG6, align 8
  %234 = call i64 @strlen(i8* %233)
  %235 = call i32 @TEST_size_t_eq(i64 %232, i64 %234)
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %238, label %237

237:                                              ; preds = %231, %223
  br label %459

238:                                              ; preds = %231
  %239 = load i32*, i32** %16, align 8
  %240 = getelementptr inbounds [1024 x i8], [1024 x i8]* %10, i64 0, i64 0
  %241 = load i64, i64* %13, align 8
  %242 = getelementptr inbounds i8, i8* %240, i64 %241
  %243 = load i64, i64* %14, align 8
  %244 = load i64, i64* %13, align 8
  %245 = sub i64 %243, %244
  %246 = call i32 @BIO_write_ex(i32* %239, i8* %242, i64 %245, i64* %15)
  %247 = call i32 @TEST_true(i32 %246)
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %249, label %256

249:                                              ; preds = %238
  %250 = load i64, i64* %15, align 8
  %251 = load i64, i64* %14, align 8
  %252 = load i64, i64* %13, align 8
  %253 = sub i64 %251, %252
  %254 = call i32 @TEST_size_t_eq(i64 %250, i64 %253)
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %257, label %256

256:                                              ; preds = %249, %238
  br label %459

257:                                              ; preds = %249
  %258 = load i32*, i32** %6, align 8
  %259 = getelementptr inbounds [20 x i8], [20 x i8]* %9, i64 0, i64 0
  %260 = call i32 @SSL_read_ex(i32* %258, i8* %259, i32 20, i64* %11)
  %261 = call i32 @TEST_true(i32 %260)
  %262 = icmp ne i32 %261, 0
  br i1 %262, label %263, label %269

263:                                              ; preds = %257
  %264 = load i64, i64* %11, align 8
  %265 = load i8*, i8** @MSG5, align 8
  %266 = call i64 @strlen(i8* %265)
  %267 = call i32 @TEST_size_t_eq(i64 %264, i64 %266)
  %268 = icmp ne i32 %267, 0
  br i1 %268, label %270, label %269

269:                                              ; preds = %263, %257
  br label %459

270:                                              ; preds = %263
  %271 = load i32*, i32** %5, align 8
  %272 = load i8*, i8** @MSG6, align 8
  %273 = load i8*, i8** @MSG6, align 8
  %274 = call i64 @strlen(i8* %273)
  %275 = call i32 @SSL_write_early_data(i32* %271, i8* %272, i64 %274, i64* %12)
  %276 = call i32 @TEST_false(i32 %275)
  %277 = icmp ne i32 %276, 0
  br i1 %277, label %279, label %278

278:                                              ; preds = %270
  br label %459

279:                                              ; preds = %270
  %280 = call i32 (...) @ERR_clear_error()
  %281 = load i32*, i32** %6, align 8
  %282 = getelementptr inbounds [20 x i8], [20 x i8]* %9, i64 0, i64 0
  %283 = call i32 @SSL_read_early_data(i32* %281, i8* %282, i32 20, i64* %11)
  %284 = load i32, i32* @SSL_READ_EARLY_DATA_ERROR, align 4
  %285 = call i32 @TEST_int_eq(i32 %283, i32 %284)
  %286 = icmp ne i32 %285, 0
  br i1 %286, label %288, label %287

287:                                              ; preds = %279
  br label %459

288:                                              ; preds = %279
  %289 = call i32 (...) @ERR_clear_error()
  %290 = load i32*, i32** %5, align 8
  %291 = getelementptr inbounds [20 x i8], [20 x i8]* %9, i64 0, i64 0
  %292 = call i32 @SSL_read_ex(i32* %290, i8* %291, i32 20, i64* %11)
  %293 = call i32 @TEST_true(i32 %292)
  %294 = icmp ne i32 %293, 0
  br i1 %294, label %295, label %303

295:                                              ; preds = %288
  %296 = getelementptr inbounds [20 x i8], [20 x i8]* %9, i64 0, i64 0
  %297 = load i64, i64* %11, align 8
  %298 = load i8*, i8** @MSG6, align 8
  %299 = load i8*, i8** @MSG6, align 8
  %300 = call i64 @strlen(i8* %299)
  %301 = call i32 @TEST_mem_eq(i8* %296, i64 %297, i8* %298, i64 %300)
  %302 = icmp ne i32 %301, 0
  br i1 %302, label %304, label %303

303:                                              ; preds = %295, %288
  br label %459

304:                                              ; preds = %295
  %305 = load i32*, i32** %5, align 8
  %306 = getelementptr inbounds [20 x i8], [20 x i8]* %9, i64 0, i64 0
  %307 = call i32 @SSL_read_ex(i32* %305, i8* %306, i32 20, i64* %11)
  %308 = call i32 @TEST_false(i32 %307)
  %309 = icmp ne i32 %308, 0
  br i1 %309, label %310, label %316

310:                                              ; preds = %304
  %311 = load i32*, i32** %5, align 8
  %312 = getelementptr inbounds [20 x i8], [20 x i8]* %9, i64 0, i64 0
  %313 = call i32 @SSL_read_ex(i32* %311, i8* %312, i32 20, i64* %11)
  %314 = call i32 @TEST_false(i32 %313)
  %315 = icmp ne i32 %314, 0
  br i1 %315, label %317, label %316

316:                                              ; preds = %310, %304
  br label %459

317:                                              ; preds = %310
  %318 = load i32*, i32** %6, align 8
  %319 = load i8*, i8** @MSG7, align 8
  %320 = load i8*, i8** @MSG7, align 8
  %321 = call i64 @strlen(i8* %320)
  %322 = call i32 @SSL_write_ex(i32* %318, i8* %319, i64 %321, i64* %12)
  %323 = call i32 @TEST_true(i32 %322)
  %324 = icmp ne i32 %323, 0
  br i1 %324, label %325, label %345

325:                                              ; preds = %317
  %326 = load i64, i64* %12, align 8
  %327 = load i8*, i8** @MSG7, align 8
  %328 = call i64 @strlen(i8* %327)
  %329 = call i32 @TEST_size_t_eq(i64 %326, i64 %328)
  %330 = icmp ne i32 %329, 0
  br i1 %330, label %331, label %345

331:                                              ; preds = %325
  %332 = load i32*, i32** %5, align 8
  %333 = getelementptr inbounds [20 x i8], [20 x i8]* %9, i64 0, i64 0
  %334 = call i32 @SSL_read_ex(i32* %332, i8* %333, i32 20, i64* %11)
  %335 = call i32 @TEST_true(i32 %334)
  %336 = icmp ne i32 %335, 0
  br i1 %336, label %337, label %345

337:                                              ; preds = %331
  %338 = getelementptr inbounds [20 x i8], [20 x i8]* %9, i64 0, i64 0
  %339 = load i64, i64* %11, align 8
  %340 = load i8*, i8** @MSG7, align 8
  %341 = load i8*, i8** @MSG7, align 8
  %342 = call i64 @strlen(i8* %341)
  %343 = call i32 @TEST_mem_eq(i8* %338, i64 %339, i8* %340, i64 %342)
  %344 = icmp ne i32 %343, 0
  br i1 %344, label %346, label %345

345:                                              ; preds = %337, %331, %325, %317
  br label %459

346:                                              ; preds = %337
  %347 = load i32*, i32** %8, align 8
  %348 = call i32 @SSL_SESSION_free(i32* %347)
  %349 = load i32*, i32** %5, align 8
  %350 = call i32* @SSL_get1_session(i32* %349)
  store i32* %350, i32** %8, align 8
  store i64 0, i64* @use_session_cb_cnt, align 8
  store i64 0, i64* @find_session_cb_cnt, align 8
  %351 = load i32*, i32** %5, align 8
  %352 = call i32 @SSL_shutdown(i32* %351)
  %353 = load i32*, i32** %6, align 8
  %354 = call i32 @SSL_shutdown(i32* %353)
  %355 = load i32*, i32** %6, align 8
  %356 = call i32 @SSL_free(i32* %355)
  %357 = load i32*, i32** %5, align 8
  %358 = call i32 @SSL_free(i32* %357)
  store i32* null, i32** %5, align 8
  store i32* null, i32** %6, align 8
  %359 = load i32*, i32** %4, align 8
  %360 = load i32*, i32** %3, align 8
  %361 = call i32 @create_ssl_objects(i32* %359, i32* %360, i32** %6, i32** %5, i32* null, i32* null)
  %362 = call i32 @TEST_true(i32 %361)
  %363 = icmp ne i32 %362, 0
  br i1 %363, label %364, label %370

364:                                              ; preds = %346
  %365 = load i32*, i32** %5, align 8
  %366 = load i32*, i32** %8, align 8
  %367 = call i32 @SSL_set_session(i32* %365, i32* %366)
  %368 = call i32 @TEST_true(i32 %367)
  %369 = icmp ne i32 %368, 0
  br i1 %369, label %371, label %370

370:                                              ; preds = %364, %346
  br label %459

371:                                              ; preds = %364
  %372 = load i32*, i32** %5, align 8
  %373 = load i8*, i8** @MSG1, align 8
  %374 = load i8*, i8** @MSG1, align 8
  %375 = call i64 @strlen(i8* %374)
  %376 = call i32 @SSL_write_early_data(i32* %372, i8* %373, i64 %375, i64* %12)
  %377 = call i32 @TEST_true(i32 %376)
  %378 = icmp ne i32 %377, 0
  br i1 %378, label %379, label %400

379:                                              ; preds = %371
  %380 = load i64, i64* %12, align 8
  %381 = load i8*, i8** @MSG1, align 8
  %382 = call i64 @strlen(i8* %381)
  %383 = call i32 @TEST_size_t_eq(i64 %380, i64 %382)
  %384 = icmp ne i32 %383, 0
  br i1 %384, label %385, label %400

385:                                              ; preds = %379
  %386 = load i32*, i32** %6, align 8
  %387 = getelementptr inbounds [20 x i8], [20 x i8]* %9, i64 0, i64 0
  %388 = call i32 @SSL_read_early_data(i32* %386, i8* %387, i32 20, i64* %11)
  %389 = load i32, i32* @SSL_READ_EARLY_DATA_SUCCESS, align 4
  %390 = call i32 @TEST_int_eq(i32 %388, i32 %389)
  %391 = icmp ne i32 %390, 0
  br i1 %391, label %392, label %400

392:                                              ; preds = %385
  %393 = getelementptr inbounds [20 x i8], [20 x i8]* %9, i64 0, i64 0
  %394 = load i64, i64* %11, align 8
  %395 = load i8*, i8** @MSG1, align 8
  %396 = load i8*, i8** @MSG1, align 8
  %397 = call i64 @strlen(i8* %396)
  %398 = call i32 @TEST_mem_eq(i8* %393, i64 %394, i8* %395, i64 %397)
  %399 = icmp ne i32 %398, 0
  br i1 %399, label %401, label %400

400:                                              ; preds = %392, %385, %379, %371
  br label %459

401:                                              ; preds = %392
  %402 = load i32*, i32** %5, align 8
  %403 = call i32 @SSL_connect(i32* %402)
  %404 = call i32 @TEST_int_gt(i32 %403, i32 0)
  %405 = icmp ne i32 %404, 0
  br i1 %405, label %406, label %411

406:                                              ; preds = %401
  %407 = load i32*, i32** %6, align 8
  %408 = call i32 @SSL_accept(i32* %407)
  %409 = call i32 @TEST_int_gt(i32 %408, i32 0)
  %410 = icmp ne i32 %409, 0
  br i1 %410, label %412, label %411

411:                                              ; preds = %406, %401
  br label %459

412:                                              ; preds = %406
  %413 = load i32*, i32** %5, align 8
  %414 = load i8*, i8** @MSG6, align 8
  %415 = load i8*, i8** @MSG6, align 8
  %416 = call i64 @strlen(i8* %415)
  %417 = call i32 @SSL_write_early_data(i32* %413, i8* %414, i64 %416, i64* %12)
  %418 = call i32 @TEST_false(i32 %417)
  %419 = icmp ne i32 %418, 0
  br i1 %419, label %421, label %420

420:                                              ; preds = %412
  br label %459

421:                                              ; preds = %412
  %422 = call i32 (...) @ERR_clear_error()
  %423 = load i32*, i32** %6, align 8
  %424 = getelementptr inbounds [20 x i8], [20 x i8]* %9, i64 0, i64 0
  %425 = call i32 @SSL_read_early_data(i32* %423, i8* %424, i32 20, i64* %11)
  %426 = load i32, i32* @SSL_READ_EARLY_DATA_ERROR, align 4
  %427 = call i32 @TEST_int_eq(i32 %425, i32 %426)
  %428 = icmp ne i32 %427, 0
  br i1 %428, label %430, label %429

429:                                              ; preds = %421
  br label %459

430:                                              ; preds = %421
  %431 = call i32 (...) @ERR_clear_error()
  %432 = load i32*, i32** %5, align 8
  %433 = load i8*, i8** @MSG5, align 8
  %434 = load i8*, i8** @MSG5, align 8
  %435 = call i64 @strlen(i8* %434)
  %436 = call i32 @SSL_write_ex(i32* %432, i8* %433, i64 %435, i64* %12)
  %437 = call i32 @TEST_true(i32 %436)
  %438 = icmp ne i32 %437, 0
  br i1 %438, label %439, label %457

439:                                              ; preds = %430
  %440 = load i64, i64* %12, align 8
  %441 = load i8*, i8** @MSG5, align 8
  %442 = call i64 @strlen(i8* %441)
  %443 = call i32 @TEST_size_t_eq(i64 %440, i64 %442)
  %444 = icmp ne i32 %443, 0
  br i1 %444, label %445, label %457

445:                                              ; preds = %439
  %446 = load i32*, i32** %6, align 8
  %447 = getelementptr inbounds [20 x i8], [20 x i8]* %9, i64 0, i64 0
  %448 = call i32 @SSL_read_ex(i32* %446, i8* %447, i32 20, i64* %11)
  %449 = call i32 @TEST_true(i32 %448)
  %450 = icmp ne i32 %449, 0
  br i1 %450, label %451, label %457

451:                                              ; preds = %445
  %452 = load i64, i64* %11, align 8
  %453 = load i8*, i8** @MSG5, align 8
  %454 = call i64 @strlen(i8* %453)
  %455 = call i32 @TEST_size_t_eq(i64 %452, i64 %454)
  %456 = icmp ne i32 %455, 0
  br i1 %456, label %458, label %457

457:                                              ; preds = %451, %445, %439, %430
  br label %459

458:                                              ; preds = %451
  store i32 1, i32* %7, align 4
  br label %459

459:                                              ; preds = %458, %457, %429, %420, %411, %400, %370, %345, %316, %303, %287, %278, %269, %256, %237, %222, %210, %185, %167, %146, %117, %101, %86, %57, %21
  %460 = load i32*, i32** %8, align 8
  %461 = call i32 @SSL_SESSION_free(i32* %460)
  %462 = load i32*, i32** @clientpsk, align 8
  %463 = call i32 @SSL_SESSION_free(i32* %462)
  %464 = load i32*, i32** @serverpsk, align 8
  %465 = call i32 @SSL_SESSION_free(i32* %464)
  store i32* null, i32** @serverpsk, align 8
  store i32* null, i32** @clientpsk, align 8
  %466 = load i32*, i32** %6, align 8
  %467 = call i32 @SSL_free(i32* %466)
  %468 = load i32*, i32** %5, align 8
  %469 = call i32 @SSL_free(i32* %468)
  %470 = load i32*, i32** %4, align 8
  %471 = call i32 @SSL_CTX_free(i32* %470)
  %472 = load i32*, i32** %3, align 8
  %473 = call i32 @SSL_CTX_free(i32* %472)
  %474 = load i32, i32* %7, align 4
  ret i32 %474
}

declare dso_local i32 @TEST_true(i32) #1

declare dso_local i32 @setupearly_data_test(i32**, i32**, i32**, i32**, i32**, i32) #1

declare dso_local i32 @SSL_write_early_data(i32*, i8*, i64, i64*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @TEST_size_t_eq(i64, i64) #1

declare dso_local i32 @TEST_int_eq(i32, i32) #1

declare dso_local i32 @SSL_read_early_data(i32*, i8*, i32, i64*) #1

declare dso_local i32 @TEST_mem_eq(i8*, i64, i8*, i64) #1

declare dso_local i32 @SSL_get_early_data_status(i32*) #1

declare dso_local i32 @SSL_read_ex(i32*, i8*, i32, i64*) #1

declare dso_local i32 @SSL_write_ex(i32*, i8*, i64, i64*) #1

declare dso_local i32* @SSL_get_rbio(i32*) #1

declare dso_local i32 @BIO_read_ex(i32*, i8*, i32, i64*) #1

declare dso_local i32 @TEST_size_t_lt(i64, i32) #1

declare dso_local i32 @TEST_size_t_gt(i64, i8 zeroext) #1

declare dso_local i32 @BIO_write_ex(i32*, i8*, i64, i64*) #1

declare dso_local i32 @TEST_false(i32) #1

declare dso_local i32 @ERR_clear_error(...) #1

declare dso_local i32 @SSL_SESSION_free(i32*) #1

declare dso_local i32* @SSL_get1_session(i32*) #1

declare dso_local i32 @SSL_shutdown(i32*) #1

declare dso_local i32 @SSL_free(i32*) #1

declare dso_local i32 @create_ssl_objects(i32*, i32*, i32**, i32**, i32*, i32*) #1

declare dso_local i32 @SSL_set_session(i32*, i32*) #1

declare dso_local i32 @TEST_int_gt(i32, i32) #1

declare dso_local i32 @SSL_connect(i32*) #1

declare dso_local i32 @SSL_accept(i32*) #1

declare dso_local i32 @SSL_CTX_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
