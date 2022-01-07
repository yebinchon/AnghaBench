; ModuleID = '/home/carl/AnghaBench/openssl/crypto/x509/extr_by_dir.c_get_cert_by_subject.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/x509/extr_by_dir.c_get_cert_by_subject.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_36__ = type { %struct.TYPE_33__*, i64 }
%struct.TYPE_33__ = type { i32 }
%struct.TYPE_35__ = type { %struct.TYPE_31__, i64 }
%struct.TYPE_31__ = type { %struct.TYPE_37__*, %struct.TYPE_38__* }
%struct.TYPE_37__ = type { %struct.TYPE_34__ }
%struct.TYPE_34__ = type { i32* }
%struct.TYPE_38__ = type { %struct.TYPE_32__ }
%struct.TYPE_32__ = type { i32* }
%struct.TYPE_41__ = type { i32, i32 }
%union.anon = type { %struct.TYPE_38__ }
%struct.TYPE_30__ = type { i32, i32 }
%struct.TYPE_40__ = type { i8*, i64, i32 }
%struct.TYPE_39__ = type { i64, i32 }
%struct.stat = type { i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@X509_LU_X509 = common dso_local global i64 0, align 8
@X509_LU_CRL = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@X509_F_GET_CERT_BY_SUBJECT = common dso_local global i32 0, align 4
@X509_R_WRONG_LOOKUP_TYPE = common dso_local global i32 0, align 4
@ERR_R_BUF_LIB = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"%s%08lx.%s%d\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"%s%c%08lx.%s%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_36__*, i64, i32*, %struct.TYPE_35__*)* @get_cert_by_subject to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_cert_by_subject(%struct.TYPE_36__* %0, i64 %1, i32* %2, %struct.TYPE_35__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_36__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_35__*, align 8
  %10 = alloca %struct.TYPE_41__*, align 8
  %11 = alloca %union.anon, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca %struct.TYPE_30__*, align 8
  %18 = alloca %struct.TYPE_35__, align 8
  %19 = alloca %struct.TYPE_35__*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca %struct.TYPE_40__*, align 8
  %22 = alloca i32, align 4
  %23 = alloca %struct.TYPE_39__, align 8
  %24 = alloca %struct.TYPE_39__*, align 8
  %25 = alloca i8, align 1
  %26 = alloca %struct.stat, align 4
  store %struct.TYPE_36__* %0, %struct.TYPE_36__** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.TYPE_35__* %3, %struct.TYPE_35__** %9, align 8
  store i32 0, i32* %12, align 4
  store %struct.TYPE_30__* null, %struct.TYPE_30__** %17, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %20, align 8
  %27 = load i32*, i32** %8, align 8
  %28 = icmp eq i32* %27, null
  br i1 %28, label %29, label %30

29:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %344

30:                                               ; preds = %4
  %31 = load i64, i64* %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %18, i32 0, i32 1
  store i64 %31, i64* %32, align 8
  %33 = load i64, i64* %7, align 8
  %34 = load i64, i64* @X509_LU_X509, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %44

36:                                               ; preds = %30
  %37 = load i32*, i32** %8, align 8
  %38 = bitcast %union.anon* %11 to %struct.TYPE_38__*
  %39 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %39, i32 0, i32 0
  store i32* %37, i32** %40, align 8
  %41 = bitcast %union.anon* %11 to %struct.TYPE_38__*
  %42 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %18, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %42, i32 0, i32 1
  store %struct.TYPE_38__* %41, %struct.TYPE_38__** %43, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %20, align 8
  br label %61

44:                                               ; preds = %30
  %45 = load i64, i64* %7, align 8
  %46 = load i64, i64* @X509_LU_CRL, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %56

48:                                               ; preds = %44
  %49 = load i32*, i32** %8, align 8
  %50 = bitcast %union.anon* %11 to %struct.TYPE_37__*
  %51 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %51, i32 0, i32 0
  store i32* %49, i32** %52, align 8
  %53 = bitcast %union.anon* %11 to %struct.TYPE_37__*
  %54 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %18, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %54, i32 0, i32 0
  store %struct.TYPE_37__* %53, %struct.TYPE_37__** %55, align 8
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8** %20, align 8
  br label %60

56:                                               ; preds = %44
  %57 = load i32, i32* @X509_F_GET_CERT_BY_SUBJECT, align 4
  %58 = load i32, i32* @X509_R_WRONG_LOOKUP_TYPE, align 4
  %59 = call i32 @X509err(i32 %57, i32 %58)
  br label %340

60:                                               ; preds = %48
  br label %61

61:                                               ; preds = %60, %36
  %62 = call %struct.TYPE_30__* (...) @BUF_MEM_new()
  store %struct.TYPE_30__* %62, %struct.TYPE_30__** %17, align 8
  %63 = icmp eq %struct.TYPE_30__* %62, null
  br i1 %63, label %64, label %68

64:                                               ; preds = %61
  %65 = load i32, i32* @X509_F_GET_CERT_BY_SUBJECT, align 4
  %66 = load i32, i32* @ERR_R_BUF_LIB, align 4
  %67 = call i32 @X509err(i32 %65, i32 %66)
  br label %340

68:                                               ; preds = %61
  %69 = load %struct.TYPE_36__*, %struct.TYPE_36__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = inttoptr i64 %71 to %struct.TYPE_41__*
  store %struct.TYPE_41__* %72, %struct.TYPE_41__** %10, align 8
  %73 = load i32*, i32** %8, align 8
  %74 = call i64 @X509_NAME_hash(i32* %73)
  store i64 %74, i64* %16, align 8
  store i32 0, i32* %13, align 4
  br label %75

75:                                               ; preds = %336, %68
  %76 = load i32, i32* %13, align 4
  %77 = load %struct.TYPE_41__*, %struct.TYPE_41__** %10, align 8
  %78 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @sk_BY_DIR_ENTRY_num(i32 %79)
  %81 = icmp slt i32 %76, %80
  br i1 %81, label %82, label %339

82:                                               ; preds = %75
  %83 = load %struct.TYPE_41__*, %struct.TYPE_41__** %10, align 8
  %84 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* %13, align 4
  %87 = call %struct.TYPE_40__* @sk_BY_DIR_ENTRY_value(i32 %85, i32 %86)
  store %struct.TYPE_40__* %87, %struct.TYPE_40__** %21, align 8
  %88 = load %struct.TYPE_40__*, %struct.TYPE_40__** %21, align 8
  %89 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %88, i32 0, i32 0
  %90 = load i8*, i8** %89, align 8
  %91 = call i32 @strlen(i8* %90)
  %92 = add nsw i32 %91, 1
  %93 = add nsw i32 %92, 8
  %94 = add nsw i32 %93, 6
  %95 = add nsw i32 %94, 1
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %14, align 4
  %97 = load %struct.TYPE_30__*, %struct.TYPE_30__** %17, align 8
  %98 = load i32, i32* %14, align 4
  %99 = call i32 @BUF_MEM_grow(%struct.TYPE_30__* %97, i32 %98)
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %105, label %101

101:                                              ; preds = %82
  %102 = load i32, i32* @X509_F_GET_CERT_BY_SUBJECT, align 4
  %103 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %104 = call i32 @X509err(i32 %102, i32 %103)
  br label %340

105:                                              ; preds = %82
  %106 = load i64, i64* %7, align 8
  %107 = load i64, i64* @X509_LU_CRL, align 8
  %108 = icmp eq i64 %106, %107
  br i1 %108, label %109, label %142

109:                                              ; preds = %105
  %110 = load %struct.TYPE_40__*, %struct.TYPE_40__** %21, align 8
  %111 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %142

114:                                              ; preds = %109
  %115 = load i64, i64* %16, align 8
  %116 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %23, i32 0, i32 0
  store i64 %115, i64* %116, align 8
  %117 = load %struct.TYPE_41__*, %struct.TYPE_41__** %10, align 8
  %118 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @CRYPTO_THREAD_read_lock(i32 %119)
  %121 = load %struct.TYPE_40__*, %struct.TYPE_40__** %21, align 8
  %122 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %121, i32 0, i32 1
  %123 = load i64, i64* %122, align 8
  %124 = call i32 @sk_BY_DIR_HASH_find(i64 %123, %struct.TYPE_39__* %23)
  store i32 %124, i32* %22, align 4
  %125 = load i32, i32* %22, align 4
  %126 = icmp sge i32 %125, 0
  br i1 %126, label %127, label %136

127:                                              ; preds = %114
  %128 = load %struct.TYPE_40__*, %struct.TYPE_40__** %21, align 8
  %129 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %128, i32 0, i32 1
  %130 = load i64, i64* %129, align 8
  %131 = load i32, i32* %22, align 4
  %132 = call %struct.TYPE_39__* @sk_BY_DIR_HASH_value(i64 %130, i32 %131)
  store %struct.TYPE_39__* %132, %struct.TYPE_39__** %24, align 8
  %133 = load %struct.TYPE_39__*, %struct.TYPE_39__** %24, align 8
  %134 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 8
  store i32 %135, i32* %15, align 4
  br label %137

136:                                              ; preds = %114
  store %struct.TYPE_39__* null, %struct.TYPE_39__** %24, align 8
  store i32 0, i32* %15, align 4
  br label %137

137:                                              ; preds = %136, %127
  %138 = load %struct.TYPE_41__*, %struct.TYPE_41__** %10, align 8
  %139 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = call i32 @CRYPTO_THREAD_unlock(i32 %140)
  br label %143

142:                                              ; preds = %109, %105
  store i32 0, i32* %15, align 4
  store %struct.TYPE_39__* null, %struct.TYPE_39__** %24, align 8
  br label %143

143:                                              ; preds = %142, %137
  br label %144

144:                                              ; preds = %218, %143
  store i8 47, i8* %25, align 1
  %145 = load i8, i8* %25, align 1
  %146 = sext i8 %145 to i32
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %148, label %163

148:                                              ; preds = %144
  %149 = load %struct.TYPE_30__*, %struct.TYPE_30__** %17, align 8
  %150 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = load %struct.TYPE_30__*, %struct.TYPE_30__** %17, align 8
  %153 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = load %struct.TYPE_40__*, %struct.TYPE_40__** %21, align 8
  %156 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %155, i32 0, i32 0
  %157 = load i8*, i8** %156, align 8
  %158 = load i64, i64* %16, align 8
  %159 = trunc i64 %158 to i8
  %160 = load i8*, i8** %20, align 8
  %161 = load i32, i32* %15, align 4
  %162 = call i32 (i32, i32, i8*, i8*, i8, ...) @BIO_snprintf(i32 %151, i32 %154, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8* %157, i8 signext %159, i8* %160, i32 %161)
  br label %178

163:                                              ; preds = %144
  %164 = load %struct.TYPE_30__*, %struct.TYPE_30__** %17, align 8
  %165 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = load %struct.TYPE_30__*, %struct.TYPE_30__** %17, align 8
  %168 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 4
  %170 = load %struct.TYPE_40__*, %struct.TYPE_40__** %21, align 8
  %171 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %170, i32 0, i32 0
  %172 = load i8*, i8** %171, align 8
  %173 = load i8, i8* %25, align 1
  %174 = load i64, i64* %16, align 8
  %175 = load i8*, i8** %20, align 8
  %176 = load i32, i32* %15, align 4
  %177 = call i32 (i32, i32, i8*, i8*, i8, ...) @BIO_snprintf(i32 %166, i32 %169, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i8* %172, i8 signext %173, i64 %174, i8* %175, i32 %176)
  br label %178

178:                                              ; preds = %163, %148
  %179 = load %struct.TYPE_30__*, %struct.TYPE_30__** %17, align 8
  %180 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 4
  %182 = call i64 @stat(i32 %181, %struct.stat* %26)
  %183 = icmp slt i64 %182, 0
  br i1 %183, label %184, label %185

184:                                              ; preds = %178
  br label %221

185:                                              ; preds = %178
  %186 = load i64, i64* %7, align 8
  %187 = load i64, i64* @X509_LU_X509, align 8
  %188 = icmp eq i64 %186, %187
  br i1 %188, label %189, label %201

189:                                              ; preds = %185
  %190 = load %struct.TYPE_36__*, %struct.TYPE_36__** %6, align 8
  %191 = load %struct.TYPE_30__*, %struct.TYPE_30__** %17, align 8
  %192 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 4
  %194 = load %struct.TYPE_40__*, %struct.TYPE_40__** %21, align 8
  %195 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %194, i32 0, i32 2
  %196 = load i32, i32* %195, align 8
  %197 = call i64 @X509_load_cert_file(%struct.TYPE_36__* %190, i32 %193, i32 %196)
  %198 = icmp eq i64 %197, 0
  br i1 %198, label %199, label %200

199:                                              ; preds = %189
  br label %221

200:                                              ; preds = %189
  br label %218

201:                                              ; preds = %185
  %202 = load i64, i64* %7, align 8
  %203 = load i64, i64* @X509_LU_CRL, align 8
  %204 = icmp eq i64 %202, %203
  br i1 %204, label %205, label %217

205:                                              ; preds = %201
  %206 = load %struct.TYPE_36__*, %struct.TYPE_36__** %6, align 8
  %207 = load %struct.TYPE_30__*, %struct.TYPE_30__** %17, align 8
  %208 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 4
  %210 = load %struct.TYPE_40__*, %struct.TYPE_40__** %21, align 8
  %211 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %210, i32 0, i32 2
  %212 = load i32, i32* %211, align 8
  %213 = call i64 @X509_load_crl_file(%struct.TYPE_36__* %206, i32 %209, i32 %212)
  %214 = icmp eq i64 %213, 0
  br i1 %214, label %215, label %216

215:                                              ; preds = %205
  br label %221

216:                                              ; preds = %205
  br label %217

217:                                              ; preds = %216, %201
  br label %218

218:                                              ; preds = %217, %200
  %219 = load i32, i32* %15, align 4
  %220 = add nsw i32 %219, 1
  store i32 %220, i32* %15, align 4
  br label %144

221:                                              ; preds = %215, %199, %184
  %222 = load %struct.TYPE_36__*, %struct.TYPE_36__** %6, align 8
  %223 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %222, i32 0, i32 0
  %224 = load %struct.TYPE_33__*, %struct.TYPE_33__** %223, align 8
  %225 = call i32 @X509_STORE_lock(%struct.TYPE_33__* %224)
  %226 = load %struct.TYPE_36__*, %struct.TYPE_36__** %6, align 8
  %227 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %226, i32 0, i32 0
  %228 = load %struct.TYPE_33__*, %struct.TYPE_33__** %227, align 8
  %229 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %228, i32 0, i32 0
  %230 = load i32, i32* %229, align 4
  %231 = call i32 @sk_X509_OBJECT_find(i32 %230, %struct.TYPE_35__* %18)
  store i32 %231, i32* %14, align 4
  %232 = load %struct.TYPE_36__*, %struct.TYPE_36__** %6, align 8
  %233 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %232, i32 0, i32 0
  %234 = load %struct.TYPE_33__*, %struct.TYPE_33__** %233, align 8
  %235 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %234, i32 0, i32 0
  %236 = load i32, i32* %235, align 4
  %237 = load i32, i32* %14, align 4
  %238 = call %struct.TYPE_35__* @sk_X509_OBJECT_value(i32 %236, i32 %237)
  store %struct.TYPE_35__* %238, %struct.TYPE_35__** %19, align 8
  %239 = load %struct.TYPE_36__*, %struct.TYPE_36__** %6, align 8
  %240 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %239, i32 0, i32 0
  %241 = load %struct.TYPE_33__*, %struct.TYPE_33__** %240, align 8
  %242 = call i32 @X509_STORE_unlock(%struct.TYPE_33__* %241)
  %243 = load i64, i64* %7, align 8
  %244 = load i64, i64* @X509_LU_CRL, align 8
  %245 = icmp eq i64 %243, %244
  br i1 %245, label %246, label %320

246:                                              ; preds = %221
  %247 = load %struct.TYPE_41__*, %struct.TYPE_41__** %10, align 8
  %248 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %247, i32 0, i32 0
  %249 = load i32, i32* %248, align 4
  %250 = call i32 @CRYPTO_THREAD_write_lock(i32 %249)
  %251 = load %struct.TYPE_39__*, %struct.TYPE_39__** %24, align 8
  %252 = icmp eq %struct.TYPE_39__* %251, null
  br i1 %252, label %253, label %265

253:                                              ; preds = %246
  %254 = load i64, i64* %16, align 8
  %255 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %23, i32 0, i32 0
  store i64 %254, i64* %255, align 8
  %256 = load %struct.TYPE_40__*, %struct.TYPE_40__** %21, align 8
  %257 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %256, i32 0, i32 1
  %258 = load i64, i64* %257, align 8
  %259 = call i32 @sk_BY_DIR_HASH_find(i64 %258, %struct.TYPE_39__* %23)
  store i32 %259, i32* %22, align 4
  %260 = load %struct.TYPE_40__*, %struct.TYPE_40__** %21, align 8
  %261 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %260, i32 0, i32 1
  %262 = load i64, i64* %261, align 8
  %263 = load i32, i32* %22, align 4
  %264 = call %struct.TYPE_39__* @sk_BY_DIR_HASH_value(i64 %262, i32 %263)
  store %struct.TYPE_39__* %264, %struct.TYPE_39__** %24, align 8
  br label %265

265:                                              ; preds = %253, %246
  %266 = load %struct.TYPE_39__*, %struct.TYPE_39__** %24, align 8
  %267 = icmp eq %struct.TYPE_39__* %266, null
  br i1 %267, label %268, label %304

268:                                              ; preds = %265
  %269 = call %struct.TYPE_39__* @OPENSSL_malloc(i32 16)
  store %struct.TYPE_39__* %269, %struct.TYPE_39__** %24, align 8
  %270 = load %struct.TYPE_39__*, %struct.TYPE_39__** %24, align 8
  %271 = icmp eq %struct.TYPE_39__* %270, null
  br i1 %271, label %272, label %280

272:                                              ; preds = %268
  %273 = load %struct.TYPE_41__*, %struct.TYPE_41__** %10, align 8
  %274 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %273, i32 0, i32 0
  %275 = load i32, i32* %274, align 4
  %276 = call i32 @CRYPTO_THREAD_unlock(i32 %275)
  %277 = load i32, i32* @X509_F_GET_CERT_BY_SUBJECT, align 4
  %278 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %279 = call i32 @X509err(i32 %277, i32 %278)
  store i32 0, i32* %12, align 4
  br label %340

280:                                              ; preds = %268
  %281 = load i64, i64* %16, align 8
  %282 = load %struct.TYPE_39__*, %struct.TYPE_39__** %24, align 8
  %283 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %282, i32 0, i32 0
  store i64 %281, i64* %283, align 8
  %284 = load i32, i32* %15, align 4
  %285 = load %struct.TYPE_39__*, %struct.TYPE_39__** %24, align 8
  %286 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %285, i32 0, i32 1
  store i32 %284, i32* %286, align 8
  %287 = load %struct.TYPE_40__*, %struct.TYPE_40__** %21, align 8
  %288 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %287, i32 0, i32 1
  %289 = load i64, i64* %288, align 8
  %290 = load %struct.TYPE_39__*, %struct.TYPE_39__** %24, align 8
  %291 = call i32 @sk_BY_DIR_HASH_push(i64 %289, %struct.TYPE_39__* %290)
  %292 = icmp ne i32 %291, 0
  br i1 %292, label %303, label %293

293:                                              ; preds = %280
  %294 = load %struct.TYPE_41__*, %struct.TYPE_41__** %10, align 8
  %295 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %294, i32 0, i32 0
  %296 = load i32, i32* %295, align 4
  %297 = call i32 @CRYPTO_THREAD_unlock(i32 %296)
  %298 = load %struct.TYPE_39__*, %struct.TYPE_39__** %24, align 8
  %299 = call i32 @OPENSSL_free(%struct.TYPE_39__* %298)
  %300 = load i32, i32* @X509_F_GET_CERT_BY_SUBJECT, align 4
  %301 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %302 = call i32 @X509err(i32 %300, i32 %301)
  store i32 0, i32* %12, align 4
  br label %340

303:                                              ; preds = %280
  br label %315

304:                                              ; preds = %265
  %305 = load %struct.TYPE_39__*, %struct.TYPE_39__** %24, align 8
  %306 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %305, i32 0, i32 1
  %307 = load i32, i32* %306, align 8
  %308 = load i32, i32* %15, align 4
  %309 = icmp slt i32 %307, %308
  br i1 %309, label %310, label %314

310:                                              ; preds = %304
  %311 = load i32, i32* %15, align 4
  %312 = load %struct.TYPE_39__*, %struct.TYPE_39__** %24, align 8
  %313 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %312, i32 0, i32 1
  store i32 %311, i32* %313, align 8
  br label %314

314:                                              ; preds = %310, %304
  br label %315

315:                                              ; preds = %314, %303
  %316 = load %struct.TYPE_41__*, %struct.TYPE_41__** %10, align 8
  %317 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %316, i32 0, i32 0
  %318 = load i32, i32* %317, align 4
  %319 = call i32 @CRYPTO_THREAD_unlock(i32 %318)
  br label %320

320:                                              ; preds = %315, %221
  %321 = load %struct.TYPE_35__*, %struct.TYPE_35__** %19, align 8
  %322 = icmp ne %struct.TYPE_35__* %321, null
  br i1 %322, label %323, label %335

323:                                              ; preds = %320
  store i32 1, i32* %12, align 4
  %324 = load %struct.TYPE_35__*, %struct.TYPE_35__** %19, align 8
  %325 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %324, i32 0, i32 1
  %326 = load i64, i64* %325, align 8
  %327 = load %struct.TYPE_35__*, %struct.TYPE_35__** %9, align 8
  %328 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %327, i32 0, i32 1
  store i64 %326, i64* %328, align 8
  %329 = load %struct.TYPE_35__*, %struct.TYPE_35__** %9, align 8
  %330 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %329, i32 0, i32 0
  %331 = load %struct.TYPE_35__*, %struct.TYPE_35__** %19, align 8
  %332 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %331, i32 0, i32 0
  %333 = call i32 @memcpy(%struct.TYPE_31__* %330, %struct.TYPE_31__* %332, i32 16)
  %334 = call i32 (...) @ERR_clear_error()
  br label %340

335:                                              ; preds = %320
  br label %336

336:                                              ; preds = %335
  %337 = load i32, i32* %13, align 4
  %338 = add nsw i32 %337, 1
  store i32 %338, i32* %13, align 4
  br label %75

339:                                              ; preds = %75
  br label %340

340:                                              ; preds = %339, %323, %293, %272, %101, %64, %56
  %341 = load %struct.TYPE_30__*, %struct.TYPE_30__** %17, align 8
  %342 = call i32 @BUF_MEM_free(%struct.TYPE_30__* %341)
  %343 = load i32, i32* %12, align 4
  store i32 %343, i32* %5, align 4
  br label %344

344:                                              ; preds = %340, %29
  %345 = load i32, i32* %5, align 4
  ret i32 %345
}

