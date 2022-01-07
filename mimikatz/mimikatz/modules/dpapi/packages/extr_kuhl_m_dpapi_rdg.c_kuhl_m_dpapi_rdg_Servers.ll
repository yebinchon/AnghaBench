; ModuleID = '/home/carl/AnghaBench/mimikatz/mimikatz/modules/dpapi/packages/extr_kuhl_m_dpapi_rdg.c_kuhl_m_dpapi_rdg_Servers.c'
source_filename = "/home/carl/AnghaBench/mimikatz/mimikatz/modules/dpapi/packages/extr_kuhl_m_dpapi_rdg.c_kuhl_m_dpapi_rdg_Servers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i32] [i32 115, i32 101, i32 114, i32 118, i32 101, i32 114, i32 0], align 4
@S_OK = common dso_local global i64 0, align 8
@NODE_ELEMENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i32] [i32 112, i32 114, i32 111, i32 112, i32 101, i32 114, i32 116, i32 105, i32 101, i32 115, i32 0], align 4
@.str.2 = private unnamed_addr constant [5 x i32] [i32 110, i32 97, i32 109, i32 101, i32 0], align 4
@.str.3 = private unnamed_addr constant [9 x i32] [i32 37, i32 42, i32 115, i32 124, i32 32, i32 37, i32 115, i32 10, i32 0], align 4
@.str.4 = private unnamed_addr constant [1 x i32] zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kuhl_m_dpapi_rdg_Servers(i32 %0, i32* %1, i32 %2, i32** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32*, align 8
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32** %3, i32*** %8, align 8
  %16 = load i32*, i32** %6, align 8
  %17 = call i64 @IXMLDOMNode_selectNodes(i32* %16, i8* bitcast ([7 x i32]* @.str to i8*), i32** %9)
  %18 = load i64, i64* @S_OK, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %87

20:                                               ; preds = %4
  %21 = load i32*, i32** %9, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %23, label %87

23:                                               ; preds = %20
  %24 = load i32*, i32** %9, align 8
  %25 = call i64 @IXMLDOMNodeList_get_length(i32* %24, i64* %13)
  %26 = load i64, i64* @S_OK, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %86

28:                                               ; preds = %23
  store i64 0, i64* %14, align 8
  br label %29

29:                                               ; preds = %82, %28
  %30 = load i64, i64* %14, align 8
  %31 = load i64, i64* %13, align 8
  %32 = icmp slt i64 %30, %31
  br i1 %32, label %33, label %85

33:                                               ; preds = %29
  %34 = load i32*, i32** %9, align 8
  %35 = load i64, i64* %14, align 8
  %36 = call i64 @IXMLDOMNodeList_get_item(i32* %34, i64 %35, i32** %10)
  %37 = load i64, i64* @S_OK, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %81

39:                                               ; preds = %33
  %40 = load i32*, i32** %10, align 8
  %41 = icmp ne i32* %40, null
  br i1 %41, label %42, label %81

42:                                               ; preds = %39
  %43 = load i32*, i32** %10, align 8
  %44 = call i64 @IXMLDOMNode_get_nodeType(i32* %43, i32* %12)
  %45 = load i64, i64* @S_OK, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %78

47:                                               ; preds = %42
  %48 = load i32, i32* %12, align 4
  %49 = load i32, i32* @NODE_ELEMENT, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %78

51:                                               ; preds = %47
  %52 = load i32*, i32** %10, align 8
  %53 = call i64 @IXMLDOMNode_selectSingleNode(i32* %52, i8* bitcast ([11 x i32]* @.str.1 to i8*), i32** %11)
  %54 = load i64, i64* @S_OK, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %71

56:                                               ; preds = %51
  %57 = load i32*, i32** %11, align 8
  %58 = icmp ne i32* %57, null
  br i1 %58, label %59, label %71

59:                                               ; preds = %56
  %60 = load i32*, i32** %11, align 8
  %61 = call i32* @kull_m_xml_getTextValue(i32* %60, i8* bitcast ([5 x i32]* @.str.2 to i8*))
  store i32* %61, i32** %15, align 8
  %62 = icmp ne i32* %61, null
  br i1 %62, label %63, label %70

63:                                               ; preds = %59
  %64 = load i32, i32* %5, align 4
  %65 = shl i32 %64, 1
  %66 = load i32*, i32** %15, align 8
  %67 = call i32 @kprintf(i8* bitcast ([9 x i32]* @.str.3 to i8*), i32 %65, i8* bitcast ([1 x i32]* @.str.4 to i8*), i32* %66)
  %68 = load i32*, i32** %15, align 8
  %69 = call i32 @LocalFree(i32* %68)
  br label %70

70:                                               ; preds = %63, %59
  br label %71

71:                                               ; preds = %70, %56, %51
  %72 = load i32, i32* %5, align 4
  %73 = add nsw i32 %72, 1
  %74 = load i32*, i32** %10, align 8
  %75 = load i32, i32* %7, align 4
  %76 = load i32**, i32*** %8, align 8
  %77 = call i32 @kuhl_m_dpapi_rdg_LogonCredentials(i32 %73, i32* %74, i32 %75, i32** %76)
  br label %78

78:                                               ; preds = %71, %47, %42
  %79 = load i32*, i32** %10, align 8
  %80 = call i32 @IXMLDOMNode_Release(i32* %79)
  br label %81

81:                                               ; preds = %78, %39, %33
  br label %82

82:                                               ; preds = %81
  %83 = load i64, i64* %14, align 8
  %84 = add nsw i64 %83, 1
  store i64 %84, i64* %14, align 8
  br label %29

85:                                               ; preds = %29
  br label %86

86:                                               ; preds = %85, %23
  br label %87

87:                                               ; preds = %86, %20, %4
  ret void
}

declare dso_local i64 @IXMLDOMNode_selectNodes(i32*, i8*, i32**) #1

declare dso_local i64 @IXMLDOMNodeList_get_length(i32*, i64*) #1

declare dso_local i64 @IXMLDOMNodeList_get_item(i32*, i64, i32**) #1

declare dso_local i64 @IXMLDOMNode_get_nodeType(i32*, i32*) #1

declare dso_local i64 @IXMLDOMNode_selectSingleNode(i32*, i8*, i32**) #1

declare dso_local i32* @kull_m_xml_getTextValue(i32*, i8*) #1

declare dso_local i32 @kprintf(i8*, i32, i8*, i32*) #1

declare dso_local i32 @LocalFree(i32*) #1

declare dso_local i32 @kuhl_m_dpapi_rdg_LogonCredentials(i32, i32*, i32, i32**) #1

declare dso_local i32 @IXMLDOMNode_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
