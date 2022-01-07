; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/crypt32/extr_msg.c_CDecodeSignedMsg_GetParam.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/crypt32/extr_msg.c_CDecodeSignedMsg_GetParam.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, %struct.TYPE_22__ }
%struct.TYPE_22__ = type { %struct.TYPE_21__ }
%struct.TYPE_21__ = type { i32, %struct.TYPE_20__*, %struct.TYPE_17__* }
%struct.TYPE_20__ = type { i32, i32, i32, i32*, %struct.TYPE_16__*, %struct.TYPE_15__*, %struct.TYPE_19__ }
%struct.TYPE_16__ = type { i32*, i32 }
%struct.TYPE_15__ = type { i32*, i32 }
%struct.TYPE_19__ = type { i32*, %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32*, i32 }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_23__ = type { i32*, i32 }

@FALSE = common dso_local global i32 0, align 4
@szOID_RSA_data = common dso_local global i32 0, align 4
@X509_ASN_ENCODING = common dso_local global i32 0, align 4
@X509_OCTET_STRING = common dso_local global i32 0, align 4
@CRYPT_DECODE_ALLOC_FLAG = common dso_local global i32 0, align 4
@CRYPT_E_INVALID_MSG_TYPE = common dso_local global i32 0, align 4
@CRYPT_E_INVALID_INDEX = common dso_local global i32 0, align 4
@HP_HASHVAL = common dso_local global i32 0, align 4
@PKCS_7_ASN_ENCODING = common dso_local global i32 0, align 4
@CMS_SIGNER_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"unimplemented for %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_14__*, i32, i32, i8*, i32*)* @CDecodeSignedMsg_GetParam to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @CDecodeSignedMsg_GetParam(%struct.TYPE_14__* %0, i32 %1, i32 %2, i8* %3, i32* %4) #0 {
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_23__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i32* %4, i32** %10, align 8
  %15 = load i32, i32* @FALSE, align 4
  store i32 %15, i32* %11, align 4
  %16 = load i32, i32* %7, align 4
  switch i32 %16, label %536 [
    i32 128, label %17
    i32 136, label %23
    i32 132, label %107
    i32 130, label %140
    i32 129, label %161
    i32 131, label %200
    i32 140, label %239
    i32 139, label %260
    i32 135, label %313
    i32 134, label %334
    i32 137, label %387
    i32 133, label %425
    i32 142, label %468
    i32 141, label %483
    i32 138, label %497
  ]

17:                                               ; preds = %5
  %18 = load i8*, i8** %9, align 8
  %19 = load i32*, i32** %10, align 8
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %20, i32 0, i32 0
  %22 = call i32 @CRYPT_CopyParam(i8* %18, i32* %19, i32* %21, i32 4)
  store i32 %22, i32* %11, align 4
  br label %541

23:                                               ; preds = %5
  %24 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %26, i32 0, i32 1
  %28 = load %struct.TYPE_20__*, %struct.TYPE_20__** %27, align 8
  %29 = icmp ne %struct.TYPE_20__* %28, null
  br i1 %29, label %30, label %103

