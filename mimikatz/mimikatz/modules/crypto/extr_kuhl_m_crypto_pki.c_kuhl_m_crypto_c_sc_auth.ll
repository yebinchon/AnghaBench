; ModuleID = '/home/carl/AnghaBench/mimikatz/mimikatz/modules/crypto/extr_kuhl_m_crypto_pki.c_kuhl_m_crypto_c_sc_auth.c'
source_filename = "/home/carl/AnghaBench/mimikatz/mimikatz/modules/crypto/extr_kuhl_m_crypto_pki.c_kuhl_m_crypto_c_sc_auth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32 }
%struct.TYPE_14__ = type { i32, i32*, i32, %struct.TYPE_17__, i32, i32*, %struct.TYPE_13__ }
%struct.TYPE_17__ = type { i8* }
%struct.TYPE_13__ = type { i32, i32*, i32, i32, i32, i32, i32* }
%struct.TYPE_15__ = type { i8*, i32, i8*, %struct.TYPE_16__*, i32*, %struct.TYPE_16__*, %struct.TYPE_16__*, i64, i32, i32*, i32, i32*, i32*, i32*, i32* }

@FALSE = common dso_local global i64 0, align 8
@CRYPT_EXPORTABLE = common dso_local global i32 0, align 4
@MIMIKATZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i32] [i32 70, i32 82, i32 0], align 4
@CERT_DIGITAL_SIGNATURE_KEY_USAGE = common dso_local global i32 0, align 4
@CERT_KEY_ENCIPHERMENT_KEY_USAGE = common dso_local global i32 0, align 4
@szOID_OIWSEC_sha1RSASign = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i32] [i32 104, i32 119, i32 0], align 4
@.str.2 = private unnamed_addr constant [4 x i32] [i32 99, i32 115, i32 112, i32 0], align 4
@MS_SCARD_PROV = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [4 x i32] [i32 112, i32 105, i32 110, i32 0], align 4
@.str.4 = private unnamed_addr constant [8 x i32] [i32 110, i32 111, i32 115, i32 116, i32 111, i32 114, i32 101, i32 0], align 4
@.str.5 = private unnamed_addr constant [8 x i32] [i32 99, i32 97, i32 115, i32 116, i32 111, i32 114, i32 101, i32 0], align 4
@.str.6 = private unnamed_addr constant [14 x i32] [i32 76, i32 79, i32 67, i32 65, i32 76, i32 95, i32 77, i32 65, i32 67, i32 72, i32 73, i32 78, i32 69, i32 0], align 4
@.str.7 = private unnamed_addr constant [7 x i32] [i32 99, i32 97, i32 110, i32 97, i32 109, i32 101, i32 0], align 4
@.str.8 = private unnamed_addr constant [4 x i32] [i32 117, i32 112, i32 110, i32 0], align 4
@.str.9 = private unnamed_addr constant [21 x i32] [i32 67, i32 65, i32 32, i32 115, i32 116, i32 111, i32 114, i32 101, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 58, i32 32, i32 37, i32 115, i32 10, i32 0], align 4
@CERT_STORE_PROV_SYSTEM = common dso_local global i32 0, align 4
@CERT_STORE_OPEN_EXISTING_FLAG = common dso_local global i32 0, align 4
@CERT_STORE_READONLY_FLAG = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [3 x i32] [i32 77, i32 121, i32 0], align 4
@.str.11 = private unnamed_addr constant [21 x i32] [i32 67, i32 65, i32 32, i32 110, i32 97, i32 109, i32 101, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 58, i32 32, i32 37, i32 115, i32 10, i32 0], align 4
@X509_ASN_ENCODING = common dso_local global i32 0, align 4
@PKCS_7_ASN_ENCODING = common dso_local global i32 0, align 4
@CERT_FIND_SUBJECT_STR = common dso_local global i32 0, align 4
@szOID_KP_SMARTCARD_LOGON = common dso_local global i32 0, align 4
@szOID_PKIX_KP_CLIENT_AUTH = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [6 x i32] [i32 99, i32 114, i32 108, i32 100, i32 112, i32 0], align 4
@.str.13 = private unnamed_addr constant [4 x i32] [i32 112, i32 102, i32 120, i32 0], align 4
@.str.14 = private unnamed_addr constant [26 x i32] [i32 80, i32 114, i32 105, i32 118, i32 97, i32 116, i32 101, i32 32, i32 69, i32 120, i32 112, i32 111, i32 114, i32 116, i32 32, i32 58, i32 32, i32 37, i32 115, i32 32, i32 45, i32 32, i32 37, i32 115, i32 10, i32 0], align 4
@.str.15 = private unnamed_addr constant [3 x i32] [i32 79, i32 75, i32 0], align 4
@.str.16 = private unnamed_addr constant [3 x i32] [i32 75, i32 79, i32 0], align 4
@CERT_SYSTEM_STORE_CURRENT_USER = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [57 x i32] [i32 80, i32 114, i32 105, i32 118, i32 97, i32 116, i32 101, i32 32, i32 83, i32 116, i32 111, i32 114, i32 101, i32 32, i32 32, i32 58, i32 32, i32 67, i32 69, i32 82, i32 84, i32 95, i32 83, i32 89, i32 83, i32 84, i32 69, i32 77, i32 95, i32 83, i32 84, i32 79, i32 82, i32 69, i32 95, i32 67, i32 85, i32 82, i32 82, i32 69, i32 78, i32 84, i32 95, i32 85, i32 83, i32 69, i32 82, i32 47, i32 77, i32 121, i32 32, i32 45, i32 32, i32 37, i32 115, i32 10, i32 0], align 4
@.str.18 = private unnamed_addr constant [70 x i32] [i32 85, i32 110, i32 97, i32 98, i32 108, i32 101, i32 32, i32 116, i32 111, i32 32, i32 103, i32 101, i32 110, i32 101, i32 114, i32 97, i32 116, i32 101, i32 32, i32 83, i32 65, i32 78, i32 32, i32 101, i32 120, i32 116, i32 101, i32 110, i32 115, i32 105, i32 111, i32 110, i32 32, i32 45, i32 32, i32 107, i32 117, i32 104, i32 108, i32 95, i32 109, i32 95, i32 99, i32 114, i32 121, i32 112, i32 116, i32 111, i32 95, i32 99, i32 95, i32 115, i32 99, i32 95, i32 97, i32 117, i32 116, i32 104, i32 95, i32 69, i32 120, i32 116, i32 95, i32 65, i32 108, i32 116, i32 85, i32 80, i32 78, i32 0], align 4
@.str.19 = private unnamed_addr constant [67 x i32] [i32 85, i32 110, i32 97, i32 98, i32 108, i32 101, i32 32, i32 116, i32 111, i32 32, i32 103, i32 101, i32 110, i32 101, i32 114, i32 97, i32 116, i32 101, i32 32, i32 69, i32 75, i32 85, i32 32, i32 101, i32 120, i32 116, i32 101, i32 110, i32 115, i32 105, i32 111, i32 110, i32 32, i32 45, i32 32, i32 107, i32 117, i32 104, i32 108, i32 95, i32 109, i32 95, i32 99, i32 114, i32 121, i32 112, i32 116, i32 111, i32 95, i32 99, i32 95, i32 115, i32 99, i32 95, i32 97, i32 117, i32 116, i32 104, i32 95, i32 69, i32 120, i32 116, i32 95, i32 69, i32 75, i32 85, i32 0], align 4
@.str.20 = private unnamed_addr constant [27 x i32] [i32 67, i32 101, i32 114, i32 116, i32 70, i32 105, i32 110, i32 100, i32 67, i32 101, i32 114, i32 116, i32 105, i32 102, i32 105, i32 99, i32 97, i32 116, i32 101, i32 73, i32 110, i32 83, i32 116, i32 111, i32 114, i32 101, i32 0], align 4
@CERT_CLOSE_STORE_FORCE_FLAG = common dso_local global i32 0, align 4
@.str.21 = private unnamed_addr constant [14 x i32] [i32 67, i32 101, i32 114, i32 116, i32 79, i32 112, i32 101, i32 110, i32 83, i32 116, i32 111, i32 114, i32 101, i32 0], align 4
@.str.22 = private unnamed_addr constant [31 x i32] [i32 47, i32 117, i32 112, i32 110, i32 58, i32 117, i32 115, i32 101, i32 114, i32 64, i32 100, i32 111, i32 109, i32 97, i32 105, i32 110, i32 46, i32 108, i32 111, i32 99, i32 97, i32 108, i32 32, i32 110, i32 101, i32 101, i32 100, i32 101, i32 100, i32 10, i32 0], align 4
@.str.23 = private unnamed_addr constant [24 x i32] [i32 47, i32 99, i32 97, i32 110, i32 97, i32 109, i32 101, i32 58, i32 67, i32 65, i32 45, i32 75, i32 73, i32 87, i32 73, i32 32, i32 110, i32 101, i32 101, i32 100, i32 101, i32 100, i32 10, i32 0], align 4
@STATUS_SUCCESS = common dso_local global i32 0, align 4
@AT_KEYEXCHANGE = common dso_local global i32 0, align 4
@CRYPT_SILENT = common dso_local global i32 0, align 4
@MS_ENHANCED_PROV = common dso_local global i32 0, align 4
@PROV_RSA_FULL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kuhl_m_crypto_c_sc_auth(i32 %0, i32** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32**, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_16__, align 4
  %15 = alloca %struct.TYPE_16__, align 4
  %16 = alloca %struct.TYPE_16__, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca %struct.TYPE_14__, align 8
  %20 = alloca %struct.TYPE_15__, align 8
  store i32 %0, i32* %3, align 4
  store i32** %1, i32*** %4, align 8
  store i8* null, i8** %7, align 8
  %21 = load i64, i64* @FALSE, align 8
  store i64 %21, i64* %12, align 8
  %22 = load i64, i64* @FALSE, align 8
  store i64 %22, i64* %13, align 8
  %23 = bitcast %struct.TYPE_16__* %14 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %23, i8 0, i64 4, i1 false)
  %24 = bitcast %struct.TYPE_16__* %15 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %24, i8 0, i64 4, i1 false)
  %25 = bitcast %struct.TYPE_16__* %16 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %25, i8 0, i64 4, i1 false)
  store i32 0, i32* %17, align 4
  store i32* null, i32** %18, align 8
  %26 = bitcast %struct.TYPE_14__* %19 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %26, i8 0, i64 88, i1 false)
  %27 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i32 0, i32 0
  store i32 0, i32* %27, align 8
  %28 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i32 0, i32 2
  %29 = load i32, i32* @CRYPT_EXPORTABLE, align 4
  store i32 %29, i32* %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i32 0, i32 3
  %31 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %30, i32 0, i32 0
  store i8* inttoptr (i64 2048 to i8*), i8** %31, align 8
  %32 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %20, i32 0, i32 0
  store i8* null, i8** %32, align 8
  %33 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %20, i32 0, i32 1
  store i32 0, i32* %33, align 8
  %34 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %20, i32 0, i32 2
  store i8* null, i8** %34, align 8
  %35 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %20, i32 0, i32 3
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %35, align 8
  %36 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %20, i32 0, i32 4
  %37 = load i32, i32* @MIMIKATZ, align 4
  %38 = sext i32 %37 to i64
  %39 = inttoptr i64 %38 to i32*
  store i32* %39, i32** %36, align 8
  %40 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %20, i32 0, i32 5
  store %struct.TYPE_16__* bitcast ([3 x i32]* @.str to %struct.TYPE_16__*), %struct.TYPE_16__** %40, align 8
  %41 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %20, i32 0, i32 6
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %41, align 8
  %42 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %20, i32 0, i32 7
  %43 = load i32, i32* @CERT_DIGITAL_SIGNATURE_KEY_USAGE, align 4
  %44 = load i32, i32* @CERT_KEY_ENCIPHERMENT_KEY_USAGE, align 4
  %45 = or i32 %43, %44
  %46 = sext i32 %45 to i64
  store i64 %46, i64* %42, align 8
  %47 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %20, i32 0, i32 8
  %48 = load i32, i32* @szOID_OIWSEC_sha1RSASign, align 4
  store i32 %48, i32* %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %20, i32 0, i32 9
  %50 = load i64, i64* @FALSE, align 8
  %51 = inttoptr i64 %50 to i32*
  store i32* %51, i32** %49, align 8
  %52 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %20, i32 0, i32 10
  %53 = ptrtoint %struct.TYPE_16__* %14 to i32
  store i32 %53, i32* %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %20, i32 0, i32 11
  %55 = bitcast %struct.TYPE_16__* %15 to i32*
  store i32* %55, i32** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %20, i32 0, i32 12
  store i32* null, i32** %56, align 8
  %57 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %20, i32 0, i32 13
  store i32* null, i32** %57, align 8
  %58 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %20, i32 0, i32 14
  store i32* null, i32** %58, align 8
  %59 = load i32, i32* %3, align 4
  %60 = load i32**, i32*** %4, align 8
  %61 = call i64 @kull_m_string_args_byName(i32 %59, i32** %60, i8* bitcast ([3 x i32]* @.str.1 to i8*), i8** null, i8* null)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %79

