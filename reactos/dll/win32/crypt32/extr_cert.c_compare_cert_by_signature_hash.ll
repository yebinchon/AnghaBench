; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/crypt32/extr_cert.c_compare_cert_by_signature_hash.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/crypt32/extr_cert.c_compare_cert_by_signature_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32 }

@CERT_SIGNATURE_HASH_PROP_ID = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64, i64, i8*)* @compare_cert_by_signature_hash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @compare_cert_by_signature_hash(i32 %0, i64 %1, i64 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_2__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  store i32 %0, i32* %5, align 4
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i8* %3, i8** %8, align 8
  %13 = load i8*, i8** %8, align 8
  %14 = bitcast i8* %13 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %14, %struct.TYPE_2__** %9, align 8
  store i64 0, i64* %10, align 8
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @CERT_SIGNATURE_HASH_PROP_ID, align 4
  %17 = call i32 @CertGetCertificateContextProperty(i32 %15, i32 %16, i32* null, i64* %10)
  store i32 %17, i32* %11, align 4
  %18 = load i32, i32* %11, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %50

20:                                               ; preds = %4
  %21 = load i64, i64* %10, align 8
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp eq i64 %21, %24
  br i1 %25, label %26, label %50

26:                                               ; preds = %20
  %27 = load i64, i64* %10, align 8
  %28 = call i32* @CryptMemAlloc(i64 %27)
  store i32* %28, i32** %12, align 8
  %29 = load i32*, i32** %12, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %31, label %47

31:                                               ; preds = %26
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* @CERT_SIGNATURE_HASH_PROP_ID, align 4
  %34 = load i32*, i32** %12, align 8
  %35 = call i32 @CertGetCertificateContextProperty(i32 %32, i32 %33, i32* %34, i64* %10)
  %36 = load i32*, i32** %12, align 8
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = load i64, i64* %10, align 8
  %41 = call i32 @memcmp(i32* %36, i32 %39, i64 %40)
  %42 = icmp ne i32 %41, 0
  %43 = xor i1 %42, true
  %44 = zext i1 %43 to i32
  store i32 %44, i32* %11, align 4
  %45 = load i32*, i32** %12, align 8
  %46 = call i32 @CryptMemFree(i32* %45)
  br label %49

47:                                               ; preds = %26
  %48 = load i32, i32* @FALSE, align 4
  store i32 %48, i32* %11, align 4
  br label %49

49:                                               ; preds = %47, %31
  br label %52

50:                                               ; preds = %20, %4
  %51 = load i32, i32* @FALSE, align 4
  store i32 %51, i32* %11, align 4
  br label %52

52:                                               ; preds = %50, %49
  %53 = load i32, i32* %11, align 4
  ret i32 %53
}

declare dso_local i32 @CertGetCertificateContextProperty(i32, i32, i32*, i64*) #1

declare dso_local i32* @CryptMemAlloc(i64) #1

declare dso_local i32 @memcmp(i32*, i32, i64) #1

declare dso_local i32 @CryptMemFree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
