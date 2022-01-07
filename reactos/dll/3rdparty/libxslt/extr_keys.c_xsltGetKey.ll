; ModuleID = '/home/carl/AnghaBench/reactos/dll/3rdparty/libxslt/extr_keys.c_xsltGetKey.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/3rdparty/libxslt/extr_keys.c_xsltGetKey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i64, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64, i64 }
%struct.TYPE_9__ = type { %struct.TYPE_9__*, i32, i32*, i32* }

@xsltGenericDebugContext = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @xsltGetKey(%struct.TYPE_8__* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_9__*, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 0, i32* %12, align 4
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %14 = icmp eq %struct.TYPE_8__* %13, null
  br i1 %14, label %26, label %15

15:                                               ; preds = %4
  %16 = load i32*, i32** %7, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %26, label %18

18:                                               ; preds = %15
  %19 = load i32*, i32** %9, align 8
  %20 = icmp eq i32* %19, null
  br i1 %20, label %26, label %21

21:                                               ; preds = %18
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 2
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %23, align 8
  %25 = icmp eq %struct.TYPE_7__* %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %21, %18, %15, %4
  store i32* null, i32** %5, align 8
  br label %109

27:                                               ; preds = %21
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 2
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp slt i64 %32, %35
  br i1 %36, label %37, label %48

37:                                               ; preds = %27
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %37
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %44 = call i64 @xsltInitAllDocKeys(%struct.TYPE_8__* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %42
  store i32* null, i32** %5, align 8
  br label %109

47:                                               ; preds = %42
  br label %48

48:                                               ; preds = %47, %37, %27
  br label %49

49:                                               ; preds = %103, %48
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 2
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = inttoptr i64 %54 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %55, %struct.TYPE_9__** %11, align 8
  br label %56

56:                                               ; preds = %91, %49
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %58 = icmp ne %struct.TYPE_9__* %57, null
  br i1 %58, label %59, label %95

59:                                               ; preds = %56
  %60 = load i32*, i32** %8, align 8
  %61 = icmp ne i32* %60, null
  %62 = zext i1 %61 to i32
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 2
  %65 = load i32*, i32** %64, align 8
  %66 = icmp ne i32* %65, null
  %67 = zext i1 %66 to i32
  %68 = icmp eq i32 %62, %67
  br i1 %68, label %69, label %91

69:                                               ; preds = %59
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 3
  %72 = load i32*, i32** %71, align 8
  %73 = load i32*, i32** %7, align 8
  %74 = call i64 @xmlStrEqual(i32* %72, i32* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %91

76:                                               ; preds = %69
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 2
  %79 = load i32*, i32** %78, align 8
  %80 = load i32*, i32** %8, align 8
  %81 = call i64 @xmlStrEqual(i32* %79, i32* %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %91

83:                                               ; preds = %76
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = load i32*, i32** %9, align 8
  %88 = call i64 @xmlHashLookup(i32 %86, i32* %87)
  %89 = inttoptr i64 %88 to i32*
  store i32* %89, i32** %10, align 8
  %90 = load i32*, i32** %10, align 8
  store i32* %90, i32** %5, align 8
  br label %109

91:                                               ; preds = %76, %69, %59
  %92 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i32 0, i32 0
  %94 = load %struct.TYPE_9__*, %struct.TYPE_9__** %93, align 8
  store %struct.TYPE_9__* %94, %struct.TYPE_9__** %11, align 8
  br label %56

95:                                               ; preds = %56
  %96 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %108

100:                                              ; preds = %95
  %101 = load i32, i32* %12, align 4
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %108

103:                                              ; preds = %100
  %104 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %105 = load i32*, i32** %7, align 8
  %106 = load i32*, i32** %8, align 8
  %107 = call i32 @xsltInitDocKeyTable(%struct.TYPE_8__* %104, i32* %105, i32* %106)
  store i32 1, i32* %12, align 4
  br label %49

108:                                              ; preds = %100, %95
  store i32* null, i32** %5, align 8
  br label %109

109:                                              ; preds = %108, %83, %46, %26
  %110 = load i32*, i32** %5, align 8
  ret i32* %110
}

declare dso_local i64 @xsltInitAllDocKeys(%struct.TYPE_8__*) #1

declare dso_local i64 @xmlStrEqual(i32*, i32*) #1

declare dso_local i64 @xmlHashLookup(i32, i32*) #1

declare dso_local i32 @xsltInitDocKeyTable(%struct.TYPE_8__*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
