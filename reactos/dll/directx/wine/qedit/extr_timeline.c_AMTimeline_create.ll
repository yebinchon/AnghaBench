; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/qedit/extr_timeline.c_AMTimeline_create.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/qedit/extr_timeline.c_AMTimeline_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32* }
%struct.TYPE_12__ = type { i32, %struct.TYPE_13__, %struct.TYPE_13__*, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32* }

@.str = private unnamed_addr constant [9 x i8] c"(%p,%p)\0A\00", align 1
@E_OUTOFMEMORY = common dso_local global i32 0, align 4
@timeline_vtbl = common dso_local global i32 0, align 4
@IAMTimeline_VTable = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @AMTimeline_create(%struct.TYPE_13__* %0, %struct.TYPE_13__** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca %struct.TYPE_13__**, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %4, align 8
  store %struct.TYPE_13__** %1, %struct.TYPE_13__*** %5, align 8
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %6, align 8
  %7 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %8 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %5, align 8
  %9 = call i32 @TRACE(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), %struct.TYPE_13__* %7, %struct.TYPE_13__** %8)
  %10 = call %struct.TYPE_12__* @CoTaskMemAlloc(i32 32)
  store %struct.TYPE_12__* %10, %struct.TYPE_12__** %6, align 8
  %11 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %12 = icmp eq %struct.TYPE_12__* null, %11
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %5, align 8
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %14, align 8
  %15 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %15, i32* %3, align 4
  br label %43

16:                                               ; preds = %2
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %18 = call i32 @ZeroMemory(%struct.TYPE_12__* %17, i32 32)
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 0
  store i32 1, i32* %20, align 8
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %22, i32 0, i32 0
  store i32* @timeline_vtbl, i32** %23, align 8
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 3
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 0
  store i32* @IAMTimeline_VTable, i32** %26, align 8
  %27 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %28 = icmp ne %struct.TYPE_13__* %27, null
  br i1 %28, label %29, label %33

29:                                               ; preds = %16
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 2
  store %struct.TYPE_13__* %30, %struct.TYPE_13__** %32, align 8
  br label %38

33:                                               ; preds = %16
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 1
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 2
  store %struct.TYPE_13__* %35, %struct.TYPE_13__** %37, align 8
  br label %38

38:                                               ; preds = %33, %29
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 1
  %41 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %5, align 8
  store %struct.TYPE_13__* %40, %struct.TYPE_13__** %41, align 8
  %42 = load i32, i32* @S_OK, align 4
  store i32 %42, i32* %3, align 4
  br label %43

43:                                               ; preds = %38, %13
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local i32 @TRACE(i8*, %struct.TYPE_13__*, %struct.TYPE_13__**) #1

declare dso_local %struct.TYPE_12__* @CoTaskMemAlloc(i32) #1

declare dso_local i32 @ZeroMemory(%struct.TYPE_12__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
