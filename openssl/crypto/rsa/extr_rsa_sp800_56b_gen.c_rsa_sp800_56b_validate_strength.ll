; ModuleID = '/home/carl/AnghaBench/openssl/crypto/rsa/extr_rsa_sp800_56b_gen.c_rsa_sp800_56b_validate_strength.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/rsa/extr_rsa_sp800_56b_gen.c_rsa_sp800_56b_validate_strength.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RSA_FIPS1864_MIN_KEYGEN_STRENGTH = common dso_local global i32 0, align 4
@RSA_FIPS1864_MAX_KEYGEN_STRENGTH = common dso_local global i32 0, align 4
@RSA_F_RSA_SP800_56B_VALIDATE_STRENGTH = common dso_local global i32 0, align 4
@RSA_R_INVALID_MODULUS = common dso_local global i32 0, align 4
@RSA_R_INVALID_STRENGTH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rsa_sp800_56b_validate_strength(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %4, align 4
  %8 = call i64 @rsa_compute_security_bits(i32 %7)
  %9 = trunc i64 %8 to i32
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* @RSA_FIPS1864_MIN_KEYGEN_STRENGTH, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %17, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @RSA_FIPS1864_MAX_KEYGEN_STRENGTH, align 4
  %16 = icmp sgt i32 %14, %15
  br i1 %16, label %17, label %21

17:                                               ; preds = %13, %2
  %18 = load i32, i32* @RSA_F_RSA_SP800_56B_VALIDATE_STRENGTH, align 4
  %19 = load i32, i32* @RSA_R_INVALID_MODULUS, align 4
  %20 = call i32 @RSAerr(i32 %18, i32 %19)
  store i32 0, i32* %3, align 4
  br label %33

21:                                               ; preds = %13
  %22 = load i32, i32* %5, align 4
  %23 = icmp ne i32 %22, -1
  br i1 %23, label %24, label %32

24:                                               ; preds = %21
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* %5, align 4
  %27 = icmp ne i32 %25, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %24
  %29 = load i32, i32* @RSA_F_RSA_SP800_56B_VALIDATE_STRENGTH, align 4
  %30 = load i32, i32* @RSA_R_INVALID_STRENGTH, align 4
  %31 = call i32 @RSAerr(i32 %29, i32 %30)
  store i32 0, i32* %3, align 4
  br label %33

32:                                               ; preds = %24, %21
  store i32 1, i32* %3, align 4
  br label %33

33:                                               ; preds = %32, %28, %17
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local i64 @rsa_compute_security_bits(i32) #1

declare dso_local i32 @RSAerr(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
