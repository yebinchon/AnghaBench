; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/crypt32/extr_msg.c_CSignerInfo_Construct.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/crypt32/extr_msg.c_CSignerInfo_Construct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i32, i32, %struct.TYPE_17__, %struct.TYPE_30__, %struct.TYPE_25__, i8* }
%struct.TYPE_17__ = type { i32, i32 }
%struct.TYPE_30__ = type { i32, i64 }
%struct.TYPE_25__ = type { %struct.TYPE_24__, i64 }
%struct.TYPE_24__ = type { i32, %struct.TYPE_22__ }
%struct.TYPE_22__ = type { i32, i32 }
%struct.TYPE_20__ = type { i32, i32, i32, %struct.TYPE_18__, %struct.TYPE_29__*, %struct.TYPE_19__, %struct.TYPE_27__ }
%struct.TYPE_18__ = type { i32, i32 }
%struct.TYPE_29__ = type { %struct.TYPE_28__, i32, i32 }
%struct.TYPE_28__ = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i32, i64 }
%struct.TYPE_27__ = type { i64, %struct.TYPE_26__ }
%struct.TYPE_26__ = type { i32, %struct.TYPE_23__ }
%struct.TYPE_23__ = type { i32, i32 }

@CMSG_SIGNER_INFO_V1 = common dso_local global i8* null, align 8
@CERT_ID_ISSUER_SERIAL_NUMBER = common dso_local global i64 0, align 8
@CMSG_SIGNER_INFO_V3 = common dso_local global i8* null, align 8
@CERT_ID_KEY_IDENTIFIER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_21__*, %struct.TYPE_20__*)* @CSignerInfo_Construct to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @CSignerInfo_Construct(%struct.TYPE_21__* %0, %struct.TYPE_20__* %1) #0 {
  %3 = alloca %struct.TYPE_21__*, align 8
  %4 = alloca %struct.TYPE_20__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_19__*, align 8
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %3, align 8
  store %struct.TYPE_20__* %1, %struct.TYPE_20__** %4, align 8
  %7 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = sext i32 %9 to i64
  %11 = icmp eq i64 %10, 4
  br i1 %11, label %12, label %68

12:                                               ; preds = %2
  %13 = load i8*, i8** @CMSG_SIGNER_INFO_V1, align 8
  %14 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %14, i32 0, i32 5
  store i8* %13, i8** %15, align 8
  %16 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %16, i32 0, i32 4
  %18 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %19, i32 0, i32 1
  %21 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %21, i32 0, i32 4
  %23 = load %struct.TYPE_29__*, %struct.TYPE_29__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %23, i32 0, i32 2
  %25 = call i64 @CRYPT_ConstructBlob(i32* %20, i32* %24)
  store i64 %25, i64* %5, align 8
  %26 = load i64, i64* %5, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %39

28:                                               ; preds = %12
  %29 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %29, i32 0, i32 4
  %31 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %34, i32 0, i32 4
  %36 = load %struct.TYPE_29__*, %struct.TYPE_29__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %36, i32 0, i32 1
  %38 = call i64 @CRYPT_ConstructBlob(i32* %33, i32* %37)
  store i64 %38, i64* %5, align 8
  br label %39

39:                                               ; preds = %28, %12
  %40 = load i64, i64* @CERT_ID_ISSUER_SERIAL_NUMBER, align 8
  %41 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %41, i32 0, i32 4
  %43 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %42, i32 0, i32 1
  store i64 %40, i64* %43, align 8
  %44 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %44, i32 0, i32 4
  %46 = load %struct.TYPE_29__*, %struct.TYPE_29__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %51, i32 0, i32 3
  %53 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %52, i32 0, i32 1
  store i64 %50, i64* %53, align 8
  %54 = load i64, i64* %5, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %67

56:                                               ; preds = %39
  %57 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %57, i32 0, i32 3
  %59 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %60, i32 0, i32 4
  %62 = load %struct.TYPE_29__*, %struct.TYPE_29__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %64, i32 0, i32 0
  %66 = call i64 @CRYPT_ConstructBlob(i32* %59, i32* %65)
  store i64 %66, i64* %5, align 8
  br label %67

