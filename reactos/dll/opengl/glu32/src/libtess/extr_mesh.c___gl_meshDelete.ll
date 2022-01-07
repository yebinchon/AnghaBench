; ModuleID = '/home/carl/AnghaBench/reactos/dll/opengl/glu32/src/libtess/extr_mesh.c___gl_meshDelete.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/opengl/glu32/src/libtess/extr_mesh.c___gl_meshDelete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, %struct.TYPE_10__*, %struct.TYPE_12__*, %struct.TYPE_11__*, %struct.TYPE_11__*, %struct.TYPE_10__* }
%struct.TYPE_12__ = type { %struct.TYPE_10__* }
%struct.TYPE_11__ = type { i32 }

@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__gl_meshDelete(%struct.TYPE_10__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  %7 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 5
  %9 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  store %struct.TYPE_10__* %9, %struct.TYPE_10__** %4, align 8
  %10 = load i32, i32* @FALSE, align 4
  store i32 %10, i32* %5, align 4
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 3
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 4
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %17 = icmp ne %struct.TYPE_11__* %13, %16
  br i1 %17, label %18, label %27

18:                                               ; preds = %1
  %19 = load i32, i32* @TRUE, align 4
  store i32 %19, i32* %5, align 4
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 3
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %21, align 8
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 4
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %24, align 8
  %26 = call i32 @KillFace(%struct.TYPE_11__* %22, %struct.TYPE_11__* %25)
  br label %27

27:                                               ; preds = %18, %1
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 1
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %29, align 8
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %32 = icmp eq %struct.TYPE_10__* %30, %31
  br i1 %32, label %33, label %38

33:                                               ; preds = %27
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 2
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %35, align 8
  %37 = call i32 @KillVertex(%struct.TYPE_12__* %36, i32* null)
  br label %73

38:                                               ; preds = %27
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 4
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 0
  store i32 %41, i32* %45, align 4
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 1
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %47, align 8
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 2
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i32 0, i32 0
  store %struct.TYPE_10__* %48, %struct.TYPE_10__** %52, align 8
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @Splice(%struct.TYPE_10__* %53, i32 %56)
  %58 = load i32, i32* %5, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %72, label %60

60:                                               ; preds = %38
  %61 = call i32* (...) @allocFace()
  store i32* %61, i32** %6, align 8
  %62 = load i32*, i32** %6, align 8
  %63 = icmp eq i32* %62, null
  br i1 %63, label %64, label %65

64:                                               ; preds = %60
  store i32 0, i32* %2, align 4
  br label %111

65:                                               ; preds = %60
  %66 = load i32*, i32** %6, align 8
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 3
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %69, align 8
  %71 = call i32 @MakeFace(i32* %66, %struct.TYPE_10__* %67, %struct.TYPE_11__* %70)
  br label %72

72:                                               ; preds = %65, %38
  br label %73

73:                                               ; preds = %72, %33
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 1
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %75, align 8
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %78 = icmp eq %struct.TYPE_10__* %76, %77
  br i1 %78, label %79, label %88

79:                                               ; preds = %73
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 2
  %82 = load %struct.TYPE_12__*, %struct.TYPE_12__** %81, align 8
  %83 = call i32 @KillVertex(%struct.TYPE_12__* %82, i32* null)
  %84 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 3
  %86 = load %struct.TYPE_11__*, %struct.TYPE_11__** %85, align 8
  %87 = call i32 @KillFace(%struct.TYPE_11__* %86, %struct.TYPE_11__* null)
  br label %108

88:                                               ; preds = %73
  %89 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i32 0, i32 3
  %94 = load %struct.TYPE_11__*, %struct.TYPE_11__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %94, i32 0, i32 0
  store i32 %91, i32* %95, align 4
  %96 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i32 0, i32 1
  %98 = load %struct.TYPE_10__*, %struct.TYPE_10__** %97, align 8
  %99 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i32 0, i32 2
  %101 = load %struct.TYPE_12__*, %struct.TYPE_12__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %101, i32 0, i32 0
  store %struct.TYPE_10__* %98, %struct.TYPE_10__** %102, align 8
  %103 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %104 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = call i32 @Splice(%struct.TYPE_10__* %103, i32 %106)
  br label %108

108:                                              ; preds = %88, %79
  %109 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %110 = call i32 @KillEdge(%struct.TYPE_10__* %109)
  store i32 1, i32* %2, align 4
  br label %111

111:                                              ; preds = %108, %64
  %112 = load i32, i32* %2, align 4
  ret i32 %112
}

declare dso_local i32 @KillFace(%struct.TYPE_11__*, %struct.TYPE_11__*) #1

declare dso_local i32 @KillVertex(%struct.TYPE_12__*, i32*) #1

declare dso_local i32 @Splice(%struct.TYPE_10__*, i32) #1

declare dso_local i32* @allocFace(...) #1

declare dso_local i32 @MakeFace(i32*, %struct.TYPE_10__*, %struct.TYPE_11__*) #1

declare dso_local i32 @KillEdge(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
