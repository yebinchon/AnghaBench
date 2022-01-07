; ModuleID = '/home/carl/AnghaBench/memcached/extr_thread.c_cqi_new.c'
source_filename = "/home/carl/AnghaBench/memcached/extr_thread.c_cqi_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_6__* }
%struct.TYPE_7__ = type { i32 }

@cqi_freelist_lock = common dso_local global i32 0, align 4
@cqi_freelist = common dso_local global %struct.TYPE_6__* null, align 8
@ITEMS_PER_ALLOC = common dso_local global i32 0, align 4
@stats = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_6__* ()* @cqi_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_6__* @cqi_new() #0 {
  %1 = alloca %struct.TYPE_6__*, align 8
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca i32, align 4
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %2, align 8
  %4 = call i32 @pthread_mutex_lock(i32* @cqi_freelist_lock)
  %5 = load %struct.TYPE_6__*, %struct.TYPE_6__** @cqi_freelist, align 8
  %6 = icmp ne %struct.TYPE_6__* %5, null
  br i1 %6, label %7, label %12

7:                                                ; preds = %0
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** @cqi_freelist, align 8
  store %struct.TYPE_6__* %8, %struct.TYPE_6__** %2, align 8
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  store %struct.TYPE_6__* %11, %struct.TYPE_6__** @cqi_freelist, align 8
  br label %12

12:                                               ; preds = %7, %0
  %13 = call i32 @pthread_mutex_unlock(i32* @cqi_freelist_lock)
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %15 = icmp eq %struct.TYPE_6__* null, %14
  br i1 %15, label %16, label %60

16:                                               ; preds = %12
  %17 = load i32, i32* @ITEMS_PER_ALLOC, align 4
  %18 = sext i32 %17 to i64
  %19 = mul i64 8, %18
  %20 = trunc i64 %19 to i32
  %21 = call %struct.TYPE_6__* @malloc(i32 %20)
  store %struct.TYPE_6__* %21, %struct.TYPE_6__** %2, align 8
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %23 = icmp eq %struct.TYPE_6__* null, %22
  br i1 %23, label %24, label %29

24:                                               ; preds = %16
  %25 = call i32 (...) @STATS_LOCK()
  %26 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @stats, i32 0, i32 0), align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @stats, i32 0, i32 0), align 4
  %28 = call i32 (...) @STATS_UNLOCK()
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %1, align 8
  br label %62

29:                                               ; preds = %16
  store i32 2, i32* %3, align 4
  br label %30

30:                                               ; preds = %45, %29
  %31 = load i32, i32* %3, align 4
  %32 = load i32, i32* @ITEMS_PER_ALLOC, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %48

34:                                               ; preds = %30
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %36 = load i32, i32* %3, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i64 %37
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %40 = load i32, i32* %3, align 4
  %41 = sub nsw i32 %40, 1
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  store %struct.TYPE_6__* %38, %struct.TYPE_6__** %44, align 8
  br label %45

45:                                               ; preds = %34
  %46 = load i32, i32* %3, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %3, align 4
  br label %30

48:                                               ; preds = %30
  %49 = call i32 @pthread_mutex_lock(i32* @cqi_freelist_lock)
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** @cqi_freelist, align 8
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %52 = load i32, i32* @ITEMS_PER_ALLOC, align 4
  %53 = sub nsw i32 %52, 1
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  store %struct.TYPE_6__* %50, %struct.TYPE_6__** %56, align 8
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i64 1
  store %struct.TYPE_6__* %58, %struct.TYPE_6__** @cqi_freelist, align 8
  %59 = call i32 @pthread_mutex_unlock(i32* @cqi_freelist_lock)
  br label %60

60:                                               ; preds = %48, %12
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  store %struct.TYPE_6__* %61, %struct.TYPE_6__** %1, align 8
  br label %62

62:                                               ; preds = %60, %24
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  ret %struct.TYPE_6__* %63
}

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

declare dso_local %struct.TYPE_6__* @malloc(i32) #1

declare dso_local i32 @STATS_LOCK(...) #1

declare dso_local i32 @STATS_UNLOCK(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