67:                                               ; preds = %56, %39
  br label %198

68:                                               ; preds = %2
  %69 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %69, i32 0, i32 6
  %71 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %106, label %74

74:                                               ; preds = %68
  %75 = load i8*, i8** @CMSG_SIGNER_INFO_V1, align 8
  %76 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %76, i32 0, i32 5
  store i8* %75, i8** %77, align 8
  %78 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %79 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %78, i32 0, i32 4
  %80 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %81, i32 0, i32 1
  %83 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %83, i32 0, i32 4
  %85 = load %struct.TYPE_29__*, %struct.TYPE_29__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %85, i32 0, i32 2
  %87 = call i64 @CRYPT_ConstructBlob(i32* %82, i32* %86)
  store i64 %87, i64* %5, align 8
  %88 = load i64, i64* %5, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %101

90:                                               ; preds = %74
  %91 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %92 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %91, i32 0, i32 4
  %93 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %94, i32 0, i32 0
  %96 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %96, i32 0, i32 4
  %98 = load %struct.TYPE_29__*, %struct.TYPE_29__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %98, i32 0, i32 1
  %100 = call i64 @CRYPT_ConstructBlob(i32* %95, i32* %99)
  store i64 %100, i64* %5, align 8
  br label %101

101:                                              ; preds = %90, %74
  %102 = load i64, i64* @CERT_ID_ISSUER_SERIAL_NUMBER, align 8
  %103 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %104 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %103, i32 0, i32 4
  %105 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %104, i32 0, i32 1
  store i64 %102, i64* %105, align 8
  br label %165

106:                                              ; preds = %68
  %107 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %108 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %107, i32 0, i32 6
  %109 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = load i64, i64* @CERT_ID_ISSUER_SERIAL_NUMBER, align 8
  %112 = icmp eq i64 %110, %111
  br i1 %112, label %113, label %147

113:                                              ; preds = %106
  %114 = load i8*, i8** @CMSG_SIGNER_INFO_V1, align 8
  %115 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %116 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %115, i32 0, i32 5
  store i8* %114, i8** %116, align 8
  %117 = load i64, i64* @CERT_ID_ISSUER_SERIAL_NUMBER, align 8
  %118 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %119 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %118, i32 0, i32 4
  %120 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %119, i32 0, i32 1
  store i64 %117, i64* %120, align 8
  %121 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %122 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %121, i32 0, i32 4
  %123 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %123, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %124, i32 0, i32 1
  %126 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %127 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %126, i32 0, i32 6
  %128 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %127, i32 0, i32 1
  %129 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %128, i32 0, i32 1
  %130 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %129, i32 0, i32 1
  %131 = call i64 @CRYPT_ConstructBlob(i32* %125, i32* %130)
  store i64 %131, i64* %5, align 8
  %132 = load i64, i64* %5, align 8
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %146

134:                                              ; preds = %113
  %135 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %136 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %135, i32 0, i32 4
  %137 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %137, i32 0, i32 1
  %139 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %138, i32 0, i32 0
  %140 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %141 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %140, i32 0, i32 6
  %142 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %141, i32 0, i32 1
  %143 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %142, i32 0, i32 1
  %144 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %143, i32 0, i32 0
  %145 = call i64 @CRYPT_ConstructBlob(i32* %139, i32* %144)
  store i64 %145, i64* %5, align 8
  br label %146

146:                                              ; preds = %134, %113
  br label %164

147:                                              ; preds = %106
  %148 = load i8*, i8** @CMSG_SIGNER_INFO_V3, align 8
  %149 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %150 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %149, i32 0, i32 5
  store i8* %148, i8** %150, align 8
  %151 = load i64, i64* @CERT_ID_KEY_IDENTIFIER, align 8
  %152 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %153 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %152, i32 0, i32 4
  %154 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %153, i32 0, i32 1
  store i64 %151, i64* %154, align 8
  %155 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %156 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %155, i32 0, i32 4
  %157 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %157, i32 0, i32 0
  %159 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %160 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %159, i32 0, i32 6
  %161 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %160, i32 0, i32 1
  %162 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %161, i32 0, i32 0
  %163 = call i64 @CRYPT_ConstructBlob(i32* %158, i32* %162)
  store i64 %163, i64* %5, align 8
  br label %164

