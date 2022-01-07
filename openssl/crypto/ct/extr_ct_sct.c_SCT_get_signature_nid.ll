; ModuleID = '/home/carl/AnghaBench/openssl/crypto/ct/extr_ct_sct.c_SCT_get_signature_nid.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/ct/extr_ct_sct.c_SCT_get_signature_nid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64, i32 }

@SCT_VERSION_V1 = common dso_local global i64 0, align 8
@TLSEXT_hash_sha256 = common dso_local global i64 0, align 8
@NID_ecdsa_with_SHA256 = common dso_local global i32 0, align 4
@NID_sha256WithRSAEncryption = common dso_local global i32 0, align 4
@NID_undef = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @SCT_get_signature_nid(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  %4 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %5 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @SCT_VERSION_V1, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %26

9:                                                ; preds = %1
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @TLSEXT_hash_sha256, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %25

15:                                               ; preds = %9
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  switch i32 %18, label %23 [
    i32 129, label %19
    i32 128, label %21
  ]

19:                                               ; preds = %15
  %20 = load i32, i32* @NID_ecdsa_with_SHA256, align 4
  store i32 %20, i32* %2, align 4
  br label %28

21:                                               ; preds = %15
  %22 = load i32, i32* @NID_sha256WithRSAEncryption, align 4
  store i32 %22, i32* %2, align 4
  br label %28

23:                                               ; preds = %15
  %24 = load i32, i32* @NID_undef, align 4
  store i32 %24, i32* %2, align 4
  br label %28

25:                                               ; preds = %9
  br label %26

26:                                               ; preds = %25, %1
  %27 = load i32, i32* @NID_undef, align 4
  store i32 %27, i32* %2, align 4
  br label %28

28:                                               ; preds = %26, %23, %21, %19
  %29 = load i32, i32* %2, align 4
  ret i32 %29
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
