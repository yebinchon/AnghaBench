; ModuleID = '/home/carl/AnghaBench/openssl/providers/implementations/ciphers/extr_cipher_aes_xts.c_aes_xts_init.c'
source_filename = "/home/carl/AnghaBench/openssl/providers/implementations/ciphers/extr_cipher_aes_xts.c_aes_xts_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i64, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 (%struct.TYPE_6__*, i8*, i64)* }

@ERR_LIB_PROV = common dso_local global i32 0, align 4
@PROV_R_INVALID_KEY_LENGTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i64, i8*, i64, i32)* @aes_xts_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aes_xts_init(i8* %0, i8* %1, i64 %2, i8* %3, i64 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_7__*, align 8
  %15 = alloca %struct.TYPE_6__*, align 8
  store i8* %0, i8** %8, align 8
  store i8* %1, i8** %9, align 8
  store i64 %2, i64* %10, align 8
  store i8* %3, i8** %11, align 8
  store i64 %4, i64* %12, align 8
  store i32 %5, i32* %13, align 4
  %16 = load i8*, i8** %8, align 8
  %17 = bitcast i8* %16 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %17, %struct.TYPE_7__** %14, align 8
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  store %struct.TYPE_6__* %19, %struct.TYPE_6__** %15, align 8
  %20 = load i32, i32* %13, align 4
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 8
  %23 = load i8*, i8** %11, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %25, label %33

25:                                               ; preds = %6
  %26 = load i8*, i8** %8, align 8
  %27 = load i8*, i8** %11, align 8
  %28 = load i64, i64* %12, align 8
  %29 = call i32 @cipher_generic_initiv(i8* %26, i8* %27, i64 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %25
  store i32 0, i32* %7, align 4
  br label %65

32:                                               ; preds = %25
  br label %33

33:                                               ; preds = %32, %6
  %34 = load i8*, i8** %9, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %36, label %64

36:                                               ; preds = %33
  %37 = load i64, i64* %10, align 8
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %37, %40
  br i1 %41, label %42, label %46

42:                                               ; preds = %36
  %43 = load i32, i32* @ERR_LIB_PROV, align 4
  %44 = load i32, i32* @PROV_R_INVALID_KEY_LENGTH, align 4
  %45 = call i32 @ERR_raise(i32 %43, i32 %44)
  store i32 0, i32* %7, align 4
  br label %65

46:                                               ; preds = %36
  %47 = load i8*, i8** %9, align 8
  %48 = load i64, i64* %10, align 8
  %49 = udiv i64 %48, 2
  %50 = load i32, i32* %13, align 4
  %51 = call i32 @aes_xts_check_keys_differ(i8* %47, i64 %49, i32 %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %46
  store i32 0, i32* %7, align 4
  br label %65

54:                                               ; preds = %46
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 2
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = load i32 (%struct.TYPE_6__*, i8*, i64)*, i32 (%struct.TYPE_6__*, i8*, i64)** %58, align 8
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %61 = load i8*, i8** %9, align 8
  %62 = load i64, i64* %10, align 8
  %63 = call i32 %59(%struct.TYPE_6__* %60, i8* %61, i64 %62)
  store i32 %63, i32* %7, align 4
  br label %65

64:                                               ; preds = %33
  store i32 1, i32* %7, align 4
  br label %65

65:                                               ; preds = %64, %54, %53, %42, %31
  %66 = load i32, i32* %7, align 4
  ret i32 %66
}

declare dso_local i32 @cipher_generic_initiv(i8*, i8*, i64) #1

declare dso_local i32 @ERR_raise(i32, i32) #1

declare dso_local i32 @aes_xts_check_keys_differ(i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
