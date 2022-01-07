; ModuleID = '/home/carl/AnghaBench/mimikatz/mimikatz/modules/extr_kuhl_m_iis.c_kuhl_m_iis_apphost_genericEnumNodes.c'
source_filename = "/home/carl/AnghaBench/mimikatz/mimikatz/modules/extr_kuhl_m_iis.c_kuhl_m_iis_apphost_genericEnumNodes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@NODE_ELEMENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kuhl_m_iis_apphost_genericEnumNodes(i32 %0, i32** %1, i32* %2, i64 %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32**, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  store i32 %0, i32* %9, align 4
  store i32** %1, i32*** %10, align 8
  store i32* %2, i32** %11, align 8
  store i64 %3, i64* %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  %23 = load i32, i32* @FALSE, align 4
  store i32 %23, i32* %20, align 4
  %24 = load i32*, i32** %11, align 8
  %25 = load i64, i64* %12, align 8
  %26 = trunc i64 %25 to i32
  %27 = call i64 @IXMLDOMDocument_selectNodes(i32* %24, i32 %26, i32** %17)
  %28 = load i64, i64* @S_OK, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %100

30:                                               ; preds = %8
  %31 = load i32*, i32** %17, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %33, label %100

33:                                               ; preds = %30
  %34 = load i32*, i32** %17, align 8
  %35 = call i64 @IXMLDOMNodeList_get_length(i32* %34, i64* %21)
  %36 = load i64, i64* @S_OK, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %99

38:                                               ; preds = %33
  store i64 0, i64* %22, align 8
  br label %39

39:                                               ; preds = %95, %38
  %40 = load i64, i64* %22, align 8
  %41 = load i64, i64* %21, align 8
  %42 = icmp slt i64 %40, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %39
  %44 = load i32, i32* %20, align 4
  %45 = icmp ne i32 %44, 0
  %46 = xor i1 %45, true
  br label %47

47:                                               ; preds = %43, %39
  %48 = phi i1 [ false, %39 ], [ %46, %43 ]
  br i1 %48, label %49, label %98

49:                                               ; preds = %47
  %50 = load i32*, i32** %17, align 8
  %51 = load i64, i64* %22, align 8
  %52 = call i64 @IXMLDOMNodeList_get_item(i32* %50, i64 %51, i32** %18)
  %53 = load i64, i64* @S_OK, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %94

55:                                               ; preds = %49
  %56 = load i32*, i32** %18, align 8
  %57 = icmp ne i32* %56, null
  br i1 %57, label %58, label %94

58:                                               ; preds = %55
  %59 = load i32*, i32** %18, align 8
  %60 = call i64 @IXMLDOMNode_get_nodeType(i32* %59, i32* %19)
  %61 = load i64, i64* @S_OK, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %91

63:                                               ; preds = %58
  %64 = load i32, i32* %19, align 4
  %65 = load i32, i32* @NODE_ELEMENT, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %67, label %91

67:                                               ; preds = %63
  %68 = load i32, i32* %13, align 4
  switch i32 %68, label %90 [
    i32 130, label %69
    i32 128, label %75
    i32 129, label %81
  ]

69:                                               ; preds = %67
  %70 = load i32, i32* %9, align 4
  %71 = load i32**, i32*** %10, align 8
  %72 = load i32*, i32** %11, align 8
  %73 = load i32*, i32** %18, align 8
  %74 = call i32 @kuhl_m_iis_apphost_apppool(i32 %70, i32** %71, i32* %72, i32* %73)
  br label %90

75:                                               ; preds = %67
  %76 = load i32, i32* %9, align 4
  %77 = load i32**, i32*** %10, align 8
  %78 = load i32*, i32** %11, align 8
  %79 = load i32*, i32** %18, align 8
  %80 = call i32 @kuhl_m_iis_apphost_site(i32 %76, i32** %77, i32* %78, i32* %79)
  br label %90

81:                                               ; preds = %67
  %82 = load i32, i32* %9, align 4
  %83 = load i32**, i32*** %10, align 8
  %84 = load i32*, i32** %11, align 8
  %85 = load i32*, i32** %18, align 8
  %86 = load i32, i32* %14, align 4
  %87 = load i32, i32* %15, align 4
  %88 = load i32, i32* %16, align 4
  %89 = call i32 @kuhl_m_iis_apphost_provider(i32 %82, i32** %83, i32* %84, i32* %85, i32 %86, i32 %87, i32 %88)
  store i32 %89, i32* %20, align 4
  br label %90

90:                                               ; preds = %67, %81, %75, %69
  br label %91

91:                                               ; preds = %90, %63, %58
  %92 = load i32*, i32** %18, align 8
  %93 = call i32 @IXMLDOMNode_Release(i32* %92)
  br label %94

94:                                               ; preds = %91, %55, %49
  br label %95

95:                                               ; preds = %94
  %96 = load i64, i64* %22, align 8
  %97 = add nsw i64 %96, 1
  store i64 %97, i64* %22, align 8
  br label %39

98:                                               ; preds = %47
  br label %99

99:                                               ; preds = %98, %33
  br label %100

100:                                              ; preds = %99, %30, %8
  ret void
}

declare dso_local i64 @IXMLDOMDocument_selectNodes(i32*, i32, i32**) #1

declare dso_local i64 @IXMLDOMNodeList_get_length(i32*, i64*) #1

declare dso_local i64 @IXMLDOMNodeList_get_item(i32*, i64, i32**) #1

declare dso_local i64 @IXMLDOMNode_get_nodeType(i32*, i32*) #1

declare dso_local i32 @kuhl_m_iis_apphost_apppool(i32, i32**, i32*, i32*) #1

declare dso_local i32 @kuhl_m_iis_apphost_site(i32, i32**, i32*, i32*) #1

declare dso_local i32 @kuhl_m_iis_apphost_provider(i32, i32**, i32*, i32*, i32, i32, i32) #1

declare dso_local i32 @IXMLDOMNode_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
