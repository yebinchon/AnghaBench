; ModuleID = '/home/carl/AnghaBench/openssl/crypto/ec/extr_ecp_smpl.c_ec_GFp_simple_point_get_affine_coordinates.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/ec/extr_ecp_smpl.c_ec_GFp_simple_point_get_affine_coordinates.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { %struct.TYPE_16__*, i32, i32 }
%struct.TYPE_16__ = type { i64, i32 (%struct.TYPE_18__*, i32*, i32*, i32*, i32*)*, i32 (%struct.TYPE_18__*, i32*, i32*, i32*)*, i32 (%struct.TYPE_18__*, i32*, i32*, i32*)*, i32 (%struct.TYPE_18__*, i32*, i32*, i32*)* }
%struct.TYPE_17__ = type { i32*, i32*, i32* }

@EC_F_EC_GFP_SIMPLE_POINT_GET_AFFINE_COORDINATES = common dso_local global i32 0, align 4
@EC_R_POINT_AT_INFINITY = common dso_local global i32 0, align 4
@ERR_R_BN_LIB = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ec_GFp_simple_point_get_affine_coordinates(%struct.TYPE_18__* %0, %struct.TYPE_17__* %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_18__*, align 8
  %8 = alloca %struct.TYPE_17__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %7, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32* null, i32** %12, align 8
  store i32 0, i32* %18, align 4
  %19 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %20 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %21 = call i64 @EC_POINT_is_at_infinity(%struct.TYPE_18__* %19, %struct.TYPE_17__* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %5
  %24 = load i32, i32* @EC_F_EC_GFP_SIMPLE_POINT_GET_AFFINE_COORDINATES, align 4
  %25 = load i32, i32* @EC_R_POINT_AT_INFINITY, align 4
  %26 = call i32 @ECerr(i32 %24, i32 %25)
  store i32 0, i32* %6, align 4
  br label %287

27:                                               ; preds = %5
  %28 = load i32*, i32** %11, align 8
  %29 = icmp eq i32* %28, null
  br i1 %29, label %30, label %39

30:                                               ; preds = %27
  %31 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = call i32* @BN_CTX_new_ex(i32 %33)
  store i32* %34, i32** %12, align 8
  store i32* %34, i32** %11, align 8
  %35 = load i32*, i32** %11, align 8
  %36 = icmp eq i32* %35, null
  br i1 %36, label %37, label %38

37:                                               ; preds = %30
  store i32 0, i32* %6, align 4
  br label %287

38:                                               ; preds = %30
  br label %39

39:                                               ; preds = %38, %27
  %40 = load i32*, i32** %11, align 8
  %41 = call i32 @BN_CTX_start(i32* %40)
  %42 = load i32*, i32** %11, align 8
  %43 = call i32* @BN_CTX_get(i32* %42)
  store i32* %43, i32** %13, align 8
  %44 = load i32*, i32** %11, align 8
  %45 = call i32* @BN_CTX_get(i32* %44)
  store i32* %45, i32** %14, align 8
  %46 = load i32*, i32** %11, align 8
  %47 = call i32* @BN_CTX_get(i32* %46)
  store i32* %47, i32** %15, align 8
  %48 = load i32*, i32** %11, align 8
  %49 = call i32* @BN_CTX_get(i32* %48)
  store i32* %49, i32** %16, align 8
  %50 = load i32*, i32** %16, align 8
  %51 = icmp eq i32* %50, null
  br i1 %51, label %52, label %53

52:                                               ; preds = %39
  br label %281

53:                                               ; preds = %39
  %54 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_16__*, %struct.TYPE_16__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %56, i32 0, i32 4
  %58 = load i32 (%struct.TYPE_18__*, i32*, i32*, i32*)*, i32 (%struct.TYPE_18__*, i32*, i32*, i32*)** %57, align 8
  %59 = icmp ne i32 (%struct.TYPE_18__*, i32*, i32*, i32*)* %58, null
  br i1 %59, label %60, label %77

60:                                               ; preds = %53
  %61 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_16__*, %struct.TYPE_16__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %63, i32 0, i32 4
  %65 = load i32 (%struct.TYPE_18__*, i32*, i32*, i32*)*, i32 (%struct.TYPE_18__*, i32*, i32*, i32*)** %64, align 8
  %66 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %67 = load i32*, i32** %13, align 8
  %68 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %69 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %68, i32 0, i32 2
  %70 = load i32*, i32** %69, align 8
  %71 = load i32*, i32** %11, align 8
  %72 = call i32 %65(%struct.TYPE_18__* %66, i32* %67, i32* %70, i32* %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %75, label %74

74:                                               ; preds = %60
  br label %281

75:                                               ; preds = %60
  %76 = load i32*, i32** %13, align 8
  store i32* %76, i32** %17, align 8
  br label %81

77:                                               ; preds = %53
  %78 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %79 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %78, i32 0, i32 2
  %80 = load i32*, i32** %79, align 8
  store i32* %80, i32** %17, align 8
  br label %81

81:                                               ; preds = %77, %75
  %82 = load i32*, i32** %17, align 8
  %83 = call i64 @BN_is_one(i32* %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %157

85:                                               ; preds = %81
  %86 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %87 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %86, i32 0, i32 0
  %88 = load %struct.TYPE_16__*, %struct.TYPE_16__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %88, i32 0, i32 4
  %90 = load i32 (%struct.TYPE_18__*, i32*, i32*, i32*)*, i32 (%struct.TYPE_18__*, i32*, i32*, i32*)** %89, align 8
  %91 = icmp ne i32 (%struct.TYPE_18__*, i32*, i32*, i32*)* %90, null
  br i1 %91, label %92, label %131

92:                                               ; preds = %85
  %93 = load i32*, i32** %9, align 8
  %94 = icmp ne i32* %93, null
  br i1 %94, label %95, label %111

95:                                               ; preds = %92
  %96 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %97 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %96, i32 0, i32 0
  %98 = load %struct.TYPE_16__*, %struct.TYPE_16__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %98, i32 0, i32 4
  %100 = load i32 (%struct.TYPE_18__*, i32*, i32*, i32*)*, i32 (%struct.TYPE_18__*, i32*, i32*, i32*)** %99, align 8
  %101 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %102 = load i32*, i32** %9, align 8
  %103 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %104 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %103, i32 0, i32 1
  %105 = load i32*, i32** %104, align 8
  %106 = load i32*, i32** %11, align 8
  %107 = call i32 %100(%struct.TYPE_18__* %101, i32* %102, i32* %105, i32* %106)
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %110, label %109

109:                                              ; preds = %95
  br label %281

110:                                              ; preds = %95
  br label %111

111:                                              ; preds = %110, %92
  %112 = load i32*, i32** %10, align 8
  %113 = icmp ne i32* %112, null
  br i1 %113, label %114, label %130

114:                                              ; preds = %111
  %115 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %116 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %115, i32 0, i32 0
  %117 = load %struct.TYPE_16__*, %struct.TYPE_16__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %117, i32 0, i32 4
  %119 = load i32 (%struct.TYPE_18__*, i32*, i32*, i32*)*, i32 (%struct.TYPE_18__*, i32*, i32*, i32*)** %118, align 8
  %120 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %121 = load i32*, i32** %10, align 8
  %122 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %123 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %122, i32 0, i32 0
  %124 = load i32*, i32** %123, align 8
  %125 = load i32*, i32** %11, align 8
  %126 = call i32 %119(%struct.TYPE_18__* %120, i32* %121, i32* %124, i32* %125)
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %129, label %128

128:                                              ; preds = %114
  br label %281

129:                                              ; preds = %114
  br label %130

130:                                              ; preds = %129, %111
  br label %156

131:                                              ; preds = %85
  %132 = load i32*, i32** %9, align 8
  %133 = icmp ne i32* %132, null
  br i1 %133, label %134, label %143

134:                                              ; preds = %131
  %135 = load i32*, i32** %9, align 8
  %136 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %137 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %136, i32 0, i32 1
  %138 = load i32*, i32** %137, align 8
  %139 = call i32 @BN_copy(i32* %135, i32* %138)
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %142, label %141

141:                                              ; preds = %134
  br label %281

142:                                              ; preds = %134
  br label %143

143:                                              ; preds = %142, %131
  %144 = load i32*, i32** %10, align 8
  %145 = icmp ne i32* %144, null
  br i1 %145, label %146, label %155

146:                                              ; preds = %143
  %147 = load i32*, i32** %10, align 8
  %148 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %149 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %148, i32 0, i32 0
  %150 = load i32*, i32** %149, align 8
  %151 = call i32 @BN_copy(i32* %147, i32* %150)
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %154, label %153

153:                                              ; preds = %146
  br label %281

154:                                              ; preds = %146
  br label %155

155:                                              ; preds = %154, %143
  br label %156

156:                                              ; preds = %155, %130
  br label %280

157:                                              ; preds = %81
  %158 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %159 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %158, i32 0, i32 0
  %160 = load %struct.TYPE_16__*, %struct.TYPE_16__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %160, i32 0, i32 3
  %162 = load i32 (%struct.TYPE_18__*, i32*, i32*, i32*)*, i32 (%struct.TYPE_18__*, i32*, i32*, i32*)** %161, align 8
  %163 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %164 = load i32*, i32** %14, align 8
  %165 = load i32*, i32** %17, align 8
  %166 = load i32*, i32** %11, align 8
  %167 = call i32 %162(%struct.TYPE_18__* %163, i32* %164, i32* %165, i32* %166)
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %173, label %169

169:                                              ; preds = %157
  %170 = load i32, i32* @EC_F_EC_GFP_SIMPLE_POINT_GET_AFFINE_COORDINATES, align 4
  %171 = load i32, i32* @ERR_R_BN_LIB, align 4
  %172 = call i32 @ECerr(i32 %170, i32 %171)
  br label %281

173:                                              ; preds = %157
  %174 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %175 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %174, i32 0, i32 0
  %176 = load %struct.TYPE_16__*, %struct.TYPE_16__** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %176, i32 0, i32 0
  %178 = load i64, i64* %177, align 8
  %179 = icmp eq i64 %178, 0
  br i1 %179, label %180, label %194

180:                                              ; preds = %173
  %181 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %182 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %181, i32 0, i32 0
  %183 = load %struct.TYPE_16__*, %struct.TYPE_16__** %182, align 8
  %184 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %183, i32 0, i32 2
  %185 = load i32 (%struct.TYPE_18__*, i32*, i32*, i32*)*, i32 (%struct.TYPE_18__*, i32*, i32*, i32*)** %184, align 8
  %186 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %187 = load i32*, i32** %15, align 8
  %188 = load i32*, i32** %14, align 8
  %189 = load i32*, i32** %11, align 8
  %190 = call i32 %185(%struct.TYPE_18__* %186, i32* %187, i32* %188, i32* %189)
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %193, label %192

192:                                              ; preds = %180
  br label %281

193:                                              ; preds = %180
  br label %205

194:                                              ; preds = %173
  %195 = load i32*, i32** %15, align 8
  %196 = load i32*, i32** %14, align 8
  %197 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %198 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %197, i32 0, i32 1
  %199 = load i32, i32* %198, align 8
  %200 = load i32*, i32** %11, align 8
  %201 = call i32 @BN_mod_sqr(i32* %195, i32* %196, i32 %199, i32* %200)
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %204, label %203

203:                                              ; preds = %194
  br label %281

204:                                              ; preds = %194
  br label %205

205:                                              ; preds = %204, %193
  %206 = load i32*, i32** %9, align 8
  %207 = icmp ne i32* %206, null
  br i1 %207, label %208, label %225

208:                                              ; preds = %205
  %209 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %210 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %209, i32 0, i32 0
  %211 = load %struct.TYPE_16__*, %struct.TYPE_16__** %210, align 8
  %212 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %211, i32 0, i32 1
  %213 = load i32 (%struct.TYPE_18__*, i32*, i32*, i32*, i32*)*, i32 (%struct.TYPE_18__*, i32*, i32*, i32*, i32*)** %212, align 8
  %214 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %215 = load i32*, i32** %9, align 8
  %216 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %217 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %216, i32 0, i32 1
  %218 = load i32*, i32** %217, align 8
  %219 = load i32*, i32** %15, align 8
  %220 = load i32*, i32** %11, align 8
  %221 = call i32 %213(%struct.TYPE_18__* %214, i32* %215, i32* %218, i32* %219, i32* %220)
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %224, label %223

223:                                              ; preds = %208
  br label %281

224:                                              ; preds = %208
  br label %225

225:                                              ; preds = %224, %205
  %226 = load i32*, i32** %10, align 8
  %227 = icmp ne i32* %226, null
  br i1 %227, label %228, label %279

228:                                              ; preds = %225
  %229 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %230 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %229, i32 0, i32 0
  %231 = load %struct.TYPE_16__*, %struct.TYPE_16__** %230, align 8
  %232 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %231, i32 0, i32 0
  %233 = load i64, i64* %232, align 8
  %234 = icmp eq i64 %233, 0
  br i1 %234, label %235, label %250

235:                                              ; preds = %228
  %236 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %237 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %236, i32 0, i32 0
  %238 = load %struct.TYPE_16__*, %struct.TYPE_16__** %237, align 8
  %239 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %238, i32 0, i32 1
  %240 = load i32 (%struct.TYPE_18__*, i32*, i32*, i32*, i32*)*, i32 (%struct.TYPE_18__*, i32*, i32*, i32*, i32*)** %239, align 8
  %241 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %242 = load i32*, i32** %16, align 8
  %243 = load i32*, i32** %15, align 8
  %244 = load i32*, i32** %14, align 8
  %245 = load i32*, i32** %11, align 8
  %246 = call i32 %240(%struct.TYPE_18__* %241, i32* %242, i32* %243, i32* %244, i32* %245)
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %249, label %248

248:                                              ; preds = %235
  br label %281

249:                                              ; preds = %235
  br label %262

250:                                              ; preds = %228
  %251 = load i32*, i32** %16, align 8
  %252 = load i32*, i32** %15, align 8
  %253 = load i32*, i32** %14, align 8
  %254 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %255 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %254, i32 0, i32 1
  %256 = load i32, i32* %255, align 8
  %257 = load i32*, i32** %11, align 8
  %258 = call i32 @BN_mod_mul(i32* %251, i32* %252, i32* %253, i32 %256, i32* %257)
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %261, label %260

260:                                              ; preds = %250
  br label %281

261:                                              ; preds = %250
  br label %262

262:                                              ; preds = %261, %249
  %263 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %264 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %263, i32 0, i32 0
  %265 = load %struct.TYPE_16__*, %struct.TYPE_16__** %264, align 8
  %266 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %265, i32 0, i32 1
  %267 = load i32 (%struct.TYPE_18__*, i32*, i32*, i32*, i32*)*, i32 (%struct.TYPE_18__*, i32*, i32*, i32*, i32*)** %266, align 8
  %268 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %269 = load i32*, i32** %10, align 8
  %270 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %271 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %270, i32 0, i32 0
  %272 = load i32*, i32** %271, align 8
  %273 = load i32*, i32** %16, align 8
  %274 = load i32*, i32** %11, align 8
  %275 = call i32 %267(%struct.TYPE_18__* %268, i32* %269, i32* %272, i32* %273, i32* %274)
  %276 = icmp ne i32 %275, 0
  br i1 %276, label %278, label %277

277:                                              ; preds = %262
  br label %281

278:                                              ; preds = %262
  br label %279

279:                                              ; preds = %278, %225
  br label %280

280:                                              ; preds = %279, %156
  store i32 1, i32* %18, align 4
  br label %281

281:                                              ; preds = %280, %277, %260, %248, %223, %203, %192, %169, %153, %141, %128, %109, %74, %52
  %282 = load i32*, i32** %11, align 8
  %283 = call i32 @BN_CTX_end(i32* %282)
  %284 = load i32*, i32** %12, align 8
  %285 = call i32 @BN_CTX_free(i32* %284)
  %286 = load i32, i32* %18, align 4
  store i32 %286, i32* %6, align 4
  br label %287

287:                                              ; preds = %281, %37, %23
  %288 = load i32, i32* %6, align 4
  ret i32 %288
}

declare dso_local i64 @EC_POINT_is_at_infinity(%struct.TYPE_18__*, %struct.TYPE_17__*) #1

declare dso_local i32 @ECerr(i32, i32) #1

declare dso_local i32* @BN_CTX_new_ex(i32) #1

declare dso_local i32 @BN_CTX_start(i32*) #1

declare dso_local i32* @BN_CTX_get(i32*) #1

declare dso_local i64 @BN_is_one(i32*) #1

declare dso_local i32 @BN_copy(i32*, i32*) #1

declare dso_local i32 @BN_mod_sqr(i32*, i32*, i32, i32*) #1

declare dso_local i32 @BN_mod_mul(i32*, i32*, i32*, i32, i32*) #1

declare dso_local i32 @BN_CTX_end(i32*) #1

declare dso_local i32 @BN_CTX_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
