; ModuleID = '/home/carl/AnghaBench/memcached/extr_crawler.c_crawler_expired_doneclass.c'
source_filename = "/home/carl/AnghaBench/memcached/extr_crawler.c_crawler_expired_doneclass.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 }
%struct.crawler_expired_data = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32 }

@current_time = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, i32)* @crawler_expired_doneclass to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @crawler_expired_doneclass(%struct.TYPE_5__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.crawler_expired_data*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = inttoptr i64 %8 to %struct.crawler_expired_data*
  store %struct.crawler_expired_data* %9, %struct.crawler_expired_data** %5, align 8
  %10 = load %struct.crawler_expired_data*, %struct.crawler_expired_data** %5, align 8
  %11 = getelementptr inbounds %struct.crawler_expired_data, %struct.crawler_expired_data* %10, i32 0, i32 0
  %12 = call i32 @pthread_mutex_lock(i32* %11)
  %13 = load i32, i32* @current_time, align 4
  %14 = load %struct.crawler_expired_data*, %struct.crawler_expired_data** %5, align 8
  %15 = getelementptr inbounds %struct.crawler_expired_data, %struct.crawler_expired_data* %14, i32 0, i32 1
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = load i32, i32* %4, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  store i32 %13, i32* %20, align 4
  %21 = load %struct.crawler_expired_data*, %struct.crawler_expired_data** %5, align 8
  %22 = getelementptr inbounds %struct.crawler_expired_data, %struct.crawler_expired_data* %21, i32 0, i32 1
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = load i32, i32* %4, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  store i32 1, i32* %27, align 4
  %28 = load %struct.crawler_expired_data*, %struct.crawler_expired_data** %5, align 8
  %29 = getelementptr inbounds %struct.crawler_expired_data, %struct.crawler_expired_data* %28, i32 0, i32 0
  %30 = call i32 @pthread_mutex_unlock(i32* %29)
  ret void
}

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
