; ModuleID = '/home/carl/AnghaBench/radare2/shlr/grub/fs/extr_nilfs2.c_grub_nilfs2_palloc_entry_offset.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/grub/fs/extr_nilfs2.c_grub_nilfs2_palloc_entry_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.grub_nilfs2_data = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.grub_nilfs2_data*, i32, i64)* @grub_nilfs2_palloc_entry_offset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @grub_nilfs2_palloc_entry_offset(%struct.grub_nilfs2_data* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.grub_nilfs2_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.grub_nilfs2_data* %0, %struct.grub_nilfs2_data** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %9 = load %struct.grub_nilfs2_data*, %struct.grub_nilfs2_data** %4, align 8
  %10 = load i32, i32* %5, align 4
  %11 = call i64 @grub_nilfs2_palloc_group(%struct.grub_nilfs2_data* %9, i32 %10, i32* %8)
  store i64 %11, i64* %7, align 8
  %12 = load %struct.grub_nilfs2_data*, %struct.grub_nilfs2_data** %4, align 8
  %13 = load i64, i64* %7, align 8
  %14 = load i64, i64* %6, align 8
  %15 = call i32 @grub_nilfs2_palloc_bitmap_block_offset(%struct.grub_nilfs2_data* %12, i64 %13, i64 %14)
  %16 = add nsw i32 %15, 1
  %17 = load i32, i32* %8, align 4
  %18 = load %struct.grub_nilfs2_data*, %struct.grub_nilfs2_data** %4, align 8
  %19 = load i64, i64* %6, align 8
  %20 = call i32 @grub_nilfs2_entries_per_block(%struct.grub_nilfs2_data* %18, i64 %19)
  %21 = sdiv i32 %17, %20
  %22 = add nsw i32 %16, %21
  ret i32 %22
}

declare dso_local i64 @grub_nilfs2_palloc_group(%struct.grub_nilfs2_data*, i32, i32*) #1

declare dso_local i32 @grub_nilfs2_palloc_bitmap_block_offset(%struct.grub_nilfs2_data*, i64, i64) #1

declare dso_local i32 @grub_nilfs2_entries_per_block(%struct.grub_nilfs2_data*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
