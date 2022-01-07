; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_drbgtest.c_error_check.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_drbgtest.c_error_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i64, i32, i64, i64, i32, i32, i32 }
%struct.TYPE_20__ = type { i32, i32, i32, i64, i64, i64, i64, i64, i64, i64 }
%struct.TYPE_19__ = type { i32, i64, i64 }

@error_check.zero = internal global [72 x i8] zeroinitializer, align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_21__*)* @error_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @error_check(%struct.TYPE_21__* %0) #0 {
  %2 = alloca %struct.TYPE_21__*, align 8
  %3 = alloca %struct.TYPE_20__*, align 8
  %4 = alloca %struct.TYPE_19__, align 8
  %5 = alloca [1024 x i8], align 16
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %2, align 8
  store %struct.TYPE_20__* null, %struct.TYPE_20__** %3, align 8
  store i32 0, i32* %7, align 4
  %8 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %8, i32 0, i32 6
  %10 = load i32, i32* %9, align 8
  %11 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %11, i32 0, i32 5
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.TYPE_20__* @RAND_DRBG_new(i32 %10, i32 %13, i32* null)
  store %struct.TYPE_20__* %14, %struct.TYPE_20__** %3, align 8
  %15 = call i32 @TEST_ptr(%struct.TYPE_20__* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %1
  %18 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %19 = call i32 @disable_crngt(%struct.TYPE_20__* %18)
  %20 = call i32 @TEST_true(i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %17, %1
  br label %473

23:                                               ; preds = %17
  %24 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %25 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %26 = call i32 @init(%struct.TYPE_20__* %24, %struct.TYPE_21__* %25, %struct.TYPE_19__* %4)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %39

28:                                               ; preds = %23
  %29 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %30 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %30, i32 0, i32 4
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %33, i32 0, i32 9
  %35 = load i64, i64* %34, align 8
  %36 = add nsw i64 %35, 1
  %37 = call i64 @RAND_DRBG_instantiate(%struct.TYPE_20__* %29, i32 %32, i64 %36)
  %38 = icmp sgt i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %28, %23
  br label %473

40:                                               ; preds = %28
  %41 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %4, i32 0, i32 1
  store i64 0, i64* %41, align 8
  %42 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %43 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %47 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %46, i32 0, i32 3
  %48 = load i64, i64* %47, align 8
  %49 = call i64 @RAND_DRBG_instantiate(%struct.TYPE_20__* %42, i32 %45, i64 %48)
  %50 = call i64 @TEST_int_le(i64 %49, i32 0)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %40
  br label %473

53:                                               ; preds = %40
  %54 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %55 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0
  %56 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %57 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %60 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %63 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = call i32 @RAND_DRBG_generate(%struct.TYPE_20__* %54, i8* %55, i64 %58, i32 0, i32 %61, i64 %64)
  %66 = call i64 @TEST_false(i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %53
  %69 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %70 = call i32 @uninstantiate(%struct.TYPE_20__* %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %73, label %72

72:                                               ; preds = %68, %53
  br label %473

73:                                               ; preds = %68
  %74 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %74, i32 0, i32 3
  %76 = load i64, i64* %75, align 8
  %77 = sub nsw i64 %76, 1
  %78 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %4, i32 0, i32 1
  store i64 %77, i64* %78, align 8
  %79 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %80 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %81 = call i32 @init(%struct.TYPE_20__* %79, %struct.TYPE_21__* %80, %struct.TYPE_19__* %4)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %97

83:                                               ; preds = %73
  %84 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %85 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %86 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %85, i32 0, i32 4
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %89 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %88, i32 0, i32 3
  %90 = load i64, i64* %89, align 8
  %91 = call i64 @RAND_DRBG_instantiate(%struct.TYPE_20__* %84, i32 %87, i64 %90)
  %92 = icmp sgt i64 %91, 0
  br i1 %92, label %97, label %93

93:                                               ; preds = %83
  %94 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %95 = call i32 @uninstantiate(%struct.TYPE_20__* %94)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %98, label %97

97:                                               ; preds = %93, %83, %73
  br label %473

98:                                               ; preds = %93
  %99 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %100 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %99, i32 0, i32 4
  %101 = load i64, i64* %100, align 8
  %102 = add nsw i64 %101, 1
  %103 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %4, i32 0, i32 1
  store i64 %102, i64* %103, align 8
  %104 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %105 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %106 = call i32 @init(%struct.TYPE_20__* %104, %struct.TYPE_21__* %105, %struct.TYPE_19__* %4)
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %122

108:                                              ; preds = %98
  %109 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %110 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %111 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %110, i32 0, i32 4
  %112 = load i32, i32* %111, align 8
  %113 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %114 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %113, i32 0, i32 3
  %115 = load i64, i64* %114, align 8
  %116 = call i64 @RAND_DRBG_instantiate(%struct.TYPE_20__* %109, i32 %112, i64 %115)
  %117 = icmp sgt i64 %116, 0
  br i1 %117, label %122, label %118

118:                                              ; preds = %108
  %119 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %120 = call i32 @uninstantiate(%struct.TYPE_20__* %119)
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %123, label %122

122:                                              ; preds = %118, %108, %98
  br label %473

123:                                              ; preds = %118
  %124 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %125 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %124, i32 0, i32 8
  %126 = load i64, i64* %125, align 8
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %154

128:                                              ; preds = %123
  %129 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %130 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %129, i32 0, i32 8
  %131 = load i64, i64* %130, align 8
  %132 = sub nsw i64 %131, 1
  %133 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %4, i32 0, i32 2
  store i64 %132, i64* %133, align 8
  %134 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %135 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %136 = call i32 @init(%struct.TYPE_20__* %134, %struct.TYPE_21__* %135, %struct.TYPE_19__* %4)
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %152

138:                                              ; preds = %128
  %139 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %140 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %141 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %140, i32 0, i32 4
  %142 = load i32, i32* %141, align 8
  %143 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %144 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %143, i32 0, i32 3
  %145 = load i64, i64* %144, align 8
  %146 = call i64 @RAND_DRBG_instantiate(%struct.TYPE_20__* %139, i32 %142, i64 %145)
  %147 = icmp sgt i64 %146, 0
  br i1 %147, label %152, label %148

148:                                              ; preds = %138
  %149 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %150 = call i32 @uninstantiate(%struct.TYPE_20__* %149)
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %153, label %152

152:                                              ; preds = %148, %138, %128
  br label %473

153:                                              ; preds = %148
  br label %154

154:                                              ; preds = %153, %123
  %155 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %156 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %155, i32 0, i32 7
  %157 = load i64, i64* %156, align 8
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %185

159:                                              ; preds = %154
  %160 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %161 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %160, i32 0, i32 7
  %162 = load i64, i64* %161, align 8
  %163 = add nsw i64 %162, 1
  %164 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %4, i32 0, i32 2
  store i64 %163, i64* %164, align 8
  %165 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %166 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %167 = call i32 @init(%struct.TYPE_20__* %165, %struct.TYPE_21__* %166, %struct.TYPE_19__* %4)
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %183

169:                                              ; preds = %159
  %170 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %171 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %172 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %171, i32 0, i32 4
  %173 = load i32, i32* %172, align 8
  %174 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %175 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %174, i32 0, i32 3
  %176 = load i64, i64* %175, align 8
  %177 = call i64 @RAND_DRBG_instantiate(%struct.TYPE_20__* %170, i32 %173, i64 %176)
  %178 = icmp sgt i64 %177, 0
  br i1 %178, label %183, label %179

179:                                              ; preds = %169
  %180 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %181 = call i32 @uninstantiate(%struct.TYPE_20__* %180)
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %184, label %183

183:                                              ; preds = %179, %169, %159
  br label %473

184:                                              ; preds = %179
  br label %185

185:                                              ; preds = %184, %154
  %186 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %187 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %188 = call i32 @instantiate(%struct.TYPE_20__* %186, %struct.TYPE_21__* %187, %struct.TYPE_19__* %4)
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %205

190:                                              ; preds = %185
  %191 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %192 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0
  %193 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %194 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %193, i32 0, i32 2
  %195 = load i64, i64* %194, align 8
  %196 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %197 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %196, i32 0, i32 1
  %198 = load i32, i32* %197, align 8
  %199 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %200 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %199, i32 0, i32 0
  %201 = load i64, i64* %200, align 8
  %202 = call i32 @RAND_DRBG_generate(%struct.TYPE_20__* %191, i8* %192, i64 %195, i32 0, i32 %198, i64 %201)
  %203 = call i32 @TEST_true(i32 %202)
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %206, label %205

205:                                              ; preds = %190, %185
  br label %473

206:                                              ; preds = %190
  %207 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %208 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0
  %209 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %210 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %209, i32 0, i32 6
  %211 = load i64, i64* %210, align 8
  %212 = add nsw i64 %211, 1
  %213 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %214 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %213, i32 0, i32 1
  %215 = load i32, i32* %214, align 8
  %216 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %217 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %216, i32 0, i32 0
  %218 = load i64, i64* %217, align 8
  %219 = call i32 @RAND_DRBG_generate(%struct.TYPE_20__* %207, i8* %208, i64 %212, i32 0, i32 %215, i64 %218)
  %220 = call i64 @TEST_false(i32 %219)
  %221 = icmp ne i64 %220, 0
  br i1 %221, label %223, label %222

222:                                              ; preds = %206
  br label %473

223:                                              ; preds = %206
  %224 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %225 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0
  %226 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %227 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %226, i32 0, i32 2
  %228 = load i64, i64* %227, align 8
  %229 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %230 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %229, i32 0, i32 1
  %231 = load i32, i32* %230, align 8
  %232 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %233 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %232, i32 0, i32 5
  %234 = load i64, i64* %233, align 8
  %235 = add nsw i64 %234, 1
  %236 = call i32 @RAND_DRBG_generate(%struct.TYPE_20__* %224, i8* %225, i64 %228, i32 0, i32 %231, i64 %235)
  %237 = call i64 @TEST_false(i32 %236)
  %238 = icmp ne i64 %237, 0
  br i1 %238, label %240, label %239

239:                                              ; preds = %223
  br label %473

240:                                              ; preds = %223
  %241 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %4, i32 0, i32 1
  store i64 0, i64* %241, align 8
  %242 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %243 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0
  %244 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %245 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %244, i32 0, i32 2
  %246 = load i64, i64* %245, align 8
  %247 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %248 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %247, i32 0, i32 1
  %249 = load i32, i32* %248, align 8
  %250 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %251 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %250, i32 0, i32 0
  %252 = load i64, i64* %251, align 8
  %253 = call i32 @RAND_DRBG_generate(%struct.TYPE_20__* %242, i8* %243, i64 %246, i32 1, i32 %249, i64 %252)
  %254 = call i64 @TEST_false(i32 %253)
  %255 = icmp ne i64 %254, 0
  br i1 %255, label %260, label %256

256:                                              ; preds = %240
  %257 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %258 = call i32 @uninstantiate(%struct.TYPE_20__* %257)
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %261, label %260

260:                                              ; preds = %256, %240
  br label %473

261:                                              ; preds = %256
  %262 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %263 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %264 = call i32 @instantiate(%struct.TYPE_20__* %262, %struct.TYPE_21__* %263, %struct.TYPE_19__* %4)
  %265 = icmp ne i32 %264, 0
  br i1 %265, label %267, label %266

266:                                              ; preds = %261
  br label %473

267:                                              ; preds = %261
  %268 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %269 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %268, i32 0, i32 0
  %270 = load i32, i32* %269, align 8
  store i32 %270, i32* %6, align 4
  %271 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %272 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %271, i32 0, i32 1
  %273 = load i32, i32* %272, align 4
  %274 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %275 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %274, i32 0, i32 0
  store i32 %273, i32* %275, align 8
  %276 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %4, i32 0, i32 0
  store i32 0, i32* %276, align 8
  %277 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %278 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0
  %279 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %280 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %279, i32 0, i32 2
  %281 = load i64, i64* %280, align 8
  %282 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %283 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %282, i32 0, i32 1
  %284 = load i32, i32* %283, align 8
  %285 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %286 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %285, i32 0, i32 0
  %287 = load i64, i64* %286, align 8
  %288 = call i32 @RAND_DRBG_generate(%struct.TYPE_20__* %277, i8* %278, i64 %281, i32 0, i32 %284, i64 %287)
  %289 = call i32 @TEST_true(i32 %288)
  %290 = icmp ne i32 %289, 0
  br i1 %290, label %291, label %308

291:                                              ; preds = %267
  %292 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %4, i32 0, i32 0
  %293 = load i32, i32* %292, align 8
  %294 = call i32 @TEST_int_eq(i32 %293, i32 1)
  %295 = icmp ne i32 %294, 0
  br i1 %295, label %296, label %308

296:                                              ; preds = %291
  %297 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %298 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %297, i32 0, i32 0
  %299 = load i32, i32* %298, align 8
  %300 = load i32, i32* %6, align 4
  %301 = add i32 %300, 1
  %302 = call i32 @TEST_int_eq(i32 %299, i32 %301)
  %303 = icmp ne i32 %302, 0
  br i1 %303, label %304, label %308

304:                                              ; preds = %296
  %305 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %306 = call i32 @uninstantiate(%struct.TYPE_20__* %305)
  %307 = icmp ne i32 %306, 0
  br i1 %307, label %309, label %308

308:                                              ; preds = %304, %296, %291, %267
  br label %473

309:                                              ; preds = %304
  %310 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %4, i32 0, i32 1
  store i64 0, i64* %310, align 8
  %311 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %312 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0
  %313 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %314 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %313, i32 0, i32 2
  %315 = load i64, i64* %314, align 8
  %316 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %317 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %316, i32 0, i32 1
  %318 = load i32, i32* %317, align 8
  %319 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %320 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %319, i32 0, i32 0
  %321 = load i64, i64* %320, align 8
  %322 = call i32 @RAND_DRBG_generate(%struct.TYPE_20__* %311, i8* %312, i64 %315, i32 1, i32 %318, i64 %321)
  %323 = call i64 @TEST_false(i32 %322)
  %324 = icmp ne i64 %323, 0
  br i1 %324, label %325, label %329

325:                                              ; preds = %309
  %326 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %327 = call i32 @uninstantiate(%struct.TYPE_20__* %326)
  %328 = icmp ne i32 %327, 0
  br i1 %328, label %330, label %329

329:                                              ; preds = %325, %309
  br label %473

330:                                              ; preds = %325
  %331 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %332 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %333 = call i32 @instantiate(%struct.TYPE_20__* %331, %struct.TYPE_21__* %332, %struct.TYPE_19__* %4)
  %334 = icmp ne i32 %333, 0
  br i1 %334, label %336, label %335

335:                                              ; preds = %330
  br label %473

336:                                              ; preds = %330
  %337 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %338 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %337, i32 0, i32 0
  %339 = load i32, i32* %338, align 8
  store i32 %339, i32* %6, align 4
  %340 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %341 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %340, i32 0, i32 1
  %342 = load i32, i32* %341, align 4
  %343 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %344 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %343, i32 0, i32 0
  store i32 %342, i32* %344, align 8
  %345 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %4, i32 0, i32 0
  store i32 0, i32* %345, align 8
  %346 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %347 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0
  %348 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %349 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %348, i32 0, i32 2
  %350 = load i64, i64* %349, align 8
  %351 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %352 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %351, i32 0, i32 1
  %353 = load i32, i32* %352, align 8
  %354 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %355 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %354, i32 0, i32 0
  %356 = load i64, i64* %355, align 8
  %357 = call i32 @RAND_DRBG_generate(%struct.TYPE_20__* %346, i8* %347, i64 %350, i32 0, i32 %353, i64 %356)
  %358 = call i32 @TEST_true(i32 %357)
  %359 = icmp ne i32 %358, 0
  br i1 %359, label %360, label %377

360:                                              ; preds = %336
  %361 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %4, i32 0, i32 0
  %362 = load i32, i32* %361, align 8
  %363 = call i32 @TEST_int_eq(i32 %362, i32 1)
  %364 = icmp ne i32 %363, 0
  br i1 %364, label %365, label %377

365:                                              ; preds = %360
  %366 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %367 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %366, i32 0, i32 0
  %368 = load i32, i32* %367, align 8
  %369 = load i32, i32* %6, align 4
  %370 = add i32 %369, 1
  %371 = call i32 @TEST_int_eq(i32 %368, i32 %370)
  %372 = icmp ne i32 %371, 0
  br i1 %372, label %373, label %377

373:                                              ; preds = %365
  %374 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %375 = call i32 @uninstantiate(%struct.TYPE_20__* %374)
  %376 = icmp ne i32 %375, 0
  br i1 %376, label %378, label %377

377:                                              ; preds = %373, %365, %360, %336
  br label %473

378:                                              ; preds = %373
  %379 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %380 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %381 = call i32 @instantiate(%struct.TYPE_20__* %379, %struct.TYPE_21__* %380, %struct.TYPE_19__* %4)
  %382 = icmp ne i32 %381, 0
  br i1 %382, label %383, label %394

383:                                              ; preds = %378
  %384 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %385 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %386 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %385, i32 0, i32 1
  %387 = load i32, i32* %386, align 8
  %388 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %389 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %388, i32 0, i32 5
  %390 = load i64, i64* %389, align 8
  %391 = add nsw i64 %390, 1
  %392 = call i64 @RAND_DRBG_reseed(%struct.TYPE_20__* %384, i32 %387, i64 %391, i32 0)
  %393 = icmp sgt i64 %392, 0
  br i1 %393, label %394, label %395

394:                                              ; preds = %383, %378
  br label %473

395:                                              ; preds = %383
  %396 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %4, i32 0, i32 1
  store i64 0, i64* %396, align 8
  %397 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %398 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %399 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %398, i32 0, i32 1
  %400 = load i32, i32* %399, align 8
  %401 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %402 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %401, i32 0, i32 0
  %403 = load i64, i64* %402, align 8
  %404 = call i64 @RAND_DRBG_reseed(%struct.TYPE_20__* %397, i32 %400, i64 %403, i32 0)
  %405 = call i64 @TEST_int_le(i64 %404, i32 0)
  %406 = icmp ne i64 %405, 0
  br i1 %406, label %407, label %411

407:                                              ; preds = %395
  %408 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %409 = call i32 @uninstantiate(%struct.TYPE_20__* %408)
  %410 = icmp ne i32 %409, 0
  br i1 %410, label %412, label %411

411:                                              ; preds = %407, %395
  br label %473

412:                                              ; preds = %407
  %413 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %414 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %415 = call i32 @instantiate(%struct.TYPE_20__* %413, %struct.TYPE_21__* %414, %struct.TYPE_19__* %4)
  %416 = icmp ne i32 %415, 0
  br i1 %416, label %418, label %417

417:                                              ; preds = %412
  br label %473

418:                                              ; preds = %412
  %419 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %420 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %419, i32 0, i32 4
  %421 = load i64, i64* %420, align 8
  %422 = add nsw i64 %421, 1
  %423 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %4, i32 0, i32 1
  store i64 %422, i64* %423, align 8
  %424 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %425 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %426 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %425, i32 0, i32 1
  %427 = load i32, i32* %426, align 8
  %428 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %429 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %428, i32 0, i32 0
  %430 = load i64, i64* %429, align 8
  %431 = call i64 @RAND_DRBG_reseed(%struct.TYPE_20__* %424, i32 %427, i64 %430, i32 0)
  %432 = call i64 @TEST_int_le(i64 %431, i32 0)
  %433 = icmp ne i64 %432, 0
  br i1 %433, label %434, label %438

434:                                              ; preds = %418
  %435 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %436 = call i32 @uninstantiate(%struct.TYPE_20__* %435)
  %437 = icmp ne i32 %436, 0
  br i1 %437, label %439, label %438

438:                                              ; preds = %434, %418
  br label %473

439:                                              ; preds = %434
  %440 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %441 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %442 = call i32 @instantiate(%struct.TYPE_20__* %440, %struct.TYPE_21__* %441, %struct.TYPE_19__* %4)
  %443 = icmp ne i32 %442, 0
  br i1 %443, label %445, label %444

444:                                              ; preds = %439
  br label %473

445:                                              ; preds = %439
  %446 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %447 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %446, i32 0, i32 3
  %448 = load i64, i64* %447, align 8
  %449 = sub nsw i64 %448, 1
  %450 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %4, i32 0, i32 1
  store i64 %449, i64* %450, align 8
  %451 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %452 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %453 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %452, i32 0, i32 1
  %454 = load i32, i32* %453, align 8
  %455 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %456 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %455, i32 0, i32 0
  %457 = load i64, i64* %456, align 8
  %458 = call i64 @RAND_DRBG_reseed(%struct.TYPE_20__* %451, i32 %454, i64 %457, i32 0)
  %459 = call i64 @TEST_int_le(i64 %458, i32 0)
  %460 = icmp ne i64 %459, 0
  br i1 %460, label %461, label %465

461:                                              ; preds = %445
  %462 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %463 = call i32 @uninstantiate(%struct.TYPE_20__* %462)
  %464 = icmp ne i32 %463, 0
  br i1 %464, label %466, label %465

465:                                              ; preds = %461, %445
  br label %473

466:                                              ; preds = %461
  %467 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %468 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %467, i32 0, i32 2
  %469 = call i32 @TEST_mem_eq(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @error_check.zero, i64 0, i64 0), i32 4, i32* %468, i32 4)
  %470 = icmp ne i32 %469, 0
  br i1 %470, label %472, label %471

471:                                              ; preds = %466
  br label %473

472:                                              ; preds = %466
  store i32 1, i32* %7, align 4
  br label %473

473:                                              ; preds = %472, %471, %465, %444, %438, %417, %411, %394, %377, %335, %329, %308, %266, %260, %239, %222, %205, %183, %152, %122, %97, %72, %52, %39, %22
  %474 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %475 = call i32 @uninstantiate(%struct.TYPE_20__* %474)
  %476 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %477 = call i32 @RAND_DRBG_free(%struct.TYPE_20__* %476)
  %478 = load i32, i32* %7, align 4
  ret i32 %478
}

declare dso_local i32 @TEST_ptr(%struct.TYPE_20__*) #1

declare dso_local %struct.TYPE_20__* @RAND_DRBG_new(i32, i32, i32*) #1

declare dso_local i32 @TEST_true(i32) #1

declare dso_local i32 @disable_crngt(%struct.TYPE_20__*) #1

declare dso_local i32 @init(%struct.TYPE_20__*, %struct.TYPE_21__*, %struct.TYPE_19__*) #1

declare dso_local i64 @RAND_DRBG_instantiate(%struct.TYPE_20__*, i32, i64) #1

declare dso_local i64 @TEST_int_le(i64, i32) #1

declare dso_local i64 @TEST_false(i32) #1

declare dso_local i32 @RAND_DRBG_generate(%struct.TYPE_20__*, i8*, i64, i32, i32, i64) #1

declare dso_local i32 @uninstantiate(%struct.TYPE_20__*) #1

declare dso_local i32 @instantiate(%struct.TYPE_20__*, %struct.TYPE_21__*, %struct.TYPE_19__*) #1

declare dso_local i32 @TEST_int_eq(i32, i32) #1

declare dso_local i64 @RAND_DRBG_reseed(%struct.TYPE_20__*, i32, i64, i32) #1

declare dso_local i32 @TEST_mem_eq(i8*, i32, i32*, i32) #1

declare dso_local i32 @RAND_DRBG_free(%struct.TYPE_20__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
