; ModuleID = '/home/carl/AnghaBench/openssl/crypto/rand/extr_drbg_lib.c_RAND_DRBG_instantiate.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/rand/extr_drbg_lib.c_RAND_DRBG_instantiate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, i64, i64, i64, i64, i64, i64 (%struct.TYPE_10__*, i8**, i32, i64, i64)*, i64, i32, i64 (%struct.TYPE_10__*, i8**, i64, i64, i64, i32)*, i32, i32 (%struct.TYPE_10__*, i8*, i64)*, i32 (%struct.TYPE_10__*, i8*, i64)*, i32, i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 (%struct.TYPE_10__*, i8*, i64, i8*, i64, i8*, i64)* }

@RAND_F_RAND_DRBG_INSTANTIATE = common dso_local global i32 0, align 4
@RAND_R_PERSONALISATION_STRING_TOO_LONG = common dso_local global i32 0, align 4
@RAND_R_NO_DRBG_IMPLEMENTATION_SELECTED = common dso_local global i32 0, align 4
@DRBG_UNINITIALISED = common dso_local global i64 0, align 8
@DRBG_ERROR = common dso_local global i64 0, align 8
@RAND_R_IN_ERROR_STATE = common dso_local global i32 0, align 4
@RAND_R_ALREADY_INSTANTIATED = common dso_local global i32 0, align 4
@RAND_R_ERROR_RETRIEVING_ENTROPY = common dso_local global i32 0, align 4
@RAND_R_ERROR_RETRIEVING_NONCE = common dso_local global i32 0, align 4
@RAND_R_ERROR_INSTANTIATING_DRBG = common dso_local global i32 0, align 4
@DRBG_READY = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @RAND_DRBG_instantiate(%struct.TYPE_10__* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i8* null, i8** %8, align 8
  store i8* null, i8** %9, align 8
  store i64 0, i64* %10, align 8
  store i64 0, i64* %11, align 8
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %12, align 8
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %13, align 8
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %14, align 8
  %24 = load i64, i64* %7, align 8
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 3
  %27 = load i64, i64* %26, align 8
  %28 = icmp ugt i64 %24, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %3
  %30 = load i32, i32* @RAND_F_RAND_DRBG_INSTANTIATE, align 4
  %31 = load i32, i32* @RAND_R_PERSONALISATION_STRING_TOO_LONG, align 4
  %32 = call i32 @RANDerr(i32 %30, i32 %31)
  br label %219

33:                                               ; preds = %3
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 15
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %35, align 8
  %37 = icmp eq %struct.TYPE_9__* %36, null
  br i1 %37, label %38, label %42

38:                                               ; preds = %33
  %39 = load i32, i32* @RAND_F_RAND_DRBG_INSTANTIATE, align 4
  %40 = load i32, i32* @RAND_R_NO_DRBG_IMPLEMENTATION_SELECTED, align 4
  %41 = call i32 @RANDerr(i32 %39, i32 %40)
  br label %219

42:                                               ; preds = %33
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 4
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @DRBG_UNINITIALISED, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %48, label %63

48:                                               ; preds = %42
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 4
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @DRBG_ERROR, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %58

54:                                               ; preds = %48
  %55 = load i32, i32* @RAND_F_RAND_DRBG_INSTANTIATE, align 4
  %56 = load i32, i32* @RAND_R_IN_ERROR_STATE, align 4
  %57 = call i32 @RANDerr(i32 %55, i32 %56)
  br label %62

58:                                               ; preds = %48
  %59 = load i32, i32* @RAND_F_RAND_DRBG_INSTANTIATE, align 4
  %60 = load i32, i32* @RAND_R_ALREADY_INSTANTIATED, align 4
  %61 = call i32 @RANDerr(i32 %59, i32 %60)
  br label %62

62:                                               ; preds = %58, %54
  br label %219

63:                                               ; preds = %42
  %64 = load i64, i64* @DRBG_ERROR, align 8
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 4
  store i64 %64, i64* %66, align 8
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 5
  %69 = load i64, i64* %68, align 8
  %70 = icmp ugt i64 %69, 0
  br i1 %70, label %71, label %93

71:                                               ; preds = %63
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 6
  %74 = load i64 (%struct.TYPE_10__*, i8**, i32, i64, i64)*, i64 (%struct.TYPE_10__*, i8**, i32, i64, i64)** %73, align 8
  %75 = icmp eq i64 (%struct.TYPE_10__*, i8**, i32, i64, i64)* %74, null
  br i1 %75, label %76, label %93

76:                                               ; preds = %71
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = udiv i64 %79, 2
  %81 = load i64, i64* %12, align 8
  %82 = add i64 %81, %80
  store i64 %82, i64* %12, align 8
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 5
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* %13, align 8
  %87 = add i64 %86, %85
  store i64 %87, i64* %13, align 8
  %88 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 7
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* %14, align 8
  %92 = add i64 %91, %90
  store i64 %92, i64* %14, align 8
  br label %93

93:                                               ; preds = %76, %71, %63
  %94 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %94, i32 0, i32 13
  %96 = call i32 @tsan_load(i32* %95)
  %97 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %97, i32 0, i32 8
  store i32 %96, i32* %98, align 8
  %99 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i32 0, i32 8
  %101 = load i32, i32* %100, align 8
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %116

103:                                              ; preds = %93
  %104 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %104, i32 0, i32 8
  %106 = load i32, i32* %105, align 8
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %105, align 8
  %108 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %109 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %108, i32 0, i32 8
  %110 = load i32, i32* %109, align 8
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %115, label %112

112:                                              ; preds = %103
  %113 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %114 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %113, i32 0, i32 8
  store i32 1, i32* %114, align 8
  br label %115

115:                                              ; preds = %112, %103
  br label %116

116:                                              ; preds = %115, %93
  %117 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %118 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %117, i32 0, i32 9
  %119 = load i64 (%struct.TYPE_10__*, i8**, i64, i64, i64, i32)*, i64 (%struct.TYPE_10__*, i8**, i64, i64, i64, i32)** %118, align 8
  %120 = icmp ne i64 (%struct.TYPE_10__*, i8**, i64, i64, i64, i32)* %119, null
  br i1 %120, label %121, label %130

121:                                              ; preds = %116
  %122 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %123 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %122, i32 0, i32 9
  %124 = load i64 (%struct.TYPE_10__*, i8**, i64, i64, i64, i32)*, i64 (%struct.TYPE_10__*, i8**, i64, i64, i64, i32)** %123, align 8
  %125 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %126 = load i64, i64* %12, align 8
  %127 = load i64, i64* %13, align 8
  %128 = load i64, i64* %14, align 8
  %129 = call i64 %124(%struct.TYPE_10__* %125, i8** %9, i64 %126, i64 %127, i64 %128, i32 0)
  store i64 %129, i64* %11, align 8
  br label %130

130:                                              ; preds = %121, %116
  %131 = load i64, i64* %11, align 8
  %132 = load i64, i64* %13, align 8
  %133 = icmp ult i64 %131, %132
  br i1 %133, label %138, label %134

134:                                              ; preds = %130
  %135 = load i64, i64* %11, align 8
  %136 = load i64, i64* %14, align 8
  %137 = icmp ugt i64 %135, %136
  br i1 %137, label %138, label %142

138:                                              ; preds = %134, %130
  %139 = load i32, i32* @RAND_F_RAND_DRBG_INSTANTIATE, align 4
  %140 = load i32, i32* @RAND_R_ERROR_RETRIEVING_ENTROPY, align 4
  %141 = call i32 @RANDerr(i32 %139, i32 %140)
  br label %219

142:                                              ; preds = %134
  %143 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %144 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %143, i32 0, i32 5
  %145 = load i64, i64* %144, align 8
  %146 = icmp ugt i64 %145, 0
  br i1 %146, label %147, label %185

147:                                              ; preds = %142
  %148 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %149 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %148, i32 0, i32 6
  %150 = load i64 (%struct.TYPE_10__*, i8**, i32, i64, i64)*, i64 (%struct.TYPE_10__*, i8**, i32, i64, i64)** %149, align 8
  %151 = icmp ne i64 (%struct.TYPE_10__*, i8**, i32, i64, i64)* %150, null
  br i1 %151, label %152, label %185

152:                                              ; preds = %147
  %153 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %154 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %153, i32 0, i32 6
  %155 = load i64 (%struct.TYPE_10__*, i8**, i32, i64, i64)*, i64 (%struct.TYPE_10__*, i8**, i32, i64, i64)** %154, align 8
  %156 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %157 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %158 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %157, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = udiv i64 %159, 2
  %161 = trunc i64 %160 to i32
  %162 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %163 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %162, i32 0, i32 5
  %164 = load i64, i64* %163, align 8
  %165 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %166 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %165, i32 0, i32 7
  %167 = load i64, i64* %166, align 8
  %168 = call i64 %155(%struct.TYPE_10__* %156, i8** %8, i32 %161, i64 %164, i64 %167)
  store i64 %168, i64* %10, align 8
  %169 = load i64, i64* %10, align 8
  %170 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %171 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %170, i32 0, i32 5
  %172 = load i64, i64* %171, align 8
  %173 = icmp ult i64 %169, %172
  br i1 %173, label %180, label %174

174:                                              ; preds = %152
  %175 = load i64, i64* %10, align 8
  %176 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %177 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %176, i32 0, i32 7
  %178 = load i64, i64* %177, align 8
  %179 = icmp ugt i64 %175, %178
  br i1 %179, label %180, label %184

180:                                              ; preds = %174, %152
  %181 = load i32, i32* @RAND_F_RAND_DRBG_INSTANTIATE, align 4
  %182 = load i32, i32* @RAND_R_ERROR_RETRIEVING_NONCE, align 4
  %183 = call i32 @RANDerr(i32 %181, i32 %182)
  br label %219

184:                                              ; preds = %174
  br label %185

185:                                              ; preds = %184, %147, %142
  %186 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %187 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %186, i32 0, i32 15
  %188 = load %struct.TYPE_9__*, %struct.TYPE_9__** %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %188, i32 0, i32 0
  %190 = load i32 (%struct.TYPE_10__*, i8*, i64, i8*, i64, i8*, i64)*, i32 (%struct.TYPE_10__*, i8*, i64, i8*, i64, i8*, i64)** %189, align 8
  %191 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %192 = load i8*, i8** %9, align 8
  %193 = load i64, i64* %11, align 8
  %194 = load i8*, i8** %8, align 8
  %195 = load i64, i64* %10, align 8
  %196 = load i8*, i8** %6, align 8
  %197 = load i64, i64* %7, align 8
  %198 = call i32 %190(%struct.TYPE_10__* %191, i8* %192, i64 %193, i8* %194, i64 %195, i8* %196, i64 %197)
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %204, label %200

200:                                              ; preds = %185
  %201 = load i32, i32* @RAND_F_RAND_DRBG_INSTANTIATE, align 4
  %202 = load i32, i32* @RAND_R_ERROR_INSTANTIATING_DRBG, align 4
  %203 = call i32 @RANDerr(i32 %201, i32 %202)
  br label %219

204:                                              ; preds = %185
  %205 = load i64, i64* @DRBG_READY, align 8
  %206 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %207 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %206, i32 0, i32 4
  store i64 %205, i64* %207, align 8
  %208 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %209 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %208, i32 0, i32 10
  store i32 1, i32* %209, align 8
  %210 = call i32 @time(i32* null)
  %211 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %212 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %211, i32 0, i32 14
  store i32 %210, i32* %212, align 4
  %213 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %214 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %213, i32 0, i32 13
  %215 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %216 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %215, i32 0, i32 8
  %217 = load i32, i32* %216, align 8
  %218 = call i32 @tsan_store(i32* %214, i32 %217)
  br label %219

219:                                              ; preds = %204, %200, %180, %138, %62, %38, %29
  %220 = load i8*, i8** %9, align 8
  %221 = icmp ne i8* %220, null
  br i1 %221, label %222, label %235

222:                                              ; preds = %219
  %223 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %224 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %223, i32 0, i32 12
  %225 = load i32 (%struct.TYPE_10__*, i8*, i64)*, i32 (%struct.TYPE_10__*, i8*, i64)** %224, align 8
  %226 = icmp ne i32 (%struct.TYPE_10__*, i8*, i64)* %225, null
  br i1 %226, label %227, label %235

227:                                              ; preds = %222
  %228 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %229 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %228, i32 0, i32 12
  %230 = load i32 (%struct.TYPE_10__*, i8*, i64)*, i32 (%struct.TYPE_10__*, i8*, i64)** %229, align 8
  %231 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %232 = load i8*, i8** %9, align 8
  %233 = load i64, i64* %11, align 8
  %234 = call i32 %230(%struct.TYPE_10__* %231, i8* %232, i64 %233)
  br label %235

235:                                              ; preds = %227, %222, %219
  %236 = load i8*, i8** %8, align 8
  %237 = icmp ne i8* %236, null
  br i1 %237, label %238, label %251

238:                                              ; preds = %235
  %239 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %240 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %239, i32 0, i32 11
  %241 = load i32 (%struct.TYPE_10__*, i8*, i64)*, i32 (%struct.TYPE_10__*, i8*, i64)** %240, align 8
  %242 = icmp ne i32 (%struct.TYPE_10__*, i8*, i64)* %241, null
  br i1 %242, label %243, label %251

243:                                              ; preds = %238
  %244 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %245 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %244, i32 0, i32 11
  %246 = load i32 (%struct.TYPE_10__*, i8*, i64)*, i32 (%struct.TYPE_10__*, i8*, i64)** %245, align 8
  %247 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %248 = load i8*, i8** %8, align 8
  %249 = load i64, i64* %10, align 8
  %250 = call i32 %246(%struct.TYPE_10__* %247, i8* %248, i64 %249)
  br label %251

251:                                              ; preds = %243, %238, %235
  %252 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %253 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %252, i32 0, i32 4
  %254 = load i64, i64* %253, align 8
  %255 = load i64, i64* @DRBG_READY, align 8
  %256 = icmp eq i64 %254, %255
  br i1 %256, label %257, label %258

257:                                              ; preds = %251
  store i32 1, i32* %4, align 4
  br label %259

258:                                              ; preds = %251
  store i32 0, i32* %4, align 4
  br label %259

259:                                              ; preds = %258, %257
  %260 = load i32, i32* %4, align 4
  ret i32 %260
}

declare dso_local i32 @RANDerr(i32, i32) #1

declare dso_local i32 @tsan_load(i32*) #1

declare dso_local i32 @time(i32*) #1

declare dso_local i32 @tsan_store(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
