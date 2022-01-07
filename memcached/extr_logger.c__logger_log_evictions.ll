; ModuleID = '/home/carl/AnghaBench/memcached/extr_logger.c__logger_log_evictions.c'
source_filename = "/home/carl/AnghaBench/memcached/extr_logger.c__logger_log_evictions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i64 }
%struct.TYPE_8__ = type { i64, i64, i64, i32 }
%struct.logentry_eviction = type { i64, i64, i64, i32, i32, i32 }

@current_time = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, %struct.TYPE_8__*)* @_logger_log_evictions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_logger_log_evictions(%struct.TYPE_7__* %0, %struct.TYPE_8__* %1) #0 {
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca %struct.logentry_eviction*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %4, align 8
  %6 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = inttoptr i64 %8 to %struct.logentry_eviction*
  store %struct.logentry_eviction* %9, %struct.logentry_eviction** %5, align 8
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp sgt i64 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %2
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @current_time, align 8
  %19 = sub nsw i64 %17, %18
  br label %21

20:                                               ; preds = %2
  br label %21

21:                                               ; preds = %20, %14
  %22 = phi i64 [ %19, %14 ], [ -1, %20 ]
  %23 = load %struct.logentry_eviction*, %struct.logentry_eviction** %5, align 8
  %24 = getelementptr inbounds %struct.logentry_eviction, %struct.logentry_eviction* %23, i32 0, i32 0
  store i64 %22, i64* %24, align 8
  %25 = load i64, i64* @current_time, align 8
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = sub nsw i64 %25, %28
  %30 = load %struct.logentry_eviction*, %struct.logentry_eviction** %5, align 8
  %31 = getelementptr inbounds %struct.logentry_eviction, %struct.logentry_eviction* %30, i32 0, i32 1
  store i64 %29, i64* %31, align 8
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.logentry_eviction*, %struct.logentry_eviction** %5, align 8
  %36 = getelementptr inbounds %struct.logentry_eviction, %struct.logentry_eviction* %35, i32 0, i32 5
  store i32 %34, i32* %36, align 8
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.logentry_eviction*, %struct.logentry_eviction** %5, align 8
  %41 = getelementptr inbounds %struct.logentry_eviction, %struct.logentry_eviction* %40, i32 0, i32 2
  store i64 %39, i64* %41, align 8
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %43 = call i32 @ITEM_clsid(%struct.TYPE_8__* %42)
  %44 = load %struct.logentry_eviction*, %struct.logentry_eviction** %5, align 8
  %45 = getelementptr inbounds %struct.logentry_eviction, %struct.logentry_eviction* %44, i32 0, i32 4
  store i32 %43, i32* %45, align 4
  %46 = load %struct.logentry_eviction*, %struct.logentry_eviction** %5, align 8
  %47 = getelementptr inbounds %struct.logentry_eviction, %struct.logentry_eviction* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %50 = call i32 @ITEM_key(%struct.TYPE_8__* %49)
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = call i32 @memcpy(i32 %48, i32 %50, i64 %53)
  %55 = load %struct.logentry_eviction*, %struct.logentry_eviction** %5, align 8
  %56 = getelementptr inbounds %struct.logentry_eviction, %struct.logentry_eviction* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = add i64 40, %57
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 0
  store i64 %58, i64* %60, align 8
  ret void
}

declare dso_local i32 @ITEM_clsid(%struct.TYPE_8__*) #1

declare dso_local i32 @memcpy(i32, i32, i64) #1

declare dso_local i32 @ITEM_key(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
