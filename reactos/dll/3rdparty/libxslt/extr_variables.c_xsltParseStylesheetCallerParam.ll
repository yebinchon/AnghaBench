; ModuleID = '/home/carl/AnghaBench/reactos/dll/3rdparty/libxslt/extr_variables.c_xsltParseStylesheetCallerParam.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/3rdparty/libxslt/extr_variables.c_xsltParseStylesheetCallerParam.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, %struct.TYPE_9__*, i64 }
%struct.TYPE_8__ = type { i32*, i32* }

@XML_ELEMENT_NODE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [105 x i8] c"Internal error in xsltParseStylesheetCallerParam(): The XSLT 'with-param' instruction was not compiled.\0A\00", align 1
@.str.1 = private unnamed_addr constant [111 x i8] c"Internal error in xsltParseStylesheetCallerParam(): XSLT 'with-param': The attribute 'name' was not compiled.\0A\00", align 1
@XSLT_TRACE_VARIABLES = common dso_local global i32 0, align 4
@xsltGenericDebugContext = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @xsltParseStylesheetCallerParam(i32* %0, %struct.TYPE_9__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %5, align 8
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %7, align 8
  store i32* null, i32** %8, align 8
  %9 = load i32*, i32** %4, align 8
  %10 = icmp eq i32* %9, null
  br i1 %10, label %20, label %11

11:                                               ; preds = %2
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %13 = icmp eq %struct.TYPE_9__* %12, null
  br i1 %13, label %20, label %14

14:                                               ; preds = %11
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @XML_ELEMENT_NODE, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %14, %11, %2
  store i32* null, i32** %3, align 8
  br label %58

21:                                               ; preds = %14
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = inttoptr i64 %24 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %25, %struct.TYPE_8__** %6, align 8
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %27 = icmp eq %struct.TYPE_8__* %26, null
  br i1 %27, label %28, label %32

28:                                               ; preds = %21
  %29 = load i32*, i32** %4, align 8
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %31 = call i32 @xsltTransformError(i32* %29, i32* null, %struct.TYPE_9__* %30, i8* getelementptr inbounds ([105 x i8], [105 x i8]* @.str, i64 0, i64 0))
  store i32* null, i32** %3, align 8
  br label %58

32:                                               ; preds = %21
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = icmp eq i32* %35, null
  br i1 %36, label %37, label %41

37:                                               ; preds = %32
  %38 = load i32*, i32** %4, align 8
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %40 = call i32 @xsltTransformError(i32* %38, i32* null, %struct.TYPE_9__* %39, i8* getelementptr inbounds ([111 x i8], [111 x i8]* @.str.1, i64 0, i64 0))
  store i32* null, i32** %3, align 8
  br label %58

41:                                               ; preds = %32
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = icmp eq i32* %44, null
  br i1 %45, label %46, label %50

46:                                               ; preds = %41
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 1
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %48, align 8
  store %struct.TYPE_9__* %49, %struct.TYPE_9__** %7, align 8
  br label %52

50:                                               ; preds = %41
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  store %struct.TYPE_9__* %51, %struct.TYPE_9__** %7, align 8
  br label %52

52:                                               ; preds = %50, %46
  %53 = load i32*, i32** %4, align 8
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %56 = call i32* @xsltBuildVariable(i32* %53, %struct.TYPE_8__* %54, %struct.TYPE_9__* %55)
  store i32* %56, i32** %8, align 8
  %57 = load i32*, i32** %8, align 8
  store i32* %57, i32** %3, align 8
  br label %58

58:                                               ; preds = %52, %37, %28, %20
  %59 = load i32*, i32** %3, align 8
  ret i32* %59
}

declare dso_local i32 @xsltTransformError(i32*, i32*, %struct.TYPE_9__*, i8*) #1

declare dso_local i32* @xsltBuildVariable(i32*, %struct.TYPE_8__*, %struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
