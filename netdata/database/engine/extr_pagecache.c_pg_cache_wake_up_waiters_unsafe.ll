; ModuleID = '/home/carl/AnghaBench/netdata/database/engine/extr_pagecache.c_pg_cache_wake_up_waiters_unsafe.c'
source_filename = "/home/carl/AnghaBench/netdata/database/engine/extr_pagecache.c_pg_cache_wake_up_waiters_unsafe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rrdeng_page_descr = type { %struct.page_cache_descr* }
%struct.page_cache_descr = type { i32, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pg_cache_wake_up_waiters_unsafe(%struct.rrdeng_page_descr* %0) #0 {
  %2 = alloca %struct.rrdeng_page_descr*, align 8
  %3 = alloca %struct.page_cache_descr*, align 8
  store %struct.rrdeng_page_descr* %0, %struct.rrdeng_page_descr** %2, align 8
  %4 = load %struct.rrdeng_page_descr*, %struct.rrdeng_page_descr** %2, align 8
  %5 = getelementptr inbounds %struct.rrdeng_page_descr, %struct.rrdeng_page_descr* %4, i32 0, i32 0
  %6 = load %struct.page_cache_descr*, %struct.page_cache_descr** %5, align 8
  store %struct.page_cache_descr* %6, %struct.page_cache_descr** %3, align 8
  %7 = load %struct.page_cache_descr*, %struct.page_cache_descr** %3, align 8
  %8 = getelementptr inbounds %struct.page_cache_descr, %struct.page_cache_descr* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %1
  %12 = load %struct.page_cache_descr*, %struct.page_cache_descr** %3, align 8
  %13 = getelementptr inbounds %struct.page_cache_descr, %struct.page_cache_descr* %12, i32 0, i32 0
  %14 = call i32 @uv_cond_broadcast(i32* %13)
  br label %15

15:                                               ; preds = %11, %1
  ret void
}

declare dso_local i32 @uv_cond_broadcast(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
