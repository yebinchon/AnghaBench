; ModuleID = '/home/carl/AnghaBench/openssl/crypto/ec/extr_ec_key.c_EC_KEY_copy.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/ec/extr_ec_key.c_EC_KEY_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { %struct.TYPE_21__*, i32*, i32, i32, i32, i32, i32, %struct.TYPE_19__*, i32*, i32*, i32 }
%struct.TYPE_21__ = type { i64 (%struct.TYPE_22__*, %struct.TYPE_22__*)*, i32 (%struct.TYPE_22__*)* }
%struct.TYPE_19__ = type { %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i64 (%struct.TYPE_22__*, %struct.TYPE_22__*)*, i32 (%struct.TYPE_22__*)* }

@EC_F_EC_KEY_COPY = common dso_local global i32 0, align 4
@ERR_R_PASSED_NULL_PARAMETER = common dso_local global i32 0, align 4
@CRYPTO_EX_INDEX_EC_KEY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_22__* @EC_KEY_copy(%struct.TYPE_22__* %0, %struct.TYPE_22__* %1) #0 {
  %3 = alloca %struct.TYPE_22__*, align 8
  %4 = alloca %struct.TYPE_22__*, align 8
  %5 = alloca %struct.TYPE_22__*, align 8
  %6 = alloca i32*, align 8
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %4, align 8
  store %struct.TYPE_22__* %1, %struct.TYPE_22__** %5, align 8
  %7 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %8 = icmp eq %struct.TYPE_22__* %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %2
  %10 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %11 = icmp eq %struct.TYPE_22__* %10, null
  br i1 %11, label %12, label %16

12:                                               ; preds = %9, %2
  %13 = load i32, i32* @EC_F_EC_KEY_COPY, align 4
  %14 = load i32, i32* @ERR_R_PASSED_NULL_PARAMETER, align 4
  %15 = call i32 @ECerr(i32 %13, i32 %14)
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %3, align 8
  br label %280

16:                                               ; preds = %9
  %17 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_21__*, %struct.TYPE_21__** %18, align 8
  %20 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_21__*, %struct.TYPE_21__** %21, align 8
  %23 = icmp ne %struct.TYPE_21__* %19, %22
  br i1 %23, label %24, label %73

24:                                               ; preds = %16
  %25 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_21__*, %struct.TYPE_21__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %27, i32 0, i32 1
  %29 = load i32 (%struct.TYPE_22__*)*, i32 (%struct.TYPE_22__*)** %28, align 8
  %30 = icmp ne i32 (%struct.TYPE_22__*)* %29, null
  br i1 %30, label %31, label %39

31:                                               ; preds = %24
  %32 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_21__*, %struct.TYPE_21__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %34, i32 0, i32 1
  %36 = load i32 (%struct.TYPE_22__*)*, i32 (%struct.TYPE_22__*)** %35, align 8
  %37 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %38 = call i32 %36(%struct.TYPE_22__* %37)
  br label %39

39:                                               ; preds = %31, %24
  %40 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %40, i32 0, i32 7
  %42 = load %struct.TYPE_19__*, %struct.TYPE_19__** %41, align 8
  %43 = icmp ne %struct.TYPE_19__* %42, null
  br i1 %43, label %44, label %63

44:                                               ; preds = %39
  %45 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %45, i32 0, i32 7
  %47 = load %struct.TYPE_19__*, %struct.TYPE_19__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_20__*, %struct.TYPE_20__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %49, i32 0, i32 1
  %51 = load i32 (%struct.TYPE_22__*)*, i32 (%struct.TYPE_22__*)** %50, align 8
  %52 = icmp ne i32 (%struct.TYPE_22__*)* %51, null
  br i1 %52, label %53, label %63

53:                                               ; preds = %44
  %54 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %54, i32 0, i32 7
  %56 = load %struct.TYPE_19__*, %struct.TYPE_19__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_20__*, %struct.TYPE_20__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %58, i32 0, i32 1
  %60 = load i32 (%struct.TYPE_22__*)*, i32 (%struct.TYPE_22__*)** %59, align 8
  %61 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %62 = call i32 %60(%struct.TYPE_22__* %61)
  br label %63

