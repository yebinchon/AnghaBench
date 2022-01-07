; ModuleID = '/home/carl/AnghaBench/reactos/dll/3rdparty/libxslt/extr_xslt.c_xsltParseStylesheetImportedDoc.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/3rdparty/libxslt/extr_xslt.c_xsltParseStylesheetImportedDoc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { i32, i32* }
%struct.TYPE_22__ = type { i64, %struct.TYPE_25__*, %struct.TYPE_24__*, %struct.TYPE_22__*, i32*, %struct.TYPE_23__*, %struct.TYPE_22__* }
%struct.TYPE_24__ = type { i32, %struct.TYPE_23__*, %struct.TYPE_22__*, i32* }
%struct.TYPE_23__ = type { i64 }

@xsltGenericDebugContext = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_22__* @xsltParseStylesheetImportedDoc(%struct.TYPE_25__* %0, %struct.TYPE_22__* %1) #0 {
  %3 = alloca %struct.TYPE_22__*, align 8
  %4 = alloca %struct.TYPE_25__*, align 8
  %5 = alloca %struct.TYPE_22__*, align 8
  %6 = alloca %struct.TYPE_22__*, align 8
  store %struct.TYPE_25__* %0, %struct.TYPE_25__** %4, align 8
  store %struct.TYPE_22__* %1, %struct.TYPE_22__** %5, align 8
  %7 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %8 = icmp eq %struct.TYPE_25__* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %3, align 8
  br label %76

10:                                               ; preds = %2
  %11 = call %struct.TYPE_22__* (...) @xsltNewStylesheet()
  store %struct.TYPE_22__* %11, %struct.TYPE_22__** %6, align 8
  %12 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %13 = icmp eq %struct.TYPE_22__* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %10
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %3, align 8
  br label %76

15:                                               ; preds = %10
  %16 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %17 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %17, i32 0, i32 6
  store %struct.TYPE_22__* %16, %struct.TYPE_22__** %18, align 8
  %19 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %23, label %37

23:                                               ; preds = %15
  %24 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %24, i32 0, i32 4
  %26 = load i32*, i32** %25, align 8
  %27 = call i32 @xmlDictFree(i32* %26)
  %28 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %31, i32 0, i32 4
  store i32* %30, i32** %32, align 8
  %33 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %33, i32 0, i32 4
  %35 = load i32*, i32** %34, align 8
  %36 = call i32 @xmlDictReference(i32* %35)
  br label %37

37:                                               ; preds = %23, %15
  %38 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %39 = call i32 @xsltGatherNamespaces(%struct.TYPE_22__* %38)
  %40 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %41 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %41, i32 0, i32 1
  store %struct.TYPE_25__* %40, %struct.TYPE_25__** %42, align 8
  %43 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %44 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %45 = call i32* @xsltParseStylesheetProcess(%struct.TYPE_22__* %43, %struct.TYPE_25__* %44)
  %46 = icmp eq i32* %45, null
  br i1 %46, label %47, label %52

47:                                               ; preds = %37
  %48 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %48, i32 0, i32 1
  store %struct.TYPE_25__* null, %struct.TYPE_25__** %49, align 8
  %50 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %51 = call i32 @xsltFreeStylesheet(%struct.TYPE_22__* %50)
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %6, align 8
  br label %52

52:                                               ; preds = %47, %37
  %53 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %54 = icmp ne %struct.TYPE_22__* %53, null
  br i1 %54, label %55, label %74

55:                                               ; preds = %52
  %56 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %73

60:                                               ; preds = %55
  %61 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %61, i32 0, i32 1
  store %struct.TYPE_25__* null, %struct.TYPE_25__** %62, align 8
  %63 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %64 = icmp eq %struct.TYPE_22__* %63, null
  br i1 %64, label %65, label %70

65:                                               ; preds = %60
  %66 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %67 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %68 = call i32 @xmlDocGetRootElement(%struct.TYPE_25__* %67)
  %69 = call i32 @xsltCleanupStylesheetTree(%struct.TYPE_25__* %66, i32 %68)
  br label %70

70:                                               ; preds = %65, %60
  %71 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %72 = call i32 @xsltFreeStylesheet(%struct.TYPE_22__* %71)
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %6, align 8
  br label %73

73:                                               ; preds = %70, %55
  br label %74

74:                                               ; preds = %73, %52
  %75 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  store %struct.TYPE_22__* %75, %struct.TYPE_22__** %3, align 8
  br label %76

76:                                               ; preds = %74, %14, %9
  %77 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  ret %struct.TYPE_22__* %77
}

declare dso_local %struct.TYPE_22__* @xsltNewStylesheet(...) #1

declare dso_local i32 @xmlDictFree(i32*) #1

declare dso_local i32 @xmlDictReference(i32*) #1

declare dso_local i32 @xsltGatherNamespaces(%struct.TYPE_22__*) #1

declare dso_local i32* @xsltParseStylesheetProcess(%struct.TYPE_22__*, %struct.TYPE_25__*) #1

declare dso_local i32 @xsltFreeStylesheet(%struct.TYPE_22__*) #1

declare dso_local i32 @xsltCleanupStylesheetTree(%struct.TYPE_25__*, i32) #1

declare dso_local i32 @xmlDocGetRootElement(%struct.TYPE_25__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
