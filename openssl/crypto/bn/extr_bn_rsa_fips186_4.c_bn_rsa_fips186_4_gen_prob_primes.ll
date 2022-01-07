; ModuleID = '/home/carl/AnghaBench/openssl/crypto/bn/extr_bn_rsa_fips186_4.c_bn_rsa_fips186_4_gen_prob_primes.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/bn/extr_bn_rsa_fips186_4.c_bn_rsa_fips186_4_gen_prob_primes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BN_RAND_TOP_ONE = common dso_local global i32 0, align 4
@BN_RAND_BOTTOM_ODD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bn_rsa_fips186_4_gen_prob_primes(i32* %0, i32* %1, i32* %2, i32* %3, i32* %4, i32* %5, i32* %6, i32 %7, i32* %8, i32* %9, i32* %10) #0 {
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32*, align 8
  %26 = alloca i32*, align 8
  %27 = alloca i32*, align 8
  %28 = alloca i32*, align 8
  %29 = alloca i32, align 4
  store i32* %0, i32** %13, align 8
  store i32* %1, i32** %14, align 8
  store i32* %2, i32** %15, align 8
  store i32* %3, i32** %16, align 8
  store i32* %4, i32** %17, align 8
  store i32* %5, i32** %18, align 8
  store i32* %6, i32** %19, align 8
  store i32 %7, i32* %20, align 4
  store i32* %8, i32** %21, align 8
  store i32* %9, i32** %22, align 8
  store i32* %10, i32** %23, align 8
  store i32 0, i32* %24, align 4
  store i32* null, i32** %25, align 8
  store i32* null, i32** %26, align 8
  store i32* null, i32** %27, align 8
  store i32* null, i32** %28, align 8
  %30 = load i32*, i32** %13, align 8
  %31 = icmp eq i32* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %11
  %33 = load i32*, i32** %14, align 8
  %34 = icmp eq i32* %33, null
  br i1 %34, label %35, label %36

35:                                               ; preds = %32, %11
  store i32 0, i32* %12, align 4
  br label %186

36:                                               ; preds = %32
  %37 = load i32*, i32** %22, align 8
  %38 = call i32 @BN_CTX_start(i32* %37)
  %39 = load i32*, i32** %15, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %41, label %43

41:                                               ; preds = %36
  %42 = load i32*, i32** %15, align 8
  br label %46

43:                                               ; preds = %36
  %44 = load i32*, i32** %22, align 8
  %45 = call i32* @BN_CTX_get(i32* %44)
  br label %46

46:                                               ; preds = %43, %41
  %47 = phi i32* [ %42, %41 ], [ %45, %43 ]
  store i32* %47, i32** %25, align 8
  %48 = load i32*, i32** %16, align 8
  %49 = icmp ne i32* %48, null
  br i1 %49, label %50, label %52

50:                                               ; preds = %46
  %51 = load i32*, i32** %16, align 8
  br label %55

52:                                               ; preds = %46
  %53 = load i32*, i32** %22, align 8
  %54 = call i32* @BN_CTX_get(i32* %53)
  br label %55

55:                                               ; preds = %52, %50
  %56 = phi i32* [ %51, %50 ], [ %54, %52 ]
  store i32* %56, i32** %26, align 8
  %57 = load i32*, i32** %18, align 8
  %58 = icmp ne i32* %57, null
  br i1 %58, label %59, label %61

59:                                               ; preds = %55
  %60 = load i32*, i32** %18, align 8
  br label %64

61:                                               ; preds = %55
  %62 = load i32*, i32** %22, align 8
  %63 = call i32* @BN_CTX_get(i32* %62)
  br label %64

64:                                               ; preds = %61, %59
  %65 = phi i32* [ %60, %59 ], [ %63, %61 ]
  store i32* %65, i32** %27, align 8
  %66 = load i32*, i32** %19, align 8
  %67 = icmp ne i32* %66, null
  br i1 %67, label %68, label %70

