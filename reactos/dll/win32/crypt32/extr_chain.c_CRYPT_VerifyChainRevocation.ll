; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/crypt32/extr_chain.c_CRYPT_VerifyChainRevocation.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/crypt32/extr_chain.c_CRYPT_VerifyChainRevocation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i32, i32, i32 }
%struct.TYPE_21__ = type { i32, %struct.TYPE_19__, %struct.TYPE_17__** }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_17__ = type { i32, %struct.TYPE_16__** }
%struct.TYPE_16__ = type { i32* }
%struct.TYPE_24__ = type { i32, i32, i32, i32 }
%struct.TYPE_23__ = type { i32, i32, i32*, i32, i32, i32, i64, i64*, i32, i32 }
%struct.TYPE_20__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32 }

@CERT_CHAIN_REVOCATION_CHECK_END_CERT = common dso_local global i32 0, align 4
@CERT_CHAIN_REVOCATION_CHECK_CHAIN = common dso_local global i32 0, align 4
@CERT_CHAIN_REVOCATION_CHECK_CHAIN_EXCLUDE_ROOT = common dso_local global i32 0, align 4
@__const.CRYPT_VerifyChainRevocation.revocationStatus = private unnamed_addr constant %struct.TYPE_22__ { i32 12, i32 0, i32 0 }, align 4
@CERT_VERIFY_REV_CHAIN_FLAG = common dso_local global i32 0, align 4
@CERT_CHAIN_REVOCATION_CHECK_CACHE_ONLY = common dso_local global i32 0, align 4
@CERT_VERIFY_CACHE_ONLY_BASED_REVOCATION = common dso_local global i32 0, align 4
@CERT_CHAIN_REVOCATION_ACCUMULATIVE_TIMEOUT = common dso_local global i32 0, align 4
@CERT_VERIFY_REV_ACCUMULATIVE_TIMEOUT_FLAG = common dso_local global i32 0, align 4
@X509_ASN_ENCODING = common dso_local global i32 0, align 4
@CERT_CONTEXT_REVOCATION_TYPE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@CERT_TRUST_REVOCATION_STATUS_UNKNOWN = common dso_local global i32 0, align 4
@CERT_TRUST_IS_OFFLINE_REVOCATION = common dso_local global i32 0, align 4
@CERT_TRUST_IS_REVOKED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"unmapped error %08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_21__*, i32, i64, %struct.TYPE_24__*, i32)* @CRYPT_VerifyChainRevocation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CRYPT_VerifyChainRevocation(%struct.TYPE_21__* %0, i32 %1, i64 %2, %struct.TYPE_24__* %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_21__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_24__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_23__, align 8
  %18 = alloca %struct.TYPE_22__, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
  %21 = alloca %struct.TYPE_20__*, align 8
  %22 = alloca i32, align 4
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store %struct.TYPE_24__* %3, %struct.TYPE_24__** %9, align 8
  store i32 %4, i32* %10, align 4
  %23 = load i32, i32* %10, align 4
  %24 = load i32, i32* @CERT_CHAIN_REVOCATION_CHECK_END_CERT, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %5
  store i32 1, i32* %11, align 4
  br label %89

28:                                               ; preds = %5
  %29 = load i32, i32* %10, align 4
  %30 = load i32, i32* @CERT_CHAIN_REVOCATION_CHECK_CHAIN, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %38, label %33

33:                                               ; preds = %28
  %34 = load i32, i32* %10, align 4
  %35 = load i32, i32* @CERT_CHAIN_REVOCATION_CHECK_CHAIN_EXCLUDE_ROOT, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %87

38:                                               ; preds = %33, %28
  store i32 0, i32* %12, align 4
  store i32 0, i32* %11, align 4
  br label %39

39:                                               ; preds = %83, %38
  %40 = load i32, i32* %12, align 4
  %41 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp slt i32 %40, %43
  br i1 %44, label %45, label %86

45:                                               ; preds = %39
  %46 = load i32, i32* %12, align 4
  %47 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = sub nsw i32 %49, 1
  %51 = icmp slt i32 %46, %50
  br i1 %51, label %57, label %52

52:                                               ; preds = %45
  %53 = load i32, i32* %10, align 4
  %54 = load i32, i32* @CERT_CHAIN_REVOCATION_CHECK_CHAIN, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %69

