; ModuleID = '/home/carl/AnghaBench/openssl/ssl/extr_t1_lib.c_tls1_check_ec_tmp_key.c'
source_filename = "/home/carl/AnghaBench/openssl/ssl/extr_t1_lib.c_tls1_check_ec_tmp_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TLS1_CK_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256 = common dso_local global i64 0, align 8
@TLSEXT_curve_P_256 = common dso_local global i32 0, align 4
@TLS1_CK_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384 = common dso_local global i64 0, align 8
@TLSEXT_curve_P_384 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tls1_check_ec_tmp_key(i32* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = load i32*, i32** %4, align 8
  %7 = call i32 @tls1_suiteb(i32* %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %14, label %9

9:                                                ; preds = %2
  %10 = load i32*, i32** %4, align 8
  %11 = call i64 @tls1_shared_group(i32* %10, i32 0)
  %12 = icmp ne i64 %11, 0
  %13 = zext i1 %12 to i32
  store i32 %13, i32* %3, align 4
  br label %31

14:                                               ; preds = %2
  %15 = load i64, i64* %5, align 8
  %16 = load i64, i64* @TLS1_CK_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %14
  %19 = load i32*, i32** %4, align 8
  %20 = load i32, i32* @TLSEXT_curve_P_256, align 4
  %21 = call i32 @tls1_check_group_id(i32* %19, i32 %20, i32 1)
  store i32 %21, i32* %3, align 4
  br label %31

22:                                               ; preds = %14
  %23 = load i64, i64* %5, align 8
  %24 = load i64, i64* @TLS1_CK_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %22
  %27 = load i32*, i32** %4, align 8
  %28 = load i32, i32* @TLSEXT_curve_P_384, align 4
  %29 = call i32 @tls1_check_group_id(i32* %27, i32 %28, i32 1)
  store i32 %29, i32* %3, align 4
  br label %31

30:                                               ; preds = %22
  store i32 0, i32* %3, align 4
  br label %31

31:                                               ; preds = %30, %26, %18, %9
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

declare dso_local i32 @tls1_suiteb(i32*) #1

declare dso_local i64 @tls1_shared_group(i32*, i32) #1

declare dso_local i32 @tls1_check_group_id(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