63:                                               ; preds = %2
  %64 = load i32, i32* %3, align 4
  %65 = load i32**, i32*** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i32 0, i32 3
  %67 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %66, i32 0, i32 0
  %68 = load i8*, i8** @MS_SCARD_PROV, align 8
  %69 = call i64 @kull_m_string_args_byName(i32 %64, i32** %65, i8* bitcast ([4 x i32]* @.str.2 to i8*), i8** %67, i8* %68)
  %70 = load i32, i32* %3, align 4
  %71 = load i32**, i32*** %4, align 8
  %72 = call i64 @kull_m_string_args_byName(i32 %70, i32** %71, i8* bitcast ([4 x i32]* @.str.3 to i8*), i8** %8, i8* null)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %63
  %75 = load i8*, i8** %8, align 8
  %76 = call i32* @kull_m_string_unicode_to_ansi(i8* %75)
  %77 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i32 0, i32 1
  store i32* %76, i32** %77, align 8
  br label %78

78:                                               ; preds = %74, %63
  br label %79

79:                                               ; preds = %78, %2
  %80 = load i32, i32* %3, align 4
  %81 = load i32**, i32*** %4, align 8
  %82 = call i64 @kull_m_string_args_byName(i32 %80, i32** %81, i8* bitcast ([8 x i32]* @.str.4 to i8*), i8** null, i8* null)
  store i64 %82, i64* %13, align 8
  %83 = load i32, i32* %3, align 4
  %84 = load i32**, i32*** %4, align 8
  %85 = call i64 @kull_m_string_args_byName(i32 %83, i32** %84, i8* bitcast ([8 x i32]* @.str.5 to i8*), i8** %5, i8* bitcast ([14 x i32]* @.str.6 to i8*))
  %86 = load i32, i32* %3, align 4
  %87 = load i32**, i32*** %4, align 8
  %88 = call i64 @kull_m_string_args_byName(i32 %86, i32** %87, i8* bitcast ([7 x i32]* @.str.7 to i8*), i8** %6, i8* null)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %227