63:                                               ; preds = %53, %44, %39
  %64 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %64, i32 0, i32 1
  %66 = load i32*, i32** %65, align 8
  %67 = call i64 @ENGINE_finish(i32* %66)
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %63
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %3, align 8
  br label %280

70:                                               ; preds = %63
  %71 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %71, i32 0, i32 1
  store i32* null, i32** %72, align 8
  br label %73

73:                                               ; preds = %70, %16
  %74 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %74, i32 0, i32 10
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %77, i32 0, i32 10
  store i32 %76, i32* %78, align 8
  %79 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %79, i32 0, i32 7
  %81 = load %struct.TYPE_19__*, %struct.TYPE_19__** %80, align 8
  %82 = icmp ne %struct.TYPE_19__* %81, null
  br i1 %82, label %83, label %200

83:                                               ; preds = %73
  %84 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %84, i32 0, i32 7
  %86 = load %struct.TYPE_19__*, %struct.TYPE_19__** %85, align 8
  %87 = call i32* @EC_GROUP_method_of(%struct.TYPE_19__* %86)
  store i32* %87, i32** %6, align 8
  %88 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %88, i32 0, i32 7
  %90 = load %struct.TYPE_19__*, %struct.TYPE_19__** %89, align 8
  %91 = call i32 @EC_GROUP_free(%struct.TYPE_19__* %90)
  %92 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %92, i32 0, i32 10
  %94 = load i32, i32* %93, align 8
  %95 = load i32*, i32** %6, align 8
  %96 = call %struct.TYPE_19__* @EC_GROUP_new_ex(i32 %94, i32* %95)
  %97 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %97, i32 0, i32 7
  store %struct.TYPE_19__* %96, %struct.TYPE_19__** %98, align 8
  %99 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %99, i32 0, i32 7
  %101 = load %struct.TYPE_19__*, %struct.TYPE_19__** %100, align 8
  %102 = icmp eq %struct.TYPE_19__* %101, null
  br i1 %102, label %103, label %104

103:                                              ; preds = %83
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %3, align 8
  br label %280

104:                                              ; preds = %83
  %105 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %106 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %105, i32 0, i32 7
  %107 = load %struct.TYPE_19__*, %struct.TYPE_19__** %106, align 8
  %108 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %109 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %108, i32 0, i32 7
  %110 = load %struct.TYPE_19__*, %struct.TYPE_19__** %109, align 8
  %111 = call i32 @EC_GROUP_copy(%struct.TYPE_19__* %107, %struct.TYPE_19__* %110)
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %114, label %113

113:                                              ; preds = %104
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %3, align 8
  br label %280

114:                                              ; preds = %104
  %115 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %116 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %115, i32 0, i32 9
  %117 = load i32*, i32** %116, align 8
  %118 = icmp ne i32* %117, null
  br i1 %118, label %119, label %146

119:                                              ; preds = %114
  %120 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %121 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %120, i32 0, i32 9
  %122 = load i32*, i32** %121, align 8
  %123 = call i32 @EC_POINT_free(i32* %122)
  %124 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %125 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %124, i32 0, i32 7
  %126 = load %struct.TYPE_19__*, %struct.TYPE_19__** %125, align 8
  %127 = call i32* @EC_POINT_new(%struct.TYPE_19__* %126)
  %128 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %129 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %128, i32 0, i32 9
  store i32* %127, i32** %129, align 8
  %130 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %131 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %130, i32 0, i32 9
  %132 = load i32*, i32** %131, align 8
  %133 = icmp eq i32* %132, null
  br i1 %133, label %134, label %135

134:                                              ; preds = %119
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %3, align 8
  br label %280

135:                                              ; preds = %119
  %136 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %137 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %136, i32 0, i32 9
  %138 = load i32*, i32** %137, align 8
  %139 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %140 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %139, i32 0, i32 9
  %141 = load i32*, i32** %140, align 8
  %142 = call i32 @EC_POINT_copy(i32* %138, i32* %141)
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %145, label %144

144:                                              ; preds = %135
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %3, align 8
  br label %280

145:                                              ; preds = %135
  br label %146

