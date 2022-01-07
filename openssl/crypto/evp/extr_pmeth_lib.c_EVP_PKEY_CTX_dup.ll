; ModuleID = '/home/carl/AnghaBench/openssl/crypto/evp/extr_pmeth_lib.c_EVP_PKEY_CTX_dup.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/evp/extr_pmeth_lib.c_EVP_PKEY_CTX_dup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { %struct.TYPE_24__*, i32*, i64, %struct.TYPE_23__, i32, i32, i32, i32, i32* }
%struct.TYPE_24__ = type { i64 (%struct.TYPE_25__*, %struct.TYPE_25__*)* }
%struct.TYPE_23__ = type { %struct.TYPE_22__, %struct.TYPE_21__ }
%struct.TYPE_22__ = type { %struct.TYPE_19__*, i32* }
%struct.TYPE_19__ = type { i32* (i32*)* }
%struct.TYPE_21__ = type { %struct.TYPE_20__*, i32* }
%struct.TYPE_20__ = type { i32* (i32*)* }

@EVP_F_EVP_PKEY_CTX_DUP = common dso_local global i32 0, align 4
@ERR_R_ENGINE_LIB = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_25__* @EVP_PKEY_CTX_dup(%struct.TYPE_25__* %0) #0 {
  %2 = alloca %struct.TYPE_25__*, align 8
  %3 = alloca %struct.TYPE_25__*, align 8
  %4 = alloca %struct.TYPE_25__*, align 8
  store %struct.TYPE_25__* %0, %struct.TYPE_25__** %3, align 8
  %5 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %6 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %5, i32 0, i32 0
  %7 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %8 = icmp eq %struct.TYPE_24__* %7, null
  br i1 %8, label %16, label %9

9:                                                ; preds = %1
  %10 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %12, i32 0, i32 0
  %14 = load i64 (%struct.TYPE_25__*, %struct.TYPE_25__*)*, i64 (%struct.TYPE_25__*, %struct.TYPE_25__*)** %13, align 8
  %15 = icmp eq i64 (%struct.TYPE_25__*, %struct.TYPE_25__*)* %14, null
  br i1 %15, label %16, label %39

