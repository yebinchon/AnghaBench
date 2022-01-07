; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/platform/extr_common.c_platform_flash_get_first_free_block_address.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/platform/extr_common.c_platform_flash_get_first_free_block_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [22 x i8] c"_flash_used_end:%08x\0A\00", align 1
@_flash_used_end = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @platform_flash_get_first_free_block_address(i64* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i64* %0, i64** %3, align 8
  %7 = load i64, i64* @_flash_used_end, align 8
  %8 = call i32 @NODE_DBG(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i64 %7)
  %9 = load i64, i64* @_flash_used_end, align 8
  %10 = icmp sgt i64 %9, 0
  br i1 %10, label %11, label %25

11:                                               ; preds = %1
  %12 = load i64, i64* @_flash_used_end, align 8
  %13 = sub nsw i64 %12, 1
  %14 = call i32 @platform_flash_mapped2phys(i64 %13)
  %15 = call i64 @flash_find_sector(i32 %14, i64* null, i64* %5)
  store i64 %15, i64* %6, align 8
  %16 = load i64*, i64** %3, align 8
  %17 = icmp ne i64* %16, null
  br i1 %17, label %18, label %22

18:                                               ; preds = %11
  %19 = load i64, i64* %6, align 8
  %20 = add nsw i64 %19, 1
  %21 = load i64*, i64** %3, align 8
  store i64 %20, i64* %21, align 8
  br label %22

22:                                               ; preds = %18, %11
  %23 = load i64, i64* %5, align 8
  %24 = add nsw i64 %23, 1
  store i64 %24, i64* %2, align 8
  br label %34

25:                                               ; preds = %1
  %26 = call i64 @flash_find_sector(i32 0, i64* %4, i64* null)
  store i64 %26, i64* %6, align 8
  %27 = load i64*, i64** %3, align 8
  %28 = icmp ne i64* %27, null
  br i1 %28, label %29, label %32

29:                                               ; preds = %25
  %30 = load i64, i64* %6, align 8
  %31 = load i64*, i64** %3, align 8
  store i64 %30, i64* %31, align 8
  br label %32

32:                                               ; preds = %29, %25
  %33 = load i64, i64* %4, align 8
  store i64 %33, i64* %2, align 8
  br label %34

34:                                               ; preds = %32, %22
  %35 = load i64, i64* %2, align 8
  ret i64 %35
}

declare dso_local i32 @NODE_DBG(i8*, i64) #1

declare dso_local i64 @flash_find_sector(i32, i64*, i64*) #1

declare dso_local i32 @platform_flash_mapped2phys(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
