; ModuleID = '/home/carl/AnghaBench/mimikatz/mimikatz/modules/dpapi/packages/extr_kuhl_m_dpapi_powershell.c_kuhl_m_dpapi_powershell_credential.c'
source_filename = "/home/carl/AnghaBench/mimikatz/mimikatz/modules/dpapi/packages/extr_kuhl_m_dpapi_powershell.c_kuhl_m_dpapi_powershell_credential.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i32] [i32 80, i32 114, i32 111, i32 112, i32 115, i32 0], align 4
@S_OK = common dso_local global i64 0, align 8
@NODE_ELEMENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i32] [i32 78, i32 0], align 4
@.str.2 = private unnamed_addr constant [5 x i32] [i32 37, i32 115, i32 58, i32 32, i32 0], align 4
@.str.3 = private unnamed_addr constant [9 x i32] [i32 78, i32 111, i32 32, i32 78, i32 65, i32 77, i32 69, i32 10, i32 0], align 4
@.str.4 = private unnamed_addr constant [13 x i32] [i32 78, i32 111, i32 116, i32 32, i32 69, i32 76, i32 69, i32 77, i32 69, i32 78, i32 84, i32 10, i32 0], align 4
@.str.5 = private unnamed_addr constant [10 x i32] [i32 78, i32 111, i32 32, i32 80, i32 114, i32 111, i32 112, i32 115, i32 10, i32 0], align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kuhl_m_dpapi_powershell_credential(i32* %0, i32 %1, i32** %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32** %2, i32*** %6, align 8
  %14 = load i32*, i32** %4, align 8
  %15 = call i64 @IXMLDOMDocument_selectSingleNode(i32* %14, i32 ptrtoint ([6 x i32]* @.str to i32), i32** %7)
  %16 = load i64, i64* @S_OK, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %84

18:                                               ; preds = %3
  %19 = load i32*, i32** %7, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %84

21:                                               ; preds = %18
  %22 = load i32*, i32** %7, align 8
  %23 = call i64 @IXMLDOMNode_get_childNodes(i32* %22, i32** %9)
  %24 = load i64, i64* @S_OK, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %83

26:                                               ; preds = %21
  %27 = load i32*, i32** %9, align 8
  %28 = call i64 @IXMLDOMNodeList_get_length(i32* %27, i64* %10)
  %29 = load i64, i64* @S_OK, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %80

31:                                               ; preds = %26
  store i64 0, i64* %11, align 8
  br label %32

32:                                               ; preds = %76, %31
  %33 = load i64, i64* %11, align 8
  %34 = load i64, i64* %10, align 8
  %35 = icmp slt i64 %33, %34
  br i1 %35, label %36, label %79

36:                                               ; preds = %32
  %37 = load i32*, i32** %9, align 8
  %38 = load i64, i64* %11, align 8
  %39 = call i64 @IXMLDOMNodeList_get_item(i32* %37, i64 %38, i32** %8)
  %40 = load i64, i64* @S_OK, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %75

42:                                               ; preds = %36
  %43 = load i32*, i32** %8, align 8
  %44 = icmp ne i32* %43, null
  br i1 %44, label %45, label %75

45:                                               ; preds = %42
  %46 = load i32*, i32** %8, align 8
  %47 = call i64 @IXMLDOMNode_get_nodeType(i32* %46, i32* %12)
  %48 = load i64, i64* @S_OK, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %70

50:                                               ; preds = %45
  %51 = load i32, i32* %12, align 4
  %52 = load i32, i32* @NODE_ELEMENT, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %70

54:                                               ; preds = %50
  %55 = load i32*, i32** %8, align 8
  %56 = call i32* @kull_m_xml_getAttribute(i32* %55, i8* bitcast ([2 x i32]* @.str.1 to i8*))
  store i32* %56, i32** %13, align 8
  %57 = icmp ne i32* %56, null
  br i1 %57, label %58, label %67

58:                                               ; preds = %54
  %59 = load i32*, i32** %13, align 8
  %60 = call i32 @kprintf(i8* bitcast ([5 x i32]* @.str.2 to i8*), i32* %59)
  %61 = load i32*, i32** %13, align 8
  %62 = call i32 @LocalFree(i32* %61)
  %63 = load i32*, i32** %8, align 8
  %64 = load i32, i32* %5, align 4
  %65 = load i32**, i32*** %6, align 8
  %66 = call i32 @kuhl_m_dpapi_powershell_try_SecureString(i32* %63, i32 %64, i32** %65)
  br label %69

67:                                               ; preds = %54
  %68 = call i32 @PRINT_ERROR(i8* bitcast ([9 x i32]* @.str.3 to i8*))
  br label %69

69:                                               ; preds = %67, %58
  br label %72

70:                                               ; preds = %50, %45
  %71 = call i32 @PRINT_ERROR(i8* bitcast ([13 x i32]* @.str.4 to i8*))
  br label %72

72:                                               ; preds = %70, %69
  %73 = load i32*, i32** %8, align 8
  %74 = call i32 @IXMLDOMNode_Release(i32* %73)
  br label %75

75:                                               ; preds = %72, %42, %36
  br label %76

76:                                               ; preds = %75
  %77 = load i64, i64* %11, align 8
  %78 = add nsw i64 %77, 1
  store i64 %78, i64* %11, align 8
  br label %32

79:                                               ; preds = %32
  br label %80

80:                                               ; preds = %79, %26
  %81 = load i32*, i32** %9, align 8
  %82 = call i32 @IXMLDOMNodeList_Release(i32* %81)
  br label %83

83:                                               ; preds = %80, %21
  br label %86

84:                                               ; preds = %18, %3
  %85 = call i32 @PRINT_ERROR(i8* bitcast ([10 x i32]* @.str.5 to i8*))
  br label %86

86:                                               ; preds = %84, %83
  ret void
}

declare dso_local i64 @IXMLDOMDocument_selectSingleNode(i32*, i32, i32**) #1

declare dso_local i64 @IXMLDOMNode_get_childNodes(i32*, i32**) #1

declare dso_local i64 @IXMLDOMNodeList_get_length(i32*, i64*) #1

declare dso_local i64 @IXMLDOMNodeList_get_item(i32*, i64, i32**) #1

declare dso_local i64 @IXMLDOMNode_get_nodeType(i32*, i32*) #1

declare dso_local i32* @kull_m_xml_getAttribute(i32*, i8*) #1

declare dso_local i32 @kprintf(i8*, i32*) #1

declare dso_local i32 @LocalFree(i32*) #1

declare dso_local i32 @kuhl_m_dpapi_powershell_try_SecureString(i32*, i32, i32**) #1

declare dso_local i32 @PRINT_ERROR(i8*) #1

declare dso_local i32 @IXMLDOMNode_Release(i32*) #1

declare dso_local i32 @IXMLDOMNodeList_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
