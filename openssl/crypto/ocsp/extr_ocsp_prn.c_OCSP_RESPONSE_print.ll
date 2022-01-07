; ModuleID = '/home/carl/AnghaBench/openssl/crypto/ocsp/extr_ocsp_prn.c_OCSP_RESPONSE_print.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/ocsp/extr_ocsp_prn.c_OCSP_RESPONSE_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i64, %struct.TYPE_24__* }
%struct.TYPE_24__ = type { i32 }
%struct.TYPE_16__ = type { i32, i32, i32, %struct.TYPE_23__ }
%struct.TYPE_23__ = type { i32, i32, i64, %struct.TYPE_22__, i32 }
%struct.TYPE_22__ = type { i32, %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32, i32 }
%struct.TYPE_25__ = type { i64, %struct.TYPE_18__ }
%struct.TYPE_18__ = type { %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i64, i64 }
%struct.TYPE_19__ = type { i32, i64, i64, %struct.TYPE_25__*, i32* }

@.str = private unnamed_addr constant [21 x i8] c"OCSP Response Data:\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"    OCSP Response Status: %s (0x%lx)\0A\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"    Response Type: \00", align 1
@NID_id_pkix_OCSP_basic = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [26 x i8] c" (unknown response type)\0A\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"\0A    Version: %lu (0x%lx)\0A\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"    Responder Id: \00", align 1
@XN_FLAG_ONELINE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [19 x i8] c"\0A    Produced At: \00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"\0A    Responses:\0A\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"    Cert Status: %s\00", align 1
@V_OCSP_CERTSTATUS_REVOKED = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [23 x i8] c"\0A    Revocation Time: \00", align 1
@.str.10 = private unnamed_addr constant [35 x i8] c"\0A    Revocation Reason: %s (0x%lx)\00", align 1
@.str.11 = private unnamed_addr constant [19 x i8] c"\0A    This Update: \00", align 1
@.str.12 = private unnamed_addr constant [19 x i8] c"\0A    Next Update: \00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.14 = private unnamed_addr constant [27 x i8] c"Response Single Extensions\00", align 1
@.str.15 = private unnamed_addr constant [20 x i8] c"Response Extensions\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @OCSP_RESPONSE_print(i32* %0, %struct.TYPE_21__* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_21__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_16__*, align 8
  %13 = alloca %struct.TYPE_22__*, align 8
  %14 = alloca %struct.TYPE_23__*, align 8
  %15 = alloca %struct.TYPE_25__*, align 8
  %16 = alloca %struct.TYPE_20__*, align 8
  %17 = alloca %struct.TYPE_19__*, align 8
  %18 = alloca %struct.TYPE_24__*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_21__* %1, %struct.TYPE_21__** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 0, i32* %9, align 4
  store i32* null, i32** %11, align 8
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %12, align 8
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %13, align 8
  store %struct.TYPE_23__* null, %struct.TYPE_23__** %14, align 8
  store %struct.TYPE_25__* null, %struct.TYPE_25__** %15, align 8
  store %struct.TYPE_20__* null, %struct.TYPE_20__** %16, align 8
  store %struct.TYPE_19__* null, %struct.TYPE_19__** %17, align 8
  %19 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %19, i32 0, i32 1
  %21 = load %struct.TYPE_24__*, %struct.TYPE_24__** %20, align 8
  store %struct.TYPE_24__* %21, %struct.TYPE_24__** %18, align 8
  %22 = load i32*, i32** %5, align 8
  %23 = call i64 @BIO_puts(i32* %22, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %24 = icmp sle i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %3
  br label %313

26:                                               ; preds = %3
  %27 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = call i64 @ASN1_ENUMERATED_get(i64 %29)
  store i64 %30, i64* %10, align 8
  %31 = load i32*, i32** %5, align 8
  %32 = load i64, i64* %10, align 8
  %33 = call i32 @OCSP_response_status_str(i64 %32)
  %34 = load i64, i64* %10, align 8
  %35 = call i64 (i32*, i8*, ...) @BIO_printf(i32* %31, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %33, i64 %34)
  %36 = icmp sle i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %26
  br label %313

38:                                               ; preds = %26
  %39 = load %struct.TYPE_24__*, %struct.TYPE_24__** %18, align 8
  %40 = icmp eq %struct.TYPE_24__* %39, null
  br i1 %40, label %41, label %42

41:                                               ; preds = %38
  store i32 1, i32* %4, align 4
  br label %317

42:                                               ; preds = %38
  %43 = load i32*, i32** %5, align 8
  %44 = call i64 @BIO_puts(i32* %43, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %45 = icmp sle i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %42
  br label %313

47:                                               ; preds = %42
  %48 = load i32*, i32** %5, align 8
  %49 = load %struct.TYPE_24__*, %struct.TYPE_24__** %18, align 8
  %50 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i64 @i2a_ASN1_OBJECT(i32* %48, i32 %51)
  %53 = icmp sle i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %47
  br label %313

55:                                               ; preds = %47
  %56 = load %struct.TYPE_24__*, %struct.TYPE_24__** %18, align 8
  %57 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i64 @OBJ_obj2nid(i32 %58)
  %60 = load i64, i64* @NID_id_pkix_OCSP_basic, align 8
  %61 = icmp ne i64 %59, %60
  br i1 %61, label %62, label %65

62:                                               ; preds = %55
  %63 = load i32*, i32** %5, align 8
  %64 = call i64 @BIO_puts(i32* %63, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  store i32 1, i32* %4, align 4
  br label %317

65:                                               ; preds = %55
  %66 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %67 = call %struct.TYPE_16__* @OCSP_response_get1_basic(%struct.TYPE_21__* %66)
  store %struct.TYPE_16__* %67, %struct.TYPE_16__** %12, align 8
  %68 = icmp eq %struct.TYPE_16__* %67, null
  br i1 %68, label %69, label %70

69:                                               ; preds = %65
  br label %313

70:                                               ; preds = %65
  %71 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %72 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %71, i32 0, i32 3
  store %struct.TYPE_23__* %72, %struct.TYPE_23__** %14, align 8
  %73 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %74 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %73, i32 0, i32 4
  %75 = load i32, i32* %74, align 4
  %76 = call i64 @ASN1_INTEGER_get(i32 %75)
  store i64 %76, i64* %10, align 8
  %77 = load i32*, i32** %5, align 8
  %78 = load i64, i64* %10, align 8
  %79 = add nsw i64 %78, 1
  %80 = load i64, i64* %10, align 8
  %81 = call i64 (i32*, i8*, ...) @BIO_printf(i32* %77, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i64 %79, i64 %80)
  %82 = icmp sle i64 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %70
  br label %313

84:                                               ; preds = %70
  %85 = load i32*, i32** %5, align 8
  %86 = call i64 @BIO_puts(i32* %85, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0))
  %87 = icmp sle i64 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %84
  br label %313

89:                                               ; preds = %84
  %90 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %91 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %90, i32 0, i32 3
  store %struct.TYPE_22__* %91, %struct.TYPE_22__** %13, align 8
  %92 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %93 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  switch i32 %94, label %110 [
    i32 128, label %95
    i32 129, label %103
  ]

95:                                               ; preds = %89
  %96 = load i32*, i32** %5, align 8
  %97 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %98 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* @XN_FLAG_ONELINE, align 4
  %102 = call i32 @X509_NAME_print_ex(i32* %96, i32 %100, i32 0, i32 %101)
  br label %110

103:                                              ; preds = %89
  %104 = load i32*, i32** %5, align 8
  %105 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %106 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @i2a_ASN1_STRING(i32* %104, i32 %108, i32 0)
  br label %110

110:                                              ; preds = %89, %103, %95
  %111 = load i32*, i32** %5, align 8
  %112 = call i64 (i32*, i8*, ...) @BIO_printf(i32* %111, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0))
  %113 = icmp sle i64 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %110
  br label %313

115:                                              ; preds = %110
  %116 = load i32*, i32** %5, align 8
  %117 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %118 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %117, i32 0, i32 2
  %119 = load i64, i64* %118, align 8
  %120 = call i32 @ASN1_GENERALIZEDTIME_print(i32* %116, i64 %119)
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %123, label %122

122:                                              ; preds = %115
  br label %313

123:                                              ; preds = %115
  %124 = load i32*, i32** %5, align 8
  %125 = call i64 (i32*, i8*, ...) @BIO_printf(i32* %124, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0))
  %126 = icmp sle i64 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %123
  br label %313

