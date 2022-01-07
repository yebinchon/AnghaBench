; ModuleID = '/home/carl/AnghaBench/openssl/crypto/cms/extr_cms_env.c_cms_RecipientInfo_ktri_decrypt.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/cms/extr_cms_env.c_cms_RecipientInfo_ktri_decrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { %struct.TYPE_21__* }
%struct.TYPE_21__ = type { i8*, i64, %struct.TYPE_18__*, i32, i64 }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_19__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i32*, %struct.TYPE_17__*, i32* }
%struct.TYPE_17__ = type { i32, i32 }

@CMS_F_CMS_RECIPIENTINFO_KTRI_DECRYPT = common dso_local global i32 0, align 4
@CMS_R_NO_PRIVATE_KEY = common dso_local global i32 0, align 4
@CMS_R_UNKNOWN_CIPHER = common dso_local global i32 0, align 4
@EVP_PKEY_OP_DECRYPT = common dso_local global i32 0, align 4
@EVP_PKEY_CTRL_CMS_DECRYPT = common dso_local global i32 0, align 4
@CMS_R_CTRL_ERROR = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4
@CMS_R_CMS_LIB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_22__*, %struct.TYPE_19__*)* @cms_RecipientInfo_ktri_decrypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cms_RecipientInfo_ktri_decrypt(%struct.TYPE_22__* %0, %struct.TYPE_19__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_22__*, align 8
  %5 = alloca %struct.TYPE_19__*, align 8
  %6 = alloca %struct.TYPE_20__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_21__*, align 8
  %13 = alloca %struct.TYPE_18__*, align 8
  %14 = alloca i32*, align 8
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %4, align 8
  store %struct.TYPE_19__* %1, %struct.TYPE_19__** %5, align 8
  %15 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_20__*, %struct.TYPE_20__** %17, align 8
  store %struct.TYPE_20__* %18, %struct.TYPE_20__** %6, align 8
  %19 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %19, i32 0, i32 2
  %21 = load i32*, i32** %20, align 8
  store i32* %21, i32** %7, align 8
  store i8* null, i8** %8, align 8
  store i32 0, i32* %10, align 4
  store i64 0, i64* %11, align 8
  %22 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_15__*, %struct.TYPE_15__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_21__*, %struct.TYPE_21__** %26, align 8
  store %struct.TYPE_21__* %27, %struct.TYPE_21__** %12, align 8
  %28 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %28, i32 0, i32 2
  %30 = load i32*, i32** %29, align 8
  %31 = icmp eq i32* %30, null
  br i1 %31, label %32, label %36

32:                                               ; preds = %2
  %33 = load i32, i32* @CMS_F_CMS_RECIPIENTINFO_KTRI_DECRYPT, align 4
  %34 = load i32, i32* @CMS_R_NO_PRIVATE_KEY, align 4
  %35 = call i32 @CMSerr(i32 %33, i32 %34)
  store i32 0, i32* %3, align 4
  br label %193

36:                                               ; preds = %2
  %37 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_15__*, %struct.TYPE_15__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_21__*, %struct.TYPE_21__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %42, i32 0, i32 4
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %73

46:                                               ; preds = %36
  %47 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_15__*, %struct.TYPE_15__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_21__*, %struct.TYPE_21__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 8
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %73, label %56

56:                                               ; preds = %46
  %57 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %58 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %57, i32 0, i32 2
  %59 = load %struct.TYPE_18__*, %struct.TYPE_18__** %58, align 8
  store %struct.TYPE_18__* %59, %struct.TYPE_18__** %13, align 8
  %60 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %61 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32* @EVP_get_cipherbyobj(i32 %62)
  store i32* %63, i32** %14, align 8
  %64 = load i32*, i32** %14, align 8
  %65 = icmp eq i32* %64, null
  br i1 %65, label %66, label %70

66:                                               ; preds = %56
  %67 = load i32, i32* @CMS_F_CMS_RECIPIENTINFO_KTRI_DECRYPT, align 4
  %68 = load i32, i32* @CMS_R_UNKNOWN_CIPHER, align 4
  %69 = call i32 @CMSerr(i32 %67, i32 %68)
  store i32 0, i32* %3, align 4
  br label %193

70:                                               ; preds = %56
  %71 = load i32*, i32** %14, align 8
  %72 = call i64 @EVP_CIPHER_key_length(i32* %71)
  store i64 %72, i64* %11, align 8
  br label %73

73:                                               ; preds = %70, %46, %36
  %74 = load i32*, i32** %7, align 8
  %75 = call i32* @EVP_PKEY_CTX_new(i32* %74, i32* null)
  %76 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %76, i32 0, i32 0
  store i32* %75, i32** %77, align 8
  %78 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %78, i32 0, i32 0
  %80 = load i32*, i32** %79, align 8
  %81 = icmp eq i32* %80, null
  br i1 %81, label %82, label %83

82:                                               ; preds = %73
  store i32 0, i32* %3, align 4
  br label %193

83:                                               ; preds = %73
  %84 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %84, i32 0, i32 0
  %86 = load i32*, i32** %85, align 8
  %87 = call i64 @EVP_PKEY_decrypt_init(i32* %86)
  %88 = icmp sle i64 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %83
  br label %179

90:                                               ; preds = %83
  %91 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %92 = call i32 @cms_env_asn1_ctrl(%struct.TYPE_19__* %91, i32 1)
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %95, label %94

94:                                               ; preds = %90
  br label %179

95:                                               ; preds = %90
  %96 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %97 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %96, i32 0, i32 0
  %98 = load i32*, i32** %97, align 8
  %99 = load i32, i32* @EVP_PKEY_OP_DECRYPT, align 4
  %100 = load i32, i32* @EVP_PKEY_CTRL_CMS_DECRYPT, align 4
  %101 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %102 = call i64 @EVP_PKEY_CTX_ctrl(i32* %98, i32 -1, i32 %99, i32 %100, i32 0, %struct.TYPE_19__* %101)
  %103 = icmp sle i64 %102, 0
  br i1 %103, label %104, label %108

104:                                              ; preds = %95
  %105 = load i32, i32* @CMS_F_CMS_RECIPIENTINFO_KTRI_DECRYPT, align 4
  %106 = load i32, i32* @CMS_R_CTRL_ERROR, align 4
  %107 = call i32 @CMSerr(i32 %105, i32 %106)
  br label %179

108:                                              ; preds = %95
  %109 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %110 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %109, i32 0, i32 0
  %111 = load i32*, i32** %110, align 8
  %112 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %113 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %112, i32 0, i32 1
  %114 = load %struct.TYPE_17__*, %struct.TYPE_17__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %118 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %117, i32 0, i32 1
  %119 = load %struct.TYPE_17__*, %struct.TYPE_17__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = call i64 @EVP_PKEY_decrypt(i32* %111, i8* null, i64* %9, i32 %116, i32 %121)
  %123 = icmp sle i64 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %108
  br label %179

125:                                              ; preds = %108
  %126 = load i64, i64* %9, align 8
  %127 = call i8* @OPENSSL_malloc(i64 %126)
  store i8* %127, i8** %8, align 8
  %128 = load i8*, i8** %8, align 8
  %129 = icmp eq i8* %128, null
  br i1 %129, label %130, label %134

130:                                              ; preds = %125
  %131 = load i32, i32* @CMS_F_CMS_RECIPIENTINFO_KTRI_DECRYPT, align 4
  %132 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %133 = call i32 @CMSerr(i32 %131, i32 %132)
  br label %179

134:                                              ; preds = %125
  %135 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %136 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %135, i32 0, i32 0
  %137 = load i32*, i32** %136, align 8
  %138 = load i8*, i8** %8, align 8
  %139 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %140 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %139, i32 0, i32 1
  %141 = load %struct.TYPE_17__*, %struct.TYPE_17__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %145 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %144, i32 0, i32 1
  %146 = load %struct.TYPE_17__*, %struct.TYPE_17__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = call i64 @EVP_PKEY_decrypt(i32* %137, i8* %138, i64* %9, i32 %143, i32 %148)
  %150 = icmp sle i64 %149, 0
  br i1 %150, label %161, label %151

151:                                              ; preds = %134
  %152 = load i64, i64* %9, align 8
  %153 = icmp eq i64 %152, 0
  br i1 %153, label %161, label %154

154:                                              ; preds = %151
  %155 = load i64, i64* %11, align 8
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %165

157:                                              ; preds = %154
  %158 = load i64, i64* %9, align 8
  %159 = load i64, i64* %11, align 8
  %160 = icmp ne i64 %158, %159
  br i1 %160, label %161, label %165

161:                                              ; preds = %157, %151, %134
  %162 = load i32, i32* @CMS_F_CMS_RECIPIENTINFO_KTRI_DECRYPT, align 4
  %163 = load i32, i32* @CMS_R_CMS_LIB, align 4
  %164 = call i32 @CMSerr(i32 %162, i32 %163)
  br label %179

165:                                              ; preds = %157, %154
  store i32 1, i32* %10, align 4
  %166 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %167 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %166, i32 0, i32 0
  %168 = load i8*, i8** %167, align 8
  %169 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %170 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %169, i32 0, i32 1
  %171 = load i64, i64* %170, align 8
  %172 = call i32 @OPENSSL_clear_free(i8* %168, i64 %171)
  %173 = load i8*, i8** %8, align 8
  %174 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %175 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %174, i32 0, i32 0
  store i8* %173, i8** %175, align 8
  %176 = load i64, i64* %9, align 8
  %177 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %178 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %177, i32 0, i32 1
  store i64 %176, i64* %178, align 8
  br label %179

179:                                              ; preds = %165, %161, %130, %124, %104, %94, %89
  %180 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %181 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %180, i32 0, i32 0
  %182 = load i32*, i32** %181, align 8
  %183 = call i32 @EVP_PKEY_CTX_free(i32* %182)
  %184 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %185 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %184, i32 0, i32 0
  store i32* null, i32** %185, align 8
  %186 = load i32, i32* %10, align 4
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %191, label %188

188:                                              ; preds = %179
  %189 = load i8*, i8** %8, align 8
  %190 = call i32 @OPENSSL_free(i8* %189)
  br label %191

191:                                              ; preds = %188, %179
  %192 = load i32, i32* %10, align 4
  store i32 %192, i32* %3, align 4
  br label %193

193:                                              ; preds = %191, %82, %66, %32
  %194 = load i32, i32* %3, align 4
  ret i32 %194
}

declare dso_local i32 @CMSerr(i32, i32) #1

declare dso_local i32* @EVP_get_cipherbyobj(i32) #1

declare dso_local i64 @EVP_CIPHER_key_length(i32*) #1

declare dso_local i32* @EVP_PKEY_CTX_new(i32*, i32*) #1

declare dso_local i64 @EVP_PKEY_decrypt_init(i32*) #1

declare dso_local i32 @cms_env_asn1_ctrl(%struct.TYPE_19__*, i32) #1

declare dso_local i64 @EVP_PKEY_CTX_ctrl(i32*, i32, i32, i32, i32, %struct.TYPE_19__*) #1

declare dso_local i64 @EVP_PKEY_decrypt(i32*, i8*, i64*, i32, i32) #1

declare dso_local i8* @OPENSSL_malloc(i64) #1

declare dso_local i32 @OPENSSL_clear_free(i8*, i64) #1

declare dso_local i32 @EVP_PKEY_CTX_free(i32*) #1

declare dso_local i32 @OPENSSL_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
