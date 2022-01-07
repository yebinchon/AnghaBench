; ModuleID = '/home/carl/AnghaBench/reactos/dll/opengl/glu32/src/libtess/extr_sweep.c_TopLeftRegion.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/opengl/glu32/src/libtess/extr_sweep.c_TopLeftRegion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_11__*, i64 }
%struct.TYPE_11__ = type { i32, i32* }
%struct.TYPE_14__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_13__* (%struct.TYPE_13__*)* @TopLeftRegion to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_13__* @TopLeftRegion(%struct.TYPE_13__* %0) #0 {
  %2 = alloca %struct.TYPE_13__*, align 8
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %3, align 8
  %6 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 0
  %8 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 1
  %10 = load i32*, i32** %9, align 8
  store i32* %10, i32** %4, align 8
  br label %11

11:                                               ; preds = %14, %1
  %12 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %13 = call %struct.TYPE_13__* @RegionAbove(%struct.TYPE_13__* %12)
  store %struct.TYPE_13__* %13, %struct.TYPE_13__** %3, align 8
  br label %14

14:                                               ; preds = %11
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  %20 = load i32*, i32** %4, align 8
  %21 = icmp eq i32* %19, %20
  br i1 %21, label %11, label %22

22:                                               ; preds = %14
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %52

27:                                               ; preds = %22
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %29 = call %struct.TYPE_14__* @RegionBelow(%struct.TYPE_13__* %28)
  %30 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32* @__gl_meshConnect(i32 %33, i32 %38)
  store i32* %39, i32** %5, align 8
  %40 = load i32*, i32** %5, align 8
  %41 = icmp eq i32* %40, null
  br i1 %41, label %42, label %43

42:                                               ; preds = %27
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %2, align 8
  br label %54

43:                                               ; preds = %27
  %44 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %45 = load i32*, i32** %5, align 8
  %46 = call i32 @FixUpperEdge(%struct.TYPE_13__* %44, i32* %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %43
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %2, align 8
  br label %54

49:                                               ; preds = %43
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %51 = call %struct.TYPE_13__* @RegionAbove(%struct.TYPE_13__* %50)
  store %struct.TYPE_13__* %51, %struct.TYPE_13__** %3, align 8
  br label %52

52:                                               ; preds = %49, %22
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  store %struct.TYPE_13__* %53, %struct.TYPE_13__** %2, align 8
  br label %54

54:                                               ; preds = %52, %48, %42
  %55 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  ret %struct.TYPE_13__* %55
}

declare dso_local %struct.TYPE_13__* @RegionAbove(%struct.TYPE_13__*) #1

declare dso_local i32* @__gl_meshConnect(i32, i32) #1

declare dso_local %struct.TYPE_14__* @RegionBelow(%struct.TYPE_13__*) #1

declare dso_local i32 @FixUpperEdge(%struct.TYPE_13__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
