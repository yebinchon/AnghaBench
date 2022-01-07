; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/w32-pthreads/extr_pthread_mutex_consistent.c_ptw32_robust_mutex_remove.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/w32-pthreads/extr_pthread_mutex_consistent.c_ptw32_robust_mutex_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_8__, %struct.TYPE_11__* }
%struct.TYPE_8__ = type { %struct.TYPE_10__* }
%struct.TYPE_11__ = type { %struct.TYPE_11__*, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_11__* }
%struct.TYPE_10__ = type { %struct.TYPE_11__* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ptw32_robust_mutex_remove(%struct.TYPE_12__** %0, %struct.TYPE_10__* %1) #0 {
  %3 = alloca %struct.TYPE_12__**, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca %struct.TYPE_11__**, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_12__** %0, %struct.TYPE_12__*** %3, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %4, align 8
  %8 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %3, align 8
  %9 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  store %struct.TYPE_12__* %9, %struct.TYPE_12__** %6, align 8
  %10 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %11 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 1
  %12 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  store %struct.TYPE_11__* %12, %struct.TYPE_11__** %7, align 8
  %13 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 0
  store %struct.TYPE_11__** %17, %struct.TYPE_11__*** %5, align 8
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  store %struct.TYPE_10__* %18, %struct.TYPE_10__** %21, align 8
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %23, align 8
  %25 = icmp ne %struct.TYPE_11__* %24, null
  br i1 %25, label %26, label %34

26:                                               ; preds = %2
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 1
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %28, align 8
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 1
  store %struct.TYPE_9__* %29, %struct.TYPE_9__** %33, align 8
  br label %34

34:                                               ; preds = %26, %2
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 1
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %36, align 8
  %38 = icmp ne %struct.TYPE_9__* %37, null
  br i1 %38, label %39, label %47

39:                                               ; preds = %34
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %41, align 8
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 1
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 0
  store %struct.TYPE_11__* %42, %struct.TYPE_11__** %46, align 8
  br label %47

47:                                               ; preds = %39, %34
  %48 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %5, align 8
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %48, align 8
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %51 = icmp eq %struct.TYPE_11__* %49, %50
  br i1 %51, label %52, label %57

52:                                               ; preds = %47
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %54, align 8
  %56 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %5, align 8
  store %struct.TYPE_11__* %55, %struct.TYPE_11__** %56, align 8
  br label %57

57:                                               ; preds = %52, %47
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