57:                                               ; preds = %52, %45
  %58 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %58, i32 0, i32 2
  %60 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %59, align 8
  %61 = load i32, i32* %12, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %60, i64 %62
  %64 = load %struct.TYPE_17__*, %struct.TYPE_17__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* %11, align 4
  %68 = add nsw i32 %67, %66
  store i32 %68, i32* %11, align 4
  br label %82

69:                                               ; preds = %52
  %70 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %70, i32 0, i32 2
  %72 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %71, align 8
  %73 = load i32, i32* %12, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %72, i64 %74
  %76 = load %struct.TYPE_17__*, %struct.TYPE_17__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = sub nsw i32 %78, 1
  %80 = load i32, i32* %11, align 4
  %81 = add nsw i32 %80, %79
  store i32 %81, i32* %11, align 4
  br label %82

82:                                               ; preds = %69, %57
  br label %83

83:                                               ; preds = %82
  %84 = load i32, i32* %12, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %12, align 4
  br label %39

86:                                               ; preds = %39
  br label %88

87:                                               ; preds = %33
  store i32 0, i32* %11, align 4
  br label %88

88:                                               ; preds = %87, %86
  br label %89

89:                                               ; preds = %88, %27
  %90 = load i32, i32* %11, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %296

92:                                               ; preds = %89
  %93 = bitcast %struct.TYPE_23__* %17 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %93, i8 0, i64 56, i1 false)
  %94 = bitcast i8* %93 to %struct.TYPE_23__*
  %95 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %94, i32 0, i32 0
  store i32 56, i32* %95, align 8
  %96 = bitcast %struct.TYPE_22__* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %96, i8* align 4 bitcast (%struct.TYPE_22__* @__const.CRYPT_VerifyChainRevocation.revocationStatus to i8*), i64 12, i1 false)
  %97 = load i32, i32* @CERT_VERIFY_REV_CHAIN_FLAG, align 4
  store i32 %97, i32* %16, align 4
  %98 = load i32, i32* %10, align 4
  %99 = load i32, i32* @CERT_CHAIN_REVOCATION_CHECK_CACHE_ONLY, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %106

102:                                              ; preds = %92
  %103 = load i32, i32* @CERT_VERIFY_CACHE_ONLY_BASED_REVOCATION, align 4
  %104 = load i32, i32* %16, align 4
  %105 = or i32 %104, %103
  store i32 %105, i32* %16, align 4
  br label %106

106:                                              ; preds = %102, %92
  %107 = load i32, i32* %10, align 4
  %108 = load i32, i32* @CERT_CHAIN_REVOCATION_ACCUMULATIVE_TIMEOUT, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %115

111:                                              ; preds = %106
  %112 = load i32, i32* @CERT_VERIFY_REV_ACCUMULATIVE_TIMEOUT_FLAG, align 4
  %113 = load i32, i32* %16, align 4
  %114 = or i32 %113, %112
  store i32 %114, i32* %16, align 4
  br label %115

115:                                              ; preds = %111, %106
  %116 = load i32, i32* %7, align 4
  %117 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %17, i32 0, i32 8
  store i32 %116, i32* %117, align 8
  %118 = load i64, i64* %8, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %125

120:                                              ; preds = %115
  %121 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %17, i32 0, i32 1
  store i32 1, i32* %121, align 4
  %122 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %17, i32 0, i32 7
  store i64* %8, i64** %122, align 8
  %123 = load i64, i64* %8, align 8
  %124 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %17, i32 0, i32 6
  store i64 %123, i64* %124, align 8
  br label %125

125:                                              ; preds = %120, %115
  %126 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %127 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = sext i32 %128 to i64
  %130 = icmp eq i64 %129, 16
  br i1 %130, label %131, label %144

131:                                              ; preds = %125
  %132 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %133 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %132, i32 0, i32 3
  %134 = load i32, i32* %133, align 4
  %135 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %17, i32 0, i32 5
  store i32 %134, i32* %135, align 8
  %136 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %137 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 4
  %139 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %17, i32 0, i32 4
  store i32 %138, i32* %139, align 4
  %140 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %141 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %17, i32 0, i32 3
  store i32 %142, i32* %143, align 8
  br label %144

144:                                              ; preds = %131, %125
  store i32 0, i32* %13, align 4
  store i32 0, i32* %15, align 4
  br label %145

