; ModuleID = '/home/carl/AnghaBench/mimikatz/mimikatz/modules/dpapi/packages/extr_kuhl_m_dpapi_powershell.c_kuhl_m_dpapi_powershell.c'
source_filename = "/home/carl/AnghaBench/mimikatz/mimikatz/modules/dpapi/packages/extr_kuhl_m_dpapi_powershell.c_kuhl_m_dpapi_powershell.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i32] [i32 105, i32 110, i32 0], align 4
@.str.1 = private unnamed_addr constant [11 x i32] [i32 47, i32 47, i32 79, i32 98, i32 106, i32 115, i32 47, i32 79, i32 98, i32 106, i32 0], align 4
@S_OK = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [42 x i32] [i32 83, i32 121, i32 115, i32 116, i32 101, i32 109, i32 46, i32 77, i32 97, i32 110, i32 97, i32 103, i32 101, i32 109, i32 101, i32 110, i32 116, i32 46, i32 65, i32 117, i32 116, i32 111, i32 109, i32 97, i32 116, i32 105, i32 111, i32 110, i32 46, i32 80, i32 83, i32 67, i32 114, i32 101, i32 100, i32 101, i32 110, i32 116, i32 105, i32 97, i32 108, i32 0], align 4
@.str.3 = private unnamed_addr constant [29 x i32] [i32 83, i32 121, i32 115, i32 116, i32 101, i32 109, i32 46, i32 83, i32 101, i32 99, i32 117, i32 114, i32 105, i32 116, i32 121, i32 46, i32 83, i32 101, i32 99, i32 117, i32 114, i32 101, i32 83, i32 116, i32 114, i32 105, i32 110, i32 103, i32 0], align 4
@.str.4 = private unnamed_addr constant [52 x i32] [i32 88, i32 77, i32 76, i32 32, i32 100, i32 111, i32 101, i32 115, i32 110, i32 39, i32 116, i32 32, i32 115, i32 101, i32 101, i32 109, i32 32, i32 116, i32 111, i32 32, i32 98, i32 101, i32 32, i32 97, i32 32, i32 80, i32 83, i32 67, i32 114, i32 101, i32 100, i32 101, i32 110, i32 116, i32 105, i32 97, i32 108, i32 47, i32 83, i32 101, i32 99, i32 117, i32 114, i32 101, i32 83, i32 116, i32 114, i32 105, i32 110, i32 103, i32 10, i32 0], align 4
@.str.5 = private unnamed_addr constant [10 x i32] [i32 47, i32 47, i32 79, i32 98, i32 106, i32 115, i32 47, i32 83, i32 83, i32 0], align 4
@.str.6 = private unnamed_addr constant [39 x i32] [i32 88, i32 77, i32 76, i32 32, i32 100, i32 111, i32 101, i32 115, i32 110, i32 39, i32 116, i32 32, i32 115, i32 101, i32 101, i32 109, i32 32, i32 116, i32 111, i32 32, i32 98, i32 101, i32 32, i32 97, i32 32, i32 83, i32 101, i32 99, i32 117, i32 114, i32 101, i32 83, i32 116, i32 114, i32 105, i32 110, i32 103, i32 10, i32 0], align 4
@.str.7 = private unnamed_addr constant [29 x i32] [i32 77, i32 105, i32 115, i32 115, i32 105, i32 110, i32 103, i32 32, i32 47, i32 105, i32 110, i32 58, i32 99, i32 114, i32 101, i32 100, i32 101, i32 110, i32 116, i32 105, i32 97, i32 108, i32 115, i32 46, i32 120, i32 109, i32 108, i32 10, i32 0], align 4
@STATUS_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kuhl_m_dpapi_powershell(i32 %0, i32** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  store i32 %0, i32* %3, align 4
  store i32** %1, i32*** %4, align 8
  %8 = load i32, i32* %3, align 4
  %9 = load i32**, i32*** %4, align 8
  %10 = call i64 @kull_m_string_args_byName(i32 %8, i32** %9, i8* bitcast ([3 x i32]* @.str to i8*), i32* %5, i32* null)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %65

12:                                               ; preds = %2
  %13 = call i32* (...) @kull_m_xml_CreateAndInitDOM()
  store i32* %13, i32** %6, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %15, label %64

15:                                               ; preds = %12
  %16 = load i32*, i32** %6, align 8
  %17 = load i32, i32* %5, align 4
  %18 = call i64 @kull_m_xml_LoadXMLFile(i32* %16, i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %61

20:                                               ; preds = %15
  %21 = load i32*, i32** %6, align 8
  %22 = call i64 @IXMLDOMDocument_selectSingleNode(i32* %21, i32 ptrtoint ([11 x i32]* @.str.1 to i32), i32** %7)
  %23 = load i64, i64* @S_OK, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %44

25:                                               ; preds = %20
  %26 = load i32*, i32** %7, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %28, label %44

28:                                               ; preds = %25
  %29 = load i32*, i32** %7, align 8
  %30 = call i64 @kuhl_m_dpapi_powershell_check_against_one_type(i32* %29, i8* bitcast ([42 x i32]* @.str.2 to i8*))
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %28
  %33 = load i32*, i32** %7, align 8
  %34 = call i64 @kuhl_m_dpapi_powershell_check_against_one_type(i32* %33, i8* bitcast ([29 x i32]* @.str.3 to i8*))
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %32, %28
  %37 = load i32*, i32** %7, align 8
  %38 = load i32, i32* %3, align 4
  %39 = load i32**, i32*** %4, align 8
  %40 = call i32 @kuhl_m_dpapi_powershell_credential(i32* %37, i32 %38, i32** %39)
  br label %43

41:                                               ; preds = %32
  %42 = call i32 @PRINT_ERROR(i8* bitcast ([52 x i32]* @.str.4 to i8*))
  br label %43

43:                                               ; preds = %41, %36
  br label %60

44:                                               ; preds = %25, %20
  %45 = load i32*, i32** %6, align 8
  %46 = call i64 @IXMLDOMDocument_selectSingleNode(i32* %45, i32 ptrtoint ([10 x i32]* @.str.5 to i32), i32** %7)
  %47 = load i64, i64* @S_OK, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %57

49:                                               ; preds = %44
  %50 = load i32*, i32** %7, align 8
  %51 = icmp ne i32* %50, null
  br i1 %51, label %52, label %57

52:                                               ; preds = %49
  %53 = load i32*, i32** %7, align 8
  %54 = load i32, i32* %3, align 4
  %55 = load i32**, i32*** %4, align 8
  %56 = call i32 @kuhl_m_dpapi_powershell_try_SecureString(i32* %53, i32 %54, i32** %55)
  br label %59

57:                                               ; preds = %49, %44
  %58 = call i32 @PRINT_ERROR(i8* bitcast ([39 x i32]* @.str.6 to i8*))
  br label %59

59:                                               ; preds = %57, %52
  br label %60

60:                                               ; preds = %59, %43
  br label %61

61:                                               ; preds = %60, %15
  %62 = load i32*, i32** %6, align 8
  %63 = call i32 @kull_m_xml_ReleaseDom(i32* %62)
  br label %64

64:                                               ; preds = %61, %12
  br label %67

65:                                               ; preds = %2
  %66 = call i32 @PRINT_ERROR(i8* bitcast ([29 x i32]* @.str.7 to i8*))
  br label %67

67:                                               ; preds = %65, %64
  %68 = load i32, i32* @STATUS_SUCCESS, align 4
  ret i32 %68
}

declare dso_local i64 @kull_m_string_args_byName(i32, i32**, i8*, i32*, i32*) #1

declare dso_local i32* @kull_m_xml_CreateAndInitDOM(...) #1

declare dso_local i64 @kull_m_xml_LoadXMLFile(i32*, i32) #1

declare dso_local i64 @IXMLDOMDocument_selectSingleNode(i32*, i32, i32**) #1

declare dso_local i64 @kuhl_m_dpapi_powershell_check_against_one_type(i32*, i8*) #1

declare dso_local i32 @kuhl_m_dpapi_powershell_credential(i32*, i32, i32**) #1

declare dso_local i32 @PRINT_ERROR(i8*) #1

declare dso_local i32 @kuhl_m_dpapi_powershell_try_SecureString(i32*, i32, i32**) #1

declare dso_local i32 @kull_m_xml_ReleaseDom(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
