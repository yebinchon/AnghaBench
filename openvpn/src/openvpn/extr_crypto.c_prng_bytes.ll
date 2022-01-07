; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_crypto.c_prng_bytes.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_crypto.c_prng_bytes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@prng_bytes.processed = internal global i64 0, align 8
@nonce_md = common dso_local global i64 0, align 8
@nonce_data = common dso_local global i32 0, align 4
@nonce_secret_len = common dso_local global i64 0, align 8
@PRNG_NONCE_RESET_BYTES = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @prng_bytes(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i64, i64* @nonce_md, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %49

9:                                                ; preds = %2
  %10 = load i64, i64* @nonce_md, align 8
  %11 = call i32 @md_kt_size(i64 %10)
  store i32 %11, i32* %5, align 4
  br label %12

12:                                               ; preds = %47, %9
  %13 = load i32, i32* %4, align 4
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %15, label %48

15:                                               ; preds = %12
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @min_int(i32 %16, i32 %17)
  store i32 %18, i32* %6, align 4
  %19 = load i64, i64* @nonce_md, align 8
  %20 = load i32, i32* @nonce_data, align 4
  %21 = load i32, i32* %5, align 4
  %22 = sext i32 %21 to i64
  %23 = load i64, i64* @nonce_secret_len, align 8
  %24 = add nsw i64 %22, %23
  %25 = load i32, i32* @nonce_data, align 4
  %26 = call i32 @md_full(i64 %19, i32 %20, i64 %24, i32 %25)
  %27 = load i32*, i32** %3, align 8
  %28 = load i32, i32* @nonce_data, align 4
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @memcpy(i32* %27, i32 %28, i32 %29)
  %31 = load i32, i32* %6, align 4
  %32 = load i32*, i32** %3, align 8
  %33 = sext i32 %31 to i64
  %34 = getelementptr inbounds i32, i32* %32, i64 %33
  store i32* %34, i32** %3, align 8
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* %4, align 4
  %37 = sub nsw i32 %36, %35
  store i32 %37, i32* %4, align 4
  %38 = load i32, i32* %6, align 4
  %39 = sext i32 %38 to i64
  %40 = load i64, i64* @prng_bytes.processed, align 8
  %41 = add i64 %40, %39
  store i64 %41, i64* @prng_bytes.processed, align 8
  %42 = load i64, i64* @prng_bytes.processed, align 8
  %43 = load i64, i64* @PRNG_NONCE_RESET_BYTES, align 8
  %44 = icmp ugt i64 %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %15
  %46 = call i32 (...) @prng_reset_nonce()
  store i64 0, i64* @prng_bytes.processed, align 8
  br label %47

47:                                               ; preds = %45, %15
  br label %12

48:                                               ; preds = %12
  br label %54

49:                                               ; preds = %2
  %50 = load i32*, i32** %3, align 8
  %51 = load i32, i32* %4, align 4
  %52 = call i32 @rand_bytes(i32* %50, i32 %51)
  %53 = call i32 @ASSERT(i32 %52)
  br label %54

54:                                               ; preds = %49, %48
  ret void
}

declare dso_local i32 @md_kt_size(i64) #1

declare dso_local i32 @min_int(i32, i32) #1

declare dso_local i32 @md_full(i64, i32, i64, i32) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @prng_reset_nonce(...) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @rand_bytes(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
