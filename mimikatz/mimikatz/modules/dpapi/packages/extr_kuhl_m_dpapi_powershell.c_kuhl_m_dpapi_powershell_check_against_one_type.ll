; ModuleID = '/home/carl/AnghaBench/mimikatz/mimikatz/modules/dpapi/packages/extr_kuhl_m_dpapi_powershell.c_kuhl_m_dpapi_powershell_check_against_one_type.c'
source_filename = "/home/carl/AnghaBench/mimikatz/mimikatz/modules/dpapi/packages/extr_kuhl_m_dpapi_powershell.c_kuhl_m_dpapi_powershell_check_against_one_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i32] [i32 84, i32 78, i32 0], align 4
@S_OK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [2 x i32] [i32 84, i32 0], align 4
@NODE_ELEMENT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i32] [i32 78, i32 111, i32 32, i32 116, i32 121, i32 112, i32 101, i32 115, i32 10, i32 0], align 4
@.str.3 = private unnamed_addr constant [7 x i32] [i32 78, i32 111, i32 32, i32 84, i32 78, i32 10, i32 0], align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kuhl_m_dpapi_powershell_check_against_one_type(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %13 = load i32, i32* @FALSE, align 4
  store i32 %13, i32* %5, align 4
  %14 = load i32*, i32** %3, align 8
  %15 = call i64 @IXMLDOMDocument_selectSingleNode(i32* %14, i32 ptrtoint ([3 x i32]* @.str to i32), i32** %6)
  %16 = load i64, i64* @S_OK, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %90

18:                                               ; preds = %2
  %19 = load i32*, i32** %6, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %90

21:                                               ; preds = %18
  %22 = load i32*, i32** %6, align 8
  %23 = call i64 @IXMLDOMNode_selectNodes(i32* %22, i8* bitcast ([2 x i32]* @.str.1 to i8*), i32** %8)
  %24 = load i64, i64* @S_OK, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %87

26:                                               ; preds = %21
  %27 = load i32*, i32** %8, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %29, label %87

29:                                               ; preds = %26
  %30 = load i32*, i32** %8, align 8
  %31 = call i64 @IXMLDOMNodeList_get_length(i32* %30, i64* %10)
  %32 = load i64, i64* @S_OK, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %86

34:                                               ; preds = %29
  store i64 0, i64* %11, align 8
  br label %35

35:                                               ; preds = %82, %34
  %36 = load i64, i64* %11, align 8
  %37 = load i64, i64* %10, align 8
  %38 = icmp slt i64 %36, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %35
  %40 = load i32, i32* %5, align 4
  %41 = icmp ne i32 %40, 0
  %42 = xor i1 %41, true
  br label %43

43:                                               ; preds = %39, %35
  %44 = phi i1 [ false, %35 ], [ %42, %39 ]
  br i1 %44, label %45, label %85

45:                                               ; preds = %43
  %46 = load i32*, i32** %8, align 8
  %47 = load i64, i64* %11, align 8
  %48 = call i64 @IXMLDOMNodeList_get_item(i32* %46, i64 %47, i32** %7)
  %49 = load i64, i64* @S_OK, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %81

51:                                               ; preds = %45
  %52 = load i32*, i32** %7, align 8
  %53 = icmp ne i32* %52, null
  br i1 %53, label %54, label %81

54:                                               ; preds = %51
  %55 = load i32*, i32** %7, align 8
  %56 = call i64 @IXMLDOMNode_get_nodeType(i32* %55, i32* %9)
  %57 = load i64, i64* @S_OK, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %78

59:                                               ; preds = %54
  %60 = load i32, i32* %9, align 4
  %61 = load i32, i32* @NODE_ELEMENT, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %63, label %78

63:                                               ; preds = %59
  %64 = load i32*, i32** %7, align 8
  %65 = call i64 @IXMLDOMNode_get_text(i32* %64, i32* %12)
  %66 = load i64, i64* @S_OK, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %77

68:                                               ; preds = %63
  %69 = load i32, i32* %12, align 4
  %70 = load i32, i32* %4, align 4
  %71 = call i32 @_wcsicmp(i32 %69, i32 %70)
  %72 = icmp ne i32 %71, 0
  %73 = xor i1 %72, true
  %74 = zext i1 %73 to i32
  store i32 %74, i32* %5, align 4
  %75 = load i32, i32* %12, align 4
  %76 = call i32 @SysFreeString(i32 %75)
  br label %77

77:                                               ; preds = %68, %63
  br label %78

78:                                               ; preds = %77, %59, %54
  %79 = load i32*, i32** %7, align 8
  %80 = call i32 @IXMLDOMNode_Release(i32* %79)
  br label %81

81:                                               ; preds = %78, %51, %45
  br label %82

82:                                               ; preds = %81
  %83 = load i64, i64* %11, align 8
  %84 = add nsw i64 %83, 1
  store i64 %84, i64* %11, align 8
  br label %35

85:                                               ; preds = %43
  br label %86

86:                                               ; preds = %85, %29
  br label %89

87:                                               ; preds = %26, %21
  %88 = call i32 @PRINT_ERROR(i8* bitcast ([10 x i32]* @.str.2 to i8*))
  br label %89

89:                                               ; preds = %87, %86
  br label %92

90:                                               ; preds = %18, %2
  %91 = call i32 @PRINT_ERROR(i8* bitcast ([7 x i32]* @.str.3 to i8*))
  br label %92

92:                                               ; preds = %90, %89
  %93 = load i32, i32* %5, align 4
  ret i32 %93
}

declare dso_local i64 @IXMLDOMDocument_selectSingleNode(i32*, i32, i32**) #1

declare dso_local i64 @IXMLDOMNode_selectNodes(i32*, i8*, i32**) #1

declare dso_local i64 @IXMLDOMNodeList_get_length(i32*, i64*) #1

declare dso_local i64 @IXMLDOMNodeList_get_item(i32*, i64, i32**) #1

declare dso_local i64 @IXMLDOMNode_get_nodeType(i32*, i32*) #1

declare dso_local i64 @IXMLDOMNode_get_text(i32*, i32*) #1

declare dso_local i32 @_wcsicmp(i32, i32) #1

declare dso_local i32 @SysFreeString(i32) #1

declare dso_local i32 @IXMLDOMNode_Release(i32*) #1

declare dso_local i32 @PRINT_ERROR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
