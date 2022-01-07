; ModuleID = '/home/carl/AnghaBench/reactos/dll/3rdparty/libxslt/extr_variables.c_xsltGlobalVariableLookup.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/3rdparty/libxslt/extr_variables.c_xsltGlobalVariableLookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32*, i32* }
%struct.TYPE_11__ = type { i64, i64, i32*, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }

@xsltComputingGlobalVarMarker = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [28 x i8] c"Recursive definition of %s\0A\00", align 1
@XSLT_TRACE_VARIABLES = common dso_local global i32 0, align 4
@xsltGenericDebugContext = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_10__*, i32*, i32*)* @xsltGlobalVariableLookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @xsltGlobalVariableLookup(%struct.TYPE_10__* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca i32*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* null, i32** %9, align 8
  %10 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 1
  %12 = load i32*, i32** %11, align 8
  %13 = icmp eq i32* %12, null
  br i1 %13, label %19, label %14

14:                                               ; preds = %3
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %14, %3
  store i32* null, i32** %4, align 8
  br label %62

20:                                               ; preds = %14
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = load i32*, i32** %6, align 8
  %25 = load i32*, i32** %7, align 8
  %26 = call i64 @xmlHashLookup2(i32* %23, i32* %24, i32* %25)
  %27 = inttoptr i64 %26 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %27, %struct.TYPE_11__** %8, align 8
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %29 = icmp eq %struct.TYPE_11__* %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %20
  store i32* null, i32** %4, align 8
  br label %62

31:                                               ; preds = %20
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %55

36:                                               ; preds = %31
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @xsltComputingGlobalVarMarker, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %51

42:                                               ; preds = %36
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 3
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32*, i32** %6, align 8
  %50 = call i32 @xsltTransformError(%struct.TYPE_10__* %43, i32* null, i32 %48, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32* %49)
  store i32* null, i32** %4, align 8
  br label %62

51:                                               ; preds = %36
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %54 = call i32* @xsltEvalGlobalVariable(%struct.TYPE_11__* %52, %struct.TYPE_10__* %53)
  store i32* %54, i32** %9, align 8
  br label %59

55:                                               ; preds = %31
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 2
  %58 = load i32*, i32** %57, align 8
  store i32* %58, i32** %9, align 8
  br label %59

59:                                               ; preds = %55, %51
  %60 = load i32*, i32** %9, align 8
  %61 = call i32* @xmlXPathObjectCopy(i32* %60)
  store i32* %61, i32** %4, align 8
  br label %62

62:                                               ; preds = %59, %42, %30, %19
  %63 = load i32*, i32** %4, align 8
  ret i32* %63
}

declare dso_local i64 @xmlHashLookup2(i32*, i32*, i32*) #1

declare dso_local i32 @xsltTransformError(%struct.TYPE_10__*, i32*, i32, i8*, i32*) #1

declare dso_local i32* @xsltEvalGlobalVariable(%struct.TYPE_11__*, %struct.TYPE_10__*) #1

declare dso_local i32* @xmlXPathObjectCopy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
