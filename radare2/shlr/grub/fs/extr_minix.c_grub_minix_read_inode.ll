; ModuleID = '/home/carl/AnghaBench/radare2/shlr/grub/fs/extr_minix.c_grub_minix_read_inode.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/grub/fs/extr_minix.c_grub_minix_read_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.grub_minix_data = type { i32, i32, i32, i32, i32, %struct.grub_minix_sblock }
%struct.grub_minix_sblock = type { i32, i32 }

@GRUB_MINIX_LOG2_BSIZE = common dso_local global i32 0, align 4
@GRUB_DISK_SECTOR_SIZE = common dso_local global i32 0, align 4
@GRUB_ERR_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.grub_minix_data*, i32)* @grub_minix_read_inode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @grub_minix_read_inode(%struct.grub_minix_data* %0, i32 %1) #0 {
  %3 = alloca %struct.grub_minix_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.grub_minix_sblock*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.grub_minix_data* %0, %struct.grub_minix_data** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.grub_minix_data*, %struct.grub_minix_data** %3, align 8
  %10 = getelementptr inbounds %struct.grub_minix_data, %struct.grub_minix_data* %9, i32 0, i32 5
  store %struct.grub_minix_sblock* %10, %struct.grub_minix_sblock** %5, align 8
  %11 = load i32, i32* %4, align 4
  %12 = load %struct.grub_minix_data*, %struct.grub_minix_data** %3, align 8
  %13 = getelementptr inbounds %struct.grub_minix_data, %struct.grub_minix_data* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 4
  %14 = load i32, i32* %4, align 4
  %15 = add nsw i32 %14, -1
  store i32 %15, i32* %4, align 4
  %16 = load %struct.grub_minix_sblock*, %struct.grub_minix_sblock** %5, align 8
  %17 = getelementptr inbounds %struct.grub_minix_sblock, %struct.grub_minix_sblock* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @grub_le_to_cpu16(i32 %18)
  %20 = add nsw i32 2, %19
  %21 = load %struct.grub_minix_sblock*, %struct.grub_minix_sblock** %5, align 8
  %22 = getelementptr inbounds %struct.grub_minix_sblock, %struct.grub_minix_sblock* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @grub_le_to_cpu16(i32 %23)
  %25 = add nsw i32 %20, %24
  %26 = load i32, i32* @GRUB_MINIX_LOG2_BSIZE, align 4
  %27 = shl i32 %25, %26
  store i32 %27, i32* %6, align 4
  %28 = load %struct.grub_minix_data*, %struct.grub_minix_data** %3, align 8
  %29 = getelementptr inbounds %struct.grub_minix_data, %struct.grub_minix_data* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = icmp eq i32 %30, 1
  br i1 %31, label %32, label %59

32:                                               ; preds = %2
  %33 = load i32, i32* %4, align 4
  %34 = sext i32 %33 to i64
  %35 = load i32, i32* @GRUB_DISK_SECTOR_SIZE, align 4
  %36 = sext i32 %35 to i64
  %37 = udiv i64 %36, 4
  %38 = udiv i64 %34, %37
  %39 = load i32, i32* %6, align 4
  %40 = sext i32 %39 to i64
  %41 = add i64 %40, %38
  %42 = trunc i64 %41 to i32
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* %4, align 4
  %44 = sext i32 %43 to i64
  %45 = load i32, i32* @GRUB_DISK_SECTOR_SIZE, align 4
  %46 = sext i32 %45 to i64
  %47 = udiv i64 %46, 4
  %48 = urem i64 %44, %47
  %49 = mul i64 %48, 4
  %50 = trunc i64 %49 to i32
  store i32 %50, i32* %7, align 4
  %51 = load %struct.grub_minix_data*, %struct.grub_minix_data** %3, align 8
  %52 = getelementptr inbounds %struct.grub_minix_data, %struct.grub_minix_data* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %6, align 4
  %55 = load i32, i32* %7, align 4
  %56 = load %struct.grub_minix_data*, %struct.grub_minix_data** %3, align 8
  %57 = getelementptr inbounds %struct.grub_minix_data, %struct.grub_minix_data* %56, i32 0, i32 4
  %58 = call i32 @grub_disk_read(i32 %53, i32 %54, i32 %55, i32 4, i32* %57)
  br label %86

59:                                               ; preds = %2
  %60 = load i32, i32* %4, align 4
  %61 = sext i32 %60 to i64
  %62 = load i32, i32* @GRUB_DISK_SECTOR_SIZE, align 4
  %63 = sext i32 %62 to i64
  %64 = udiv i64 %63, 4
  %65 = udiv i64 %61, %64
  %66 = load i32, i32* %6, align 4
  %67 = sext i32 %66 to i64
  %68 = add i64 %67, %65
  %69 = trunc i64 %68 to i32
  store i32 %69, i32* %6, align 4
  %70 = load i32, i32* %4, align 4
  %71 = sext i32 %70 to i64
  %72 = load i32, i32* @GRUB_DISK_SECTOR_SIZE, align 4
  %73 = sext i32 %72 to i64
  %74 = udiv i64 %73, 4
  %75 = urem i64 %71, %74
  %76 = mul i64 %75, 4
  %77 = trunc i64 %76 to i32
  store i32 %77, i32* %8, align 4
  %78 = load %struct.grub_minix_data*, %struct.grub_minix_data** %3, align 8
  %79 = getelementptr inbounds %struct.grub_minix_data, %struct.grub_minix_data* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* %6, align 4
  %82 = load i32, i32* %8, align 4
  %83 = load %struct.grub_minix_data*, %struct.grub_minix_data** %3, align 8
  %84 = getelementptr inbounds %struct.grub_minix_data, %struct.grub_minix_data* %83, i32 0, i32 2
  %85 = call i32 @grub_disk_read(i32 %80, i32 %81, i32 %82, i32 4, i32* %84)
  br label %86

86:                                               ; preds = %59, %32
  %87 = load i32, i32* @GRUB_ERR_NONE, align 4
  ret i32 %87
}

declare dso_local i32 @grub_le_to_cpu16(i32) #1

declare dso_local i32 @grub_disk_read(i32, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
