; ModuleID = '/home/carl/AnghaBench/mimikatz/mimikatz/modules/dpapi/packages/extr_kuhl_m_dpapi_rdg.c_kuhl_m_dpapi_rdg_Groups.c'
source_filename = "/home/carl/AnghaBench/mimikatz/mimikatz/modules/dpapi/packages/extr_kuhl_m_dpapi_rdg.c_kuhl_m_dpapi_rdg_Groups.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i32] [i32 103, i32 114, i32 111, i32 117, i32 112, i32 0], align 4
@S_OK = common dso_local global i64 0, align 8
@NODE_ELEMENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i32] [i32 112, i32 114, i32 111, i32 112, i32 101, i32 114, i32 116, i32 105, i32 101, i32 115, i32 0], align 4
@.str.2 = private unnamed_addr constant [5 x i32] [i32 110, i32 97, i32 109, i32 101, i32 0], align 4
@.str.3 = private unnamed_addr constant [9 x i32] [i32 37, i32 42, i32 115, i32 60, i32 37, i32 115, i32 62, i32 10, i32 0], align 4
@.str.4 = private unnamed_addr constant [1 x i32] zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kuhl_m_dpapi_rdg_Groups(i32 %0, i32* %1, i32 %2, i32** %3) #0 {
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
  %16 = load i32, i32* %5, align 4
  %17 = load i32*, i32** %6, align 8
  %18 = load i32, i32* %7, align 4
  %19 = load i32**, i32*** %8, align 8
  %20 = call i32 @kuhl_m_dpapi_rdg_LogonCredentials(i32 %16, i32* %17, i32 %18, i32** %19)
  %21 = load i32, i32* %5, align 4
  %22 = load i32*, i32** %6, align 8
  %23 = load i32, i32* %7, align 4
  %24 = load i32**, i32*** %8, align 8
  %25 = call i32 @kuhl_m_dpapi_rdg_Servers(i32 %21, i32* %22, i32 %23, i32** %24)
  %26 = load i32*, i32** %6, align 8
  %27 = call i64 @IXMLDOMNode_selectNodes(i32* %26, i8* bitcast ([6 x i32]* @.str to i8*), i32** %9)
  %28 = load i64, i64* @S_OK, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %96

30:                                               ; preds = %4
  %31 = load i32*, i32** %9, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %33, label %96

33:                                               ; preds = %30
  %34 = load i32*, i32** %9, align 8
  %35 = call i64 @IXMLDOMNodeList_get_length(i32* %34, i64* %13)
  %36 = load i64, i64* @S_OK, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %95

38:                                               ; preds = %33
  store i64 0, i64* %14, align 8
  br label %39

39:                                               ; preds = %91, %38
  %40 = load i64, i64* %14, align 8
  %41 = load i64, i64* %13, align 8
  %42 = icmp slt i64 %40, %41
  br i1 %42, label %43, label %94

43:                                               ; preds = %39
  %44 = load i32*, i32** %9, align 8
  %45 = load i64, i64* %14, align 8
  %46 = call i64 @IXMLDOMNodeList_get_item(i32* %44, i64 %45, i32** %10)
  %47 = load i64, i64* @S_OK, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %90

49:                                               ; preds = %43
  %50 = load i32*, i32** %10, align 8
  %51 = icmp ne i32* %50, null
  br i1 %51, label %52, label %90

52:                                               ; preds = %49
  %53 = load i32*, i32** %10, align 8
  %54 = call i64 @IXMLDOMNode_get_nodeType(i32* %53, i32* %12)
  %55 = load i64, i64* @S_OK, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %87

57:                                               ; preds = %52
  %58 = load i32, i32* %12, align 4
  %59 = load i32, i32* @NODE_ELEMENT, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %87

61:                                               ; preds = %57
  %62 = load i32*, i32** %10, align 8
  %63 = call i64 @IXMLDOMNode_selectSingleNode(i32* %62, i8* bitcast ([11 x i32]* @.str.1 to i8*), i32** %11)
  %64 = load i64, i64* @S_OK, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %81

66:                                               ; preds = %61
  %67 = load i32*, i32** %11, align 8
  %68 = icmp ne i32* %67, null
  br i1 %68, label %69, label %81

69:                                               ; preds = %66
  %70 = load i32*, i32** %11, align 8
  %71 = call i32* @kull_m_xml_getTextValue(i32* %70, i8* bitcast ([5 x i32]* @.str.2 to i8*))
  store i32* %71, i32** %15, align 8
  %72 = icmp ne i32* %71, null
  br i1 %72, label %73, label %80

73:                                               ; preds = %69
  %74 = load i32, i32* %5, align 4
  %75 = shl i32 %74, 1
  %76 = load i32*, i32** %15, align 8
  %77 = call i32 @kprintf(i8* bitcast ([9 x i32]* @.str.3 to i8*), i32 %75, i8* bitcast ([1 x i32]* @.str.4 to i8*), i32* %76)
  %78 = load i32*, i32** %15, align 8
  %79 = call i32 @LocalFree(i32* %78)
  br label %80

80:                                               ; preds = %73, %69
  br label %81

81:                                               ; preds = %80, %66, %61
  %82 = load i32, i32* %5, align 4
  %83 = add nsw i32 %82, 1
  %84 = load i32*, i32** %10, align 8
  %85 = load i32, i32* %7, align 4
  %86 = load i32**, i32*** %8, align 8
  call void @kuhl_m_dpapi_rdg_Groups(i32 %83, i32* %84, i32 %85, i32** %86)
  br label %87

87:                                               ; preds = %81, %57, %52
  %88 = load i32*, i32** %10, align 8
  %89 = call i32 @IXMLDOMNode_Release(i32* %88)
  br label %90

90:                                               ; preds = %87, %49, %43
  br label %91

91:                                               ; preds = %90
  %92 = load i64, i64* %14, align 8
  %93 = add nsw i64 %92, 1
  store i64 %93, i64* %14, align 8
  br label %39

94:                                               ; preds = %39
  br label %95

95:                                               ; preds = %94, %33
  br label %96

96:                                               ; preds = %95, %30, %4
  ret void
}

declare dso_local i32 @kuhl_m_dpapi_rdg_LogonCredentials(i32, i32*, i32, i32**) #1

declare dso_local i32 @kuhl_m_dpapi_rdg_Servers(i32, i32*, i32, i32**) #1

declare dso_local i64 @IXMLDOMNode_selectNodes(i32*, i8*, i32**) #1

declare dso_local i64 @IXMLDOMNodeList_get_length(i32*, i64*) #1

declare dso_local i64 @IXMLDOMNodeList_get_item(i32*, i64, i32**) #1

declare dso_local i64 @IXMLDOMNode_get_nodeType(i32*, i32*) #1

declare dso_local i64 @IXMLDOMNode_selectSingleNode(i32*, i8*, i32**) #1

declare dso_local i32* @kull_m_xml_getTextValue(i32*, i8*) #1

declare dso_local i32 @kprintf(i8*, i32, i8*, i32*) #1

declare dso_local i32 @LocalFree(i32*) #1

declare dso_local i32 @IXMLDOMNode_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
