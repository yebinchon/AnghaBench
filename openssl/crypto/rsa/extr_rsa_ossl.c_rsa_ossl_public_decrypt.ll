; ModuleID = '/home/carl/AnghaBench/openssl/crypto/rsa/extr_rsa_ossl.c_rsa_ossl_public_decrypt.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/rsa/extr_rsa_ossl.c_rsa_ossl_public_decrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32*, i32, i32*, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32 (i32*, i32*, i32*, i32*, i32*, i32)* }

@OPENSSL_RSA_MAX_MODULUS_BITS = common dso_local global i64 0, align 8
@RSA_F_RSA_OSSL_PUBLIC_DECRYPT = common dso_local global i32 0, align 4
@RSA_R_MODULUS_TOO_LARGE = common dso_local global i32 0, align 4
@RSA_R_BAD_E_VALUE = common dso_local global i32 0, align 4
@OPENSSL_RSA_SMALL_MODULUS_BITS = common dso_local global i64 0, align 8
@OPENSSL_RSA_MAX_PUBEXP_BITS = common dso_local global i64 0, align 8
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4
@RSA_R_DATA_GREATER_THAN_MOD_LEN = common dso_local global i32 0, align 4
@RSA_R_DATA_TOO_LARGE_FOR_MODULUS = common dso_local global i32 0, align 4
@RSA_FLAG_CACHE_PUBLIC = common dso_local global i32 0, align 4
@RSA_R_UNKNOWN_PADDING_TYPE = common dso_local global i32 0, align 4
@RSA_R_PADDING_CHECK_FAILED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i8*, %struct.TYPE_5__*, i32)* @rsa_ossl_public_decrypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rsa_ossl_public_decrypt(i32 %0, i8* %1, i8* %2, %struct.TYPE_5__* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_5__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i32*, align 8
  store i32 %0, i32* %7, align 4
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store %struct.TYPE_5__* %3, %struct.TYPE_5__** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %15, align 4
  store i32 -1, i32* %16, align 4
  store i8* null, i8** %17, align 8
  store i32* null, i32** %18, align 8
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  %22 = call i64 @BN_num_bits(i32* %21)
  %23 = load i64, i64* @OPENSSL_RSA_MAX_MODULUS_BITS, align 8
  %24 = icmp sgt i64 %22, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %5
  %26 = load i32, i32* @RSA_F_RSA_OSSL_PUBLIC_DECRYPT, align 4
  %27 = load i32, i32* @RSA_R_MODULUS_TOO_LARGE, align 4
  %28 = call i32 @RSAerr(i32 %26, i32 %27)
  store i32 -1, i32* %6, align 4
  br label %225

29:                                               ; preds = %5
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 3
  %35 = load i32*, i32** %34, align 8
  %36 = call i64 @BN_ucmp(i32* %32, i32* %35)
  %37 = icmp sle i64 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %29
  %39 = load i32, i32* @RSA_F_RSA_OSSL_PUBLIC_DECRYPT, align 4
  %40 = load i32, i32* @RSA_R_BAD_E_VALUE, align 4
  %41 = call i32 @RSAerr(i32 %39, i32 %40)
  store i32 -1, i32* %6, align 4
  br label %225

42:                                               ; preds = %29
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = call i64 @BN_num_bits(i32* %45)
  %47 = load i64, i64* @OPENSSL_RSA_SMALL_MODULUS_BITS, align 8
  %48 = icmp sgt i64 %46, %47
  br i1 %48, label %49, label %61

49:                                               ; preds = %42
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 3
  %52 = load i32*, i32** %51, align 8
  %53 = call i64 @BN_num_bits(i32* %52)
  %54 = load i64, i64* @OPENSSL_RSA_MAX_PUBEXP_BITS, align 8
  %55 = icmp sgt i64 %53, %54
  br i1 %55, label %56, label %60

56:                                               ; preds = %49
  %57 = load i32, i32* @RSA_F_RSA_OSSL_PUBLIC_DECRYPT, align 4
  %58 = load i32, i32* @RSA_R_BAD_E_VALUE, align 4
  %59 = call i32 @RSAerr(i32 %57, i32 %58)
  store i32 -1, i32* %6, align 4
  br label %225

60:                                               ; preds = %49
  br label %61

61:                                               ; preds = %60, %42
  %62 = call i32* (...) @BN_CTX_new()
  store i32* %62, i32** %18, align 8
  %63 = icmp eq i32* %62, null
  br i1 %63, label %64, label %65

64:                                               ; preds = %61
  br label %216

65:                                               ; preds = %61
  %66 = load i32*, i32** %18, align 8
  %67 = call i32 @BN_CTX_start(i32* %66)
  %68 = load i32*, i32** %18, align 8
  %69 = call i32* @BN_CTX_get(i32* %68)
  store i32* %69, i32** %12, align 8
  %70 = load i32*, i32** %18, align 8
  %71 = call i32* @BN_CTX_get(i32* %70)
  store i32* %71, i32** %13, align 8
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 1
  %74 = load i32*, i32** %73, align 8
  %75 = call i32 @BN_num_bytes(i32* %74)
  store i32 %75, i32* %15, align 4
  %76 = load i32, i32* %15, align 4
  %77 = call i8* @OPENSSL_malloc(i32 %76)
  store i8* %77, i8** %17, align 8
  %78 = load i32*, i32** %13, align 8
  %79 = icmp eq i32* %78, null
  br i1 %79, label %83, label %80

80:                                               ; preds = %65
  %81 = load i8*, i8** %17, align 8
  %82 = icmp eq i8* %81, null
  br i1 %82, label %83, label %87

83:                                               ; preds = %80, %65
  %84 = load i32, i32* @RSA_F_RSA_OSSL_PUBLIC_DECRYPT, align 4
  %85 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %86 = call i32 @RSAerr(i32 %84, i32 %85)
  br label %216

87:                                               ; preds = %80
  %88 = load i32, i32* %7, align 4
  %89 = load i32, i32* %15, align 4
  %90 = icmp sgt i32 %88, %89
  br i1 %90, label %91, label %95

91:                                               ; preds = %87
  %92 = load i32, i32* @RSA_F_RSA_OSSL_PUBLIC_DECRYPT, align 4
  %93 = load i32, i32* @RSA_R_DATA_GREATER_THAN_MOD_LEN, align 4
  %94 = call i32 @RSAerr(i32 %92, i32 %93)
  br label %216

95:                                               ; preds = %87
  %96 = load i8*, i8** %8, align 8
  %97 = load i32, i32* %7, align 4
  %98 = load i32*, i32** %12, align 8
  %99 = call i32* @BN_bin2bn(i8* %96, i32 %97, i32* %98)
  %100 = icmp eq i32* %99, null
  br i1 %100, label %101, label %102

101:                                              ; preds = %95
  br label %216

102:                                              ; preds = %95
  %103 = load i32*, i32** %12, align 8
  %104 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 1
  %106 = load i32*, i32** %105, align 8
  %107 = call i64 @BN_ucmp(i32* %103, i32* %106)
  %108 = icmp sge i64 %107, 0
  br i1 %108, label %109, label %113

109:                                              ; preds = %102
  %110 = load i32, i32* @RSA_F_RSA_OSSL_PUBLIC_DECRYPT, align 4
  %111 = load i32, i32* @RSA_R_DATA_TOO_LARGE_FOR_MODULUS, align 4
  %112 = call i32 @RSAerr(i32 %110, i32 %111)
  br label %216

113:                                              ; preds = %102
  %114 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = load i32, i32* @RSA_FLAG_CACHE_PUBLIC, align 4
  %118 = and i32 %116, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %134

120:                                              ; preds = %113
  %121 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %121, i32 0, i32 2
  %123 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %124 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %123, i32 0, i32 5
  %125 = load i32, i32* %124, align 8
  %126 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %126, i32 0, i32 1
  %128 = load i32*, i32** %127, align 8
  %129 = load i32*, i32** %18, align 8
  %130 = call i32 @BN_MONT_CTX_set_locked(i32* %122, i32 %125, i32* %128, i32* %129)
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %133, label %132

132:                                              ; preds = %120
  br label %216

133:                                              ; preds = %120
  br label %134

134:                                              ; preds = %133, %113
  %135 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %136 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %135, i32 0, i32 4
  %137 = load %struct.TYPE_4__*, %struct.TYPE_4__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i32 0, i32 0
  %139 = load i32 (i32*, i32*, i32*, i32*, i32*, i32)*, i32 (i32*, i32*, i32*, i32*, i32*, i32)** %138, align 8
  %140 = load i32*, i32** %13, align 8
  %141 = load i32*, i32** %12, align 8
  %142 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %143 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %142, i32 0, i32 3
  %144 = load i32*, i32** %143, align 8
  %145 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %146 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %145, i32 0, i32 1
  %147 = load i32*, i32** %146, align 8
  %148 = load i32*, i32** %18, align 8
  %149 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %150 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %149, i32 0, i32 2
  %151 = load i32, i32* %150, align 8
  %152 = call i32 %139(i32* %140, i32* %141, i32* %144, i32* %147, i32* %148, i32 %151)
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %155, label %154

154:                                              ; preds = %134
  br label %216

155:                                              ; preds = %134
  %156 = load i32, i32* %11, align 4
  %157 = icmp eq i32 %156, 128
  br i1 %157, label %158, label %175

158:                                              ; preds = %155
  %159 = load i32*, i32** %13, align 8
  %160 = call i32* @bn_get_words(i32* %159)
  %161 = getelementptr inbounds i32, i32* %160, i64 0
  %162 = load i32, i32* %161, align 4
  %163 = and i32 %162, 15
  %164 = icmp ne i32 %163, 12
  br i1 %164, label %165, label %175

165:                                              ; preds = %158
  %166 = load i32*, i32** %13, align 8
  %167 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %168 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %167, i32 0, i32 1
  %169 = load i32*, i32** %168, align 8
  %170 = load i32*, i32** %13, align 8
  %171 = call i32 @BN_sub(i32* %166, i32* %169, i32* %170)
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %174, label %173

173:                                              ; preds = %165
  br label %216

174:                                              ; preds = %165
  br label %175

175:                                              ; preds = %174, %158, %155
  %176 = load i32*, i32** %13, align 8
  %177 = load i8*, i8** %17, align 8
  %178 = load i32, i32* %15, align 4
  %179 = call i32 @BN_bn2binpad(i32* %176, i8* %177, i32 %178)
  store i32 %179, i32* %14, align 4
  %180 = load i32, i32* %14, align 4
  %181 = icmp slt i32 %180, 0
  br i1 %181, label %182, label %183

182:                                              ; preds = %175
  br label %216

183:                                              ; preds = %175
  %184 = load i32, i32* %11, align 4
  switch i32 %184, label %204 [
    i32 129, label %185
    i32 128, label %192
    i32 130, label %199
  ]

185:                                              ; preds = %183
  %186 = load i8*, i8** %9, align 8
  %187 = load i32, i32* %15, align 4
  %188 = load i8*, i8** %17, align 8
  %189 = load i32, i32* %14, align 4
  %190 = load i32, i32* %15, align 4
  %191 = call i32 @RSA_padding_check_PKCS1_type_1(i8* %186, i32 %187, i8* %188, i32 %189, i32 %190)
  store i32 %191, i32* %16, align 4
  br label %208

192:                                              ; preds = %183
  %193 = load i8*, i8** %9, align 8
  %194 = load i32, i32* %15, align 4
  %195 = load i8*, i8** %17, align 8
  %196 = load i32, i32* %14, align 4
  %197 = load i32, i32* %15, align 4
  %198 = call i32 @RSA_padding_check_X931(i8* %193, i32 %194, i8* %195, i32 %196, i32 %197)
  store i32 %198, i32* %16, align 4
  br label %208

199:                                              ; preds = %183
  %200 = load i8*, i8** %9, align 8
  %201 = load i8*, i8** %17, align 8
  %202 = load i32, i32* %14, align 4
  store i32 %202, i32* %16, align 4
  %203 = call i32 @memcpy(i8* %200, i8* %201, i32 %202)
  br label %208

204:                                              ; preds = %183
  %205 = load i32, i32* @RSA_F_RSA_OSSL_PUBLIC_DECRYPT, align 4
  %206 = load i32, i32* @RSA_R_UNKNOWN_PADDING_TYPE, align 4
  %207 = call i32 @RSAerr(i32 %205, i32 %206)
  br label %216

208:                                              ; preds = %199, %192, %185
  %209 = load i32, i32* %16, align 4
  %210 = icmp slt i32 %209, 0
  br i1 %210, label %211, label %215

211:                                              ; preds = %208
  %212 = load i32, i32* @RSA_F_RSA_OSSL_PUBLIC_DECRYPT, align 4
  %213 = load i32, i32* @RSA_R_PADDING_CHECK_FAILED, align 4
  %214 = call i32 @RSAerr(i32 %212, i32 %213)
  br label %215

215:                                              ; preds = %211, %208
  br label %216

216:                                              ; preds = %215, %204, %182, %173, %154, %132, %109, %101, %91, %83, %64
  %217 = load i32*, i32** %18, align 8
  %218 = call i32 @BN_CTX_end(i32* %217)
  %219 = load i32*, i32** %18, align 8
  %220 = call i32 @BN_CTX_free(i32* %219)
  %221 = load i8*, i8** %17, align 8
  %222 = load i32, i32* %15, align 4
  %223 = call i32 @OPENSSL_clear_free(i8* %221, i32 %222)
  %224 = load i32, i32* %16, align 4
  store i32 %224, i32* %6, align 4
  br label %225

225:                                              ; preds = %216, %56, %38, %25
  %226 = load i32, i32* %6, align 4
  ret i32 %226
}

