; ModuleID = '/home/carl/AnghaBench/openssl/crypto/bn/extr_bn_lib.c_BN_num_bits_word.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/bn/extr_bn_lib.c_BN_num_bits_word.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BN_MASK2 = common dso_local global i32 0, align 4
@BN_BITS2 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @BN_num_bits_word(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = icmp ne i32 %6, 0
  %8 = zext i1 %7 to i32
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %2, align 4
  %10 = ashr i32 %9, 16
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* %3, align 4
  %12 = sub nsw i32 0, %11
  %13 = load i32, i32* @BN_MASK2, align 4
  %14 = and i32 %12, %13
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @BN_BITS2, align 4
  %17 = sub nsw i32 %16, 1
  %18 = ashr i32 %15, %17
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %4, align 4
  %21 = and i32 16, %20
  %22 = load i32, i32* %5, align 4
  %23 = add nsw i32 %22, %21
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %3, align 4
  %25 = load i32, i32* %2, align 4
  %26 = xor i32 %24, %25
  %27 = load i32, i32* %4, align 4
  %28 = and i32 %26, %27
  %29 = load i32, i32* %2, align 4
  %30 = xor i32 %29, %28
  store i32 %30, i32* %2, align 4
  %31 = load i32, i32* %2, align 4
  %32 = ashr i32 %31, 8
  store i32 %32, i32* %3, align 4
  %33 = load i32, i32* %3, align 4
  %34 = sub nsw i32 0, %33
  %35 = load i32, i32* @BN_MASK2, align 4
  %36 = and i32 %34, %35
  store i32 %36, i32* %4, align 4
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* @BN_BITS2, align 4
  %39 = sub nsw i32 %38, 1
  %40 = ashr i32 %37, %39
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %4, align 4
  %42 = load i32, i32* %4, align 4
  %43 = and i32 8, %42
  %44 = load i32, i32* %5, align 4
  %45 = add nsw i32 %44, %43
  store i32 %45, i32* %5, align 4
  %46 = load i32, i32* %3, align 4
  %47 = load i32, i32* %2, align 4
  %48 = xor i32 %46, %47
  %49 = load i32, i32* %4, align 4
  %50 = and i32 %48, %49
  %51 = load i32, i32* %2, align 4
  %52 = xor i32 %51, %50
  store i32 %52, i32* %2, align 4
  %53 = load i32, i32* %2, align 4
  %54 = ashr i32 %53, 4
  store i32 %54, i32* %3, align 4
  %55 = load i32, i32* %3, align 4
  %56 = sub nsw i32 0, %55
  %57 = load i32, i32* @BN_MASK2, align 4
  %58 = and i32 %56, %57
  store i32 %58, i32* %4, align 4
  %59 = load i32, i32* %4, align 4
  %60 = load i32, i32* @BN_BITS2, align 4
  %61 = sub nsw i32 %60, 1
  %62 = ashr i32 %59, %61
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %4, align 4
  %64 = load i32, i32* %4, align 4
  %65 = and i32 4, %64
  %66 = load i32, i32* %5, align 4
  %67 = add nsw i32 %66, %65
  store i32 %67, i32* %5, align 4
  %68 = load i32, i32* %3, align 4
  %69 = load i32, i32* %2, align 4
  %70 = xor i32 %68, %69
  %71 = load i32, i32* %4, align 4
  %72 = and i32 %70, %71
  %73 = load i32, i32* %2, align 4
  %74 = xor i32 %73, %72
  store i32 %74, i32* %2, align 4
  %75 = load i32, i32* %2, align 4
  %76 = ashr i32 %75, 2
  store i32 %76, i32* %3, align 4
  %77 = load i32, i32* %3, align 4
  %78 = sub nsw i32 0, %77
  %79 = load i32, i32* @BN_MASK2, align 4
  %80 = and i32 %78, %79
  store i32 %80, i32* %4, align 4
  %81 = load i32, i32* %4, align 4
  %82 = load i32, i32* @BN_BITS2, align 4
  %83 = sub nsw i32 %82, 1
  %84 = ashr i32 %81, %83
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %4, align 4
  %86 = load i32, i32* %4, align 4
  %87 = and i32 2, %86
  %88 = load i32, i32* %5, align 4
  %89 = add nsw i32 %88, %87
  store i32 %89, i32* %5, align 4
  %90 = load i32, i32* %3, align 4
  %91 = load i32, i32* %2, align 4
  %92 = xor i32 %90, %91
  %93 = load i32, i32* %4, align 4
  %94 = and i32 %92, %93
  %95 = load i32, i32* %2, align 4
  %96 = xor i32 %95, %94
  store i32 %96, i32* %2, align 4
  %97 = load i32, i32* %2, align 4
  %98 = ashr i32 %97, 1
  store i32 %98, i32* %3, align 4
  %99 = load i32, i32* %3, align 4
  %100 = sub nsw i32 0, %99
  %101 = load i32, i32* @BN_MASK2, align 4
  %102 = and i32 %100, %101
  store i32 %102, i32* %4, align 4
  %103 = load i32, i32* %4, align 4
  %104 = load i32, i32* @BN_BITS2, align 4
  %105 = sub nsw i32 %104, 1
  %106 = ashr i32 %103, %105
  %107 = sub nsw i32 0, %106
  store i32 %107, i32* %4, align 4
  %108 = load i32, i32* %4, align 4
  %109 = and i32 1, %108
  %110 = load i32, i32* %5, align 4
  %111 = add nsw i32 %110, %109
  store i32 %111, i32* %5, align 4
  %112 = load i32, i32* %5, align 4
  ret i32 %112
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