68:                                               ; preds = %64
  %69 = load i32*, i32** %19, align 8
  br label %73

70:                                               ; preds = %64
  %71 = load i32*, i32** %22, align 8
  %72 = call i32* @BN_CTX_get(i32* %71)
  br label %73

73:                                               ; preds = %70, %68
  %74 = phi i32* [ %69, %68 ], [ %72, %70 ]
  store i32* %74, i32** %28, align 8
  %75 = load i32*, i32** %25, align 8
  %76 = icmp eq i32* %75, null
  br i1 %76, label %86, label %77

77:                                               ; preds = %73
  %78 = load i32*, i32** %26, align 8
  %79 = icmp eq i32* %78, null
  br i1 %79, label %86, label %80

80:                                               ; preds = %77
  %81 = load i32*, i32** %27, align 8
  %82 = icmp eq i32* %81, null
  br i1 %82, label %86, label %83

83:                                               ; preds = %80
  %84 = load i32*, i32** %28, align 8
  %85 = icmp eq i32* %84, null
  br i1 %85, label %86, label %87

86:                                               ; preds = %83, %80, %77, %73
  br label %158

87:                                               ; preds = %83
  %88 = load i32, i32* %20, align 4
  %89 = call i32 @bn_rsa_fips186_4_aux_prime_min_size(i32 %88)
  store i32 %89, i32* %29, align 4
  %90 = load i32, i32* %29, align 4
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %87
  br label %158

93:                                               ; preds = %87
  %94 = load i32*, i32** %18, align 8
  %95 = icmp eq i32* %94, null
  br i1 %95, label %96, label %106

96:                                               ; preds = %93
  %97 = load i32*, i32** %27, align 8
  %98 = load i32, i32* %29, align 4
  %99 = load i32, i32* @BN_RAND_TOP_ONE, align 4
  %100 = load i32, i32* @BN_RAND_BOTTOM_ODD, align 4
  %101 = load i32*, i32** %22, align 8
  %102 = call i32 @BN_priv_rand_ex(i32* %97, i32 %98, i32 %99, i32 %100, i32* %101)
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %105, label %104

104:                                              ; preds = %96
  br label %158

105:                                              ; preds = %96
  br label %106

106:                                              ; preds = %105, %93
  %107 = load i32*, i32** %19, align 8
  %108 = icmp eq i32* %107, null
  br i1 %108, label %109, label %119

109:                                              ; preds = %106
  %110 = load i32*, i32** %28, align 8
  %111 = load i32, i32* %29, align 4
  %112 = load i32, i32* @BN_RAND_TOP_ONE, align 4
  %113 = load i32, i32* @BN_RAND_BOTTOM_ODD, align 4
  %114 = load i32*, i32** %22, align 8
  %115 = call i32 @BN_priv_rand_ex(i32* %110, i32 %111, i32 %112, i32 %113, i32* %114)
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %118, label %117

117:                                              ; preds = %109
  br label %158

118:                                              ; preds = %109
  br label %119

119:                                              ; preds = %118, %106
  %120 = load i32*, i32** %27, align 8
  %121 = load i32*, i32** %25, align 8
  %122 = load i32*, i32** %22, align 8
  %123 = load i32*, i32** %23, align 8
  %124 = call i32 @bn_rsa_fips186_4_find_aux_prob_prime(i32* %120, i32* %121, i32* %122, i32* %123)
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %133

126:                                              ; preds = %119
  %127 = load i32*, i32** %28, align 8
  %128 = load i32*, i32** %26, align 8
  %129 = load i32*, i32** %22, align 8
  %130 = load i32*, i32** %23, align 8
  %131 = call i32 @bn_rsa_fips186_4_find_aux_prob_prime(i32* %127, i32* %128, i32* %129, i32* %130)
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %134, label %133

133:                                              ; preds = %126, %119
  br label %158

