; ModuleID = '/home/carl/AnghaBench/openssl/crypto/x509/extr_v3_pci.c_process_pci_value.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/x509/extr_v3_pci.c_process_pci_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i8*, i32 }
%struct.TYPE_10__ = type { i8*, i64 }

@.str = private unnamed_addr constant [9 x i8] c"language\00", align 1
@X509V3_F_PROCESS_PCI_VALUE = common dso_local global i32 0, align 4
@X509V3_R_POLICY_LANGUAGE_ALREADY_DEFINED = common dso_local global i32 0, align 4
@X509V3_R_INVALID_OBJECT_IDENTIFIER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"pathlen\00", align 1
@X509V3_R_POLICY_PATH_LENGTH_ALREADY_DEFINED = common dso_local global i32 0, align 4
@X509V3_R_POLICY_PATH_LENGTH = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"policy\00", align 1
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"hex:\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"file:\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@ERR_R_BIO_LIB = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [6 x i8] c"text:\00", align 1
@X509V3_R_INCORRECT_POLICY_SYNTAX_TAG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i32**, i32**, %struct.TYPE_10__**)* @process_pci_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_pci_value(%struct.TYPE_9__* %0, i32** %1, i32** %2, %struct.TYPE_10__** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i32**, align 8
  %8 = alloca i32**, align 8
  %9 = alloca %struct.TYPE_10__**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca [2048 x i8], align 16
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %6, align 8
  store i32** %1, i32*** %7, align 8
  store i32** %2, i32*** %8, align 8
  store %struct.TYPE_10__** %3, %struct.TYPE_10__*** %9, align 8
  store i32 0, i32* %10, align 4
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = call i64 @strcmp(i32 %19, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %46

22:                                               ; preds = %4
  %23 = load i32**, i32*** %7, align 8
  %24 = load i32*, i32** %23, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %26, label %32

26:                                               ; preds = %22
  %27 = load i32, i32* @X509V3_F_PROCESS_PCI_VALUE, align 4
  %28 = load i32, i32* @X509V3_R_POLICY_LANGUAGE_ALREADY_DEFINED, align 4
  %29 = call i32 @X509V3err(i32 %27, i32 %28)
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %31 = call i32 @X509V3_conf_err(%struct.TYPE_9__* %30)
  store i32 0, i32* %5, align 4
  br label %414

32:                                               ; preds = %22
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  %36 = call i32* @OBJ_txt2obj(i8* %35, i32 0)
  %37 = load i32**, i32*** %7, align 8
  store i32* %36, i32** %37, align 8
  %38 = icmp eq i32* %36, null
  br i1 %38, label %39, label %45

39:                                               ; preds = %32
  %40 = load i32, i32* @X509V3_F_PROCESS_PCI_VALUE, align 4
  %41 = load i32, i32* @X509V3_R_INVALID_OBJECT_IDENTIFIER, align 4
  %42 = call i32 @X509V3err(i32 %40, i32 %41)
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %44 = call i32 @X509V3_conf_err(%struct.TYPE_9__* %43)
  store i32 0, i32* %5, align 4
  br label %414

45:                                               ; preds = %32
  br label %404

46:                                               ; preds = %4
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = call i64 @strcmp(i32 %49, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %74

52:                                               ; preds = %46
  %53 = load i32**, i32*** %8, align 8
  %54 = load i32*, i32** %53, align 8
  %55 = icmp ne i32* %54, null
  br i1 %55, label %56, label %62

56:                                               ; preds = %52
  %57 = load i32, i32* @X509V3_F_PROCESS_PCI_VALUE, align 4
  %58 = load i32, i32* @X509V3_R_POLICY_PATH_LENGTH_ALREADY_DEFINED, align 4
  %59 = call i32 @X509V3err(i32 %57, i32 %58)
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %61 = call i32 @X509V3_conf_err(%struct.TYPE_9__* %60)
  store i32 0, i32* %5, align 4
  br label %414

62:                                               ; preds = %52
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %64 = load i32**, i32*** %8, align 8
  %65 = call i32 @X509V3_get_value_int(%struct.TYPE_9__* %63, i32** %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %73, label %67

67:                                               ; preds = %62
  %68 = load i32, i32* @X509V3_F_PROCESS_PCI_VALUE, align 4
  %69 = load i32, i32* @X509V3_R_POLICY_PATH_LENGTH, align 4
  %70 = call i32 @X509V3err(i32 %68, i32 %69)
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %72 = call i32 @X509V3_conf_err(%struct.TYPE_9__* %71)
  store i32 0, i32* %5, align 4
  br label %414

73:                                               ; preds = %62
  br label %403

74:                                               ; preds = %46
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = call i64 @strcmp(i32 %77, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %79 = icmp eq i64 %78, 0
  br i1 %79, label %80, label %402

80:                                               ; preds = %74
  store i8* null, i8** %11, align 8
  %81 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %9, align 8
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %81, align 8
  %83 = icmp eq %struct.TYPE_10__* %82, null
  br i1 %83, label %84, label %97

84:                                               ; preds = %80
  %85 = call %struct.TYPE_10__* (...) @ASN1_OCTET_STRING_new()
  %86 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %9, align 8
  store %struct.TYPE_10__* %85, %struct.TYPE_10__** %86, align 8
  %87 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %9, align 8
  %88 = load %struct.TYPE_10__*, %struct.TYPE_10__** %87, align 8
  %89 = icmp eq %struct.TYPE_10__* %88, null
  br i1 %89, label %90, label %96

90:                                               ; preds = %84
  %91 = load i32, i32* @X509V3_F_PROCESS_PCI_VALUE, align 4
  %92 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %93 = call i32 @X509V3err(i32 %91, i32 %92)
  %94 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %95 = call i32 @X509V3_conf_err(%struct.TYPE_9__* %94)
  store i32 0, i32* %5, align 4
  br label %414

96:                                               ; preds = %84
  store i32 1, i32* %10, align 4
  br label %97

97:                                               ; preds = %96, %80
  %98 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %98, i32 0, i32 0
  %100 = load i8*, i8** %99, align 8
  %101 = call i64 @strncmp(i8* %100, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 4)
  %102 = icmp eq i64 %101, 0
  br i1 %102, label %103, label %183

103:                                              ; preds = %97
  %104 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %105 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %104, i32 0, i32 0
  %106 = load i8*, i8** %105, align 8
  %107 = getelementptr inbounds i8, i8* %106, i64 4
  %108 = call i8* @OPENSSL_hexstr2buf(i8* %107, i64* %12)
  store i8* %108, i8** %13, align 8
  %109 = load i8*, i8** %13, align 8
  %110 = icmp ne i8* %109, null
  br i1 %110, label %114, label %111

111:                                              ; preds = %103
  %112 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %113 = call i32 @X509V3_conf_err(%struct.TYPE_9__* %112)
  br label %405

114:                                              ; preds = %103
  %115 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %9, align 8
  %116 = load %struct.TYPE_10__*, %struct.TYPE_10__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %116, i32 0, i32 0
  %118 = load i8*, i8** %117, align 8
  %119 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %9, align 8
  %120 = load %struct.TYPE_10__*, %struct.TYPE_10__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %120, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  %123 = load i64, i64* %12, align 8
  %124 = add nsw i64 %122, %123
  %125 = add nsw i64 %124, 1
  %126 = call i8* @OPENSSL_realloc(i8* %118, i64 %125)
  store i8* %126, i8** %11, align 8
  %127 = load i8*, i8** %11, align 8
  %128 = icmp ne i8* %127, null
  br i1 %128, label %129, label %161

129:                                              ; preds = %114
  %130 = load i8*, i8** %11, align 8
  %131 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %9, align 8
  %132 = load %struct.TYPE_10__*, %struct.TYPE_10__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %132, i32 0, i32 0
  store i8* %130, i8** %133, align 8
  %134 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %9, align 8
  %135 = load %struct.TYPE_10__*, %struct.TYPE_10__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %135, i32 0, i32 0
  %137 = load i8*, i8** %136, align 8
  %138 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %9, align 8
  %139 = load %struct.TYPE_10__*, %struct.TYPE_10__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %139, i32 0, i32 1
  %141 = load i64, i64* %140, align 8
  %142 = getelementptr inbounds i8, i8* %137, i64 %141
  %143 = load i8*, i8** %13, align 8
  %144 = load i64, i64* %12, align 8
  %145 = call i32 @memcpy(i8* %142, i8* %143, i64 %144)
  %146 = load i64, i64* %12, align 8
  %147 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %9, align 8
  %148 = load %struct.TYPE_10__*, %struct.TYPE_10__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %148, i32 0, i32 1
  %150 = load i64, i64* %149, align 8
  %151 = add nsw i64 %150, %146
  store i64 %151, i64* %149, align 8
  %152 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %9, align 8
  %153 = load %struct.TYPE_10__*, %struct.TYPE_10__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %153, i32 0, i32 0
  %155 = load i8*, i8** %154, align 8
  %156 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %9, align 8
  %157 = load %struct.TYPE_10__*, %struct.TYPE_10__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %157, i32 0, i32 1
  %159 = load i64, i64* %158, align 8
  %160 = getelementptr inbounds i8, i8* %155, i64 %159
  store i8 0, i8* %160, align 1
  br label %180

161:                                              ; preds = %114
  %162 = load i8*, i8** %13, align 8
  %163 = call i32 @OPENSSL_free(i8* %162)
  %164 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %9, align 8
  %165 = load %struct.TYPE_10__*, %struct.TYPE_10__** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %165, i32 0, i32 0
  %167 = load i8*, i8** %166, align 8
  %168 = call i32 @OPENSSL_free(i8* %167)
  %169 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %9, align 8
  %170 = load %struct.TYPE_10__*, %struct.TYPE_10__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %170, i32 0, i32 0
  store i8* null, i8** %171, align 8
  %172 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %9, align 8
  %173 = load %struct.TYPE_10__*, %struct.TYPE_10__** %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %173, i32 0, i32 1
  store i64 0, i64* %174, align 8
  %175 = load i32, i32* @X509V3_F_PROCESS_PCI_VALUE, align 4
  %176 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %177 = call i32 @X509V3err(i32 %175, i32 %176)
  %178 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %179 = call i32 @X509V3_conf_err(%struct.TYPE_9__* %178)
  br label %405

180:                                              ; preds = %129
  %181 = load i8*, i8** %13, align 8
  %182 = call i32 @OPENSSL_free(i8* %181)
  br label %392

183:                                              ; preds = %97
  %184 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %185 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %184, i32 0, i32 0
  %186 = load i8*, i8** %185, align 8
  %187 = call i64 @strncmp(i8* %186, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 5)
  %188 = icmp eq i64 %187, 0
  br i1 %188, label %189, label %305

189:                                              ; preds = %183
  %190 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %191 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %190, i32 0, i32 0
  %192 = load i8*, i8** %191, align 8
  %193 = getelementptr inbounds i8, i8* %192, i64 5
  %194 = call i32* @BIO_new_file(i8* %193, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  store i32* %194, i32** %16, align 8
  %195 = load i32*, i32** %16, align 8
  %196 = icmp ne i32* %195, null
  br i1 %196, label %203, label %197

197:                                              ; preds = %189
  %198 = load i32, i32* @X509V3_F_PROCESS_PCI_VALUE, align 4
  %199 = load i32, i32* @ERR_R_BIO_LIB, align 4
  %200 = call i32 @X509V3err(i32 %198, i32 %199)
  %201 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %202 = call i32 @X509V3_conf_err(%struct.TYPE_9__* %201)
  br label %405

203:                                              ; preds = %189
  br label %204

204:                                              ; preds = %259, %223, %203
  %205 = load i32*, i32** %16, align 8
  %206 = getelementptr inbounds [2048 x i8], [2048 x i8]* %14, i64 0, i64 0
  %207 = call i32 @BIO_read(i32* %205, i8* %206, i32 2048)
  store i32 %207, i32* %15, align 4
  %208 = icmp sgt i32 %207, 0
  br i1 %208, label %218, label %209

209:                                              ; preds = %204
  %210 = load i32, i32* %15, align 4
  %211 = icmp eq i32 %210, 0
  br i1 %211, label %212, label %216

212:                                              ; preds = %209
  %213 = load i32*, i32** %16, align 8
  %214 = call i64 @BIO_should_retry(i32* %213)
  %215 = icmp ne i64 %214, 0
  br label %216

216:                                              ; preds = %212, %209
  %217 = phi i1 [ false, %209 ], [ %215, %212 ]
  br label %218

218:                                              ; preds = %216, %204
  %219 = phi i1 [ true, %204 ], [ %217, %216 ]
  br i1 %219, label %220, label %293

220:                                              ; preds = %218
  %221 = load i32, i32* %15, align 4
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %224, label %223

223:                                              ; preds = %220
  br label %204

224:                                              ; preds = %220
  %225 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %9, align 8
  %226 = load %struct.TYPE_10__*, %struct.TYPE_10__** %225, align 8
  %227 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %226, i32 0, i32 0
  %228 = load i8*, i8** %227, align 8
  %229 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %9, align 8
  %230 = load %struct.TYPE_10__*, %struct.TYPE_10__** %229, align 8
  %231 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %230, i32 0, i32 1
  %232 = load i64, i64* %231, align 8
  %233 = load i32, i32* %15, align 4
  %234 = sext i32 %233 to i64
  %235 = add nsw i64 %232, %234
  %236 = add nsw i64 %235, 1
  %237 = call i8* @OPENSSL_realloc(i8* %228, i64 %236)
  store i8* %237, i8** %11, align 8
  %238 = load i8*, i8** %11, align 8
  %239 = icmp ne i8* %238, null
  br i1 %239, label %259, label %240

240:                                              ; preds = %224
  %241 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %9, align 8
  %242 = load %struct.TYPE_10__*, %struct.TYPE_10__** %241, align 8
  %243 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %242, i32 0, i32 0
  %244 = load i8*, i8** %243, align 8
  %245 = call i32 @OPENSSL_free(i8* %244)
  %246 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %9, align 8
  %247 = load %struct.TYPE_10__*, %struct.TYPE_10__** %246, align 8
  %248 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %247, i32 0, i32 0
  store i8* null, i8** %248, align 8
  %249 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %9, align 8
  %250 = load %struct.TYPE_10__*, %struct.TYPE_10__** %249, align 8
  %251 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %250, i32 0, i32 1
  store i64 0, i64* %251, align 8
  %252 = load i32, i32* @X509V3_F_PROCESS_PCI_VALUE, align 4
  %253 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %254 = call i32 @X509V3err(i32 %252, i32 %253)
  %255 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %256 = call i32 @X509V3_conf_err(%struct.TYPE_9__* %255)
  %257 = load i32*, i32** %16, align 8
  %258 = call i32 @BIO_free_all(i32* %257)
  br label %405

259:                                              ; preds = %224
  %260 = load i8*, i8** %11, align 8
  %261 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %9, align 8
  %262 = load %struct.TYPE_10__*, %struct.TYPE_10__** %261, align 8
  %263 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %262, i32 0, i32 0
  store i8* %260, i8** %263, align 8
  %264 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %9, align 8
  %265 = load %struct.TYPE_10__*, %struct.TYPE_10__** %264, align 8
  %266 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %265, i32 0, i32 0
  %267 = load i8*, i8** %266, align 8
  %268 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %9, align 8
  %269 = load %struct.TYPE_10__*, %struct.TYPE_10__** %268, align 8
  %270 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %269, i32 0, i32 1
  %271 = load i64, i64* %270, align 8
  %272 = getelementptr inbounds i8, i8* %267, i64 %271
  %273 = getelementptr inbounds [2048 x i8], [2048 x i8]* %14, i64 0, i64 0
  %274 = load i32, i32* %15, align 4
  %275 = sext i32 %274 to i64
  %276 = call i32 @memcpy(i8* %272, i8* %273, i64 %275)
  %277 = load i32, i32* %15, align 4
  %278 = sext i32 %277 to i64
  %279 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %9, align 8
  %280 = load %struct.TYPE_10__*, %struct.TYPE_10__** %279, align 8
  %281 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %280, i32 0, i32 1
  %282 = load i64, i64* %281, align 8
  %283 = add nsw i64 %282, %278
  store i64 %283, i64* %281, align 8
  %284 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %9, align 8
  %285 = load %struct.TYPE_10__*, %struct.TYPE_10__** %284, align 8
  %286 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %285, i32 0, i32 0
  %287 = load i8*, i8** %286, align 8
  %288 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %9, align 8
  %289 = load %struct.TYPE_10__*, %struct.TYPE_10__** %288, align 8
  %290 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %289, i32 0, i32 1
  %291 = load i64, i64* %290, align 8
  %292 = getelementptr inbounds i8, i8* %287, i64 %291
  store i8 0, i8* %292, align 1
  br label %204

293:                                              ; preds = %218
  %294 = load i32*, i32** %16, align 8
  %295 = call i32 @BIO_free_all(i32* %294)
  %296 = load i32, i32* %15, align 4
  %297 = icmp slt i32 %296, 0
  br i1 %297, label %298, label %304

298:                                              ; preds = %293
  %299 = load i32, i32* @X509V3_F_PROCESS_PCI_VALUE, align 4
  %300 = load i32, i32* @ERR_R_BIO_LIB, align 4
  %301 = call i32 @X509V3err(i32 %299, i32 %300)
  %302 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %303 = call i32 @X509V3_conf_err(%struct.TYPE_9__* %302)
  br label %405

304:                                              ; preds = %293
  br label %391

305:                                              ; preds = %183
  %306 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %307 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %306, i32 0, i32 0
  %308 = load i8*, i8** %307, align 8
  %309 = call i64 @strncmp(i8* %308, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i32 5)
  %310 = icmp eq i64 %309, 0
  br i1 %310, label %311, label %384

311:                                              ; preds = %305
  %312 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %313 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %312, i32 0, i32 0
  %314 = load i8*, i8** %313, align 8
  %315 = getelementptr inbounds i8, i8* %314, i64 5
  %316 = call i64 @strlen(i8* %315)
  store i64 %316, i64* %12, align 8
  %317 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %9, align 8
  %318 = load %struct.TYPE_10__*, %struct.TYPE_10__** %317, align 8
  %319 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %318, i32 0, i32 0
  %320 = load i8*, i8** %319, align 8
  %321 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %9, align 8
  %322 = load %struct.TYPE_10__*, %struct.TYPE_10__** %321, align 8
  %323 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %322, i32 0, i32 1
  %324 = load i64, i64* %323, align 8
  %325 = load i64, i64* %12, align 8
  %326 = add nsw i64 %324, %325
  %327 = add nsw i64 %326, 1
  %328 = call i8* @OPENSSL_realloc(i8* %320, i64 %327)
  store i8* %328, i8** %11, align 8
  %329 = load i8*, i8** %11, align 8
  %330 = icmp ne i8* %329, null
  br i1 %330, label %331, label %366

331:                                              ; preds = %311
  %332 = load i8*, i8** %11, align 8
  %333 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %9, align 8
  %334 = load %struct.TYPE_10__*, %struct.TYPE_10__** %333, align 8
  %335 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %334, i32 0, i32 0
  store i8* %332, i8** %335, align 8
  %336 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %9, align 8
  %337 = load %struct.TYPE_10__*, %struct.TYPE_10__** %336, align 8
  %338 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %337, i32 0, i32 0
  %339 = load i8*, i8** %338, align 8
  %340 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %9, align 8
  %341 = load %struct.TYPE_10__*, %struct.TYPE_10__** %340, align 8
  %342 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %341, i32 0, i32 1
  %343 = load i64, i64* %342, align 8
  %344 = getelementptr inbounds i8, i8* %339, i64 %343
  %345 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %346 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %345, i32 0, i32 0
  %347 = load i8*, i8** %346, align 8
  %348 = getelementptr inbounds i8, i8* %347, i64 5
  %349 = load i64, i64* %12, align 8
  %350 = call i32 @memcpy(i8* %344, i8* %348, i64 %349)
  %351 = load i64, i64* %12, align 8
  %352 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %9, align 8
  %353 = load %struct.TYPE_10__*, %struct.TYPE_10__** %352, align 8
  %354 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %353, i32 0, i32 1
  %355 = load i64, i64* %354, align 8
  %356 = add nsw i64 %355, %351
  store i64 %356, i64* %354, align 8
  %357 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %9, align 8
  %358 = load %struct.TYPE_10__*, %struct.TYPE_10__** %357, align 8
  %359 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %358, i32 0, i32 0
  %360 = load i8*, i8** %359, align 8
  %361 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %9, align 8
  %362 = load %struct.TYPE_10__*, %struct.TYPE_10__** %361, align 8
  %363 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %362, i32 0, i32 1
  %364 = load i64, i64* %363, align 8
  %365 = getelementptr inbounds i8, i8* %360, i64 %364
  store i8 0, i8* %365, align 1
  br label %383

366:                                              ; preds = %311
  %367 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %9, align 8
  %368 = load %struct.TYPE_10__*, %struct.TYPE_10__** %367, align 8
  %369 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %368, i32 0, i32 0
  %370 = load i8*, i8** %369, align 8
  %371 = call i32 @OPENSSL_free(i8* %370)
  %372 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %9, align 8
  %373 = load %struct.TYPE_10__*, %struct.TYPE_10__** %372, align 8
  %374 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %373, i32 0, i32 0
  store i8* null, i8** %374, align 8
  %375 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %9, align 8
  %376 = load %struct.TYPE_10__*, %struct.TYPE_10__** %375, align 8
  %377 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %376, i32 0, i32 1
  store i64 0, i64* %377, align 8
  %378 = load i32, i32* @X509V3_F_PROCESS_PCI_VALUE, align 4
  %379 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %380 = call i32 @X509V3err(i32 %378, i32 %379)
  %381 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %382 = call i32 @X509V3_conf_err(%struct.TYPE_9__* %381)
  br label %405

383:                                              ; preds = %331
  br label %390

384:                                              ; preds = %305
  %385 = load i32, i32* @X509V3_F_PROCESS_PCI_VALUE, align 4
  %386 = load i32, i32* @X509V3_R_INCORRECT_POLICY_SYNTAX_TAG, align 4
  %387 = call i32 @X509V3err(i32 %385, i32 %386)
  %388 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %389 = call i32 @X509V3_conf_err(%struct.TYPE_9__* %388)
  br label %405

390:                                              ; preds = %383
  br label %391

391:                                              ; preds = %390, %304
  br label %392

392:                                              ; preds = %391, %180
  %393 = load i8*, i8** %11, align 8
  %394 = icmp ne i8* %393, null
  br i1 %394, label %401, label %395

395:                                              ; preds = %392
  %396 = load i32, i32* @X509V3_F_PROCESS_PCI_VALUE, align 4
  %397 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %398 = call i32 @X509V3err(i32 %396, i32 %397)
  %399 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %400 = call i32 @X509V3_conf_err(%struct.TYPE_9__* %399)
  br label %405

401:                                              ; preds = %392
  br label %402

402:                                              ; preds = %401, %74
  br label %403

403:                                              ; preds = %402, %73
  br label %404

404:                                              ; preds = %403, %45
  store i32 1, i32* %5, align 4
  br label %414

405:                                              ; preds = %395, %384, %366, %298, %240, %197, %161, %111
  %406 = load i32, i32* %10, align 4
  %407 = icmp ne i32 %406, 0
  br i1 %407, label %408, label %413

408:                                              ; preds = %405
  %409 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %9, align 8
  %410 = load %struct.TYPE_10__*, %struct.TYPE_10__** %409, align 8
  %411 = call i32 @ASN1_OCTET_STRING_free(%struct.TYPE_10__* %410)
  %412 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %9, align 8
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %412, align 8
  br label %413

413:                                              ; preds = %408, %405
  store i32 0, i32* %5, align 4
  br label %414

414:                                              ; preds = %413, %404, %90, %67, %56, %39, %26
  %415 = load i32, i32* %5, align 4
  ret i32 %415
}

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @X509V3err(i32, i32) #1

declare dso_local i32 @X509V3_conf_err(%struct.TYPE_9__*) #1

declare dso_local i32* @OBJ_txt2obj(i8*, i32) #1

declare dso_local i32 @X509V3_get_value_int(%struct.TYPE_9__*, i32**) #1

declare dso_local %struct.TYPE_10__* @ASN1_OCTET_STRING_new(...) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i8* @OPENSSL_hexstr2buf(i8*, i64*) #1

declare dso_local i8* @OPENSSL_realloc(i8*, i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @OPENSSL_free(i8*) #1

declare dso_local i32* @BIO_new_file(i8*, i8*) #1

declare dso_local i32 @BIO_read(i32*, i8*, i32) #1

declare dso_local i64 @BIO_should_retry(i32*) #1

declare dso_local i32 @BIO_free_all(i32*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @ASN1_OCTET_STRING_free(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
