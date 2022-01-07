; ModuleID = '/home/carl/AnghaBench/lwan/src/lib/extr_lwan-mod-serve-files.c_sendfile_free.c'
source_filename = "/home/carl/AnghaBench/lwan/src/lib/extr_lwan-mod-serve-files.c_sendfile_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file_cache_entry = type { %struct.sendfile_cache_data }
%struct.sendfile_cache_data = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.file_cache_entry*)* @sendfile_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sendfile_free(%struct.file_cache_entry* %0) #0 {
  %2 = alloca %struct.file_cache_entry*, align 8
  %3 = alloca %struct.sendfile_cache_data*, align 8
  store %struct.file_cache_entry* %0, %struct.file_cache_entry** %2, align 8
  %4 = load %struct.file_cache_entry*, %struct.file_cache_entry** %2, align 8
  %5 = getelementptr inbounds %struct.file_cache_entry, %struct.file_cache_entry* %4, i32 0, i32 0
  store %struct.sendfile_cache_data* %5, %struct.sendfile_cache_data** %3, align 8
  %6 = load %struct.sendfile_cache_data*, %struct.sendfile_cache_data** %3, align 8
  %7 = getelementptr inbounds %struct.sendfile_cache_data, %struct.sendfile_cache_data* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp sge i64 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %1
  %12 = load %struct.sendfile_cache_data*, %struct.sendfile_cache_data** %3, align 8
  %13 = getelementptr inbounds %struct.sendfile_cache_data, %struct.sendfile_cache_data* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = call i32 @close(i64 %15)
  br label %17

17:                                               ; preds = %11, %1
  %18 = load %struct.sendfile_cache_data*, %struct.sendfile_cache_data** %3, align 8
  %19 = getelementptr inbounds %struct.sendfile_cache_data, %struct.sendfile_cache_data* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp sge i64 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %17
  %24 = load %struct.sendfile_cache_data*, %struct.sendfile_cache_data** %3, align 8
  %25 = getelementptr inbounds %struct.sendfile_cache_data, %struct.sendfile_cache_data* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = call i32 @close(i64 %27)
  br label %29

29:                                               ; preds = %23, %17
  ret void
}

declare dso_local i32 @close(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