30:                                               ; preds = %23
  %31 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %33, i32 0, i32 1
  %35 = load %struct.TYPE_20__*, %struct.TYPE_20__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %35, i32 0, i32 6
  %37 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = load i32, i32* @szOID_RSA_data, align 4
  %40 = call i32 @strcmp(i32* %38, i32 %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %80, label %42

42:                                               ; preds = %30
  %43 = load i32, i32* @X509_ASN_ENCODING, align 4
  %44 = load i32, i32* @X509_OCTET_STRING, align 4
  %45 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %47, i32 0, i32 1
  %49 = load %struct.TYPE_20__*, %struct.TYPE_20__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %49, i32 0, i32 6
  %51 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %56, i32 0, i32 1
  %58 = load %struct.TYPE_20__*, %struct.TYPE_20__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %58, i32 0, i32 6
  %60 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @CRYPT_DECODE_ALLOC_FLAG, align 4
  %64 = call i32 @CryptDecodeObjectEx(i32 %43, i32 %44, i32* %53, i32 %62, i32 %63, i32* null, %struct.TYPE_23__** %12, i32* %13)
  store i32 %64, i32* %11, align 4
  %65 = load i32, i32* %11, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %79

67:                                               ; preds = %42
  %68 = load i8*, i8** %9, align 8
  %69 = load i32*, i32** %10, align 8
  %70 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %71 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %74 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @CRYPT_CopyParam(i8* %68, i32* %69, i32* %72, i32 %75)
  store i32 %76, i32* %11, align 4
  %77 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %78 = call i32 @LocalFree(%struct.TYPE_23__* %77)
  br label %79

79:                                               ; preds = %67, %42
  br label %102

80:                                               ; preds = %30
  %81 = load i8*, i8** %9, align 8
  %82 = load i32*, i32** %10, align 8
  %83 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %85, i32 0, i32 1
  %87 = load %struct.TYPE_20__*, %struct.TYPE_20__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %87, i32 0, i32 6
  %89 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %89, i32 0, i32 0
  %91 = load i32*, i32** %90, align 8
  %92 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %93 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %94, i32 0, i32 1
  %96 = load %struct.TYPE_20__*, %struct.TYPE_20__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %96, i32 0, i32 6
  %98 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  %101 = call i32 @CRYPT_CopyParam(i8* %81, i32* %82, i32* %91, i32 %100)
  store i32 %101, i32* %11, align 4
  br label %102

102:                                              ; preds = %80, %79
  br label %106

103:                                              ; preds = %23
  %104 = load i32, i32* @CRYPT_E_INVALID_MSG_TYPE, align 4
  %105 = call i32 @SetLastError(i32 %104)
  br label %106

106:                                              ; preds = %103, %102
  br label %541

107:                                              ; preds = %5
  %108 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %109 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %110, i32 0, i32 1
  %112 = load %struct.TYPE_20__*, %struct.TYPE_20__** %111, align 8
  %113 = icmp ne %struct.TYPE_20__* %112, null
  br i1 %113, label %114, label %136

114:                                              ; preds = %107
  %115 = load i8*, i8** %9, align 8
  %116 = load i32*, i32** %10, align 8
  %117 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %118 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %119, i32 0, i32 1
  %121 = load %struct.TYPE_20__*, %struct.TYPE_20__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %121, i32 0, i32 6
  %123 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %122, i32 0, i32 0
  %124 = load i32*, i32** %123, align 8
  %125 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %126 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %125, i32 0, i32 1
  %127 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %127, i32 0, i32 1
  %129 = load %struct.TYPE_20__*, %struct.TYPE_20__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %129, i32 0, i32 6
  %131 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %130, i32 0, i32 0
  %132 = load i32*, i32** %131, align 8
  %133 = call i32 @strlen(i32* %132)
  %134 = add nsw i32 %133, 1
  %135 = call i32 @CRYPT_CopyParam(i8* %115, i32* %116, i32* %124, i32 %134)
  store i32 %135, i32* %11, align 4
  br label %139

136:                                              ; preds = %107
  %137 = load i32, i32* @CRYPT_E_INVALID_MSG_TYPE, align 4
  %138 = call i32 @SetLastError(i32 %137)
  br label %139

139:                                              ; preds = %136, %114
  br label %541

140:                                              ; preds = %5
  %141 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %142 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %141, i32 0, i32 1
  %143 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %143, i32 0, i32 1
  %145 = load %struct.TYPE_20__*, %struct.TYPE_20__** %144, align 8
  %146 = icmp ne %struct.TYPE_20__* %145, null
  br i1 %146, label %147, label %157

147:                                              ; preds = %140
  %148 = load i8*, i8** %9, align 8
  %149 = load i32*, i32** %10, align 8
  %150 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %151 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %150, i32 0, i32 1
  %152 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %152, i32 0, i32 1
  %154 = load %struct.TYPE_20__*, %struct.TYPE_20__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %154, i32 0, i32 0
  %156 = call i32 @CRYPT_CopyParam(i8* %148, i32* %149, i32* %155, i32 4)
  store i32 %156, i32* %11, align 4
  br label %160

157:                                              ; preds = %140
  %158 = load i32, i32* @CRYPT_E_INVALID_MSG_TYPE, align 4
  %159 = call i32 @SetLastError(i32 %158)
  br label %160

160:                                              ; preds = %157, %147
  br label %541

161:                                              ; preds = %5
  %162 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %163 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %162, i32 0, i32 1
  %164 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %164, i32 0, i32 1
  %166 = load %struct.TYPE_20__*, %struct.TYPE_20__** %165, align 8
  %167 = icmp ne %struct.TYPE_20__* %166, null
  br i1 %167, label %168, label %196

168:                                              ; preds = %161
  %169 = load i32, i32* %8, align 4
  %170 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %171 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %170, i32 0, i32 1
  %172 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %172, i32 0, i32 1
  %174 = load %struct.TYPE_20__*, %struct.TYPE_20__** %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = icmp sge i32 %169, %176
  br i1 %177, label %178, label %181

178:                                              ; preds = %168
  %179 = load i32, i32* @CRYPT_E_INVALID_INDEX, align 4
  %180 = call i32 @SetLastError(i32 %179)
  br label %195

181:                                              ; preds = %168
  %182 = load i8*, i8** %9, align 8
  %183 = load i32*, i32** %10, align 8
  %184 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %185 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %184, i32 0, i32 1
  %186 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %185, i32 0, i32 0
  %187 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %186, i32 0, i32 1
  %188 = load %struct.TYPE_20__*, %struct.TYPE_20__** %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %188, i32 0, i32 3
  %190 = load i32*, i32** %189, align 8
  %191 = load i32, i32* %8, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds i32, i32* %190, i64 %192
  %194 = call i32 @CRYPT_CopySignerInfo(i8* %182, i32* %183, i32* %193)
  store i32 %194, i32* %11, align 4
  br label %195

195:                                              ; preds = %181, %178
  br label %199

196:                                              ; preds = %161
  %197 = load i32, i32* @CRYPT_E_INVALID_MSG_TYPE, align 4
  %198 = call i32 @SetLastError(i32 %197)
  br label %199

199:                                              ; preds = %196, %195
  br label %541

200:                                              ; preds = %5
  %201 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %202 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %201, i32 0, i32 1
  %203 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %202, i32 0, i32 0
  %204 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %203, i32 0, i32 1
  %205 = load %struct.TYPE_20__*, %struct.TYPE_20__** %204, align 8
  %206 = icmp ne %struct.TYPE_20__* %205, null
  br i1 %206, label %207, label %235

207:                                              ; preds = %200
  %208 = load i32, i32* %8, align 4
  %209 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %210 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %209, i32 0, i32 1
  %211 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %210, i32 0, i32 0
  %212 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %211, i32 0, i32 1
  %213 = load %struct.TYPE_20__*, %struct.TYPE_20__** %212, align 8
  %214 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 8
  %216 = icmp sge i32 %208, %215
  br i1 %216, label %217, label %220

217:                                              ; preds = %207
  %218 = load i32, i32* @CRYPT_E_INVALID_INDEX, align 4
  %219 = call i32 @SetLastError(i32 %218)
  br label %234

220:                                              ; preds = %207
  %221 = load i8*, i8** %9, align 8
  %222 = load i32*, i32** %10, align 8
  %223 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %224 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %223, i32 0, i32 1
  %225 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %224, i32 0, i32 0
  %226 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %225, i32 0, i32 1
  %227 = load %struct.TYPE_20__*, %struct.TYPE_20__** %226, align 8
  %228 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %227, i32 0, i32 3
  %229 = load i32*, i32** %228, align 8
  %230 = load i32, i32* %8, align 4
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds i32, i32* %229, i64 %231
  %233 = call i32 @CRYPT_CopySignerCertInfo(i8* %221, i32* %222, i32* %232)
  store i32 %233, i32* %11, align 4
  br label %234

234:                                              ; preds = %220, %217
  br label %238

235:                                              ; preds = %200
  %236 = load i32, i32* @CRYPT_E_INVALID_MSG_TYPE, align 4
  %237 = call i32 @SetLastError(i32 %236)
  br label %238

238:                                              ; preds = %235, %234
  br label %541

239:                                              ; preds = %5
  %240 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %241 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %240, i32 0, i32 1
  %242 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %241, i32 0, i32 0
  %243 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %242, i32 0, i32 1
  %244 = load %struct.TYPE_20__*, %struct.TYPE_20__** %243, align 8
  %245 = icmp ne %struct.TYPE_20__* %244, null
  br i1 %245, label %246, label %256

246:                                              ; preds = %239
  %247 = load i8*, i8** %9, align 8
  %248 = load i32*, i32** %10, align 8
  %249 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %250 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %249, i32 0, i32 1
  %251 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %250, i32 0, i32 0
  %252 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %251, i32 0, i32 1
  %253 = load %struct.TYPE_20__*, %struct.TYPE_20__** %252, align 8
  %254 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %253, i32 0, i32 1
  %255 = call i32 @CRYPT_CopyParam(i8* %247, i32* %248, i32* %254, i32 4)
  store i32 %255, i32* %11, align 4
  br label %259

256:                                              ; preds = %239
  %257 = load i32, i32* @CRYPT_E_INVALID_MSG_TYPE, align 4
  %258 = call i32 @SetLastError(i32 %257)
  br label %259

259:                                              ; preds = %256, %246
  br label %541

260:                                              ; preds = %5
  %261 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %262 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %261, i32 0, i32 1
  %263 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %262, i32 0, i32 0
  %264 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %263, i32 0, i32 1
  %265 = load %struct.TYPE_20__*, %struct.TYPE_20__** %264, align 8
  %266 = icmp ne %struct.TYPE_20__* %265, null
  br i1 %266, label %267, label %309

267:                                              ; preds = %260
  %268 = load i32, i32* %8, align 4
  %269 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %270 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %269, i32 0, i32 1
  %271 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %270, i32 0, i32 0
  %272 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %271, i32 0, i32 1
  %273 = load %struct.TYPE_20__*, %struct.TYPE_20__** %272, align 8
  %274 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %273, i32 0, i32 1
  %275 = load i32, i32* %274, align 4
  %276 = icmp sge i32 %268, %275
  br i1 %276, label %277, label %280

277:                                              ; preds = %267
  %278 = load i32, i32* @CRYPT_E_INVALID_INDEX, align 4
  %279 = call i32 @SetLastError(i32 %278)
  br label %308

280:                                              ; preds = %267
  %281 = load i8*, i8** %9, align 8
  %282 = load i32*, i32** %10, align 8
  %283 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %284 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %283, i32 0, i32 1
  %285 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %284, i32 0, i32 0
  %286 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %285, i32 0, i32 1
  %287 = load %struct.TYPE_20__*, %struct.TYPE_20__** %286, align 8
  %288 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %287, i32 0, i32 5
  %289 = load %struct.TYPE_15__*, %struct.TYPE_15__** %288, align 8
  %290 = load i32, i32* %8, align 4
  %291 = sext i32 %290 to i64
  %292 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %289, i64 %291
  %293 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %292, i32 0, i32 0
  %294 = load i32*, i32** %293, align 8
  %295 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %296 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %295, i32 0, i32 1
  %297 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %296, i32 0, i32 0
  %298 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %297, i32 0, i32 1
  %299 = load %struct.TYPE_20__*, %struct.TYPE_20__** %298, align 8
  %300 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %299, i32 0, i32 5
  %301 = load %struct.TYPE_15__*, %struct.TYPE_15__** %300, align 8
  %302 = load i32, i32* %8, align 4
  %303 = sext i32 %302 to i64
  %304 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %301, i64 %303
  %305 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %304, i32 0, i32 1
  %306 = load i32, i32* %305, align 8
  %307 = call i32 @CRYPT_CopyParam(i8* %281, i32* %282, i32* %294, i32 %306)
  store i32 %307, i32* %11, align 4
  br label %308

308:                                              ; preds = %280, %277
  br label %312

309:                                              ; preds = %260
  %310 = load i32, i32* @CRYPT_E_INVALID_MSG_TYPE, align 4
  %311 = call i32 @SetLastError(i32 %310)
  br label %312

312:                                              ; preds = %309, %308
  br label %541

313:                                              ; preds = %5
  %314 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %315 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %314, i32 0, i32 1
  %316 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %315, i32 0, i32 0
  %317 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %316, i32 0, i32 1
  %318 = load %struct.TYPE_20__*, %struct.TYPE_20__** %317, align 8
  %319 = icmp ne %struct.TYPE_20__* %318, null
  br i1 %319, label %320, label %330

320:                                              ; preds = %313
  %321 = load i8*, i8** %9, align 8
  %322 = load i32*, i32** %10, align 8
  %323 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %324 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %323, i32 0, i32 1
  %325 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %324, i32 0, i32 0
  %326 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %325, i32 0, i32 1
  %327 = load %struct.TYPE_20__*, %struct.TYPE_20__** %326, align 8
  %328 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %327, i32 0, i32 2
  %329 = call i32 @CRYPT_CopyParam(i8* %321, i32* %322, i32* %328, i32 4)
  store i32 %329, i32* %11, align 4
  br label %333

330:                                              ; preds = %313
  %331 = load i32, i32* @CRYPT_E_INVALID_MSG_TYPE, align 4
  %332 = call i32 @SetLastError(i32 %331)
  br label %333

333:                                              ; preds = %330, %320
  br label %541

334:                                              ; preds = %5
  %335 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %336 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %335, i32 0, i32 1
  %337 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %336, i32 0, i32 0
  %338 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %337, i32 0, i32 1
  %339 = load %struct.TYPE_20__*, %struct.TYPE_20__** %338, align 8
  %340 = icmp ne %struct.TYPE_20__* %339, null
  br i1 %340, label %341, label %383

341:                                              ; preds = %334
  %342 = load i32, i32* %8, align 4
  %343 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %344 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %343, i32 0, i32 1
  %345 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %344, i32 0, i32 0
  %346 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %345, i32 0, i32 1
  %347 = load %struct.TYPE_20__*, %struct.TYPE_20__** %346, align 8
  %348 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %347, i32 0, i32 2
  %349 = load i32, i32* %348, align 8
  %350 = icmp sge i32 %342, %349
  br i1 %350, label %351, label %354

351:                                              ; preds = %341
  %352 = load i32, i32* @CRYPT_E_INVALID_INDEX, align 4
  %353 = call i32 @SetLastError(i32 %352)
  br label %382

354:                                              ; preds = %341
  %355 = load i8*, i8** %9, align 8
  %356 = load i32*, i32** %10, align 8
  %357 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %358 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %357, i32 0, i32 1
  %359 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %358, i32 0, i32 0
  %360 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %359, i32 0, i32 1
  %361 = load %struct.TYPE_20__*, %struct.TYPE_20__** %360, align 8
  %362 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %361, i32 0, i32 4
  %363 = load %struct.TYPE_16__*, %struct.TYPE_16__** %362, align 8
  %364 = load i32, i32* %8, align 4
  %365 = sext i32 %364 to i64
  %366 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %363, i64 %365
  %367 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %366, i32 0, i32 0
  %368 = load i32*, i32** %367, align 8
  %369 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %370 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %369, i32 0, i32 1
  %371 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %370, i32 0, i32 0
  %372 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %371, i32 0, i32 1
  %373 = load %struct.TYPE_20__*, %struct.TYPE_20__** %372, align 8
  %374 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %373, i32 0, i32 4
  %375 = load %struct.TYPE_16__*, %struct.TYPE_16__** %374, align 8
  %376 = load i32, i32* %8, align 4
  %377 = sext i32 %376 to i64
  %378 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %375, i64 %377
  %379 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %378, i32 0, i32 1
  %380 = load i32, i32* %379, align 8
  %381 = call i32 @CRYPT_CopyParam(i8* %355, i32* %356, i32* %368, i32 %380)
  store i32 %381, i32* %11, align 4
  br label %382

382:                                              ; preds = %354, %351
  br label %386

383:                                              ; preds = %334
  %384 = load i32, i32* @CRYPT_E_INVALID_MSG_TYPE, align 4
  %385 = call i32 @SetLastError(i32 %384)
  br label %386

386:                                              ; preds = %383, %382
  br label %541

387:                                              ; preds = %5
  %388 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %389 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %388, i32 0, i32 1
  %390 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %389, i32 0, i32 0
  %391 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %390, i32 0, i32 1
  %392 = load %struct.TYPE_20__*, %struct.TYPE_20__** %391, align 8
  %393 = icmp ne %struct.TYPE_20__* %392, null
  br i1 %393, label %394, label %421

394:                                              ; preds = %387
  %395 = load i32, i32* %8, align 4
  %396 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %397 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %396, i32 0, i32 1
  %398 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %397, i32 0, i32 0
  %399 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %398, i32 0, i32 0
  %400 = load i32, i32* %399, align 8
  %401 = icmp sge i32 %395, %400
  br i1 %401, label %402, label %405

402:                                              ; preds = %394
  %403 = load i32, i32* @CRYPT_E_INVALID_INDEX, align 4
  %404 = call i32 @SetLastError(i32 %403)
  br label %420

405:                                              ; preds = %394
  %406 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %407 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %406, i32 0, i32 1
  %408 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %407, i32 0, i32 0
  %409 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %408, i32 0, i32 2
  %410 = load %struct.TYPE_17__*, %struct.TYPE_17__** %409, align 8
  %411 = load i32, i32* %8, align 4
  %412 = sext i32 %411 to i64
  %413 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %410, i64 %412
  %414 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %413, i32 0, i32 0
  %415 = load i32, i32* %414, align 4
  %416 = load i32, i32* @HP_HASHVAL, align 4
  %417 = load i8*, i8** %9, align 8
  %418 = load i32*, i32** %10, align 8
  %419 = call i32 @CryptGetHashParam(i32 %415, i32 %416, i8* %417, i32* %418, i32 0)
  store i32 %419, i32* %11, align 4
  br label %420

420:                                              ; preds = %405, %402
  br label %424

421:                                              ; preds = %387
  %422 = load i32, i32* @CRYPT_E_INVALID_MSG_TYPE, align 4
  %423 = call i32 @SetLastError(i32 %422)
  br label %424

424:                                              ; preds = %421, %420
  br label %541

425:                                              ; preds = %5
  %426 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %427 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %426, i32 0, i32 1
  %428 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %427, i32 0, i32 0
  %429 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %428, i32 0, i32 1
  %430 = load %struct.TYPE_20__*, %struct.TYPE_20__** %429, align 8
  %431 = icmp ne %struct.TYPE_20__* %430, null
  br i1 %431, label %432, label %464

432:                                              ; preds = %425
  %433 = load i32, i32* %8, align 4
  %434 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %435 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %434, i32 0, i32 1
  %436 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %435, i32 0, i32 0
  %437 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %436, i32 0, i32 1
  %438 = load %struct.TYPE_20__*, %struct.TYPE_20__** %437, align 8
  %439 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %438, i32 0, i32 0
  %440 = load i32, i32* %439, align 8
  %441 = icmp sge i32 %433, %440
  br i1 %441, label %442, label %445

442:                                              ; preds = %432
  %443 = load i32, i32* @CRYPT_E_INVALID_INDEX, align 4
  %444 = call i32 @SetLastError(i32 %443)
  br label %463

445:                                              ; preds = %432
  %446 = load i32, i32* @X509_ASN_ENCODING, align 4
  %447 = load i32, i32* @PKCS_7_ASN_ENCODING, align 4
  %448 = or i32 %446, %447
  %449 = load i32, i32* @CMS_SIGNER_INFO, align 4
  %450 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %451 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %450, i32 0, i32 1
  %452 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %451, i32 0, i32 0
  %453 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %452, i32 0, i32 1
  %454 = load %struct.TYPE_20__*, %struct.TYPE_20__** %453, align 8
  %455 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %454, i32 0, i32 3
  %456 = load i32*, i32** %455, align 8
  %457 = load i32, i32* %8, align 4
  %458 = sext i32 %457 to i64
  %459 = getelementptr inbounds i32, i32* %456, i64 %458
  %460 = load i8*, i8** %9, align 8
  %461 = load i32*, i32** %10, align 8
  %462 = call i32 @CryptEncodeObjectEx(i32 %448, i32 %449, i32* %459, i32 0, i32* null, i8* %460, i32* %461)
  store i32 %462, i32* %11, align 4
  br label %463

463:                                              ; preds = %445, %442
  br label %467

464:                                              ; preds = %425
  %465 = load i32, i32* @CRYPT_E_INVALID_MSG_TYPE, align 4
  %466 = call i32 @SetLastError(i32 %465)
  br label %467

467:                                              ; preds = %464, %463
  br label %541

468:                                              ; preds = %5
  %469 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %470 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %469, i32 0, i32 1
  %471 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %470, i32 0, i32 0
  %472 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %471, i32 0, i32 1
  %473 = load %struct.TYPE_20__*, %struct.TYPE_20__** %472, align 8
  %474 = icmp ne %struct.TYPE_20__* %473, null
  br i1 %474, label %475, label %479

475:                                              ; preds = %468
  store i32 0, i32* %14, align 4
  %476 = load i8*, i8** %9, align 8
  %477 = load i32*, i32** %10, align 8
  %478 = call i32 @CRYPT_CopyParam(i8* %476, i32* %477, i32* %14, i32 4)
  store i32 %478, i32* %11, align 4
  br label %482

479:                                              ; preds = %468
  %480 = load i32, i32* @CRYPT_E_INVALID_MSG_TYPE, align 4
  %481 = call i32 @SetLastError(i32 %480)
  br label %482

482:                                              ; preds = %479, %475
  br label %541

483:                                              ; preds = %5
  %484 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %485 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %484, i32 0, i32 1
  %486 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %485, i32 0, i32 0
  %487 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %486, i32 0, i32 1
  %488 = load %struct.TYPE_20__*, %struct.TYPE_20__** %487, align 8
  %489 = icmp ne %struct.TYPE_20__* %488, null
  br i1 %489, label %490, label %493

490:                                              ; preds = %483
  %491 = load i32, i32* @CRYPT_E_INVALID_INDEX, align 4
  %492 = call i32 @SetLastError(i32 %491)
  br label %496

493:                                              ; preds = %483
  %494 = load i32, i32* @CRYPT_E_INVALID_MSG_TYPE, align 4
  %495 = call i32 @SetLastError(i32 %494)
  br label %496

496:                                              ; preds = %493, %490
  br label %541

497:                                              ; preds = %5
  %498 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %499 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %498, i32 0, i32 1
  %500 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %499, i32 0, i32 0
  %501 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %500, i32 0, i32 1
  %502 = load %struct.TYPE_20__*, %struct.TYPE_20__** %501, align 8
  %503 = icmp ne %struct.TYPE_20__* %502, null
  br i1 %503, label %504, label %532

504:                                              ; preds = %497
  %505 = load i32, i32* %8, align 4
  %506 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %507 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %506, i32 0, i32 1
  %508 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %507, i32 0, i32 0
  %509 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %508, i32 0, i32 1
  %510 = load %struct.TYPE_20__*, %struct.TYPE_20__** %509, align 8
  %511 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %510, i32 0, i32 0
  %512 = load i32, i32* %511, align 8
  %513 = icmp sge i32 %505, %512
  br i1 %513, label %514, label %517

514:                                              ; preds = %504
  %515 = load i32, i32* @CRYPT_E_INVALID_INDEX, align 4
  %516 = call i32 @SetLastError(i32 %515)
  br label %531

517:                                              ; preds = %504
  %518 = load i8*, i8** %9, align 8
  %519 = load i32*, i32** %10, align 8
  %520 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %521 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %520, i32 0, i32 1
  %522 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %521, i32 0, i32 0
  %523 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %522, i32 0, i32 1
  %524 = load %struct.TYPE_20__*, %struct.TYPE_20__** %523, align 8
  %525 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %524, i32 0, i32 3
  %526 = load i32*, i32** %525, align 8
  %527 = load i32, i32* %8, align 4
  %528 = sext i32 %527 to i64
  %529 = getelementptr inbounds i32, i32* %526, i64 %528
  %530 = call i32 @CRYPT_CopyCMSSignerInfo(i8* %518, i32* %519, i32* %529)
  store i32 %530, i32* %11, align 4
  br label %531

531:                                              ; preds = %517, %514
  br label %535

532:                                              ; preds = %497
  %533 = load i32, i32* @CRYPT_E_INVALID_MSG_TYPE, align 4
  %534 = call i32 @SetLastError(i32 %533)
  br label %535

535:                                              ; preds = %532, %531
  br label %541

536:                                              ; preds = %5
  %537 = load i32, i32* %7, align 4
  %538 = call i32 @FIXME(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %537)
  %539 = load i32, i32* @CRYPT_E_INVALID_MSG_TYPE, align 4
  %540 = call i32 @SetLastError(i32 %539)
  br label %541

541:                                              ; preds = %536, %535, %496, %482, %467, %424, %386, %333, %312, %259, %238, %199, %160, %139, %106, %17
  %542 = load i32, i32* %11, align 4
  ret i32 %542
}

declare dso_local i32 @CRYPT_CopyParam(i8*, i32*, i32*, i32) #1

declare dso_local i32 @strcmp(i32*, i32) #1

declare dso_local i32 @CryptDecodeObjectEx(i32, i32, i32*, i32, i32, i32*, %struct.TYPE_23__**, i32*) #1

declare dso_local i32 @LocalFree(%struct.TYPE_23__*) #1

declare dso_local i32 @SetLastError(i32) #1

declare dso_local i32 @strlen(i32*) #1

declare dso_local i32 @CRYPT_CopySignerInfo(i8*, i32*, i32*) #1

declare dso_local i32 @CRYPT_CopySignerCertInfo(i8*, i32*, i32*) #1

declare dso_local i32 @CryptGetHashParam(i32, i32, i8*, i32*, i32) #1

declare dso_local i32 @CryptEncodeObjectEx(i32, i32, i32*, i32, i32*, i8*, i32*) #1

declare dso_local i32 @CRYPT_CopyCMSSignerInfo(i8*, i32*, i32*) #1

declare dso_local i32 @FIXME(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
