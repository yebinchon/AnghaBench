; ModuleID = '/home/carl/AnghaBench/mimikatz/modules/extr_kull_m_xml.c_kull_m_xml_getAttribute.c'
source_filename = "/home/carl/AnghaBench/mimikatz/modules/extr_kull_m_xml.c_kull_m_xml_getAttribute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @kull_m_xml_getAttribute(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32* null, i32** %5, align 8
  %12 = load i32, i32* @FALSE, align 4
  store i32 %12, i32* %11, align 4
  %13 = load i32*, i32** %3, align 8
  %14 = call i64 @IXMLDOMNode_get_attributes(i32* %13, i32** %6)
  %15 = load i64, i64* @S_OK, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %77

17:                                               ; preds = %2
  %18 = load i32*, i32** %6, align 8
  %19 = call i64 @IXMLDOMNamedNodeMap_get_length(i32* %18, i64* %9)
  %20 = load i64, i64* @S_OK, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %74

22:                                               ; preds = %17
  store i64 0, i64* %10, align 8
  br label %23

23:                                               ; preds = %70, %22
  %24 = load i64, i64* %10, align 8
  %25 = load i64, i64* %9, align 8
  %26 = icmp slt i64 %24, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %23
  %28 = load i32, i32* %11, align 4
  %29 = icmp ne i32 %28, 0
  %30 = xor i1 %29, true
  br label %31

31:                                               ; preds = %27, %23
  %32 = phi i1 [ false, %23 ], [ %30, %27 ]
  br i1 %32, label %33, label %73

33:                                               ; preds = %31
  %34 = load i32*, i32** %6, align 8
  %35 = load i64, i64* %10, align 8
  %36 = call i64 @IXMLDOMNamedNodeMap_get_item(i32* %34, i64 %35, i32** %7)
  %37 = load i64, i64* @S_OK, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %69

39:                                               ; preds = %33
  %40 = load i32*, i32** %7, align 8
  %41 = call i64 @IXMLDOMNode_get_nodeName(i32* %40, i32* %8)
  %42 = load i64, i64* @S_OK, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %66

44:                                               ; preds = %39
  %45 = load i32, i32* %4, align 4
  %46 = load i32, i32* %8, align 4
  %47 = call i64 @_wcsicmp(i32 %45, i32 %46)
  %48 = icmp eq i64 %47, 0
  %49 = zext i1 %48 to i32
  store i32 %49, i32* %11, align 4
  %50 = load i32, i32* %8, align 4
  %51 = call i32 @SysFreeString(i32 %50)
  %52 = load i32, i32* %11, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %65

54:                                               ; preds = %44
  %55 = load i32*, i32** %7, align 8
  %56 = call i64 @IXMLDOMNode_get_text(i32* %55, i32* %8)
  %57 = load i64, i64* @S_OK, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %64

59:                                               ; preds = %54
  %60 = load i32, i32* %8, align 4
  %61 = call i32 @kull_m_string_copy(i32** %5, i32 %60)
  %62 = load i32, i32* %8, align 4
  %63 = call i32 @SysFreeString(i32 %62)
  br label %64

64:                                               ; preds = %59, %54
  br label %65

65:                                               ; preds = %64, %44
  br label %66

66:                                               ; preds = %65, %39
  %67 = load i32*, i32** %7, align 8
  %68 = call i32 @IXMLDOMNode_Release(i32* %67)
  br label %69

69:                                               ; preds = %66, %33
  br label %70

70:                                               ; preds = %69
  %71 = load i64, i64* %10, align 8
  %72 = add nsw i64 %71, 1
  store i64 %72, i64* %10, align 8
  br label %23

73:                                               ; preds = %31
  br label %74

74:                                               ; preds = %73, %17
  %75 = load i32*, i32** %6, align 8
  %76 = call i32 @IXMLDOMNamedNodeMap_Release(i32* %75)
  br label %77

77:                                               ; preds = %74, %2
  %78 = load i32*, i32** %5, align 8
  ret i32* %78
}

declare dso_local i64 @IXMLDOMNode_get_attributes(i32*, i32**) #1

declare dso_local i64 @IXMLDOMNamedNodeMap_get_length(i32*, i64*) #1

declare dso_local i64 @IXMLDOMNamedNodeMap_get_item(i32*, i64, i32**) #1

declare dso_local i64 @IXMLDOMNode_get_nodeName(i32*, i32*) #1

declare dso_local i64 @_wcsicmp(i32, i32) #1

declare dso_local i32 @SysFreeString(i32) #1

declare dso_local i64 @IXMLDOMNode_get_text(i32*, i32*) #1

declare dso_local i32 @kull_m_string_copy(i32**, i32) #1

declare dso_local i32 @IXMLDOMNode_Release(i32*) #1

declare dso_local i32 @IXMLDOMNamedNodeMap_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