128:                                              ; preds = %123
  store i32 0, i32* %8, align 4
  br label %129

129:                                              ; preds = %264, %128
  %130 = load i32, i32* %8, align 4
  %131 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %132 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @sk_OCSP_SINGLERESP_num(i32 %133)
  %135 = icmp slt i32 %130, %134
  br i1 %135, label %136, label %267

136:                                              ; preds = %129
  %137 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %138 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = load i32, i32* %8, align 4
  %141 = call %struct.TYPE_19__* @sk_OCSP_SINGLERESP_value(i32 %139, i32 %140)
  %142 = icmp ne %struct.TYPE_19__* %141, null
  br i1 %142, label %144, label %143

143:                                              ; preds = %136
  br label %264

144:                                              ; preds = %136
  %145 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %146 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = load i32, i32* %8, align 4
  %149 = call %struct.TYPE_19__* @sk_OCSP_SINGLERESP_value(i32 %147, i32 %148)
  store %struct.TYPE_19__* %149, %struct.TYPE_19__** %17, align 8
  %150 = load %struct.TYPE_19__*, %struct.TYPE_19__** %17, align 8
  %151 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %150, i32 0, i32 4
  %152 = load i32*, i32** %151, align 8
  store i32* %152, i32** %11, align 8
  %153 = load i32*, i32** %5, align 8
  %154 = load i32*, i32** %11, align 8
  %155 = call i64 @ocsp_certid_print(i32* %153, i32* %154, i32 4)
  %156 = icmp sle i64 %155, 0
  br i1 %156, label %157, label %158

