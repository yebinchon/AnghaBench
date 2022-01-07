; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/crypt32/extr_cert.c_compare_cert_by_sha1_hash.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/crypt32/extr_cert.c_compare_cert_by_sha1_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32 }

@CERT_SHA1_HASH_PROP_ID = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64, i64, i8*)* @compare_cert_by_sha1_hash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @compare_cert_by_sha1_hash(i32 %0, i64 %1, i64 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca [20 x i32], align 16
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_2__*, align 8
  store i32 %0, i32* %5, align 4
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i8* %3, i8** %8, align 8
  store i64 80, i64* %11, align 8
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @CERT_SHA1_HASH_PROP_ID, align 4
  %15 = getelementptr inbounds [20 x i32], [20 x i32]* %10, i64 0, i64 0
  %16 = call i32 @CertGetCertificateContextProperty(i32 %13, i32 %14, i32* %15, i64* %11)
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* %9, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %40

19:                                               ; preds = %4
  %20 = load i8*, i8** %8, align 8
  %21 = bitcast i8* %20 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %21, %struct.TYPE_2__** %12, align 8
  %22 = load i64, i64* %11, align 8
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp eq i64 %22, %25
  br i1 %26, label %27, label %37

27:                                               ; preds = %19
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = getelementptr inbounds [20 x i32], [20 x i32]* %10, i64 0, i64 0
  %32 = load i64, i64* %11, align 8
  %33 = call i32 @memcmp(i32 %30, i32* %31, i64 %32)
  %34 = icmp ne i32 %33, 0
  %35 = xor i1 %34, true
  %36 = zext i1 %35 to i32
  store i32 %36, i32* %9, align 4
  br label %39

37:                                               ; preds = %19
  %38 = load i32, i32* @FALSE, align 4
  store i32 %38, i32* %9, align 4
  br label %39

39:                                               ; preds = %37, %27
  br label %40

40:                                               ; preds = %39, %4
  %41 = load i32, i32* %9, align 4
  ret i32 %41
}

declare dso_local i32 @CertGetCertificateContextProperty(i32, i32, i32*, i64*) #1

declare dso_local i32 @memcmp(i32, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
