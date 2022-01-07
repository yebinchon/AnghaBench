; ModuleID = '/home/carl/AnghaBench/openssl/crypto/evp/extr_m_sigver.c_do_sigver_init.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/evp/extr_m_sigver.c_do_sigver_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_39__ = type { %struct.TYPE_37__*, i8*, i32*, i32*, i32*, %struct.TYPE_31__* }
%struct.TYPE_37__ = type { %struct.TYPE_35__*, i8*, %struct.TYPE_34__, i32, i32*, i32, i32, i32* }
%struct.TYPE_35__ = type { i32, i64 (%struct.TYPE_37__*, %struct.TYPE_39__*)*, i64, i64 (%struct.TYPE_37__*, %struct.TYPE_39__*)*, i64, i32 (%struct.TYPE_37__*, %struct.TYPE_39__*)* }
%struct.TYPE_34__ = type { %struct.TYPE_33__ }
%struct.TYPE_33__ = type { i32*, %struct.TYPE_36__* }
%struct.TYPE_36__ = type { i32 (i32*, i8*, i8*, i8*)*, i32 (i32*, i8*, i8*, i8*)*, i32, i32* (i32)* }
%struct.TYPE_31__ = type { i32 (i32*)* }
%struct.TYPE_38__ = type { %struct.TYPE_32__ }
%struct.TYPE_32__ = type { i32* }

