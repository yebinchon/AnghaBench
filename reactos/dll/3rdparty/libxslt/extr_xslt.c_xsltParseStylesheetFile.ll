; ModuleID = '/home/carl/AnghaBench/reactos/dll/3rdparty/libxslt/extr_xslt.c_xsltParseStylesheetFile.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/3rdparty/libxslt/extr_xslt.c_xsltParseStylesheetFile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [52 x i8] c"xsltParseStylesheetFile: read rights for %s denied\0A\00", align 1
@XSLT_PARSE_OPTIONS = common dso_local global i32 0, align 4
@XSLT_LOAD_START = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"xsltParseStylesheetFile : cannot parse %s\0A\00", align 1
@xsltGenericDebugContext = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @xsltParseStylesheetFile(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %8 = call i32 (...) @xsltInitGlobals()
  %9 = load i32*, i32** %3, align 8
  %10 = icmp eq i32* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32* null, i32** %2, align 8
  br label %46

12:                                               ; preds = %1
  %13 = call i32* (...) @xsltGetDefaultSecurityPrefs()
  store i32* %13, i32** %4, align 8
  %14 = load i32*, i32** %4, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %16, label %26

16:                                               ; preds = %12
  %17 = load i32*, i32** %4, align 8
  %18 = load i32*, i32** %3, align 8
  %19 = call i32 @xsltCheckRead(i32* %17, i32* null, i32* %18)
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %16
  %23 = load i32*, i32** %3, align 8
  %24 = call i32 @xsltTransformError(i32* null, i32* null, i32* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32* %23)
  store i32* null, i32** %2, align 8
  br label %46

25:                                               ; preds = %16
  br label %26

26:                                               ; preds = %25, %12
  %27 = load i32*, i32** %3, align 8
  %28 = load i32, i32* @XSLT_PARSE_OPTIONS, align 4
  %29 = load i32, i32* @XSLT_LOAD_START, align 4
  %30 = call i32* @xsltDocDefaultLoader(i32* %27, i32* null, i32 %28, i32* null, i32 %29)
  store i32* %30, i32** %6, align 8
  %31 = load i32*, i32** %6, align 8
  %32 = icmp eq i32* %31, null
  br i1 %32, label %33, label %36

33:                                               ; preds = %26
  %34 = load i32*, i32** %3, align 8
  %35 = call i32 @xsltTransformError(i32* null, i32* null, i32* null, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32* %34)
  store i32* null, i32** %2, align 8
  br label %46

36:                                               ; preds = %26
  %37 = load i32*, i32** %6, align 8
  %38 = call i32* @xsltParseStylesheetDoc(i32* %37)
  store i32* %38, i32** %5, align 8
  %39 = load i32*, i32** %5, align 8
  %40 = icmp eq i32* %39, null
  br i1 %40, label %41, label %44

41:                                               ; preds = %36
  %42 = load i32*, i32** %6, align 8
  %43 = call i32 @xmlFreeDoc(i32* %42)
  store i32* null, i32** %2, align 8
  br label %46

44:                                               ; preds = %36
  %45 = load i32*, i32** %5, align 8
  store i32* %45, i32** %2, align 8
  br label %46

46:                                               ; preds = %44, %41, %33, %22, %11
  %47 = load i32*, i32** %2, align 8
  ret i32* %47
}

declare dso_local i32 @xsltInitGlobals(...) #1

declare dso_local i32* @xsltGetDefaultSecurityPrefs(...) #1

declare dso_local i32 @xsltCheckRead(i32*, i32*, i32*) #1

declare dso_local i32 @xsltTransformError(i32*, i32*, i32*, i8*, i32*) #1

declare dso_local i32* @xsltDocDefaultLoader(i32*, i32*, i32, i32*, i32) #1

declare dso_local i32* @xsltParseStylesheetDoc(i32*) #1

declare dso_local i32 @xmlFreeDoc(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
