; ModuleID = '/home/carl/AnghaBench/openssl/engines/extr_e_devcrypto.c_devcrypto_test_cipher.c'
source_filename = "/home/carl/AnghaBench/openssl/engines/extr_e_devcrypto.c_devcrypto_test_cipher.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64 }

@cipher_driver_info = common dso_local global %struct.TYPE_2__* null, align 8
@DEVCRYPTO_STATUS_USABLE = common dso_local global i64 0, align 8
@selected_ciphers = common dso_local global i32* null, align 8
@DEVCRYPTO_ACCELERATED = common dso_local global i64 0, align 8
@use_softdrivers = common dso_local global i64 0, align 8
@DEVCRYPTO_USE_SOFTWARE = common dso_local global i64 0, align 8
@DEVCRYPTO_NOT_ACCELERATED = common dso_local global i64 0, align 8
@DEVCRYPTO_REJECT_SOFTWARE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64)* @devcrypto_test_cipher to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @devcrypto_test_cipher(i64 %0) #0 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cipher_driver_info, align 8
  %4 = load i64, i64* %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %3, i64 %4
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @DEVCRYPTO_STATUS_USABLE, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %44

10:                                               ; preds = %1
  %11 = load i32*, i32** @selected_ciphers, align 8
  %12 = load i64, i64* %2, align 8
  %13 = getelementptr inbounds i32, i32* %11, i64 %12
  %14 = load i32, i32* %13, align 4
  %15 = icmp eq i32 %14, 1
  br i1 %15, label %16, label %44

16:                                               ; preds = %10
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cipher_driver_info, align 8
  %18 = load i64, i64* %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @DEVCRYPTO_ACCELERATED, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %42, label %24

24:                                               ; preds = %16
  %25 = load i64, i64* @use_softdrivers, align 8
  %26 = load i64, i64* @DEVCRYPTO_USE_SOFTWARE, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %42, label %28

28:                                               ; preds = %24
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cipher_driver_info, align 8
  %30 = load i64, i64* %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @DEVCRYPTO_NOT_ACCELERATED, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %28
  %37 = load i64, i64* @use_softdrivers, align 8
  %38 = load i64, i64* @DEVCRYPTO_REJECT_SOFTWARE, align 8
  %39 = icmp eq i64 %37, %38
  br label %40

40:                                               ; preds = %36, %28
  %41 = phi i1 [ false, %28 ], [ %39, %36 ]
  br label %42

42:                                               ; preds = %40, %24, %16
  %43 = phi i1 [ true, %24 ], [ true, %16 ], [ %41, %40 ]
  br label %44

44:                                               ; preds = %42, %10, %1
  %45 = phi i1 [ false, %10 ], [ false, %1 ], [ %43, %42 ]
  %46 = zext i1 %45 to i32
  ret i32 %46
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
