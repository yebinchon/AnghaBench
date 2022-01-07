; ModuleID = '/home/carl/AnghaBench/radare2/shlr/grub/fs/extr_nilfs2.c_grub_nilfs2_dat_translate.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/grub/fs/extr_nilfs2.c_grub_nilfs2_dat_translate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.grub_nilfs2_data = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.grub_nilfs2_dat_entry = type { i32 }

@GRUB_ERR_BAD_FS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"btree lookup failure\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.grub_nilfs2_data*, i32)* @grub_nilfs2_dat_translate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @grub_nilfs2_dat_translate(%struct.grub_nilfs2_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.grub_nilfs2_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.grub_nilfs2_dat_entry, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.grub_nilfs2_data* %0, %struct.grub_nilfs2_data** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct.grub_nilfs2_data*, %struct.grub_nilfs2_data** %4, align 8
  %13 = getelementptr inbounds %struct.grub_nilfs2_data, %struct.grub_nilfs2_data* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %7, align 4
  %15 = load %struct.grub_nilfs2_data*, %struct.grub_nilfs2_data** %4, align 8
  %16 = call i32 @LOG2_NILFS2_BLOCK_SIZE(%struct.grub_nilfs2_data* %15)
  %17 = shl i32 1, %16
  store i32 %17, i32* %11, align 4
  %18 = load %struct.grub_nilfs2_data*, %struct.grub_nilfs2_data** %4, align 8
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @grub_nilfs2_palloc_entry_offset(%struct.grub_nilfs2_data* %18, i32 %19, i32 4)
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %5, align 4
  %22 = sext i32 %21 to i64
  %23 = mul i64 %22, 4
  %24 = trunc i64 %23 to i32
  %25 = load %struct.grub_nilfs2_data*, %struct.grub_nilfs2_data** %4, align 8
  %26 = call i32 @NILFS2_BLOCK_SIZE(%struct.grub_nilfs2_data* %25)
  %27 = call i32 @grub_divmod64(i32 %24, i32 %26, i32* %10)
  %28 = load %struct.grub_nilfs2_data*, %struct.grub_nilfs2_data** %4, align 8
  %29 = load %struct.grub_nilfs2_data*, %struct.grub_nilfs2_data** %4, align 8
  %30 = getelementptr inbounds %struct.grub_nilfs2_data, %struct.grub_nilfs2_data* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %9, align 4
  %33 = call i32 @grub_nilfs2_bmap_lookup(%struct.grub_nilfs2_data* %28, i32* %31, i32 %32, i32 0)
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %8, align 4
  %35 = icmp eq i32 %34, -1
  br i1 %35, label %36, label %39

36:                                               ; preds = %2
  %37 = load i32, i32* @GRUB_ERR_BAD_FS, align 4
  %38 = call i32 @grub_error(i32 %37, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %49

39:                                               ; preds = %2
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* %11, align 4
  %43 = mul i32 %41, %42
  %44 = load i32, i32* %10, align 4
  %45 = call i32 @grub_disk_read(i32 %40, i32 %43, i32 %44, i32 4, %struct.grub_nilfs2_dat_entry* %6)
  %46 = getelementptr inbounds %struct.grub_nilfs2_dat_entry, %struct.grub_nilfs2_dat_entry* %6, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @grub_le_to_cpu64(i32 %47)
  store i32 %48, i32* %3, align 4
  br label %49

49:                                               ; preds = %39, %36
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local i32 @LOG2_NILFS2_BLOCK_SIZE(%struct.grub_nilfs2_data*) #1

declare dso_local i32 @grub_nilfs2_palloc_entry_offset(%struct.grub_nilfs2_data*, i32, i32) #1

declare dso_local i32 @grub_divmod64(i32, i32, i32*) #1

declare dso_local i32 @NILFS2_BLOCK_SIZE(%struct.grub_nilfs2_data*) #1

declare dso_local i32 @grub_nilfs2_bmap_lookup(%struct.grub_nilfs2_data*, i32*, i32, i32) #1

declare dso_local i32 @grub_error(i32, i8*) #1

declare dso_local i32 @grub_disk_read(i32, i32, i32, i32, %struct.grub_nilfs2_dat_entry*) #1

declare dso_local i32 @grub_le_to_cpu64(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
