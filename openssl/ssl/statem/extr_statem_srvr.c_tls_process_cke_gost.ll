; ModuleID = '/home/carl/AnghaBench/openssl/ssl/statem/extr_statem_srvr.c_tls_process_cke_gost.c'
source_filename = "/home/carl/AnghaBench/openssl/ssl/statem/extr_statem_srvr.c_tls_process_cke_gost.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { %struct.TYPE_18__, %struct.TYPE_17__*, %struct.TYPE_16__*, %struct.TYPE_14__ }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_16__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32* }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i64 }

@SSL_aGOST12 = common dso_local global i64 0, align 8
@SSL_PKEY_GOST12_512 = common dso_local global i64 0, align 8
@SSL_PKEY_GOST12_256 = common dso_local global i64 0, align 8
@SSL_PKEY_GOST01 = common dso_local global i64 0, align 8
@SSL_aGOST01 = common dso_local global i64 0, align 8
@SSL_AD_INTERNAL_ERROR = common dso_local global i32 0, align 4
@SSL_F_TLS_PROCESS_CKE_GOST = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4
@ERR_R_INTERNAL_ERROR = common dso_local global i32 0, align 4
@V_ASN1_SEQUENCE = common dso_local global i32 0, align 4
@V_ASN1_CONSTRUCTED = common dso_local global i32 0, align 4
@SSL_AD_DECODE_ERROR = common dso_local global i32 0, align 4
@SSL_R_DECRYPTION_FAILED = common dso_local global i32 0, align 4
@EVP_PKEY_CTRL_PEER_KEY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_19__*, i32*)* @tls_process_cke_gost to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tls_process_cke_gost(%struct.TYPE_19__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_19__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca [32 x i8], align 16
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* null, i32** %7, align 8
  store i32* null, i32** %8, align 8
  store i64 32, i64* %11, align 8
  store i32 0, i32* %16, align 4
  %18 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %18, i32 0, i32 3
  %20 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  store i64 %24, i64* %13, align 8
  %25 = load i64, i64* %13, align 8
  %26 = load i64, i64* @SSL_aGOST12, align 8
  %27 = and i64 %25, %26
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %65

29:                                               ; preds = %2
  %30 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %30, i32 0, i32 2
  %32 = load %struct.TYPE_16__*, %struct.TYPE_16__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_15__*, %struct.TYPE_15__** %33, align 8
  %35 = load i64, i64* @SSL_PKEY_GOST12_512, align 8
  %36 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %34, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  store i32* %38, i32** %8, align 8
  %39 = load i32*, i32** %8, align 8
  %40 = icmp eq i32* %39, null
  br i1 %40, label %41, label %51

41:                                               ; preds = %29
  %42 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %42, i32 0, i32 2
  %44 = load %struct.TYPE_16__*, %struct.TYPE_16__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_15__*, %struct.TYPE_15__** %45, align 8
  %47 = load i64, i64* @SSL_PKEY_GOST12_256, align 8
  %48 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %46, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  store i32* %50, i32** %8, align 8
  br label %51

51:                                               ; preds = %41, %29
  %52 = load i32*, i32** %8, align 8
  %53 = icmp eq i32* %52, null
  br i1 %53, label %54, label %64

54:                                               ; preds = %51
  %55 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %55, i32 0, i32 2
  %57 = load %struct.TYPE_16__*, %struct.TYPE_16__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_15__*, %struct.TYPE_15__** %58, align 8
  %60 = load i64, i64* @SSL_PKEY_GOST01, align 8
  %61 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %59, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  store i32* %63, i32** %8, align 8
  br label %64

64:                                               ; preds = %54, %51
  br label %81

65:                                               ; preds = %2
  %66 = load i64, i64* %13, align 8
  %67 = load i64, i64* @SSL_aGOST01, align 8
  %68 = and i64 %66, %67
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %80

70:                                               ; preds = %65
  %71 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %71, i32 0, i32 2
  %73 = load %struct.TYPE_16__*, %struct.TYPE_16__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %73, i32 0, i32 0
  %75 = load %struct.TYPE_15__*, %struct.TYPE_15__** %74, align 8
  %76 = load i64, i64* @SSL_PKEY_GOST01, align 8
  %77 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %75, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %77, i32 0, i32 0
  %79 = load i32*, i32** %78, align 8
  store i32* %79, i32** %8, align 8
  br label %80

80:                                               ; preds = %70, %65
  br label %81

81:                                               ; preds = %80, %64
  %82 = load i32*, i32** %8, align 8
  %83 = call i32* @EVP_PKEY_CTX_new(i32* %82, i32* null)
  store i32* %83, i32** %6, align 8
  %84 = load i32*, i32** %6, align 8
  %85 = icmp eq i32* %84, null
  br i1 %85, label %86, label %92

86:                                               ; preds = %81
  %87 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %88 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %89 = load i32, i32* @SSL_F_TLS_PROCESS_CKE_GOST, align 4
  %90 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %91 = call i32 @SSLfatal(%struct.TYPE_19__* %87, i32 %88, i32 %89, i32 %90)
  store i32 0, i32* %3, align 4
  br label %208

92:                                               ; preds = %81
  %93 = load i32*, i32** %6, align 8
  %94 = call i64 @EVP_PKEY_decrypt_init(i32* %93)
  %95 = icmp sle i64 %94, 0
  br i1 %95, label %96, label %102

96:                                               ; preds = %92
  %97 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %98 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %99 = load i32, i32* @SSL_F_TLS_PROCESS_CKE_GOST, align 4
  %100 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %101 = call i32 @SSLfatal(%struct.TYPE_19__* %97, i32 %98, i32 %99, i32 %100)
  store i32 0, i32* %3, align 4
  br label %208

102:                                              ; preds = %92
  %103 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %104 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %103, i32 0, i32 1
  %105 = load %struct.TYPE_17__*, %struct.TYPE_17__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = call i32* @X509_get0_pubkey(i32 %107)
  store i32* %108, i32** %7, align 8
  %109 = load i32*, i32** %7, align 8
  %110 = icmp ne i32* %109, null
  br i1 %110, label %111, label %119

111:                                              ; preds = %102
  %112 = load i32*, i32** %6, align 8
  %113 = load i32*, i32** %7, align 8
  %114 = call i64 @EVP_PKEY_derive_set_peer(i32* %112, i32* %113)
  %115 = icmp sle i64 %114, 0
  br i1 %115, label %116, label %118

116:                                              ; preds = %111
  %117 = call i32 (...) @ERR_clear_error()
  br label %118

118:                                              ; preds = %116, %111
  br label %119

119:                                              ; preds = %118, %102
  %120 = load i32*, i32** %5, align 8
  %121 = call i32 @PACKET_get_1(i32* %120, i32* %14)
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %133

123:                                              ; preds = %119
  %124 = load i32, i32* %14, align 4
  %125 = load i32, i32* @V_ASN1_SEQUENCE, align 4
  %126 = load i32, i32* @V_ASN1_CONSTRUCTED, align 4
  %127 = or i32 %125, %126
  %128 = icmp ne i32 %124, %127
  br i1 %128, label %133, label %129

129:                                              ; preds = %123
  %130 = load i32*, i32** %5, align 8
  %131 = call i32 @PACKET_peek_1(i32* %130, i32* %15)
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %139, label %133

133:                                              ; preds = %129, %123, %119
  %134 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %135 = load i32, i32* @SSL_AD_DECODE_ERROR, align 4
  %136 = load i32, i32* @SSL_F_TLS_PROCESS_CKE_GOST, align 4
  %137 = load i32, i32* @SSL_R_DECRYPTION_FAILED, align 4
  %138 = call i32 @SSLfatal(%struct.TYPE_19__* %134, i32 %135, i32 %136, i32 %137)
  br label %204

139:                                              ; preds = %129
  %140 = load i32, i32* %15, align 4
  %141 = icmp eq i32 %140, 129
  br i1 %141, label %142, label %153

142:                                              ; preds = %139
  %143 = load i32*, i32** %5, align 8
  %144 = call i32 @PACKET_forward(i32* %143, i32 1)
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %152, label %146

146:                                              ; preds = %142
  %147 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %148 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %149 = load i32, i32* @SSL_F_TLS_PROCESS_CKE_GOST, align 4
  %150 = load i32, i32* @SSL_R_DECRYPTION_FAILED, align 4
  %151 = call i32 @SSLfatal(%struct.TYPE_19__* %147, i32 %148, i32 %149, i32 %150)
  br label %204

152:                                              ; preds = %142
  br label %163

153:                                              ; preds = %139
  %154 = load i32, i32* %15, align 4
  %155 = icmp uge i32 %154, 128
  br i1 %155, label %156, label %162

156:                                              ; preds = %153
  %157 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %158 = load i32, i32* @SSL_AD_DECODE_ERROR, align 4
  %159 = load i32, i32* @SSL_F_TLS_PROCESS_CKE_GOST, align 4
  %160 = load i32, i32* @SSL_R_DECRYPTION_FAILED, align 4
  %161 = call i32 @SSLfatal(%struct.TYPE_19__* %157, i32 %158, i32 %159, i32 %160)
  br label %204

162:                                              ; preds = %153
  br label %163

163:                                              ; preds = %162, %152
  %164 = load i32*, i32** %5, align 8
  %165 = call i32 @PACKET_as_length_prefixed_1(i32* %164, i32* %17)
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %173, label %167

167:                                              ; preds = %163
  %168 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %169 = load i32, i32* @SSL_AD_DECODE_ERROR, align 4
  %170 = load i32, i32* @SSL_F_TLS_PROCESS_CKE_GOST, align 4
  %171 = load i32, i32* @SSL_R_DECRYPTION_FAILED, align 4
  %172 = call i32 @SSLfatal(%struct.TYPE_19__* %168, i32 %169, i32 %170, i32 %171)
  br label %204

173:                                              ; preds = %163
  %174 = call i64 @PACKET_remaining(i32* %17)
  store i64 %174, i64* %12, align 8
  %175 = call i8* @PACKET_data(i32* %17)
  store i8* %175, i8** %10, align 8
  %176 = load i32*, i32** %6, align 8
  %177 = getelementptr inbounds [32 x i8], [32 x i8]* %9, i64 0, i64 0
  %178 = load i8*, i8** %10, align 8
  %179 = load i64, i64* %12, align 8
  %180 = call i64 @EVP_PKEY_decrypt(i32* %176, i8* %177, i64* %11, i8* %178, i64 %179)
  %181 = icmp sle i64 %180, 0
  br i1 %181, label %182, label %188

182:                                              ; preds = %173
  %183 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %184 = load i32, i32* @SSL_AD_DECODE_ERROR, align 4
  %185 = load i32, i32* @SSL_F_TLS_PROCESS_CKE_GOST, align 4
  %186 = load i32, i32* @SSL_R_DECRYPTION_FAILED, align 4
  %187 = call i32 @SSLfatal(%struct.TYPE_19__* %183, i32 %184, i32 %185, i32 %186)
  br label %204

188:                                              ; preds = %173
  %189 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %190 = getelementptr inbounds [32 x i8], [32 x i8]* %9, i64 0, i64 0
  %191 = call i32 @ssl_generate_master_secret(%struct.TYPE_19__* %189, i8* %190, i32 32, i32 0)
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %194, label %193

193:                                              ; preds = %188
  br label %204

194:                                              ; preds = %188
  %195 = load i32*, i32** %6, align 8
  %196 = load i32, i32* @EVP_PKEY_CTRL_PEER_KEY, align 4
  %197 = call i64 @EVP_PKEY_CTX_ctrl(i32* %195, i32 -1, i32 -1, i32 %196, i32 2, i32* null)
  %198 = icmp sgt i64 %197, 0
  br i1 %198, label %199, label %203

199:                                              ; preds = %194
  %200 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %201 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %200, i32 0, i32 0
  %202 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %201, i32 0, i32 0
  store i32 1, i32* %202, align 8
  br label %203

203:                                              ; preds = %199, %194
  store i32 1, i32* %16, align 4
  br label %204

204:                                              ; preds = %203, %193, %182, %167, %156, %146, %133
  %205 = load i32*, i32** %6, align 8
  %206 = call i32 @EVP_PKEY_CTX_free(i32* %205)
  %207 = load i32, i32* %16, align 4
  store i32 %207, i32* %3, align 4
  br label %208

208:                                              ; preds = %204, %96, %86
  %209 = load i32, i32* %3, align 4
  ret i32 %209
}