157:                                              ; preds = %144
  br label %313

158:                                              ; preds = %144
  %159 = load %struct.TYPE_19__*, %struct.TYPE_19__** %17, align 8
  %160 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %159, i32 0, i32 3
  %161 = load %struct.TYPE_25__*, %struct.TYPE_25__** %160, align 8
  store %struct.TYPE_25__* %161, %struct.TYPE_25__** %15, align 8
  %162 = load i32*, i32** %5, align 8
  %163 = load %struct.TYPE_25__*, %struct.TYPE_25__** %15, align 8
  %164 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %163, i32 0, i32 0
  %165 = load i64, i64* %164, align 8
  %166 = call i32 @OCSP_cert_status_str(i64 %165)
  %167 = call i64 (i32*, i8*, ...) @BIO_printf(i32* %162, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0), i32 %166)
  %168 = icmp sle i64 %167, 0
  br i1 %168, label %169, label %170

169:                                              ; preds = %158
  br label %313

170:                                              ; preds = %158
  %171 = load %struct.TYPE_25__*, %struct.TYPE_25__** %15, align 8
  %172 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %171, i32 0, i32 0
  %173 = load i64, i64* %172, align 8
  %174 = load i64, i64* @V_OCSP_CERTSTATUS_REVOKED, align 8
  %175 = icmp eq i64 %173, %174
  br i1 %175, label %176, label %212

176:                                              ; preds = %170
  %177 = load %struct.TYPE_25__*, %struct.TYPE_25__** %15, align 8
  %178 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %177, i32 0, i32 1
  %179 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %178, i32 0, i32 0
  %180 = load %struct.TYPE_20__*, %struct.TYPE_20__** %179, align 8
  store %struct.TYPE_20__* %180, %struct.TYPE_20__** %16, align 8
  %181 = load i32*, i32** %5, align 8
  %182 = call i64 (i32*, i8*, ...) @BIO_printf(i32* %181, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0))
  %183 = icmp sle i64 %182, 0
  br i1 %183, label %184, label %185

184:                                              ; preds = %176
  br label %313

185:                                              ; preds = %176
  %186 = load i32*, i32** %5, align 8
  %187 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  %188 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %187, i32 0, i32 1
  %189 = load i64, i64* %188, align 8
  %190 = call i32 @ASN1_GENERALIZEDTIME_print(i32* %186, i64 %189)
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %193, label %192

192:                                              ; preds = %185
  br label %313

193:                                              ; preds = %185
  %194 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  %195 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %194, i32 0, i32 0
  %196 = load i64, i64* %195, align 8
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %198, label %211

198:                                              ; preds = %193
  %199 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  %200 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %199, i32 0, i32 0
  %201 = load i64, i64* %200, align 8
  %202 = call i64 @ASN1_ENUMERATED_get(i64 %201)
  store i64 %202, i64* %10, align 8
  %203 = load i32*, i32** %5, align 8
  %204 = load i64, i64* %10, align 8
  %205 = call i32 @OCSP_crl_reason_str(i64 %204)
  %206 = load i64, i64* %10, align 8
  %207 = call i64 (i32*, i8*, ...) @BIO_printf(i32* %203, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.10, i64 0, i64 0), i32 %205, i64 %206)
  %208 = icmp sle i64 %207, 0
  br i1 %208, label %209, label %210

