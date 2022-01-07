; ModuleID = '/home/carl/AnghaBench/openssl/providers/common/ciphers/extr_cipher_gcm.c_gcm_stream_update.c'
source_filename = "/home/carl/AnghaBench/openssl/providers/common/ciphers/extr_cipher_gcm.c_gcm_stream_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ERR_LIB_PROV = common dso_local global i32 0, align 4
@PROV_R_OUTPUT_BUFFER_TOO_SMALL = common dso_local global i32 0, align 4
@PROV_R_CIPHER_OPERATION_FAILED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gcm_stream_update(i8* %0, i8* %1, i64* %2, i64 %3, i8* %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  store i8* %0, i8** %8, align 8
  store i8* %1, i8** %9, align 8
  store i64* %2, i64** %10, align 8
  store i64 %3, i64* %11, align 8
  store i8* %4, i8** %12, align 8
  store i64 %5, i64* %13, align 8
  %15 = load i8*, i8** %8, align 8
  %16 = bitcast i8* %15 to i32*
  store i32* %16, i32** %14, align 8
  %17 = load i64, i64* %11, align 8
  %18 = load i64, i64* %13, align 8
  %19 = icmp ult i64 %17, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %6
  %21 = load i32, i32* @ERR_LIB_PROV, align 4
  %22 = load i32, i32* @PROV_R_OUTPUT_BUFFER_TOO_SMALL, align 4
  %23 = call i32 @ERR_raise(i32 %21, i32 %22)
  store i32 -1, i32* %7, align 4
  br label %37

24:                                               ; preds = %6
  %25 = load i32*, i32** %14, align 8
  %26 = load i8*, i8** %9, align 8
  %27 = load i64*, i64** %10, align 8
  %28 = load i8*, i8** %12, align 8
  %29 = load i64, i64* %13, align 8
  %30 = call i64 @gcm_cipher_internal(i32* %25, i8* %26, i64* %27, i8* %28, i64 %29)
  %31 = icmp sle i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %24
  %33 = load i32, i32* @ERR_LIB_PROV, align 4
  %34 = load i32, i32* @PROV_R_CIPHER_OPERATION_FAILED, align 4
  %35 = call i32 @ERR_raise(i32 %33, i32 %34)
  store i32 -1, i32* %7, align 4
  br label %37

36:                                               ; preds = %24
  store i32 1, i32* %7, align 4
  br label %37

37:                                               ; preds = %36, %32, %20
  %38 = load i32, i32* %7, align 4
  ret i32 %38
}

declare dso_local i32 @ERR_raise(i32, i32) #1

declare dso_local i64 @gcm_cipher_internal(i32*, i8*, i64*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
