; ModuleID = '/home/carl/AnghaBench/reactos/dll/3rdparty/libxslt/extr_extensions.c_xsltPreComputeExtModuleElement.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/3rdparty/libxslt/extr_extensions.c_xsltPreComputeExtModuleElement.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, %struct.TYPE_7__*, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i32, i32* (i32*, %struct.TYPE_9__*, i32)* }

@XML_ELEMENT_NODE = common dso_local global i64 0, align 8
@xsltExtMutex = common dso_local global i32 0, align 4
@xsltElementsHash = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @xsltPreComputeExtModuleElement(i32* %0, %struct.TYPE_9__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %5, align 8
  store i32* null, i32** %7, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = icmp eq i32* %8, null
  br i1 %9, label %24, label %10

10:                                               ; preds = %2
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %12 = icmp eq %struct.TYPE_9__* %11, null
  br i1 %12, label %24, label %13

13:                                               ; preds = %10
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @XML_ELEMENT_NODE, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %24, label %19

19:                                               ; preds = %13
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 1
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %21, align 8
  %23 = icmp eq %struct.TYPE_7__* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %19, %13, %10, %2
  store i32* null, i32** %3, align 8
  br label %71

25:                                               ; preds = %19
  %26 = load i32, i32* @xsltExtMutex, align 4
  %27 = call i32 @xmlMutexLock(i32 %26)
  %28 = load i32, i32* @xsltElementsHash, align 4
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 1
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i64 @xmlHashLookup2(i32 %28, i32 %31, i32 %36)
  %38 = inttoptr i64 %37 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %38, %struct.TYPE_8__** %6, align 8
  %39 = load i32, i32* @xsltExtMutex, align 4
  %40 = call i32 @xmlMutexUnlock(i32 %39)
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %42 = icmp eq %struct.TYPE_8__* %41, null
  br i1 %42, label %43, label %44

43:                                               ; preds = %25
  store i32* null, i32** %3, align 8
  br label %71

44:                                               ; preds = %25
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 1
  %47 = load i32* (i32*, %struct.TYPE_9__*, i32)*, i32* (i32*, %struct.TYPE_9__*, i32)** %46, align 8
  %48 = icmp ne i32* (i32*, %struct.TYPE_9__*, i32)* %47, null
  br i1 %48, label %49, label %59

49:                                               ; preds = %44
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 1
  %52 = load i32* (i32*, %struct.TYPE_9__*, i32)*, i32* (i32*, %struct.TYPE_9__*, i32)** %51, align 8
  %53 = load i32*, i32** %4, align 8
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i32* %52(i32* %53, %struct.TYPE_9__* %54, i32 %57)
  store i32* %58, i32** %7, align 8
  br label %59

59:                                               ; preds = %49, %44
  %60 = load i32*, i32** %7, align 8
  %61 = icmp eq i32* %60, null
  br i1 %61, label %62, label %69

62:                                               ; preds = %59
  %63 = load i32*, i32** %4, align 8
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call i32* @xsltNewElemPreComp(i32* %63, %struct.TYPE_9__* %64, i32 %67)
  store i32* %68, i32** %7, align 8
  br label %69

69:                                               ; preds = %62, %59
  %70 = load i32*, i32** %7, align 8
  store i32* %70, i32** %3, align 8
  br label %71

71:                                               ; preds = %69, %43, %24
  %72 = load i32*, i32** %3, align 8
  ret i32* %72
}

declare dso_local i32 @xmlMutexLock(i32) #1

declare dso_local i64 @xmlHashLookup2(i32, i32, i32) #1

declare dso_local i32 @xmlMutexUnlock(i32) #1

declare dso_local i32* @xsltNewElemPreComp(i32*, %struct.TYPE_9__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
