; ModuleID = '/home/carl/AnghaBench/mimikatz/mimikatz/modules/crypto/extr_kuhl_m_crypto_sc.c_kuhl_m_crypto_l_sc.c'
source_filename = "/home/carl/AnghaBench/mimikatz/mimikatz/modules/crypto/extr_kuhl_m_crypto_sc.c_kuhl_m_crypto_l_sc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SCARD_AUTOALLOCATE = common dso_local global i32 0, align 4
@SCARD_SCOPE_SYSTEM = common dso_local global i32 0, align 4
@SCARD_S_SUCCESS = common dso_local global i64 0, align 8
@SCARD_ALL_READERS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i32] [i32 83, i32 109, i32 97, i32 114, i32 116, i32 67, i32 97, i32 114, i32 100, i32 32, i32 114, i32 101, i32 97, i32 100, i32 101, i32 114, i32 115, i32 58, i32 0], align 4
@.str.1 = private unnamed_addr constant [8 x i32] [i32 10, i32 32, i32 42, i32 32, i32 37, i32 115, i32 10, i32 0], align 4
@SCARD_SHARE_SHARED = common dso_local global i32 0, align 4
@SCARD_PROTOCOL_T0 = common dso_local global i32 0, align 4
@SCARD_PROTOCOL_T1 = common dso_local global i32 0, align 4
@SCARD_ATTR_ATR_STRING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i32] [i32 32, i32 32, i32 32, i32 65, i32 84, i32 82, i32 32, i32 32, i32 58, i32 32, i32 0], align 4
@.str.3 = private unnamed_addr constant [2 x i32] [i32 10, i32 0], align 4
@.str.4 = private unnamed_addr constant [14 x i32] [i32 32, i32 32, i32 32, i32 77, i32 111, i32 100, i32 101, i32 108, i32 58, i32 32, i32 37, i32 115, i32 10, i32 0], align 4
@SCARD_PROVIDER_PRIMARY = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [14 x i32] [i32 32, i32 32, i32 32, i32 80, i32 82, i32 73, i32 77, i32 32, i32 58, i32 32, i32 37, i32 115, i32 10, i32 0], align 4
@ERROR_FILE_NOT_FOUND = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [44 x i32] [i32 83, i32 67, i32 97, i32 114, i32 100, i32 71, i32 101, i32 116, i32 67, i32 97, i32 114, i32 100, i32 84, i32 121, i32 112, i32 101, i32 80, i32 114, i32 111, i32 118, i32 105, i32 100, i32 101, i32 114, i32 78, i32 97, i32 109, i32 101, i32 40, i32 80, i32 82, i32 73, i32 77, i32 41, i32 58, i32 32, i32 48, i32 120, i32 37, i32 48, i32 56, i32 120, i32 10, i32 0], align 4
@SCARD_PROVIDER_CSP = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [14 x i32] [i32 32, i32 32, i32 32, i32 67, i32 83, i32 80, i32 32, i32 32, i32 58, i32 32, i32 37, i32 115, i32 10, i32 0], align 4
@CRYPT_SILENT = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [43 x i32] [i32 83, i32 67, i32 97, i32 114, i32 100, i32 71, i32 101, i32 116, i32 67, i32 97, i32 114, i32 100, i32 84, i32 121, i32 112, i32 101, i32 80, i32 114, i32 111, i32 118, i32 105, i32 100, i32 101, i32 114, i32 78, i32 97, i32 109, i32 101, i32 40, i32 67, i32 83, i32 80, i32 41, i32 58, i32 32, i32 48, i32 120, i32 37, i32 48, i32 56, i32 120, i32 10, i32 0], align 4
@SCARD_PROVIDER_KSP = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [14 x i32] [i32 32, i32 32, i32 32, i32 75, i32 83, i32 80, i32 32, i32 32, i32 58, i32 32, i32 37, i32 115, i32 10, i32 0], align 4
@.str.10 = private unnamed_addr constant [43 x i32] [i32 83, i32 67, i32 97, i32 114, i32 100, i32 71, i32 101, i32 116, i32 67, i32 97, i32 114, i32 100, i32 84, i32 121, i32 112, i32 101, i32 80, i32 114, i32 111, i32 118, i32 105, i32 100, i32 101, i32 114, i32 78, i32 97, i32 109, i32 101, i32 40, i32 75, i32 83, i32 80, i32 41, i32 58, i32 32, i32 48, i32 120, i32 37, i32 48, i32 56, i32 120, i32 10, i32 0], align 4
@SCARD_PROVIDER_CARD_MODULE = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [14 x i32] [i32 32, i32 32, i32 32, i32 77, i32 68, i32 82, i32 86, i32 32, i32 58, i32 32, i32 37, i32 115, i32 10, i32 0], align 4
@.str.12 = private unnamed_addr constant [43 x i32] [i32 83, i32 67, i32 97, i32 114, i32 100, i32 71, i32 101, i32 116, i32 67, i32 97, i32 114, i32 100, i32 84, i32 121, i32 112, i32 101, i32 80, i32 114, i32 111, i32 118, i32 105, i32 100, i32 101, i32 114, i32 78, i32 97, i32 109, i32 101, i32 40, i32 77, i32 68, i32 82, i32 41, i32 58, i32 32, i32 48, i32 120, i32 37, i32 48, i32 56, i32 120, i32 10, i32 0], align 4
@.str.13 = private unnamed_addr constant [24 x i32] [i32 83, i32 67, i32 97, i32 114, i32 100, i32 76, i32 105, i32 115, i32 116, i32 67, i32 97, i32 114, i32 100, i32 115, i32 58, i32 32, i32 48, i32 120, i32 37, i32 48, i32 56, i32 120, i32 10, i32 0], align 4
@.str.14 = private unnamed_addr constant [29 x i32] [i32 83, i32 67, i32 97, i32 114, i32 100, i32 71, i32 101, i32 116, i32 65, i32 116, i32 116, i32 114, i32 105, i32 98, i32 58, i32 32, i32 48, i32 120, i32 37, i32 48, i32 56, i32 120, i32 32, i32 40, i32 37, i32 117, i32 41, i32 10, i32 0], align 4
@SCARD_LEAVE_CARD = common dso_local global i32 0, align 4
@SCARD_W_REMOVED_CARD = common dso_local global i64 0, align 8
@.str.15 = private unnamed_addr constant [22 x i32] [i32 83, i32 67, i32 97, i32 114, i32 100, i32 67, i32 111, i32 110, i32 110, i32 101, i32 99, i32 116, i32 58, i32 32, i32 48, i32 120, i32 37, i32 48, i32 56, i32 120, i32 10, i32 0], align 4
@.str.16 = private unnamed_addr constant [26 x i32] [i32 83, i32 67, i32 97, i32 114, i32 100, i32 76, i32 105, i32 115, i32 116, i32 82, i32 101, i32 97, i32 100, i32 101, i32 114, i32 115, i32 58, i32 32, i32 48, i32 120, i32 37, i32 48, i32 56, i32 120, i32 10, i32 0], align 4
@.str.17 = private unnamed_addr constant [31 x i32] [i32 83, i32 67, i32 97, i32 114, i32 100, i32 69, i32 115, i32 116, i32 97, i32 98, i32 108, i32 105, i32 115, i32 104, i32 67, i32 111, i32 110, i32 116, i32 101, i32 120, i32 116, i32 58, i32 32, i32 48, i32 120, i32 37, i32 48, i32 56, i32 120, i32 10, i32 0], align 4
@STATUS_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kuhl_m_crypto_l_sc(i32 %0, i32** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32** %1, i32*** %4, align 8
  store i64* null, i64** %9, align 8
  store i64* null, i64** %11, align 8
  store i64* null, i64** %13, align 8
  %17 = load i32, i32* @SCARD_AUTOALLOCATE, align 4
  store i32 %17, i32* %15, align 4
  %18 = load i32, i32* @SCARD_SCOPE_SYSTEM, align 4
  %19 = call i64 @SCardEstablishContext(i32 %18, i32* null, i32* null, i32* %5)
  store i64 %19, i64* %8, align 8
  %20 = load i64, i64* %8, align 8
  %21 = load i64, i64* @SCARD_S_SUCCESS, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %266

23:                                               ; preds = %2
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @SCARD_ALL_READERS, align 4
  %26 = bitcast i64** %9 to i64*
  %27 = call i64 @SCardListReaders(i32 %24, i32 %25, i64* %26, i32* %15)
  store i64 %27, i64* %8, align 8
  %28 = load i64, i64* %8, align 8
  %29 = load i64, i64* @SCARD_S_SUCCESS, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %260

31:                                               ; preds = %23
  %32 = call i32 (i8*, ...) @kprintf(i8* bitcast ([19 x i32]* @.str to i8*))
  %33 = load i64*, i64** %9, align 8
  store i64* %33, i64** %10, align 8
  br label %34

34:                                               ; preds = %250, %31
  %35 = load i64*, i64** %10, align 8
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %256

38:                                               ; preds = %34
  %39 = load i64*, i64** %10, align 8
  %40 = call i32 (i8*, ...) @kprintf(i8* bitcast ([8 x i32]* @.str.1 to i8*), i64* %39)
  %41 = load i32, i32* %5, align 4
  %42 = load i64*, i64** %10, align 8
  %43 = call i32 @kuhl_m_crypto_l_sc_prop(i32 %41, i64* %42)
  %44 = load i64*, i64** %10, align 8
  %45 = call i64* @kuhl_m_crypto_l_sc_containerFromReader(i64* %44)
  store i64* %45, i64** %14, align 8
  %46 = icmp ne i64* %45, null
  br i1 %46, label %47, label %249

47:                                               ; preds = %38
  %48 = load i32, i32* %5, align 4
  %49 = load i64*, i64** %10, align 8
  %50 = load i32, i32* @SCARD_SHARE_SHARED, align 4
  %51 = load i32, i32* @SCARD_PROTOCOL_T0, align 4
  %52 = load i32, i32* @SCARD_PROTOCOL_T1, align 4
  %53 = or i32 %51, %52
  %54 = call i64 @SCardConnect(i32 %48, i64* %49, i32 %50, i32 %53, i32* %6, i32* %15)
  store i64 %54, i64* %8, align 8
  %55 = load i64, i64* %8, align 8
  %56 = load i64, i64* @SCARD_S_SUCCESS, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %238

58:                                               ; preds = %47
  %59 = load i32, i32* @SCARD_AUTOALLOCATE, align 4
  store i32 %59, i32* %16, align 4
  %60 = load i32, i32* %6, align 4
  %61 = load i32, i32* @SCARD_ATTR_ATR_STRING, align 4
  %62 = bitcast i64** %7 to i64*
  %63 = call i64 @SCardGetAttrib(i32 %60, i32 %61, i64* %62, i32* %16)
  store i64 %63, i64* %8, align 8
  %64 = load i64, i64* %8, align 8
  %65 = load i64, i64* @SCARD_S_SUCCESS, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %230

67:                                               ; preds = %58
  %68 = call i32 (i8*, ...) @kprintf(i8* bitcast ([11 x i32]* @.str.2 to i8*))
  %69 = load i64*, i64** %7, align 8
  %70 = load i32, i32* %16, align 4
  %71 = call i32 @kull_m_string_wprintf_hex(i64* %69, i32 %70, i32 0)
  %72 = call i32 (i8*, ...) @kprintf(i8* bitcast ([2 x i32]* @.str.3 to i8*))
  %73 = load i32, i32* @SCARD_AUTOALLOCATE, align 4
  store i32 %73, i32* %15, align 4
  %74 = load i32, i32* %5, align 4
  %75 = load i64*, i64** %7, align 8
  %76 = bitcast i64** %11 to i64*
  %77 = call i64 @SCardListCards(i32 %74, i64* %75, i32* null, i32 0, i64* %76, i32* %15)
  store i64 %77, i64* %8, align 8
  %78 = load i64, i64* %8, align 8
  %79 = load i64, i64* @SCARD_S_SUCCESS, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %223

81:                                               ; preds = %67
  %82 = load i64*, i64** %11, align 8
  store i64* %82, i64** %12, align 8
  br label %83

83:                                               ; preds = %213, %81
  %84 = load i64*, i64** %12, align 8
  %85 = icmp ne i64* %84, null
  br i1 %85, label %86, label %90

86:                                               ; preds = %83
  %87 = load i64*, i64** %12, align 8
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br label %90

90:                                               ; preds = %86, %83
  %91 = phi i1 [ false, %83 ], [ %89, %86 ]
  br i1 %91, label %92, label %219

92:                                               ; preds = %90
  %93 = load i64*, i64** %12, align 8
  %94 = call i32 (i8*, ...) @kprintf(i8* bitcast ([14 x i32]* @.str.4 to i8*), i64* %93)
  %95 = load i32, i32* @SCARD_AUTOALLOCATE, align 4
  store i32 %95, i32* %15, align 4
  %96 = load i32, i32* %5, align 4
  %97 = load i64*, i64** %12, align 8
  %98 = load i32, i32* @SCARD_PROVIDER_PRIMARY, align 4
  %99 = bitcast i64** %13 to i64*
  %100 = call i64 @SCardGetCardTypeProviderName(i32 %96, i64* %97, i32 %98, i64* %99, i32* %15)
  store i64 %100, i64* %8, align 8
  %101 = load i64, i64* %8, align 8
  %102 = load i64, i64* @SCARD_S_SUCCESS, align 8
  %103 = icmp eq i64 %101, %102
  br i1 %103, label %104, label %110

104:                                              ; preds = %92
  %105 = load i64*, i64** %13, align 8
  %106 = call i32 (i8*, ...) @kprintf(i8* bitcast ([14 x i32]* @.str.5 to i8*), i64* %105)
  %107 = load i32, i32* %5, align 4
  %108 = load i64*, i64** %13, align 8
  %109 = call i32 @SCardFreeMemory(i32 %107, i64* %108)
  br label %118

110:                                              ; preds = %92
  %111 = load i64, i64* %8, align 8
  %112 = load i64, i64* @ERROR_FILE_NOT_FOUND, align 8
  %113 = icmp ne i64 %111, %112
  br i1 %113, label %114, label %117

114:                                              ; preds = %110
  %115 = load i64, i64* %8, align 8
  %116 = call i32 (i8*, i64, ...) @PRINT_ERROR(i8* bitcast ([44 x i32]* @.str.6 to i8*), i64 %115)
  br label %117

117:                                              ; preds = %114, %110
  br label %118

118:                                              ; preds = %117, %104
  %119 = load i32, i32* @SCARD_AUTOALLOCATE, align 4
  store i32 %119, i32* %15, align 4
  %120 = load i32, i32* %5, align 4
  %121 = load i64*, i64** %12, align 8
  %122 = load i32, i32* @SCARD_PROVIDER_CSP, align 4
  %123 = bitcast i64** %13 to i64*
  %124 = call i64 @SCardGetCardTypeProviderName(i32 %120, i64* %121, i32 %122, i64* %123, i32* %15)
  store i64 %124, i64* %8, align 8
  %125 = load i64, i64* %8, align 8
  %126 = load i64, i64* @SCARD_S_SUCCESS, align 8
  %127 = icmp eq i64 %125, %126
  br i1 %127, label %128, label %145

128:                                              ; preds = %118
  %129 = load i64*, i64** %13, align 8
  %130 = call i32 (i8*, ...) @kprintf(i8* bitcast ([14 x i32]* @.str.7 to i8*), i64* %129)
  %131 = load i64*, i64** %13, align 8
  %132 = call i32 @kuhl_m_crypto_l_sc_provtypefromname(i64* %131)
  store i32 %132, i32* %15, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %141

134:                                              ; preds = %128
  %135 = load i64*, i64** %14, align 8
  %136 = load i64*, i64** %13, align 8
  %137 = load i32, i32* %15, align 4
  %138 = load i32, i32* @CRYPT_SILENT, align 4
  %139 = load i32, i32* @FALSE, align 4
  %140 = call i32 @kuhl_m_crypto_l_keys_capi(i64* %135, i64* %136, i32 %137, i32 %138, i32 %139, i32* null)
  br label %141

141:                                              ; preds = %134, %128
  %142 = load i32, i32* %5, align 4
  %143 = load i64*, i64** %13, align 8
  %144 = call i32 @SCardFreeMemory(i32 %142, i64* %143)
  br label %153

145:                                              ; preds = %118
  %146 = load i64, i64* %8, align 8
  %147 = load i64, i64* @ERROR_FILE_NOT_FOUND, align 8
  %148 = icmp ne i64 %146, %147
  br i1 %148, label %149, label %152

149:                                              ; preds = %145
  %150 = load i64, i64* %8, align 8
  %151 = call i32 (i8*, i64, ...) @PRINT_ERROR(i8* bitcast ([43 x i32]* @.str.8 to i8*), i64 %150)
  br label %152

152:                                              ; preds = %149, %145
  br label %153

153:                                              ; preds = %152, %141
  %154 = load i32, i32* @SCARD_AUTOALLOCATE, align 4
  store i32 %154, i32* %15, align 4
  %155 = load i32, i32* %5, align 4
  %156 = load i64*, i64** %12, align 8
  %157 = load i32, i32* @SCARD_PROVIDER_KSP, align 4
  %158 = bitcast i64** %13 to i64*
  %159 = call i64 @SCardGetCardTypeProviderName(i32 %155, i64* %156, i32 %157, i64* %158, i32* %15)
  store i64 %159, i64* %8, align 8
  %160 = load i64, i64* %8, align 8
  %161 = load i64, i64* @SCARD_S_SUCCESS, align 8
  %162 = icmp eq i64 %160, %161
  br i1 %162, label %163, label %173

163:                                              ; preds = %153
  %164 = load i64*, i64** %13, align 8
  %165 = call i32 (i8*, ...) @kprintf(i8* bitcast ([14 x i32]* @.str.9 to i8*), i64* %164)
  %166 = load i64*, i64** %14, align 8
  %167 = load i64*, i64** %13, align 8
  %168 = load i32, i32* @FALSE, align 4
  %169 = call i32 @kuhl_m_crypto_l_keys_cng(i64* %166, i64* %167, i32 0, i32 %168, i32* null)
  %170 = load i32, i32* %5, align 4
  %171 = load i64*, i64** %13, align 8
  %172 = call i32 @SCardFreeMemory(i32 %170, i64* %171)
  br label %181

173:                                              ; preds = %153
  %174 = load i64, i64* %8, align 8
  %175 = load i64, i64* @ERROR_FILE_NOT_FOUND, align 8
  %176 = icmp ne i64 %174, %175
  br i1 %176, label %177, label %180

177:                                              ; preds = %173
  %178 = load i64, i64* %8, align 8
  %179 = call i32 (i8*, i64, ...) @PRINT_ERROR(i8* bitcast ([43 x i32]* @.str.10 to i8*), i64 %178)
  br label %180

180:                                              ; preds = %177, %173
  br label %181

181:                                              ; preds = %180, %163
  %182 = load i32, i32* @SCARD_AUTOALLOCATE, align 4
  store i32 %182, i32* %15, align 4
  %183 = load i32, i32* %5, align 4
  %184 = load i64*, i64** %12, align 8
  %185 = load i32, i32* @SCARD_PROVIDER_CARD_MODULE, align 4
  %186 = bitcast i64** %13 to i64*
  %187 = call i64 @SCardGetCardTypeProviderName(i32 %183, i64* %184, i32 %185, i64* %186, i32* %15)
  store i64 %187, i64* %8, align 8
  %188 = load i64, i64* %8, align 8
  %189 = load i64, i64* @SCARD_S_SUCCESS, align 8
  %190 = icmp eq i64 %188, %189
  br i1 %190, label %191, label %204

191:                                              ; preds = %181
  %192 = load i64*, i64** %13, align 8
  %193 = call i32 (i8*, ...) @kprintf(i8* bitcast ([14 x i32]* @.str.11 to i8*), i64* %192)
  %194 = load i64*, i64** %13, align 8
  %195 = load i32, i32* %5, align 4
  %196 = load i32, i32* %6, align 4
  %197 = load i64*, i64** %12, align 8
  %198 = load i64*, i64** %7, align 8
  %199 = load i32, i32* %16, align 4
  %200 = call i32 @kuhl_m_crypto_l_mdr(i64* %194, i32 %195, i32 %196, i64* %197, i64* %198, i32 %199)
  %201 = load i32, i32* %5, align 4
  %202 = load i64*, i64** %13, align 8
  %203 = call i32 @SCardFreeMemory(i32 %201, i64* %202)
  br label %212

204:                                              ; preds = %181
  %205 = load i64, i64* %8, align 8
  %206 = load i64, i64* @ERROR_FILE_NOT_FOUND, align 8
  %207 = icmp ne i64 %205, %206
  br i1 %207, label %208, label %211

208:                                              ; preds = %204
  %209 = load i64, i64* %8, align 8
  %210 = call i32 (i8*, i64, ...) @PRINT_ERROR(i8* bitcast ([43 x i32]* @.str.12 to i8*), i64 %209)
  br label %211

211:                                              ; preds = %208, %204
  br label %212

212:                                              ; preds = %211, %191
  br label %213

213:                                              ; preds = %212
  %214 = load i64*, i64** %12, align 8
  %215 = call i64 @wcslen(i64* %214)
  %216 = add nsw i64 %215, 1
  %217 = load i64*, i64** %12, align 8
  %218 = getelementptr inbounds i64, i64* %217, i64 %216
  store i64* %218, i64** %12, align 8
  br label %83

219:                                              ; preds = %90
  %220 = load i32, i32* %5, align 4
  %221 = load i64*, i64** %11, align 8
  %222 = call i32 @SCardFreeMemory(i32 %220, i64* %221)
  br label %226

223:                                              ; preds = %67
  %224 = load i64, i64* %8, align 8
  %225 = call i32 (i8*, i64, ...) @PRINT_ERROR(i8* bitcast ([24 x i32]* @.str.13 to i8*), i64 %224)
  br label %226

226:                                              ; preds = %223, %219
  %227 = load i32, i32* %5, align 4
  %228 = load i64*, i64** %7, align 8
  %229 = call i32 @SCardFreeMemory(i32 %227, i64* %228)
  br label %234

230:                                              ; preds = %58
  %231 = load i64, i64* %8, align 8
  %232 = load i32, i32* %16, align 4
  %233 = call i32 (i8*, i64, ...) @PRINT_ERROR(i8* bitcast ([29 x i32]* @.str.14 to i8*), i64 %231, i32 %232)
  br label %234

234:                                              ; preds = %230, %226
  %235 = load i32, i32* %6, align 4
  %236 = load i32, i32* @SCARD_LEAVE_CARD, align 4
  %237 = call i32 @SCardDisconnect(i32 %235, i32 %236)
  br label %246

238:                                              ; preds = %47
  %239 = load i64, i64* %8, align 8
  %240 = load i64, i64* @SCARD_W_REMOVED_CARD, align 8
  %241 = icmp ne i64 %239, %240
  br i1 %241, label %242, label %245

242:                                              ; preds = %238
  %243 = load i64, i64* %8, align 8
  %244 = call i32 (i8*, i64, ...) @PRINT_ERROR(i8* bitcast ([22 x i32]* @.str.15 to i8*), i64 %243)
  br label %245

245:                                              ; preds = %242, %238
  br label %246

246:                                              ; preds = %245, %234
  %247 = load i64*, i64** %14, align 8
  %248 = call i32 @LocalFree(i64* %247)
  br label %249

249:                                              ; preds = %246, %38
  br label %250

250:                                              ; preds = %249
  %251 = load i64*, i64** %10, align 8
  %252 = call i64 @wcslen(i64* %251)
  %253 = add nsw i64 %252, 1
  %254 = load i64*, i64** %10, align 8
  %255 = getelementptr inbounds i64, i64* %254, i64 %253
  store i64* %255, i64** %10, align 8
  br label %34

256:                                              ; preds = %34
  %257 = load i32, i32* %5, align 4
  %258 = load i64*, i64** %9, align 8
  %259 = call i32 @SCardFreeMemory(i32 %257, i64* %258)
  br label %263

260:                                              ; preds = %23
  %261 = load i64, i64* %8, align 8
  %262 = call i32 (i8*, i64, ...) @PRINT_ERROR(i8* bitcast ([26 x i32]* @.str.16 to i8*), i64 %261)
  br label %263

263:                                              ; preds = %260, %256
  %264 = load i32, i32* %5, align 4
  %265 = call i32 @SCardReleaseContext(i32 %264)
  br label %269

266:                                              ; preds = %2
  %267 = load i64, i64* %8, align 8
  %268 = call i32 (i8*, i64, ...) @PRINT_ERROR(i8* bitcast ([31 x i32]* @.str.17 to i8*), i64 %267)
  br label %269

269:                                              ; preds = %266, %263
  %270 = load i32, i32* @STATUS_SUCCESS, align 4
  ret i32 %270
}

