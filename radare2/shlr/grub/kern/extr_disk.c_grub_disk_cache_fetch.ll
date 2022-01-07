; ModuleID = '/home/carl/AnghaBench/radare2/shlr/grub/kern/extr_disk.c_grub_disk_cache_fetch.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/grub/kern/extr_disk.c_grub_disk_cache_fetch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.grub_disk_cache = type { i64, i64, i64, i32, i8* }

@grub_disk_cache_table = common dso_local global %struct.grub_disk_cache* null, align 8
@grub_disk_cache_hits = common dso_local global i32 0, align 4
@grub_disk_cache_misses = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i64, i64, i64)* @grub_disk_cache_fetch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @grub_disk_cache_fetch(i64 %0, i64 %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.grub_disk_cache*, align 8
  %9 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load i64, i64* %5, align 8
  %11 = load i64, i64* %6, align 8
  %12 = load i64, i64* %7, align 8
  %13 = call i32 @grub_disk_cache_get_index(i64 %10, i64 %11, i64 %12)
  store i32 %13, i32* %9, align 4
  %14 = load %struct.grub_disk_cache*, %struct.grub_disk_cache** @grub_disk_cache_table, align 8
  %15 = load i32, i32* %9, align 4
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds %struct.grub_disk_cache, %struct.grub_disk_cache* %14, i64 %16
  store %struct.grub_disk_cache* %17, %struct.grub_disk_cache** %8, align 8
  %18 = load %struct.grub_disk_cache*, %struct.grub_disk_cache** %8, align 8
  %19 = getelementptr inbounds %struct.grub_disk_cache, %struct.grub_disk_cache* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* %5, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %41

23:                                               ; preds = %3
  %24 = load %struct.grub_disk_cache*, %struct.grub_disk_cache** %8, align 8
  %25 = getelementptr inbounds %struct.grub_disk_cache, %struct.grub_disk_cache* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* %6, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %41

29:                                               ; preds = %23
  %30 = load %struct.grub_disk_cache*, %struct.grub_disk_cache** %8, align 8
  %31 = getelementptr inbounds %struct.grub_disk_cache, %struct.grub_disk_cache* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* %7, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %41

35:                                               ; preds = %29
  %36 = load %struct.grub_disk_cache*, %struct.grub_disk_cache** %8, align 8
  %37 = getelementptr inbounds %struct.grub_disk_cache, %struct.grub_disk_cache* %36, i32 0, i32 3
  store i32 1, i32* %37, align 8
  %38 = load %struct.grub_disk_cache*, %struct.grub_disk_cache** %8, align 8
  %39 = getelementptr inbounds %struct.grub_disk_cache, %struct.grub_disk_cache* %38, i32 0, i32 4
  %40 = load i8*, i8** %39, align 8
  store i8* %40, i8** %4, align 8
  br label %42

41:                                               ; preds = %29, %23, %3
  store i8* null, i8** %4, align 8
  br label %42

42:                                               ; preds = %41, %35
  %43 = load i8*, i8** %4, align 8
  ret i8* %43
}

declare dso_local i32 @grub_disk_cache_get_index(i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
