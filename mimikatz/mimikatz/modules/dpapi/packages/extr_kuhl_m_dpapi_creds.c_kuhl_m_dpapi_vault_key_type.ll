; ModuleID = '/home/carl/AnghaBench/mimikatz/mimikatz/modules/dpapi/packages/extr_kuhl_m_dpapi_creds.c_kuhl_m_dpapi_vault_key_type.c'
source_filename = "/home/carl/AnghaBench/mimikatz/mimikatz/modules/dpapi/packages/extr_kuhl_m_dpapi_creds.c_kuhl_m_dpapi_vault_key_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64, i64 }

@AES_128_KEY_SIZE = common dso_local global i32 0, align 4
@AES_256_KEY_SIZE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@CRYPT_MODE_CBC = common dso_local global i32 0, align 4
@CALG_AES_128 = common dso_local global i32 0, align 4
@CALG_AES_256 = common dso_local global i32 0, align 4
@KP_MODE = common dso_local global i32 0, align 4
@KP_IV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kuhl_m_dpapi_vault_key_type(%struct.TYPE_3__* %0, i32 %1, i32* %2, i32* %3, i32* %4, i32* %5) #0 {
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32* %5, i32** %12, align 8
  %18 = load i32, i32* @AES_128_KEY_SIZE, align 4
  %19 = zext i32 %18 to i64
  %20 = load i32, i32* @AES_256_KEY_SIZE, align 4
  %21 = zext i32 %20 to i64
  %22 = load i32, i32* @FALSE, align 4
  store i32 %22, i32* %13, align 4
  %23 = load i32, i32* @CRYPT_MODE_CBC, align 4
  store i32 %23, i32* %14, align 4
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %6
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp slt i32 %31, 100
  br label %33

33:                                               ; preds = %28, %6
  %34 = phi i1 [ false, %6 ], [ %32, %28 ]
  %35 = zext i1 %34 to i32
  %36 = load i32*, i32** %12, align 8
  store i32 %35, i32* %36, align 4
  %37 = load i32*, i32** %12, align 8
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %33
  %41 = load i32, i32* @CALG_AES_128, align 4
  store i32 %41, i32* %15, align 4
  %42 = load i32*, i32** %9, align 8
  store i32* %42, i32** %17, align 8
  %43 = load i32, i32* @AES_128_KEY_SIZE, align 4
  store i32 %43, i32* %16, align 4
  br label %48

44:                                               ; preds = %33
  %45 = load i32, i32* @CALG_AES_256, align 4
  store i32 %45, i32* %15, align 4
  %46 = load i32*, i32** %10, align 8
  store i32* %46, i32** %17, align 8
  %47 = load i32, i32* @AES_256_KEY_SIZE, align 4
  store i32 %47, i32* %16, align 4
  br label %48

48:                                               ; preds = %44, %40
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* %15, align 4
  %51 = load i32*, i32** %17, align 8
  %52 = load i32, i32* %16, align 4
  %53 = load i32*, i32** %11, align 8
  %54 = call i32 @kull_m_crypto_hkey(i32 %49, i32 %50, i32* %51, i32 %52, i32 0, i32* %53, i32* null)
  store i32 %54, i32* %13, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %80

56:                                               ; preds = %48
  %57 = load i32*, i32** %11, align 8
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @KP_MODE, align 4
  %60 = ptrtoint i32* %14 to i64
  %61 = call i32 @CryptSetKeyParam(i32 %58, i32 %59, i64 %60, i32 0)
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %79

66:                                               ; preds = %56
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %79

71:                                               ; preds = %66
  %72 = load i32*, i32** %11, align 8
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @KP_IV, align 4
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = call i32 @CryptSetKeyParam(i32 %73, i32 %74, i64 %77, i32 0)
  br label %79

79:                                               ; preds = %71, %66, %56
  br label %80

80:                                               ; preds = %79, %48
  %81 = load i32, i32* %13, align 4
  ret i32 %81
}

declare dso_local i32 @kull_m_crypto_hkey(i32, i32, i32*, i32, i32, i32*, i32*) #1

declare dso_local i32 @CryptSetKeyParam(i32, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
