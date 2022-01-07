; ModuleID = '/home/carl/AnghaBench/openssl/engines/extr_e_afalg.c_free_cbc.c'
source_filename = "/home/carl/AnghaBench/openssl/engines/extr_e_afalg.c_free_cbc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32* }

@afalg_cipher_nids = common dso_local global i32 0, align 4
@cbc_handle = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @free_cbc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @free_cbc() #0 {
  %1 = alloca i16, align 2
  store i16 0, i16* %1, align 2
  br label %2

2:                                                ; preds = %22, %0
  %3 = load i16, i16* %1, align 2
  %4 = zext i16 %3 to i32
  %5 = load i32, i32* @afalg_cipher_nids, align 4
  %6 = call zeroext i16 @OSSL_NELEM(i32 %5)
  %7 = zext i16 %6 to i32
  %8 = icmp slt i32 %4, %7
  br i1 %8, label %9, label %25

9:                                                ; preds = %2
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cbc_handle, align 8
  %11 = load i16, i16* %1, align 2
  %12 = zext i16 %11 to i64
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i64 %12
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = call i32 @EVP_CIPHER_meth_free(i32* %15)
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cbc_handle, align 8
  %18 = load i16, i16* %1, align 2
  %19 = zext i16 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  store i32* null, i32** %21, align 8
  br label %22

22:                                               ; preds = %9
  %23 = load i16, i16* %1, align 2
  %24 = add i16 %23, 1
  store i16 %24, i16* %1, align 2
  br label %2

25:                                               ; preds = %2
  ret i32 1
}

declare dso_local zeroext i16 @OSSL_NELEM(i32) #1

declare dso_local i32 @EVP_CIPHER_meth_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
