; ModuleID = '/home/carl/AnghaBench/lwan/src/lib/extr_lwan-mod-serve-files.c_dirlist_free.c'
source_filename = "/home/carl/AnghaBench/lwan/src/lib/extr_lwan-mod-serve-files.c_dirlist_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file_cache_entry = type { %struct.dir_list_cache_data }
%struct.dir_list_cache_data = type { %struct.TYPE_4__, %struct.TYPE_3__, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.file_cache_entry*)* @dirlist_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dirlist_free(%struct.file_cache_entry* %0) #0 {
  %2 = alloca %struct.file_cache_entry*, align 8
  %3 = alloca %struct.dir_list_cache_data*, align 8
  store %struct.file_cache_entry* %0, %struct.file_cache_entry** %2, align 8
  %4 = load %struct.file_cache_entry*, %struct.file_cache_entry** %2, align 8
  %5 = getelementptr inbounds %struct.file_cache_entry, %struct.file_cache_entry* %4, i32 0, i32 0
  store %struct.dir_list_cache_data* %5, %struct.dir_list_cache_data** %3, align 8
  %6 = load %struct.dir_list_cache_data*, %struct.dir_list_cache_data** %3, align 8
  %7 = getelementptr inbounds %struct.dir_list_cache_data, %struct.dir_list_cache_data* %6, i32 0, i32 2
  %8 = call i32 @lwan_strbuf_free(i32* %7)
  %9 = load %struct.dir_list_cache_data*, %struct.dir_list_cache_data** %3, align 8
  %10 = getelementptr inbounds %struct.dir_list_cache_data, %struct.dir_list_cache_data* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @free(i32 %12)
  ret void
}

declare dso_local i32 @lwan_strbuf_free(i32*) #1

declare dso_local i32 @free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
