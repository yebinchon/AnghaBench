; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/generic/files/drivers/mtd/mtdsplit/extr_mtdsplit_tplink.c_mtdsplit_parse_tplink.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/generic/files/drivers/mtd/mtdsplit/extr_mtdsplit_tplink.c_mtdsplit_parse_tplink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { i64 }
%struct.mtd_partition = type { i64, i64, i32 }
%struct.mtd_part_parser_data = type { i32 }
%struct.tplink_fw_header = type { %struct.TYPE_4__, %struct.TYPE_3__, i32 }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i32, i32 }

@EIO = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@TPLINK_MIN_ROOTFS_OFFS = common dso_local global i32 0, align 4
@TPLINK_NR_PARTS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@KERNEL_PART_NAME = common dso_local global i32 0, align 4
@ROOTFS_PART_NAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtd_info*, %struct.mtd_partition**, %struct.mtd_part_parser_data*)* @mtdsplit_parse_tplink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtdsplit_parse_tplink(%struct.mtd_info* %0, %struct.mtd_partition** %1, %struct.mtd_part_parser_data* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mtd_info*, align 8
  %6 = alloca %struct.mtd_partition**, align 8
  %7 = alloca %struct.mtd_part_parser_data*, align 8
  %8 = alloca %struct.tplink_fw_header, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.mtd_partition*, align 8
  %14 = alloca i32, align 4
  store %struct.mtd_info* %0, %struct.mtd_info** %5, align 8
  store %struct.mtd_partition** %1, %struct.mtd_partition*** %6, align 8
  store %struct.mtd_part_parser_data* %2, %struct.mtd_part_parser_data** %7, align 8
  store i64 28, i64* %9, align 8
  %15 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %16 = load i64, i64* %9, align 8
  %17 = bitcast %struct.tplink_fw_header* %8 to i8*
  %18 = call i32 @mtd_read(%struct.mtd_info* %15, i32 0, i64 %16, i64* %10, i8* %17)
  store i32 %18, i32* %14, align 4
  %19 = load i32, i32* %14, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %3
  %22 = load i32, i32* %14, align 4
  store i32 %22, i32* %4, align 4
  br label %151

23:                                               ; preds = %3
  %24 = load i64, i64* %10, align 8
  %25 = load i64, i64* %9, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %23
  %28 = load i32, i32* @EIO, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %4, align 4
  br label %151

30:                                               ; preds = %23
  %31 = getelementptr inbounds %struct.tplink_fw_header, %struct.tplink_fw_header* %8, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @le32_to_cpu(i32 %32)
  switch i32 %33, label %78 [
    i32 1, label %34
    i32 2, label %56
    i32 3, label %56
  ]

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.tplink_fw_header, %struct.tplink_fw_header* %8, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @be32_to_cpu(i32 %37)
  %39 = sext i32 %38 to i64
  %40 = icmp ne i64 %39, 28
  br i1 %40, label %41, label %44

41:                                               ; preds = %34
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %4, align 4
  br label %151

44:                                               ; preds = %34
  %45 = getelementptr inbounds %struct.tplink_fw_header, %struct.tplink_fw_header* %8, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @be32_to_cpu(i32 %47)
  %49 = sext i32 %48 to i64
  %50 = add i64 28, %49
  store i64 %50, i64* %11, align 8
  %51 = getelementptr inbounds %struct.tplink_fw_header, %struct.tplink_fw_header* %8, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @be32_to_cpu(i32 %53)
  %55 = sext i32 %54 to i64
  store i64 %55, i64* %12, align 8
  br label %81

56:                                               ; preds = %30, %30
  %57 = getelementptr inbounds %struct.tplink_fw_header, %struct.tplink_fw_header* %8, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @be32_to_cpu(i32 %59)
  %61 = sext i32 %60 to i64
  %62 = icmp ne i64 %61, 28
  br i1 %62, label %63, label %66

63:                                               ; preds = %56
  %64 = load i32, i32* @EINVAL, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %4, align 4
  br label %151

66:                                               ; preds = %56
  %67 = getelementptr inbounds %struct.tplink_fw_header, %struct.tplink_fw_header* %8, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @be32_to_cpu(i32 %69)
  %71 = sext i32 %70 to i64
  %72 = add i64 28, %71
  store i64 %72, i64* %11, align 8
  %73 = getelementptr inbounds %struct.tplink_fw_header, %struct.tplink_fw_header* %8, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @be32_to_cpu(i32 %75)
  %77 = sext i32 %76 to i64
  store i64 %77, i64* %12, align 8
  br label %81

78:                                               ; preds = %30
  %79 = load i32, i32* @EINVAL, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %4, align 4
  br label %151

81:                                               ; preds = %66, %44
  %82 = load i64, i64* %11, align 8
  %83 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %84 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = icmp ugt i64 %82, %85
  br i1 %86, label %87, label %90

87:                                               ; preds = %81
  %88 = load i32, i32* @EINVAL, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %4, align 4
  br label %151

90:                                               ; preds = %81
  %91 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %92 = load i64, i64* %12, align 8
  %93 = call i32 @mtd_check_rootfs_magic(%struct.mtd_info* %91, i64 %92, i32* null)
  store i32 %93, i32* %14, align 4
  %94 = load i32, i32* %14, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %108

96:                                               ; preds = %90
  %97 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %98 = load i32, i32* @TPLINK_MIN_ROOTFS_OFFS, align 4
  %99 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %100 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = call i32 @mtd_find_rootfs_from(%struct.mtd_info* %97, i32 %98, i64 %101, i64* %12, i32* null)
  store i32 %102, i32* %14, align 4
  %103 = load i32, i32* %14, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %96
  %106 = load i32, i32* %14, align 4
  store i32 %106, i32* %4, align 4
  br label %151

107:                                              ; preds = %96
  br label %108

108:                                              ; preds = %107, %90
  %109 = load i32, i32* @TPLINK_NR_PARTS, align 4
  %110 = sext i32 %109 to i64
  %111 = mul i64 %110, 24
  %112 = trunc i64 %111 to i32
  %113 = load i32, i32* @GFP_KERNEL, align 4
  %114 = call %struct.mtd_partition* @kzalloc(i32 %112, i32 %113)
  store %struct.mtd_partition* %114, %struct.mtd_partition** %13, align 8
  %115 = load %struct.mtd_partition*, %struct.mtd_partition** %13, align 8
  %116 = icmp ne %struct.mtd_partition* %115, null
  br i1 %116, label %120, label %117

117:                                              ; preds = %108
  %118 = load i32, i32* @ENOMEM, align 4
  %119 = sub nsw i32 0, %118
  store i32 %119, i32* %4, align 4
  br label %151

120:                                              ; preds = %108
  %121 = load i32, i32* @KERNEL_PART_NAME, align 4
  %122 = load %struct.mtd_partition*, %struct.mtd_partition** %13, align 8
  %123 = getelementptr inbounds %struct.mtd_partition, %struct.mtd_partition* %122, i64 0
  %124 = getelementptr inbounds %struct.mtd_partition, %struct.mtd_partition* %123, i32 0, i32 2
  store i32 %121, i32* %124, align 8
  %125 = load %struct.mtd_partition*, %struct.mtd_partition** %13, align 8
  %126 = getelementptr inbounds %struct.mtd_partition, %struct.mtd_partition* %125, i64 0
  %127 = getelementptr inbounds %struct.mtd_partition, %struct.mtd_partition* %126, i32 0, i32 0
  store i64 0, i64* %127, align 8
  %128 = load i64, i64* %11, align 8
  %129 = load %struct.mtd_partition*, %struct.mtd_partition** %13, align 8
  %130 = getelementptr inbounds %struct.mtd_partition, %struct.mtd_partition* %129, i64 0
  %131 = getelementptr inbounds %struct.mtd_partition, %struct.mtd_partition* %130, i32 0, i32 1
  store i64 %128, i64* %131, align 8
  %132 = load i32, i32* @ROOTFS_PART_NAME, align 4
  %133 = load %struct.mtd_partition*, %struct.mtd_partition** %13, align 8
  %134 = getelementptr inbounds %struct.mtd_partition, %struct.mtd_partition* %133, i64 1
  %135 = getelementptr inbounds %struct.mtd_partition, %struct.mtd_partition* %134, i32 0, i32 2
  store i32 %132, i32* %135, align 8
  %136 = load i64, i64* %12, align 8
  %137 = load %struct.mtd_partition*, %struct.mtd_partition** %13, align 8
  %138 = getelementptr inbounds %struct.mtd_partition, %struct.mtd_partition* %137, i64 1
  %139 = getelementptr inbounds %struct.mtd_partition, %struct.mtd_partition* %138, i32 0, i32 0
  store i64 %136, i64* %139, align 8
  %140 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %141 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = load i64, i64* %12, align 8
  %144 = sub i64 %142, %143
  %145 = load %struct.mtd_partition*, %struct.mtd_partition** %13, align 8
  %146 = getelementptr inbounds %struct.mtd_partition, %struct.mtd_partition* %145, i64 1
  %147 = getelementptr inbounds %struct.mtd_partition, %struct.mtd_partition* %146, i32 0, i32 1
  store i64 %144, i64* %147, align 8
  %148 = load %struct.mtd_partition*, %struct.mtd_partition** %13, align 8
  %149 = load %struct.mtd_partition**, %struct.mtd_partition*** %6, align 8
  store %struct.mtd_partition* %148, %struct.mtd_partition** %149, align 8
  %150 = load i32, i32* @TPLINK_NR_PARTS, align 4
  store i32 %150, i32* %4, align 4
  br label %151

151:                                              ; preds = %120, %117, %105, %87, %78, %63, %41, %27, %21
  %152 = load i32, i32* %4, align 4
  ret i32 %152
}

declare dso_local i32 @mtd_read(%struct.mtd_info*, i32, i64, i64*, i8*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @mtd_check_rootfs_magic(%struct.mtd_info*, i64, i32*) #1

declare dso_local i32 @mtd_find_rootfs_from(%struct.mtd_info*, i32, i64, i64*, i32*) #1

declare dso_local %struct.mtd_partition* @kzalloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