declare dso_local i64 @BN_num_bits(i32*) #1

declare dso_local i32 @RSAerr(i32, i32) #1

declare dso_local i64 @BN_ucmp(i32*, i32*) #1

declare dso_local i32* @BN_CTX_new(...) #1

declare dso_local i32 @BN_CTX_start(i32*) #1

declare dso_local i32* @BN_CTX_get(i32*) #1

declare dso_local i32 @BN_num_bytes(i32*) #1

declare dso_local i8* @OPENSSL_malloc(i32) #1

declare dso_local i32* @BN_bin2bn(i8*, i32, i32*) #1

declare dso_local i32 @BN_MONT_CTX_set_locked(i32*, i32, i32*, i32*) #1

declare dso_local i32* @bn_get_words(i32*) #1

declare dso_local i32 @BN_sub(i32*, i32*, i32*) #1

declare dso_local i32 @BN_bn2binpad(i32*, i8*, i32) #1

declare dso_local i32 @RSA_padding_check_PKCS1_type_1(i8*, i32, i8*, i32, i32) #1

declare dso_local i32 @RSA_padding_check_X931(i8*, i32, i8*, i32, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @BN_CTX_end(i32*) #1

declare dso_local i32 @BN_CTX_free(i32*) #1

declare dso_local i32 @OPENSSL_clear_free(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