@ERR_LIB_EVP = common dso_local global i32 0, align 4
@EVP_R_INITIALIZATION_ERROR = common dso_local global i32 0, align 4
@EVP_PKEY_OP_VERIFYCTX = common dso_local global i8* null, align 8
@EVP_PKEY_OP_SIGNCTX = common dso_local global i8* null, align 8
@EVP_PKEY_OP_UNDEFINED = common dso_local global i8* null, align 8
@EVP_PKEY_FLAG_SIGCTX_CUSTOM = common dso_local global i32 0, align 4
@EVP_F_DO_SIGVER_INIT = common dso_local global i32 0, align 4
@EVP_R_NO_DEFAULT_DIGEST = common dso_local global i32 0, align 4
@EVP_PKEY_OP_VERIFY = common dso_local global i8* null, align 8
@update = common dso_local global i8* null, align 8
@EVP_PKEY_OP_SIGN = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_39__*, %struct.TYPE_37__**, i32*, i8*, i8*, i32*, %struct.TYPE_38__*, i32)* @do_sigver_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_sigver_init(%struct.TYPE_39__* %0, %struct.TYPE_37__** %1, i32* %2, i8* %3, i8* %4, i32* %5, %struct.TYPE_38__* %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_39__*, align 8
  %11 = alloca %struct.TYPE_37__**, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.TYPE_38__*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_37__*, align 8
  %19 = alloca %struct.TYPE_36__*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store %struct.TYPE_39__* %0, %struct.TYPE_39__** %10, align 8
  store %struct.TYPE_37__** %1, %struct.TYPE_37__*** %11, align 8
  store i32* %2, i32** %12, align 8
  store i8* %3, i8** %13, align 8
  store i8* %4, i8** %14, align 8
  store i32* %5, i32** %15, align 8
  store %struct.TYPE_38__* %6, %struct.TYPE_38__** %16, align 8
  store i32 %7, i32* %17, align 4
  store %struct.TYPE_37__* null, %struct.TYPE_37__** %18, align 8
  store %struct.TYPE_36__* null, %struct.TYPE_36__** %19, align 8
  store i8* null, i8** %20, align 8
  %25 = load %struct.TYPE_39__*, %struct.TYPE_39__** %10, align 8
  %26 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %25, i32 0, i32 4
  %27 = load i32*, i32** %26, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %29, label %61

29:                                               ; preds = %8
  %30 = load %struct.TYPE_39__*, %struct.TYPE_39__** %10, align 8
  %31 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %30, i32 0, i32 5
  %32 = load %struct.TYPE_31__*, %struct.TYPE_31__** %31, align 8
  %33 = icmp ne %struct.TYPE_31__* %32, null
  %34 = zext i1 %33 to i32
  %35 = call i32 @ossl_assert(i32 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %29
  %38 = load i32, i32* @ERR_LIB_EVP, align 4
  %39 = load i32, i32* @EVP_R_INITIALIZATION_ERROR, align 4
  %40 = call i32 @ERR_raise(i32 %38, i32 %39)
  store i32 0, i32* %9, align 4
  br label %503

41:                                               ; preds = %29
  %42 = load %struct.TYPE_39__*, %struct.TYPE_39__** %10, align 8
  %43 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %42, i32 0, i32 5
  %44 = load %struct.TYPE_31__*, %struct.TYPE_31__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %44, i32 0, i32 0
  %46 = load i32 (i32*)*, i32 (i32*)** %45, align 8
  %47 = icmp ne i32 (i32*)* %46, null
  br i1 %47, label %48, label %58

48:                                               ; preds = %41
  %49 = load %struct.TYPE_39__*, %struct.TYPE_39__** %10, align 8
  %50 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %49, i32 0, i32 5
  %51 = load %struct.TYPE_31__*, %struct.TYPE_31__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %51, i32 0, i32 0
  %53 = load i32 (i32*)*, i32 (i32*)** %52, align 8
  %54 = load %struct.TYPE_39__*, %struct.TYPE_39__** %10, align 8
  %55 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %54, i32 0, i32 4
  %56 = load i32*, i32** %55, align 8
  %57 = call i32 %53(i32* %56)
  br label %58

58:                                               ; preds = %48, %41
  %59 = load %struct.TYPE_39__*, %struct.TYPE_39__** %10, align 8
  %60 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %59, i32 0, i32 4
  store i32* null, i32** %60, align 8
  br label %61

61:                                               ; preds = %58, %8
  %62 = load %struct.TYPE_39__*, %struct.TYPE_39__** %10, align 8
  %63 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %62, i32 0, i32 0
  %64 = load %struct.TYPE_37__*, %struct.TYPE_37__** %63, align 8
  %65 = icmp eq %struct.TYPE_37__* %64, null
  br i1 %65, label %66, label %72

66:                                               ; preds = %61
  %67 = load %struct.TYPE_38__*, %struct.TYPE_38__** %16, align 8
  %68 = load i32*, i32** %15, align 8
  %69 = call %struct.TYPE_37__* @EVP_PKEY_CTX_new(%struct.TYPE_38__* %67, i32* %68)
  %70 = load %struct.TYPE_39__*, %struct.TYPE_39__** %10, align 8
  %71 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %70, i32 0, i32 0
  store %struct.TYPE_37__* %69, %struct.TYPE_37__** %71, align 8
  br label %72

72:                                               ; preds = %66, %61
  %73 = load %struct.TYPE_39__*, %struct.TYPE_39__** %10, align 8
  %74 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %73, i32 0, i32 0
  %75 = load %struct.TYPE_37__*, %struct.TYPE_37__** %74, align 8
  %76 = icmp eq %struct.TYPE_37__* %75, null
  br i1 %76, label %77, label %78

77:                                               ; preds = %72
  store i32 0, i32* %9, align 4
  br label %503

78:                                               ; preds = %72
  %79 = load %struct.TYPE_39__*, %struct.TYPE_39__** %10, align 8
  %80 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %79, i32 0, i32 0
  %81 = load %struct.TYPE_37__*, %struct.TYPE_37__** %80, align 8
  store %struct.TYPE_37__* %81, %struct.TYPE_37__** %18, align 8
  %82 = load %struct.TYPE_37__*, %struct.TYPE_37__** %18, align 8
  %83 = call i32 @evp_pkey_ctx_free_old_ops(%struct.TYPE_37__* %82)
  %84 = load %struct.TYPE_37__*, %struct.TYPE_37__** %18, align 8
  %85 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %84, i32 0, i32 7
  %86 = load i32*, i32** %85, align 8
  %87 = icmp eq i32* %86, null
  br i1 %87, label %88, label %89

88:                                               ; preds = %78
  br label %296

89:                                               ; preds = %78
  %90 = load i8*, i8** %13, align 8
  %91 = icmp eq i8* %90, null
  br i1 %91, label %92, label %118

92:                                               ; preds = %89
  %93 = load i32*, i32** %12, align 8
  %94 = icmp ne i32* %93, null
  br i1 %94, label %95, label %98

95:                                               ; preds = %92
  %96 = load i32*, i32** %12, align 8
  %97 = call i8* @EVP_MD_name(i32* %96)
  store i8* %97, i8** %13, align 8
  br label %117

98:                                               ; preds = %92
  %99 = load %struct.TYPE_38__*, %struct.TYPE_38__** %16, align 8
  %100 = icmp ne %struct.TYPE_38__* %99, null
  br i1 %100, label %101, label %116

101:                                              ; preds = %98
  %102 = load %struct.TYPE_38__*, %struct.TYPE_38__** %16, align 8
  %103 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %103, i32 0, i32 0
  %105 = load i32*, i32** %104, align 8
  %106 = icmp ne i32* %105, null
  br i1 %106, label %107, label %115

107:                                              ; preds = %101
  %108 = load %struct.TYPE_38__*, %struct.TYPE_38__** %16, align 8
  %109 = call i64 @EVP_PKEY_get_default_digest_nid(%struct.TYPE_38__* %108, i32* %22)
  %110 = icmp sgt i64 %109, 0
  br i1 %110, label %111, label %114

111:                                              ; preds = %107
  %112 = load i32, i32* %22, align 4
  %113 = call i8* @OBJ_nid2sn(i32 %112)
  store i8* %113, i8** %13, align 8
  br label %114

114:                                              ; preds = %111, %107
  br label %115

115:                                              ; preds = %114, %101
  br label %116

116:                                              ; preds = %115, %98
  br label %117

117:                                              ; preds = %116, %95
  br label %118

118:                                              ; preds = %117, %89
  %119 = load %struct.TYPE_37__*, %struct.TYPE_37__** %18, align 8
  %120 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %119, i32 0, i32 3
  %121 = load i32, i32* %120, align 8
  %122 = load %struct.TYPE_37__*, %struct.TYPE_37__** %18, align 8
  %123 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %122, i32 0, i32 7
  %124 = load i32*, i32** %123, align 8
  %125 = load %struct.TYPE_37__*, %struct.TYPE_37__** %18, align 8
  %126 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %125, i32 0, i32 6
  %127 = load i32, i32* %126, align 4
  %128 = call %struct.TYPE_36__* @EVP_SIGNATURE_fetch(i32 %121, i32* %124, i32 %127)
  store %struct.TYPE_36__* %128, %struct.TYPE_36__** %19, align 8
  %129 = load %struct.TYPE_36__*, %struct.TYPE_36__** %19, align 8
  %130 = icmp ne %struct.TYPE_36__* %129, null
  br i1 %130, label %131, label %149

131:                                              ; preds = %118
  %132 = load %struct.TYPE_37__*, %struct.TYPE_37__** %18, align 8
  %133 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %132, i32 0, i32 4
  %134 = load i32*, i32** %133, align 8
  %135 = icmp eq i32* %134, null
  br i1 %135, label %136, label %149

136:                                              ; preds = %131
  %137 = load %struct.TYPE_36__*, %struct.TYPE_36__** %19, align 8
  %138 = call i32 @EVP_SIGNATURE_number(%struct.TYPE_36__* %137)
  store i32 %138, i32* %23, align 4
  %139 = load %struct.TYPE_37__*, %struct.TYPE_37__** %18, align 8
  %140 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %139, i32 0, i32 3
  %141 = load i32, i32* %140, align 8
  %142 = load i32, i32* %23, align 4
  %143 = load %struct.TYPE_37__*, %struct.TYPE_37__** %18, align 8
  %144 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %143, i32 0, i32 6
  %145 = load i32, i32* %144, align 4
  %146 = call i32* @evp_keymgmt_fetch_by_number(i32 %141, i32 %142, i32 %145)
  %147 = load %struct.TYPE_37__*, %struct.TYPE_37__** %18, align 8
  %148 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %147, i32 0, i32 4
  store i32* %146, i32** %148, align 8
  br label %149

149:                                              ; preds = %136, %131, %118
  %150 = load %struct.TYPE_37__*, %struct.TYPE_37__** %18, align 8
  %151 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %150, i32 0, i32 4
  %152 = load i32*, i32** %151, align 8
  %153 = icmp eq i32* %152, null
  br i1 %153, label %165, label %154

154:                                              ; preds = %149
  %155 = load %struct.TYPE_36__*, %struct.TYPE_36__** %19, align 8
  %156 = icmp eq %struct.TYPE_36__* %155, null
  br i1 %156, label %165, label %157

157:                                              ; preds = %154
  %158 = load %struct.TYPE_37__*, %struct.TYPE_37__** %18, align 8
  %159 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %158, i32 0, i32 4
  %160 = load i32*, i32** %159, align 8
  %161 = call i64 @EVP_KEYMGMT_provider(i32* %160)
  %162 = load %struct.TYPE_36__*, %struct.TYPE_36__** %19, align 8
  %163 = call i64 @EVP_SIGNATURE_provider(%struct.TYPE_36__* %162)
  %164 = icmp ne i64 %161, %163
  br i1 %164, label %165, label %168

165:                                              ; preds = %157, %154, %149
  %166 = load %struct.TYPE_36__*, %struct.TYPE_36__** %19, align 8
  %167 = call i32 @EVP_SIGNATURE_free(%struct.TYPE_36__* %166)
  br label %296

168:                                              ; preds = %157
  %169 = load %struct.TYPE_36__*, %struct.TYPE_36__** %19, align 8
  %170 = load %struct.TYPE_37__*, %struct.TYPE_37__** %18, align 8
  %171 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %170, i32 0, i32 2
  %172 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %172, i32 0, i32 1
  store %struct.TYPE_36__* %169, %struct.TYPE_36__** %173, align 8
  %174 = load i32, i32* %17, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %178

176:                                              ; preds = %168
  %177 = load i8*, i8** @EVP_PKEY_OP_VERIFYCTX, align 8
  br label %180

178:                                              ; preds = %168
  %179 = load i8*, i8** @EVP_PKEY_OP_SIGNCTX, align 8
  br label %180

180:                                              ; preds = %178, %176
  %181 = phi i8* [ %177, %176 ], [ %179, %178 ]
  %182 = load %struct.TYPE_37__*, %struct.TYPE_37__** %18, align 8
  %183 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %182, i32 0, i32 1
  store i8* %181, i8** %183, align 8
  %184 = load %struct.TYPE_36__*, %struct.TYPE_36__** %19, align 8
  %185 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %184, i32 0, i32 3
  %186 = load i32* (i32)*, i32* (i32)** %185, align 8
  %187 = load %struct.TYPE_36__*, %struct.TYPE_36__** %19, align 8
  %188 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %187, i32 0, i32 2
  %189 = load i32, i32* %188, align 8
  %190 = call i32 @ossl_provider_ctx(i32 %189)
  %191 = call i32* %186(i32 %190)
  %192 = load %struct.TYPE_37__*, %struct.TYPE_37__** %18, align 8
  %193 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %192, i32 0, i32 2
  %194 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %193, i32 0, i32 0
  %195 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %194, i32 0, i32 0
  store i32* %191, i32** %195, align 8
  %196 = load %struct.TYPE_37__*, %struct.TYPE_37__** %18, align 8
  %197 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %196, i32 0, i32 2
  %198 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %197, i32 0, i32 0
  %199 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %198, i32 0, i32 0
  %200 = load i32*, i32** %199, align 8
  %201 = icmp eq i32* %200, null
  br i1 %201, label %202, label %206

202:                                              ; preds = %180
  %203 = load i32, i32* @ERR_LIB_EVP, align 4
  %204 = load i32, i32* @EVP_R_INITIALIZATION_ERROR, align 4
  %205 = call i32 @ERR_raise(i32 %203, i32 %204)
  br label %290

206:                                              ; preds = %180
  %207 = load %struct.TYPE_37__*, %struct.TYPE_37__** %18, align 8
  %208 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %207, i32 0, i32 5
  %209 = load i32, i32* %208, align 8
  %210 = load %struct.TYPE_37__*, %struct.TYPE_37__** %18, align 8
  %211 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %210, i32 0, i32 4
  %212 = load i32*, i32** %211, align 8
  %213 = call i8* @evp_keymgmt_export_to_provider(i32 %209, i32* %212, i32 0)
  store i8* %213, i8** %20, align 8
  %214 = load i8*, i8** %20, align 8
  %215 = icmp eq i8* %214, null
  br i1 %215, label %216, label %220

216:                                              ; preds = %206
  %217 = load i32, i32* @ERR_LIB_EVP, align 4
  %218 = load i32, i32* @EVP_R_INITIALIZATION_ERROR, align 4
  %219 = call i32 @ERR_raise(i32 %217, i32 %218)
  br label %290

220:                                              ; preds = %206
  %221 = load i32*, i32** %12, align 8
  %222 = icmp ne i32* %221, null
  br i1 %222, label %223, label %227

223:                                              ; preds = %220
  %224 = load i32*, i32** %12, align 8
  %225 = load %struct.TYPE_39__*, %struct.TYPE_39__** %10, align 8
  %226 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %225, i32 0, i32 3
  store i32* %224, i32** %226, align 8
  br label %238

227:                                              ; preds = %220
  %228 = load %struct.TYPE_37__*, %struct.TYPE_37__** %18, align 8
  %229 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %228, i32 0, i32 3
  %230 = load i32, i32* %229, align 8
  %231 = load i8*, i8** %13, align 8
  %232 = load i8*, i8** %14, align 8
  %233 = call i32* @EVP_MD_fetch(i32 %230, i8* %231, i8* %232)
  %234 = load %struct.TYPE_39__*, %struct.TYPE_39__** %10, align 8
  %235 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %234, i32 0, i32 2
  store i32* %233, i32** %235, align 8
  %236 = load %struct.TYPE_39__*, %struct.TYPE_39__** %10, align 8
  %237 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %236, i32 0, i32 3
  store i32* %233, i32** %237, align 8
  br label %238

238:                                              ; preds = %227, %223
  %239 = load i32, i32* %17, align 4
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %241, label %263

241:                                              ; preds = %238
  %242 = load %struct.TYPE_36__*, %struct.TYPE_36__** %19, align 8
  %243 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %242, i32 0, i32 0
  %244 = load i32 (i32*, i8*, i8*, i8*)*, i32 (i32*, i8*, i8*, i8*)** %243, align 8
  %245 = icmp eq i32 (i32*, i8*, i8*, i8*)* %244, null
  br i1 %245, label %246, label %250

246:                                              ; preds = %241
  %247 = load i32, i32* @ERR_LIB_EVP, align 4
  %248 = load i32, i32* @EVP_R_INITIALIZATION_ERROR, align 4
  %249 = call i32 @ERR_raise(i32 %247, i32 %248)
  br label %290

250:                                              ; preds = %241
  %251 = load %struct.TYPE_36__*, %struct.TYPE_36__** %19, align 8
  %252 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %251, i32 0, i32 0
  %253 = load i32 (i32*, i8*, i8*, i8*)*, i32 (i32*, i8*, i8*, i8*)** %252, align 8
  %254 = load %struct.TYPE_37__*, %struct.TYPE_37__** %18, align 8
  %255 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %254, i32 0, i32 2
  %256 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %255, i32 0, i32 0
  %257 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %256, i32 0, i32 0
  %258 = load i32*, i32** %257, align 8
  %259 = load i8*, i8** %13, align 8
  %260 = load i8*, i8** %14, align 8
  %261 = load i8*, i8** %20, align 8
  %262 = call i32 %253(i32* %258, i8* %259, i8* %260, i8* %261)
  store i32 %262, i32* %21, align 4
  br label %285

263:                                              ; preds = %238
  %264 = load %struct.TYPE_36__*, %struct.TYPE_36__** %19, align 8
  %265 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %264, i32 0, i32 1
  %266 = load i32 (i32*, i8*, i8*, i8*)*, i32 (i32*, i8*, i8*, i8*)** %265, align 8
  %267 = icmp eq i32 (i32*, i8*, i8*, i8*)* %266, null
  br i1 %267, label %268, label %272

268:                                              ; preds = %263
  %269 = load i32, i32* @ERR_LIB_EVP, align 4
  %270 = load i32, i32* @EVP_R_INITIALIZATION_ERROR, align 4
  %271 = call i32 @ERR_raise(i32 %269, i32 %270)
  br label %290

272:                                              ; preds = %263
  %273 = load %struct.TYPE_36__*, %struct.TYPE_36__** %19, align 8
  %274 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %273, i32 0, i32 1
  %275 = load i32 (i32*, i8*, i8*, i8*)*, i32 (i32*, i8*, i8*, i8*)** %274, align 8
  %276 = load %struct.TYPE_37__*, %struct.TYPE_37__** %18, align 8
  %277 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %276, i32 0, i32 2
  %278 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %277, i32 0, i32 0
  %279 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %278, i32 0, i32 0
  %280 = load i32*, i32** %279, align 8
  %281 = load i8*, i8** %13, align 8
  %282 = load i8*, i8** %14, align 8
  %283 = load i8*, i8** %20, align 8
  %284 = call i32 %275(i32* %280, i8* %281, i8* %282, i8* %283)
  store i32 %284, i32* %21, align 4
  br label %285

285:                                              ; preds = %272, %250
  %286 = load i32, i32* %21, align 4
  %287 = icmp ne i32 %286, 0
  %288 = zext i1 %287 to i64
  %289 = select i1 %287, i32 1, i32 0
  store i32 %289, i32* %9, align 4
  br label %503

290:                                              ; preds = %268, %246, %216, %202
  %291 = load %struct.TYPE_37__*, %struct.TYPE_37__** %18, align 8
  %292 = call i32 @evp_pkey_ctx_free_old_ops(%struct.TYPE_37__* %291)
  %293 = load i8*, i8** @EVP_PKEY_OP_UNDEFINED, align 8
  %294 = load %struct.TYPE_37__*, %struct.TYPE_37__** %18, align 8
  %295 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %294, i32 0, i32 1
  store i8* %293, i8** %295, align 8
  store i32 0, i32* %9, align 4
  br label %503

296:                                              ; preds = %165, %88
  %297 = load %struct.TYPE_39__*, %struct.TYPE_39__** %10, align 8
  %298 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %297, i32 0, i32 0
  %299 = load %struct.TYPE_37__*, %struct.TYPE_37__** %298, align 8
  %300 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %299, i32 0, i32 0
  %301 = load %struct.TYPE_35__*, %struct.TYPE_35__** %300, align 8
  %302 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %301, i32 0, i32 0
  %303 = load i32, i32* %302, align 8
  %304 = load i32, i32* @EVP_PKEY_FLAG_SIGCTX_CUSTOM, align 4
  %305 = and i32 %303, %304
  %306 = icmp ne i32 %305, 0
  br i1 %306, label %326, label %307

307:                                              ; preds = %296
  %308 = load i32*, i32** %12, align 8
  %309 = icmp eq i32* %308, null
  br i1 %309, label %310, label %318

310:                                              ; preds = %307
  %311 = load %struct.TYPE_38__*, %struct.TYPE_38__** %16, align 8
  %312 = call i64 @EVP_PKEY_get_default_digest_nid(%struct.TYPE_38__* %311, i32* %24)
  %313 = icmp sgt i64 %312, 0
  br i1 %313, label %314, label %317

314:                                              ; preds = %310
  %315 = load i32, i32* %24, align 4
  %316 = call i32* @EVP_get_digestbynid(i32 %315)
  store i32* %316, i32** %12, align 8
  br label %317

317:                                              ; preds = %314, %310
  br label %318

318:                                              ; preds = %317, %307
  %319 = load i32*, i32** %12, align 8
  %320 = icmp eq i32* %319, null
  br i1 %320, label %321, label %325

321:                                              ; preds = %318
  %322 = load i32, i32* @EVP_F_DO_SIGVER_INIT, align 4
  %323 = load i32, i32* @EVP_R_NO_DEFAULT_DIGEST, align 4
  %324 = call i32 @EVPerr(i32 %322, i32 %323)
  store i32 0, i32* %9, align 4
  br label %503

325:                                              ; preds = %318
  br label %326

326:                                              ; preds = %325, %296
  %327 = load i32, i32* %17, align 4
  %328 = icmp ne i32 %327, 0
  br i1 %328, label %329, label %387

329:                                              ; preds = %326
  %330 = load %struct.TYPE_39__*, %struct.TYPE_39__** %10, align 8
  %331 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %330, i32 0, i32 0
  %332 = load %struct.TYPE_37__*, %struct.TYPE_37__** %331, align 8
  %333 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %332, i32 0, i32 0
  %334 = load %struct.TYPE_35__*, %struct.TYPE_35__** %333, align 8
  %335 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %334, i32 0, i32 1
  %336 = load i64 (%struct.TYPE_37__*, %struct.TYPE_39__*)*, i64 (%struct.TYPE_37__*, %struct.TYPE_39__*)** %335, align 8
  %337 = icmp ne i64 (%struct.TYPE_37__*, %struct.TYPE_39__*)* %336, null
  br i1 %337, label %338, label %359

338:                                              ; preds = %329
  %339 = load %struct.TYPE_39__*, %struct.TYPE_39__** %10, align 8
  %340 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %339, i32 0, i32 0
  %341 = load %struct.TYPE_37__*, %struct.TYPE_37__** %340, align 8
  %342 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %341, i32 0, i32 0
  %343 = load %struct.TYPE_35__*, %struct.TYPE_35__** %342, align 8
  %344 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %343, i32 0, i32 1
  %345 = load i64 (%struct.TYPE_37__*, %struct.TYPE_39__*)*, i64 (%struct.TYPE_37__*, %struct.TYPE_39__*)** %344, align 8
  %346 = load %struct.TYPE_39__*, %struct.TYPE_39__** %10, align 8
  %347 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %346, i32 0, i32 0
  %348 = load %struct.TYPE_37__*, %struct.TYPE_37__** %347, align 8
  %349 = load %struct.TYPE_39__*, %struct.TYPE_39__** %10, align 8
  %350 = call i64 %345(%struct.TYPE_37__* %348, %struct.TYPE_39__* %349)
  %351 = icmp sle i64 %350, 0
  br i1 %351, label %352, label %353

352:                                              ; preds = %338
  store i32 0, i32* %9, align 4
  br label %503

353:                                              ; preds = %338
  %354 = load i8*, i8** @EVP_PKEY_OP_VERIFYCTX, align 8
  %355 = load %struct.TYPE_39__*, %struct.TYPE_39__** %10, align 8
  %356 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %355, i32 0, i32 0
  %357 = load %struct.TYPE_37__*, %struct.TYPE_37__** %356, align 8
  %358 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %357, i32 0, i32 1
  store i8* %354, i8** %358, align 8
  br label %386

359:                                              ; preds = %329
  %360 = load %struct.TYPE_39__*, %struct.TYPE_39__** %10, align 8
  %361 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %360, i32 0, i32 0
  %362 = load %struct.TYPE_37__*, %struct.TYPE_37__** %361, align 8
  %363 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %362, i32 0, i32 0
  %364 = load %struct.TYPE_35__*, %struct.TYPE_35__** %363, align 8
  %365 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %364, i32 0, i32 2
  %366 = load i64, i64* %365, align 8
  %367 = icmp ne i64 %366, 0
  br i1 %367, label %368, label %377

368:                                              ; preds = %359
  %369 = load i8*, i8** @EVP_PKEY_OP_VERIFY, align 8
  %370 = load %struct.TYPE_39__*, %struct.TYPE_39__** %10, align 8
  %371 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %370, i32 0, i32 0
  %372 = load %struct.TYPE_37__*, %struct.TYPE_37__** %371, align 8
  %373 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %372, i32 0, i32 1
  store i8* %369, i8** %373, align 8
  %374 = load i8*, i8** @update, align 8
  %375 = load %struct.TYPE_39__*, %struct.TYPE_39__** %10, align 8
  %376 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %375, i32 0, i32 1
  store i8* %374, i8** %376, align 8
  br label %385

377:                                              ; preds = %359
  %378 = load %struct.TYPE_39__*, %struct.TYPE_39__** %10, align 8
  %379 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %378, i32 0, i32 0
  %380 = load %struct.TYPE_37__*, %struct.TYPE_37__** %379, align 8
  %381 = call i64 @EVP_PKEY_verify_init(%struct.TYPE_37__* %380)
  %382 = icmp sle i64 %381, 0
  br i1 %382, label %383, label %384

383:                                              ; preds = %377
  store i32 0, i32* %9, align 4
  br label %503

384:                                              ; preds = %377
  br label %385

385:                                              ; preds = %384, %368
  br label %386

386:                                              ; preds = %385, %353
  br label %445

387:                                              ; preds = %326
  %388 = load %struct.TYPE_39__*, %struct.TYPE_39__** %10, align 8
  %389 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %388, i32 0, i32 0
  %390 = load %struct.TYPE_37__*, %struct.TYPE_37__** %389, align 8
  %391 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %390, i32 0, i32 0
  %392 = load %struct.TYPE_35__*, %struct.TYPE_35__** %391, align 8
  %393 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %392, i32 0, i32 3
  %394 = load i64 (%struct.TYPE_37__*, %struct.TYPE_39__*)*, i64 (%struct.TYPE_37__*, %struct.TYPE_39__*)** %393, align 8
  %395 = icmp ne i64 (%struct.TYPE_37__*, %struct.TYPE_39__*)* %394, null
  br i1 %395, label %396, label %417

396:                                              ; preds = %387
  %397 = load %struct.TYPE_39__*, %struct.TYPE_39__** %10, align 8
  %398 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %397, i32 0, i32 0
  %399 = load %struct.TYPE_37__*, %struct.TYPE_37__** %398, align 8
  %400 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %399, i32 0, i32 0
  %401 = load %struct.TYPE_35__*, %struct.TYPE_35__** %400, align 8
  %402 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %401, i32 0, i32 3
  %403 = load i64 (%struct.TYPE_37__*, %struct.TYPE_39__*)*, i64 (%struct.TYPE_37__*, %struct.TYPE_39__*)** %402, align 8
  %404 = load %struct.TYPE_39__*, %struct.TYPE_39__** %10, align 8
  %405 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %404, i32 0, i32 0
  %406 = load %struct.TYPE_37__*, %struct.TYPE_37__** %405, align 8
  %407 = load %struct.TYPE_39__*, %struct.TYPE_39__** %10, align 8
  %408 = call i64 %403(%struct.TYPE_37__* %406, %struct.TYPE_39__* %407)
  %409 = icmp sle i64 %408, 0
  br i1 %409, label %410, label %411

410:                                              ; preds = %396
  store i32 0, i32* %9, align 4
  br label %503

411:                                              ; preds = %396
  %412 = load i8*, i8** @EVP_PKEY_OP_SIGNCTX, align 8
  %413 = load %struct.TYPE_39__*, %struct.TYPE_39__** %10, align 8
  %414 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %413, i32 0, i32 0
  %415 = load %struct.TYPE_37__*, %struct.TYPE_37__** %414, align 8
  %416 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %415, i32 0, i32 1
  store i8* %412, i8** %416, align 8
  br label %444

417:                                              ; preds = %387
  %418 = load %struct.TYPE_39__*, %struct.TYPE_39__** %10, align 8
  %419 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %418, i32 0, i32 0
  %420 = load %struct.TYPE_37__*, %struct.TYPE_37__** %419, align 8
  %421 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %420, i32 0, i32 0
  %422 = load %struct.TYPE_35__*, %struct.TYPE_35__** %421, align 8
  %423 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %422, i32 0, i32 4
  %424 = load i64, i64* %423, align 8
  %425 = icmp ne i64 %424, 0
  br i1 %425, label %426, label %435

426:                                              ; preds = %417
  %427 = load i8*, i8** @EVP_PKEY_OP_SIGN, align 8
  %428 = load %struct.TYPE_39__*, %struct.TYPE_39__** %10, align 8
  %429 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %428, i32 0, i32 0
  %430 = load %struct.TYPE_37__*, %struct.TYPE_37__** %429, align 8
  %431 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %430, i32 0, i32 1
  store i8* %427, i8** %431, align 8
  %432 = load i8*, i8** @update, align 8
  %433 = load %struct.TYPE_39__*, %struct.TYPE_39__** %10, align 8
  %434 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %433, i32 0, i32 1
  store i8* %432, i8** %434, align 8
  br label %443

435:                                              ; preds = %417
  %436 = load %struct.TYPE_39__*, %struct.TYPE_39__** %10, align 8
  %437 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %436, i32 0, i32 0
  %438 = load %struct.TYPE_37__*, %struct.TYPE_37__** %437, align 8
  %439 = call i64 @EVP_PKEY_sign_init(%struct.TYPE_37__* %438)
  %440 = icmp sle i64 %439, 0
  br i1 %440, label %441, label %442

441:                                              ; preds = %435
  store i32 0, i32* %9, align 4
  br label %503

442:                                              ; preds = %435
  br label %443

443:                                              ; preds = %442, %426
  br label %444

444:                                              ; preds = %443, %411
  br label %445

445:                                              ; preds = %444, %386
  %446 = load %struct.TYPE_39__*, %struct.TYPE_39__** %10, align 8
  %447 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %446, i32 0, i32 0
  %448 = load %struct.TYPE_37__*, %struct.TYPE_37__** %447, align 8
  %449 = load i32*, i32** %12, align 8
  %450 = call i64 @EVP_PKEY_CTX_set_signature_md(%struct.TYPE_37__* %448, i32* %449)
  %451 = icmp sle i64 %450, 0
  br i1 %451, label %452, label %453

452:                                              ; preds = %445
  store i32 0, i32* %9, align 4
  br label %503

453:                                              ; preds = %445
  %454 = load %struct.TYPE_37__**, %struct.TYPE_37__*** %11, align 8
  %455 = icmp ne %struct.TYPE_37__** %454, null
  br i1 %455, label %456, label %461

456:                                              ; preds = %453
  %457 = load %struct.TYPE_39__*, %struct.TYPE_39__** %10, align 8
  %458 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %457, i32 0, i32 0
  %459 = load %struct.TYPE_37__*, %struct.TYPE_37__** %458, align 8
  %460 = load %struct.TYPE_37__**, %struct.TYPE_37__*** %11, align 8
  store %struct.TYPE_37__* %459, %struct.TYPE_37__** %460, align 8
  br label %461

461:                                              ; preds = %456, %453
  %462 = load %struct.TYPE_39__*, %struct.TYPE_39__** %10, align 8
  %463 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %462, i32 0, i32 0
  %464 = load %struct.TYPE_37__*, %struct.TYPE_37__** %463, align 8
  %465 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %464, i32 0, i32 0
  %466 = load %struct.TYPE_35__*, %struct.TYPE_35__** %465, align 8
  %467 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %466, i32 0, i32 0
  %468 = load i32, i32* %467, align 8
  %469 = load i32, i32* @EVP_PKEY_FLAG_SIGCTX_CUSTOM, align 4
  %470 = and i32 %468, %469
  %471 = icmp ne i32 %470, 0
  br i1 %471, label %472, label %473

472:                                              ; preds = %461
  store i32 1, i32* %9, align 4
  br label %503

473:                                              ; preds = %461
  %474 = load %struct.TYPE_39__*, %struct.TYPE_39__** %10, align 8
  %475 = load i32*, i32** %12, align 8
  %476 = load i32*, i32** %15, align 8
  %477 = call i32 @EVP_DigestInit_ex(%struct.TYPE_39__* %474, i32* %475, i32* %476)
  %478 = icmp ne i32 %477, 0
  br i1 %478, label %480, label %479

479:                                              ; preds = %473
  store i32 0, i32* %9, align 4
  br label %503

480:                                              ; preds = %473
  %481 = load %struct.TYPE_39__*, %struct.TYPE_39__** %10, align 8
  %482 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %481, i32 0, i32 0
  %483 = load %struct.TYPE_37__*, %struct.TYPE_37__** %482, align 8
  %484 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %483, i32 0, i32 0
  %485 = load %struct.TYPE_35__*, %struct.TYPE_35__** %484, align 8
  %486 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %485, i32 0, i32 5
  %487 = load i32 (%struct.TYPE_37__*, %struct.TYPE_39__*)*, i32 (%struct.TYPE_37__*, %struct.TYPE_39__*)** %486, align 8
  %488 = icmp ne i32 (%struct.TYPE_37__*, %struct.TYPE_39__*)* %487, null
  br i1 %488, label %489, label %502

489:                                              ; preds = %480
  %490 = load %struct.TYPE_39__*, %struct.TYPE_39__** %10, align 8
  %491 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %490, i32 0, i32 0
  %492 = load %struct.TYPE_37__*, %struct.TYPE_37__** %491, align 8
  %493 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %492, i32 0, i32 0
  %494 = load %struct.TYPE_35__*, %struct.TYPE_35__** %493, align 8
  %495 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %494, i32 0, i32 5
  %496 = load i32 (%struct.TYPE_37__*, %struct.TYPE_39__*)*, i32 (%struct.TYPE_37__*, %struct.TYPE_39__*)** %495, align 8
  %497 = load %struct.TYPE_39__*, %struct.TYPE_39__** %10, align 8
  %498 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %497, i32 0, i32 0
  %499 = load %struct.TYPE_37__*, %struct.TYPE_37__** %498, align 8
  %500 = load %struct.TYPE_39__*, %struct.TYPE_39__** %10, align 8
  %501 = call i32 %496(%struct.TYPE_37__* %499, %struct.TYPE_39__* %500)
  store i32 %501, i32* %9, align 4
  br label %503

502:                                              ; preds = %480
  store i32 1, i32* %9, align 4
  br label %503

503:                                              ; preds = %502, %489, %479, %472, %452, %441, %410, %383, %352, %321, %290, %285, %77, %37
  %504 = load i32, i32* %9, align 4
  ret i32 %504
}

declare dso_local i32 @ossl_assert(i32) #1

declare dso_local i32 @ERR_raise(i32, i32) #1

declare dso_local %struct.TYPE_37__* @EVP_PKEY_CTX_new(%struct.TYPE_38__*, i32*) #1

declare dso_local i32 @evp_pkey_ctx_free_old_ops(%struct.TYPE_37__*) #1

declare dso_local i8* @EVP_MD_name(i32*) #1

declare dso_local i64 @EVP_PKEY_get_default_digest_nid(%struct.TYPE_38__*, i32*) #1

declare dso_local i8* @OBJ_nid2sn(i32) #1

declare dso_local %struct.TYPE_36__* @EVP_SIGNATURE_fetch(i32, i32*, i32) #1

declare dso_local i32 @EVP_SIGNATURE_number(%struct.TYPE_36__*) #1

declare dso_local i32* @evp_keymgmt_fetch_by_number(i32, i32, i32) #1

declare dso_local i64 @EVP_KEYMGMT_provider(i32*) #1

declare dso_local i64 @EVP_SIGNATURE_provider(%struct.TYPE_36__*) #1

declare dso_local i32 @EVP_SIGNATURE_free(%struct.TYPE_36__*) #1

declare dso_local i32 @ossl_provider_ctx(i32) #1

declare dso_local i8* @evp_keymgmt_export_to_provider(i32, i32*, i32) #1

declare dso_local i32* @EVP_MD_fetch(i32, i8*, i8*) #1

declare dso_local i32* @EVP_get_digestbynid(i32) #1

declare dso_local i32 @EVPerr(i32, i32) #1

declare dso_local i64 @EVP_PKEY_verify_init(%struct.TYPE_37__*) #1

declare dso_local i64 @EVP_PKEY_sign_init(%struct.TYPE_37__*) #1

declare dso_local i64 @EVP_PKEY_CTX_set_signature_md(%struct.TYPE_37__*, i32*) #1

declare dso_local i32 @EVP_DigestInit_ex(%struct.TYPE_39__*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
