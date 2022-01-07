; ModuleID = '/home/carl/AnghaBench/openssl/apps/extr_pkeyutl.c_init_ctx.c'
source_filename = "/home/carl/AnghaBench/openssl/apps/extr_pkeyutl.c_init_ctx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@bio_err = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"A private key is needed for this operation\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"Error getting password\0A\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"Private Key\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"Public Key\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"Certificate\00", align 1
@NID_undef = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [32 x i8] c"The given KDF \22%s\22 is unknown.\0A\00", align 1
@EVP_PKEY_EC = common dso_local global i64 0, align 8
@NID_sm2 = common dso_local global i32 0, align 4
@EVP_PKEY_SM2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i32*, i8*, i32, i32, i8*, i32, i32*, i32, i32, i32**)* @init_ctx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @init_ctx(i8* %0, i32* %1, i8* %2, i32 %3, i32 %4, i8* %5, i32 %6, i32* %7, i32 %8, i32 %9, i32** %10) #0 {
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32**, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i32*, align 8
  %25 = alloca i32*, align 8
  %26 = alloca i8*, align 8
  %27 = alloca i32, align 4
  %28 = alloca i32*, align 8
  %29 = alloca i32, align 4
  %30 = alloca i32*, align 8
  %31 = alloca i32*, align 8
  %32 = alloca i32, align 4
  store i8* %0, i8** %12, align 8
  store i32* %1, i32** %13, align 8
  store i8* %2, i8** %14, align 8
  store i32 %3, i32* %15, align 4
  store i32 %4, i32* %16, align 4
  store i8* %5, i8** %17, align 8
  store i32 %6, i32* %18, align 4
  store i32* %7, i32** %19, align 8
  store i32 %8, i32* %20, align 4
  store i32 %9, i32* %21, align 4
  store i32** %10, i32*** %22, align 8
  store i32* null, i32** %23, align 8
  store i32* null, i32** %24, align 8
  store i32* null, i32** %25, align 8
  store i8* null, i8** %26, align 8
  store i32 -1, i32* %27, align 4
  %33 = load i32, i32* %18, align 4
  %34 = icmp eq i32 %33, 134
  br i1 %34, label %41, label %35

35:                                               ; preds = %11
  %36 = load i32, i32* %18, align 4
  %37 = icmp eq i32 %36, 137
  br i1 %37, label %41, label %38

38:                                               ; preds = %35
  %39 = load i32, i32* %18, align 4
  %40 = icmp eq i32 %39, 136
  br i1 %40, label %41, label %50

41:                                               ; preds = %38, %35, %11
  %42 = load i32, i32* %16, align 4
  %43 = icmp ne i32 %42, 129
  br i1 %43, label %44, label %50

44:                                               ; preds = %41
  %45 = load i8*, i8** %12, align 8
  %46 = icmp eq i8* %45, null
  br i1 %46, label %47, label %50

