; ModuleID = '/home/carl/AnghaBench/openssl/crypto/ec/extr_ecp_s390x_nistp.c_ecdsa_s390x_nistp_sign_sig.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/ec/extr_ecp_s390x_nistp.c_ecdsa_s390x_nistp_sign_sig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32*, i32* }

@S390X_SIZE_PARAM = common dso_local global i32 0, align 4
@EC_F_ECDSA_S390X_NISTP_SIGN_SIG = common dso_local global i32 0, align 4
@EC_R_MISSING_PARAMETERS = common dso_local global i32 0, align 4
@EC_R_CURVE_DOES_NOT_SUPPORT_SIGNING = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4
@ERR_R_BN_LIB = common dso_local global i32 0, align 4
@EC_R_RANDOM_NUMBER_GENERATION_FAILED = common dso_local global i32 0, align 4
@S390X_KDSA_D = common dso_local global i32 0, align 4
@ERR_R_ECDSA_LIB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_5__* (i8*, i32, i32*, i32*, i32*, i32, i32)* @ecdsa_s390x_nistp_sign_sig to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_5__* @ecdsa_s390x_nistp_sign_sig(i8* %0, i32 %1, i32* %2, i32* %3, i32* %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca %struct.TYPE_5__*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store i8* %0, i8** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32* %2, i32** %11, align 8
  store i32* %3, i32** %12, align 8
  store i32* %4, i32** %13, align 8
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %25 = load i32, i32* @S390X_SIZE_PARAM, align 4
  %26 = zext i32 %25 to i64
  %27 = call i8* @llvm.stacksave()
  store i8* %27, i8** %16, align 8
  %28 = alloca i8, i64 %26, align 16
  store i64 %26, i64* %17, align 8
  store i32 0, i32* %18, align 4
  %29 = load i32*, i32** %13, align 8
  %30 = call i32* @EC_KEY_get0_group(i32* %29)
  store i32* %30, i32** %21, align 8
  %31 = load i32*, i32** %13, align 8
  %32 = call i32* @EC_KEY_get0_private_key(i32* %31)
  store i32* %32, i32** %22, align 8
  %33 = load i32*, i32** %21, align 8
  %34 = icmp eq i32* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %7
  %36 = load i32*, i32** %22, align 8
  %37 = icmp eq i32* %36, null
  br i1 %37, label %38, label %42

38:                                               ; preds = %35, %7
  %39 = load i32, i32* @EC_F_ECDSA_S390X_NISTP_SIGN_SIG, align 4
  %40 = load i32, i32* @EC_R_MISSING_PARAMETERS, align 4
  %41 = call i32 @ECerr(i32 %39, i32 %40)
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %8, align 8
  store i32 1, i32* %24, align 4
  br label %216

42:                                               ; preds = %35
  %43 = load i32*, i32** %13, align 8
  %44 = call i32 @EC_KEY_can_sign(i32* %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %50, label %46

46:                                               ; preds = %42
  %47 = load i32, i32* @EC_F_ECDSA_S390X_NISTP_SIGN_SIG, align 4
  %48 = load i32, i32* @EC_R_CURVE_DOES_NOT_SUPPORT_SIGNING, align 4
  %49 = call i32 @ECerr(i32 %47, i32 %48)
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %8, align 8
  store i32 1, i32* %24, align 4
  br label %216

50:                                               ; preds = %42
  %51 = call i32* (...) @BN_secure_new()
  store i32* %51, i32** %19, align 8
  %52 = call %struct.TYPE_5__* (...) @ECDSA_SIG_new()
  store %struct.TYPE_5__* %52, %struct.TYPE_5__** %20, align 8
  %53 = load i32*, i32** %19, align 8
  %54 = icmp eq i32* %53, null
  br i1 %54, label %58, label %55

55:                                               ; preds = %50
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %57 = icmp eq %struct.TYPE_5__* %56, null
  br i1 %57, label %58, label %62

58:                                               ; preds = %55, %50
  %59 = load i32, i32* @EC_F_ECDSA_S390X_NISTP_SIGN_SIG, align 4
  %60 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %61 = call i32 @ECerr(i32 %59, i32 %60)
  br label %199

62:                                               ; preds = %55
  %63 = call i8* (...) @BN_new()
  %64 = bitcast i8* %63 to i32*
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 1
  store i32* %64, i32** %66, align 8
  %67 = call i8* (...) @BN_new()
  %68 = bitcast i8* %67 to i32*
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 0
  store i32* %68, i32** %70, align 8
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 1
  %73 = load i32*, i32** %72, align 8
  %74 = icmp eq i32* %73, null
  br i1 %74, label %80, label %75

75:                                               ; preds = %62
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 0
  %78 = load i32*, i32** %77, align 8
  %79 = icmp eq i32* %78, null
  br i1 %79, label %80, label %84

80:                                               ; preds = %75, %62
  %81 = load i32, i32* @EC_F_ECDSA_S390X_NISTP_SIGN_SIG, align 4
  %82 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %83 = call i32 @ECerr(i32 %81, i32 %82)
  br label %199

84:                                               ; preds = %75
  %85 = trunc i64 %26 to i32
  %86 = call i32 @memset(i8* %28, i32 0, i32 %85)
  %87 = load i32, i32* %15, align 4
  %88 = load i32, i32* %10, align 4
  %89 = load i32, i32* %15, align 4
  %90 = icmp sgt i32 %88, %89
  br i1 %90, label %91, label %93

91:                                               ; preds = %84
  %92 = load i32, i32* %15, align 4
  br label %95

93:                                               ; preds = %84
  %94 = load i32, i32* %10, align 4
  br label %95

95:                                               ; preds = %93, %91
  %96 = phi i32 [ %92, %91 ], [ %94, %93 ]
  %97 = sub nsw i32 %87, %96
  store i32 %97, i32* %23, align 4
  %98 = load i32, i32* %15, align 4
  %99 = call i32 @S390X_OFF_H(i32 %98)
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i8, i8* %28, i64 %100
  %102 = load i32, i32* %23, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i8, i8* %101, i64 %103
  %105 = load i8*, i8** %9, align 8
  %106 = load i32, i32* %15, align 4
  %107 = load i32, i32* %23, align 4
  %108 = sub nsw i32 %106, %107
  %109 = call i32 @memcpy(i8* %104, i8* %105, i32 %108)
  %110 = load i32*, i32** %22, align 8
  %111 = load i32, i32* %15, align 4
  %112 = call i32 @S390X_OFF_K(i32 %111)
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i8, i8* %28, i64 %113
  %115 = load i32, i32* %15, align 4
  %116 = call i32 @BN_bn2binpad(i32* %110, i8* %114, i32 %115)
  %117 = icmp eq i32 %116, -1
  br i1 %117, label %118, label %122

118:                                              ; preds = %95
  %119 = load i32, i32* @EC_F_ECDSA_S390X_NISTP_SIGN_SIG, align 4
  %120 = load i32, i32* @ERR_R_BN_LIB, align 4
  %121 = call i32 @ECerr(i32 %119, i32 %120)
  br label %199

122:                                              ; preds = %95
  %123 = load i32*, i32** %12, align 8
  %124 = icmp eq i32* %123, null
  br i1 %124, label %128, label %125

125:                                              ; preds = %122
  %126 = load i32*, i32** %11, align 8
  %127 = icmp eq i32* %126, null
  br i1 %127, label %128, label %141

128:                                              ; preds = %125, %122
  %129 = load i32, i32* %15, align 4
  %130 = call i32 @S390X_OFF_RN(i32 %129)
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i8, i8* %28, i64 %131
  %133 = load i32, i32* %15, align 4
  %134 = call i32 @RAND_priv_bytes(i8* %132, i32 %133)
  %135 = icmp ne i32 %134, 1
  br i1 %135, label %136, label %140

136:                                              ; preds = %128
  %137 = load i32, i32* @EC_F_ECDSA_S390X_NISTP_SIGN_SIG, align 4
  %138 = load i32, i32* @EC_R_RANDOM_NUMBER_GENERATION_FAILED, align 4
  %139 = call i32 @ECerr(i32 %137, i32 %138)
  br label %199

140:                                              ; preds = %128
  br label %164

141:                                              ; preds = %125
  %142 = load i32*, i32** %21, align 8
  %143 = load i32*, i32** %19, align 8
  %144 = load i32*, i32** %11, align 8
  %145 = call i64 @ec_group_do_inverse_ord(i32* %142, i32* %143, i32* %144, i32* null)
  %146 = icmp eq i64 %145, 0
  br i1 %146, label %156, label %147

147:                                              ; preds = %141
  %148 = load i32*, i32** %19, align 8
  %149 = load i32, i32* %15, align 4
  %150 = call i32 @S390X_OFF_RN(i32 %149)
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i8, i8* %28, i64 %151
  %153 = load i32, i32* %15, align 4
  %154 = call i32 @BN_bn2binpad(i32* %148, i8* %152, i32 %153)
  %155 = icmp eq i32 %154, -1
  br i1 %155, label %156, label %160

156:                                              ; preds = %147, %141
  %157 = load i32, i32* @EC_F_ECDSA_S390X_NISTP_SIGN_SIG, align 4
  %158 = load i32, i32* @ERR_R_BN_LIB, align 4
  %159 = call i32 @ECerr(i32 %157, i32 %158)
  br label %199

160:                                              ; preds = %147
  %161 = load i32, i32* @S390X_KDSA_D, align 4
  %162 = load i32, i32* %14, align 4
  %163 = or i32 %162, %161
  store i32 %163, i32* %14, align 4
  br label %164

164:                                              ; preds = %160, %140
  %165 = load i32, i32* %14, align 4
  %166 = call i64 @s390x_kdsa(i32 %165, i8* %28, i32* null, i32 0)
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %172

168:                                              ; preds = %164
  %169 = load i32, i32* @EC_F_ECDSA_S390X_NISTP_SIGN_SIG, align 4
  %170 = load i32, i32* @ERR_R_ECDSA_LIB, align 4
  %171 = call i32 @ECerr(i32 %169, i32 %170)
  br label %199

172:                                              ; preds = %164
  %173 = load i32, i32* %15, align 4
  %174 = call i32 @S390X_OFF_R(i32 %173)
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds i8, i8* %28, i64 %175
  %177 = load i32, i32* %15, align 4
  %178 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %179 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %178, i32 0, i32 1
  %180 = load i32*, i32** %179, align 8
  %181 = call i32* @BN_bin2bn(i8* %176, i32 %177, i32* %180)
  %182 = icmp eq i32* %181, null
  br i1 %182, label %194, label %183

183:                                              ; preds = %172
  %184 = load i32, i32* %15, align 4
  %185 = call i32 @S390X_OFF_S(i32 %184)
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds i8, i8* %28, i64 %186
  %188 = load i32, i32* %15, align 4
  %189 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %190 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %189, i32 0, i32 0
  %191 = load i32*, i32** %190, align 8
  %192 = call i32* @BN_bin2bn(i8* %187, i32 %188, i32* %191)
  %193 = icmp eq i32* %192, null
  br i1 %193, label %194, label %198

194:                                              ; preds = %183, %172
  %195 = load i32, i32* @EC_F_ECDSA_S390X_NISTP_SIGN_SIG, align 4
  %196 = load i32, i32* @ERR_R_BN_LIB, align 4
  %197 = call i32 @ECerr(i32 %195, i32 %196)
  br label %199

198:                                              ; preds = %183
  store i32 1, i32* %18, align 4
  br label %199

199:                                              ; preds = %198, %194, %168, %156, %136, %118, %80, %58
  %200 = load i32, i32* %15, align 4
  %201 = call i32 @S390X_OFF_K(i32 %200)
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds i8, i8* %28, i64 %202
  %204 = load i32, i32* %15, align 4
  %205 = mul nsw i32 2, %204
  %206 = call i32 @OPENSSL_cleanse(i8* %203, i32 %205)
  %207 = load i32, i32* %18, align 4
  %208 = icmp ne i32 %207, 1
  br i1 %208, label %209, label %212

209:                                              ; preds = %199
  %210 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %211 = call i32 @ECDSA_SIG_free(%struct.TYPE_5__* %210)
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %20, align 8
  br label %212

212:                                              ; preds = %209, %199
  %213 = load i32*, i32** %19, align 8
  %214 = call i32 @BN_clear_free(i32* %213)
  %215 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  store %struct.TYPE_5__* %215, %struct.TYPE_5__** %8, align 8
  store i32 1, i32* %24, align 4
  br label %216

216:                                              ; preds = %212, %46, %38
  %217 = load i8*, i8** %16, align 8
  call void @llvm.stackrestore(i8* %217)
  %218 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  ret %struct.TYPE_5__* %218
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32* @EC_KEY_get0_group(i32*) #2

declare dso_local i32* @EC_KEY_get0_private_key(i32*) #2

declare dso_local i32 @ECerr(i32, i32) #2

declare dso_local i32 @EC_KEY_can_sign(i32*) #2

declare dso_local i32* @BN_secure_new(...) #2

declare dso_local %struct.TYPE_5__* @ECDSA_SIG_new(...) #2

declare dso_local i8* @BN_new(...) #2

declare dso_local i32 @memset(i8*, i32, i32) #2

declare dso_local i32 @memcpy(i8*, i8*, i32) #2

declare dso_local i32 @S390X_OFF_H(i32) #2

declare dso_local i32 @BN_bn2binpad(i32*, i8*, i32) #2

declare dso_local i32 @S390X_OFF_K(i32) #2

declare dso_local i32 @RAND_priv_bytes(i8*, i32) #2

declare dso_local i32 @S390X_OFF_RN(i32) #2

declare dso_local i64 @ec_group_do_inverse_ord(i32*, i32*, i32*, i32*) #2

declare dso_local i64 @s390x_kdsa(i32, i8*, i32*, i32) #2

declare dso_local i32* @BN_bin2bn(i8*, i32, i32*) #2

declare dso_local i32 @S390X_OFF_R(i32) #2

declare dso_local i32 @S390X_OFF_S(i32) #2

declare dso_local i32 @OPENSSL_cleanse(i8*, i32) #2

declare dso_local i32 @ECDSA_SIG_free(%struct.TYPE_5__*) #2

declare dso_local i32 @BN_clear_free(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
