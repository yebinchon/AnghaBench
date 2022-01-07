; ModuleID = '/home/carl/AnghaBench/openssl/crypto/evp/extr_p_lib.c_EVP_PKEY_get0_poly1305.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/evp/extr_p_lib.c_EVP_PKEY_get0_poly1305.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 }
%struct.TYPE_7__ = type { i64, i8* }

@EVP_PKEY_POLY1305 = common dso_local global i64 0, align 8
@EVP_F_EVP_PKEY_GET0_POLY1305 = common dso_local global i32 0, align 4
@EVP_R_EXPECTING_A_POLY1305_KEY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @EVP_PKEY_get0_poly1305(%struct.TYPE_6__* %0, i64* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i64* %1, i64** %5, align 8
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %6, align 8
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @EVP_PKEY_POLY1305, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %12, label %16

12:                                               ; preds = %2
  %13 = load i32, i32* @EVP_F_EVP_PKEY_GET0_POLY1305, align 4
  %14 = load i32, i32* @EVP_R_EXPECTING_A_POLY1305_KEY, align 4
  %15 = call i32 @EVPerr(i32 %13, i32 %14)
  store i8* null, i8** %3, align 8
  br label %26

16:                                               ; preds = %2
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %18 = call %struct.TYPE_7__* @EVP_PKEY_get0(%struct.TYPE_6__* %17)
  store %struct.TYPE_7__* %18, %struct.TYPE_7__** %6, align 8
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64*, i64** %5, align 8
  store i64 %21, i64* %22, align 8
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 1
  %25 = load i8*, i8** %24, align 8
  store i8* %25, i8** %3, align 8
  br label %26

26:                                               ; preds = %16, %12
  %27 = load i8*, i8** %3, align 8
  ret i8* %27
}

declare dso_local i32 @EVPerr(i32, i32) #1

declare dso_local %struct.TYPE_7__* @EVP_PKEY_get0(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