47:                                               ; preds = %44
  %48 = load i32, i32* @bio_err, align 4
  %49 = call i32 (i32, i8*, ...) @BIO_printf(i32 %48, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  br label %194

50:                                               ; preds = %44, %41, %38
  %51 = load i8*, i8** %17, align 8
  %52 = call i32 @app_passwd(i8* %51, i32* null, i8** %26, i32* null)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %57, label %54

54:                                               ; preds = %50
  %55 = load i32, i32* @bio_err, align 4
  %56 = call i32 (i32, i8*, ...) @BIO_printf(i32 %55, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %194

57:                                               ; preds = %50
  %58 = load i32, i32* %16, align 4
  switch i32 %58, label %83 [
    i32 129, label %59
    i32 128, label %65
    i32 131, label %70
    i32 130, label %82
  ]

59:                                               ; preds = %57
  %60 = load i8*, i8** %14, align 8
  %61 = load i32, i32* %15, align 4
  %62 = load i8*, i8** %26, align 8
  %63 = load i32*, i32** %19, align 8
  %64 = call i32* @load_key(i8* %60, i32 %61, i32 0, i8* %62, i32* %63, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  store i32* %64, i32** %23, align 8
  br label %83

65:                                               ; preds = %57
  %66 = load i8*, i8** %14, align 8
  %67 = load i32, i32* %15, align 4
  %68 = load i32*, i32** %19, align 8
  %69 = call i32* @load_pubkey(i8* %66, i32 %67, i32 0, i32* null, i32* %68, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  store i32* %69, i32** %23, align 8
  br label %83

70:                                               ; preds = %57
  %71 = load i8*, i8** %14, align 8
  %72 = load i32, i32* %15, align 4
  %73 = call i32* @load_cert(i8* %71, i32 %72, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  store i32* %73, i32** %28, align 8
  %74 = load i32*, i32** %28, align 8
  %75 = icmp ne i32* %74, null
  br i1 %75, label %76, label %81

76:                                               ; preds = %70
  %77 = load i32*, i32** %28, align 8
  %78 = call i32* @X509_get_pubkey(i32* %77)
  store i32* %78, i32** %23, align 8
  %79 = load i32*, i32** %28, align 8
  %80 = call i32 @X509_free(i32* %79)
  br label %81

81:                                               ; preds = %76, %70
  br label %83

82:                                               ; preds = %57
  br label %83

83:                                               ; preds = %57, %82, %81, %65, %59
  %84 = load i32, i32* %20, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %83
  %87 = load i32*, i32** %19, align 8
  store i32* %87, i32** %25, align 8
  br label %88

88:                                               ; preds = %86, %83
  %89 = load i8*, i8** %12, align 8
  %90 = icmp ne i8* %89, null
  br i1 %90, label %91, label %112

91:                                               ; preds = %88
  %92 = load i8*, i8** %12, align 8
  %93 = call i32 @OBJ_sn2nid(i8* %92)
  store i32 %93, i32* %29, align 4
  %94 = load i32, i32* %29, align 4
  %95 = load i32, i32* @NID_undef, align 4
  %96 = icmp eq i32 %94, %95
  br i1 %96, label %97, label %108

97:                                               ; preds = %91
  %98 = load i8*, i8** %12, align 8
  %99 = call i32 @OBJ_ln2nid(i8* %98)
  store i32 %99, i32* %29, align 4
  %100 = load i32, i32* %29, align 4
  %101 = load i32, i32* @NID_undef, align 4
  %102 = icmp eq i32 %100, %101
  br i1 %102, label %103, label %107

103:                                              ; preds = %97
  %104 = load i32, i32* @bio_err, align 4
  %105 = load i8*, i8** %12, align 8
  %106 = call i32 (i32, i8*, ...) @BIO_printf(i32 %104, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0), i8* %105)
  br label %194

107:                                              ; preds = %97
  br label %108

108:                                              ; preds = %107, %91
  %109 = load i32, i32* %29, align 4
  %110 = load i32*, i32** %25, align 8
  %111 = call i32* @EVP_PKEY_CTX_new_id(i32 %109, i32* %110)
  store i32* %111, i32** %24, align 8
  br label %158

112:                                              ; preds = %88
  %113 = load i32*, i32** %23, align 8
  %114 = icmp eq i32* %113, null
  br i1 %114, label %115, label %116

115:                                              ; preds = %112
  br label %194

116:                                              ; preds = %112
  %117 = load i32*, i32** %23, align 8
  %118 = call i64 @EVP_PKEY_id(i32* %117)
  %119 = load i64, i64* @EVP_PKEY_EC, align 8
  %120 = icmp eq i64 %118, %119
  br i1 %120, label %121, label %143

121:                                              ; preds = %116
  store i32* null, i32** %30, align 8
  store i32* null, i32** %31, align 8
  %122 = load i32*, i32** %23, align 8
  %123 = call i32* @EVP_PKEY_get0_EC_KEY(i32* %122)
  store i32* %123, i32** %30, align 8
  %124 = icmp eq i32* %123, null
  br i1 %124, label %133, label %125

125:                                              ; preds = %121
  %126 = load i32*, i32** %30, align 8
  %127 = call i32* @EC_KEY_get0_group(i32* %126)
  store i32* %127, i32** %31, align 8
  %128 = icmp eq i32* %127, null
  br i1 %128, label %133, label %129

129:                                              ; preds = %125
  %130 = load i32*, i32** %31, align 8
  %131 = call i32 @EC_GROUP_get_curve_name(i32* %130)
  store i32 %131, i32* %32, align 4
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %133, label %134

133:                                              ; preds = %129, %125, %121
  br label %194

134:                                              ; preds = %129
  %135 = load i32, i32* %32, align 4
  %136 = load i32, i32* @NID_sm2, align 4
  %137 = icmp eq i32 %135, %136
  br i1 %137, label %138, label %142

138:                                              ; preds = %134
  %139 = load i32*, i32** %23, align 8
  %140 = load i32, i32* @EVP_PKEY_SM2, align 4
  %141 = call i32 @EVP_PKEY_set_alias_type(i32* %139, i32 %140)
  br label %142

142:                                              ; preds = %138, %134
  br label %143

143:                                              ; preds = %142, %116
  %144 = load i32*, i32** %23, align 8
  %145 = call i32 @EVP_PKEY_size(i32* %144)
  %146 = load i32*, i32** %13, align 8
  store i32 %145, i32* %146, align 4
  %147 = load i32*, i32** %23, align 8
  %148 = load i32*, i32** %25, align 8
  %149 = call i32* @EVP_PKEY_CTX_new(i32* %147, i32* %148)
  store i32* %149, i32** %24, align 8
  %150 = load i32**, i32*** %22, align 8
  %151 = icmp ne i32** %150, null
  br i1 %151, label %152, label %155

152:                                              ; preds = %143
  %153 = load i32*, i32** %23, align 8
  %154 = load i32**, i32*** %22, align 8
  store i32* %153, i32** %154, align 8
  br label %155

155:                                              ; preds = %152, %143
  %156 = load i32*, i32** %23, align 8
  %157 = call i32 @EVP_PKEY_free(i32* %156)
  br label %158

158:                                              ; preds = %155, %108
  %159 = load i32*, i32** %24, align 8
  %160 = icmp eq i32* %159, null
  br i1 %160, label %161, label %162

161:                                              ; preds = %158
  br label %194

162:                                              ; preds = %158
  %163 = load i32, i32* %21, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %166

165:                                              ; preds = %162
  store i32 1, i32* %27, align 4
  br label %187

166:                                              ; preds = %162
  %167 = load i32, i32* %18, align 4
  switch i32 %167, label %186 [
    i32 134, label %168
    i32 133, label %171
    i32 132, label %174
    i32 135, label %177
    i32 137, label %180
    i32 136, label %183
  ]

168:                                              ; preds = %166
  %169 = load i32*, i32** %24, align 8
  %170 = call i32 @EVP_PKEY_sign_init(i32* %169)
  store i32 %170, i32* %27, align 4
  br label %186

171:                                              ; preds = %166
  %172 = load i32*, i32** %24, align 8
  %173 = call i32 @EVP_PKEY_verify_init(i32* %172)
  store i32 %173, i32* %27, align 4
  br label %186

174:                                              ; preds = %166
  %175 = load i32*, i32** %24, align 8
  %176 = call i32 @EVP_PKEY_verify_recover_init(i32* %175)
  store i32 %176, i32* %27, align 4
  br label %186

177:                                              ; preds = %166
  %178 = load i32*, i32** %24, align 8
  %179 = call i32 @EVP_PKEY_encrypt_init(i32* %178)
  store i32 %179, i32* %27, align 4
  br label %186

180:                                              ; preds = %166
  %181 = load i32*, i32** %24, align 8
  %182 = call i32 @EVP_PKEY_decrypt_init(i32* %181)
  store i32 %182, i32* %27, align 4
  br label %186

183:                                              ; preds = %166
  %184 = load i32*, i32** %24, align 8
  %185 = call i32 @EVP_PKEY_derive_init(i32* %184)
  store i32 %185, i32* %27, align 4
  br label %186

186:                                              ; preds = %166, %183, %180, %177, %174, %171, %168
  br label %187

187:                                              ; preds = %186, %165
  %188 = load i32, i32* %27, align 4
  %189 = icmp sle i32 %188, 0
  br i1 %189, label %190, label %193

190:                                              ; preds = %187
  %191 = load i32*, i32** %24, align 8
  %192 = call i32 @EVP_PKEY_CTX_free(i32* %191)
  store i32* null, i32** %24, align 8
  br label %193

193:                                              ; preds = %190, %187
  br label %194

194:                                              ; preds = %193, %161, %133, %115, %103, %54, %47
  %195 = load i8*, i8** %26, align 8
  %196 = call i32 @OPENSSL_free(i8* %195)
  %197 = load i32*, i32** %24, align 8
  ret i32* %197
}

declare dso_local i32 @BIO_printf(i32, i8*, ...) #1

declare dso_local i32 @app_passwd(i8*, i32*, i8**, i32*) #1

declare dso_local i32* @load_key(i8*, i32, i32, i8*, i32*, i8*) #1

declare dso_local i32* @load_pubkey(i8*, i32, i32, i32*, i32*, i8*) #1

declare dso_local i32* @load_cert(i8*, i32, i8*) #1

declare dso_local i32* @X509_get_pubkey(i32*) #1

declare dso_local i32 @X509_free(i32*) #1

declare dso_local i32 @OBJ_sn2nid(i8*) #1

declare dso_local i32 @OBJ_ln2nid(i8*) #1

declare dso_local i32* @EVP_PKEY_CTX_new_id(i32, i32*) #1

declare dso_local i64 @EVP_PKEY_id(i32*) #1

declare dso_local i32* @EVP_PKEY_get0_EC_KEY(i32*) #1

declare dso_local i32* @EC_KEY_get0_group(i32*) #1

declare dso_local i32 @EC_GROUP_get_curve_name(i32*) #1

declare dso_local i32 @EVP_PKEY_set_alias_type(i32*, i32) #1

declare dso_local i32 @EVP_PKEY_size(i32*) #1

declare dso_local i32* @EVP_PKEY_CTX_new(i32*, i32*) #1

declare dso_local i32 @EVP_PKEY_free(i32*) #1

declare dso_local i32 @EVP_PKEY_sign_init(i32*) #1

declare dso_local i32 @EVP_PKEY_verify_init(i32*) #1

declare dso_local i32 @EVP_PKEY_verify_recover_init(i32*) #1

declare dso_local i32 @EVP_PKEY_encrypt_init(i32*) #1

declare dso_local i32 @EVP_PKEY_decrypt_init(i32*) #1

declare dso_local i32 @EVP_PKEY_derive_init(i32*) #1

declare dso_local i32 @EVP_PKEY_CTX_free(i32*) #1

declare dso_local i32 @OPENSSL_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