209:                                              ; preds = %198
  br label %313

210:                                              ; preds = %198
  br label %211

211:                                              ; preds = %210, %193
  br label %212

212:                                              ; preds = %211, %170
  %213 = load i32*, i32** %5, align 8
  %214 = call i64 (i32*, i8*, ...) @BIO_printf(i32* %213, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.11, i64 0, i64 0))
  %215 = icmp sle i64 %214, 0
  br i1 %215, label %216, label %217

216:                                              ; preds = %212
  br label %313

217:                                              ; preds = %212
  %218 = load i32*, i32** %5, align 8
  %219 = load %struct.TYPE_19__*, %struct.TYPE_19__** %17, align 8
  %220 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %219, i32 0, i32 2
  %221 = load i64, i64* %220, align 8
  %222 = call i32 @ASN1_GENERALIZEDTIME_print(i32* %218, i64 %221)
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %225, label %224

224:                                              ; preds = %217
  br label %313

225:                                              ; preds = %217
  %226 = load %struct.TYPE_19__*, %struct.TYPE_19__** %17, align 8
  %227 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %226, i32 0, i32 1
  %228 = load i64, i64* %227, align 8
  %229 = icmp ne i64 %228, 0
  br i1 %229, label %230, label %244

230:                                              ; preds = %225
  %231 = load i32*, i32** %5, align 8
  %232 = call i64 (i32*, i8*, ...) @BIO_printf(i32* %231, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.12, i64 0, i64 0))
  %233 = icmp sle i64 %232, 0
  br i1 %233, label %234, label %235

234:                                              ; preds = %230
  br label %313

235:                                              ; preds = %230
  %236 = load i32*, i32** %5, align 8
  %237 = load %struct.TYPE_19__*, %struct.TYPE_19__** %17, align 8
  %238 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %237, i32 0, i32 1
  %239 = load i64, i64* %238, align 8
  %240 = call i32 @ASN1_GENERALIZEDTIME_print(i32* %236, i64 %239)
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %243, label %242

242:                                              ; preds = %235
  br label %313

243:                                              ; preds = %235
  br label %244

244:                                              ; preds = %243, %225
  %245 = load i32*, i32** %5, align 8
  %246 = call i64 @BIO_write(i32* %245, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0), i32 1)
  %247 = icmp sle i64 %246, 0
  br i1 %247, label %248, label %249

248:                                              ; preds = %244
  br label %313

249:                                              ; preds = %244
  %250 = load i32*, i32** %5, align 8
  %251 = load %struct.TYPE_19__*, %struct.TYPE_19__** %17, align 8
  %252 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %251, i32 0, i32 0
  %253 = load i32, i32* %252, align 8
  %254 = load i64, i64* %7, align 8
  %255 = call i32 @X509V3_extensions_print(i32* %250, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.14, i64 0, i64 0), i32 %253, i64 %254, i32 8)
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %258, label %257

257:                                              ; preds = %249
  br label %313

258:                                              ; preds = %249
  %259 = load i32*, i32** %5, align 8
  %260 = call i64 @BIO_write(i32* %259, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0), i32 1)
  %261 = icmp sle i64 %260, 0
  br i1 %261, label %262, label %263

262:                                              ; preds = %258
  br label %313

263:                                              ; preds = %258
  br label %264

264:                                              ; preds = %263, %143
  %265 = load i32, i32* %8, align 4
  %266 = add nsw i32 %265, 1
  store i32 %266, i32* %8, align 4
  br label %129

267:                                              ; preds = %129
  %268 = load i32*, i32** %5, align 8
  %269 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %270 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %269, i32 0, i32 0
  %271 = load i32, i32* %270, align 8
  %272 = load i64, i64* %7, align 8
  %273 = call i32 @X509V3_extensions_print(i32* %268, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.15, i64 0, i64 0), i32 %271, i64 %272, i32 4)
  %274 = icmp ne i32 %273, 0
  br i1 %274, label %276, label %275

275:                                              ; preds = %267
  br label %313

