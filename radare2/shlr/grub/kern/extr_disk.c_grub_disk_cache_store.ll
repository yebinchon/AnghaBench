; ModuleID = '/home/carl/AnghaBench/radare2/shlr/grub/kern/extr_disk.c_grub_disk_cache_store.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/grub/kern/extr_disk.c_grub_disk_cache_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.grub_disk_cache = type { i32, i64, i64, i32, i64 }

@grub_disk_cache_table = common dso_local global %struct.grub_disk_cache* null, align 8
@GRUB_DISK_SECTOR_SIZE = common dso_local global i32 0, align 4
@GRUB_DISK_CACHE_BITS = common dso_local global i32 0, align 4
@grub_errno = common dso_local global i32 0, align 4
@GRUB_ERR_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64, i32, i8*)* @grub_disk_cache_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @grub_disk_cache_store(i64 %0, i64 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.grub_disk_cache*, align 8
  store i64 %0, i64* %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %12 = load i64, i64* %6, align 8
  %13 = load i64, i64* %7, align 8
  %14 = load i32, i32* %8, align 4
  %15 = call i32 @grub_disk_cache_get_index(i64 %12, i64 %13, i32 %14)
  store i32 %15, i32* %10, align 4
  %16 = load %struct.grub_disk_cache*, %struct.grub_disk_cache** @grub_disk_cache_table, align 8
  %17 = load i32, i32* %10, align 4
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds %struct.grub_disk_cache, %struct.grub_disk_cache* %16, i64 %18
  store %struct.grub_disk_cache* %19, %struct.grub_disk_cache** %11, align 8
  %20 = load %struct.grub_disk_cache*, %struct.grub_disk_cache** %11, align 8
  %21 = getelementptr inbounds %struct.grub_disk_cache, %struct.grub_disk_cache* %20, i32 0, i32 0
  store i32 1, i32* %21, align 8
  %22 = load %struct.grub_disk_cache*, %struct.grub_disk_cache** %11, align 8
  %23 = getelementptr inbounds %struct.grub_disk_cache, %struct.grub_disk_cache* %22, i32 0, i32 4
  %24 = load i64, i64* %23, align 8
  %25 = call i32 @grub_free(i64 %24)
  %26 = load %struct.grub_disk_cache*, %struct.grub_disk_cache** %11, align 8
  %27 = getelementptr inbounds %struct.grub_disk_cache, %struct.grub_disk_cache* %26, i32 0, i32 4
  store i64 0, i64* %27, align 8
  %28 = load %struct.grub_disk_cache*, %struct.grub_disk_cache** %11, align 8
  %29 = getelementptr inbounds %struct.grub_disk_cache, %struct.grub_disk_cache* %28, i32 0, i32 0
  store i32 0, i32* %29, align 8
  %30 = load i32, i32* @GRUB_DISK_SECTOR_SIZE, align 4
  %31 = load i32, i32* @GRUB_DISK_CACHE_BITS, align 4
  %32 = shl i32 %30, %31
  %33 = call i64 @grub_malloc(i32 %32)
  %34 = load %struct.grub_disk_cache*, %struct.grub_disk_cache** %11, align 8
  %35 = getelementptr inbounds %struct.grub_disk_cache, %struct.grub_disk_cache* %34, i32 0, i32 4
  store i64 %33, i64* %35, align 8
  %36 = load %struct.grub_disk_cache*, %struct.grub_disk_cache** %11, align 8
  %37 = getelementptr inbounds %struct.grub_disk_cache, %struct.grub_disk_cache* %36, i32 0, i32 4
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %4
  %41 = load i32, i32* @grub_errno, align 4
  store i32 %41, i32* %5, align 4
  br label %61

42:                                               ; preds = %4
  %43 = load %struct.grub_disk_cache*, %struct.grub_disk_cache** %11, align 8
  %44 = getelementptr inbounds %struct.grub_disk_cache, %struct.grub_disk_cache* %43, i32 0, i32 4
  %45 = load i64, i64* %44, align 8
  %46 = load i8*, i8** %9, align 8
  %47 = load i32, i32* @GRUB_DISK_SECTOR_SIZE, align 4
  %48 = load i32, i32* @GRUB_DISK_CACHE_BITS, align 4
  %49 = shl i32 %47, %48
  %50 = call i32 @grub_memcpy(i64 %45, i8* %46, i32 %49)
  %51 = load i64, i64* %6, align 8
  %52 = load %struct.grub_disk_cache*, %struct.grub_disk_cache** %11, align 8
  %53 = getelementptr inbounds %struct.grub_disk_cache, %struct.grub_disk_cache* %52, i32 0, i32 1
  store i64 %51, i64* %53, align 8
  %54 = load i64, i64* %7, align 8
  %55 = load %struct.grub_disk_cache*, %struct.grub_disk_cache** %11, align 8
  %56 = getelementptr inbounds %struct.grub_disk_cache, %struct.grub_disk_cache* %55, i32 0, i32 2
  store i64 %54, i64* %56, align 8
  %57 = load i32, i32* %8, align 4
  %58 = load %struct.grub_disk_cache*, %struct.grub_disk_cache** %11, align 8
  %59 = getelementptr inbounds %struct.grub_disk_cache, %struct.grub_disk_cache* %58, i32 0, i32 3
  store i32 %57, i32* %59, align 8
  %60 = load i32, i32* @GRUB_ERR_NONE, align 4
  store i32 %60, i32* %5, align 4
  br label %61

61:                                               ; preds = %42, %40
  %62 = load i32, i32* %5, align 4
  ret i32 %62
}

declare dso_local i32 @grub_disk_cache_get_index(i64, i64, i32) #1

declare dso_local i32 @grub_free(i64) #1

declare dso_local i64 @grub_malloc(i32) #1

declare dso_local i32 @grub_memcpy(i64, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