16:                                               ; preds = %9, %1
  %17 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %18 = call i64 @EVP_PKEY_CTX_IS_DERIVE_OP(%struct.TYPE_25__* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %16
  %21 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %21, i32 0, i32 3
  %23 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = icmp eq i32* %25, null
  br i1 %26, label %38, label %27

27:                                               ; preds = %20, %16
  %28 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %29 = call i64 @EVP_PKEY_CTX_IS_SIGNATURE_OP(%struct.TYPE_25__* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %39

31:                                               ; preds = %27
  %32 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %32, i32 0, i32 3
  %34 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = icmp eq i32* %36, null
  br i1 %37, label %38, label %39

38:                                               ; preds = %31, %20
  store %struct.TYPE_25__* null, %struct.TYPE_25__** %2, align 8
  br label %312

39:                                               ; preds = %31, %27, %9
  %40 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %54

44:                                               ; preds = %39
  %45 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = call i32 @ENGINE_init(i64 %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %54, label %50

50:                                               ; preds = %44
  %51 = load i32, i32* @EVP_F_EVP_PKEY_CTX_DUP, align 4
  %52 = load i32, i32* @ERR_R_ENGINE_LIB, align 4
  %53 = call i32 @EVPerr(i32 %51, i32 %52)
  store %struct.TYPE_25__* null, %struct.TYPE_25__** %2, align 8
  br label %312

54:                                               ; preds = %44, %39
  %55 = call %struct.TYPE_25__* @OPENSSL_zalloc(i32 80)
  store %struct.TYPE_25__* %55, %struct.TYPE_25__** %4, align 8
  %56 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %57 = icmp eq %struct.TYPE_25__* %56, null
  br i1 %57, label %58, label %62

58:                                               ; preds = %54
  %59 = load i32, i32* @EVP_F_EVP_PKEY_CTX_DUP, align 4
  %60 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %61 = call i32 @EVPerr(i32 %59, i32 %60)
  store %struct.TYPE_25__* null, %struct.TYPE_25__** %2, align 8
  br label %312

62:                                               ; preds = %54
  %63 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %63, i32 0, i32 8
  %65 = load i32*, i32** %64, align 8
  %66 = icmp ne i32* %65, null
  br i1 %66, label %67, label %72

67:                                               ; preds = %62
  %68 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %68, i32 0, i32 8
  %70 = load i32*, i32** %69, align 8
  %71 = call i32 @EVP_PKEY_up_ref(i32* %70)
  br label %72

72:                                               ; preds = %67, %62
  %73 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %73, i32 0, i32 8
  %75 = load i32*, i32** %74, align 8
  %76 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %76, i32 0, i32 8
  store i32* %75, i32** %77, align 8
  %78 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %79 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %78, i32 0, i32 7
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %81, i32 0, i32 7
  store i32 %80, i32* %82, align 4
  %83 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %84 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %83, i32 0, i32 6
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %86, i32 0, i32 6
  store i32 %85, i32* %87, align 8
  %88 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %89 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %88, i32 0, i32 5
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %91, i32 0, i32 5
  store i32 %90, i32* %92, align 4
  %93 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %94 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %93, i32 0, i32 4
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %96, i32 0, i32 4
  store i32 %95, i32* %97, align 8
  %98 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %99 = call i64 @EVP_PKEY_CTX_IS_DERIVE_OP(%struct.TYPE_25__* %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %183

101:                                              ; preds = %72
  %102 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %103 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %102, i32 0, i32 3
  %104 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %104, i32 0, i32 0
  %106 = load %struct.TYPE_20__*, %struct.TYPE_20__** %105, align 8
  %107 = icmp ne %struct.TYPE_20__* %106, null
  br i1 %107, label %108, label %129

108:                                              ; preds = %101
  %109 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %110 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %109, i32 0, i32 3
  %111 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %111, i32 0, i32 0
  %113 = load %struct.TYPE_20__*, %struct.TYPE_20__** %112, align 8
  %114 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %115 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %114, i32 0, i32 3
  %116 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %115, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %116, i32 0, i32 0
  store %struct.TYPE_20__* %113, %struct.TYPE_20__** %117, align 8
  %118 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %119 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %118, i32 0, i32 3
  %120 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %119, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %120, i32 0, i32 0
  %122 = load %struct.TYPE_20__*, %struct.TYPE_20__** %121, align 8
  %123 = call i32 @EVP_KEYEXCH_up_ref(%struct.TYPE_20__* %122)
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %128, label %125

125:                                              ; preds = %108
  %126 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %127 = call i32 @OPENSSL_free(%struct.TYPE_25__* %126)
  store %struct.TYPE_25__* null, %struct.TYPE_25__** %2, align 8
  br label %312

128:                                              ; preds = %108
  br label %129

129:                                              ; preds = %128, %101
  %130 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %131 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %130, i32 0, i32 3
  %132 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %131, i32 0, i32 1
  %133 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %132, i32 0, i32 1
  %134 = load i32*, i32** %133, align 8
  %135 = icmp ne i32* %134, null
  br i1 %135, label %136, label %182

136:                                              ; preds = %129
  %137 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %138 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %137, i32 0, i32 3
  %139 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %138, i32 0, i32 1
  %140 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %139, i32 0, i32 0
  %141 = load %struct.TYPE_20__*, %struct.TYPE_20__** %140, align 8
  %142 = icmp ne %struct.TYPE_20__* %141, null
  %143 = zext i1 %142 to i32
  %144 = call i32 @ossl_assert(i32 %143)
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %147, label %146

146:                                              ; preds = %136
  store %struct.TYPE_25__* null, %struct.TYPE_25__** %2, align 8
  br label %312

147:                                              ; preds = %136
  %148 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %149 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %148, i32 0, i32 3
  %150 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %149, i32 0, i32 1
  %151 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %150, i32 0, i32 0
  %152 = load %struct.TYPE_20__*, %struct.TYPE_20__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %152, i32 0, i32 0
  %154 = load i32* (i32*)*, i32* (i32*)** %153, align 8
  %155 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %156 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %155, i32 0, i32 3
  %157 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %156, i32 0, i32 1
  %158 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %157, i32 0, i32 1
  %159 = load i32*, i32** %158, align 8
  %160 = call i32* %154(i32* %159)
  %161 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %162 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %161, i32 0, i32 3
  %163 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %162, i32 0, i32 1
  %164 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %163, i32 0, i32 1
  store i32* %160, i32** %164, align 8
  %165 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %166 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %165, i32 0, i32 3
  %167 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %166, i32 0, i32 1
  %168 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %167, i32 0, i32 1
  %169 = load i32*, i32** %168, align 8
  %170 = icmp eq i32* %169, null
  br i1 %170, label %171, label %180

171:                                              ; preds = %147
  %172 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %173 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %172, i32 0, i32 3
  %174 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %173, i32 0, i32 1
  %175 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %174, i32 0, i32 0
  %176 = load %struct.TYPE_20__*, %struct.TYPE_20__** %175, align 8
  %177 = call i32 @EVP_KEYEXCH_free(%struct.TYPE_20__* %176)
  %178 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %179 = call i32 @OPENSSL_free(%struct.TYPE_25__* %178)
  store %struct.TYPE_25__* null, %struct.TYPE_25__** %2, align 8
  br label %312

180:                                              ; preds = %147
  %181 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  store %struct.TYPE_25__* %181, %struct.TYPE_25__** %2, align 8
  br label %312

182:                                              ; preds = %129
  br label %270

183:                                              ; preds = %72
  %184 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %185 = call i64 @EVP_PKEY_CTX_IS_SIGNATURE_OP(%struct.TYPE_25__* %184)
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %187, label %269

187:                                              ; preds = %183
  %188 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %189 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %188, i32 0, i32 3
  %190 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %189, i32 0, i32 0
  %191 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %190, i32 0, i32 0
  %192 = load %struct.TYPE_19__*, %struct.TYPE_19__** %191, align 8
  %193 = icmp ne %struct.TYPE_19__* %192, null
  br i1 %193, label %194, label %215

194:                                              ; preds = %187
  %195 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %196 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %195, i32 0, i32 3
  %197 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %196, i32 0, i32 0
  %198 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %197, i32 0, i32 0
  %199 = load %struct.TYPE_19__*, %struct.TYPE_19__** %198, align 8
  %200 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %201 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %200, i32 0, i32 3
  %202 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %201, i32 0, i32 0
  %203 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %202, i32 0, i32 0
  store %struct.TYPE_19__* %199, %struct.TYPE_19__** %203, align 8
  %204 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %205 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %204, i32 0, i32 3
  %206 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %205, i32 0, i32 0
  %207 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %206, i32 0, i32 0
  %208 = load %struct.TYPE_19__*, %struct.TYPE_19__** %207, align 8
  %209 = call i32 @EVP_SIGNATURE_up_ref(%struct.TYPE_19__* %208)
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %214, label %211

211:                                              ; preds = %194
  %212 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %213 = call i32 @OPENSSL_free(%struct.TYPE_25__* %212)
  store %struct.TYPE_25__* null, %struct.TYPE_25__** %2, align 8
  br label %312

214:                                              ; preds = %194
  br label %215

215:                                              ; preds = %214, %187
  %216 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %217 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %216, i32 0, i32 3
  %218 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %217, i32 0, i32 0
  %219 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %218, i32 0, i32 1
  %220 = load i32*, i32** %219, align 8
  %221 = icmp ne i32* %220, null
  br i1 %221, label %222, label %268

222:                                              ; preds = %215
  %223 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %224 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %223, i32 0, i32 3
  %225 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %224, i32 0, i32 0
  %226 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %225, i32 0, i32 0
  %227 = load %struct.TYPE_19__*, %struct.TYPE_19__** %226, align 8
  %228 = icmp ne %struct.TYPE_19__* %227, null
  %229 = zext i1 %228 to i32
  %230 = call i32 @ossl_assert(i32 %229)
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %233, label %232

232:                                              ; preds = %222
  store %struct.TYPE_25__* null, %struct.TYPE_25__** %2, align 8
  br label %312

233:                                              ; preds = %222
  %234 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %235 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %234, i32 0, i32 3
  %236 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %235, i32 0, i32 0
  %237 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %236, i32 0, i32 0
  %238 = load %struct.TYPE_19__*, %struct.TYPE_19__** %237, align 8
  %239 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %238, i32 0, i32 0
  %240 = load i32* (i32*)*, i32* (i32*)** %239, align 8
  %241 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %242 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %241, i32 0, i32 3
  %243 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %242, i32 0, i32 0
  %244 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %243, i32 0, i32 1
  %245 = load i32*, i32** %244, align 8
  %246 = call i32* %240(i32* %245)
  %247 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %248 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %247, i32 0, i32 3
  %249 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %248, i32 0, i32 0
  %250 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %249, i32 0, i32 1
  store i32* %246, i32** %250, align 8
  %251 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %252 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %251, i32 0, i32 3
  %253 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %252, i32 0, i32 0
  %254 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %253, i32 0, i32 1
  %255 = load i32*, i32** %254, align 8
  %256 = icmp eq i32* %255, null
  br i1 %256, label %257, label %266

257:                                              ; preds = %233
  %258 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %259 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %258, i32 0, i32 3
  %260 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %259, i32 0, i32 0
  %261 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %260, i32 0, i32 0
  %262 = load %struct.TYPE_19__*, %struct.TYPE_19__** %261, align 8
  %263 = call i32 @EVP_SIGNATURE_free(%struct.TYPE_19__* %262)
  %264 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %265 = call i32 @OPENSSL_free(%struct.TYPE_25__* %264)
  store %struct.TYPE_25__* null, %struct.TYPE_25__** %2, align 8
  br label %312

266:                                              ; preds = %233
  %267 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  store %struct.TYPE_25__* %267, %struct.TYPE_25__** %2, align 8
  br label %312

268:                                              ; preds = %215
  br label %269

269:                                              ; preds = %268, %183
  br label %270

270:                                              ; preds = %269, %182
  %271 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %272 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %271, i32 0, i32 0
  %273 = load %struct.TYPE_24__*, %struct.TYPE_24__** %272, align 8
  %274 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %275 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %274, i32 0, i32 0
  store %struct.TYPE_24__* %273, %struct.TYPE_24__** %275, align 8
  %276 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %277 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %276, i32 0, i32 2
  %278 = load i64, i64* %277, align 8
  %279 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %280 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %279, i32 0, i32 2
  store i64 %278, i64* %280, align 8
  %281 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %282 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %281, i32 0, i32 1
  %283 = load i32*, i32** %282, align 8
  %284 = icmp ne i32* %283, null
  br i1 %284, label %285, label %290

285:                                              ; preds = %270
  %286 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %287 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %286, i32 0, i32 1
  %288 = load i32*, i32** %287, align 8
  %289 = call i32 @EVP_PKEY_up_ref(i32* %288)
  br label %290

290:                                              ; preds = %285, %270
  %291 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %292 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %291, i32 0, i32 1
  %293 = load i32*, i32** %292, align 8
  %294 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %295 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %294, i32 0, i32 1
  store i32* %293, i32** %295, align 8
  %296 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %297 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %296, i32 0, i32 0
  %298 = load %struct.TYPE_24__*, %struct.TYPE_24__** %297, align 8
  %299 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %298, i32 0, i32 0
  %300 = load i64 (%struct.TYPE_25__*, %struct.TYPE_25__*)*, i64 (%struct.TYPE_25__*, %struct.TYPE_25__*)** %299, align 8
  %301 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %302 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %303 = call i64 %300(%struct.TYPE_25__* %301, %struct.TYPE_25__* %302)
  %304 = icmp sgt i64 %303, 0
  br i1 %304, label %305, label %307

305:                                              ; preds = %290
  %306 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  store %struct.TYPE_25__* %306, %struct.TYPE_25__** %2, align 8
  br label %312

307:                                              ; preds = %290
  %308 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %309 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %308, i32 0, i32 0
  store %struct.TYPE_24__* null, %struct.TYPE_24__** %309, align 8
  %310 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %311 = call i32 @EVP_PKEY_CTX_free(%struct.TYPE_25__* %310)
  store %struct.TYPE_25__* null, %struct.TYPE_25__** %2, align 8
  br label %312

312:                                              ; preds = %307, %305, %266, %257, %232, %211, %180, %171, %146, %125, %58, %50, %38
  %313 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  ret %struct.TYPE_25__* %313
}

declare dso_local i64 @EVP_PKEY_CTX_IS_DERIVE_OP(%struct.TYPE_25__*) #1

declare dso_local i64 @EVP_PKEY_CTX_IS_SIGNATURE_OP(%struct.TYPE_25__*) #1

declare dso_local i32 @ENGINE_init(i64) #1

declare dso_local i32 @EVPerr(i32, i32) #1

declare dso_local %struct.TYPE_25__* @OPENSSL_zalloc(i32) #1

declare dso_local i32 @EVP_PKEY_up_ref(i32*) #1

declare dso_local i32 @EVP_KEYEXCH_up_ref(%struct.TYPE_20__*) #1

declare dso_local i32 @OPENSSL_free(%struct.TYPE_25__*) #1

declare dso_local i32 @ossl_assert(i32) #1

declare dso_local i32 @EVP_KEYEXCH_free(%struct.TYPE_20__*) #1

declare dso_local i32 @EVP_SIGNATURE_up_ref(%struct.TYPE_19__*) #1

declare dso_local i32 @EVP_SIGNATURE_free(%struct.TYPE_19__*) #1

declare dso_local i32 @EVP_PKEY_CTX_free(%struct.TYPE_25__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
