; ModuleID = '/home/carl/AnghaBench/openssl/crypto/evp/extr_e_rc2.c_rc2_magic_to_meth.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/evp/extr_e_rc2.c_rc2_magic_to_meth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RC2_128_MAGIC = common dso_local global i32 0, align 4
@RC2_64_MAGIC = common dso_local global i32 0, align 4
@RC2_40_MAGIC = common dso_local global i32 0, align 4
@EVP_F_RC2_MAGIC_TO_METH = common dso_local global i32 0, align 4
@EVP_R_UNSUPPORTED_KEY_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @rc2_magic_to_meth to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rc2_magic_to_meth(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = load i32, i32* @RC2_128_MAGIC, align 4
  %6 = icmp eq i32 %4, %5
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  store i32 128, i32* %2, align 4
  br label %22

8:                                                ; preds = %1
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* @RC2_64_MAGIC, align 4
  %11 = icmp eq i32 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %8
  store i32 64, i32* %2, align 4
  br label %22

13:                                               ; preds = %8
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* @RC2_40_MAGIC, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %13
  store i32 40, i32* %2, align 4
  br label %22

18:                                               ; preds = %13
  %19 = load i32, i32* @EVP_F_RC2_MAGIC_TO_METH, align 4
  %20 = load i32, i32* @EVP_R_UNSUPPORTED_KEY_SIZE, align 4
  %21 = call i32 @EVPerr(i32 %19, i32 %20)
  store i32 0, i32* %2, align 4
  br label %22

22:                                               ; preds = %18, %17, %12, %7
  %23 = load i32, i32* %2, align 4
  ret i32 %23
}

declare dso_local i32 @EVPerr(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