145:                                              ; preds = %292, %144
  %146 = load i32, i32* %15, align 4
  %147 = load i32, i32* %11, align 4
  %148 = icmp slt i32 %146, %147
  br i1 %148, label %149, label %155

149:                                              ; preds = %145
  %150 = load i32, i32* %13, align 4
  %151 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %152 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = icmp slt i32 %150, %153
  br label %155

155:                                              ; preds = %149, %145
  %156 = phi i1 [ false, %145 ], [ %154, %149 ]
  br i1 %156, label %157, label %295

157:                                              ; preds = %155
  store i32 0, i32* %14, align 4
  br label %158

158:                                              ; preds = %286, %157
  %159 = load i32, i32* %15, align 4
  %160 = load i32, i32* %11, align 4
  %161 = icmp slt i32 %159, %160
  br i1 %161, label %162, label %174

162:                                              ; preds = %158
  %163 = load i32, i32* %14, align 4
  %164 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %165 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %164, i32 0, i32 2
  %166 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %165, align 8
  %167 = load i32, i32* %13, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %166, i64 %168
  %170 = load %struct.TYPE_17__*, %struct.TYPE_17__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = icmp slt i32 %163, %172
  br label %174

174:                                              ; preds = %162, %158
  %175 = phi i1 [ false, %158 ], [ %173, %162 ]
  br i1 %175, label %176, label %291

176:                                              ; preds = %174
  %177 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %178 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %177, i32 0, i32 2
  %179 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %178, align 8
  %180 = load i32, i32* %13, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %179, i64 %181
  %183 = load %struct.TYPE_17__*, %struct.TYPE_17__** %182, align 8
  %184 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %183, i32 0, i32 1
  %185 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %184, align 8
  %186 = load i32, i32* %14, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %185, i64 %187
  %189 = load %struct.TYPE_16__*, %struct.TYPE_16__** %188, align 8
  %190 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %189, i32 0, i32 0
  %191 = load i32*, i32** %190, align 8
  store i32* %191, i32** %20, align 8
  %192 = load i32, i32* %14, align 4
  %193 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %194 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %193, i32 0, i32 2
  %195 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %194, align 8
  %196 = load i32, i32* %13, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %195, i64 %197
  %199 = load %struct.TYPE_17__*, %struct.TYPE_17__** %198, align 8
  %200 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 8
  %202 = sub nsw i32 %201, 1
  %203 = icmp slt i32 %192, %202
  br i1 %203, label %204, label %222

204:                                              ; preds = %176
  %205 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %206 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %205, i32 0, i32 2
  %207 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %206, align 8
  %208 = load i32, i32* %13, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %207, i64 %209
  %211 = load %struct.TYPE_17__*, %struct.TYPE_17__** %210, align 8
  %212 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %211, i32 0, i32 1
  %213 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %212, align 8
  %214 = load i32, i32* %14, align 4
  %215 = add nsw i32 %214, 1
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %213, i64 %216
  %218 = load %struct.TYPE_16__*, %struct.TYPE_16__** %217, align 8
  %219 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %218, i32 0, i32 0
  %220 = load i32*, i32** %219, align 8
  %221 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %17, i32 0, i32 2
  store i32* %220, i32** %221, align 8
  br label %224

222:                                              ; preds = %176
  %223 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %17, i32 0, i32 2
  store i32* null, i32** %223, align 8
  br label %224

224:                                              ; preds = %222, %204
  %225 = load i32, i32* @X509_ASN_ENCODING, align 4
  %226 = load i32, i32* @CERT_CONTEXT_REVOCATION_TYPE, align 4
  %227 = bitcast i32** %20 to i8**
  %228 = load i32, i32* %16, align 4
  %229 = call i32 @CertVerifyRevocation(i32 %225, i32 %226, i32 1, i8** %227, i32 %228, %struct.TYPE_23__* %17, %struct.TYPE_22__* %18)
  store i32 %229, i32* %19, align 4
  %230 = load i32, i32* %19, align 4
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %247, label %232

232:                                              ; preds = %224
  %233 = load i32, i32* %10, align 4
  %234 = load i32, i32* @CERT_CHAIN_REVOCATION_CHECK_CHAIN, align 4
  %235 = and i32 %233, %234
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %237, label %247