declare dso_local i64 @SCardEstablishContext(i32, i32*, i32*, i32*) #1

declare dso_local i64 @SCardListReaders(i32, i32, i64*, i32*) #1

declare dso_local i32 @kprintf(i8*, ...) #1

declare dso_local i32 @kuhl_m_crypto_l_sc_prop(i32, i64*) #1

declare dso_local i64* @kuhl_m_crypto_l_sc_containerFromReader(i64*) #1

declare dso_local i64 @SCardConnect(i32, i64*, i32, i32, i32*, i32*) #1

declare dso_local i64 @SCardGetAttrib(i32, i32, i64*, i32*) #1

declare dso_local i32 @kull_m_string_wprintf_hex(i64*, i32, i32) #1

declare dso_local i64 @SCardListCards(i32, i64*, i32*, i32, i64*, i32*) #1

declare dso_local i64 @SCardGetCardTypeProviderName(i32, i64*, i32, i64*, i32*) #1

declare dso_local i32 @SCardFreeMemory(i32, i64*) #1

declare dso_local i32 @PRINT_ERROR(i8*, i64, ...) #1

declare dso_local i32 @kuhl_m_crypto_l_sc_provtypefromname(i64*) #1

declare dso_local i32 @kuhl_m_crypto_l_keys_capi(i64*, i64*, i32, i32, i32, i32*) #1

declare dso_local i32 @kuhl_m_crypto_l_keys_cng(i64*, i64*, i32, i32, i32*) #1

declare dso_local i32 @kuhl_m_crypto_l_mdr(i64*, i32, i32, i64*, i64*, i32) #1

declare dso_local i64 @wcslen(i64*) #1

declare dso_local i32 @SCardDisconnect(i32, i32) #1

declare dso_local i32 @LocalFree(i64*) #1

declare dso_local i32 @SCardReleaseContext(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
