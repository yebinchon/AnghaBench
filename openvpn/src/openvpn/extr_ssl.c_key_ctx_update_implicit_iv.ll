; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_ssl.c_key_ctx_update_implicit_iv.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_ssl.c_key_ctx_update_implicit_iv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.key_ctx = type { i64, i32, i32 }

@OPENVPN_AEAD_MIN_IV_LEN = common dso_local global i32 0, align 4
@OPENVPN_MAX_IV_LENGTH = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.key_ctx*, i32*, i64)* @key_ctx_update_implicit_iv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @key_ctx_update_implicit_iv(%struct.key_ctx* %0, i32* %1, i64 %2) #0 {
  %4 = alloca %struct.key_ctx*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  store %struct.key_ctx* %0, %struct.key_ctx** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load %struct.key_ctx*, %struct.key_ctx** %4, align 8
  %10 = getelementptr inbounds %struct.key_ctx, %struct.key_ctx* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = call i32* @cipher_ctx_get_cipher_kt(i32 %11)
  store i32* %12, i32** %7, align 8
  %13 = load i32*, i32** %7, align 8
  %14 = call i64 @cipher_kt_mode_aead(i32* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %46

16:                                               ; preds = %3
  store i64 0, i64* %8, align 8
  %17 = load i32*, i32** %7, align 8
  %18 = call i32 @cipher_kt_iv_size(i32* %17)
  %19 = load i32, i32* @OPENVPN_AEAD_MIN_IV_LEN, align 4
  %20 = icmp sge i32 %18, %19
  %21 = zext i1 %20 to i32
  %22 = call i32 @ASSERT(i32 %21)
  %23 = load i32*, i32** %7, align 8
  %24 = call i32 @cipher_kt_iv_size(i32* %23)
  %25 = sext i32 %24 to i64
  %26 = sub i64 %25, 4
  store i64 %26, i64* %8, align 8
  %27 = load i64, i64* %8, align 8
  %28 = load i64, i64* @OPENVPN_MAX_IV_LENGTH, align 8
  %29 = icmp ule i64 %27, %28
  %30 = zext i1 %29 to i32
  %31 = call i32 @ASSERT(i32 %30)
  %32 = load i64, i64* %8, align 8
  %33 = load i64, i64* %6, align 8
  %34 = icmp ule i64 %32, %33
  %35 = zext i1 %34 to i32
  %36 = call i32 @ASSERT(i32 %35)
  %37 = load %struct.key_ctx*, %struct.key_ctx** %4, align 8
  %38 = getelementptr inbounds %struct.key_ctx, %struct.key_ctx* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = load i32*, i32** %5, align 8
  %41 = load i64, i64* %8, align 8
  %42 = call i32 @memcpy(i32 %39, i32* %40, i64 %41)
  %43 = load i64, i64* %8, align 8
  %44 = load %struct.key_ctx*, %struct.key_ctx** %4, align 8
  %45 = getelementptr inbounds %struct.key_ctx, %struct.key_ctx* %44, i32 0, i32 0
  store i64 %43, i64* %45, align 8
  br label %46

46:                                               ; preds = %16, %3
  ret void
}

declare dso_local i32* @cipher_ctx_get_cipher_kt(i32) #1

declare dso_local i64 @cipher_kt_mode_aead(i32*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @cipher_kt_iv_size(i32*) #1

declare dso_local i32 @memcpy(i32, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