146:                                              ; preds = %145, %114
  %147 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %148 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %147, i32 0, i32 8
  %149 = load i32*, i32** %148, align 8
  %150 = icmp ne i32* %149, null
  br i1 %150, label %151, label %199

151:                                              ; preds = %146
  %152 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %153 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %152, i32 0, i32 8
  %154 = load i32*, i32** %153, align 8
  %155 = icmp eq i32* %154, null
  br i1 %155, label %156, label %166

156:                                              ; preds = %151
  %157 = call i32* (...) @BN_new()
  %158 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %159 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %158, i32 0, i32 8
  store i32* %157, i32** %159, align 8
  %160 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %161 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %160, i32 0, i32 8
  %162 = load i32*, i32** %161, align 8
  %163 = icmp eq i32* %162, null
  br i1 %163, label %164, label %165

164:                                              ; preds = %156
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %3, align 8
  br label %280

165:                                              ; preds = %156
  br label %166

166:                                              ; preds = %165, %151
  %167 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %168 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %167, i32 0, i32 8
  %169 = load i32*, i32** %168, align 8
  %170 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %171 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %170, i32 0, i32 8
  %172 = load i32*, i32** %171, align 8
  %173 = call i32 @BN_copy(i32* %169, i32* %172)
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %176, label %175

175:                                              ; preds = %166
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %3, align 8
  br label %280

176:                                              ; preds = %166
  %177 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %178 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %177, i32 0, i32 7
  %179 = load %struct.TYPE_19__*, %struct.TYPE_19__** %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %179, i32 0, i32 0
  %181 = load %struct.TYPE_20__*, %struct.TYPE_20__** %180, align 8
  %182 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %181, i32 0, i32 0
  %183 = load i64 (%struct.TYPE_22__*, %struct.TYPE_22__*)*, i64 (%struct.TYPE_22__*, %struct.TYPE_22__*)** %182, align 8
  %184 = icmp ne i64 (%struct.TYPE_22__*, %struct.TYPE_22__*)* %183, null
  br i1 %184, label %185, label %198

185:                                              ; preds = %176
  %186 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %187 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %186, i32 0, i32 7
  %188 = load %struct.TYPE_19__*, %struct.TYPE_19__** %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %188, i32 0, i32 0
  %190 = load %struct.TYPE_20__*, %struct.TYPE_20__** %189, align 8
  %191 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %190, i32 0, i32 0
  %192 = load i64 (%struct.TYPE_22__*, %struct.TYPE_22__*)*, i64 (%struct.TYPE_22__*, %struct.TYPE_22__*)** %191, align 8
  %193 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %194 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %195 = call i64 %192(%struct.TYPE_22__* %193, %struct.TYPE_22__* %194)
  %196 = icmp eq i64 %195, 0
  br i1 %196, label %197, label %198

197:                                              ; preds = %185
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %3, align 8
  br label %280

198:                                              ; preds = %185, %176
  br label %199

199:                                              ; preds = %198, %146
  br label %200

200:                                              ; preds = %199, %73
  %201 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %202 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %201, i32 0, i32 6
  %203 = load i32, i32* %202, align 8
  %204 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %205 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %204, i32 0, i32 6
  store i32 %203, i32* %205, align 8
  %206 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %207 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %206, i32 0, i32 5
  %208 = load i32, i32* %207, align 4
  %209 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %210 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %209, i32 0, i32 5
  store i32 %208, i32* %210, align 4
  %211 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %212 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %211, i32 0, i32 4
  %213 = load i32, i32* %212, align 8
  %214 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %215 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %214, i32 0, i32 4
  store i32 %213, i32* %215, align 8
  %216 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %217 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %216, i32 0, i32 3
  %218 = load i32, i32* %217, align 4
  %219 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %220 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %219, i32 0, i32 3
  store i32 %218, i32* %220, align 4
  %221 = load i32, i32* @CRYPTO_EX_INDEX_EC_KEY, align 4
  %222 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %223 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %222, i32 0, i32 2
  %224 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %225 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %224, i32 0, i32 2
  %226 = call i32 @CRYPTO_dup_ex_data(i32 %221, i32* %223, i32* %225)
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %229, label %228

228:                                              ; preds = %200
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %3, align 8
  br label %280

