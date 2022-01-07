; ModuleID = '/home/carl/AnghaBench/mimikatz/mimikatz/modules/extr_kuhl_m_lsadump.c_kuhl_m_lsadump_netsync.c'
source_filename = "/home/carl/AnghaBench/mimikatz/mimikatz/modules/extr_kuhl_m_lsadump.c_kuhl_m_lsadump_netsync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i8, i8, i8, i8, i8, i8, i8, i8, i64* }
%struct.TYPE_12__ = type { i32 }

@__const.kuhl_m_lsadump_netsync.ClientChallenge = private unnamed_addr constant %struct.TYPE_11__ { i8 45, i8 92, i8 124, i8 47, i8 45, i8 92, i8 124, i8 47, i64* null }, align 8
@LM_NTLM_HASH_LENGTH = common dso_local global i32 0, align 4
@MD5_DIGEST_LENGTH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i32] [i32 100, i32 99, i32 0], align 4
@.str.1 = private unnamed_addr constant [5 x i32] [i32 117, i32 115, i32 101, i32 114, i32 0], align 4
@.str.2 = private unnamed_addr constant [8 x i32] [i32 97, i32 99, i32 99, i32 111, i32 117, i32 110, i32 116, i32 0], align 4
@.str.3 = private unnamed_addr constant [9 x i32] [i32 99, i32 111, i32 109, i32 112, i32 117, i32 116, i32 101, i32 114, i32 0], align 4
@MIMIKATZ = common dso_local global i32* null, align 8
@.str.4 = private unnamed_addr constant [5 x i32] [i32 110, i32 116, i32 108, i32 109, i32 0], align 4
@CALG_MD5 = common dso_local global i32 0, align 4
@ServerSecureChannel = common dso_local global i32 0, align 4
@STATUS_NO_SUCH_USER = common dso_local global i64 0, align 8
@kuhl_m_lsadump_netsync_sc = common dso_local global i32* null, align 8
@.str.5 = private unnamed_addr constant [15 x i32] [i32 32, i32 32, i32 65, i32 99, i32 99, i32 111, i32 117, i32 110, i32 116, i32 58, i32 32, i32 37, i32 115, i32 10, i32 0], align 4
@.str.6 = private unnamed_addr constant [12 x i32] [i32 32, i32 32, i32 78, i32 84, i32 76, i32 77, i32 32, i32 32, i32 32, i32 58, i32 32, i32 0], align 4
@.str.7 = private unnamed_addr constant [2 x i32] [i32 10, i32 0], align 4
@.str.8 = private unnamed_addr constant [12 x i32] [i32 32, i32 32, i32 78, i32 84, i32 76, i32 77, i32 45, i32 49, i32 32, i32 58, i32 32, i32 0], align 4
@.str.9 = private unnamed_addr constant [39 x i32] [i32 73, i32 95, i32 78, i32 101, i32 116, i32 83, i32 101, i32 114, i32 118, i32 101, i32 114, i32 84, i32 114, i32 117, i32 115, i32 116, i32 80, i32 97, i32 115, i32 115, i32 119, i32 111, i32 114, i32 100, i32 115, i32 71, i32 101, i32 116, i32 32, i32 40, i32 48, i32 120, i32 37, i32 48, i32 56, i32 120, i32 41, i32 10, i32 0], align 4
@.str.10 = private unnamed_addr constant [59 x i32] [i32 83, i32 101, i32 114, i32 118, i32 101, i32 114, i32 67, i32 114, i32 101, i32 100, i32 101, i32 110, i32 116, i32 105, i32 97, i32 108, i32 32, i32 100, i32 111, i32 101, i32 115, i32 32, i32 110, i32 111, i32 116, i32 32, i32 109, i32 97, i32 116, i32 99, i32 104, i32 32, i32 67, i32 97, i32 110, i32 100, i32 105, i32 100, i32 97, i32 116, i32 101, i32 83, i32 101, i32 114, i32 118, i32 101, i32 114, i32 67, i32 114, i32 101, i32 100, i32 101, i32 110, i32 116, i32 105, i32 97, i32 108, i32 10, i32 0], align 4
@.str.11 = private unnamed_addr constant [35 x i32] [i32 73, i32 95, i32 78, i32 101, i32 116, i32 83, i32 101, i32 114, i32 118, i32 101, i32 114, i32 65, i32 117, i32 116, i32 104, i32 101, i32 110, i32 116, i32 105, i32 99, i32 97, i32 116, i32 101, i32 50, i32 32, i32 40, i32 48, i32 120, i32 37, i32 48, i32 56, i32 120, i32 41, i32 10, i32 0], align 4
@.str.12 = private unnamed_addr constant [34 x i32] [i32 73, i32 95, i32 78, i32 101, i32 116, i32 83, i32 101, i32 114, i32 118, i32 101, i32 114, i32 82, i32 101, i32 113, i32 67, i32 104, i32 97, i32 108, i32 108, i32 101, i32 110, i32 103, i32 101, i32 32, i32 40, i32 48, i32 120, i32 37, i32 48, i32 56, i32 120, i32 41, i32 10, i32 0], align 4
@.str.13 = private unnamed_addr constant [48 x i32] [i32 110, i32 116, i32 108, i32 109, i32 32, i32 104, i32 97, i32 115, i32 104, i32 47, i32 114, i32 99, i32 52, i32 32, i32 107, i32 101, i32 121, i32 32, i32 108, i32 101, i32 110, i32 103, i32 116, i32 104, i32 32, i32 109, i32 117, i32 115, i32 116, i32 32, i32 98, i32 101, i32 32, i32 51, i32 50, i32 32, i32 40, i32 49, i32 54, i32 32, i32 98, i32 121, i32 116, i32 101, i32 115, i32 41, i32 10, i32 0], align 4
@.str.14 = private unnamed_addr constant [25 x i32] [i32 77, i32 105, i32 115, i32 115, i32 105, i32 110, i32 103, i32 32, i32 97, i32 114, i32 103, i32 117, i32 109, i32 101, i32 110, i32 116, i32 32, i32 58, i32 32, i32 110, i32 116, i32 108, i32 109, i32 10, i32 0], align 4
@.str.15 = private unnamed_addr constant [25 x i32] [i32 77, i32 105, i32 115, i32 115, i32 105, i32 110, i32 103, i32 32, i32 97, i32 114, i32 103, i32 117, i32 109, i32 101, i32 110, i32 116, i32 32, i32 58, i32 32, i32 117, i32 115, i32 101, i32 114, i32 10, i32 0], align 4
@.str.16 = private unnamed_addr constant [23 x i32] [i32 77, i32 105, i32 115, i32 115, i32 105, i32 110, i32 103, i32 32, i32 97, i32 114, i32 103, i32 117, i32 109, i32 101, i32 110, i32 116, i32 32, i32 58, i32 32, i32 100, i32 99, i32 10, i32 0], align 4
@STATUS_SUCCESS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @kuhl_m_lsadump_netsync(i32 %0, i32** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32**, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_11__, align 8
  %7 = alloca %struct.TYPE_11__, align 8
  %8 = alloca %struct.TYPE_11__, align 8
  %9 = alloca %struct.TYPE_11__, align 8
  %10 = alloca %struct.TYPE_11__, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca %struct.TYPE_12__, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32*, align 8
  %24 = alloca i32*, align 8
  %25 = alloca i32*, align 8
  %26 = alloca i32*, align 8
  %27 = alloca i32*, align 8
  store i32 %0, i32* %3, align 4
  store i32** %1, i32*** %4, align 8
  %28 = bitcast %struct.TYPE_11__* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %28, i8* align 8 getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @__const.kuhl_m_lsadump_netsync.ClientChallenge, i32 0, i32 0), i64 16, i1 false)
  %29 = load i32, i32* @LM_NTLM_HASH_LENGTH, align 4
  %30 = zext i32 %29 to i64
  %31 = call i8* @llvm.stacksave()
  store i8* %31, i8** %13, align 8
  %32 = alloca i32, i64 %30, align 16
  store i64 %30, i64* %14, align 8
  %33 = load i32, i32* @MD5_DIGEST_LENGTH, align 4
  %34 = zext i32 %33 to i64
  %35 = alloca i32, i64 %34, align 16
  store i64 %34, i64* %15, align 8
  store i64 0, i64* %16, align 8
  store i64 1611661311, i64* %17, align 8
  %36 = load i32, i32* %3, align 4
  %37 = load i32**, i32*** %4, align 8
  %38 = call i64 @kull_m_string_args_byName(i32 %36, i32** %37, i8* bitcast ([3 x i32]* @.str to i8*), i32** %23, i32* null)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %204

