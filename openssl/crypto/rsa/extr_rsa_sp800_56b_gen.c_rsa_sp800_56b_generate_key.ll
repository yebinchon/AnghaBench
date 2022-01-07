; ModuleID = '/home/carl/AnghaBench/openssl/crypto/rsa/extr_rsa_sp800_56b_gen.c_rsa_sp800_56b_generate_key.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/rsa/extr_rsa_sp800_56b_gen.c_rsa_sp800_56b_generate_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rsa_sp800_56b_generate_key(i32* %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 0, i32* %10, align 4
  store i32* null, i32** %12, align 8
  store i32* null, i32** %13, align 8
  %14 = load i32, i32* %7, align 4
  %15 = call i32 @rsa_sp800_56b_validate_strength(i32 %14, i32 -1)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %76

18:                                               ; preds = %4
  %19 = call i32* (...) @BN_CTX_new()
  store i32* %19, i32** %12, align 8
  %20 = load i32*, i32** %12, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  store i32 0, i32* %5, align 4
  br label %76

23:                                               ; preds = %18
  %24 = load i32*, i32** %8, align 8
  %25 = icmp eq i32* %24, null
  br i1 %25, label %26, label %36

26:                                               ; preds = %23
  %27 = call i32* (...) @BN_new()
  store i32* %27, i32** %13, align 8
  %28 = load i32*, i32** %13, align 8
  %29 = icmp eq i32* %28, null
  br i1 %29, label %34, label %30

30:                                               ; preds = %26
  %31 = load i32*, i32** %13, align 8
  %32 = call i32 @BN_set_word(i32* %31, i32 65537)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %30, %26
  br label %66

35:                                               ; preds = %30
  br label %38

36:                                               ; preds = %23
  %37 = load i32*, i32** %8, align 8
  store i32* %37, i32** %13, align 8
  br label %38

38:                                               ; preds = %36, %35
  br label %39

39:                                               ; preds = %61, %38
  %40 = load i32*, i32** %6, align 8
  %41 = load i32, i32* %7, align 4
  %42 = load i32*, i32** %13, align 8
  %43 = load i32*, i32** %12, align 8
  %44 = load i32*, i32** %9, align 8
  %45 = call i32 @rsa_fips186_4_gen_prob_primes(i32* %40, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32 %41, i32* %42, i32* %43, i32* %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %39
  br label %66

48:                                               ; preds = %39
  %49 = load i32*, i32** %6, align 8
  %50 = load i32, i32* %7, align 4
  %51 = load i32*, i32** %13, align 8
  %52 = load i32*, i32** %12, align 8
  %53 = call i32 @rsa_sp800_56b_derive_params_from_pq(i32* %49, i32 %50, i32* %51, i32* %52)
  store i32 %53, i32* %11, align 4
  %54 = load i32, i32* %11, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %48
  br label %66

57:                                               ; preds = %48
  %58 = load i32, i32* %11, align 4
  %59 = icmp sgt i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %57
  br label %62

61:                                               ; preds = %57
  br label %39

62:                                               ; preds = %60
  %63 = load i32*, i32** %6, align 8
  %64 = load i32*, i32** %12, align 8
  %65 = call i32 @rsa_sp800_56b_pairwise_test(i32* %63, i32* %64)
  store i32 %65, i32* %10, align 4
  br label %66

66:                                               ; preds = %62, %56, %47, %34
  %67 = load i32*, i32** %8, align 8
  %68 = icmp eq i32* %67, null
  br i1 %68, label %69, label %72

69:                                               ; preds = %66
  %70 = load i32*, i32** %13, align 8
  %71 = call i32 @BN_free(i32* %70)
  br label %72

72:                                               ; preds = %69, %66
  %73 = load i32*, i32** %12, align 8
  %74 = call i32 @BN_CTX_free(i32* %73)
  %75 = load i32, i32* %10, align 4
  store i32 %75, i32* %5, align 4
  br label %76

76:                                               ; preds = %72, %22, %17
  %77 = load i32, i32* %5, align 4
  ret i32 %77
}

declare dso_local i32 @rsa_sp800_56b_validate_strength(i32, i32) #1

declare dso_local i32* @BN_CTX_new(...) #1

declare dso_local i32* @BN_new(...) #1

declare dso_local i32 @BN_set_word(i32*, i32) #1

declare dso_local i32 @rsa_fips186_4_gen_prob_primes(i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32, i32*, i32*, i32*) #1

declare dso_local i32 @rsa_sp800_56b_derive_params_from_pq(i32*, i32, i32*, i32*) #1

declare dso_local i32 @rsa_sp800_56b_pairwise_test(i32*, i32*) #1

declare dso_local i32 @BN_free(i32*) #1

declare dso_local i32 @BN_CTX_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
