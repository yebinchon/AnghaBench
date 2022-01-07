; ModuleID = '/home/carl/AnghaBench/reactos/dll/3rdparty/libxslt/extr_documents.c_xsltLoadStyleDocument.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/3rdparty/libxslt/extr_documents.c_xsltLoadStyleDocument.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_10__*, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32* }
%struct.TYPE_9__ = type { i32, %struct.TYPE_10__* }

@.str = private unnamed_addr constant [50 x i8] c"xsltLoadStyleDocument: read rights for %s denied\0A\00", align 1
@XSLT_PARSE_OPTIONS = common dso_local global i32 0, align 4
@XSLT_LOAD_STYLESHEET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_10__* @xsltLoadStyleDocument(%struct.TYPE_9__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store i32* %1, i32** %5, align 8
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %11 = icmp eq %struct.TYPE_9__* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load i32*, i32** %5, align 8
  %14 = icmp eq i32* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %12, %2
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %3, align 8
  br label %82

16:                                               ; preds = %12
  %17 = call i32* (...) @xsltGetDefaultSecurityPrefs()
  store i32* %17, i32** %8, align 8
  %18 = load i32*, i32** %8, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %30

20:                                               ; preds = %16
  %21 = load i32*, i32** %8, align 8
  %22 = load i32*, i32** %5, align 8
  %23 = call i32 @xsltCheckRead(i32* %21, i32* null, i32* %22)
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %9, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %20
  %27 = load i32*, i32** %5, align 8
  %28 = call i32 @xsltTransformError(i32* null, i32* null, i32* null, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32* %27)
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %3, align 8
  br label %82

29:                                               ; preds = %20
  br label %30

30:                                               ; preds = %29, %16
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 1
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %32, align 8
  store %struct.TYPE_10__* %33, %struct.TYPE_10__** %6, align 8
  br label %34

34:                                               ; preds = %60, %30
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %36 = icmp ne %struct.TYPE_10__* %35, null
  br i1 %36, label %37, label %64

37:                                               ; preds = %34
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 1
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %39, align 8
  %41 = icmp ne %struct.TYPE_8__* %40, null
  br i1 %41, label %42, label %60

42:                                               ; preds = %37
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 1
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = icmp ne i32* %47, null
  br i1 %48, label %49, label %60

49:                                               ; preds = %42
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 1
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = load i32*, i32** %5, align 8
  %56 = call i64 @xmlStrEqual(i32* %54, i32* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %49
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  store %struct.TYPE_10__* %59, %struct.TYPE_10__** %3, align 8
  br label %82

60:                                               ; preds = %49, %42, %37
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %62, align 8
  store %struct.TYPE_10__* %63, %struct.TYPE_10__** %6, align 8
  br label %34

64:                                               ; preds = %34
  %65 = load i32*, i32** %5, align 8
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @XSLT_PARSE_OPTIONS, align 4
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %71 = bitcast %struct.TYPE_9__* %70 to i8*
  %72 = load i32, i32* @XSLT_LOAD_STYLESHEET, align 4
  %73 = call i32* @xsltDocDefaultLoader(i32* %65, i32 %68, i32 %69, i8* %71, i32 %72)
  store i32* %73, i32** %7, align 8
  %74 = load i32*, i32** %7, align 8
  %75 = icmp eq i32* %74, null
  br i1 %75, label %76, label %77

76:                                               ; preds = %64
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %3, align 8
  br label %82

77:                                               ; preds = %64
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %79 = load i32*, i32** %7, align 8
  %80 = call %struct.TYPE_10__* @xsltNewStyleDocument(%struct.TYPE_9__* %78, i32* %79)
  store %struct.TYPE_10__* %80, %struct.TYPE_10__** %6, align 8
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  store %struct.TYPE_10__* %81, %struct.TYPE_10__** %3, align 8
  br label %82

82:                                               ; preds = %77, %76, %58, %26, %15
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  ret %struct.TYPE_10__* %83
}

declare dso_local i32* @xsltGetDefaultSecurityPrefs(...) #1

declare dso_local i32 @xsltCheckRead(i32*, i32*, i32*) #1

declare dso_local i32 @xsltTransformError(i32*, i32*, i32*, i8*, i32*) #1

declare dso_local i64 @xmlStrEqual(i32*, i32*) #1

declare dso_local i32* @xsltDocDefaultLoader(i32*, i32, i32, i8*, i32) #1

declare dso_local %struct.TYPE_10__* @xsltNewStyleDocument(%struct.TYPE_9__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
