; ModuleID = '/home/carl/AnghaBench/radare2/shlr/grub/fs/extr_nilfs2.c_grub_nilfs2_valid_sb.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/grub/fs/extr_nilfs2.c_grub_nilfs2_valid_sb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.grub_nilfs2_super_block = type { i32, i32 }

@NILFS2_SUPER_MAGIC = common dso_local global i64 0, align 8
@NILFS_SUPORT_REV = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.grub_nilfs2_super_block*)* @grub_nilfs2_valid_sb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @grub_nilfs2_valid_sb(%struct.grub_nilfs2_super_block* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.grub_nilfs2_super_block*, align 8
  store %struct.grub_nilfs2_super_block* %0, %struct.grub_nilfs2_super_block** %3, align 8
  %4 = load %struct.grub_nilfs2_super_block*, %struct.grub_nilfs2_super_block** %3, align 8
  %5 = getelementptr inbounds %struct.grub_nilfs2_super_block, %struct.grub_nilfs2_super_block* %4, i32 0, i32 1
  %6 = load i32, i32* %5, align 4
  %7 = call i64 @grub_le_to_cpu16(i32 %6)
  %8 = load i64, i64* @NILFS2_SUPER_MAGIC, align 8
  %9 = icmp ne i64 %7, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %20

11:                                               ; preds = %1
  %12 = load %struct.grub_nilfs2_super_block*, %struct.grub_nilfs2_super_block** %3, align 8
  %13 = getelementptr inbounds %struct.grub_nilfs2_super_block, %struct.grub_nilfs2_super_block* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i64 @grub_le_to_cpu32(i32 %14)
  %16 = load i64, i64* @NILFS_SUPORT_REV, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %11
  store i32 0, i32* %2, align 4
  br label %20

19:                                               ; preds = %11
  store i32 1, i32* %2, align 4
  br label %20

20:                                               ; preds = %19, %18, %10
  %21 = load i32, i32* %2, align 4
  ret i32 %21
}

declare dso_local i64 @grub_le_to_cpu16(i32) #1

declare dso_local i64 @grub_le_to_cpu32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
