; ModuleID = '/home/carl/AnghaBench/mimikatz/mimikatz/modules/dpapi/extr_kuhl_m_dpapi.c_kuhl_m_dpapi_display_MasterkeyInfosAndFree.c'
source_filename = "/home/carl/AnghaBench/mimikatz/mimikatz/modules/dpapi/extr_kuhl_m_dpapi.c_kuhl_m_dpapi_display_MasterkeyInfosAndFree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SHA_DIGEST_LENGTH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i32] [i32 32, i32 32, i32 107, i32 101, i32 121, i32 32, i32 58, i32 32, i32 0], align 4
@.str.1 = private unnamed_addr constant [2 x i32] [i32 10, i32 0], align 4
@CALG_SHA1 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i32] [i32 32, i32 32, i32 115, i32 104, i32 97, i32 49, i32 58, i32 32, i32 0], align 4
@.str.3 = private unnamed_addr constant [9 x i32] [i32 32, i32 32, i32 115, i32 105, i32 100, i32 32, i32 58, i32 32, i32 0], align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kuhl_m_dpapi_display_MasterkeyInfosAndFree(i64 %0, i32* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  store i64 %0, i64* %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %11 = load i32, i32* @SHA_DIGEST_LENGTH, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %9, align 8
  %14 = alloca i32, i64 %12, align 16
  store i64 %12, i64* %10, align 8
  %15 = call i32 @kprintf(i8* bitcast ([9 x i32]* @.str to i8*))
  %16 = load i32*, i32** %6, align 8
  %17 = load i32, i32* %7, align 4
  %18 = call i32 @kull_m_string_wprintf_hex(i32* %16, i32 %17, i32 0)
  %19 = call i32 @kprintf(i8* bitcast ([2 x i32]* @.str.1 to i8*))
  %20 = load i32, i32* @CALG_SHA1, align 4
  %21 = load i32*, i32** %6, align 8
  %22 = load i32, i32* %7, align 4
  %23 = mul nuw i64 4, %12
  %24 = trunc i64 %23 to i32
  %25 = call i64 @kull_m_crypto_hash(i32 %20, i32* %21, i32 %22, i32* %14, i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %41

27:                                               ; preds = %4
  %28 = call i32 @kprintf(i8* bitcast ([9 x i32]* @.str.2 to i8*))
  %29 = mul nuw i64 4, %12
  %30 = trunc i64 %29 to i32
  %31 = call i32 @kull_m_string_wprintf_hex(i32* %14, i32 %30, i32 0)
  %32 = call i32 @kprintf(i8* bitcast ([2 x i32]* @.str.1 to i8*))
  %33 = load i64, i64* %5, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %27
  %36 = load i64, i64* %5, align 8
  %37 = mul nuw i64 4, %12
  %38 = trunc i64 %37 to i32
  %39 = call i32 @kuhl_m_dpapi_oe_masterkey_add(i64 %36, i32* %14, i32 %38)
  br label %40

40:                                               ; preds = %35, %27
  br label %41

41:                                               ; preds = %40, %4
  %42 = load i32*, i32** %6, align 8
  %43 = call i32 @LocalFree(i32* %42)
  %44 = load i32*, i32** %8, align 8
  %45 = icmp ne i32* %44, null
  br i1 %45, label %46, label %53

46:                                               ; preds = %41
  %47 = call i32 @kprintf(i8* bitcast ([9 x i32]* @.str.3 to i8*))
  %48 = load i32*, i32** %8, align 8
  %49 = call i32 @kull_m_string_displaySID(i32* %48)
  %50 = call i32 @kprintf(i8* bitcast ([2 x i32]* @.str.1 to i8*))
  %51 = load i32*, i32** %8, align 8
  %52 = call i32 @LocalFree(i32* %51)
  br label %53

53:                                               ; preds = %46, %41
  %54 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %54)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @kprintf(i8*) #2

declare dso_local i32 @kull_m_string_wprintf_hex(i32*, i32, i32) #2

declare dso_local i64 @kull_m_crypto_hash(i32, i32*, i32, i32*, i32) #2

declare dso_local i32 @kuhl_m_dpapi_oe_masterkey_add(i64, i32*, i32) #2

declare dso_local i32 @LocalFree(i32*) #2

declare dso_local i32 @kull_m_string_displaySID(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
