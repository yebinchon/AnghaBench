; ModuleID = '/home/carl/AnghaBench/reactos/dll/opengl/glu32/src/libtess/extr_mesh.c___gl_meshMakeEdge.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/opengl/glu32/src/libtess/extr_mesh.c___gl_meshMakeEdge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_9__* }
%struct.TYPE_8__ = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_9__* @__gl_meshMakeEdge(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_9__*, align 8
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  %8 = call i32* (...) @allocVertex()
  store i32* %8, i32** %4, align 8
  %9 = call i32* (...) @allocVertex()
  store i32* %9, i32** %5, align 8
  %10 = call i32* (...) @allocFace()
  store i32* %10, i32** %6, align 8
  %11 = load i32*, i32** %4, align 8
  %12 = icmp eq i32* %11, null
  br i1 %12, label %19, label %13

13:                                               ; preds = %1
  %14 = load i32*, i32** %5, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %13
  %17 = load i32*, i32** %6, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %19, label %38

19:                                               ; preds = %16, %13, %1
  %20 = load i32*, i32** %4, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %19
  %23 = load i32*, i32** %4, align 8
  %24 = call i32 @memFree(i32* %23)
  br label %25

25:                                               ; preds = %22, %19
  %26 = load i32*, i32** %5, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %28, label %31

28:                                               ; preds = %25
  %29 = load i32*, i32** %5, align 8
  %30 = call i32 @memFree(i32* %29)
  br label %31

31:                                               ; preds = %28, %25
  %32 = load i32*, i32** %6, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %34, label %37

34:                                               ; preds = %31
  %35 = load i32*, i32** %6, align 8
  %36 = call i32 @memFree(i32* %35)
  br label %37

37:                                               ; preds = %34, %31
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %2, align 8
  br label %70

38:                                               ; preds = %16
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 2
  %41 = call %struct.TYPE_9__* @MakeEdge(i32* %40)
  store %struct.TYPE_9__* %41, %struct.TYPE_9__** %7, align 8
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %43 = icmp eq %struct.TYPE_9__* %42, null
  br i1 %43, label %44, label %51

44:                                               ; preds = %38
  %45 = load i32*, i32** %4, align 8
  %46 = call i32 @memFree(i32* %45)
  %47 = load i32*, i32** %5, align 8
  %48 = call i32 @memFree(i32* %47)
  %49 = load i32*, i32** %6, align 8
  %50 = call i32 @memFree(i32* %49)
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %2, align 8
  br label %70

51:                                               ; preds = %38
  %52 = load i32*, i32** %4, align 8
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 1
  %56 = call i32 @MakeVertex(i32* %52, %struct.TYPE_9__* %53, i32* %55)
  %57 = load i32*, i32** %5, align 8
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %59, align 8
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 1
  %63 = call i32 @MakeVertex(i32* %57, %struct.TYPE_9__* %60, i32* %62)
  %64 = load i32*, i32** %6, align 8
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 0
  %68 = call i32 @MakeFace(i32* %64, %struct.TYPE_9__* %65, i32* %67)
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  store %struct.TYPE_9__* %69, %struct.TYPE_9__** %2, align 8
  br label %70

70:                                               ; preds = %51, %44, %37
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  ret %struct.TYPE_9__* %71
}

declare dso_local i32* @allocVertex(...) #1

declare dso_local i32* @allocFace(...) #1

declare dso_local i32 @memFree(i32*) #1

declare dso_local %struct.TYPE_9__* @MakeEdge(i32*) #1

declare dso_local i32 @MakeVertex(i32*, %struct.TYPE_9__*, i32*) #1

declare dso_local i32 @MakeFace(i32*, %struct.TYPE_9__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
