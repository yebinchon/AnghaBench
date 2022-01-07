; ModuleID = '/home/carl/AnghaBench/mimikatz/modules/extr_kull_m_xml.c_kull_m_xml_getTextValue.c'
source_filename = "/home/carl/AnghaBench/mimikatz/modules/extr_kull_m_xml.c_kull_m_xml_getTextValue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@S_OK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @kull_m_xml_getTextValue(i32* %0, i64 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i64 %1, i64* %4, align 8
  store i32* null, i32** %5, align 8
  %9 = load i32*, i32** %3, align 8
  %10 = load i64, i64* %4, align 8
  %11 = trunc i64 %10 to i32
  %12 = call i64 @IXMLDOMNode_selectSingleNode(i32* %9, i32 %11, i32** %6)
  %13 = load i64, i64* @S_OK, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %38

15:                                               ; preds = %2
  %16 = load i32*, i32** %6, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %38

18:                                               ; preds = %15
  %19 = load i32*, i32** %6, align 8
  %20 = call i64 @IXMLDOMNode_get_firstChild(i32* %19, i32** %7)
  %21 = load i64, i64* @S_OK, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %37

23:                                               ; preds = %18
  %24 = load i32*, i32** %7, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %26, label %37

26:                                               ; preds = %23
  %27 = load i32*, i32** %7, align 8
  %28 = call i64 @IXMLDOMNode_get_text(i32* %27, i32* %8)
  %29 = load i64, i64* @S_OK, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %36

31:                                               ; preds = %26
  %32 = load i32, i32* %8, align 4
  %33 = call i32 @kull_m_string_copy(i32** %5, i32 %32)
  %34 = load i32, i32* %8, align 4
  %35 = call i32 @SysFreeString(i32 %34)
  br label %36

36:                                               ; preds = %31, %26
  br label %37

37:                                               ; preds = %36, %23, %18
  br label %38

38:                                               ; preds = %37, %15, %2
  %39 = load i32*, i32** %5, align 8
  ret i32* %39
}

declare dso_local i64 @IXMLDOMNode_selectSingleNode(i32*, i32, i32**) #1

declare dso_local i64 @IXMLDOMNode_get_firstChild(i32*, i32**) #1

declare dso_local i64 @IXMLDOMNode_get_text(i32*, i32*) #1

declare dso_local i32 @kull_m_string_copy(i32**, i32) #1

declare dso_local i32 @SysFreeString(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
