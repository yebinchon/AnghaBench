; ModuleID = '/home/carl/AnghaBench/openssl/crypto/ec/extr_ecdsa_ossl.c_ecdsa_sign_setup.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/ec/extr_ecdsa_ossl.c_ecdsa_sign_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }

@EC_F_ECDSA_SIGN_SETUP = common dso_local global i32 0, align 4
@ERR_R_PASSED_NULL_PARAMETER = common dso_local global i32 0, align 4
@EC_R_MISSING_PRIVATE_KEY = common dso_local global i32 0, align 4
@EC_R_CURVE_DOES_NOT_SUPPORT_SIGNING = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4
@ERR_R_EC_LIB = common dso_local global i32 0, align 4
@EC_R_RANDOM_NUMBER_GENERATION_FAILED = common dso_local global i32 0, align 4
@ERR_R_BN_LIB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i32*, i32**, i32**, i8*, i32)* @ecdsa_sign_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecdsa_sign_setup(%struct.TYPE_6__* %0, i32* %1, i32** %2, i32** %3, i8* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32**, align 8
  %11 = alloca i32**, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32** %2, i32*** %10, align 8
  store i32** %3, i32*** %11, align 8
  store i8* %4, i8** %12, align 8
  store i32 %5, i32* %13, align 4
  store i32* null, i32** %14, align 8
  store i32* null, i32** %15, align 8
  store i32* null, i32** %16, align 8
  store i32* null, i32** %17, align 8
  store i32* null, i32** %19, align 8
  store i32 0, i32* %21, align 4
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %25 = icmp eq %struct.TYPE_6__* %24, null
  br i1 %25, label %30, label %26

26:                                               ; preds = %6
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %28 = call i32* @EC_KEY_get0_group(%struct.TYPE_6__* %27)
  store i32* %28, i32** %20, align 8
  %29 = icmp eq i32* %28, null
  br i1 %29, label %30, label %34

30:                                               ; preds = %26, %6
  %31 = load i32, i32* @EC_F_ECDSA_SIGN_SETUP, align 4
  %32 = load i32, i32* @ERR_R_PASSED_NULL_PARAMETER, align 4
  %33 = call i32 @ECerr(i32 %31, i32 %32)
  store i32 0, i32* %7, align 4
  br label %224

34:                                               ; preds = %26
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %36 = call i32* @EC_KEY_get0_private_key(%struct.TYPE_6__* %35)
  store i32* %36, i32** %23, align 8
  %37 = icmp eq i32* %36, null
  br i1 %37, label %38, label %42

38:                                               ; preds = %34
  %39 = load i32, i32* @EC_F_ECDSA_SIGN_SETUP, align 4
  %40 = load i32, i32* @EC_R_MISSING_PRIVATE_KEY, align 4
  %41 = call i32 @ECerr(i32 %39, i32 %40)
  store i32 0, i32* %7, align 4
  br label %224

42:                                               ; preds = %34
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %44 = call i32 @EC_KEY_can_sign(%struct.TYPE_6__* %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %50, label %46

46:                                               ; preds = %42
  %47 = load i32, i32* @EC_F_ECDSA_SIGN_SETUP, align 4
  %48 = load i32, i32* @EC_R_CURVE_DOES_NOT_SUPPORT_SIGNING, align 4
  %49 = call i32 @ECerr(i32 %47, i32 %48)
  store i32 0, i32* %7, align 4
  br label %224

50:                                               ; preds = %42
  %51 = load i32*, i32** %9, align 8
  store i32* %51, i32** %14, align 8
  %52 = icmp eq i32* %51, null
  br i1 %52, label %53, label %64

53:                                               ; preds = %50
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32* @BN_CTX_new_ex(i32 %56)
  store i32* %57, i32** %14, align 8
  %58 = icmp eq i32* %57, null
  br i1 %58, label %59, label %63

59:                                               ; preds = %53
  %60 = load i32, i32* @EC_F_ECDSA_SIGN_SETUP, align 4
  %61 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %62 = call i32 @ECerr(i32 %60, i32 %61)
  store i32 0, i32* %7, align 4
  br label %224

63:                                               ; preds = %53
  br label %64

64:                                               ; preds = %63, %50
  %65 = call i32* (...) @BN_secure_new()
  store i32* %65, i32** %15, align 8
  %66 = call i32* (...) @BN_new()
  store i32* %66, i32** %16, align 8
  %67 = call i32* (...) @BN_new()
  store i32* %67, i32** %17, align 8
  %68 = load i32*, i32** %15, align 8
  %69 = icmp eq i32* %68, null
  br i1 %69, label %76, label %70

70:                                               ; preds = %64
  %71 = load i32*, i32** %16, align 8
  %72 = icmp eq i32* %71, null
  br i1 %72, label %76, label %73

73:                                               ; preds = %70
  %74 = load i32*, i32** %17, align 8
  %75 = icmp eq i32* %74, null
  br i1 %75, label %76, label %80

76:                                               ; preds = %73, %70, %64
  %77 = load i32, i32* @EC_F_ECDSA_SIGN_SETUP, align 4
  %78 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %79 = call i32 @ECerr(i32 %77, i32 %78)
  br label %203

80:                                               ; preds = %73
  %81 = load i32*, i32** %20, align 8
  %82 = call i32* @EC_POINT_new(i32* %81)
  store i32* %82, i32** %19, align 8
  %83 = icmp eq i32* %82, null
  br i1 %83, label %84, label %88

84:                                               ; preds = %80
  %85 = load i32, i32* @EC_F_ECDSA_SIGN_SETUP, align 4
  %86 = load i32, i32* @ERR_R_EC_LIB, align 4
  %87 = call i32 @ECerr(i32 %85, i32 %86)
  br label %203

88:                                               ; preds = %80
  %89 = load i32*, i32** %20, align 8
  %90 = call i32* @EC_GROUP_get0_order(i32* %89)
  store i32* %90, i32** %18, align 8
  %91 = load i32*, i32** %18, align 8
  %92 = call i32 @BN_num_bits(i32* %91)
  store i32 %92, i32* %22, align 4
  %93 = load i32*, i32** %15, align 8
  %94 = load i32, i32* %22, align 4
  %95 = call i32 @BN_set_bit(i32* %93, i32 %94)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %107

97:                                               ; preds = %88
  %98 = load i32*, i32** %16, align 8
  %99 = load i32, i32* %22, align 4
  %100 = call i32 @BN_set_bit(i32* %98, i32 %99)
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %107

102:                                              ; preds = %97
  %103 = load i32*, i32** %17, align 8
  %104 = load i32, i32* %22, align 4
  %105 = call i32 @BN_set_bit(i32* %103, i32 %104)
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %108, label %107

107:                                              ; preds = %102, %97, %88
  br label %203

108:                                              ; preds = %102
  br label %109

109:                                              ; preds = %177, %108
  br label %110

110:                                              ; preds = %139, %109
  %111 = load i8*, i8** %12, align 8
  %112 = icmp ne i8* %111, null
  br i1 %112, label %113, label %127

113:                                              ; preds = %110
  %114 = load i32*, i32** %15, align 8
  %115 = load i32*, i32** %18, align 8
  %116 = load i32*, i32** %23, align 8
  %117 = load i8*, i8** %12, align 8
  %118 = load i32, i32* %13, align 4
  %119 = load i32*, i32** %14, align 8
  %120 = call i32 @BN_generate_dsa_nonce(i32* %114, i32* %115, i32* %116, i8* %117, i32 %118, i32* %119)
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %126, label %122

122:                                              ; preds = %113
  %123 = load i32, i32* @EC_F_ECDSA_SIGN_SETUP, align 4
  %124 = load i32, i32* @EC_R_RANDOM_NUMBER_GENERATION_FAILED, align 4
  %125 = call i32 @ECerr(i32 %123, i32 %124)
  br label %203

126:                                              ; preds = %113
  br label %138

127:                                              ; preds = %110
  %128 = load i32*, i32** %15, align 8
  %129 = load i32*, i32** %18, align 8
  %130 = load i32*, i32** %14, align 8
  %131 = call i32 @BN_priv_rand_range_ex(i32* %128, i32* %129, i32* %130)
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %137, label %133

133:                                              ; preds = %127
  %134 = load i32, i32* @EC_F_ECDSA_SIGN_SETUP, align 4
  %135 = load i32, i32* @EC_R_RANDOM_NUMBER_GENERATION_FAILED, align 4
  %136 = call i32 @ECerr(i32 %134, i32 %135)
  br label %203

137:                                              ; preds = %127
  br label %138

138:                                              ; preds = %137, %126
  br label %139

139:                                              ; preds = %138
  %140 = load i32*, i32** %15, align 8
  %141 = call i64 @BN_is_zero(i32* %140)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %110, label %143

143:                                              ; preds = %139
  %144 = load i32*, i32** %20, align 8
  %145 = load i32*, i32** %19, align 8
  %146 = load i32*, i32** %15, align 8
  %147 = load i32*, i32** %14, align 8
  %148 = call i32 @EC_POINT_mul(i32* %144, i32* %145, i32* %146, i32* null, i32* null, i32* %147)
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %154, label %150

150:                                              ; preds = %143
  %151 = load i32, i32* @EC_F_ECDSA_SIGN_SETUP, align 4
  %152 = load i32, i32* @ERR_R_EC_LIB, align 4
  %153 = call i32 @ECerr(i32 %151, i32 %152)
  br label %203

154:                                              ; preds = %143
  %155 = load i32*, i32** %20, align 8
  %156 = load i32*, i32** %19, align 8
  %157 = load i32*, i32** %17, align 8
  %158 = load i32*, i32** %14, align 8
  %159 = call i32 @EC_POINT_get_affine_coordinates(i32* %155, i32* %156, i32* %157, i32* null, i32* %158)
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %165, label %161

161:                                              ; preds = %154
  %162 = load i32, i32* @EC_F_ECDSA_SIGN_SETUP, align 4
  %163 = load i32, i32* @ERR_R_EC_LIB, align 4
  %164 = call i32 @ECerr(i32 %162, i32 %163)
  br label %203

165:                                              ; preds = %154
  %166 = load i32*, i32** %16, align 8
  %167 = load i32*, i32** %17, align 8
  %168 = load i32*, i32** %18, align 8
  %169 = load i32*, i32** %14, align 8
  %170 = call i32 @BN_nnmod(i32* %166, i32* %167, i32* %168, i32* %169)
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %176, label %172

172:                                              ; preds = %165
  %173 = load i32, i32* @EC_F_ECDSA_SIGN_SETUP, align 4
  %174 = load i32, i32* @ERR_R_BN_LIB, align 4
  %175 = call i32 @ECerr(i32 %173, i32 %174)
  br label %203

176:                                              ; preds = %165
  br label %177

177:                                              ; preds = %176
  %178 = load i32*, i32** %16, align 8
  %179 = call i64 @BN_is_zero(i32* %178)
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %109, label %181

181:                                              ; preds = %177
  %182 = load i32*, i32** %20, align 8
  %183 = load i32*, i32** %15, align 8
  %184 = load i32*, i32** %15, align 8
  %185 = load i32*, i32** %14, align 8
  %186 = call i32 @ec_group_do_inverse_ord(i32* %182, i32* %183, i32* %184, i32* %185)
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %192, label %188

188:                                              ; preds = %181
  %189 = load i32, i32* @EC_F_ECDSA_SIGN_SETUP, align 4
  %190 = load i32, i32* @ERR_R_BN_LIB, align 4
  %191 = call i32 @ECerr(i32 %189, i32 %190)
  br label %203

192:                                              ; preds = %181
  %193 = load i32**, i32*** %11, align 8
  %194 = load i32*, i32** %193, align 8
  %195 = call i32 @BN_clear_free(i32* %194)
  %196 = load i32**, i32*** %10, align 8
  %197 = load i32*, i32** %196, align 8
  %198 = call i32 @BN_clear_free(i32* %197)
  %199 = load i32*, i32** %16, align 8
  %200 = load i32**, i32*** %11, align 8
  store i32* %199, i32** %200, align 8
  %201 = load i32*, i32** %15, align 8
  %202 = load i32**, i32*** %10, align 8
  store i32* %201, i32** %202, align 8
  store i32 1, i32* %21, align 4
  br label %203

203:                                              ; preds = %192, %188, %172, %161, %150, %133, %122, %107, %84, %76
  %204 = load i32, i32* %21, align 4
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %211, label %206

206:                                              ; preds = %203
  %207 = load i32*, i32** %15, align 8
  %208 = call i32 @BN_clear_free(i32* %207)
  %209 = load i32*, i32** %16, align 8
  %210 = call i32 @BN_clear_free(i32* %209)
  br label %211

211:                                              ; preds = %206, %203
  %212 = load i32*, i32** %14, align 8
  %213 = load i32*, i32** %9, align 8
  %214 = icmp ne i32* %212, %213
  br i1 %214, label %215, label %218

215:                                              ; preds = %211
  %216 = load i32*, i32** %14, align 8
  %217 = call i32 @BN_CTX_free(i32* %216)
  br label %218

218:                                              ; preds = %215, %211
  %219 = load i32*, i32** %19, align 8
  %220 = call i32 @EC_POINT_free(i32* %219)
  %221 = load i32*, i32** %17, align 8
  %222 = call i32 @BN_clear_free(i32* %221)
  %223 = load i32, i32* %21, align 4
  store i32 %223, i32* %7, align 4
  br label %224

224:                                              ; preds = %218, %59, %46, %38, %30
  %225 = load i32, i32* %7, align 4
  ret i32 %225
}

declare dso_local i32* @EC_KEY_get0_group(%struct.TYPE_6__*) #1

declare dso_local i32 @ECerr(i32, i32) #1

declare dso_local i32* @EC_KEY_get0_private_key(%struct.TYPE_6__*) #1

declare dso_local i32 @EC_KEY_can_sign(%struct.TYPE_6__*) #1

declare dso_local i32* @BN_CTX_new_ex(i32) #1

declare dso_local i32* @BN_secure_new(...) #1

declare dso_local i32* @BN_new(...) #1

declare dso_local i32* @EC_POINT_new(i32*) #1

declare dso_local i32* @EC_GROUP_get0_order(i32*) #1

declare dso_local i32 @BN_num_bits(i32*) #1

declare dso_local i32 @BN_set_bit(i32*, i32) #1

declare dso_local i32 @BN_generate_dsa_nonce(i32*, i32*, i32*, i8*, i32, i32*) #1

declare dso_local i32 @BN_priv_rand_range_ex(i32*, i32*, i32*) #1

declare dso_local i64 @BN_is_zero(i32*) #1

declare dso_local i32 @EC_POINT_mul(i32*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @EC_POINT_get_affine_coordinates(i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @BN_nnmod(i32*, i32*, i32*, i32*) #1

declare dso_local i32 @ec_group_do_inverse_ord(i32*, i32*, i32*, i32*) #1

declare dso_local i32 @BN_clear_free(i32*) #1

declare dso_local i32 @BN_CTX_free(i32*) #1

declare dso_local i32 @EC_POINT_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
