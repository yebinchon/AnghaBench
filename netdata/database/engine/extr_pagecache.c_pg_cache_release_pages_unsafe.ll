; ModuleID = '/home/carl/AnghaBench/netdata/database/engine/extr_pagecache.c_pg_cache_release_pages_unsafe.c'
source_filename = "/home/carl/AnghaBench/netdata/database/engine/extr_pagecache.c_pg_cache_release_pages_unsafe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rrdengine_instance = type { %struct.page_cache }
%struct.page_cache = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rrdengine_instance*, i32)* @pg_cache_release_pages_unsafe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pg_cache_release_pages_unsafe(%struct.rrdengine_instance* %0, i32 %1) #0 {
  %3 = alloca %struct.rrdengine_instance*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.page_cache*, align 8
  store %struct.rrdengine_instance* %0, %struct.rrdengine_instance** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.rrdengine_instance*, %struct.rrdengine_instance** %3, align 8
  %7 = getelementptr inbounds %struct.rrdengine_instance, %struct.rrdengine_instance* %6, i32 0, i32 0
  store %struct.page_cache* %7, %struct.page_cache** %5, align 8
  %8 = load i32, i32* %4, align 4
  %9 = load %struct.page_cache*, %struct.page_cache** %5, align 8
  %10 = getelementptr inbounds %struct.page_cache, %struct.page_cache* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = sub i32 %11, %8
  store i32 %12, i32* %10, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
