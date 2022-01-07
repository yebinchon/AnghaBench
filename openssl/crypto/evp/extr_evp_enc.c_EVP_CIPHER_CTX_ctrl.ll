; ModuleID = '/home/carl/AnghaBench/openssl/crypto/evp/extr_evp_enc.c_EVP_CIPHER_CTX_ctrl.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/evp/extr_evp_enc.c_EVP_CIPHER_CTX_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_7__*, i32 }
%struct.TYPE_7__ = type { {}*, i32* }

@EVP_CTRL_RET_UNSUPPORTED = common dso_local global i32 0, align 4
@OSSL_PARAM_END = common dso_local global i32 0, align 4
@EVP_F_EVP_CIPHER_CTX_CTRL = common dso_local global i32 0, align 4
@EVP_R_NO_CIPHER_SET = common dso_local global i32 0, align 4
@OSSL_CIPHER_PARAM_KEYLEN = common dso_local global i32 0, align 4
@OSSL_CIPHER_PARAM_RANDOM_KEY = common dso_local global i32 0, align 4
@OSSL_CIPHER_PARAM_IV = common dso_local global i32 0, align 4
@OSSL_CIPHER_PARAM_IVLEN = common dso_local global i32 0, align 4
@OSSL_CIPHER_PARAM_AEAD_TLS1_IV_FIXED = common dso_local global i32 0, align 4
@OSSL_CIPHER_PARAM_ROUNDS = common dso_local global i32 0, align 4
@OSSL_CIPHER_PARAM_SPEED = common dso_local global i32 0, align 4
@OSSL_CIPHER_PARAM_AEAD_TAG = common dso_local global i32 0, align 4
@OSSL_CIPHER_PARAM_AEAD_MAC_KEY = common dso_local global i32 0, align 4
@OSSL_CIPHER_PARAM_AEAD_TLS1_AAD = common dso_local global i32 0, align 4
@OSSL_CIPHER_PARAM_AEAD_TLS1_AAD_PAD = common dso_local global i32 0, align 4
@OSSL_CIPHER_PARAM_RC2_KEYBITS = common dso_local global i32 0, align 4
@EVP_R_CTRL_NOT_IMPLEMENTED = common dso_local global i32 0, align 4
@EVP_R_CTRL_OPERATION_NOT_IMPLEMENTED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @EVP_CIPHER_CTX_ctrl(%struct.TYPE_6__* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca [2 x i32], align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %15 = load i32, i32* @EVP_CTRL_RET_UNSUPPORTED, align 4
  store i32 %15, i32* %10, align 4
  store i32 1, i32* %11, align 4
  %16 = load i32, i32* %8, align 4
  %17 = sext i32 %16 to i64
  store i64 %17, i64* %12, align 8
  %18 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 0
  %19 = load i32, i32* @OSSL_PARAM_END, align 4
  store i32 %19, i32* %18, align 4
  %20 = getelementptr inbounds i32, i32* %18, i64 1
  %21 = load i32, i32* @OSSL_PARAM_END, align 4
  store i32 %21, i32* %20, align 4
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %23 = icmp eq %struct.TYPE_6__* %22, null
  br i1 %23, label %29, label %24

24:                                               ; preds = %4
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %26, align 8
  %28 = icmp eq %struct.TYPE_7__* %27, null
  br i1 %28, label %29, label %33

29:                                               ; preds = %24, %4
  %30 = load i32, i32* @EVP_F_EVP_CIPHER_CTX_CTRL, align 4
  %31 = load i32, i32* @EVP_R_NO_CIPHER_SET, align 4
  %32 = call i32 @EVPerr(i32 %30, i32 %31)
  store i32 0, i32* %5, align 4
  br label %204

33:                                               ; preds = %24
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = icmp eq i32* %38, null
  br i1 %39, label %40, label %41

40:                                               ; preds = %33
  br label %170

41:                                               ; preds = %33
  %42 = load i32, i32* %7, align 4
  switch i32 %42, label %55 [
    i32 132, label %43
    i32 133, label %47
    i32 134, label %53
    i32 131, label %54
    i32 137, label %56
    i32 142, label %62
    i32 138, label %70
    i32 135, label %76
    i32 129, label %77
    i32 128, label %86
    i32 143, label %95
    i32 140, label %96
    i32 141, label %102
    i32 139, label %108
    i32 136, label %143
    i32 130, label %144
  ]

43:                                               ; preds = %41
  %44 = load i32, i32* @OSSL_CIPHER_PARAM_KEYLEN, align 4
  %45 = call i32 @OSSL_PARAM_construct_size_t(i32 %44, i64* %12)
  %46 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 0
  store i32 %45, i32* %46, align 4
  br label %148

47:                                               ; preds = %41
  store i32 0, i32* %11, align 4
  %48 = load i32, i32* @OSSL_CIPHER_PARAM_RANDOM_KEY, align 4
  %49 = load i8*, i8** %9, align 8
  %50 = load i64, i64* %12, align 8
  %51 = call i32 @OSSL_PARAM_construct_octet_string(i32 %48, i8* %49, i64 %50)
  %52 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 0
  store i32 %51, i32* %52, align 4
  br label %148

53:                                               ; preds = %41
  store i32 1, i32* %5, align 4
  br label %204

54:                                               ; preds = %41
  br label %55

55:                                               ; preds = %41, %54
  br label %194

56:                                               ; preds = %41
  store i32 0, i32* %11, align 4
  %57 = load i32, i32* @OSSL_CIPHER_PARAM_IV, align 4
  %58 = load i8*, i8** %9, align 8
  %59 = load i64, i64* %12, align 8
  %60 = call i32 @OSSL_PARAM_construct_octet_string(i32 %57, i8* %58, i64 %59)
  %61 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 0
  store i32 %60, i32* %61, align 4
  br label %148

62:                                               ; preds = %41
  %63 = load i32, i32* %8, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %62
  store i32 0, i32* %5, align 4
  br label %204

66:                                               ; preds = %62
  %67 = load i32, i32* @OSSL_CIPHER_PARAM_IVLEN, align 4
  %68 = call i32 @OSSL_PARAM_construct_size_t(i32 %67, i64* %12)
  %69 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 0
  store i32 %68, i32* %69, align 4
  br label %148

70:                                               ; preds = %41
  %71 = load i32, i32* @OSSL_CIPHER_PARAM_AEAD_TLS1_IV_FIXED, align 4
  %72 = load i8*, i8** %9, align 8
  %73 = load i64, i64* %12, align 8
  %74 = call i32 @OSSL_PARAM_construct_octet_string(i32 %71, i8* %72, i64 %73)
  %75 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 0
  store i32 %74, i32* %75, align 4
  br label %148

76:                                               ; preds = %41
  store i32 0, i32* %11, align 4
  br label %77

77:                                               ; preds = %41, %76
  %78 = load i32, i32* %8, align 4
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %77
  store i32 0, i32* %5, align 4
  br label %204

81:                                               ; preds = %77
  %82 = load i32, i32* %8, align 4
  store i32 %82, i32* %13, align 4
  %83 = load i32, i32* @OSSL_CIPHER_PARAM_ROUNDS, align 4
  %84 = call i32 @OSSL_PARAM_construct_uint(i32 %83, i32* %13)
  %85 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 0
  store i32 %84, i32* %85, align 4
  br label %148

86:                                               ; preds = %41
  %87 = load i32, i32* %8, align 4
  %88 = icmp slt i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %86
  store i32 0, i32* %5, align 4
  br label %204

90:                                               ; preds = %86
  %91 = load i32, i32* %8, align 4
  store i32 %91, i32* %13, align 4
  %92 = load i32, i32* @OSSL_CIPHER_PARAM_SPEED, align 4
  %93 = call i32 @OSSL_PARAM_construct_uint(i32 %92, i32* %13)
  %94 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 0
  store i32 %93, i32* %94, align 4
  br label %148

95:                                               ; preds = %41
  store i32 0, i32* %11, align 4
  br label %96

96:                                               ; preds = %41, %95
  %97 = load i32, i32* @OSSL_CIPHER_PARAM_AEAD_TAG, align 4
  %98 = load i8*, i8** %9, align 8
  %99 = load i64, i64* %12, align 8
  %100 = call i32 @OSSL_PARAM_construct_octet_string(i32 %97, i8* %98, i64 %99)
  %101 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 0
  store i32 %100, i32* %101, align 4
  br label %148

102:                                              ; preds = %41
  %103 = load i32, i32* @OSSL_CIPHER_PARAM_AEAD_MAC_KEY, align 4
  %104 = load i8*, i8** %9, align 8
  %105 = load i64, i64* %12, align 8
  %106 = call i32 @OSSL_PARAM_construct_octet_string(i32 %103, i8* %104, i64 %105)
  %107 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 0
  store i32 %106, i32* %107, align 4
  br label %148

108:                                              ; preds = %41
  %109 = load i32, i32* @OSSL_CIPHER_PARAM_AEAD_TLS1_AAD, align 4
  %110 = load i8*, i8** %9, align 8
  %111 = load i64, i64* %12, align 8
  %112 = call i32 @OSSL_PARAM_construct_octet_string(i32 %109, i8* %110, i64 %111)
  %113 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 0
  store i32 %112, i32* %113, align 4
  %114 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 0
  %116 = load %struct.TYPE_7__*, %struct.TYPE_7__** %115, align 8
  %117 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 8
  %120 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 0
  %121 = call i32 @evp_do_ciph_ctx_setparams(%struct.TYPE_7__* %116, i32 %119, i32* %120)
  store i32 %121, i32* %10, align 4
  %122 = load i32, i32* %10, align 4
  %123 = icmp sle i32 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %108
  br label %194

125:                                              ; preds = %108
  %126 = load i32, i32* @OSSL_CIPHER_PARAM_AEAD_TLS1_AAD_PAD, align 4
  %127 = call i32 @OSSL_PARAM_construct_size_t(i32 %126, i64* %12)
  %128 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 0
  store i32 %127, i32* %128, align 4
  %129 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 0
  %131 = load %struct.TYPE_7__*, %struct.TYPE_7__** %130, align 8
  %132 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 8
  %135 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 0
  %136 = call i32 @evp_do_ciph_ctx_getparams(%struct.TYPE_7__* %131, i32 %134, i32* %135)
  store i32 %136, i32* %10, align 4
  %137 = load i32, i32* %10, align 4
  %138 = icmp sle i32 %137, 0
  br i1 %138, label %139, label %140

139:                                              ; preds = %125
  br label %194

140:                                              ; preds = %125
  %141 = load i64, i64* %12, align 8
  %142 = trunc i64 %141 to i32
  store i32 %142, i32* %5, align 4
  br label %204

143:                                              ; preds = %41
  store i32 0, i32* %11, align 4
  br label %144

144:                                              ; preds = %41, %143
  %145 = load i32, i32* @OSSL_CIPHER_PARAM_RC2_KEYBITS, align 4
  %146 = call i32 @OSSL_PARAM_construct_size_t(i32 %145, i64* %12)
  %147 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 0
  store i32 %146, i32* %147, align 4
  br label %148

148:                                              ; preds = %144, %102, %96, %90, %81, %70, %66, %56, %47, %43
  %149 = load i32, i32* %11, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %160

151:                                              ; preds = %148
  %152 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %153 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %152, i32 0, i32 0
  %154 = load %struct.TYPE_7__*, %struct.TYPE_7__** %153, align 8
  %155 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %156 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 8
  %158 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 0
  %159 = call i32 @evp_do_ciph_ctx_setparams(%struct.TYPE_7__* %154, i32 %157, i32* %158)
  store i32 %159, i32* %10, align 4
  br label %169

160:                                              ; preds = %148
  %161 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %162 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %161, i32 0, i32 0
  %163 = load %struct.TYPE_7__*, %struct.TYPE_7__** %162, align 8
  %164 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %165 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 8
  %167 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 0
  %168 = call i32 @evp_do_ciph_ctx_getparams(%struct.TYPE_7__* %163, i32 %166, i32* %167)
  store i32 %168, i32* %10, align 4
  br label %169

169:                                              ; preds = %160, %151
  br label %194

170:                                              ; preds = %40
  %171 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %172 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %171, i32 0, i32 0
  %173 = load %struct.TYPE_7__*, %struct.TYPE_7__** %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %173, i32 0, i32 0
  %175 = bitcast {}** %174 to i32 (%struct.TYPE_6__*, i32, i32, i8*)**
  %176 = load i32 (%struct.TYPE_6__*, i32, i32, i8*)*, i32 (%struct.TYPE_6__*, i32, i32, i8*)** %175, align 8
  %177 = icmp eq i32 (%struct.TYPE_6__*, i32, i32, i8*)* %176, null
  br i1 %177, label %178, label %182

178:                                              ; preds = %170
  %179 = load i32, i32* @EVP_F_EVP_CIPHER_CTX_CTRL, align 4
  %180 = load i32, i32* @EVP_R_CTRL_NOT_IMPLEMENTED, align 4
  %181 = call i32 @EVPerr(i32 %179, i32 %180)
  store i32 0, i32* %5, align 4
  br label %204

182:                                              ; preds = %170
  %183 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %184 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %183, i32 0, i32 0
  %185 = load %struct.TYPE_7__*, %struct.TYPE_7__** %184, align 8
  %186 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %185, i32 0, i32 0
  %187 = bitcast {}** %186 to i32 (%struct.TYPE_6__*, i32, i32, i8*)**
  %188 = load i32 (%struct.TYPE_6__*, i32, i32, i8*)*, i32 (%struct.TYPE_6__*, i32, i32, i8*)** %187, align 8
  %189 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %190 = load i32, i32* %7, align 4
  %191 = load i32, i32* %8, align 4
  %192 = load i8*, i8** %9, align 8
  %193 = call i32 %188(%struct.TYPE_6__* %189, i32 %190, i32 %191, i8* %192)
  store i32 %193, i32* %10, align 4
  br label %194

194:                                              ; preds = %182, %169, %139, %124, %55
  %195 = load i32, i32* %10, align 4
  %196 = load i32, i32* @EVP_CTRL_RET_UNSUPPORTED, align 4
  %197 = icmp eq i32 %195, %196
  br i1 %197, label %198, label %202

198:                                              ; preds = %194
  %199 = load i32, i32* @EVP_F_EVP_CIPHER_CTX_CTRL, align 4
  %200 = load i32, i32* @EVP_R_CTRL_OPERATION_NOT_IMPLEMENTED, align 4
  %201 = call i32 @EVPerr(i32 %199, i32 %200)
  store i32 0, i32* %5, align 4
  br label %204

202:                                              ; preds = %194
  %203 = load i32, i32* %10, align 4
  store i32 %203, i32* %5, align 4
  br label %204

204:                                              ; preds = %202, %198, %178, %140, %89, %80, %65, %53, %29
  %205 = load i32, i32* %5, align 4
  ret i32 %205
}

declare dso_local i32 @EVPerr(i32, i32) #1

declare dso_local i32 @OSSL_PARAM_construct_size_t(i32, i64*) #1

declare dso_local i32 @OSSL_PARAM_construct_octet_string(i32, i8*, i64) #1

declare dso_local i32 @OSSL_PARAM_construct_uint(i32, i32*) #1

declare dso_local i32 @evp_do_ciph_ctx_setparams(%struct.TYPE_7__*, i32, i32*) #1

declare dso_local i32 @evp_do_ciph_ctx_getparams(%struct.TYPE_7__*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