229:                                              ; preds = %200
  %230 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %231 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %230, i32 0, i32 0
  %232 = load %struct.TYPE_21__*, %struct.TYPE_21__** %231, align 8
  %233 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %234 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %233, i32 0, i32 0
  %235 = load %struct.TYPE_21__*, %struct.TYPE_21__** %234, align 8
  %236 = icmp ne %struct.TYPE_21__* %232, %235
  br i1 %236, label %237, label %260

237:                                              ; preds = %229
  %238 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %239 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %238, i32 0, i32 1
  %240 = load i32*, i32** %239, align 8
  %241 = icmp ne i32* %240, null
  br i1 %241, label %242, label %249

242:                                              ; preds = %237
  %243 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %244 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %243, i32 0, i32 1
  %245 = load i32*, i32** %244, align 8
  %246 = call i64 @ENGINE_init(i32* %245)
  %247 = icmp eq i64 %246, 0
  br i1 %247, label %248, label %249

248:                                              ; preds = %242
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %3, align 8
  br label %280

249:                                              ; preds = %242, %237
  %250 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %251 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %250, i32 0, i32 1
  %252 = load i32*, i32** %251, align 8
  %253 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %254 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %253, i32 0, i32 1
  store i32* %252, i32** %254, align 8
  %255 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %256 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %255, i32 0, i32 0
  %257 = load %struct.TYPE_21__*, %struct.TYPE_21__** %256, align 8
  %258 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %259 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %258, i32 0, i32 0
  store %struct.TYPE_21__* %257, %struct.TYPE_21__** %259, align 8
  br label %260

260:                                              ; preds = %249, %229
  %261 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %262 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %261, i32 0, i32 0
  %263 = load %struct.TYPE_21__*, %struct.TYPE_21__** %262, align 8
  %264 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %263, i32 0, i32 0
  %265 = load i64 (%struct.TYPE_22__*, %struct.TYPE_22__*)*, i64 (%struct.TYPE_22__*, %struct.TYPE_22__*)** %264, align 8
  %266 = icmp ne i64 (%struct.TYPE_22__*, %struct.TYPE_22__*)* %265, null
  br i1 %266, label %267, label %278

267:                                              ; preds = %260
  %268 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %269 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %268, i32 0, i32 0
  %270 = load %struct.TYPE_21__*, %struct.TYPE_21__** %269, align 8
  %271 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %270, i32 0, i32 0
  %272 = load i64 (%struct.TYPE_22__*, %struct.TYPE_22__*)*, i64 (%struct.TYPE_22__*, %struct.TYPE_22__*)** %271, align 8
  %273 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %274 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %275 = call i64 %272(%struct.TYPE_22__* %273, %struct.TYPE_22__* %274)
  %276 = icmp eq i64 %275, 0
  br i1 %276, label %277, label %278

277:                                              ; preds = %267
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %3, align 8
  br label %280

278:                                              ; preds = %267, %260
  %279 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  store %struct.TYPE_22__* %279, %struct.TYPE_22__** %3, align 8
  br label %280

280:                                              ; preds = %278, %277, %248, %228, %197, %175, %164, %144, %134, %113, %103, %69, %12
  %281 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  ret %struct.TYPE_22__* %281
}

declare dso_local i32 @ECerr(i32, i32) #1

declare dso_local i64 @ENGINE_finish(i32*) #1

declare dso_local i32* @EC_GROUP_method_of(%struct.TYPE_19__*) #1

declare dso_local i32 @EC_GROUP_free(%struct.TYPE_19__*) #1

declare dso_local %struct.TYPE_19__* @EC_GROUP_new_ex(i32, i32*) #1

declare dso_local i32 @EC_GROUP_copy(%struct.TYPE_19__*, %struct.TYPE_19__*) #1

declare dso_local i32 @EC_POINT_free(i32*) #1

declare dso_local i32* @EC_POINT_new(%struct.TYPE_19__*) #1

declare dso_local i32 @EC_POINT_copy(i32*, i32*) #1

declare dso_local i32* @BN_new(...) #1

declare dso_local i32 @BN_copy(i32*, i32*) #1

declare dso_local i32 @CRYPTO_dup_ex_data(i32, i32*, i32*) #1

declare dso_local i64 @ENGINE_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
