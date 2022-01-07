; ModuleID = '/home/carl/AnghaBench/memcached/extr_crawler.c_crawler_expired_finalize.c'
source_filename = "/home/carl/AnghaBench/memcached/extr_crawler.c_crawler_expired_finalize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }
%struct.crawler_expired_data = type { i32, i32, i32, i32 }

@current_time = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*)* @crawler_expired_finalize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @crawler_expired_finalize(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca %struct.crawler_expired_data*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %4 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = inttoptr i64 %6 to %struct.crawler_expired_data*
  store %struct.crawler_expired_data* %7, %struct.crawler_expired_data** %3, align 8
  %8 = load %struct.crawler_expired_data*, %struct.crawler_expired_data** %3, align 8
  %9 = getelementptr inbounds %struct.crawler_expired_data, %struct.crawler_expired_data* %8, i32 0, i32 2
  %10 = call i32 @pthread_mutex_lock(i32* %9)
  %11 = load i32, i32* @current_time, align 4
  %12 = load %struct.crawler_expired_data*, %struct.crawler_expired_data** %3, align 8
  %13 = getelementptr inbounds %struct.crawler_expired_data, %struct.crawler_expired_data* %12, i32 0, i32 3
  store i32 %11, i32* %13, align 4
  %14 = load %struct.crawler_expired_data*, %struct.crawler_expired_data** %3, align 8
  %15 = getelementptr inbounds %struct.crawler_expired_data, %struct.crawler_expired_data* %14, i32 0, i32 0
  store i32 1, i32* %15, align 4
  %16 = load %struct.crawler_expired_data*, %struct.crawler_expired_data** %3, align 8
  %17 = getelementptr inbounds %struct.crawler_expired_data, %struct.crawler_expired_data* %16, i32 0, i32 2
  %18 = call i32 @pthread_mutex_unlock(i32* %17)
  %19 = load %struct.crawler_expired_data*, %struct.crawler_expired_data** %3, align 8
  %20 = getelementptr inbounds %struct.crawler_expired_data, %struct.crawler_expired_data* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %1
  %24 = load %struct.crawler_expired_data*, %struct.crawler_expired_data** %3, align 8
  %25 = call i32 @free(%struct.crawler_expired_data* %24)
  br label %26

26:                                               ; preds = %23, %1
  ret void
}

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

declare dso_local i32 @free(%struct.crawler_expired_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
