; ModuleID = '/home/carl/AnghaBench/lwan/src/lib/extr_lwan-mod-serve-files.c_mmap_free.c'
source_filename = "/home/carl/AnghaBench/lwan/src/lib/extr_lwan-mod-serve-files.c_mmap_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file_cache_entry = type { %struct.mmap_cache_data }
%struct.mmap_cache_data = type { %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.file_cache_entry*)* @mmap_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mmap_free(%struct.file_cache_entry* %0) #0 {
  %2 = alloca %struct.file_cache_entry*, align 8
  %3 = alloca %struct.mmap_cache_data*, align 8
  store %struct.file_cache_entry* %0, %struct.file_cache_entry** %2, align 8
  %4 = load %struct.file_cache_entry*, %struct.file_cache_entry** %2, align 8
  %5 = getelementptr inbounds %struct.file_cache_entry, %struct.file_cache_entry* %4, i32 0, i32 0
  store %struct.mmap_cache_data* %5, %struct.mmap_cache_data** %3, align 8
  %6 = load %struct.mmap_cache_data*, %struct.mmap_cache_data** %3, align 8
  %7 = getelementptr inbounds %struct.mmap_cache_data, %struct.mmap_cache_data* %6, i32 0, i32 3
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.mmap_cache_data*, %struct.mmap_cache_data** %3, align 8
  %11 = getelementptr inbounds %struct.mmap_cache_data, %struct.mmap_cache_data* %10, i32 0, i32 3
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @munmap(i32 %9, i32 %13)
  %15 = load %struct.mmap_cache_data*, %struct.mmap_cache_data** %3, align 8
  %16 = getelementptr inbounds %struct.mmap_cache_data, %struct.mmap_cache_data* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @free(i32 %18)
  ret void
}

declare dso_local i32 @munmap(i32, i32) #1

declare dso_local i32 @free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
