; ModuleID = '/home/carl/AnghaBench/openssl/crypto/rsa/extr_rsa_sp800_56b_gen.c_rsa_fips186_4_gen_prob_primes.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/rsa/extr_rsa_sp800_56b_gen.c_rsa_fips186_4_gen_prob_primes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32*, i32* }

@RSA_FIPS1864_MIN_KEYGEN_KEYSIZE = common dso_local global i32 0, align 4
@RSA_F_RSA_FIPS186_4_GEN_PROB_PRIMES = common dso_local global i32 0, align 4
@RSA_R_INVALID_KEY_LENGTH = common dso_local global i32 0, align 4
@RSA_R_PUB_EXPONENT_OUT_OF_RANGE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rsa_fips186_4_gen_prob_primes(%struct.TYPE_3__* %0, i32* %1, i32* %2, i32* %3, i32* %4, i32* %5, i32* %6, i32* %7, i32* %8, i32* %9, i32* %10, i32* %11, i32* %12, i32 %13, i32* %14, i32* %15, i32* %16) #0 {
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_3__*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i32*, align 8
  %25 = alloca i32*, align 8
  %26 = alloca i32*, align 8
  %27 = alloca i32*, align 8
  %28 = alloca i32*, align 8
  %29 = alloca i32*, align 8
  %30 = alloca i32*, align 8
  %31 = alloca i32*, align 8
  %32 = alloca i32, align 4
  %33 = alloca i32*, align 8
  %34 = alloca i32*, align 8
  %35 = alloca i32*, align 8
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i32*, align 8
  %39 = alloca i32*, align 8
  %40 = alloca i32*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %19, align 8
  store i32* %1, i32** %20, align 8
  store i32* %2, i32** %21, align 8
  store i32* %3, i32** %22, align 8
  store i32* %4, i32** %23, align 8
  store i32* %5, i32** %24, align 8
  store i32* %6, i32** %25, align 8
  store i32* %7, i32** %26, align 8
  store i32* %8, i32** %27, align 8
  store i32* %9, i32** %28, align 8
  store i32* %10, i32** %29, align 8
  store i32* %11, i32** %30, align 8
  store i32* %12, i32** %31, align 8
  store i32 %13, i32* %32, align 4
  store i32* %14, i32** %33, align 8
  store i32* %15, i32** %34, align 8
  store i32* %16, i32** %35, align 8
  store i32 0, i32* %36, align 4
  store i32* null, i32** %38, align 8
  store i32* null, i32** %39, align 8
  store i32* null, i32** %40, align 8
  %41 = load i32, i32* %32, align 4
  %42 = load i32, i32* @RSA_FIPS1864_MIN_KEYGEN_KEYSIZE, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %48

44:                                               ; preds = %17
  %45 = load i32, i32* @RSA_F_RSA_FIPS186_4_GEN_PROB_PRIMES, align 4
  %46 = load i32, i32* @RSA_R_INVALID_KEY_LENGTH, align 4
  %47 = call i32 @RSAerr(i32 %45, i32 %46)
  store i32 0, i32* %18, align 4
  br label %210

