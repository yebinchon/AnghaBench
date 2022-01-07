; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/util/extr_profiler.c_profile_snapshot_create.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/util/extr_profiler.c_profile_snapshot_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32*, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i64, i32* }

@root_mutex = common dso_local global i32 0, align 4
@root_entries = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_9__* @profile_snapshot_create() #0 {
  %1 = alloca %struct.TYPE_9__*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = call %struct.TYPE_9__* @bzalloc(i32 16)
  store %struct.TYPE_9__* %4, %struct.TYPE_9__** %1, align 8
  %5 = call i32 @pthread_mutex_lock(i32* @root_mutex)
  %6 = load %struct.TYPE_9__*, %struct.TYPE_9__** %1, align 8
  %7 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 0
  %8 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @root_entries, i32 0, i32 0), align 8
  %9 = bitcast %struct.TYPE_11__* %7 to { i64, i32* }*
  %10 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %9, i32 0, i32 1
  %13 = load i32*, i32** %12, align 8
  %14 = call i32 @da_reserve(i64 %11, i32* %13, i64 %8)
  store i64 0, i64* %2, align 8
  br label %15

15:                                               ; preds = %46, %0
  %16 = load i64, i64* %2, align 8
  %17 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @root_entries, i32 0, i32 0), align 8
  %18 = icmp ult i64 %16, %17
  br i1 %18, label %19, label %49

19:                                               ; preds = %15
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @root_entries, i32 0, i32 1), align 8
  %21 = load i64, i64* %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = call i32 @pthread_mutex_lock(i32* %24)
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @root_entries, i32 0, i32 1), align 8
  %27 = load i64, i64* %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %1, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 0
  %33 = bitcast %struct.TYPE_11__* %32 to { i64, i32* }*
  %34 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %33, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = call i32 @da_push_back_new(i64 %35, i32* %37)
  %39 = call i32 @add_entry_to_snapshot(i32 %30, i32 %38)
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @root_entries, i32 0, i32 1), align 8
  %41 = load i64, i64* %2, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = call i32 @pthread_mutex_unlock(i32* %44)
  br label %46

46:                                               ; preds = %19
  %47 = load i64, i64* %2, align 8
  %48 = add i64 %47, 1
  store i64 %48, i64* %2, align 8
  br label %15

49:                                               ; preds = %15
  %50 = call i32 @pthread_mutex_unlock(i32* @root_mutex)
  store i64 0, i64* %3, align 8
  br label %51

51:                                               ; preds = %66, %49
  %52 = load i64, i64* %3, align 8
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %1, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp ult i64 %52, %56
  br i1 %57, label %58, label %69

58:                                               ; preds = %51
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %1, align 8
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 1
  %62 = load i32*, i32** %61, align 8
  %63 = load i64, i64* %3, align 8
  %64 = getelementptr inbounds i32, i32* %62, i64 %63
  %65 = call i32 @sort_snapshot_entry(i32* %64)
  br label %66

66:                                               ; preds = %58
  %67 = load i64, i64* %3, align 8
  %68 = add i64 %67, 1
  store i64 %68, i64* %3, align 8
  br label %51

69:                                               ; preds = %51
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %1, align 8
  ret %struct.TYPE_9__* %70
}

declare dso_local %struct.TYPE_9__* @bzalloc(i32) #1

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @da_reserve(i64, i32*, i64) #1

declare dso_local i32 @add_entry_to_snapshot(i32, i32) #1

declare dso_local i32 @da_push_back_new(i64, i32*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

declare dso_local i32 @sort_snapshot_entry(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