164:                                              ; preds = %147, %146
  br label %165

165:                                              ; preds = %164, %101
  %166 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %167 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %166, i32 0, i32 5
  %168 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %167, i32 0, i32 1
  %169 = load i64, i64* %168, align 8
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %174

171:                                              ; preds = %165
  %172 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %173 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %172, i32 0, i32 5
  br label %180

174:                                              ; preds = %165
  %175 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %176 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %175, i32 0, i32 4
  %177 = load %struct.TYPE_29__*, %struct.TYPE_29__** %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %178, i32 0, i32 0
  br label %180

180:                                              ; preds = %174, %171
  %181 = phi %struct.TYPE_19__* [ %173, %171 ], [ %179, %174 ]
  store %struct.TYPE_19__* %181, %struct.TYPE_19__** %6, align 8
  %182 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %183 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %182, i32 0, i32 1
  %184 = load i64, i64* %183, align 8
  %185 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %186 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %185, i32 0, i32 3
  %187 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %186, i32 0, i32 1
  store i64 %184, i64* %187, align 8
  %188 = load i64, i64* %5, align 8
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %190, label %197

190:                                              ; preds = %180
  %191 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %192 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %191, i32 0, i32 3
  %193 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %192, i32 0, i32 0
  %194 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %195 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %194, i32 0, i32 0
  %196 = call i64 @CRYPT_ConstructBlob(i32* %193, i32* %195)
  store i64 %196, i64* %5, align 8
  br label %197

197:                                              ; preds = %190, %180
  br label %198

198:                                              ; preds = %197, %67
  %199 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %200 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %199, i32 0, i32 3
  %201 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %200, i32 0, i32 1
  %202 = load i32, i32* %201, align 4
  %203 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %204 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %203, i32 0, i32 2
  %205 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %204, i32 0, i32 1
  store i32 %202, i32* %205, align 4
  %206 = load i64, i64* %5, align 8
  %207 = icmp ne i64 %206, 0
  br i1 %207, label %208, label %216

208:                                              ; preds = %198
  %209 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %210 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %209, i32 0, i32 2
  %211 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %210, i32 0, i32 0
  %212 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %213 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %212, i32 0, i32 3
  %214 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %213, i32 0, i32 0
  %215 = call i64 @CRYPT_ConstructBlob(i32* %211, i32* %214)
  store i64 %215, i64* %5, align 8
  br label %216

216:                                              ; preds = %208, %198
  %217 = load i64, i64* %5, align 8
  %218 = icmp ne i64 %217, 0
  br i1 %218, label %219, label %225

219:                                              ; preds = %216
  %220 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %221 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %220, i32 0, i32 1
  %222 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %223 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %222, i32 0, i32 2
  %224 = call i64 @CRYPT_ConstructAttributes(i32* %221, i32* %223)
  store i64 %224, i64* %5, align 8
  br label %225

225:                                              ; preds = %219, %216
  %226 = load i64, i64* %5, align 8
  %227 = icmp ne i64 %226, 0
  br i1 %227, label %228, label %234

228:                                              ; preds = %225
  %229 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %230 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %229, i32 0, i32 0
  %231 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %232 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %231, i32 0, i32 1
  %233 = call i64 @CRYPT_ConstructAttributes(i32* %230, i32* %232)
  store i64 %233, i64* %5, align 8
  br label %234

234:                                              ; preds = %228, %225
  %235 = load i64, i64* %5, align 8
  ret i64 %235
}

declare dso_local i64 @CRYPT_ConstructBlob(i32*, i32*) #1

declare dso_local i64 @CRYPT_ConstructAttributes(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