48:                                               ; preds = %17
  %49 = load i32*, i32** %33, align 8
  %50 = call i32 @rsa_check_public_exponent(i32* %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %56, label %52

52:                                               ; preds = %48
  %53 = load i32, i32* @RSA_F_RSA_FIPS186_4_GEN_PROB_PRIMES, align 4
  %54 = load i32, i32* @RSA_R_PUB_EXPONENT_OUT_OF_RANGE, align 4
  %55 = call i32 @RSAerr(i32 %53, i32 %54)
  store i32 0, i32* %18, align 4
  br label %210

56:                                               ; preds = %48
  %57 = load i32*, i32** %34, align 8
  %58 = call i32 @BN_CTX_start(i32* %57)
  %59 = load i32*, i32** %34, align 8
  %60 = call i32* @BN_CTX_get(i32* %59)
  store i32* %60, i32** %40, align 8
  %61 = load i32*, i32** %22, align 8
  %62 = icmp ne i32* %61, null
  br i1 %62, label %63, label %65

63:                                               ; preds = %56
  %64 = load i32*, i32** %22, align 8
  br label %68

65:                                               ; preds = %56
  %66 = load i32*, i32** %34, align 8
  %67 = call i32* @BN_CTX_get(i32* %66)
  br label %68

68:                                               ; preds = %65, %63
  %69 = phi i32* [ %64, %63 ], [ %67, %65 ]
  store i32* %69, i32** %38, align 8
  %70 = load i32*, i32** %28, align 8
  %71 = icmp ne i32* %70, null
  br i1 %71, label %72, label %74

72:                                               ; preds = %68
  %73 = load i32*, i32** %28, align 8
  br label %77

74:                                               ; preds = %68
  %75 = load i32*, i32** %34, align 8
  %76 = call i32* @BN_CTX_get(i32* %75)
  br label %77

77:                                               ; preds = %74, %72
  %78 = phi i32* [ %73, %72 ], [ %76, %74 ]
  store i32* %78, i32** %39, align 8
  %79 = load i32*, i32** %40, align 8
  %80 = icmp eq i32* %79, null
  br i1 %80, label %87, label %81

81:                                               ; preds = %77
  %82 = load i32*, i32** %38, align 8
  %83 = icmp eq i32* %82, null
  br i1 %83, label %87, label %84

84:                                               ; preds = %81
  %85 = load i32*, i32** %39, align 8
  %86 = icmp eq i32* %85, null
  br i1 %86, label %87, label %88

87:                                               ; preds = %84, %81, %77
  br label %190

88:                                               ; preds = %84
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 2
  %91 = load i32*, i32** %90, align 8
  %92 = icmp eq i32* %91, null
  br i1 %92, label %93, label %98

93:                                               ; preds = %88
  %94 = call i8* (...) @BN_secure_new()
  %95 = bitcast i8* %94 to i32*
  %96 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 2
  store i32* %95, i32** %97, align 8
  br label %98

98:                                               ; preds = %93, %88
  %99 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 1
  %101 = load i32*, i32** %100, align 8
  %102 = icmp eq i32* %101, null
  br i1 %102, label %103, label %108

103:                                              ; preds = %98
  %104 = call i8* (...) @BN_secure_new()
  %105 = bitcast i8* %104 to i32*
  %106 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 1
  store i32* %105, i32** %107, align 8
  br label %108

108:                                              ; preds = %103, %98
  %109 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i32 0, i32 2
  %111 = load i32*, i32** %110, align 8
  %112 = icmp eq i32* %111, null
  br i1 %112, label %118, label %113

113:                                              ; preds = %108
  %114 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i32 0, i32 1
  %116 = load i32*, i32** %115, align 8
  %117 = icmp eq i32* %116, null
  br i1 %117, label %118, label %119

118:                                              ; preds = %113, %108
  br label %190

119:                                              ; preds = %113
  %120 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %120, i32 0, i32 2
  %122 = load i32*, i32** %121, align 8
  %123 = load i32*, i32** %38, align 8
  %124 = load i32*, i32** %20, align 8
  %125 = load i32*, i32** %21, align 8
  %126 = load i32*, i32** %23, align 8
  %127 = load i32*, i32** %24, align 8
  %128 = load i32*, i32** %25, align 8
  %129 = load i32, i32* %32, align 4
  %130 = load i32*, i32** %33, align 8
  %131 = load i32*, i32** %34, align 8
  %132 = load i32*, i32** %35, align 8
  %133 = call i32 @bn_rsa_fips186_4_gen_prob_primes(i32* %122, i32* %123, i32* %124, i32* %125, i32* %126, i32* %127, i32* %128, i32 %129, i32* %130, i32* %131, i32* %132)
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %136, label %135

135:                                              ; preds = %119
  br label %190

136:                                              ; preds = %119
  br label %137

137:                                              ; preds = %183, %166, %136
  %138 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %139 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %138, i32 0, i32 1
  %140 = load i32*, i32** %139, align 8
  %141 = load i32*, i32** %39, align 8
  %142 = load i32*, i32** %26, align 8
  %143 = load i32*, i32** %27, align 8
  %144 = load i32*, i32** %29, align 8
  %145 = load i32*, i32** %30, align 8
  %146 = load i32*, i32** %31, align 8
  %147 = load i32, i32* %32, align 4
  %148 = load i32*, i32** %33, align 8
  %149 = load i32*, i32** %34, align 8
  %150 = load i32*, i32** %35, align 8
  %151 = call i32 @bn_rsa_fips186_4_gen_prob_primes(i32* %140, i32* %141, i32* %142, i32* %143, i32* %144, i32* %145, i32* %146, i32 %147, i32* %148, i32* %149, i32* %150)
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %154, label %153

153:                                              ; preds = %137
  br label %190

154:                                              ; preds = %137
  %155 = load i32*, i32** %40, align 8
  %156 = load i32*, i32** %38, align 8
  %157 = load i32*, i32** %39, align 8
  %158 = load i32, i32* %32, align 4
  %159 = call i32 @rsa_check_pminusq_diff(i32* %155, i32* %156, i32* %157, i32 %158)
  store i32 %159, i32* %37, align 4
  %160 = load i32, i32* %37, align 4
  %161 = icmp slt i32 %160, 0
  br i1 %161, label %162, label %163

162:                                              ; preds = %154
  br label %190

163:                                              ; preds = %154
  %164 = load i32, i32* %37, align 4
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %166, label %167

166:                                              ; preds = %163
  br label %137

167:                                              ; preds = %163
  %168 = load i32*, i32** %40, align 8
  %169 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %170 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %169, i32 0, i32 2
  %171 = load i32*, i32** %170, align 8
  %172 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %173 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %172, i32 0, i32 1
  %174 = load i32*, i32** %173, align 8
  %175 = load i32, i32* %32, align 4
  %176 = call i32 @rsa_check_pminusq_diff(i32* %168, i32* %171, i32* %174, i32 %175)
  store i32 %176, i32* %37, align 4
  %177 = load i32, i32* %37, align 4
  %178 = icmp slt i32 %177, 0
  br i1 %178, label %179, label %180

179:                                              ; preds = %167
  br label %190

180:                                              ; preds = %167
  %181 = load i32, i32* %37, align 4
  %182 = icmp eq i32 %181, 0
  br i1 %182, label %183, label %184

183:                                              ; preds = %180
  br label %137

184:                                              ; preds = %180
  br label %185

185:                                              ; preds = %184
  %186 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %187 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  %189 = add nsw i32 %188, 1
  store i32 %189, i32* %187, align 8
  store i32 1, i32* %36, align 4
  br label %190

190:                                              ; preds = %185, %179, %162, %153, %135, %118, %87
  %191 = load i32*, i32** %38, align 8
  %192 = load i32*, i32** %22, align 8
  %193 = icmp ne i32* %191, %192
  br i1 %193, label %194, label %197

194:                                              ; preds = %190
  %195 = load i32*, i32** %38, align 8
  %196 = call i32 @BN_clear(i32* %195)
  br label %197

197:                                              ; preds = %194, %190
  %198 = load i32*, i32** %39, align 8
  %199 = load i32*, i32** %28, align 8
  %200 = icmp ne i32* %198, %199
  br i1 %200, label %201, label %204

201:                                              ; preds = %197
  %202 = load i32*, i32** %39, align 8
  %203 = call i32 @BN_clear(i32* %202)
  br label %204

204:                                              ; preds = %201, %197
  %205 = load i32*, i32** %40, align 8
  %206 = call i32 @BN_clear(i32* %205)
  %207 = load i32*, i32** %34, align 8
  %208 = call i32 @BN_CTX_end(i32* %207)
  %209 = load i32, i32* %36, align 4
  store i32 %209, i32* %18, align 4
  br label %210

210:                                              ; preds = %204, %52, %44
  %211 = load i32, i32* %18, align 4
  ret i32 %211
}

declare dso_local i32 @RSAerr(i32, i32) #1

declare dso_local i32 @rsa_check_public_exponent(i32*) #1

declare dso_local i32 @BN_CTX_start(i32*) #1

declare dso_local i32* @BN_CTX_get(i32*) #1

declare dso_local i8* @BN_secure_new(...) #1

declare dso_local i32 @bn_rsa_fips186_4_gen_prob_primes(i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32, i32*, i32*, i32*) #1

declare dso_local i32 @rsa_check_pminusq_diff(i32*, i32*, i32*, i32) #1

declare dso_local i32 @BN_clear(i32*) #1

declare dso_local i32 @BN_CTX_end(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