declare dso_local i32* @EVP_PKEY_CTX_new(i32*, i32*) #1

declare dso_local i32 @SSLfatal(%struct.TYPE_19__*, i32, i32, i32) #1

declare dso_local i64 @EVP_PKEY_decrypt_init(i32*) #1

declare dso_local i32* @X509_get0_pubkey(i32) #1

declare dso_local i64 @EVP_PKEY_derive_set_peer(i32*, i32*) #1

declare dso_local i32 @ERR_clear_error(...) #1

declare dso_local i32 @PACKET_get_1(i32*, i32*) #1

declare dso_local i32 @PACKET_peek_1(i32*, i32*) #1

declare dso_local i32 @PACKET_forward(i32*, i32) #1

declare dso_local i32 @PACKET_as_length_prefixed_1(i32*, i32*) #1

declare dso_local i64 @PACKET_remaining(i32*) #1

declare dso_local i8* @PACKET_data(i32*) #1

declare dso_local i64 @EVP_PKEY_decrypt(i32*, i8*, i64*, i8*, i64) #1

declare dso_local i32 @ssl_generate_master_secret(%struct.TYPE_19__*, i8*, i32, i32) #1

declare dso_local i64 @EVP_PKEY_CTX_ctrl(i32*, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @EVP_PKEY_CTX_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