40:                                               ; preds = %2
  %41 = load i32, i32* %3, align 4
  %42 = load i32**, i32*** %4, align 8
  %43 = call i64 @kull_m_string_args_byName(i32 %41, i32** %42, i8* bitcast ([5 x i32]* @.str.1 to i8*), i32** %25, i32* null)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %201

45:                                               ; preds = %40
  %46 = load i32, i32* %3, align 4
  %47 = load i32**, i32*** %4, align 8
  %48 = load i32*, i32** %25, align 8
  %49 = call i64 @kull_m_string_args_byName(i32 %46, i32** %47, i8* bitcast ([8 x i32]* @.str.2 to i8*), i32** %27, i32* %48)
  %50 = load i32, i32* %3, align 4
  %51 = load i32**, i32*** %4, align 8
  %52 = load i32*, i32** @MIMIKATZ, align 8
  %53 = call i64 @kull_m_string_args_byName(i32 %50, i32** %51, i8* bitcast ([9 x i32]* @.str.3 to i8*), i32** %24, i32* %52)
  %54 = load i32, i32* %3, align 4
  %55 = load i32**, i32*** %4, align 8
  %56 = call i64 @kull_m_string_args_byName(i32 %54, i32** %55, i8* bitcast ([5 x i32]* @.str.4 to i8*), i32** %26, i32* null)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %198

