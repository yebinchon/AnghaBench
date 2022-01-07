; ModuleID = '/home/carl/AnghaBench/reactos/dll/opengl/glu32/src/libtess/extr_mesh.c___gl_meshSplice.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/opengl/glu32/src/libtess/extr_mesh.c___gl_meshSplice.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_16__*, %struct.TYPE_15__* }
%struct.TYPE_16__ = type { %struct.TYPE_14__* }
%struct.TYPE_15__ = type { %struct.TYPE_14__* }

@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__gl_meshSplice(%struct.TYPE_14__* %0, %struct.TYPE_14__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %4, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %5, align 8
  %10 = load i32, i32* @FALSE, align 4
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* @FALSE, align 4
  store i32 %11, i32* %7, align 4
  %12 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %13 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %14 = icmp eq %struct.TYPE_14__* %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %94

16:                                               ; preds = %2
  %17 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %17, i32 0, i32 1
  %19 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %20, i32 0, i32 1
  %22 = load %struct.TYPE_15__*, %struct.TYPE_15__** %21, align 8
  %23 = icmp ne %struct.TYPE_15__* %19, %22
  br i1 %23, label %24, label %33

24:                                               ; preds = %16
  %25 = load i32, i32* @TRUE, align 4
  store i32 %25, i32* %7, align 4
  %26 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %26, i32 0, i32 1
  %28 = load %struct.TYPE_15__*, %struct.TYPE_15__** %27, align 8
  %29 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %29, i32 0, i32 1
  %31 = load %struct.TYPE_15__*, %struct.TYPE_15__** %30, align 8
  %32 = call i32 @KillVertex(%struct.TYPE_15__* %28, %struct.TYPE_15__* %31)
  br label %33

33:                                               ; preds = %24, %16
  %34 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_16__*, %struct.TYPE_16__** %35, align 8
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_16__*, %struct.TYPE_16__** %38, align 8
  %40 = icmp ne %struct.TYPE_16__* %36, %39
  br i1 %40, label %41, label %50

41:                                               ; preds = %33
  %42 = load i32, i32* @TRUE, align 4
  store i32 %42, i32* %6, align 4
  %43 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_16__*, %struct.TYPE_16__** %44, align 8
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_16__*, %struct.TYPE_16__** %47, align 8
  %49 = call i32 @KillFace(%struct.TYPE_16__* %45, %struct.TYPE_16__* %48)
  br label %50

50:                                               ; preds = %41, %33
  %51 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %52 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %53 = call i32 @Splice(%struct.TYPE_14__* %51, %struct.TYPE_14__* %52)
  %54 = load i32, i32* %7, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %73, label %56

56:                                               ; preds = %50
  %57 = call i32* (...) @allocVertex()
  store i32* %57, i32** %8, align 8
  %58 = load i32*, i32** %8, align 8
  %59 = icmp eq i32* %58, null
  br i1 %59, label %60, label %61

60:                                               ; preds = %56
  store i32 0, i32* %3, align 4
  br label %94

61:                                               ; preds = %56
  %62 = load i32*, i32** %8, align 8
  %63 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %64 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %64, i32 0, i32 1
  %66 = load %struct.TYPE_15__*, %struct.TYPE_15__** %65, align 8
  %67 = call i32 @MakeVertex(i32* %62, %struct.TYPE_14__* %63, %struct.TYPE_15__* %66)
  %68 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %69 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %69, i32 0, i32 1
  %71 = load %struct.TYPE_15__*, %struct.TYPE_15__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %71, i32 0, i32 0
  store %struct.TYPE_14__* %68, %struct.TYPE_14__** %72, align 8
  br label %73

73:                                               ; preds = %61, %50
  %74 = load i32, i32* %6, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %93, label %76

76:                                               ; preds = %73
  %77 = call i32* (...) @allocFace()
  store i32* %77, i32** %9, align 8
  %78 = load i32*, i32** %9, align 8
  %79 = icmp eq i32* %78, null
  br i1 %79, label %80, label %81

80:                                               ; preds = %76
  store i32 0, i32* %3, align 4
  br label %94

81:                                               ; preds = %76
  %82 = load i32*, i32** %9, align 8
  %83 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %84 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %84, i32 0, i32 0
  %86 = load %struct.TYPE_16__*, %struct.TYPE_16__** %85, align 8
  %87 = call i32 @MakeFace(i32* %82, %struct.TYPE_14__* %83, %struct.TYPE_16__* %86)
  %88 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %89 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %89, i32 0, i32 0
  %91 = load %struct.TYPE_16__*, %struct.TYPE_16__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %91, i32 0, i32 0
  store %struct.TYPE_14__* %88, %struct.TYPE_14__** %92, align 8
  br label %93

93:                                               ; preds = %81, %73
  store i32 1, i32* %3, align 4
  br label %94

94:                                               ; preds = %93, %80, %60, %15
  %95 = load i32, i32* %3, align 4
  ret i32 %95
}

declare dso_local i32 @KillVertex(%struct.TYPE_15__*, %struct.TYPE_15__*) #1

declare dso_local i32 @KillFace(%struct.TYPE_16__*, %struct.TYPE_16__*) #1

declare dso_local i32 @Splice(%struct.TYPE_14__*, %struct.TYPE_14__*) #1

declare dso_local i32* @allocVertex(...) #1

declare dso_local i32 @MakeVertex(i32*, %struct.TYPE_14__*, %struct.TYPE_15__*) #1

declare dso_local i32* @allocFace(...) #1

declare dso_local i32 @MakeFace(i32*, %struct.TYPE_14__*, %struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