134:                                              ; preds = %126
  %135 = load i32*, i32** %25, align 8
  %136 = call i64 @BN_num_bits(i32* %135)
  %137 = load i32*, i32** %26, align 8
  %138 = call i64 @BN_num_bits(i32* %137)
  %139 = add nsw i64 %136, %138
  %140 = load i32, i32* %20, align 4
  %141 = call i64 @bn_rsa_fips186_4_aux_prime_max_sum_size_for_prob_primes(i32 %140)
  %142 = icmp sge i64 %139, %141
  br i1 %142, label %143, label %144

143:                                              ; preds = %134
  br label %158

144:                                              ; preds = %134
  %145 = load i32*, i32** %13, align 8
  %146 = load i32*, i32** %14, align 8
  %147 = load i32*, i32** %17, align 8
  %148 = load i32*, i32** %25, align 8
  %149 = load i32*, i32** %26, align 8
  %150 = load i32, i32* %20, align 4
  %151 = load i32*, i32** %21, align 8
  %152 = load i32*, i32** %22, align 8
  %153 = load i32*, i32** %23, align 8
  %154 = call i32 @bn_rsa_fips186_4_derive_prime(i32* %145, i32* %146, i32* %147, i32* %148, i32* %149, i32 %150, i32* %151, i32* %152, i32* %153)
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %157, label %156

156:                                              ; preds = %144
  br label %158

157:                                              ; preds = %144
  store i32 1, i32* %24, align 4
  br label %158

158:                                              ; preds = %157, %156, %143, %133, %117, %104, %92, %86
  %159 = load i32*, i32** %15, align 8
  %160 = icmp eq i32* %159, null
  br i1 %160, label %161, label %164

161:                                              ; preds = %158
  %162 = load i32*, i32** %25, align 8
  %163 = call i32 @BN_clear(i32* %162)
  br label %164

164:                                              ; preds = %161, %158
  %165 = load i32*, i32** %16, align 8
  %166 = icmp eq i32* %165, null
  br i1 %166, label %167, label %170

167:                                              ; preds = %164
  %168 = load i32*, i32** %26, align 8
  %169 = call i32 @BN_clear(i32* %168)
  br label %170

170:                                              ; preds = %167, %164
  %171 = load i32*, i32** %18, align 8
  %172 = icmp eq i32* %171, null
  br i1 %172, label %173, label %176

173:                                              ; preds = %170
  %174 = load i32*, i32** %27, align 8
  %175 = call i32 @BN_clear(i32* %174)
  br label %176

176:                                              ; preds = %173, %170
  %177 = load i32*, i32** %19, align 8
  %178 = icmp eq i32* %177, null
  br i1 %178, label %179, label %182

179:                                              ; preds = %176
  %180 = load i32*, i32** %28, align 8
  %181 = call i32 @BN_clear(i32* %180)
  br label %182

182:                                              ; preds = %179, %176
  %183 = load i32*, i32** %22, align 8
  %184 = call i32 @BN_CTX_end(i32* %183)
  %185 = load i32, i32* %24, align 4
  store i32 %185, i32* %12, align 4
  br label %186

186:                                              ; preds = %182, %35
  %187 = load i32, i32* %12, align 4
  ret i32 %187
}

declare dso_local i32 @BN_CTX_start(i32*) #1

declare dso_local i32* @BN_CTX_get(i32*) #1

declare dso_local i32 @bn_rsa_fips186_4_aux_prime_min_size(i32) #1

declare dso_local i32 @BN_priv_rand_ex(i32*, i32, i32, i32, i32*) #1

declare dso_local i32 @bn_rsa_fips186_4_find_aux_prob_prime(i32*, i32*, i32*, i32*) #1

declare dso_local i64 @BN_num_bits(i32*) #1

declare dso_local i64 @bn_rsa_fips186_4_aux_prime_max_sum_size_for_prob_primes(i32) #1

declare dso_local i32 @bn_rsa_fips186_4_derive_prime(i32*, i32*, i32*, i32*, i32*, i32, i32*, i32*, i32*) #1

declare dso_local i32 @BN_clear(i32*) #1

declare dso_local i32 @BN_CTX_end(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
