; ModuleID = '/home/carl/AnghaBench/openssl/crypto/pem/extr_pvkfmt.c_check_bitlen_dsa.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/pem/extr_pvkfmt.c_check_bitlen_dsa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MS_DSS1MAGIC = common dso_local global i32 0, align 4
@MS_DSS2MAGIC = common dso_local global i32 0, align 4
@PEM_F_CHECK_BITLEN_DSA = common dso_local global i32 0, align 4
@PEM_R_UNSUPPORTED_KEY_COMPONENTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32*)* @check_bitlen_dsa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_bitlen_dsa(i32* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32* null, i32** %9, align 8
  store i32* null, i32** %10, align 8
  store i32* null, i32** %11, align 8
  store i32* null, i32** %12, align 8
  store i32* null, i32** %13, align 8
  %14 = load i32*, i32** %5, align 8
  %15 = call i32 @DSA_get0_pqg(i32* %14, i32** %9, i32** %10, i32** %11)
  %16 = load i32*, i32** %5, align 8
  %17 = call i32 @DSA_get0_key(i32* %16, i32** %12, i32** %13)
  %18 = load i32*, i32** %9, align 8
  %19 = call i32 @BN_num_bits(i32* %18)
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = and i32 %20, 7
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %32, label %23

23:                                               ; preds = %3
  %24 = load i32*, i32** %10, align 8
  %25 = call i32 @BN_num_bits(i32* %24)
  %26 = icmp ne i32 %25, 160
  br i1 %26, label %32, label %27

27:                                               ; preds = %23
  %28 = load i32*, i32** %11, align 8
  %29 = call i32 @BN_num_bits(i32* %28)
  %30 = load i32, i32* %8, align 4
  %31 = icmp sgt i32 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %27, %23, %3
  br label %55

33:                                               ; preds = %27
  %34 = load i32, i32* %6, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %45

36:                                               ; preds = %33
  %37 = load i32*, i32** %12, align 8
  %38 = call i32 @BN_num_bits(i32* %37)
  %39 = load i32, i32* %8, align 4
  %40 = icmp sgt i32 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %36
  br label %55

42:                                               ; preds = %36
  %43 = load i32, i32* @MS_DSS1MAGIC, align 4
  %44 = load i32*, i32** %7, align 8
  store i32 %43, i32* %44, align 4
  br label %53

45:                                               ; preds = %33
  %46 = load i32*, i32** %13, align 8
  %47 = call i32 @BN_num_bits(i32* %46)
  %48 = icmp sgt i32 %47, 160
  br i1 %48, label %49, label %50

49:                                               ; preds = %45
  br label %55

50:                                               ; preds = %45
  %51 = load i32, i32* @MS_DSS2MAGIC, align 4
  %52 = load i32*, i32** %7, align 8
  store i32 %51, i32* %52, align 4
  br label %53

53:                                               ; preds = %50, %42
  %54 = load i32, i32* %8, align 4
  store i32 %54, i32* %4, align 4
  br label %59

55:                                               ; preds = %49, %41, %32
  %56 = load i32, i32* @PEM_F_CHECK_BITLEN_DSA, align 4
  %57 = load i32, i32* @PEM_R_UNSUPPORTED_KEY_COMPONENTS, align 4
  %58 = call i32 @PEMerr(i32 %56, i32 %57)
  store i32 0, i32* %4, align 4
  br label %59

59:                                               ; preds = %55, %53
  %60 = load i32, i32* %4, align 4
  ret i32 %60
}

declare dso_local i32 @DSA_get0_pqg(i32*, i32**, i32**, i32**) #1

declare dso_local i32 @DSA_get0_key(i32*, i32**, i32**) #1

declare dso_local i32 @BN_num_bits(i32*) #1

declare dso_local i32 @PEMerr(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
