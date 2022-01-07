; ModuleID = '/home/carl/AnghaBench/openssl/crypto/bn/extr_bn_prime.c_BN_generate_prime_ex2.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/bn/extr_bn_prime.c_BN_generate_prime_ex2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BN_F_BN_GENERATE_PRIME_EX2 = common dso_local global i32 0, align 4
@BN_R_BITS_TOO_SMALL = common dso_local global i32 0, align 4
@NUMPRIMES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @BN_generate_prime_ex2(i32* %0, i32 %1, i32 %2, i32* %3, i32* %4, i32* %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32*, align 8
  %22 = alloca i32, align 4
  store i32* %0, i32** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32* %3, i32** %12, align 8
  store i32* %4, i32** %13, align 8
  store i32* %5, i32** %14, align 8
  store i32* %6, i32** %15, align 8
  store i32 0, i32* %17, align 4
  store i32 0, i32* %20, align 4
  store i32* null, i32** %21, align 8
  %23 = load i32, i32* %10, align 4
  %24 = call i32 @bn_mr_min_checks(i32 %23)
  store i32 %24, i32* %22, align 4
  %25 = load i32, i32* %10, align 4
  %26 = icmp slt i32 %25, 2
  br i1 %26, label %27, label %31

27:                                               ; preds = %7
  %28 = load i32, i32* @BN_F_BN_GENERATE_PRIME_EX2, align 4
  %29 = load i32, i32* @BN_R_BITS_TOO_SMALL, align 4
  %30 = call i32 @BNerr(i32 %28, i32 %29)
  store i32 0, i32* %8, align 4
  br label %171

31:                                               ; preds = %7
  %32 = load i32*, i32** %12, align 8
  %33 = icmp eq i32* %32, null
  br i1 %33, label %34, label %47

34:                                               ; preds = %31
  %35 = load i32, i32* %11, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %47

37:                                               ; preds = %34
  %38 = load i32, i32* %10, align 4
  %39 = icmp slt i32 %38, 6
  br i1 %39, label %40, label %47

40:                                               ; preds = %37
  %41 = load i32, i32* %10, align 4
  %42 = icmp ne i32 %41, 3
  br i1 %42, label %43, label %47

43:                                               ; preds = %40
  %44 = load i32, i32* @BN_F_BN_GENERATE_PRIME_EX2, align 4
  %45 = load i32, i32* @BN_R_BITS_TOO_SMALL, align 4
  %46 = call i32 @BNerr(i32 %44, i32 %45)
  store i32 0, i32* %8, align 4
  br label %171

47:                                               ; preds = %40, %37, %34, %31
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* @NUMPRIMES, align 4
  %50 = sext i32 %49 to i64
  %51 = mul i64 4, %50
  %52 = trunc i64 %51 to i32
  %53 = call i32* @OPENSSL_zalloc(i32 %52)
  store i32* %53, i32** %21, align 8
  %54 = load i32*, i32** %21, align 8
  %55 = icmp eq i32* %54, null
  br i1 %55, label %56, label %57

56:                                               ; preds = %48
  br label %163

57:                                               ; preds = %48
  %58 = load i32*, i32** %15, align 8
  %59 = call i32 @BN_CTX_start(i32* %58)
  %60 = load i32*, i32** %15, align 8
  %61 = call i32* @BN_CTX_get(i32* %60)
  store i32* %61, i32** %16, align 8
  %62 = load i32*, i32** %16, align 8
  %63 = icmp eq i32* %62, null
  br i1 %63, label %64, label %65

64:                                               ; preds = %57
  br label %163

65:                                               ; preds = %57
  br label %66

66:                                               ; preds = %149, %137, %113, %65
  %67 = load i32*, i32** %12, align 8
  %68 = icmp eq i32* %67, null
  br i1 %68, label %69, label %79

69:                                               ; preds = %66
  %70 = load i32*, i32** %9, align 8
  %71 = load i32, i32* %10, align 4
  %72 = load i32, i32* %11, align 4
  %73 = load i32*, i32** %21, align 8
  %74 = load i32*, i32** %15, align 8
  %75 = call i32 @probable_prime(i32* %70, i32 %71, i32 %72, i32* %73, i32* %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %78, label %77

77:                                               ; preds = %69
  br label %163

78:                                               ; preds = %69
  br label %91

79:                                               ; preds = %66
  %80 = load i32*, i32** %9, align 8
  %81 = load i32, i32* %10, align 4
  %82 = load i32, i32* %11, align 4
  %83 = load i32*, i32** %21, align 8
  %84 = load i32*, i32** %12, align 8
  %85 = load i32*, i32** %13, align 8
  %86 = load i32*, i32** %15, align 8
  %87 = call i32 @probable_prime_dh(i32* %80, i32 %81, i32 %82, i32* %83, i32* %84, i32* %85, i32* %86)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %90, label %89

89:                                               ; preds = %79
  br label %163

90:                                               ; preds = %79
  br label %91

91:                                               ; preds = %90, %78
  %92 = load i32*, i32** %14, align 8
  %93 = load i32, i32* %20, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %20, align 4
  %95 = call i32 @BN_GENCB_call(i32* %92, i32 0, i32 %93)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %98, label %97

97:                                               ; preds = %91
  br label %163

98:                                               ; preds = %91
  %99 = load i32, i32* %11, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %115, label %101

101:                                              ; preds = %98
  %102 = load i32*, i32** %9, align 8
  %103 = load i32, i32* %22, align 4
  %104 = load i32*, i32** %15, align 8
  %105 = load i32*, i32** %14, align 8
  %106 = call i32 @bn_is_prime_int(i32* %102, i32 %103, i32* %104, i32 0, i32* %105)
  store i32 %106, i32* %18, align 4
  %107 = load i32, i32* %18, align 4
  %108 = icmp eq i32 %107, -1
  br i1 %108, label %109, label %110

109:                                              ; preds = %101
  br label %163

110:                                              ; preds = %101
  %111 = load i32, i32* %18, align 4
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %110
  br label %66

114:                                              ; preds = %110
  br label %162

115:                                              ; preds = %98
  %116 = load i32*, i32** %16, align 8
  %117 = load i32*, i32** %9, align 8
  %118 = call i32 @BN_rshift1(i32* %116, i32* %117)
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %121, label %120

120:                                              ; preds = %115
  br label %163

121:                                              ; preds = %115
  store i32 0, i32* %18, align 4
  br label %122

122:                                              ; preds = %158, %121
  %123 = load i32, i32* %18, align 4
  %124 = load i32, i32* %22, align 4
  %125 = icmp slt i32 %123, %124
  br i1 %125, label %126, label %161

126:                                              ; preds = %122
  %127 = load i32*, i32** %9, align 8
  %128 = load i32*, i32** %15, align 8
  %129 = load i32*, i32** %14, align 8
  %130 = call i32 @bn_is_prime_int(i32* %127, i32 1, i32* %128, i32 0, i32* %129)
  store i32 %130, i32* %19, align 4
  %131 = load i32, i32* %19, align 4
  %132 = icmp eq i32 %131, -1
  br i1 %132, label %133, label %134

133:                                              ; preds = %126
  br label %163

134:                                              ; preds = %126
  %135 = load i32, i32* %19, align 4
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %137, label %138

137:                                              ; preds = %134
  br label %66

138:                                              ; preds = %134
  %139 = load i32*, i32** %16, align 8
  %140 = load i32*, i32** %15, align 8
  %141 = load i32*, i32** %14, align 8
  %142 = call i32 @bn_is_prime_int(i32* %139, i32 1, i32* %140, i32 0, i32* %141)
  store i32 %142, i32* %19, align 4
  %143 = load i32, i32* %19, align 4
  %144 = icmp eq i32 %143, -1
  br i1 %144, label %145, label %146

145:                                              ; preds = %138
  br label %163

146:                                              ; preds = %138
  %147 = load i32, i32* %19, align 4
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %149, label %150

149:                                              ; preds = %146
  br label %66

150:                                              ; preds = %146
  %151 = load i32*, i32** %14, align 8
  %152 = load i32, i32* %20, align 4
  %153 = sub nsw i32 %152, 1
  %154 = call i32 @BN_GENCB_call(i32* %151, i32 2, i32 %153)
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %157, label %156

156:                                              ; preds = %150
  br label %163

157:                                              ; preds = %150
  br label %158

158:                                              ; preds = %157
  %159 = load i32, i32* %18, align 4
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %18, align 4
  br label %122

161:                                              ; preds = %122
  br label %162

162:                                              ; preds = %161, %114
  store i32 1, i32* %17, align 4
  br label %163

163:                                              ; preds = %162, %156, %145, %133, %120, %109, %97, %89, %77, %64, %56
  %164 = load i32*, i32** %21, align 8
  %165 = call i32 @OPENSSL_free(i32* %164)
  %166 = load i32*, i32** %15, align 8
  %167 = call i32 @BN_CTX_end(i32* %166)
  %168 = load i32*, i32** %9, align 8
  %169 = call i32 @bn_check_top(i32* %168)
  %170 = load i32, i32* %17, align 4
  store i32 %170, i32* %8, align 4
  br label %171

171:                                              ; preds = %163, %43, %27
  %172 = load i32, i32* %8, align 4
  ret i32 %172
}

declare dso_local i32 @bn_mr_min_checks(i32) #1

declare dso_local i32 @BNerr(i32, i32) #1

declare dso_local i32* @OPENSSL_zalloc(i32) #1

declare dso_local i32 @BN_CTX_start(i32*) #1

declare dso_local i32* @BN_CTX_get(i32*) #1

declare dso_local i32 @probable_prime(i32*, i32, i32, i32*, i32*) #1

declare dso_local i32 @probable_prime_dh(i32*, i32, i32, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @BN_GENCB_call(i32*, i32, i32) #1

declare dso_local i32 @bn_is_prime_int(i32*, i32, i32*, i32, i32*) #1

declare dso_local i32 @BN_rshift1(i32*, i32*) #1

declare dso_local i32 @OPENSSL_free(i32*) #1

declare dso_local i32 @BN_CTX_end(i32*) #1

declare dso_local i32 @bn_check_top(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
