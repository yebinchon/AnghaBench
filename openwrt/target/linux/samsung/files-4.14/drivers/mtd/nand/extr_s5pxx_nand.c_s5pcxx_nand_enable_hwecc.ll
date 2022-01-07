; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/samsung/files-4.14/drivers/mtd/nand/extr_s5pxx_nand.c_s5pcxx_nand_enable_hwecc.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/samsung/files-4.14/drivers/mtd/nand/extr_s5pxx_nand.c_s5pcxx_nand_enable_hwecc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { %struct.nand_chip* }
%struct.nand_chip = type { %struct.TYPE_2__, %struct.s5p_nand_host* }
%struct.TYPE_2__ = type { i32 }
%struct.s5p_nand_host = type { i64, i64 }

@S5P_NFECCCONF = common dso_local global i64 0, align 8
@S5P_NFECCCONT = common dso_local global i64 0, align 8
@S5P_NFECCCONT_ECCDIRWR = common dso_local global i32 0, align 4
@NAND_ECC_WRITE = common dso_local global i32 0, align 4
@S5P_NFECCSTAT = common dso_local global i64 0, align 8
@S5P_NFCONT = common dso_local global i64 0, align 8
@S5P_NFCONT_MECCLOCK = common dso_local global i32 0, align 4
@S5P_NFECCCONT_MECCINIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mtd_info*, i32)* @s5pcxx_nand_enable_hwecc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @s5pcxx_nand_enable_hwecc(%struct.mtd_info* %0, i32 %1) #0 {
  %3 = alloca %struct.mtd_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.nand_chip*, align 8
  %6 = alloca %struct.s5p_nand_host*, align 8
  %7 = alloca i32, align 4
  store %struct.mtd_info* %0, %struct.mtd_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.mtd_info*, %struct.mtd_info** %3, align 8
  %9 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %8, i32 0, i32 0
  %10 = load %struct.nand_chip*, %struct.nand_chip** %9, align 8
  store %struct.nand_chip* %10, %struct.nand_chip** %5, align 8
  %11 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %12 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %11, i32 0, i32 1
  %13 = load %struct.s5p_nand_host*, %struct.s5p_nand_host** %12, align 8
  store %struct.s5p_nand_host* %13, %struct.s5p_nand_host** %6, align 8
  store i32 3, i32* %7, align 4
  %14 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %15 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = sub nsw i32 %17, 1
  %19 = shl i32 %18, 16
  %20 = load i32, i32* %7, align 4
  %21 = or i32 %20, %19
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = load %struct.s5p_nand_host*, %struct.s5p_nand_host** %6, align 8
  %24 = getelementptr inbounds %struct.s5p_nand_host, %struct.s5p_nand_host* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @S5P_NFECCCONF, align 8
  %27 = add nsw i64 %25, %26
  %28 = call i32 @writel(i32 %22, i64 %27)
  %29 = load %struct.s5p_nand_host*, %struct.s5p_nand_host** %6, align 8
  %30 = getelementptr inbounds %struct.s5p_nand_host, %struct.s5p_nand_host* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @S5P_NFECCCONT, align 8
  %33 = add nsw i64 %31, %32
  %34 = load i32, i32* @S5P_NFECCCONT_ECCDIRWR, align 4
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* @NAND_ECC_WRITE, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %2
  %39 = load i32, i32* @S5P_NFECCCONT_ECCDIRWR, align 4
  br label %41

40:                                               ; preds = %2
  br label %41

41:                                               ; preds = %40, %38
  %42 = phi i32 [ %39, %38 ], [ 0, %40 ]
  %43 = call i32 @rwl(i64 %33, i32 %34, i32 %42)
  %44 = load %struct.s5p_nand_host*, %struct.s5p_nand_host** %6, align 8
  %45 = getelementptr inbounds %struct.s5p_nand_host, %struct.s5p_nand_host* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @S5P_NFECCSTAT, align 8
  %48 = add nsw i64 %46, %47
  %49 = call i32 @rwl(i64 %48, i32 0, i32 50331648)
  %50 = load %struct.s5p_nand_host*, %struct.s5p_nand_host** %6, align 8
  %51 = getelementptr inbounds %struct.s5p_nand_host, %struct.s5p_nand_host* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @S5P_NFCONT, align 8
  %54 = add nsw i64 %52, %53
  %55 = load i32, i32* @S5P_NFCONT_MECCLOCK, align 4
  %56 = call i32 @rwl(i64 %54, i32 %55, i32 0)
  %57 = load %struct.s5p_nand_host*, %struct.s5p_nand_host** %6, align 8
  %58 = getelementptr inbounds %struct.s5p_nand_host, %struct.s5p_nand_host* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @S5P_NFECCCONT, align 8
  %61 = add nsw i64 %59, %60
  %62 = load i32, i32* @S5P_NFECCCONT_MECCINIT, align 4
  %63 = call i32 @rwl(i64 %61, i32 0, i32 %62)
  ret void
}

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @rwl(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