90:                                               ; preds = %79
  %91 = load i32, i32* %3, align 4
  %92 = load i32**, i32*** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %20, i32 0, i32 2
  %94 = call i64 @kull_m_string_args_byName(i32 %91, i32** %92, i8* bitcast ([4 x i32]* @.str.8 to i8*), i8** %93, i8* null)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %224

96:                                               ; preds = %90
  %97 = load i8*, i8** %5, align 8
  %98 = call i32 (i8*, i8*, ...) @kprintf(i8* bitcast ([21 x i32]* @.str.9 to i8*), i8* %97)
  %99 = load i32, i32* @CERT_STORE_PROV_SYSTEM, align 4
  %100 = load i8*, i8** %5, align 8
  %101 = call i32 @kull_m_crypto_system_store_to_dword(i8* %100)
  %102 = load i32, i32* @CERT_STORE_OPEN_EXISTING_FLAG, align 4
  %103 = or i32 %101, %102
  %104 = load i32, i32* @CERT_STORE_READONLY_FLAG, align 4
  %105 = or i32 %103, %104
  %106 = call i32 @CertOpenStore(i32 %99, i32 0, i32 0, i32 %105, i8* bitcast ([3 x i32]* @.str.10 to i8*))
  store i32 %106, i32* %10, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %221

