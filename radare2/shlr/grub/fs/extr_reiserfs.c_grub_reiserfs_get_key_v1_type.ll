; ModuleID = '/home/carl/AnghaBench/radare2/shlr/grub/fs/extr_reiserfs.c_grub_reiserfs_get_key_v1_type.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/grub/fs/extr_reiserfs.c_grub_reiserfs_get_key_v1_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.grub_reiserfs_key = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@GRUB_REISERFS_STAT = common dso_local global i32 0, align 4
@GRUB_REISERFS_ANY = common dso_local global i32 0, align 4
@GRUB_REISERFS_DIRECTORY = common dso_local global i32 0, align 4
@GRUB_REISERFS_DIRECT = common dso_local global i32 0, align 4
@GRUB_REISERFS_INDIRECT = common dso_local global i32 0, align 4
@GRUB_REISERFS_UNKNOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.grub_reiserfs_key*)* @grub_reiserfs_get_key_v1_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @grub_reiserfs_get_key_v1_type(%struct.grub_reiserfs_key* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.grub_reiserfs_key*, align 8
  store %struct.grub_reiserfs_key* %0, %struct.grub_reiserfs_key** %3, align 8
  %4 = load %struct.grub_reiserfs_key*, %struct.grub_reiserfs_key** %3, align 8
  %5 = getelementptr inbounds %struct.grub_reiserfs_key, %struct.grub_reiserfs_key* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @grub_le_to_cpu32(i32 %8)
  switch i32 %9, label %20 [
    i32 0, label %10
    i32 555, label %12
    i32 500, label %14
    i32 536870912, label %16
    i32 -1, label %16
    i32 268435456, label %18
    i32 -2, label %18
  ]

10:                                               ; preds = %1
  %11 = load i32, i32* @GRUB_REISERFS_STAT, align 4
  store i32 %11, i32* %2, align 4
  br label %22

12:                                               ; preds = %1
  %13 = load i32, i32* @GRUB_REISERFS_ANY, align 4
  store i32 %13, i32* %2, align 4
  br label %22

14:                                               ; preds = %1
  %15 = load i32, i32* @GRUB_REISERFS_DIRECTORY, align 4
  store i32 %15, i32* %2, align 4
  br label %22

16:                                               ; preds = %1, %1
  %17 = load i32, i32* @GRUB_REISERFS_DIRECT, align 4
  store i32 %17, i32* %2, align 4
  br label %22

18:                                               ; preds = %1, %1
  %19 = load i32, i32* @GRUB_REISERFS_INDIRECT, align 4
  store i32 %19, i32* %2, align 4
  br label %22

20:                                               ; preds = %1
  %21 = load i32, i32* @GRUB_REISERFS_UNKNOWN, align 4
  store i32 %21, i32* %2, align 4
  br label %22

22:                                               ; preds = %20, %18, %16, %14, %12, %10
  %23 = load i32, i32* %2, align 4
  ret i32 %23
}

declare dso_local i32 @grub_le_to_cpu32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