276:                                              ; preds = %267
  %277 = load i32*, i32** %5, align 8
  %278 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %279 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %278, i32 0, i32 2
  %280 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %281 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %280, i32 0, i32 1
  %282 = load i32, i32* %281, align 4
  %283 = call i64 @X509_signature_print(i32* %277, i32* %279, i32 %282)
  %284 = icmp sle i64 %283, 0
  br i1 %284, label %285, label %286

285:                                              ; preds = %276
  br label %313

286:                                              ; preds = %276
  store i32 0, i32* %8, align 4
  br label %287

287:                                              ; preds = %309, %286
  %288 = load i32, i32* %8, align 4
  %289 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %290 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %289, i32 0, i32 0
  %291 = load i32, i32* %290, align 8
  %292 = call i32 @sk_X509_num(i32 %291)
  %293 = icmp slt i32 %288, %292
  br i1 %293, label %294, label %312

294:                                              ; preds = %287
  %295 = load i32*, i32** %5, align 8
  %296 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %297 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %296, i32 0, i32 0
  %298 = load i32, i32* %297, align 8
  %299 = load i32, i32* %8, align 4
  %300 = call i32 @sk_X509_value(i32 %298, i32 %299)
  %301 = call i32 @X509_print(i32* %295, i32 %300)
  %302 = load i32*, i32** %5, align 8
  %303 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %304 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %303, i32 0, i32 0
  %305 = load i32, i32* %304, align 8
  %306 = load i32, i32* %8, align 4
  %307 = call i32 @sk_X509_value(i32 %305, i32 %306)
  %308 = call i32 @PEM_write_bio_X509(i32* %302, i32 %307)
  br label %309

309:                                              ; preds = %294
  %310 = load i32, i32* %8, align 4
  %311 = add nsw i32 %310, 1
  store i32 %311, i32* %8, align 4
  br label %287

312:                                              ; preds = %287
  store i32 1, i32* %9, align 4
  br label %313

313:                                              ; preds = %312, %285, %275, %262, %257, %248, %242, %234, %224, %216, %209, %192, %184, %169, %157, %127, %122, %114, %88, %83, %69, %54, %46, %37, %25
  %314 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %315 = call i32 @OCSP_BASICRESP_free(%struct.TYPE_16__* %314)
  %316 = load i32, i32* %9, align 4
  store i32 %316, i32* %4, align 4
  br label %317

317:                                              ; preds = %313, %62, %41
  %318 = load i32, i32* %4, align 4
  ret i32 %318
}

declare dso_local i64 @BIO_puts(i32*, i8*) #1

declare dso_local i64 @ASN1_ENUMERATED_get(i64) #1

declare dso_local i64 @BIO_printf(i32*, i8*, ...) #1

declare dso_local i32 @OCSP_response_status_str(i64) #1

declare dso_local i64 @i2a_ASN1_OBJECT(i32*, i32) #1

declare dso_local i64 @OBJ_obj2nid(i32) #1

declare dso_local %struct.TYPE_16__* @OCSP_response_get1_basic(%struct.TYPE_21__*) #1

declare dso_local i64 @ASN1_INTEGER_get(i32) #1

declare dso_local i32 @X509_NAME_print_ex(i32*, i32, i32, i32) #1

declare dso_local i32 @i2a_ASN1_STRING(i32*, i32, i32) #1

declare dso_local i32 @ASN1_GENERALIZEDTIME_print(i32*, i64) #1

declare dso_local i32 @sk_OCSP_SINGLERESP_num(i32) #1

declare dso_local %struct.TYPE_19__* @sk_OCSP_SINGLERESP_value(i32, i32) #1

declare dso_local i64 @ocsp_certid_print(i32*, i32*, i32) #1

declare dso_local i32 @OCSP_cert_status_str(i64) #1

declare dso_local i32 @OCSP_crl_reason_str(i64) #1

declare dso_local i64 @BIO_write(i32*, i8*, i32) #1

declare dso_local i32 @X509V3_extensions_print(i32*, i8*, i32, i64, i32) #1

declare dso_local i64 @X509_signature_print(i32*, i32*, i32) #1

declare dso_local i32 @sk_X509_num(i32) #1

declare dso_local i32 @X509_print(i32*, i32) #1

declare dso_local i32 @sk_X509_value(i32, i32) #1

declare dso_local i32 @PEM_write_bio_X509(i32*, i32) #1

declare dso_local i32 @OCSP_BASICRESP_free(%struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
