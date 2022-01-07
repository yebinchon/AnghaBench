; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_crypto.c_openvpn_encrypt.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_crypto.c_openvpn_encrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buffer = type { i64 }
%struct.crypto_options = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @openvpn_encrypt(%struct.buffer* %0, i64 %1, %struct.crypto_options* %2) #0 {
  %4 = alloca %struct.buffer, align 8
  %5 = alloca %struct.buffer*, align 8
  %6 = alloca %struct.crypto_options*, align 8
  %7 = alloca i32*, align 8
  %8 = getelementptr inbounds %struct.buffer, %struct.buffer* %4, i32 0, i32 0
  store i64 %1, i64* %8, align 8
  store %struct.buffer* %0, %struct.buffer** %5, align 8
  store %struct.crypto_options* %2, %struct.crypto_options** %6, align 8
  %9 = load %struct.buffer*, %struct.buffer** %5, align 8
  %10 = getelementptr inbounds %struct.buffer, %struct.buffer* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp sgt i64 %11, 0
  br i1 %12, label %13, label %39

13:                                               ; preds = %3
  %14 = load %struct.crypto_options*, %struct.crypto_options** %6, align 8
  %15 = icmp ne %struct.crypto_options* %14, null
  br i1 %15, label %16, label %39

16:                                               ; preds = %13
  %17 = load %struct.crypto_options*, %struct.crypto_options** %6, align 8
  %18 = getelementptr inbounds %struct.crypto_options, %struct.crypto_options* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32* @cipher_ctx_get_cipher_kt(i32 %21)
  store i32* %22, i32** %7, align 8
  %23 = load i32*, i32** %7, align 8
  %24 = call i64 @cipher_kt_mode_aead(i32* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %16
  %27 = load %struct.buffer*, %struct.buffer** %5, align 8
  %28 = load %struct.crypto_options*, %struct.crypto_options** %6, align 8
  %29 = getelementptr inbounds %struct.buffer, %struct.buffer* %4, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @openvpn_encrypt_aead(%struct.buffer* %27, i64 %30, %struct.crypto_options* %28)
  br label %38

32:                                               ; preds = %16
  %33 = load %struct.buffer*, %struct.buffer** %5, align 8
  %34 = load %struct.crypto_options*, %struct.crypto_options** %6, align 8
  %35 = getelementptr inbounds %struct.buffer, %struct.buffer* %4, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = call i32 @openvpn_encrypt_v1(%struct.buffer* %33, i64 %36, %struct.crypto_options* %34)
  br label %38

38:                                               ; preds = %32, %26
  br label %39

39:                                               ; preds = %38, %13, %3
  ret void
}

declare dso_local i32* @cipher_ctx_get_cipher_kt(i32) #1

declare dso_local i64 @cipher_kt_mode_aead(i32*) #1

declare dso_local i32 @openvpn_encrypt_aead(%struct.buffer*, i64, %struct.crypto_options*) #1

declare dso_local i32 @openvpn_encrypt_v1(%struct.buffer*, i64, %struct.crypto_options*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
