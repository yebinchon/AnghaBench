; ModuleID = '/home/carl/AnghaBench/netdata/database/engine/extr_rrdenglocking.c_rrdeng_create_pg_cache_descr.c'
source_filename = "/home/carl/AnghaBench/netdata/database/engine/extr_rrdenglocking.c_rrdeng_create_pg_cache_descr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page_cache_descr = type { i32, i32, i64, i64, i32*, i32, i64, i32* }
%struct.rrdengine_instance = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.page_cache_descr* @rrdeng_create_pg_cache_descr(%struct.rrdengine_instance* %0) #0 {
  %2 = alloca %struct.rrdengine_instance*, align 8
  %3 = alloca %struct.page_cache_descr*, align 8
  store %struct.rrdengine_instance* %0, %struct.rrdengine_instance** %2, align 8
  %4 = call %struct.page_cache_descr* @mallocz(i32 56)
  store %struct.page_cache_descr* %4, %struct.page_cache_descr** %3, align 8
  %5 = load %struct.rrdengine_instance*, %struct.rrdengine_instance** %2, align 8
  %6 = getelementptr inbounds %struct.rrdengine_instance, %struct.rrdengine_instance* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = call i32 @rrd_stat_atomic_add(i32* %7, i32 1)
  %9 = load %struct.page_cache_descr*, %struct.page_cache_descr** %3, align 8
  %10 = getelementptr inbounds %struct.page_cache_descr, %struct.page_cache_descr* %9, i32 0, i32 7
  store i32* null, i32** %10, align 8
  %11 = load %struct.page_cache_descr*, %struct.page_cache_descr** %3, align 8
  %12 = getelementptr inbounds %struct.page_cache_descr, %struct.page_cache_descr* %11, i32 0, i32 6
  store i64 0, i64* %12, align 8
  %13 = load %struct.page_cache_descr*, %struct.page_cache_descr** %3, align 8
  %14 = getelementptr inbounds %struct.page_cache_descr, %struct.page_cache_descr* %13, i32 0, i32 4
  store i32* null, i32** %14, align 8
  %15 = load %struct.page_cache_descr*, %struct.page_cache_descr** %3, align 8
  %16 = getelementptr inbounds %struct.page_cache_descr, %struct.page_cache_descr* %15, i32 0, i32 5
  store i32 0, i32* %16, align 8
  %17 = load %struct.page_cache_descr*, %struct.page_cache_descr** %3, align 8
  %18 = getelementptr inbounds %struct.page_cache_descr, %struct.page_cache_descr* %17, i32 0, i32 3
  store i64 0, i64* %18, align 8
  %19 = load %struct.page_cache_descr*, %struct.page_cache_descr** %3, align 8
  %20 = getelementptr inbounds %struct.page_cache_descr, %struct.page_cache_descr* %19, i32 0, i32 2
  store i64 0, i64* %20, align 8
  %21 = load %struct.page_cache_descr*, %struct.page_cache_descr** %3, align 8
  %22 = getelementptr inbounds %struct.page_cache_descr, %struct.page_cache_descr* %21, i32 0, i32 1
  %23 = call i64 @uv_cond_init(i32* %22)
  %24 = icmp eq i64 0, %23
  %25 = zext i1 %24 to i32
  %26 = call i32 @assert(i32 %25)
  %27 = load %struct.page_cache_descr*, %struct.page_cache_descr** %3, align 8
  %28 = getelementptr inbounds %struct.page_cache_descr, %struct.page_cache_descr* %27, i32 0, i32 0
  %29 = call i64 @uv_mutex_init(i32* %28)
  %30 = icmp eq i64 0, %29
  %31 = zext i1 %30 to i32
  %32 = call i32 @assert(i32 %31)
  %33 = load %struct.page_cache_descr*, %struct.page_cache_descr** %3, align 8
  ret %struct.page_cache_descr* %33
}

declare dso_local %struct.page_cache_descr* @mallocz(i32) #1

declare dso_local i32 @rrd_stat_atomic_add(i32*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @uv_cond_init(i32*) #1

declare dso_local i64 @uv_mutex_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
