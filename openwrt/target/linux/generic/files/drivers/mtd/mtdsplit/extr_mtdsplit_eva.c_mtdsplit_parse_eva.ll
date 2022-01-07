; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/generic/files/drivers/mtd/mtdsplit/extr_mtdsplit_eva.c_mtdsplit_parse_eva.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/generic/files/drivers/mtd/mtdsplit/extr_mtdsplit_eva.c_mtdsplit_parse_eva.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { i64 }
%struct.mtd_partition = type { i64, i64, i32 }
%struct.mtd_part_parser_data = type { i32 }
%struct.eva_image_header = type { i32, i32 }

@EIO = common dso_local global i32 0, align 4
@EVA_MAGIC = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@EVA_FOOTER_SIZE = common dso_local global i64 0, align 8
@EVA_DUMMY_SQUASHFS_SIZE = common dso_local global i64 0, align 8
@EVA_NR_PARTS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@KERNEL_PART_NAME = common dso_local global i32 0, align 4
@ROOTFS_PART_NAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtd_info*, %struct.mtd_partition**, %struct.mtd_part_parser_data*)* @mtdsplit_parse_eva to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtdsplit_parse_eva(%struct.mtd_info* %0, %struct.mtd_partition** %1, %struct.mtd_part_parser_data* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mtd_info*, align 8
  %6 = alloca %struct.mtd_partition**, align 8
  %7 = alloca %struct.mtd_part_parser_data*, align 8
  %8 = alloca %struct.mtd_partition*, align 8
  %9 = alloca %struct.eva_image_header, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.mtd_info* %0, %struct.mtd_info** %5, align 8
  store %struct.mtd_partition** %1, %struct.mtd_partition*** %6, align 8
  store %struct.mtd_part_parser_data* %2, %struct.mtd_part_parser_data** %7, align 8
  %14 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %15 = bitcast %struct.eva_image_header* %9 to i8*
  %16 = call i32 @mtd_read(%struct.mtd_info* %14, i32 0, i32 8, i64* %10, i8* %15)
  store i32 %16, i32* %13, align 4
  %17 = load i32, i32* %13, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %3
  %20 = load i32, i32* %13, align 4
  store i32 %20, i32* %4, align 4
  br label %106

21:                                               ; preds = %3
  %22 = load i64, i64* %10, align 8
  %23 = icmp ne i64 %22, 8
  br i1 %23, label %24, label %27

24:                                               ; preds = %21
  %25 = load i32, i32* @EIO, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %106

27:                                               ; preds = %21
  %28 = getelementptr inbounds %struct.eva_image_header, %struct.eva_image_header* %9, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i64 @le32_to_cpu(i32 %29)
  %31 = load i64, i64* @EVA_MAGIC, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %27
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %4, align 4
  br label %106

36:                                               ; preds = %27
  %37 = getelementptr inbounds %struct.eva_image_header, %struct.eva_image_header* %9, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i64 @le32_to_cpu(i32 %38)
  %40 = load i64, i64* @EVA_FOOTER_SIZE, align 8
  %41 = add i64 %39, %40
  store i64 %41, i64* %11, align 8
  %42 = load i64, i64* %11, align 8
  %43 = call i64 @round_up(i64 %42, i32 65536)
  store i64 %43, i64* %12, align 8
  %44 = load i64, i64* @EVA_DUMMY_SQUASHFS_SIZE, align 8
  %45 = load i64, i64* %12, align 8
  %46 = add i64 %45, %44
  store i64 %46, i64* %12, align 8
  %47 = load i64, i64* %12, align 8
  %48 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %49 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp uge i64 %47, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %36
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %4, align 4
  br label %106

55:                                               ; preds = %36
  %56 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %57 = load i64, i64* %12, align 8
  %58 = call i32 @mtd_check_rootfs_magic(%struct.mtd_info* %56, i64 %57, i32* null)
  store i32 %58, i32* %13, align 4
  %59 = load i32, i32* %13, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %55
  %62 = load i32, i32* %13, align 4
  store i32 %62, i32* %4, align 4
  br label %106

63:                                               ; preds = %55
  %64 = load i32, i32* @EVA_NR_PARTS, align 4
  %65 = sext i32 %64 to i64
  %66 = mul i64 %65, 24
  %67 = trunc i64 %66 to i32
  %68 = load i32, i32* @GFP_KERNEL, align 4
  %69 = call %struct.mtd_partition* @kzalloc(i32 %67, i32 %68)
  store %struct.mtd_partition* %69, %struct.mtd_partition** %8, align 8
  %70 = load %struct.mtd_partition*, %struct.mtd_partition** %8, align 8
  %71 = icmp ne %struct.mtd_partition* %70, null
  br i1 %71, label %75, label %72

72:                                               ; preds = %63
  %73 = load i32, i32* @ENOMEM, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %4, align 4
  br label %106

75:                                               ; preds = %63
  %76 = load i32, i32* @KERNEL_PART_NAME, align 4
  %77 = load %struct.mtd_partition*, %struct.mtd_partition** %8, align 8
  %78 = getelementptr inbounds %struct.mtd_partition, %struct.mtd_partition* %77, i64 0
  %79 = getelementptr inbounds %struct.mtd_partition, %struct.mtd_partition* %78, i32 0, i32 2
  store i32 %76, i32* %79, align 8
  %80 = load %struct.mtd_partition*, %struct.mtd_partition** %8, align 8
  %81 = getelementptr inbounds %struct.mtd_partition, %struct.mtd_partition* %80, i64 0
  %82 = getelementptr inbounds %struct.mtd_partition, %struct.mtd_partition* %81, i32 0, i32 0
  store i64 0, i64* %82, align 8
  %83 = load i64, i64* %11, align 8
  %84 = load %struct.mtd_partition*, %struct.mtd_partition** %8, align 8
  %85 = getelementptr inbounds %struct.mtd_partition, %struct.mtd_partition* %84, i64 0
  %86 = getelementptr inbounds %struct.mtd_partition, %struct.mtd_partition* %85, i32 0, i32 1
  store i64 %83, i64* %86, align 8
  %87 = load i32, i32* @ROOTFS_PART_NAME, align 4
  %88 = load %struct.mtd_partition*, %struct.mtd_partition** %8, align 8
  %89 = getelementptr inbounds %struct.mtd_partition, %struct.mtd_partition* %88, i64 1
  %90 = getelementptr inbounds %struct.mtd_partition, %struct.mtd_partition* %89, i32 0, i32 2
  store i32 %87, i32* %90, align 8
  %91 = load i64, i64* %12, align 8
  %92 = load %struct.mtd_partition*, %struct.mtd_partition** %8, align 8
  %93 = getelementptr inbounds %struct.mtd_partition, %struct.mtd_partition* %92, i64 1
  %94 = getelementptr inbounds %struct.mtd_partition, %struct.mtd_partition* %93, i32 0, i32 0
  store i64 %91, i64* %94, align 8
  %95 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %96 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* %12, align 8
  %99 = sub i64 %97, %98
  %100 = load %struct.mtd_partition*, %struct.mtd_partition** %8, align 8
  %101 = getelementptr inbounds %struct.mtd_partition, %struct.mtd_partition* %100, i64 1
  %102 = getelementptr inbounds %struct.mtd_partition, %struct.mtd_partition* %101, i32 0, i32 1
  store i64 %99, i64* %102, align 8
  %103 = load %struct.mtd_partition*, %struct.mtd_partition** %8, align 8
  %104 = load %struct.mtd_partition**, %struct.mtd_partition*** %6, align 8
  store %struct.mtd_partition* %103, %struct.mtd_partition** %104, align 8
  %105 = load i32, i32* @EVA_NR_PARTS, align 4
  store i32 %105, i32* %4, align 4
  br label %106

106:                                              ; preds = %75, %72, %61, %52, %33, %24, %19
  %107 = load i32, i32* %4, align 4
  ret i32 %107
}

declare dso_local i32 @mtd_read(%struct.mtd_info*, i32, i32, i64*, i8*) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i64 @round_up(i64, i32) #1

declare dso_local i32 @mtd_check_rootfs_magic(%struct.mtd_info*, i64, i32*) #1

declare dso_local %struct.mtd_partition* @kzalloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
