; ModuleID = '/home/carl/AnghaBench/netdata/database/engine/extr_pagecache.c_init_committed_page_index.c'
source_filename = "/home/carl/AnghaBench/netdata/database/engine/extr_pagecache.c_init_committed_page_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rrdengine_instance = type { %struct.page_cache }
%struct.page_cache = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rrdengine_instance*)* @init_committed_page_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_committed_page_index(%struct.rrdengine_instance* %0) #0 {
  %2 = alloca %struct.rrdengine_instance*, align 8
  %3 = alloca %struct.page_cache*, align 8
  store %struct.rrdengine_instance* %0, %struct.rrdengine_instance** %2, align 8
  %4 = load %struct.rrdengine_instance*, %struct.rrdengine_instance** %2, align 8
  %5 = getelementptr inbounds %struct.rrdengine_instance, %struct.rrdengine_instance* %4, i32 0, i32 0
  store %struct.page_cache* %5, %struct.page_cache** %3, align 8
  %6 = load %struct.page_cache*, %struct.page_cache** %3, align 8
  %7 = getelementptr inbounds %struct.page_cache, %struct.page_cache* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 3
  store i64 0, i64* %8, align 8
  %9 = load %struct.page_cache*, %struct.page_cache** %3, align 8
  %10 = getelementptr inbounds %struct.page_cache, %struct.page_cache* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 2
  %12 = call i64 @uv_rwlock_init(i32* %11)
  %13 = icmp eq i64 0, %12
  %14 = zext i1 %13 to i32
  %15 = call i32 @assert(i32 %14)
  %16 = load %struct.page_cache*, %struct.page_cache** %3, align 8
  %17 = getelementptr inbounds %struct.page_cache, %struct.page_cache* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  store i64 0, i64* %18, align 8
  %19 = load %struct.page_cache*, %struct.page_cache** %3, align 8
  %20 = getelementptr inbounds %struct.page_cache, %struct.page_cache* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  store i64 0, i64* %21, align 8
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @uv_rwlock_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
