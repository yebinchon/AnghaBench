; ModuleID = '/home/carl/AnghaBench/openssl/crypto/rsa/extr_rsa_sp800_56b_check.c_rsa_sp800_56b_check_keypair.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/rsa/extr_rsa_sp800_56b_check.c_rsa_sp800_56b_check_keypair.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32*, i32*, i32*, i32*, i32* }

@RSA_F_RSA_SP800_56B_CHECK_KEYPAIR = common dso_local global i32 0, align 4
@RSA_R_INVALID_REQUEST = common dso_local global i32 0, align 4
@RSA_R_PUB_EXPONENT_OUT_OF_RANGE = common dso_local global i32 0, align 4
@RSA_R_INVALID_KEYPAIR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rsa_sp800_56b_check_keypair(%struct.TYPE_5__* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32* null, i32** %11, align 8
  store i32* null, i32** %12, align 8
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 1
  %15 = load i32*, i32** %14, align 8
  %16 = icmp eq i32* %15, null
  br i1 %16, label %37, label %17

17:                                               ; preds = %4
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %37, label %22

22:                                               ; preds = %17
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 2
  %25 = load i32*, i32** %24, align 8
  %26 = icmp eq i32* %25, null
  br i1 %26, label %37, label %27

27:                                               ; preds = %22
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 4
  %30 = load i32*, i32** %29, align 8
  %31 = icmp eq i32* %30, null
  br i1 %31, label %37, label %32

32:                                               ; preds = %27
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 3
  %35 = load i32*, i32** %34, align 8
  %36 = icmp eq i32* %35, null
  br i1 %36, label %37, label %41

37:                                               ; preds = %32, %27, %22, %17, %4
  %38 = load i32, i32* @RSA_F_RSA_SP800_56B_CHECK_KEYPAIR, align 4
  %39 = load i32, i32* @RSA_R_INVALID_REQUEST, align 4
  %40 = call i32 @RSAerr(i32 %38, i32 %39)
  store i32 0, i32* %5, align 4
  br label %180

41:                                               ; preds = %32
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* %8, align 4
  %44 = call i32 @rsa_sp800_56b_validate_strength(i32 %42, i32 %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %41
  store i32 0, i32* %5, align 4
  br label %180

47:                                               ; preds = %41
  %48 = load i32*, i32** %7, align 8
  %49 = icmp ne i32* %48, null
  br i1 %49, label %50, label %62

50:                                               ; preds = %47
  %51 = load i32*, i32** %7, align 8
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 2
  %54 = load i32*, i32** %53, align 8
  %55 = call i64 @BN_cmp(i32* %51, i32* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %50
  %58 = load i32, i32* @RSA_F_RSA_SP800_56B_CHECK_KEYPAIR, align 4
  %59 = load i32, i32* @RSA_R_INVALID_REQUEST, align 4
  %60 = call i32 @RSAerr(i32 %58, i32 %59)
  store i32 0, i32* %5, align 4
  br label %180

61:                                               ; preds = %50
  br label %62

62:                                               ; preds = %61, %47
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 2
  %65 = load i32*, i32** %64, align 8
  %66 = call i32 @rsa_check_public_exponent(i32* %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %72, label %68

68:                                               ; preds = %62
  %69 = load i32, i32* @RSA_F_RSA_SP800_56B_CHECK_KEYPAIR, align 4
  %70 = load i32, i32* @RSA_R_PUB_EXPONENT_OUT_OF_RANGE, align 4
  %71 = call i32 @RSAerr(i32 %69, i32 %70)
  store i32 0, i32* %5, align 4
  br label %180

72:                                               ; preds = %62
  %73 = load i32, i32* %9, align 4
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 3
  %76 = load i32*, i32** %75, align 8
  %77 = call i32 @BN_num_bits(i32* %76)
  %78 = icmp ne i32 %73, %77
  br i1 %78, label %79, label %83

79:                                               ; preds = %72
  %80 = load i32, i32* @RSA_F_RSA_SP800_56B_CHECK_KEYPAIR, align 4
  %81 = load i32, i32* @RSA_R_INVALID_KEYPAIR, align 4
  %82 = call i32 @RSAerr(i32 %80, i32 %81)
  store i32 0, i32* %5, align 4
  br label %180

83:                                               ; preds = %72
  %84 = call i32* (...) @BN_CTX_new()
  store i32* %84, i32** %11, align 8
  %85 = load i32*, i32** %11, align 8
  %86 = icmp eq i32* %85, null
  br i1 %86, label %87, label %88

87:                                               ; preds = %83
  store i32 0, i32* %5, align 4
  br label %180

88:                                               ; preds = %83
  %89 = load i32*, i32** %11, align 8
  %90 = call i32 @BN_CTX_start(i32* %89)
  %91 = load i32*, i32** %11, align 8
  %92 = call i32* @BN_CTX_get(i32* %91)
  store i32* %92, i32** %12, align 8
  %93 = load i32*, i32** %12, align 8
  %94 = icmp eq i32* %93, null
  br i1 %94, label %106, label %95

95:                                               ; preds = %88
  %96 = load i32*, i32** %12, align 8
  %97 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 1
  %99 = load i32*, i32** %98, align 8
  %100 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 0
  %102 = load i32*, i32** %101, align 8
  %103 = load i32*, i32** %11, align 8
  %104 = call i32 @BN_mul(i32* %96, i32* %99, i32* %102, i32* %103)
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %107, label %106

106:                                              ; preds = %95, %88
  br label %172

107:                                              ; preds = %95
  %108 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i32 0, i32 3
  %110 = load i32*, i32** %109, align 8
  %111 = load i32*, i32** %12, align 8
  %112 = call i64 @BN_cmp(i32* %110, i32* %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %118

114:                                              ; preds = %107
  %115 = load i32, i32* @RSA_F_RSA_SP800_56B_CHECK_KEYPAIR, align 4
  %116 = load i32, i32* @RSA_R_INVALID_REQUEST, align 4
  %117 = call i32 @RSAerr(i32 %115, i32 %116)
  br label %172

118:                                              ; preds = %107
  %119 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %119, i32 0, i32 1
  %121 = load i32*, i32** %120, align 8
  %122 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %122, i32 0, i32 2
  %124 = load i32*, i32** %123, align 8
  %125 = load i32, i32* %9, align 4
  %126 = load i32*, i32** %11, align 8
  %127 = call i64 @rsa_check_prime_factor(i32* %121, i32* %124, i32 %125, i32* %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %162

129:                                              ; preds = %118
  %130 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %131 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %130, i32 0, i32 0
  %132 = load i32*, i32** %131, align 8
  %133 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %134 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %133, i32 0, i32 2
  %135 = load i32*, i32** %134, align 8
  %136 = load i32, i32* %9, align 4
  %137 = load i32*, i32** %11, align 8
  %138 = call i64 @rsa_check_prime_factor(i32* %132, i32* %135, i32 %136, i32* %137)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %162

140:                                              ; preds = %129
  %141 = load i32*, i32** %12, align 8
  %142 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %143 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %142, i32 0, i32 1
  %144 = load i32*, i32** %143, align 8
  %145 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %146 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %145, i32 0, i32 0
  %147 = load i32*, i32** %146, align 8
  %148 = load i32, i32* %9, align 4
  %149 = call i64 @rsa_check_pminusq_diff(i32* %141, i32* %144, i32* %147, i32 %148)
  %150 = icmp sgt i64 %149, 0
  br i1 %150, label %151, label %162

151:                                              ; preds = %140
  %152 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %153 = load i32, i32* %9, align 4
  %154 = load i32*, i32** %11, align 8
  %155 = call i64 @rsa_check_private_exponent(%struct.TYPE_5__* %152, i32 %153, i32* %154)
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %162

157:                                              ; preds = %151
  %158 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %159 = load i32*, i32** %11, align 8
  %160 = call i64 @rsa_check_crt_components(%struct.TYPE_5__* %158, i32* %159)
  %161 = icmp ne i64 %160, 0
  br label %162

162:                                              ; preds = %157, %151, %140, %129, %118
  %163 = phi i1 [ false, %151 ], [ false, %140 ], [ false, %129 ], [ false, %118 ], [ %161, %157 ]
  %164 = zext i1 %163 to i32
  store i32 %164, i32* %10, align 4
  %165 = load i32, i32* %10, align 4
  %166 = icmp ne i32 %165, 1
  br i1 %166, label %167, label %171

167:                                              ; preds = %162
  %168 = load i32, i32* @RSA_F_RSA_SP800_56B_CHECK_KEYPAIR, align 4
  %169 = load i32, i32* @RSA_R_INVALID_KEYPAIR, align 4
  %170 = call i32 @RSAerr(i32 %168, i32 %169)
  br label %171

171:                                              ; preds = %167, %162
  br label %172

172:                                              ; preds = %171, %114, %106
  %173 = load i32*, i32** %12, align 8
  %174 = call i32 @BN_clear(i32* %173)
  %175 = load i32*, i32** %11, align 8
  %176 = call i32 @BN_CTX_end(i32* %175)
  %177 = load i32*, i32** %11, align 8
  %178 = call i32 @BN_CTX_free(i32* %177)
  %179 = load i32, i32* %10, align 4
  store i32 %179, i32* %5, align 4
  br label %180

180:                                              ; preds = %172, %87, %79, %68, %57, %46, %37
  %181 = load i32, i32* %5, align 4
  ret i32 %181
}

declare dso_local i32 @RSAerr(i32, i32) #1

declare dso_local i32 @rsa_sp800_56b_validate_strength(i32, i32) #1

declare dso_local i64 @BN_cmp(i32*, i32*) #1

declare dso_local i32 @rsa_check_public_exponent(i32*) #1

declare dso_local i32 @BN_num_bits(i32*) #1

declare dso_local i32* @BN_CTX_new(...) #1

declare dso_local i32 @BN_CTX_start(i32*) #1

declare dso_local i32* @BN_CTX_get(i32*) #1

declare dso_local i32 @BN_mul(i32*, i32*, i32*, i32*) #1

declare dso_local i64 @rsa_check_prime_factor(i32*, i32*, i32, i32*) #1

declare dso_local i64 @rsa_check_pminusq_diff(i32*, i32*, i32*, i32) #1

declare dso_local i64 @rsa_check_private_exponent(%struct.TYPE_5__*, i32, i32*) #1

declare dso_local i64 @rsa_check_crt_components(%struct.TYPE_5__*, i32*) #1

declare dso_local i32 @BN_clear(i32*) #1

declare dso_local i32 @BN_CTX_end(i32*) #1

declare dso_local i32 @BN_CTX_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
