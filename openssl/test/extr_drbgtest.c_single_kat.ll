; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_drbgtest.c_single_kat.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_drbgtest.c_single_kat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i64, i64, i32, i32 }

@kat_entropy = common dso_local global i32 0, align 4
@kat_nonce = common dso_local global i32 0, align 4
@app_data_index = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*)* @single_kat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @single_kat(%struct.TYPE_7__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_6__, align 8
  %6 = alloca i32, align 4
  %7 = alloca [1024 x i8], align 16
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  store i32* null, i32** %4, align 8
  store i32 0, i32* %6, align 4
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 19
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 18
  %13 = load i32, i32* %12, align 4
  %14 = call i32* @RAND_DRBG_new(i32 %10, i32 %13, i32* null)
  store i32* %14, i32** %4, align 8
  %15 = call i32 @TEST_ptr(i32* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %295

18:                                               ; preds = %1
  %19 = load i32*, i32** %4, align 8
  %20 = load i32, i32* @kat_entropy, align 4
  %21 = load i32, i32* @kat_nonce, align 4
  %22 = call i32 @RAND_DRBG_set_callbacks(i32* %19, i32 %20, i32* null, i32 %21, i32* null)
  %23 = call i32 @TEST_true(i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %18
  %26 = load i32*, i32** %4, align 8
  %27 = call i32 @disable_crngt(i32* %26)
  %28 = call i32 @TEST_true(i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %25, %18
  %31 = load i32, i32* %6, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %6, align 4
  br label %287

33:                                               ; preds = %25
  %34 = call i32 @memset(%struct.TYPE_6__* %5, i32 0, i32 32)
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 37
  %37 = load i32, i32* %36, align 4
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 1
  store i32 %37, i32* %38, align 4
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 36
  %41 = load i32, i32* %40, align 4
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 0
  store i32 %41, i32* %42, align 8
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 35
  %45 = load i32, i32* %44, align 4
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 5
  store i32 %45, i32* %46, align 4
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 34
  %49 = load i32, i32* %48, align 4
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 4
  store i32 %49, i32* %50, align 8
  %51 = load i32*, i32** %4, align 8
  %52 = load i32, i32* @app_data_index, align 4
  %53 = call i32 @RAND_DRBG_set_ex_data(i32* %51, i32 %52, %struct.TYPE_6__* %5)
  %54 = load i32*, i32** %4, align 8
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 33
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 32
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @RAND_DRBG_instantiate(i32* %54, i32 %57, i32 %60)
  %62 = call i32 @TEST_true(i32 %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %92

64:                                               ; preds = %33
  %65 = load i32*, i32** %4, align 8
  %66 = getelementptr inbounds [1024 x i8], [1024 x i8]* %7, i64 0, i64 0
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 28
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 31
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 30
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @RAND_DRBG_generate(i32* %65, i8* %66, i32 %69, i32 0, i32 %72, i32 %75)
  %77 = call i32 @TEST_true(i32 %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %92

79:                                               ; preds = %64
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 29
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 28
  %85 = load i32, i32* %84, align 4
  %86 = getelementptr inbounds [1024 x i8], [1024 x i8]* %7, i64 0, i64 0
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 28
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @TEST_mem_eq(i32 %82, i32 %85, i8* %86, i32 %89)
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %95, label %92

92:                                               ; preds = %79, %64, %33
  %93 = load i32, i32* %6, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %6, align 4
  br label %95

95:                                               ; preds = %92, %79
  %96 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 27
  %98 = load i32, i32* %97, align 4
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 1
  store i32 %98, i32* %99, align 4
  %100 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 26
  %102 = load i32, i32* %101, align 4
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 0
  store i32 %102, i32* %103, align 8
  %104 = load i32*, i32** %4, align 8
  %105 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 25
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 24
  %110 = load i32, i32* %109, align 4
  %111 = call i64 @RAND_DRBG_reseed(i32* %104, i32 %107, i32 %110, i32 0)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %142, label %113

113:                                              ; preds = %95
  %114 = load i32*, i32** %4, align 8
  %115 = getelementptr inbounds [1024 x i8], [1024 x i8]* %7, i64 0, i64 0
  %116 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i32 0, i32 20
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i32 0, i32 23
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %122, i32 0, i32 22
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @RAND_DRBG_generate(i32* %114, i8* %115, i32 %118, i32 0, i32 %121, i32 %124)
  %126 = call i32 @TEST_true(i32 %125)
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %142

128:                                              ; preds = %113
  %129 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %130 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %129, i32 0, i32 21
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %133 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %132, i32 0, i32 20
  %134 = load i32, i32* %133, align 4
  %135 = getelementptr inbounds [1024 x i8], [1024 x i8]* %7, i64 0, i64 0
  %136 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %137 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %136, i32 0, i32 20
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @TEST_mem_eq(i32 %131, i32 %134, i8* %135, i32 %138)
  %140 = icmp ne i32 %139, 0
  %141 = xor i1 %140, true
  br label %142

142:                                              ; preds = %128, %113, %95
  %143 = phi i1 [ true, %113 ], [ true, %95 ], [ %141, %128 ]
  %144 = zext i1 %143 to i32
  %145 = call i32 @TEST_true(i32 %144)
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %150, label %147

147:                                              ; preds = %142
  %148 = load i32, i32* %6, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %6, align 4
  br label %150

150:                                              ; preds = %147, %142
  %151 = load i32*, i32** %4, align 8
  %152 = call i32 @uninstantiate(i32* %151)
  %153 = load i32*, i32** %4, align 8
  %154 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %155 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %154, i32 0, i32 19
  %156 = load i32, i32* %155, align 4
  %157 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %158 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %157, i32 0, i32 18
  %159 = load i32, i32* %158, align 4
  %160 = call i32 @RAND_DRBG_set(i32* %153, i32 %156, i32 %159)
  %161 = call i32 @TEST_true(i32 %160)
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %170

163:                                              ; preds = %150
  %164 = load i32*, i32** %4, align 8
  %165 = load i32, i32* @kat_entropy, align 4
  %166 = load i32, i32* @kat_nonce, align 4
  %167 = call i32 @RAND_DRBG_set_callbacks(i32* %164, i32 %165, i32* null, i32 %166, i32* null)
  %168 = call i32 @TEST_true(i32 %167)
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %173, label %170

170:                                              ; preds = %163, %150
  %171 = load i32, i32* %6, align 4
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* %6, align 4
  br label %173

173:                                              ; preds = %170, %163
  %174 = load i32*, i32** %4, align 8
  %175 = load i32, i32* @app_data_index, align 4
  %176 = call i32 @RAND_DRBG_set_ex_data(i32* %174, i32 %175, %struct.TYPE_6__* %5)
  %177 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %178 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %177, i32 0, i32 17
  %179 = load i32, i32* %178, align 4
  %180 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 1
  store i32 %179, i32* %180, align 4
  %181 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %182 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %181, i32 0, i32 16
  %183 = load i32, i32* %182, align 4
  %184 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 0
  store i32 %183, i32* %184, align 8
  %185 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %186 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %185, i32 0, i32 15
  %187 = load i32, i32* %186, align 4
  %188 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 5
  store i32 %187, i32* %188, align 4
  %189 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %190 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %189, i32 0, i32 14
  %191 = load i32, i32* %190, align 4
  %192 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 4
  store i32 %191, i32* %192, align 8
  %193 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 3
  store i64 0, i64* %193, align 8
  %194 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 2
  store i64 0, i64* %194, align 8
  %195 = load i32*, i32** %4, align 8
  %196 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %197 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %196, i32 0, i32 13
  %198 = load i32, i32* %197, align 4
  %199 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %200 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %199, i32 0, i32 12
  %201 = load i32, i32* %200, align 4
  %202 = call i32 @RAND_DRBG_instantiate(i32* %195, i32 %198, i32 %201)
  %203 = call i32 @TEST_true(i32 %202)
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %208, label %205

205:                                              ; preds = %173
  %206 = load i32, i32* %6, align 4
  %207 = add nsw i32 %206, 1
  store i32 %207, i32* %6, align 4
  br label %208

208:                                              ; preds = %205, %173
  %209 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %210 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %209, i32 0, i32 11
  %211 = load i32, i32* %210, align 4
  %212 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 1
  store i32 %211, i32* %212, align 4
  %213 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %214 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %213, i32 0, i32 10
  %215 = load i32, i32* %214, align 4
  %216 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 0
  store i32 %215, i32* %216, align 8
  %217 = load i32*, i32** %4, align 8
  %218 = getelementptr inbounds [1024 x i8], [1024 x i8]* %7, i64 0, i64 0
  %219 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %220 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %219, i32 0, i32 6
  %221 = load i32, i32* %220, align 4
  %222 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %223 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %222, i32 0, i32 9
  %224 = load i32, i32* %223, align 4
  %225 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %226 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %225, i32 0, i32 8
  %227 = load i32, i32* %226, align 4
  %228 = call i32 @RAND_DRBG_generate(i32* %217, i8* %218, i32 %221, i32 1, i32 %224, i32 %227)
  %229 = call i32 @TEST_true(i32 %228)
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %244

231:                                              ; preds = %208
  %232 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %233 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %232, i32 0, i32 7
  %234 = load i32, i32* %233, align 4
  %235 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %236 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %235, i32 0, i32 6
  %237 = load i32, i32* %236, align 4
  %238 = getelementptr inbounds [1024 x i8], [1024 x i8]* %7, i64 0, i64 0
  %239 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %240 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %239, i32 0, i32 6
  %241 = load i32, i32* %240, align 4
  %242 = call i32 @TEST_mem_eq(i32 %234, i32 %237, i8* %238, i32 %241)
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %247, label %244

244:                                              ; preds = %231, %208
  %245 = load i32, i32* %6, align 4
  %246 = add nsw i32 %245, 1
  store i32 %246, i32* %6, align 4
  br label %247

247:                                              ; preds = %244, %231
  %248 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %249 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %248, i32 0, i32 5
  %250 = load i32, i32* %249, align 4
  %251 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 1
  store i32 %250, i32* %251, align 4
  %252 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %253 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %252, i32 0, i32 4
  %254 = load i32, i32* %253, align 4
  %255 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 0
  store i32 %254, i32* %255, align 8
  %256 = load i32*, i32** %4, align 8
  %257 = getelementptr inbounds [1024 x i8], [1024 x i8]* %7, i64 0, i64 0
  %258 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %259 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %258, i32 0, i32 0
  %260 = load i32, i32* %259, align 4
  %261 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %262 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %261, i32 0, i32 3
  %263 = load i32, i32* %262, align 4
  %264 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %265 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %264, i32 0, i32 2
  %266 = load i32, i32* %265, align 4
  %267 = call i32 @RAND_DRBG_generate(i32* %256, i8* %257, i32 %260, i32 1, i32 %263, i32 %266)
  %268 = call i32 @TEST_true(i32 %267)
  %269 = icmp ne i32 %268, 0
  br i1 %269, label %270, label %283

270:                                              ; preds = %247
  %271 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %272 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %271, i32 0, i32 1
  %273 = load i32, i32* %272, align 4
  %274 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %275 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %274, i32 0, i32 0
  %276 = load i32, i32* %275, align 4
  %277 = getelementptr inbounds [1024 x i8], [1024 x i8]* %7, i64 0, i64 0
  %278 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %279 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %278, i32 0, i32 0
  %280 = load i32, i32* %279, align 4
  %281 = call i32 @TEST_mem_eq(i32 %273, i32 %276, i8* %277, i32 %280)
  %282 = icmp ne i32 %281, 0
  br i1 %282, label %286, label %283

283:                                              ; preds = %270, %247
  %284 = load i32, i32* %6, align 4
  %285 = add nsw i32 %284, 1
  store i32 %285, i32* %6, align 4
  br label %286

286:                                              ; preds = %283, %270
  br label %287

287:                                              ; preds = %286, %30
  %288 = load i32*, i32** %4, align 8
  %289 = call i32 @uninstantiate(i32* %288)
  %290 = load i32*, i32** %4, align 8
  %291 = call i32 @RAND_DRBG_free(i32* %290)
  %292 = load i32, i32* %6, align 4
  %293 = icmp eq i32 %292, 0
  %294 = zext i1 %293 to i32
  store i32 %294, i32* %2, align 4
  br label %295

295:                                              ; preds = %287, %17
  %296 = load i32, i32* %2, align 4
  ret i32 %296
}

declare dso_local i32 @TEST_ptr(i32*) #1

declare dso_local i32* @RAND_DRBG_new(i32, i32, i32*) #1

declare dso_local i32 @TEST_true(i32) #1

declare dso_local i32 @RAND_DRBG_set_callbacks(i32*, i32, i32*, i32, i32*) #1

declare dso_local i32 @disable_crngt(i32*) #1

declare dso_local i32 @memset(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @RAND_DRBG_set_ex_data(i32*, i32, %struct.TYPE_6__*) #1

declare dso_local i32 @RAND_DRBG_instantiate(i32*, i32, i32) #1

declare dso_local i32 @RAND_DRBG_generate(i32*, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @TEST_mem_eq(i32, i32, i8*, i32) #1

declare dso_local i64 @RAND_DRBG_reseed(i32*, i32, i32, i32) #1

declare dso_local i32 @uninstantiate(i32*) #1

declare dso_local i32 @RAND_DRBG_set(i32*, i32, i32) #1

declare dso_local i32 @RAND_DRBG_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