58:                                               ; preds = %45
  %59 = load i32*, i32** %26, align 8
  %60 = mul nuw i64 4, %30
  %61 = trunc i64 %60 to i32
  %62 = call i64 @kull_m_string_stringToHex(i32* %59, i32* %32, i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %195

64:                                               ; preds = %58
  %65 = load i32*, i32** %23, align 8
  %66 = ptrtoint i32* %65 to i32
  %67 = load i32*, i32** %24, align 8
  %68 = call i64 @I_NetServerReqChallenge(i32 %66, i32* %67, %struct.TYPE_11__* %6, %struct.TYPE_11__* %7)
  store i64 %68, i64* %5, align 8
  %69 = load i64, i64* %5, align 8
  %70 = call i64 @NT_SUCCESS(i64 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %191

72:                                               ; preds = %64
  %73 = call i32 @MD5Init(%struct.TYPE_12__* %18)
  %74 = call i32 @MD5Update(%struct.TYPE_12__* %18, i64* %16, i32 8)
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %6, i32 0, i32 8
  %76 = load i64*, i64** %75, align 8
  %77 = call i32 @MD5Update(%struct.TYPE_12__* %18, i64* %76, i32 8)
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 8
  %79 = load i64*, i64** %78, align 8
  %80 = call i32 @MD5Update(%struct.TYPE_12__* %18, i64* %79, i32 8)
  %81 = call i32 @MD5Final(%struct.TYPE_12__* %18)
  %82 = load i32, i32* @CALG_MD5, align 4
  %83 = mul nuw i64 4, %30
  %84 = trunc i64 %83 to i32
  %85 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = mul nuw i64 4, %34
  %88 = trunc i64 %87 to i32
  %89 = call i64 @kull_m_crypto_hmac(i32 %82, i32* %32, i32 %84, i32 %86, i32 4, i32* %35, i32 %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %190

91:                                               ; preds = %72
  %92 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %6, i32 0, i32 8
  %93 = load i64*, i64** %92, align 8
  %94 = ptrtoint i64* %93 to i32
  %95 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 8
  %96 = load i64*, i64** %95, align 8
  %97 = ptrtoint i64* %96 to i32
  %98 = call i32 @kuhl_m_lsadump_netsync_NlComputeCredentials(i32 %94, i32 %97, i32* %35)
  %99 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 8
  %100 = load i64*, i64** %99, align 8
  %101 = ptrtoint i64* %100 to i32
  %102 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 8
  %103 = load i64*, i64** %102, align 8
  %104 = ptrtoint i64* %103 to i32
  %105 = call i32 @kuhl_m_lsadump_netsync_NlComputeCredentials(i32 %101, i32 %104, i32* %35)
  %106 = load i32*, i32** %23, align 8
  %107 = ptrtoint i32* %106 to i32
  %108 = load i32*, i32** %25, align 8
  %109 = load i32, i32* @ServerSecureChannel, align 4
  %110 = load i32*, i32** %24, align 8
  %111 = call i64 @I_NetServerAuthenticate2(i32 %107, i32* %108, i32 %109, i32* %110, %struct.TYPE_11__* %9, %struct.TYPE_11__* %10, i64* %17)
  store i64 %111, i64* %5, align 8
  %112 = load i64, i64* %5, align 8
  %113 = call i64 @NT_SUCCESS(i64 %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %186

115:                                              ; preds = %91
  %116 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 8
  %117 = load i64*, i64** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 8
  %119 = load i64*, i64** %118, align 8
  %120 = call i64 @RtlEqualMemory(i64* %117, i64* %119, i32 8)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %183

122:                                              ; preds = %115
  %123 = load i64, i64* @STATUS_NO_SUCH_USER, align 8
  store i64 %123, i64* %5, align 8
  store i64 0, i64* %16, align 8
  br label %124

124:                                              ; preds = %172, %122
  %125 = load i64, i64* %5, align 8
  %126 = load i64, i64* @STATUS_NO_SUCH_USER, align 8
  %127 = icmp eq i64 %125, %126
  br i1 %127, label %128, label %133

128:                                              ; preds = %124
  %129 = load i64, i64* %16, align 8
  %130 = load i32*, i32** @kuhl_m_lsadump_netsync_sc, align 8
  %131 = call i64 @ARRAYSIZE(i32* %130)
  %132 = icmp ult i64 %129, %131
  br label %133

133:                                              ; preds = %128, %124
  %134 = phi i1 [ false, %124 ], [ %132, %128 ]
  br i1 %134, label %135, label %175

135:                                              ; preds = %133
  %136 = call i32 @kuhl_m_lsadump_netsync_AddTimeStampForAuthenticator(%struct.TYPE_11__* %9, i32 16, i32* %11, i32* %35)
  %137 = load i32*, i32** %23, align 8
  %138 = ptrtoint i32* %137 to i32
  %139 = load i32*, i32** %27, align 8
  %140 = load i32*, i32** @kuhl_m_lsadump_netsync_sc, align 8
  %141 = load i64, i64* %16, align 8
  %142 = getelementptr inbounds i32, i32* %140, i64 %141
  %143 = load i32, i32* %142, align 4
  %144 = load i32*, i32** %24, align 8
  %145 = call i64 @I_NetServerTrustPasswordsGet(i32 %138, i32* %139, i32 %143, i32* %144, i32* %11, i32* %12, i32* %19, i32* %20)
  store i64 %145, i64* %5, align 8
  %146 = load i64, i64* %5, align 8
  %147 = call i64 @NT_SUCCESS(i64 %146)
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %166

149:                                              ; preds = %135
  %150 = load i32*, i32** %27, align 8
  %151 = call i32 (i8*, ...) @kprintf(i8* bitcast ([15 x i32]* @.str.5 to i8*), i32* %150)
  %152 = ptrtoint i32* %19 to i32
  %153 = ptrtoint i32* %21 to i32
  %154 = call i32 @RtlDecryptDES2blocks2keys(i32 %152, i32* %35, i32 %153)
  %155 = ptrtoint i32* %20 to i32
  %156 = ptrtoint i32* %22 to i32
  %157 = call i32 @RtlDecryptDES2blocks2keys(i32 %155, i32* %35, i32 %156)
  %158 = call i32 (i8*, ...) @kprintf(i8* bitcast ([12 x i32]* @.str.6 to i8*))
  %159 = load i32, i32* @LM_NTLM_HASH_LENGTH, align 4
  %160 = call i32 @kull_m_string_wprintf_hex(i32* %21, i32 %159, i32 0)
  %161 = call i32 (i8*, ...) @kprintf(i8* bitcast ([2 x i32]* @.str.7 to i8*))
  %162 = call i32 (i8*, ...) @kprintf(i8* bitcast ([12 x i32]* @.str.8 to i8*))
  %163 = load i32, i32* @LM_NTLM_HASH_LENGTH, align 4
  %164 = call i32 @kull_m_string_wprintf_hex(i32* %22, i32 %163, i32 0)
  %165 = call i32 (i8*, ...) @kprintf(i8* bitcast ([2 x i32]* @.str.7 to i8*))
  br label %166

166:                                              ; preds = %149, %135
  %167 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 8
  %168 = load i64*, i64** %167, align 8
  %169 = bitcast i64* %168 to i32*
  %170 = load i32, i32* %169, align 4
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %169, align 4
  br label %172

172:                                              ; preds = %166
  %173 = load i64, i64* %16, align 8
  %174 = add i64 %173, 1
  store i64 %174, i64* %16, align 8
  br label %124

175:                                              ; preds = %133
  %176 = load i64, i64* %5, align 8
  %177 = call i64 @NT_SUCCESS(i64 %176)
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %182, label %179

179:                                              ; preds = %175
  %180 = load i64, i64* %5, align 8
  %181 = call i32 (i8*, ...) @PRINT_ERROR(i8* bitcast ([39 x i32]* @.str.9 to i8*), i64 %180)
  br label %182

182:                                              ; preds = %179, %175
  br label %185

183:                                              ; preds = %115
  %184 = call i32 (i8*, ...) @PRINT_ERROR(i8* bitcast ([59 x i32]* @.str.10 to i8*))
  br label %185

185:                                              ; preds = %183, %182
  br label %189

186:                                              ; preds = %91
  %187 = load i64, i64* %5, align 8
  %188 = call i32 (i8*, ...) @PRINT_ERROR(i8* bitcast ([35 x i32]* @.str.11 to i8*), i64 %187)
  br label %189

189:                                              ; preds = %186, %185
  br label %190

190:                                              ; preds = %189, %72
  br label %194

191:                                              ; preds = %64
  %192 = load i64, i64* %5, align 8
  %193 = call i32 (i8*, ...) @PRINT_ERROR(i8* bitcast ([34 x i32]* @.str.12 to i8*), i64 %192)
  br label %194

194:                                              ; preds = %191, %190
  br label %197

195:                                              ; preds = %58
  %196 = call i32 (i8*, ...) @PRINT_ERROR(i8* bitcast ([48 x i32]* @.str.13 to i8*))
  br label %197

197:                                              ; preds = %195, %194
  br label %200

198:                                              ; preds = %45
  %199 = call i32 (i8*, ...) @PRINT_ERROR(i8* bitcast ([25 x i32]* @.str.14 to i8*))
  br label %200

200:                                              ; preds = %198, %197
  br label %203

201:                                              ; preds = %40
  %202 = call i32 (i8*, ...) @PRINT_ERROR(i8* bitcast ([25 x i32]* @.str.15 to i8*))
  br label %203

203:                                              ; preds = %201, %200
  br label %206

204:                                              ; preds = %2
  %205 = call i32 (i8*, ...) @PRINT_ERROR(i8* bitcast ([23 x i32]* @.str.16 to i8*))
  br label %206

206:                                              ; preds = %204, %203
  %207 = load i64, i64* @STATUS_SUCCESS, align 8
  %208 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %208)
  ret i64 %207
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i64 @kull_m_string_args_byName(i32, i32**, i8*, i32**, i32*) #3

declare dso_local i64 @kull_m_string_stringToHex(i32*, i32*, i32) #3

declare dso_local i64 @I_NetServerReqChallenge(i32, i32*, %struct.TYPE_11__*, %struct.TYPE_11__*) #3

declare dso_local i64 @NT_SUCCESS(i64) #3

declare dso_local i32 @MD5Init(%struct.TYPE_12__*) #3

declare dso_local i32 @MD5Update(%struct.TYPE_12__*, i64*, i32) #3

declare dso_local i32 @MD5Final(%struct.TYPE_12__*) #3

declare dso_local i64 @kull_m_crypto_hmac(i32, i32*, i32, i32, i32, i32*, i32) #3

declare dso_local i32 @kuhl_m_lsadump_netsync_NlComputeCredentials(i32, i32, i32*) #3

declare dso_local i64 @I_NetServerAuthenticate2(i32, i32*, i32, i32*, %struct.TYPE_11__*, %struct.TYPE_11__*, i64*) #3

declare dso_local i64 @RtlEqualMemory(i64*, i64*, i32) #3

declare dso_local i64 @ARRAYSIZE(i32*) #3

declare dso_local i32 @kuhl_m_lsadump_netsync_AddTimeStampForAuthenticator(%struct.TYPE_11__*, i32, i32*, i32*) #3

declare dso_local i64 @I_NetServerTrustPasswordsGet(i32, i32*, i32, i32*, i32*, i32*, i32*, i32*) #3

declare dso_local i32 @kprintf(i8*, ...) #3

declare dso_local i32 @RtlDecryptDES2blocks2keys(i32, i32*, i32) #3

declare dso_local i32 @kull_m_string_wprintf_hex(i32*, i32, i32) #3

declare dso_local i32 @PRINT_ERROR(i8*, ...) #3

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { nounwind }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
