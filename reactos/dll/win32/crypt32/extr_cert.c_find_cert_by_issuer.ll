; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/crypt32/extr_cert.c_find_cert_by_issuer.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/crypt32/extr_cert.c_find_cert_by_issuer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_33__ = type { %struct.TYPE_30__*, i32 }
%struct.TYPE_30__ = type { %struct.TYPE_22__, i32, i32 }
%struct.TYPE_22__ = type { %struct.TYPE_29__, i8* }
%struct.TYPE_29__ = type { i32, %struct.TYPE_28__ }
%struct.TYPE_28__ = type { i32, i32 }
%struct.TYPE_31__ = type { %struct.TYPE_25__ }
%struct.TYPE_25__ = type { i32, i32 }
%struct.TYPE_23__ = type { %struct.TYPE_24__, %struct.TYPE_24__, %struct.TYPE_26__, %struct.TYPE_24__, %struct.TYPE_24__ }
%struct.TYPE_26__ = type { i64, %struct.TYPE_32__* }
%struct.TYPE_32__ = type { i64, %struct.TYPE_27__ }
%struct.TYPE_27__ = type { %struct.TYPE_24__ }
%struct.TYPE_24__ = type { i64 }

@szOID_AUTHORITY_KEY_IDENTIFIER = common dso_local global i32 0, align 4
@X509_AUTHORITY_KEY_ID = common dso_local global i32 0, align 4
@CRYPT_DECODE_ALLOC_FLAG = common dso_local global i32 0, align 4
@CRYPT_DECODE_NOCOPY_FLAG = common dso_local global i32 0, align 4
@CERT_ID_ISSUER_SERIAL_NUMBER = common dso_local global i8* null, align 8
@CERT_ID_KEY_IDENTIFIER = common dso_local global i8* null, align 8
@FALSE = common dso_local global i32 0, align 4
@compare_cert_by_cert_id = common dso_local global i32 0, align 4
@szOID_AUTHORITY_KEY_IDENTIFIER2 = common dso_local global i32 0, align 4
@X509_AUTHORITY_KEY_ID2 = common dso_local global i32 0, align 4
@CERT_ALT_NAME_DIRECTORY_NAME = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [45 x i8] c"no supported name type in authority key id2\0A\00", align 1
@compare_cert_by_name = common dso_local global i32 0, align 4
@CERT_COMPARE_NAME = common dso_local global i64 0, align 8
@CERT_COMPARE_SUBJECT_CERT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_33__* (i32, i64, i64, i8*, %struct.TYPE_33__*)* @find_cert_by_issuer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_33__* @find_cert_by_issuer(i32 %0, i64 %1, i64 %2, i8* %3, %struct.TYPE_33__* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_33__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_33__*, align 8
  %13 = alloca %struct.TYPE_33__*, align 8
  %14 = alloca %struct.TYPE_31__*, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.TYPE_23__*, align 8
  %17 = alloca %struct.TYPE_22__, align 8
  %18 = alloca %struct.TYPE_23__*, align 8
  %19 = alloca %struct.TYPE_22__, align 8
  %20 = alloca %struct.TYPE_32__*, align 8
  %21 = alloca i64, align 8
  store i32 %0, i32* %6, align 4
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i8* %3, i8** %9, align 8
  store %struct.TYPE_33__* %4, %struct.TYPE_33__** %10, align 8
  store %struct.TYPE_33__* null, %struct.TYPE_33__** %12, align 8
  %22 = load i8*, i8** %9, align 8
  %23 = bitcast i8* %22 to %struct.TYPE_33__*
  store %struct.TYPE_33__* %23, %struct.TYPE_33__** %13, align 8
  %24 = load i32, i32* @szOID_AUTHORITY_KEY_IDENTIFIER, align 4
  %25 = load %struct.TYPE_33__*, %struct.TYPE_33__** %13, align 8
  %26 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_30__*, %struct.TYPE_30__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.TYPE_33__*, %struct.TYPE_33__** %13, align 8
  %31 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_30__*, %struct.TYPE_30__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = call %struct.TYPE_31__* @CertFindExtension(i32 %24, i32 %29, i32 %34)
  store %struct.TYPE_31__* %35, %struct.TYPE_31__** %14, align 8
  %36 = icmp ne %struct.TYPE_31__* %35, null
  br i1 %36, label %37, label %114

37:                                               ; preds = %5
  %38 = load %struct.TYPE_33__*, %struct.TYPE_33__** %13, align 8
  %39 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @X509_AUTHORITY_KEY_ID, align 4
  %42 = load %struct.TYPE_31__*, %struct.TYPE_31__** %14, align 8
  %43 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.TYPE_31__*, %struct.TYPE_31__** %14, align 8
  %47 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @CRYPT_DECODE_ALLOC_FLAG, align 4
  %51 = load i32, i32* @CRYPT_DECODE_NOCOPY_FLAG, align 4
  %52 = or i32 %50, %51
  %53 = call i32 @CryptDecodeObjectEx(i32 %40, i32 %41, i32 %45, i32 %49, i32 %52, i32* null, %struct.TYPE_23__** %16, i64* %15)
  store i32 %53, i32* %11, align 4
  %54 = load i32, i32* %11, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %113

56:                                               ; preds = %37
  %57 = load %struct.TYPE_23__*, %struct.TYPE_23__** %16, align 8
  %58 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %57, i32 0, i32 4
  %59 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %83

62:                                               ; preds = %56
  %63 = load %struct.TYPE_23__*, %struct.TYPE_23__** %16, align 8
  %64 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %63, i32 0, i32 3
  %65 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %83

68:                                               ; preds = %62
  %69 = load i8*, i8** @CERT_ID_ISSUER_SERIAL_NUMBER, align 8
  %70 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %17, i32 0, i32 1
  store i8* %69, i8** %70, align 8
  %71 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %17, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %72, i32 0, i32 1
  %74 = load %struct.TYPE_23__*, %struct.TYPE_23__** %16, align 8
  %75 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %74, i32 0, i32 4
  %76 = call i32 @memcpy(i32* %73, %struct.TYPE_24__* %75, i32 4)
  %77 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %17, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %78, i32 0, i32 0
  %80 = load %struct.TYPE_23__*, %struct.TYPE_23__** %16, align 8
  %81 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %80, i32 0, i32 3
  %82 = call i32 @memcpy(i32* %79, %struct.TYPE_24__* %81, i32 4)
  br label %100

83:                                               ; preds = %62, %56
  %84 = load %struct.TYPE_23__*, %struct.TYPE_23__** %16, align 8
  %85 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %97

89:                                               ; preds = %83
  %90 = load i8*, i8** @CERT_ID_KEY_IDENTIFIER, align 8
  %91 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %17, i32 0, i32 1
  store i8* %90, i8** %91, align 8
  %92 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %17, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %92, i32 0, i32 0
  %94 = load %struct.TYPE_23__*, %struct.TYPE_23__** %16, align 8
  %95 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %94, i32 0, i32 0
  %96 = call i32 @memcpy(i32* %93, %struct.TYPE_24__* %95, i32 4)
  br label %99

97:                                               ; preds = %83
  %98 = load i32, i32* @FALSE, align 4
  store i32 %98, i32* %11, align 4
  br label %99

99:                                               ; preds = %97, %89
  br label %100

100:                                              ; preds = %99, %68
  %101 = load i32, i32* %11, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %110

103:                                              ; preds = %100
  %104 = load i32, i32* %6, align 4
  %105 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %106 = load i32, i32* @compare_cert_by_cert_id, align 4
  %107 = load i64, i64* %7, align 8
  %108 = load i64, i64* %8, align 8
  %109 = call %struct.TYPE_33__* @cert_compare_certs_in_store(i32 %104, %struct.TYPE_33__* %105, i32 %106, i64 %107, i64 %108, %struct.TYPE_22__* %17)
  store %struct.TYPE_33__* %109, %struct.TYPE_33__** %12, align 8
  br label %110

110:                                              ; preds = %103, %100
  %111 = load %struct.TYPE_23__*, %struct.TYPE_23__** %16, align 8
  %112 = call i32 @LocalFree(%struct.TYPE_23__* %111)
  br label %113

113:                                              ; preds = %110, %37
  br label %262

114:                                              ; preds = %5
  %115 = load i32, i32* @szOID_AUTHORITY_KEY_IDENTIFIER2, align 4
  %116 = load %struct.TYPE_33__*, %struct.TYPE_33__** %13, align 8
  %117 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %116, i32 0, i32 0
  %118 = load %struct.TYPE_30__*, %struct.TYPE_30__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.TYPE_33__*, %struct.TYPE_33__** %13, align 8
  %122 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %121, i32 0, i32 0
  %123 = load %struct.TYPE_30__*, %struct.TYPE_30__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 8
  %126 = call %struct.TYPE_31__* @CertFindExtension(i32 %115, i32 %120, i32 %125)
  store %struct.TYPE_31__* %126, %struct.TYPE_31__** %14, align 8
  %127 = icmp ne %struct.TYPE_31__* %126, null
  br i1 %127, label %128, label %248

128:                                              ; preds = %114
  %129 = load %struct.TYPE_33__*, %struct.TYPE_33__** %13, align 8
  %130 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 8
  %132 = load i32, i32* @X509_AUTHORITY_KEY_ID2, align 4
  %133 = load %struct.TYPE_31__*, %struct.TYPE_31__** %14, align 8
  %134 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.TYPE_31__*, %struct.TYPE_31__** %14, align 8
  %138 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = load i32, i32* @CRYPT_DECODE_ALLOC_FLAG, align 4
  %142 = load i32, i32* @CRYPT_DECODE_NOCOPY_FLAG, align 4
  %143 = or i32 %141, %142
  %144 = call i32 @CryptDecodeObjectEx(i32 %131, i32 %132, i32 %136, i32 %140, i32 %143, i32* null, %struct.TYPE_23__** %18, i64* %15)
  store i32 %144, i32* %11, align 4
  %145 = load i32, i32* %11, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %247

147:                                              ; preds = %128
  %148 = load %struct.TYPE_23__*, %struct.TYPE_23__** %18, align 8
  %149 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %148, i32 0, i32 2
  %150 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %217

153:                                              ; preds = %147
  %154 = load %struct.TYPE_23__*, %struct.TYPE_23__** %18, align 8
  %155 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %154, i32 0, i32 1
  %156 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %155, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %217

159:                                              ; preds = %153
  store %struct.TYPE_32__* null, %struct.TYPE_32__** %20, align 8
  store i64 0, i64* %21, align 8
  br label %160

160:                                              ; preds = %191, %159
  %161 = load %struct.TYPE_32__*, %struct.TYPE_32__** %20, align 8
  %162 = icmp ne %struct.TYPE_32__* %161, null
  br i1 %162, label %170, label %163

163:                                              ; preds = %160
  %164 = load i64, i64* %21, align 8
  %165 = load %struct.TYPE_23__*, %struct.TYPE_23__** %18, align 8
  %166 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %165, i32 0, i32 2
  %167 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %166, i32 0, i32 0
  %168 = load i64, i64* %167, align 8
  %169 = icmp ult i64 %164, %168
  br label %170

170:                                              ; preds = %163, %160
  %171 = phi i1 [ false, %160 ], [ %169, %163 ]
  br i1 %171, label %172, label %194

172:                                              ; preds = %170
  %173 = load %struct.TYPE_23__*, %struct.TYPE_23__** %18, align 8
  %174 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %173, i32 0, i32 2
  %175 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %174, i32 0, i32 1
  %176 = load %struct.TYPE_32__*, %struct.TYPE_32__** %175, align 8
  %177 = load i64, i64* %21, align 8
  %178 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %176, i64 %177
  %179 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %178, i32 0, i32 0
  %180 = load i64, i64* %179, align 8
  %181 = load i64, i64* @CERT_ALT_NAME_DIRECTORY_NAME, align 8
  %182 = icmp eq i64 %180, %181
  br i1 %182, label %183, label %190

183:                                              ; preds = %172
  %184 = load %struct.TYPE_23__*, %struct.TYPE_23__** %18, align 8
  %185 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %184, i32 0, i32 2
  %186 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %185, i32 0, i32 1
  %187 = load %struct.TYPE_32__*, %struct.TYPE_32__** %186, align 8
  %188 = load i64, i64* %21, align 8
  %189 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %187, i64 %188
  store %struct.TYPE_32__* %189, %struct.TYPE_32__** %20, align 8
  br label %190

190:                                              ; preds = %183, %172
  br label %191

191:                                              ; preds = %190
  %192 = load i64, i64* %21, align 8
  %193 = add i64 %192, 1
  store i64 %193, i64* %21, align 8
  br label %160

194:                                              ; preds = %170
  %195 = load %struct.TYPE_32__*, %struct.TYPE_32__** %20, align 8
  %196 = icmp ne %struct.TYPE_32__* %195, null
  br i1 %196, label %197, label %213

197:                                              ; preds = %194
  %198 = load i8*, i8** @CERT_ID_ISSUER_SERIAL_NUMBER, align 8
  %199 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %19, i32 0, i32 1
  store i8* %198, i8** %199, align 8
  %200 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %19, i32 0, i32 0
  %201 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %200, i32 0, i32 1
  %202 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %201, i32 0, i32 1
  %203 = load %struct.TYPE_32__*, %struct.TYPE_32__** %20, align 8
  %204 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %203, i32 0, i32 1
  %205 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %204, i32 0, i32 0
  %206 = call i32 @memcpy(i32* %202, %struct.TYPE_24__* %205, i32 4)
  %207 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %19, i32 0, i32 0
  %208 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %207, i32 0, i32 1
  %209 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %208, i32 0, i32 0
  %210 = load %struct.TYPE_23__*, %struct.TYPE_23__** %18, align 8
  %211 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %210, i32 0, i32 1
  %212 = call i32 @memcpy(i32* %209, %struct.TYPE_24__* %211, i32 4)
  br label %216

213:                                              ; preds = %194
  %214 = call i32 @FIXME(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  %215 = load i32, i32* @FALSE, align 4
  store i32 %215, i32* %11, align 4
  br label %216

216:                                              ; preds = %213, %197
  br label %234

217:                                              ; preds = %153, %147
  %218 = load %struct.TYPE_23__*, %struct.TYPE_23__** %18, align 8
  %219 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %218, i32 0, i32 0
  %220 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %219, i32 0, i32 0
  %221 = load i64, i64* %220, align 8
  %222 = icmp ne i64 %221, 0
  br i1 %222, label %223, label %231

223:                                              ; preds = %217
  %224 = load i8*, i8** @CERT_ID_KEY_IDENTIFIER, align 8
  %225 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %19, i32 0, i32 1
  store i8* %224, i8** %225, align 8
  %226 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %19, i32 0, i32 0
  %227 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %226, i32 0, i32 0
  %228 = load %struct.TYPE_23__*, %struct.TYPE_23__** %18, align 8
  %229 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %228, i32 0, i32 0
  %230 = call i32 @memcpy(i32* %227, %struct.TYPE_24__* %229, i32 4)
  br label %233

231:                                              ; preds = %217
  %232 = load i32, i32* @FALSE, align 4
  store i32 %232, i32* %11, align 4
  br label %233

233:                                              ; preds = %231, %223
  br label %234

234:                                              ; preds = %233, %216
  %235 = load i32, i32* %11, align 4
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %237, label %244

237:                                              ; preds = %234
  %238 = load i32, i32* %6, align 4
  %239 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %240 = load i32, i32* @compare_cert_by_cert_id, align 4
  %241 = load i64, i64* %7, align 8
  %242 = load i64, i64* %8, align 8
  %243 = call %struct.TYPE_33__* @cert_compare_certs_in_store(i32 %238, %struct.TYPE_33__* %239, i32 %240, i64 %241, i64 %242, %struct.TYPE_22__* %19)
  store %struct.TYPE_33__* %243, %struct.TYPE_33__** %12, align 8
  br label %244

244:                                              ; preds = %237, %234
  %245 = load %struct.TYPE_23__*, %struct.TYPE_23__** %18, align 8
  %246 = call i32 @LocalFree(%struct.TYPE_23__* %245)
  br label %247

247:                                              ; preds = %244, %128
  br label %261

248:                                              ; preds = %114
  %249 = load i32, i32* %6, align 4
  %250 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %251 = load i32, i32* @compare_cert_by_name, align 4
  %252 = load i64, i64* @CERT_COMPARE_NAME, align 8
  %253 = load i64, i64* @CERT_COMPARE_SUBJECT_CERT, align 8
  %254 = or i64 %252, %253
  %255 = load i64, i64* %8, align 8
  %256 = load %struct.TYPE_33__*, %struct.TYPE_33__** %13, align 8
  %257 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %256, i32 0, i32 0
  %258 = load %struct.TYPE_30__*, %struct.TYPE_30__** %257, align 8
  %259 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %258, i32 0, i32 0
  %260 = call %struct.TYPE_33__* @cert_compare_certs_in_store(i32 %249, %struct.TYPE_33__* %250, i32 %251, i64 %254, i64 %255, %struct.TYPE_22__* %259)
  store %struct.TYPE_33__* %260, %struct.TYPE_33__** %12, align 8
  br label %261

261:                                              ; preds = %248, %247
  br label %262

262:                                              ; preds = %261, %113
  %263 = load %struct.TYPE_33__*, %struct.TYPE_33__** %12, align 8
  ret %struct.TYPE_33__* %263
}

declare dso_local %struct.TYPE_31__* @CertFindExtension(i32, i32, i32) #1

declare dso_local i32 @CryptDecodeObjectEx(i32, i32, i32, i32, i32, i32*, %struct.TYPE_23__**, i64*) #1

declare dso_local i32 @memcpy(i32*, %struct.TYPE_24__*, i32) #1

declare dso_local %struct.TYPE_33__* @cert_compare_certs_in_store(i32, %struct.TYPE_33__*, i32, i64, i64, %struct.TYPE_22__*) #1

declare dso_local i32 @LocalFree(%struct.TYPE_23__*) #1

declare dso_local i32 @FIXME(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
