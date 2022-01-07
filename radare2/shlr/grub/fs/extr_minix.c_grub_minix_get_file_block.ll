; ModuleID = '/home/carl/AnghaBench/radare2/shlr/grub/fs/extr_minix.c_grub_minix_get_file_block.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/grub/fs/extr_minix.c_grub_minix_get_file_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.grub_minix_data = type { %struct.grub_minix_sblock }
%struct.grub_minix_sblock = type { i32 }

@GRUB_MINIX_ZONESZ = common dso_local global i32 0, align 4
@GRUB_ERR_OUT_OF_RANGE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"file bigger than maximum size\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.grub_minix_data*, i32)* @grub_minix_get_file_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @grub_minix_get_file_block(%struct.grub_minix_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.grub_minix_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.grub_minix_sblock*, align 8
  %7 = alloca i32, align 4
  store %struct.grub_minix_data* %0, %struct.grub_minix_data** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.grub_minix_data*, %struct.grub_minix_data** %4, align 8
  %9 = getelementptr inbounds %struct.grub_minix_data, %struct.grub_minix_data* %8, i32 0, i32 0
  store %struct.grub_minix_sblock* %9, %struct.grub_minix_sblock** %6, align 8
  %10 = load i32, i32* %5, align 4
  %11 = icmp ult i32 %10, 7
  br i1 %11, label %12, label %16

12:                                               ; preds = %2
  %13 = load %struct.grub_minix_data*, %struct.grub_minix_data** %4, align 8
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @GRUB_MINIX_INODE_DIR_ZONES(%struct.grub_minix_data* %13, i32 %14)
  store i32 %15, i32* %3, align 4
  br label %68

16:                                               ; preds = %2
  %17 = load i32, i32* %5, align 4
  %18 = sub i32 %17, 7
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @GRUB_MINIX_ZONESZ, align 4
  %21 = load %struct.grub_minix_data*, %struct.grub_minix_data** %4, align 8
  %22 = call i32 @GRUB_MINIX_INODE_BLKSZ(%struct.grub_minix_data* %21)
  %23 = udiv i32 %20, %22
  %24 = icmp ult i32 %19, %23
  br i1 %24, label %25, label %32

25:                                               ; preds = %16
  %26 = load %struct.grub_minix_data*, %struct.grub_minix_data** %4, align 8
  %27 = call i32 @GRUB_MINIX_INODE_INDIR_ZONE(%struct.grub_minix_data* %26)
  %28 = load i32, i32* %5, align 4
  %29 = load %struct.grub_minix_data*, %struct.grub_minix_data** %4, align 8
  %30 = call i32 @grub_get_indir(i32 %27, i32 %28, %struct.grub_minix_data* %29)
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %7, align 4
  store i32 %31, i32* %3, align 4
  br label %68

32:                                               ; preds = %16
  %33 = load i32, i32* @GRUB_MINIX_ZONESZ, align 4
  %34 = load %struct.grub_minix_data*, %struct.grub_minix_data** %4, align 8
  %35 = call i32 @GRUB_MINIX_INODE_BLKSZ(%struct.grub_minix_data* %34)
  %36 = udiv i32 %33, %35
  %37 = load i32, i32* %5, align 4
  %38 = sub i32 %37, %36
  store i32 %38, i32* %5, align 4
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* @GRUB_MINIX_ZONESZ, align 4
  %41 = load %struct.grub_minix_data*, %struct.grub_minix_data** %4, align 8
  %42 = call i32 @GRUB_MINIX_INODE_BLKSZ(%struct.grub_minix_data* %41)
  %43 = udiv i32 %40, %42
  %44 = load i32, i32* @GRUB_MINIX_ZONESZ, align 4
  %45 = load %struct.grub_minix_data*, %struct.grub_minix_data** %4, align 8
  %46 = call i32 @GRUB_MINIX_INODE_BLKSZ(%struct.grub_minix_data* %45)
  %47 = udiv i32 %44, %46
  %48 = mul i32 %43, %47
  %49 = icmp ult i32 %39, %48
  br i1 %49, label %50, label %65

50:                                               ; preds = %32
  %51 = load %struct.grub_minix_data*, %struct.grub_minix_data** %4, align 8
  %52 = call i32 @GRUB_MINIX_INODE_DINDIR_ZONE(%struct.grub_minix_data* %51)
  %53 = load i32, i32* %5, align 4
  %54 = load i32, i32* @GRUB_MINIX_ZONESZ, align 4
  %55 = udiv i32 %53, %54
  %56 = load %struct.grub_minix_data*, %struct.grub_minix_data** %4, align 8
  %57 = call i32 @grub_get_indir(i32 %52, i32 %55, %struct.grub_minix_data* %56)
  store i32 %57, i32* %7, align 4
  %58 = load i32, i32* %7, align 4
  %59 = load i32, i32* %5, align 4
  %60 = load i32, i32* @GRUB_MINIX_ZONESZ, align 4
  %61 = urem i32 %59, %60
  %62 = load %struct.grub_minix_data*, %struct.grub_minix_data** %4, align 8
  %63 = call i32 @grub_get_indir(i32 %58, i32 %61, %struct.grub_minix_data* %62)
  store i32 %63, i32* %7, align 4
  %64 = load i32, i32* %7, align 4
  store i32 %64, i32* %3, align 4
  br label %68

65:                                               ; preds = %32
  %66 = load i32, i32* @GRUB_ERR_OUT_OF_RANGE, align 4
  %67 = call i32 @grub_error(i32 %66, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %68

68:                                               ; preds = %65, %50, %25, %12
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local i32 @GRUB_MINIX_INODE_DIR_ZONES(%struct.grub_minix_data*, i32) #1

declare dso_local i32 @GRUB_MINIX_INODE_BLKSZ(%struct.grub_minix_data*) #1

declare dso_local i32 @grub_get_indir(i32, i32, %struct.grub_minix_data*) #1

declare dso_local i32 @GRUB_MINIX_INODE_INDIR_ZONE(%struct.grub_minix_data*) #1

declare dso_local i32 @GRUB_MINIX_INODE_DINDIR_ZONE(%struct.grub_minix_data*) #1

declare dso_local i32 @grub_error(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
