; ModuleID = '/home/carl/AnghaBench/mimikatz/modules/extr_kull_m_xml.c_kull_m_xml_CreateAndInitDOM.c'
source_filename = "/home/carl/AnghaBench/mimikatz/modules/extr_kull_m_xml.c_kull_m_xml_CreateAndInitDOM.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CLSID_DOMDocument = common dso_local global i32 0, align 4
@CLSCTX_INPROC_SERVER = common dso_local global i32 0, align 4
@IID_IXMLDOMDocument = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@VARIANT_FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i32] [i32 67, i32 111, i32 67, i32 114, i32 101, i32 97, i32 116, i32 101, i32 73, i32 110, i32 115, i32 116, i32 97, i32 110, i32 99, i32 101, i32 58, i32 32, i32 48, i32 120, i32 37, i32 48, i32 56, i32 120, i32 10, i32 0], align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @kull_m_xml_CreateAndInitDOM() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i64, align 8
  store i32* null, i32** %1, align 8
  %3 = load i32, i32* @CLSCTX_INPROC_SERVER, align 4
  %4 = bitcast i32** %1 to i8**
  %5 = call i64 @CoCreateInstance(i32* @CLSID_DOMDocument, i32* null, i32 %3, i32* @IID_IXMLDOMDocument, i8** %4)
  store i64 %5, i64* %2, align 8
  %6 = load i64, i64* %2, align 8
  %7 = load i64, i64* @S_OK, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %22

9:                                                ; preds = %0
  %10 = load i32*, i32** %1, align 8
  %11 = load i32, i32* @VARIANT_FALSE, align 4
  %12 = call i32 @IXMLDOMDocument_put_async(i32* %10, i32 %11)
  %13 = load i32*, i32** %1, align 8
  %14 = load i32, i32* @VARIANT_FALSE, align 4
  %15 = call i32 @IXMLDOMDocument_put_validateOnParse(i32* %13, i32 %14)
  %16 = load i32*, i32** %1, align 8
  %17 = load i32, i32* @VARIANT_FALSE, align 4
  %18 = call i32 @IXMLDOMDocument_put_resolveExternals(i32* %16, i32 %17)
  %19 = load i32*, i32** %1, align 8
  %20 = load i32, i32* @VARIANT_FALSE, align 4
  %21 = call i32 @IXMLDOMDocument_put_preserveWhiteSpace(i32* %19, i32 %20)
  br label %25

22:                                               ; preds = %0
  %23 = load i64, i64* %2, align 8
  %24 = call i32 @PRINT_ERROR(i8* bitcast ([26 x i32]* @.str to i8*), i64 %23)
  br label %25

25:                                               ; preds = %22, %9
  %26 = load i32*, i32** %1, align 8
  ret i32* %26
}

declare dso_local i64 @CoCreateInstance(i32*, i32*, i32, i32*, i8**) #1

declare dso_local i32 @IXMLDOMDocument_put_async(i32*, i32) #1

declare dso_local i32 @IXMLDOMDocument_put_validateOnParse(i32*, i32) #1

declare dso_local i32 @IXMLDOMDocument_put_resolveExternals(i32*, i32) #1

declare dso_local i32 @IXMLDOMDocument_put_preserveWhiteSpace(i32*, i32) #1

declare dso_local i32 @PRINT_ERROR(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
