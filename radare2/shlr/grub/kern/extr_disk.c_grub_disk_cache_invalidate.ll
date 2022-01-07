; ModuleID = '/home/carl/AnghaBench/radare2/shlr/grub/kern/extr_disk.c_grub_disk_cache_invalidate.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/grub/kern/extr_disk.c_grub_disk_cache_invalidate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.grub_disk_cache = type { i64, i64, i32, i32, i64 }

@GRUB_DISK_CACHE_SIZE = common dso_local global i32 0, align 4
@grub_disk_cache_table = common dso_local global %struct.grub_disk_cache* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i64, i32)* @grub_disk_cache_invalidate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @grub_disk_cache_invalidate(i64 %0, i64 %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.grub_disk_cache*, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* @GRUB_DISK_CACHE_SIZE, align 4
  %10 = sub nsw i32 %9, 1
  %11 = xor i32 %10, -1
  %12 = load i32, i32* %6, align 4
  %13 = and i32 %12, %11
  store i32 %13, i32* %6, align 4
  %14 = load i64, i64* %4, align 8
  %15 = load i64, i64* %5, align 8
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @grub_disk_cache_get_index(i64 %14, i64 %15, i32 %16)
  store i32 %17, i32* %7, align 4
  %18 = load %struct.grub_disk_cache*, %struct.grub_disk_cache** @grub_disk_cache_table, align 8
  %19 = load i32, i32* %7, align 4
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds %struct.grub_disk_cache, %struct.grub_disk_cache* %18, i64 %20
  store %struct.grub_disk_cache* %21, %struct.grub_disk_cache** %8, align 8
  %22 = load %struct.grub_disk_cache*, %struct.grub_disk_cache** %8, align 8
  %23 = getelementptr inbounds %struct.grub_disk_cache, %struct.grub_disk_cache* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* %4, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %55

27:                                               ; preds = %3
  %28 = load %struct.grub_disk_cache*, %struct.grub_disk_cache** %8, align 8
  %29 = getelementptr inbounds %struct.grub_disk_cache, %struct.grub_disk_cache* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* %5, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %55

33:                                               ; preds = %27
  %34 = load %struct.grub_disk_cache*, %struct.grub_disk_cache** %8, align 8
  %35 = getelementptr inbounds %struct.grub_disk_cache, %struct.grub_disk_cache* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* %6, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %55

39:                                               ; preds = %33
  %40 = load %struct.grub_disk_cache*, %struct.grub_disk_cache** %8, align 8
  %41 = getelementptr inbounds %struct.grub_disk_cache, %struct.grub_disk_cache* %40, i32 0, i32 4
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %55

44:                                               ; preds = %39
  %45 = load %struct.grub_disk_cache*, %struct.grub_disk_cache** %8, align 8
  %46 = getelementptr inbounds %struct.grub_disk_cache, %struct.grub_disk_cache* %45, i32 0, i32 3
  store i32 1, i32* %46, align 4
  %47 = load %struct.grub_disk_cache*, %struct.grub_disk_cache** %8, align 8
  %48 = getelementptr inbounds %struct.grub_disk_cache, %struct.grub_disk_cache* %47, i32 0, i32 4
  %49 = load i64, i64* %48, align 8
  %50 = call i32 @grub_free(i64 %49)
  %51 = load %struct.grub_disk_cache*, %struct.grub_disk_cache** %8, align 8
  %52 = getelementptr inbounds %struct.grub_disk_cache, %struct.grub_disk_cache* %51, i32 0, i32 4
  store i64 0, i64* %52, align 8
  %53 = load %struct.grub_disk_cache*, %struct.grub_disk_cache** %8, align 8
  %54 = getelementptr inbounds %struct.grub_disk_cache, %struct.grub_disk_cache* %53, i32 0, i32 3
  store i32 0, i32* %54, align 4
  br label %55

55:                                               ; preds = %44, %39, %33, %27, %3
  ret void
}

declare dso_local i32 @grub_disk_cache_get_index(i64, i64, i32) #1

declare dso_local i32 @grub_free(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
