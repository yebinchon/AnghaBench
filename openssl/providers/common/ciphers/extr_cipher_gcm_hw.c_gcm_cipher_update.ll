; ModuleID = '/home/carl/AnghaBench/openssl/providers/common/ciphers/extr_cipher_gcm_hw.c_gcm_cipher_update.c'
source_filename = "/home/carl/AnghaBench/openssl/providers/common/ciphers/extr_cipher_gcm_hw.c_gcm_cipher_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_15__, i32*, i64 }
%struct.TYPE_15__ = type { i32, %struct.TYPE_13__, %struct.TYPE_12__, %struct.TYPE_11__, i32 }
%struct.TYPE_13__ = type { i64* }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gcm_cipher_update(%struct.TYPE_14__* %0, i8* %1, i64 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i8* %3, i8** %9, align 8
  %10 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %11 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %10, i32 0, i32 2
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %43

14:                                               ; preds = %4
  %15 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %15, i32 0, i32 1
  %17 = load i32*, i32** %16, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %32

19:                                               ; preds = %14
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %20, i32 0, i32 0
  %22 = load i8*, i8** %7, align 8
  %23 = load i8*, i8** %9, align 8
  %24 = load i64, i64* %8, align 8
  %25 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = call i64 @CRYPTO_gcm128_encrypt_ctr32(%struct.TYPE_15__* %21, i8* %22, i8* %23, i64 %24, i32* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %19
  store i32 0, i32* %5, align 4
  br label %73

31:                                               ; preds = %19
  br label %42

32:                                               ; preds = %14
  %33 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %33, i32 0, i32 0
  %35 = load i8*, i8** %7, align 8
  %36 = load i8*, i8** %9, align 8
  %37 = load i64, i64* %8, align 8
  %38 = call i64 @CRYPTO_gcm128_encrypt(%struct.TYPE_15__* %34, i8* %35, i8* %36, i64 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %32
  store i32 0, i32* %5, align 4
  br label %73

41:                                               ; preds = %32
  br label %42

42:                                               ; preds = %41, %31
  br label %72

43:                                               ; preds = %4
  %44 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %44, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  %47 = icmp ne i32* %46, null
  br i1 %47, label %48, label %61

48:                                               ; preds = %43
  %49 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %49, i32 0, i32 0
  %51 = load i8*, i8** %7, align 8
  %52 = load i8*, i8** %9, align 8
  %53 = load i64, i64* %8, align 8
  %54 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %54, i32 0, i32 1
  %56 = load i32*, i32** %55, align 8
  %57 = call i64 @CRYPTO_gcm128_decrypt_ctr32(%struct.TYPE_15__* %50, i8* %51, i8* %52, i64 %53, i32* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %48
  store i32 0, i32* %5, align 4
  br label %73

60:                                               ; preds = %48
  br label %71

61:                                               ; preds = %43
  %62 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %62, i32 0, i32 0
  %64 = load i8*, i8** %7, align 8
  %65 = load i8*, i8** %9, align 8
  %66 = load i64, i64* %8, align 8
  %67 = call i64 @CRYPTO_gcm128_decrypt(%struct.TYPE_15__* %63, i8* %64, i8* %65, i64 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %61
  store i32 0, i32* %5, align 4
  br label %73

70:                                               ; preds = %61
  br label %71

71:                                               ; preds = %70, %60
  br label %72

72:                                               ; preds = %71, %42
  store i32 1, i32* %5, align 4
  br label %73

73:                                               ; preds = %72, %69, %59, %40, %30
  %74 = load i32, i32* %5, align 4
  ret i32 %74
}

declare dso_local i64 @CRYPTO_gcm128_encrypt_ctr32(%struct.TYPE_15__*, i8*, i8*, i64, i32*) #1

declare dso_local i64 @CRYPTO_gcm128_encrypt(%struct.TYPE_15__*, i8*, i8*, i64) #1

declare dso_local i64 @CRYPTO_gcm128_decrypt_ctr32(%struct.TYPE_15__*, i8*, i8*, i64, i32*) #1

declare dso_local i64 @CRYPTO_gcm128_decrypt(%struct.TYPE_15__*, i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
