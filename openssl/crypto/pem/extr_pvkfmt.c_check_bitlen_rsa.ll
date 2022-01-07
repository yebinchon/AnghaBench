; ModuleID = '/home/carl/AnghaBench/openssl/crypto/pem/extr_pvkfmt.c_check_bitlen_rsa.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/pem/extr_pvkfmt.c_check_bitlen_rsa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MS_RSA1MAGIC = common dso_local global i32 0, align 4
@MS_RSA2MAGIC = common dso_local global i32 0, align 4
@PEM_F_CHECK_BITLEN_RSA = common dso_local global i32 0, align 4
@PEM_R_UNSUPPORTED_KEY_COMPONENTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32*)* @check_bitlen_rsa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_bitlen_rsa(i32* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %18 = load i32*, i32** %5, align 8
  %19 = call i32 @RSA_get0_key(i32* %18, i32* null, i32** %11, i32** null)
  %20 = load i32*, i32** %11, align 8
  %21 = call i32 @BN_num_bits(i32* %20)
  %22 = icmp sgt i32 %21, 32
  br i1 %22, label %23, label %24

23:                                               ; preds = %3
  br label %81

24:                                               ; preds = %3
  %25 = load i32*, i32** %5, align 8
  %26 = call i32 @RSA_bits(i32* %25)
  store i32 %26, i32* %10, align 4
  %27 = load i32*, i32** %5, align 8
  %28 = call i32 @RSA_size(i32* %27)
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %10, align 4
  %30 = add nsw i32 %29, 15
  %31 = ashr i32 %30, 4
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %6, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %24
  %35 = load i32, i32* @MS_RSA1MAGIC, align 4
  %36 = load i32*, i32** %7, align 8
  store i32 %35, i32* %36, align 4
  %37 = load i32, i32* %10, align 4
  store i32 %37, i32* %4, align 4
  br label %85

38:                                               ; preds = %24
  %39 = load i32, i32* @MS_RSA2MAGIC, align 4
  %40 = load i32*, i32** %7, align 8
  store i32 %39, i32* %40, align 4
  %41 = load i32*, i32** %5, align 8
  %42 = call i32 @RSA_get0_key(i32* %41, i32* null, i32** null, i32** %12)
  %43 = load i32*, i32** %12, align 8
  %44 = call i32 @BN_num_bytes(i32* %43)
  %45 = load i32, i32* %8, align 4
  %46 = icmp sgt i32 %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %38
  br label %81

48:                                               ; preds = %38
  %49 = load i32*, i32** %5, align 8
  %50 = call i32 @RSA_get0_factors(i32* %49, i32** %13, i32** %14)
  %51 = load i32*, i32** %5, align 8
  %52 = call i32 @RSA_get0_crt_params(i32* %51, i32** %16, i32** %17, i32** %15)
  %53 = load i32*, i32** %15, align 8
  %54 = call i32 @BN_num_bytes(i32* %53)
  %55 = load i32, i32* %9, align 4
  %56 = icmp sgt i32 %54, %55
  br i1 %56, label %77, label %57

57:                                               ; preds = %48
  %58 = load i32*, i32** %13, align 8
  %59 = call i32 @BN_num_bytes(i32* %58)
  %60 = load i32, i32* %9, align 4
  %61 = icmp sgt i32 %59, %60
  br i1 %61, label %77, label %62

62:                                               ; preds = %57
  %63 = load i32*, i32** %14, align 8
  %64 = call i32 @BN_num_bytes(i32* %63)
  %65 = load i32, i32* %9, align 4
  %66 = icmp sgt i32 %64, %65
  br i1 %66, label %77, label %67

67:                                               ; preds = %62
  %68 = load i32*, i32** %16, align 8
  %69 = call i32 @BN_num_bytes(i32* %68)
  %70 = load i32, i32* %9, align 4
  %71 = icmp sgt i32 %69, %70
  br i1 %71, label %77, label %72

72:                                               ; preds = %67
  %73 = load i32*, i32** %17, align 8
  %74 = call i32 @BN_num_bytes(i32* %73)
  %75 = load i32, i32* %9, align 4
  %76 = icmp sgt i32 %74, %75
  br i1 %76, label %77, label %78

77:                                               ; preds = %72, %67, %62, %57, %48
  br label %81

78:                                               ; preds = %72
  br label %79

79:                                               ; preds = %78
  %80 = load i32, i32* %10, align 4
  store i32 %80, i32* %4, align 4
  br label %85

81:                                               ; preds = %77, %47, %23
  %82 = load i32, i32* @PEM_F_CHECK_BITLEN_RSA, align 4
  %83 = load i32, i32* @PEM_R_UNSUPPORTED_KEY_COMPONENTS, align 4
  %84 = call i32 @PEMerr(i32 %82, i32 %83)
  store i32 0, i32* %4, align 4
  br label %85

85:                                               ; preds = %81, %79, %34
  %86 = load i32, i32* %4, align 4
  ret i32 %86
}

declare dso_local i32 @RSA_get0_key(i32*, i32*, i32**, i32**) #1

declare dso_local i32 @BN_num_bits(i32*) #1

declare dso_local i32 @RSA_bits(i32*) #1

declare dso_local i32 @RSA_size(i32*) #1

declare dso_local i32 @BN_num_bytes(i32*) #1

declare dso_local i32 @RSA_get0_factors(i32*, i32**, i32**) #1

declare dso_local i32 @RSA_get0_crt_params(i32*, i32**, i32**, i32**) #1

declare dso_local i32 @PEMerr(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
