; ModuleID = '/home/carl/AnghaBench/reactos/dll/3rdparty/libxslt/extr_extensions.c_xsltGetExtData.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/3rdparty/libxslt/extr_extensions.c_xsltGetExtData.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32* }
%struct.TYPE_14__ = type { i8* }
%struct.TYPE_13__ = type { i32 (%struct.TYPE_12__*, i32*, i8*)*, i8* (%struct.TYPE_12__*, i32*)* }

@xsltExtMutex = common dso_local global i32 0, align 4
@xsltExtensionsHash = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [36 x i8] c"Failed to register module data: %s\0A\00", align 1
@xsltGenericDebugContext = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xsltGetExtData(%struct.TYPE_12__* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %10 = icmp eq %struct.TYPE_12__* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  %12 = load i32*, i32** %5, align 8
  %13 = icmp eq i32* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %11, %2
  store i8* null, i8** %3, align 8
  br label %108

15:                                               ; preds = %11
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %30

20:                                               ; preds = %15
  %21 = call i32* @xmlHashCreate(i32 10)
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 0
  store i32* %21, i32** %23, align 8
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = icmp eq i32* %26, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %20
  store i8* null, i8** %3, align 8
  br label %108

29:                                               ; preds = %20
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %6, align 8
  br label %37

30:                                               ; preds = %15
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = load i32*, i32** %5, align 8
  %35 = call %struct.TYPE_13__* @xmlHashLookup(i32* %33, i32* %34)
  %36 = bitcast %struct.TYPE_13__* %35 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %36, %struct.TYPE_14__** %6, align 8
  br label %37

37:                                               ; preds = %30, %29
  %38 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %39 = icmp eq %struct.TYPE_14__* %38, null
  br i1 %39, label %40, label %104

40:                                               ; preds = %37
  %41 = load i32, i32* @xsltExtMutex, align 4
  %42 = call i32 @xmlMutexLock(i32 %41)
  %43 = load i32*, i32** @xsltExtensionsHash, align 8
  %44 = load i32*, i32** %5, align 8
  %45 = call %struct.TYPE_13__* @xmlHashLookup(i32* %43, i32* %44)
  store %struct.TYPE_13__* %45, %struct.TYPE_13__** %8, align 8
  %46 = load i32, i32* @xsltExtMutex, align 4
  %47 = call i32 @xmlMutexUnlock(i32 %46)
  %48 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %49 = icmp eq %struct.TYPE_13__* %48, null
  br i1 %49, label %50, label %51

50:                                               ; preds = %40
  store i8* null, i8** %3, align 8
  br label %108

51:                                               ; preds = %40
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %52, i32 0, i32 1
  %54 = load i8* (%struct.TYPE_12__*, i32*)*, i8* (%struct.TYPE_12__*, i32*)** %53, align 8
  %55 = icmp eq i8* (%struct.TYPE_12__*, i32*)* %54, null
  br i1 %55, label %56, label %57

56:                                               ; preds = %51
  store i8* null, i8** %3, align 8
  br label %108

57:                                               ; preds = %51
  %58 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %58, i32 0, i32 1
  %60 = load i8* (%struct.TYPE_12__*, i32*)*, i8* (%struct.TYPE_12__*, i32*)** %59, align 8
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %62 = load i32*, i32** %5, align 8
  %63 = call i8* %60(%struct.TYPE_12__* %61, i32* %62)
  store i8* %63, i8** %7, align 8
  %64 = load i8*, i8** %7, align 8
  %65 = icmp eq i8* %64, null
  br i1 %65, label %66, label %67

66:                                               ; preds = %57
  store i8* null, i8** %3, align 8
  br label %108

67:                                               ; preds = %57
  %68 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %69 = load i8*, i8** %7, align 8
  %70 = call %struct.TYPE_14__* @xsltNewExtData(%struct.TYPE_13__* %68, i8* %69)
  store %struct.TYPE_14__* %70, %struct.TYPE_14__** %6, align 8
  %71 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %72 = icmp eq %struct.TYPE_14__* %71, null
  br i1 %72, label %73, label %74

73:                                               ; preds = %67
  store i8* null, i8** %3, align 8
  br label %108

74:                                               ; preds = %67
  %75 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %75, i32 0, i32 0
  %77 = load i32*, i32** %76, align 8
  %78 = load i32*, i32** %5, align 8
  %79 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %80 = bitcast %struct.TYPE_14__* %79 to i8*
  %81 = call i64 @xmlHashAddEntry(i32* %77, i32* %78, i8* %80)
  %82 = icmp slt i64 %81, 0
  br i1 %82, label %83, label %102

83:                                               ; preds = %74
  %84 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %85 = load i32*, i32** %5, align 8
  %86 = call i32 @xsltTransformError(%struct.TYPE_12__* %84, i32* null, i32* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32* %85)
  %87 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %88 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %87, i32 0, i32 0
  %89 = load i32 (%struct.TYPE_12__*, i32*, i8*)*, i32 (%struct.TYPE_12__*, i32*, i8*)** %88, align 8
  %90 = icmp ne i32 (%struct.TYPE_12__*, i32*, i8*)* %89, null
  br i1 %90, label %91, label %99

91:                                               ; preds = %83
  %92 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %93 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %92, i32 0, i32 0
  %94 = load i32 (%struct.TYPE_12__*, i32*, i8*)*, i32 (%struct.TYPE_12__*, i32*, i8*)** %93, align 8
  %95 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %96 = load i32*, i32** %5, align 8
  %97 = load i8*, i8** %7, align 8
  %98 = call i32 %94(%struct.TYPE_12__* %95, i32* %96, i8* %97)
  br label %99

99:                                               ; preds = %91, %83
  %100 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %101 = call i32 @xsltFreeExtData(%struct.TYPE_14__* %100)
  store i8* null, i8** %3, align 8
  br label %108

102:                                              ; preds = %74
  br label %103

103:                                              ; preds = %102
  br label %104

104:                                              ; preds = %103, %37
  %105 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %106 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %105, i32 0, i32 0
  %107 = load i8*, i8** %106, align 8
  store i8* %107, i8** %3, align 8
  br label %108

108:                                              ; preds = %104, %99, %73, %66, %56, %50, %28, %14
  %109 = load i8*, i8** %3, align 8
  ret i8* %109
}

declare dso_local i32* @xmlHashCreate(i32) #1

declare dso_local %struct.TYPE_13__* @xmlHashLookup(i32*, i32*) #1

declare dso_local i32 @xmlMutexLock(i32) #1

declare dso_local i32 @xmlMutexUnlock(i32) #1

declare dso_local %struct.TYPE_14__* @xsltNewExtData(%struct.TYPE_13__*, i8*) #1

declare dso_local i64 @xmlHashAddEntry(i32*, i32*, i8*) #1

declare dso_local i32 @xsltTransformError(%struct.TYPE_12__*, i32*, i32*, i8*, i32*) #1

declare dso_local i32 @xsltFreeExtData(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
