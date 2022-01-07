; ModuleID = '/home/carl/AnghaBench/mimikatz/mimikatz/modules/dpapi/packages/extr_kuhl_m_dpapi_powershell.c_kuhl_m_dpapi_powershell_try_SecureString.c'
source_filename = "/home/carl/AnghaBench/mimikatz/mimikatz/modules/dpapi/packages/extr_kuhl_m_dpapi_powershell.c_kuhl_m_dpapi_powershell_try_SecureString.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [3 x i32] [i32 83, i32 83, i32 0], align 4
@.str.1 = private unnamed_addr constant [20 x i32] [i32 62, i32 62, i32 32, i32 99, i32 108, i32 101, i32 97, i32 114, i32 116, i32 101, i32 120, i32 116, i32 58, i32 32, i32 37, i32 46, i32 42, i32 115, i32 10, i32 0], align 4
@.str.2 = private unnamed_addr constant [4 x i32] [i32 37, i32 115, i32 10, i32 0], align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kuhl_m_dpapi_powershell_try_SecureString(i32* %0, i32 %1, i32** %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32** %2, i32*** %6, align 8
  %13 = load i32, i32* @FALSE, align 4
  store i32 %13, i32* %7, align 4
  %14 = load i32*, i32** %4, align 8
  %15 = call i64 @IXMLDOMNode_get_nodeName(i32* %14, i32* %8)
  %16 = load i64, i64* @S_OK, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %66

18:                                               ; preds = %3
  %19 = load i32, i32* %8, align 4
  %20 = call i32 @_wcsicmp(i32 %19, i8* bitcast ([3 x i32]* @.str to i8*))
  %21 = icmp ne i32 %20, 0
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %8, align 4
  %25 = call i32 @SysFreeString(i32 %24)
  %26 = load i32*, i32** %4, align 8
  %27 = call i64 @IXMLDOMNode_get_text(i32* %26, i32* %8)
  %28 = load i64, i64* @S_OK, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %65

30:                                               ; preds = %18
  %31 = load i32, i32* %7, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %59

33:                                               ; preds = %30
  %34 = load i32, i32* %8, align 4
  %35 = call i64 @kull_m_string_stringToHexBuffer(i32 %34, i32* %9, i32* %11)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %58

37:                                               ; preds = %33
  %38 = load i32, i32* %9, align 4
  %39 = call i32 @kull_m_dpapi_blob_quick_descr(i32 0, i32 %38)
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* %11, align 4
  %42 = load i32, i32* %5, align 4
  %43 = load i32**, i32*** %6, align 8
  %44 = call i64 @kuhl_m_dpapi_unprotect_raw_or_blob(i32 %40, i32 %41, i32* null, i32 %42, i32** %43, i32* null, i32 0, i32* %10, i32* %12, i32* null)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %55

46:                                               ; preds = %37
  %47 = load i32, i32* %12, align 4
  %48 = sext i32 %47 to i64
  %49 = udiv i64 %48, 4
  %50 = trunc i64 %49 to i32
  %51 = load i32, i32* %10, align 4
  %52 = call i32 (i8*, i32, ...) @kprintf(i8* bitcast ([20 x i32]* @.str.1 to i8*), i32 %50, i32 %51)
  %53 = load i32, i32* %10, align 4
  %54 = call i32 @LocalFree(i32 %53)
  br label %55

55:                                               ; preds = %46, %37
  %56 = load i32, i32* %9, align 4
  %57 = call i32 @LocalFree(i32 %56)
  br label %58

58:                                               ; preds = %55, %33
  br label %62

59:                                               ; preds = %30
  %60 = load i32, i32* %8, align 4
  %61 = call i32 (i8*, i32, ...) @kprintf(i8* bitcast ([4 x i32]* @.str.2 to i8*), i32 %60)
  br label %62

62:                                               ; preds = %59, %58
  %63 = load i32, i32* %8, align 4
  %64 = call i32 @SysFreeString(i32 %63)
  br label %65

65:                                               ; preds = %62, %18
  br label %66

66:                                               ; preds = %65, %3
  ret void
}

declare dso_local i64 @IXMLDOMNode_get_nodeName(i32*, i32*) #1

declare dso_local i32 @_wcsicmp(i32, i8*) #1

declare dso_local i32 @SysFreeString(i32) #1

declare dso_local i64 @IXMLDOMNode_get_text(i32*, i32*) #1

declare dso_local i64 @kull_m_string_stringToHexBuffer(i32, i32*, i32*) #1

declare dso_local i32 @kull_m_dpapi_blob_quick_descr(i32, i32) #1

declare dso_local i64 @kuhl_m_dpapi_unprotect_raw_or_blob(i32, i32, i32*, i32, i32**, i32*, i32, i32*, i32*, i32*) #1

declare dso_local i32 @kprintf(i8*, i32, ...) #1

declare dso_local i32 @LocalFree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