108:                                              ; preds = %96
  %109 = load i8*, i8** %6, align 8
  %110 = call i32 (i8*, i8*, ...) @kprintf(i8* bitcast ([21 x i32]* @.str.11 to i8*), i8* %109)
  %111 = load i32, i32* %10, align 4
  %112 = load i32, i32* @X509_ASN_ENCODING, align 4
  %113 = load i32, i32* @PKCS_7_ASN_ENCODING, align 4
  %114 = or i32 %112, %113
  %115 = load i32, i32* @CERT_FIND_SUBJECT_STR, align 4
  %116 = load i8*, i8** %6, align 8
  %117 = call i32 @CertFindCertificateInStore(i32 %111, i32 %114, i32 0, i32 %115, i8* %116, i32* null)
  store i32 %117, i32* %11, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %215

119:                                              ; preds = %108
  %120 = load i32, i32* @szOID_KP_SMARTCARD_LOGON, align 4
  %121 = load i32, i32* @szOID_PKIX_KP_CLIENT_AUTH, align 4
  %122 = call i64 @kuhl_m_crypto_c_sc_auth_Ext_EKU(%struct.TYPE_16__* %14, i32 2, i32 %120, i32 %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %210

124:                                              ; preds = %119
  %125 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %20, i32 0, i32 2
  %126 = load i8*, i8** %125, align 8
  %127 = call i64 @kuhl_m_crypto_c_sc_auth_Ext_AltUPN(%struct.TYPE_16__* %15, i8* %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %206

129:                                              ; preds = %124
  %130 = load i32, i32* %3, align 4
  %131 = load i32**, i32*** %4, align 8
  %132 = call i64 @kull_m_string_args_byName(i32 %130, i32** %131, i8* bitcast ([6 x i32]* @.str.12 to i8*), i8** %9, i8* null)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %141

134:                                              ; preds = %129
  %135 = load i8*, i8** %9, align 8
  %136 = call i64 @kuhl_m_crypto_c_sc_auth_Ext_CDP(%struct.TYPE_16__* %16, i32 1, i8* %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %140

138:                                              ; preds = %134
  %139 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %20, i32 0, i32 3
  store %struct.TYPE_16__* %16, %struct.TYPE_16__** %139, align 8
  br label %140

140:                                              ; preds = %138, %134
  br label %141

141:                                              ; preds = %140, %129
  %142 = load i32, i32* %11, align 4
  %143 = call i64 @generateCertificate(%struct.TYPE_14__* %19, %struct.TYPE_15__* %20, i32 %142, i32* null, i32** %18, i32* %17, i32* null)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %196

145:                                              ; preds = %141
  %146 = load i32, i32* %3, align 4
  %147 = load i32**, i32*** %4, align 8
  %148 = call i64 @kull_m_string_args_byName(i32 %146, i32** %147, i8* bitcast ([4 x i32]* @.str.13 to i8*), i8** %7, i8* null)
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %162

150:                                              ; preds = %145
  %151 = load i32*, i32** %18, align 8
  %152 = load i32, i32* %17, align 4
  %153 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i32 0, i32 3
  %154 = load i8*, i8** %7, align 8
  %155 = call i64 @kull_m_crypto_DerAndKeyInfoToPfx(i32* %151, i32 %152, %struct.TYPE_17__* %153, i8* %154)
  store i64 %155, i64* %12, align 8
  %156 = load i8*, i8** %7, align 8
  %157 = load i64, i64* %12, align 8
  %158 = icmp ne i64 %157, 0
  %159 = zext i1 %158 to i64
  %160 = select i1 %158, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @.str.15, i64 0, i64 0), i32* getelementptr inbounds ([3 x i32], [3 x i32]* @.str.16, i64 0, i64 0)
  %161 = call i32 (i8*, i8*, ...) @kprintf(i8* bitcast ([26 x i32]* @.str.14 to i8*), i8* %156, i32* %160)
  br label %179

162:                                              ; preds = %145
  %163 = load i64, i64* %13, align 8
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %178, label %165

165:                                              ; preds = %162
  %166 = load i32*, i32** %18, align 8
  %167 = load i32, i32* %17, align 4
  %168 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i32 0, i32 3
  %169 = load i32, i32* @CERT_SYSTEM_STORE_CURRENT_USER, align 4
  %170 = load i64, i64* @FALSE, align 8
  %171 = call i64 @kull_m_crypto_DerAndKeyInfoToStore(i32* %166, i32 %167, %struct.TYPE_17__* %168, i32 %169, i8* bitcast ([3 x i32]* @.str.10 to i8*), i64 %170)
  store i64 %171, i64* %12, align 8
  %172 = load i64, i64* %12, align 8
  %173 = icmp ne i64 %172, 0
  %174 = zext i1 %173 to i64
  %175 = select i1 %173, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @.str.15, i64 0, i64 0), i32* getelementptr inbounds ([3 x i32], [3 x i32]* @.str.16, i64 0, i64 0)
  %176 = bitcast i32* %175 to i8*
  %177 = call i32 (i8*, i8*, ...) @kprintf(i8* bitcast ([57 x i32]* @.str.17 to i8*), i8* %176)
  br label %178

178:                                              ; preds = %165, %162
  br label %179

179:                                              ; preds = %178, %150
  %180 = load i64, i64* %12, align 8
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %185

182:                                              ; preds = %179
  %183 = load i8*, i8** %7, align 8
  %184 = icmp ne i8* %183, null
  br i1 %184, label %185, label %189

185:                                              ; preds = %182, %179
  %186 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i32 0, i32 2
  %187 = load i32, i32* %186, align 8
  %188 = call i32 @kull_m_crypto_close_hprov_delete_container(i32 %187)
  br label %193

189:                                              ; preds = %182
  %190 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i32 0, i32 2
  %191 = load i32, i32* %190, align 8
  %192 = call i32 @CryptReleaseContext(i32 %191, i32 0)
  br label %193

193:                                              ; preds = %189, %185
  %194 = load i32*, i32** %18, align 8
  %195 = call i32 @LocalFree(i32* %194)
  br label %196

196:                                              ; preds = %193, %141
  %197 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %20, i32 0, i32 3
  %198 = load %struct.TYPE_16__*, %struct.TYPE_16__** %197, align 8
  %199 = icmp ne %struct.TYPE_16__* %198, null
  br i1 %199, label %200, label %204

200:                                              ; preds = %196
  %201 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %20, i32 0, i32 3
  %202 = load %struct.TYPE_16__*, %struct.TYPE_16__** %201, align 8
  %203 = call i32 @kuhl_m_crypto_c_sc_auth_Ext_Free(%struct.TYPE_16__* %202)
  br label %204

204:                                              ; preds = %200, %196
  %205 = call i32 @kuhl_m_crypto_c_sc_auth_Ext_Free(%struct.TYPE_16__* %15)
  br label %208

206:                                              ; preds = %124
  %207 = call i32 @PRINT_ERROR_AUTO(i8* bitcast ([70 x i32]* @.str.18 to i8*))
  br label %208

208:                                              ; preds = %206, %204
  %209 = call i32 @kuhl_m_crypto_c_sc_auth_Ext_Free(%struct.TYPE_16__* %14)
  br label %212

210:                                              ; preds = %119
  %211 = call i32 @PRINT_ERROR_AUTO(i8* bitcast ([67 x i32]* @.str.19 to i8*))
  br label %212

212:                                              ; preds = %210, %208
  %213 = load i32, i32* %11, align 4
  %214 = call i32 @CertFreeCertificateContext(i32 %213)
  br label %217

215:                                              ; preds = %108
  %216 = call i32 @PRINT_ERROR_AUTO(i8* bitcast ([27 x i32]* @.str.20 to i8*))
  br label %217

217:                                              ; preds = %215, %212
  %218 = load i32, i32* %10, align 4
  %219 = load i32, i32* @CERT_CLOSE_STORE_FORCE_FLAG, align 4
  %220 = call i32 @CertCloseStore(i32 %218, i32 %219)
  br label %223

221:                                              ; preds = %96
  %222 = call i32 @PRINT_ERROR_AUTO(i8* bitcast ([14 x i32]* @.str.21 to i8*))
  br label %223

223:                                              ; preds = %221, %217
  br label %226

224:                                              ; preds = %90
  %225 = call i32 @PRINT_ERROR(i8* bitcast ([31 x i32]* @.str.22 to i8*))
  br label %226

226:                                              ; preds = %224, %223
  br label %229

227:                                              ; preds = %79
  %228 = call i32 @PRINT_ERROR(i8* bitcast ([24 x i32]* @.str.23 to i8*))
  br label %229

229:                                              ; preds = %227, %226
  %230 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i32 0, i32 1
  %231 = load i32*, i32** %230, align 8
  %232 = icmp ne i32* %231, null
  br i1 %232, label %233, label %237

233:                                              ; preds = %229
  %234 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i32 0, i32 1
  %235 = load i32*, i32** %234, align 8
  %236 = call i32 @LocalFree(i32* %235)
  br label %237

237:                                              ; preds = %233, %229
  %238 = load i32, i32* @STATUS_SUCCESS, align 4
  ret i32 %238
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @kull_m_string_args_byName(i32, i32**, i8*, i8**, i8*) #2

declare dso_local i32* @kull_m_string_unicode_to_ansi(i8*) #2

declare dso_local i32 @kprintf(i8*, i8*, ...) #2

declare dso_local i32 @CertOpenStore(i32, i32, i32, i32, i8*) #2

declare dso_local i32 @kull_m_crypto_system_store_to_dword(i8*) #2

declare dso_local i32 @CertFindCertificateInStore(i32, i32, i32, i32, i8*, i32*) #2

declare dso_local i64 @kuhl_m_crypto_c_sc_auth_Ext_EKU(%struct.TYPE_16__*, i32, i32, i32) #2

declare dso_local i64 @kuhl_m_crypto_c_sc_auth_Ext_AltUPN(%struct.TYPE_16__*, i8*) #2

declare dso_local i64 @kuhl_m_crypto_c_sc_auth_Ext_CDP(%struct.TYPE_16__*, i32, i8*) #2

declare dso_local i64 @generateCertificate(%struct.TYPE_14__*, %struct.TYPE_15__*, i32, i32*, i32**, i32*, i32*) #2

declare dso_local i64 @kull_m_crypto_DerAndKeyInfoToPfx(i32*, i32, %struct.TYPE_17__*, i8*) #2

declare dso_local i64 @kull_m_crypto_DerAndKeyInfoToStore(i32*, i32, %struct.TYPE_17__*, i32, i8*, i64) #2

declare dso_local i32 @kull_m_crypto_close_hprov_delete_container(i32) #2

declare dso_local i32 @CryptReleaseContext(i32, i32) #2

declare dso_local i32 @LocalFree(i32*) #2

declare dso_local i32 @kuhl_m_crypto_c_sc_auth_Ext_Free(%struct.TYPE_16__*) #2

declare dso_local i32 @PRINT_ERROR_AUTO(i8*) #2

declare dso_local i32 @CertFreeCertificateContext(i32) #2

declare dso_local i32 @CertCloseStore(i32, i32) #2

declare dso_local i32 @PRINT_ERROR(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
