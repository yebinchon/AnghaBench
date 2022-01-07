; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/crypt32/extr_msg.c_CSignedEncodeMsg_Open.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/crypt32/extr_msg.c_CSignedEncodeMsg_Open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { %struct.TYPE_17__, %struct.TYPE_18__, i32* }
%struct.TYPE_17__ = type { %struct.TYPE_22__*, i64, i32* }
%struct.TYPE_22__ = type { i32, i32, i32, i32, i32, i32*, %struct.TYPE_22__*, i32 }
%struct.TYPE_18__ = type { i32*, i64 }
%struct.TYPE_21__ = type { i32, i64, i32, i32, i32, i32, %struct.TYPE_16__*, i64 }
%struct.TYPE_16__ = type { i32, i32, %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i64 }

@E_INVALIDARG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"CMSG_SIGNED_ENCODE_INFO with CMS fields unsupported\0A\00", align 1
@TRUE = common dso_local global i64 0, align 8
@CSignedEncodeMsg_GetParam = common dso_local global i32 0, align 4
@CSignedEncodeMsg_Update = common dso_local global i32 0, align 4
@CRYPT_DefaultMsgControl = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@CMSG_SIGNED_DATA_V1 = common dso_local global i32 0, align 4
@CERT_ID_KEY_IDENTIFIER = common dso_local global i64 0, align 8
@CMSG_SIGNED_DATA_V3 = common dso_local global i32 0, align 4
@CMSG_CRYPT_RELEASE_CONTEXT_FLAG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_20__* (i64, i8*, i32, i32)* @CSignedEncodeMsg_Open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_20__* @CSignedEncodeMsg_Open(i64 %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_20__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_21__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_20__*, align 8
  %13 = alloca i64, align 8
  store i64 %0, i64* %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load i8*, i8** %7, align 8
  %15 = bitcast i8* %14 to %struct.TYPE_21__*
  store %struct.TYPE_21__* %15, %struct.TYPE_21__** %10, align 8
  %16 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %17 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = sext i32 %18 to i64
  %20 = icmp ne i64 %19, 4
  br i1 %20, label %21, label %30

21:                                               ; preds = %4
  %22 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %23 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = sext i32 %24 to i64
  %26 = icmp ne i64 %25, 48
  br i1 %26, label %27, label %30

27:                                               ; preds = %21
  %28 = load i32, i32* @E_INVALIDARG, align 4
  %29 = call i32 @SetLastError(i32 %28)
  store %struct.TYPE_20__* null, %struct.TYPE_20__** %5, align 8
  br label %386

30:                                               ; preds = %21, %4
  %31 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %32 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = sext i32 %33 to i64
  %35 = icmp eq i64 %34, 48
  br i1 %35, label %36, label %43

36:                                               ; preds = %30
  %37 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %38 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %37, i32 0, i32 7
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %36
  %42 = call i32 @FIXME(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_20__* null, %struct.TYPE_20__** %5, align 8
  br label %386

43:                                               ; preds = %36, %30
  store i64 0, i64* %11, align 8
  br label %44

44:                                               ; preds = %60, %43
  %45 = load i64, i64* %11, align 8
  %46 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %47 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = icmp ult i64 %45, %48
  br i1 %49, label %50, label %63

50:                                               ; preds = %44
  %51 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %52 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %51, i32 0, i32 6
  %53 = load %struct.TYPE_16__*, %struct.TYPE_16__** %52, align 8
  %54 = load i64, i64* %11, align 8
  %55 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %53, i64 %54
  %56 = call i32 @CRYPT_IsValidSigner(%struct.TYPE_16__* %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %50
  store %struct.TYPE_20__* null, %struct.TYPE_20__** %5, align 8
  br label %386

59:                                               ; preds = %50
  br label %60

60:                                               ; preds = %59
  %61 = load i64, i64* %11, align 8
  %62 = add i64 %61, 1
  store i64 %62, i64* %11, align 8
  br label %44

63:                                               ; preds = %44
  %64 = call i8* @CryptMemAlloc(i32 48)
  %65 = bitcast i8* %64 to %struct.TYPE_20__*
  store %struct.TYPE_20__* %65, %struct.TYPE_20__** %12, align 8
  %66 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %67 = icmp ne %struct.TYPE_20__* %66, null
  br i1 %67, label %68, label %384

68:                                               ; preds = %63
  %69 = load i64, i64* @TRUE, align 8
  store i64 %69, i64* %13, align 8
  %70 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %71 = bitcast %struct.TYPE_20__* %70 to i32*
  %72 = load i64, i64* %6, align 8
  %73 = load i32, i32* %9, align 4
  %74 = load i32, i32* @CSignedEncodeMsg_GetParam, align 4
  %75 = load i32, i32* @CSignedEncodeMsg_Update, align 4
  %76 = load i32, i32* @CRYPT_DefaultMsgControl, align 4
  %77 = call i32 @CryptMsgBase_Init(i32* %71, i64 %72, i32 %73, i32 (%struct.TYPE_20__*)* @CSignedEncodeMsg_Close, i32 %74, i32 %75, i32 %76)
  %78 = load i32, i32* %8, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %101

80:                                               ; preds = %68
  %81 = load i32, i32* %8, align 4
  %82 = call i32 @strlen(i32 %81)
  %83 = add nsw i32 %82, 1
  %84 = call i8* @CryptMemAlloc(i32 %83)
  %85 = bitcast i8* %84 to i32*
  %86 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %87 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %86, i32 0, i32 2
  store i32* %85, i32** %87, align 8
  %88 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %89 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %88, i32 0, i32 2
  %90 = load i32*, i32** %89, align 8
  %91 = icmp ne i32* %90, null
  br i1 %91, label %92, label %98

92:                                               ; preds = %80
  %93 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %94 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %93, i32 0, i32 2
  %95 = load i32*, i32** %94, align 8
  %96 = load i32, i32* %8, align 4
  %97 = call i32 @strcpy(i32* %95, i32 %96)
  br label %100

98:                                               ; preds = %80
  %99 = load i64, i64* @FALSE, align 8
  store i64 %99, i64* %13, align 8
  br label %100

100:                                              ; preds = %98, %92
  br label %104

101:                                              ; preds = %68
  %102 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %103 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %102, i32 0, i32 2
  store i32* null, i32** %103, align 8
  br label %104

104:                                              ; preds = %101, %100
  %105 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %106 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %106, i32 0, i32 1
  store i64 0, i64* %107, align 8
  %108 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %109 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %109, i32 0, i32 0
  store i32* null, i32** %110, align 8
  %111 = load i64, i64* %13, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %119

113:                                              ; preds = %104
  %114 = call i8* @CryptMemAlloc(i32 4)
  %115 = bitcast i8* %114 to %struct.TYPE_22__*
  %116 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %117 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %117, i32 0, i32 0
  store %struct.TYPE_22__* %115, %struct.TYPE_22__** %118, align 8
  br label %123

119:                                              ; preds = %104
  %120 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %121 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %121, i32 0, i32 0
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %122, align 8
  br label %123

123:                                              ; preds = %119, %113
  %124 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %125 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %125, i32 0, i32 0
  %127 = load %struct.TYPE_22__*, %struct.TYPE_22__** %126, align 8
  %128 = icmp ne %struct.TYPE_22__* %127, null
  br i1 %128, label %129, label %141

129:                                              ; preds = %123
  %130 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %131 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %131, i32 0, i32 0
  %133 = load %struct.TYPE_22__*, %struct.TYPE_22__** %132, align 8
  %134 = call i32 @memset(%struct.TYPE_22__* %133, i32 0, i32 4)
  %135 = load i32, i32* @CMSG_SIGNED_DATA_V1, align 4
  %136 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %137 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %137, i32 0, i32 0
  %139 = load %struct.TYPE_22__*, %struct.TYPE_22__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %139, i32 0, i32 7
  store i32 %135, i32* %140, align 8
  br label %143

141:                                              ; preds = %123
  %142 = load i64, i64* @FALSE, align 8
  store i64 %142, i64* %13, align 8
  br label %143

143:                                              ; preds = %141, %129
  %144 = load i64, i64* %13, align 8
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %333

146:                                              ; preds = %143
  %147 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %148 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %147, i32 0, i32 1
  %149 = load i64, i64* %148, align 8
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %320

151:                                              ; preds = %146
  %152 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %153 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %152, i32 0, i32 1
  %154 = load i64, i64* %153, align 8
  %155 = mul i64 %154, 4
  %156 = trunc i64 %155 to i32
  %157 = call i8* @CryptMemAlloc(i32 %156)
  %158 = bitcast i8* %157 to %struct.TYPE_22__*
  %159 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %160 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %160, i32 0, i32 0
  %162 = load %struct.TYPE_22__*, %struct.TYPE_22__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %162, i32 0, i32 6
  store %struct.TYPE_22__* %158, %struct.TYPE_22__** %163, align 8
  %164 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %165 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %165, i32 0, i32 0
  %167 = load %struct.TYPE_22__*, %struct.TYPE_22__** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %167, i32 0, i32 6
  %169 = load %struct.TYPE_22__*, %struct.TYPE_22__** %168, align 8
  %170 = icmp ne %struct.TYPE_22__* %169, null
  br i1 %170, label %171, label %317

171:                                              ; preds = %151
  %172 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %173 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %172, i32 0, i32 1
  %174 = load i64, i64* %173, align 8
  %175 = trunc i64 %174 to i32
  %176 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %177 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %177, i32 0, i32 0
  %179 = load %struct.TYPE_22__*, %struct.TYPE_22__** %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %179, i32 0, i32 0
  store i32 %175, i32* %180, align 8
  %181 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %182 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %181, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %182, i32 0, i32 0
  %184 = load %struct.TYPE_22__*, %struct.TYPE_22__** %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %184, i32 0, i32 6
  %186 = load %struct.TYPE_22__*, %struct.TYPE_22__** %185, align 8
  %187 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %188 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %187, i32 0, i32 0
  %189 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %188, i32 0, i32 0
  %190 = load %struct.TYPE_22__*, %struct.TYPE_22__** %189, align 8
  %191 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 8
  %193 = sext i32 %192 to i64
  %194 = mul i64 %193, 4
  %195 = trunc i64 %194 to i32
  %196 = call i32 @memset(%struct.TYPE_22__* %186, i32 0, i32 %195)
  %197 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %198 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %197, i32 0, i32 0
  %199 = call i64 @CSignedMsgData_AllocateHandles(%struct.TYPE_17__* %198)
  store i64 %199, i64* %13, align 8
  %200 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %201 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %200, i32 0, i32 1
  %202 = load i64, i64* %201, align 8
  %203 = mul i64 %202, 8
  %204 = trunc i64 %203 to i32
  %205 = call i8* @CryptMemAlloc(i32 %204)
  %206 = bitcast i8* %205 to i32*
  %207 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %208 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %207, i32 0, i32 0
  %209 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %208, i32 0, i32 0
  %210 = load %struct.TYPE_22__*, %struct.TYPE_22__** %209, align 8
  %211 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %210, i32 0, i32 5
  store i32* %206, i32** %211, align 8
  %212 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %213 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %212, i32 0, i32 0
  %214 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %213, i32 0, i32 0
  %215 = load %struct.TYPE_22__*, %struct.TYPE_22__** %214, align 8
  %216 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %215, i32 0, i32 5
  %217 = load i32*, i32** %216, align 8
  %218 = icmp ne i32* %217, null
  br i1 %218, label %221, label %219

219:                                              ; preds = %171
  %220 = load i64, i64* @FALSE, align 8
  store i64 %220, i64* %13, align 8
  br label %221

221:                                              ; preds = %219, %171
  store i64 0, i64* %11, align 8
  br label %222

222:                                              ; preds = %313, %221
  %223 = load i64, i64* %13, align 8
  %224 = icmp ne i64 %223, 0
  br i1 %224, label %225, label %235

225:                                              ; preds = %222
  %226 = load i64, i64* %11, align 8
  %227 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %228 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %227, i32 0, i32 0
  %229 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %228, i32 0, i32 0
  %230 = load %struct.TYPE_22__*, %struct.TYPE_22__** %229, align 8
  %231 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 8
  %233 = sext i32 %232 to i64
  %234 = icmp ult i64 %226, %233
  br label %235

235:                                              ; preds = %225, %222
  %236 = phi i1 [ false, %222 ], [ %234, %225 ]
  br i1 %236, label %237, label %316

237:                                              ; preds = %235
  %238 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %239 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %238, i32 0, i32 6
  %240 = load %struct.TYPE_16__*, %struct.TYPE_16__** %239, align 8
  %241 = load i64, i64* %11, align 8
  %242 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %240, i64 %241
  %243 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %242, i32 0, i32 2
  %244 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %243, i32 0, i32 0
  %245 = load i64, i64* %244, align 8
  %246 = load i64, i64* @CERT_ID_KEY_IDENTIFIER, align 8
  %247 = icmp eq i64 %245, %246
  br i1 %247, label %248, label %255

248:                                              ; preds = %237
  %249 = load i32, i32* @CMSG_SIGNED_DATA_V3, align 4
  %250 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %251 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %250, i32 0, i32 0
  %252 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %251, i32 0, i32 0
  %253 = load %struct.TYPE_22__*, %struct.TYPE_22__** %252, align 8
  %254 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %253, i32 0, i32 7
  store i32 %249, i32* %254, align 8
  br label %255

255:                                              ; preds = %248, %237
  %256 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %257 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %256, i32 0, i32 0
  %258 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %257, i32 0, i32 0
  %259 = load %struct.TYPE_22__*, %struct.TYPE_22__** %258, align 8
  %260 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %259, i32 0, i32 6
  %261 = load %struct.TYPE_22__*, %struct.TYPE_22__** %260, align 8
  %262 = load i64, i64* %11, align 8
  %263 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %261, i64 %262
  %264 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %265 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %264, i32 0, i32 6
  %266 = load %struct.TYPE_16__*, %struct.TYPE_16__** %265, align 8
  %267 = load i64, i64* %11, align 8
  %268 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %266, i64 %267
  %269 = call i64 @CSignerInfo_Construct(%struct.TYPE_22__* %263, %struct.TYPE_16__* %268)
  store i64 %269, i64* %13, align 8
  %270 = load i64, i64* %13, align 8
  %271 = icmp ne i64 %270, 0
  br i1 %271, label %272, label %297

272:                                              ; preds = %255
  %273 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %274 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %273, i32 0, i32 0
  %275 = load i64, i64* %11, align 8
  %276 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %277 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %276, i32 0, i32 6
  %278 = load %struct.TYPE_16__*, %struct.TYPE_16__** %277, align 8
  %279 = load i64, i64* %11, align 8
  %280 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %278, i64 %279
  %281 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %280, i32 0, i32 1
  %282 = call i64 @CSignedMsgData_ConstructSignerHandles(%struct.TYPE_17__* %274, i64 %275, i32* %281, i64* %6)
  store i64 %282, i64* %13, align 8
  %283 = load i64, i64* %6, align 8
  %284 = load i64, i64* @CMSG_CRYPT_RELEASE_CONTEXT_FLAG, align 8
  %285 = and i64 %283, %284
  %286 = icmp ne i64 %285, 0
  br i1 %286, label %287, label %296

287:                                              ; preds = %272
  %288 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %289 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %288, i32 0, i32 6
  %290 = load %struct.TYPE_16__*, %struct.TYPE_16__** %289, align 8
  %291 = load i64, i64* %11, align 8
  %292 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %290, i64 %291
  %293 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %292, i32 0, i32 1
  %294 = load i32, i32* %293, align 4
  %295 = call i32 @CryptReleaseContext(i32 %294, i32 0)
  br label %296

296:                                              ; preds = %287, %272
  br label %297

297:                                              ; preds = %296, %255
  %298 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %299 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %298, i32 0, i32 6
  %300 = load %struct.TYPE_16__*, %struct.TYPE_16__** %299, align 8
  %301 = load i64, i64* %11, align 8
  %302 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %300, i64 %301
  %303 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %302, i32 0, i32 0
  %304 = load i32, i32* %303, align 8
  %305 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %306 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %305, i32 0, i32 0
  %307 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %306, i32 0, i32 0
  %308 = load %struct.TYPE_22__*, %struct.TYPE_22__** %307, align 8
  %309 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %308, i32 0, i32 5
  %310 = load i32*, i32** %309, align 8
  %311 = load i64, i64* %11, align 8
  %312 = getelementptr inbounds i32, i32* %310, i64 %311
  store i32 %304, i32* %312, align 4
  br label %313

313:                                              ; preds = %297
  %314 = load i64, i64* %11, align 8
  %315 = add i64 %314, 1
  store i64 %315, i64* %11, align 8
  br label %222

316:                                              ; preds = %235
  br label %319

317:                                              ; preds = %151
  %318 = load i64, i64* @FALSE, align 8
  store i64 %318, i64* %13, align 8
  br label %319

319:                                              ; preds = %317, %316
  br label %332

320:                                              ; preds = %146
  %321 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %322 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %321, i32 0, i32 0
  %323 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %322, i32 0, i32 0
  %324 = load %struct.TYPE_22__*, %struct.TYPE_22__** %323, align 8
  %325 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %324, i32 0, i32 0
  store i32 0, i32* %325, align 8
  %326 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %327 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %326, i32 0, i32 0
  %328 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %327, i32 0, i32 2
  store i32* null, i32** %328, align 8
  %329 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %330 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %329, i32 0, i32 0
  %331 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %330, i32 0, i32 1
  store i64 0, i64* %331, align 8
  br label %332

332:                                              ; preds = %320, %319
  br label %333

333:                                              ; preds = %332, %143
  %334 = load i64, i64* %13, align 8
  %335 = icmp ne i64 %334, 0
  br i1 %335, label %336, label %354

336:                                              ; preds = %333
  %337 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %338 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %337, i32 0, i32 0
  %339 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %338, i32 0, i32 0
  %340 = load %struct.TYPE_22__*, %struct.TYPE_22__** %339, align 8
  %341 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %340, i32 0, i32 4
  %342 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %343 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %342, i32 0, i32 0
  %344 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %343, i32 0, i32 0
  %345 = load %struct.TYPE_22__*, %struct.TYPE_22__** %344, align 8
  %346 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %345, i32 0, i32 3
  %347 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %348 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %347, i32 0, i32 5
  %349 = load i32, i32* %348, align 4
  %350 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %351 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %350, i32 0, i32 4
  %352 = load i32, i32* %351, align 8
  %353 = call i64 @CRYPT_ConstructBlobArray(i32* %341, i32* %346, i32 %349, i32 %352)
  store i64 %353, i64* %13, align 8
  br label %354

354:                                              ; preds = %336, %333
  %355 = load i64, i64* %13, align 8
  %356 = icmp ne i64 %355, 0
  br i1 %356, label %357, label %375

357:                                              ; preds = %354
  %358 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %359 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %358, i32 0, i32 0
  %360 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %359, i32 0, i32 0
  %361 = load %struct.TYPE_22__*, %struct.TYPE_22__** %360, align 8
  %362 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %361, i32 0, i32 2
  %363 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %364 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %363, i32 0, i32 0
  %365 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %364, i32 0, i32 0
  %366 = load %struct.TYPE_22__*, %struct.TYPE_22__** %365, align 8
  %367 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %366, i32 0, i32 1
  %368 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %369 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %368, i32 0, i32 3
  %370 = load i32, i32* %369, align 4
  %371 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %372 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %371, i32 0, i32 2
  %373 = load i32, i32* %372, align 8
  %374 = call i64 @CRYPT_ConstructBlobArray(i32* %362, i32* %367, i32 %370, i32 %373)
  store i64 %374, i64* %13, align 8
  br label %375

375:                                              ; preds = %357, %354
  %376 = load i64, i64* %13, align 8
  %377 = icmp ne i64 %376, 0
  br i1 %377, label %383, label %378

378:                                              ; preds = %375
  %379 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %380 = call i32 @CSignedEncodeMsg_Close(%struct.TYPE_20__* %379)
  %381 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %382 = call i32 @CryptMemFree(%struct.TYPE_20__* %381)
  store %struct.TYPE_20__* null, %struct.TYPE_20__** %12, align 8
  br label %383

383:                                              ; preds = %378, %375
  br label %384

384:                                              ; preds = %383, %63
  %385 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  store %struct.TYPE_20__* %385, %struct.TYPE_20__** %5, align 8
  br label %386

386:                                              ; preds = %384, %58, %41, %27
  %387 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  ret %struct.TYPE_20__* %387
}

declare dso_local i32 @SetLastError(i32) #1

declare dso_local i32 @FIXME(i8*) #1

declare dso_local i32 @CRYPT_IsValidSigner(%struct.TYPE_16__*) #1

declare dso_local i8* @CryptMemAlloc(i32) #1

declare dso_local i32 @CryptMsgBase_Init(i32*, i64, i32, i32 (%struct.TYPE_20__*)*, i32, i32, i32) #1

declare dso_local i32 @CSignedEncodeMsg_Close(%struct.TYPE_20__*) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @strcpy(i32*, i32) #1

declare dso_local i32 @memset(%struct.TYPE_22__*, i32, i32) #1

declare dso_local i64 @CSignedMsgData_AllocateHandles(%struct.TYPE_17__*) #1

declare dso_local i64 @CSignerInfo_Construct(%struct.TYPE_22__*, %struct.TYPE_16__*) #1

declare dso_local i64 @CSignedMsgData_ConstructSignerHandles(%struct.TYPE_17__*, i64, i32*, i64*) #1

declare dso_local i32 @CryptReleaseContext(i32, i32) #1

declare dso_local i64 @CRYPT_ConstructBlobArray(i32*, i32*, i32, i32) #1

declare dso_local i32 @CryptMemFree(%struct.TYPE_20__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