declare dso_local i32 @X509err(i32, i32) #1

declare dso_local %struct.TYPE_30__* @BUF_MEM_new(...) #1

declare dso_local i64 @X509_NAME_hash(i32*) #1

declare dso_local i32 @sk_BY_DIR_ENTRY_num(i32) #1

declare dso_local %struct.TYPE_40__* @sk_BY_DIR_ENTRY_value(i32, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @BUF_MEM_grow(%struct.TYPE_30__*, i32) #1

declare dso_local i32 @CRYPTO_THREAD_read_lock(i32) #1

declare dso_local i32 @sk_BY_DIR_HASH_find(i64, %struct.TYPE_39__*) #1

declare dso_local %struct.TYPE_39__* @sk_BY_DIR_HASH_value(i64, i32) #1

declare dso_local i32 @CRYPTO_THREAD_unlock(i32) #1

declare dso_local i32 @BIO_snprintf(i32, i32, i8*, i8*, i8 signext, ...) #1

declare dso_local i64 @stat(i32, %struct.stat*) #1

declare dso_local i64 @X509_load_cert_file(%struct.TYPE_36__*, i32, i32) #1

declare dso_local i64 @X509_load_crl_file(%struct.TYPE_36__*, i32, i32) #1

declare dso_local i32 @X509_STORE_lock(%struct.TYPE_33__*) #1

declare dso_local i32 @sk_X509_OBJECT_find(i32, %struct.TYPE_35__*) #1

declare dso_local %struct.TYPE_35__* @sk_X509_OBJECT_value(i32, i32) #1

declare dso_local i32 @X509_STORE_unlock(%struct.TYPE_33__*) #1

declare dso_local i32 @CRYPTO_THREAD_write_lock(i32) #1

declare dso_local %struct.TYPE_39__* @OPENSSL_malloc(i32) #1

declare dso_local i32 @sk_BY_DIR_HASH_push(i64, %struct.TYPE_39__*) #1

declare dso_local i32 @OPENSSL_free(%struct.TYPE_39__*) #1

declare dso_local i32 @memcpy(%struct.TYPE_31__*, %struct.TYPE_31__*, i32) #1

declare dso_local i32 @ERR_clear_error(...) #1

declare dso_local i32 @BUF_MEM_free(%struct.TYPE_30__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