237:                                              ; preds = %232
  %238 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %18, i32 0, i32 1
  %239 = load i32, i32* %238, align 4
  %240 = icmp eq i32 %239, 131
  br i1 %240, label %241, label %247

241:                                              ; preds = %237
  %242 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %17, i32 0, i32 2
  %243 = load i32*, i32** %242, align 8
  %244 = icmp eq i32* %243, null
  br i1 %244, label %245, label %247

245:                                              ; preds = %241
  %246 = load i32, i32* @TRUE, align 4
  store i32 %246, i32* %19, align 4
  br label %247

247:                                              ; preds = %245, %241, %237, %232, %224
  %248 = load i32, i32* %19, align 4
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %285, label %250

250:                                              ; preds = %247
  %251 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %252 = load i32, i32* %15, align 4
  %253 = call %struct.TYPE_20__* @CRYPT_FindIthElementInChain(%struct.TYPE_21__* %251, i32 %252)
  store %struct.TYPE_20__* %253, %struct.TYPE_20__** %21, align 8
  %254 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %18, i32 0, i32 1
  %255 = load i32, i32* %254, align 4
  switch i32 %255, label %264 [
    i32 131, label %256
    i32 130, label %256
    i32 132, label %256
    i32 129, label %260
    i32 128, label %262
  ]

256:                                              ; preds = %250, %250, %250
  %257 = load i32, i32* @CERT_TRUST_REVOCATION_STATUS_UNKNOWN, align 4
  %258 = load i32, i32* @CERT_TRUST_IS_OFFLINE_REVOCATION, align 4
  %259 = or i32 %257, %258
  store i32 %259, i32* %22, align 4
  br label %268

260:                                              ; preds = %250
  %261 = load i32, i32* @CERT_TRUST_IS_OFFLINE_REVOCATION, align 4
  store i32 %261, i32* %22, align 4
  br label %268

262:                                              ; preds = %250
  %263 = load i32, i32* @CERT_TRUST_IS_REVOKED, align 4
  store i32 %263, i32* %22, align 4
  br label %268

264:                                              ; preds = %250
  %265 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %18, i32 0, i32 1
  %266 = load i32, i32* %265, align 4
  %267 = call i32 @WARN(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %266)
  store i32 0, i32* %22, align 4
  br label %268

268:                                              ; preds = %264, %262, %260, %256
  %269 = load %struct.TYPE_20__*, %struct.TYPE_20__** %21, align 8
  %270 = icmp ne %struct.TYPE_20__* %269, null
  br i1 %270, label %271, label %278

271:                                              ; preds = %268
  %272 = load i32, i32* %22, align 4
  %273 = load %struct.TYPE_20__*, %struct.TYPE_20__** %21, align 8
  %274 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %273, i32 0, i32 0
  %275 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %274, i32 0, i32 0
  %276 = load i32, i32* %275, align 4
  %277 = or i32 %276, %272
  store i32 %277, i32* %275, align 4
  br label %278

278:                                              ; preds = %271, %268
  %279 = load i32, i32* %22, align 4
  %280 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %281 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %280, i32 0, i32 1
  %282 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %281, i32 0, i32 0
  %283 = load i32, i32* %282, align 4
  %284 = or i32 %283, %279
  store i32 %284, i32* %282, align 4
  br label %285

285:                                              ; preds = %278, %247
  br label %286

286:                                              ; preds = %285
  %287 = load i32, i32* %14, align 4
  %288 = add nsw i32 %287, 1
  store i32 %288, i32* %14, align 4
  %289 = load i32, i32* %15, align 4
  %290 = add nsw i32 %289, 1
  store i32 %290, i32* %15, align 4
  br label %158

291:                                              ; preds = %174
  br label %292

292:                                              ; preds = %291
  %293 = load i32, i32* %13, align 4
  %294 = add nsw i32 %293, 1
  store i32 %294, i32* %13, align 4
  br label %145

295:                                              ; preds = %155
  br label %296

296:                                              ; preds = %295, %89
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @CertVerifyRevocation(i32, i32, i32, i8**, i32, %struct.TYPE_23__*, %struct.TYPE_22__*) #2

declare dso_local %struct.TYPE_20__* @CRYPT_FindIthElementInChain(%struct.TYPE_21__*, i32) #2

declare dso_local i32 @WARN(i8*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
