; ModuleID = '/home/carl/AnghaBench/reactos/dll/opengl/glu32/src/libtess/extr_mesh.c___gl_meshConnect.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/opengl/glu32/src/libtess/extr_mesh.c___gl_meshConnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_14__*, i32, i32, %struct.TYPE_13__*, %struct.TYPE_13__* }
%struct.TYPE_14__ = type { %struct.TYPE_13__* }

@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_13__* @__gl_meshConnect(%struct.TYPE_13__* %0, %struct.TYPE_13__* %1) #0 {
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca i32*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %4, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %5, align 8
  %10 = load i32, i32* @FALSE, align 4
  store i32 %10, i32* %7, align 4
  %11 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %12 = call %struct.TYPE_13__* @MakeEdge(%struct.TYPE_13__* %11)
  store %struct.TYPE_13__* %12, %struct.TYPE_13__** %8, align 8
  %13 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %14 = icmp eq %struct.TYPE_13__* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %3, align 8
  br label %83

16:                                               ; preds = %2
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %18 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i32 0, i32 4
  %19 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  store %struct.TYPE_13__* %19, %struct.TYPE_13__** %6, align 8
  %20 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_14__*, %struct.TYPE_14__** %21, align 8
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_14__*, %struct.TYPE_14__** %24, align 8
  %26 = icmp ne %struct.TYPE_14__* %22, %25
  br i1 %26, label %27, label %36

27:                                               ; preds = %16
  %28 = load i32, i32* @TRUE, align 4
  store i32 %28, i32* %7, align 4
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_14__*, %struct.TYPE_14__** %30, align 8
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_14__*, %struct.TYPE_14__** %33, align 8
  %35 = call i32 @KillFace(%struct.TYPE_14__* %31, %struct.TYPE_14__* %34)
  br label %36

36:                                               ; preds = %27, %16
  %37 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i32 0, i32 3
  %40 = load %struct.TYPE_13__*, %struct.TYPE_13__** %39, align 8
  %41 = call i32 @Splice(%struct.TYPE_13__* %37, %struct.TYPE_13__* %40)
  %42 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %43 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %44 = call i32 @Splice(%struct.TYPE_13__* %42, %struct.TYPE_13__* %43)
  %45 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 8
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 8
  %55 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_14__*, %struct.TYPE_14__** %56, align 8
  %58 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %58, i32 0, i32 0
  store %struct.TYPE_14__* %57, %struct.TYPE_14__** %59, align 8
  %60 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %60, i32 0, i32 0
  store %struct.TYPE_14__* %57, %struct.TYPE_14__** %61, align 8
  %62 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %63, i32 0, i32 0
  %65 = load %struct.TYPE_14__*, %struct.TYPE_14__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %65, i32 0, i32 0
  store %struct.TYPE_13__* %62, %struct.TYPE_13__** %66, align 8
  %67 = load i32, i32* %7, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %81, label %69

69:                                               ; preds = %36
  %70 = call i32* (...) @allocFace()
  store i32* %70, i32** %9, align 8
  %71 = load i32*, i32** %9, align 8
  %72 = icmp eq i32* %71, null
  br i1 %72, label %73, label %74

73:                                               ; preds = %69
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %3, align 8
  br label %83

74:                                               ; preds = %69
  %75 = load i32*, i32** %9, align 8
  %76 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %77 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %77, i32 0, i32 0
  %79 = load %struct.TYPE_14__*, %struct.TYPE_14__** %78, align 8
  %80 = call i32 @MakeFace(i32* %75, %struct.TYPE_13__* %76, %struct.TYPE_14__* %79)
  br label %81

81:                                               ; preds = %74, %36
  %82 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  store %struct.TYPE_13__* %82, %struct.TYPE_13__** %3, align 8
  br label %83

83:                                               ; preds = %81, %73, %15
  %84 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  ret %struct.TYPE_13__* %84
}

declare dso_local %struct.TYPE_13__* @MakeEdge(%struct.TYPE_13__*) #1

declare dso_local i32 @KillFace(%struct.TYPE_14__*, %struct.TYPE_14__*) #1

declare dso_local i32 @Splice(%struct.TYPE_13__*, %struct.TYPE_13__*) #1

declare dso_local i32* @allocFace(...) #1

declare dso_local i32 @MakeFace(i32*, %struct.TYPE_13__*, %struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
