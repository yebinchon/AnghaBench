; ModuleID = '/home/carl/AnghaBench/openwrt/package/kernel/lantiq/ltq-deu/src/extr_ifxmips_async_des.c_lq_des3_ede_setkey.c'
source_filename = "/home/carl/AnghaBench/openwrt/package/kernel/lantiq/ltq-deu/src/extr_ifxmips_async_des.c_lq_des3_ede_setkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_ablkcipher = type { i32 }
%struct.des_ctx = type { i32, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_ablkcipher*, i32*, i32)* @lq_des3_ede_setkey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lq_des3_ede_setkey(%struct.crypto_ablkcipher* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.crypto_ablkcipher*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.des_ctx*, align 8
  store %struct.crypto_ablkcipher* %0, %struct.crypto_ablkcipher** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.crypto_ablkcipher*, %struct.crypto_ablkcipher** %4, align 8
  %9 = call %struct.des_ctx* @crypto_ablkcipher_ctx(%struct.crypto_ablkcipher* %8)
  store %struct.des_ctx* %9, %struct.des_ctx** %7, align 8
  %10 = load i32, i32* %6, align 4
  %11 = udiv i32 %10, 8
  %12 = add i32 %11, 1
  %13 = load %struct.des_ctx*, %struct.des_ctx** %7, align 8
  %14 = getelementptr inbounds %struct.des_ctx, %struct.des_ctx* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 8
  %15 = load i32, i32* %6, align 4
  %16 = load %struct.des_ctx*, %struct.des_ctx** %7, align 8
  %17 = getelementptr inbounds %struct.des_ctx, %struct.des_ctx* %16, i32 0, i32 1
  store i32 %15, i32* %17, align 4
  %18 = load %struct.des_ctx*, %struct.des_ctx** %7, align 8
  %19 = getelementptr inbounds %struct.des_ctx, %struct.des_ctx* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to i32*
  %22 = load i32*, i32** %5, align 8
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @memcpy(i32* %21, i32* %22, i32 %23)
  ret i32 0
}

declare dso_local %struct.des_ctx* @crypto_ablkcipher_ctx(%struct.crypto_ablkcipher*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
