; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/samsung/files-4.14/drivers/mtd/nand/extr_s5pxx_nand.c_s5p_nand_inithw_later.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/samsung/files-4.14/drivers/mtd/nand/extr_s5pxx_nand.c_s5p_nand_inithw_later.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { i32, %struct.nand_chip* }
%struct.nand_chip = type { %struct.s5p_nand_host* }
%struct.s5p_nand_host = type { i64 }

@S5P_NFCONF = common dso_local global i64 0, align 8
@S5P_NFCONF_MLC = common dso_local global i32 0, align 4
@S5P_NFCONF_PAGESIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mtd_info*)* @s5p_nand_inithw_later to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @s5p_nand_inithw_later(%struct.mtd_info* %0) #0 {
  %2 = alloca %struct.mtd_info*, align 8
  %3 = alloca %struct.nand_chip*, align 8
  %4 = alloca %struct.s5p_nand_host*, align 8
  %5 = alloca i32, align 4
  store %struct.mtd_info* %0, %struct.mtd_info** %2, align 8
  %6 = load %struct.mtd_info*, %struct.mtd_info** %2, align 8
  %7 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %6, i32 0, i32 1
  %8 = load %struct.nand_chip*, %struct.nand_chip** %7, align 8
  store %struct.nand_chip* %8, %struct.nand_chip** %3, align 8
  %9 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %10 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %9, i32 0, i32 0
  %11 = load %struct.s5p_nand_host*, %struct.s5p_nand_host** %10, align 8
  store %struct.s5p_nand_host* %11, %struct.s5p_nand_host** %4, align 8
  %12 = load %struct.s5p_nand_host*, %struct.s5p_nand_host** %4, align 8
  %13 = getelementptr inbounds %struct.s5p_nand_host, %struct.s5p_nand_host* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @S5P_NFCONF, align 8
  %16 = add nsw i64 %14, %15
  %17 = call i32 @readl(i64 %16)
  store i32 %17, i32* %5, align 4
  %18 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %19 = call i64 @nand_is_slc(%struct.nand_chip* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %40

21:                                               ; preds = %1
  %22 = load i32, i32* @S5P_NFCONF_MLC, align 4
  %23 = xor i32 %22, -1
  %24 = load i32, i32* %5, align 4
  %25 = and i32 %24, %23
  store i32 %25, i32* %5, align 4
  %26 = load %struct.mtd_info*, %struct.mtd_info** %2, align 8
  %27 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp eq i32 %28, 512
  br i1 %29, label %30, label %34

30:                                               ; preds = %21
  %31 = load i32, i32* @S5P_NFCONF_PAGESIZE, align 4
  %32 = load i32, i32* %5, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %5, align 4
  br label %39

34:                                               ; preds = %21
  %35 = load i32, i32* @S5P_NFCONF_PAGESIZE, align 4
  %36 = xor i32 %35, -1
  %37 = load i32, i32* %5, align 4
  %38 = and i32 %37, %36
  store i32 %38, i32* %5, align 4
  br label %39

39:                                               ; preds = %34, %30
  br label %58

40:                                               ; preds = %1
  %41 = load i32, i32* @S5P_NFCONF_MLC, align 4
  %42 = load i32, i32* %5, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %5, align 4
  %44 = load %struct.mtd_info*, %struct.mtd_info** %2, align 8
  %45 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp eq i32 %46, 4096
  br i1 %47, label %48, label %53

48:                                               ; preds = %40
  %49 = load i32, i32* @S5P_NFCONF_PAGESIZE, align 4
  %50 = xor i32 %49, -1
  %51 = load i32, i32* %5, align 4
  %52 = and i32 %51, %50
  store i32 %52, i32* %5, align 4
  br label %57

53:                                               ; preds = %40
  %54 = load i32, i32* @S5P_NFCONF_PAGESIZE, align 4
  %55 = load i32, i32* %5, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %5, align 4
  br label %57

57:                                               ; preds = %53, %48
  br label %58

58:                                               ; preds = %57, %39
  ret void
}

declare dso_local i32 @readl(i64) #1

declare dso_local i64 @nand_is_slc(%struct.nand_chip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
