; ModuleID = '/home/carl/AnghaBench/reactos/dll/3rdparty/libxslt/extr_extra.c_xsltRegisterAllExtras.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/3rdparty/libxslt/extr_extra.c_xsltRegisterAllExtras.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"node-set\00", align 1
@XSLT_LIBXSLT_NAMESPACE = common dso_local global i32 0, align 4
@xsltFunctionNodeSet = common dso_local global i32 0, align 4
@XSLT_SAXON_NAMESPACE = common dso_local global i32 0, align 4
@XSLT_XT_NAMESPACE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@xsltDebug = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"output\00", align 1
@xsltDocumentComp = common dso_local global i32* null, align 8
@xsltDocumentElem = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c"write\00", align 1
@XSLT_XALAN_NAMESPACE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [9 x i8] c"document\00", align 1
@XSLT_NAMESPACE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xsltRegisterAllExtras() #0 {
  %1 = load i32, i32* @XSLT_LIBXSLT_NAMESPACE, align 4
  %2 = load i32, i32* @xsltFunctionNodeSet, align 4
  %3 = call i32 @xsltRegisterExtModuleFunction(i32* bitcast ([9 x i8]* @.str to i32*), i32 %1, i32 %2)
  %4 = load i32, i32* @XSLT_SAXON_NAMESPACE, align 4
  %5 = load i32, i32* @xsltFunctionNodeSet, align 4
  %6 = call i32 @xsltRegisterExtModuleFunction(i32* bitcast ([9 x i8]* @.str to i32*), i32 %4, i32 %5)
  %7 = load i32, i32* @XSLT_XT_NAMESPACE, align 4
  %8 = load i32, i32* @xsltFunctionNodeSet, align 4
  %9 = call i32 @xsltRegisterExtModuleFunction(i32* bitcast ([9 x i8]* @.str to i32*), i32 %7, i32 %8)
  %10 = load i32, i32* @XSLT_LIBXSLT_NAMESPACE, align 4
  %11 = load i32, i32* @xsltDebug, align 4
  %12 = call i32 @xsltRegisterExtModuleElement(i32* bitcast ([6 x i8]* @.str.1 to i32*), i32 %10, i32* null, i32 %11)
  %13 = load i32, i32* @XSLT_SAXON_NAMESPACE, align 4
  %14 = load i32*, i32** @xsltDocumentComp, align 8
  %15 = load i32, i32* @xsltDocumentElem, align 4
  %16 = call i32 @xsltRegisterExtModuleElement(i32* bitcast ([7 x i8]* @.str.2 to i32*), i32 %13, i32* %14, i32 %15)
  %17 = load i32, i32* @XSLT_XALAN_NAMESPACE, align 4
  %18 = load i32*, i32** @xsltDocumentComp, align 8
  %19 = load i32, i32* @xsltDocumentElem, align 4
  %20 = call i32 @xsltRegisterExtModuleElement(i32* bitcast ([6 x i8]* @.str.3 to i32*), i32 %17, i32* %18, i32 %19)
  %21 = load i32, i32* @XSLT_XT_NAMESPACE, align 4
  %22 = load i32*, i32** @xsltDocumentComp, align 8
  %23 = load i32, i32* @xsltDocumentElem, align 4
  %24 = call i32 @xsltRegisterExtModuleElement(i32* bitcast ([9 x i8]* @.str.4 to i32*), i32 %21, i32* %22, i32 %23)
  %25 = load i32, i32* @XSLT_NAMESPACE, align 4
  %26 = load i32*, i32** @xsltDocumentComp, align 8
  %27 = load i32, i32* @xsltDocumentElem, align 4
  %28 = call i32 @xsltRegisterExtModuleElement(i32* bitcast ([9 x i8]* @.str.4 to i32*), i32 %25, i32* %26, i32 %27)
  ret void
}

declare dso_local i32 @xsltRegisterExtModuleFunction(i32*, i32, i32) #1

declare dso_local i32 @xsltRegisterExtModuleElement(i32*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
