; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/generic/files/drivers/mtd/mtdsplit/extr_mtdsplit_wrgg.c_mtdsplit_parse_wrgg.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/generic/files/drivers/mtd/mtdsplit/extr_mtdsplit_wrgg.c_mtdsplit_parse_wrgg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { i64 }
%struct.mtd_partition = type { i64, i64, i32 }
%struct.mtd_part_parser_data = type { i32 }
%struct.wrgg03_header = type { i32, i32 }
%struct.wrg_header = type { i32 }

@EIO = common dso_local global i32 0, align 4
@WRGG03_MAGIC = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@WRG_MAGIC = common dso_local global i32 0, align 4
@WRGG_MIN_ROOTFS_OFFS = common dso_local global i32 0, align 4
@WRGG_NR_PARTS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@KERNEL_PART_NAME = common dso_local global i32 0, align 4
@ROOTFS_PART_NAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtd_info*, %struct.mtd_partition**, %struct.mtd_part_parser_data*)* @mtdsplit_parse_wrgg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtdsplit_parse_wrgg(%struct.mtd_info* %0, %struct.mtd_partition** %1, %struct.mtd_part_parser_data* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mtd_info*, align 8
  %6 = alloca %struct.mtd_partition**, align 8
  %7 = alloca %struct.mtd_part_parser_data*, align 8
  %8 = alloca %struct.wrgg03_header, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.mtd_partition*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.mtd_info* %0, %struct.mtd_info** %5, align 8
  store %struct.mtd_partition** %1, %struct.mtd_partition*** %6, align 8
  store %struct.mtd_part_parser_data* %2, %struct.mtd_part_parser_data** %7, align 8
  store i64 8, i64* %9, align 8
  %16 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %17 = load i64, i64* %9, align 8
  %18 = bitcast %struct.wrgg03_header* %8 to i8*
  %19 = call i32 @mtd_read(%struct.mtd_info* %16, i32 0, i64 %17, i64* %10, i8* %18)
  store i32 %19, i32* %15, align 4
  %20 = load i32, i32* %15, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %3
  %23 = load i32, i32* %15, align 4
  store i32 %23, i32* %4, align 4
  br label %145

24:                                               ; preds = %3
  %25 = load i64, i64* %10, align 8
  %26 = load i64, i64* %9, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %24
  %29 = load i32, i32* @EIO, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  br label %145

31:                                               ; preds = %24
  %32 = getelementptr inbounds %struct.wrgg03_header, %struct.wrgg03_header* %8, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @le32_to_cpu(i32 %33)
  %35 = load i32, i32* @WRGG03_MAGIC, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %65

37:                                               ; preds = %31
  %38 = load i64, i64* %9, align 8
  %39 = getelementptr inbounds %struct.wrgg03_header, %struct.wrgg03_header* %8, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i64 @be32_to_cpu(i32 %40)
  %42 = add i64 %38, %41
  store i64 %42, i64* %11, align 8
  %43 = load i64, i64* %11, align 8
  %44 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %45 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp ugt i64 %43, %46
  br i1 %47, label %48, label %55

48:                                               ; preds = %37
  %49 = load i64, i64* %9, align 8
  %50 = getelementptr inbounds %struct.wrgg03_header, %struct.wrgg03_header* %8, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @le32_to_cpu(i32 %51)
  %53 = sext i32 %52 to i64
  %54 = add i64 %49, %53
  store i64 %54, i64* %11, align 8
  br label %55

55:                                               ; preds = %48, %37
  %56 = load i64, i64* %11, align 8
  %57 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %58 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp ugt i64 %56, %59
  br i1 %60, label %61, label %64

61:                                               ; preds = %55
  %62 = load i32, i32* @EINVAL, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %4, align 4
  br label %145

64:                                               ; preds = %55
  br label %82

65:                                               ; preds = %31
  %66 = getelementptr inbounds %struct.wrgg03_header, %struct.wrgg03_header* %8, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @le32_to_cpu(i32 %67)
  %69 = load i32, i32* @WRG_MAGIC, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %71, label %78

71:                                               ; preds = %65
  %72 = bitcast %struct.wrgg03_header* %8 to %struct.wrg_header*
  %73 = getelementptr inbounds %struct.wrg_header, %struct.wrg_header* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @le32_to_cpu(i32 %74)
  %76 = sext i32 %75 to i64
  %77 = add i64 4, %76
  store i64 %77, i64* %11, align 8
  br label %81

78:                                               ; preds = %65
  %79 = load i32, i32* @EINVAL, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %4, align 4
  br label %145

81:                                               ; preds = %71
  br label %82

82:                                               ; preds = %81, %64
  %83 = load i64, i64* %11, align 8
  %84 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %85 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = icmp ugt i64 %83, %86
  br i1 %87, label %88, label %91

88:                                               ; preds = %82
  %89 = load i32, i32* @EINVAL, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %4, align 4
  br label %145

91:                                               ; preds = %82
  %92 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %93 = load i32, i32* @WRGG_MIN_ROOTFS_OFFS, align 4
  %94 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %95 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = call i32 @mtd_find_rootfs_from(%struct.mtd_info* %92, i32 %93, i64 %96, i64* %12, i32* %14)
  store i32 %97, i32* %15, align 4
  %98 = load i32, i32* %15, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %91
  %101 = load i32, i32* %15, align 4
  store i32 %101, i32* %4, align 4
  br label %145

102:                                              ; preds = %91
  %103 = load i32, i32* @WRGG_NR_PARTS, align 4
  %104 = sext i32 %103 to i64
  %105 = mul i64 %104, 24
  %106 = trunc i64 %105 to i32
  %107 = load i32, i32* @GFP_KERNEL, align 4
  %108 = call %struct.mtd_partition* @kzalloc(i32 %106, i32 %107)
  store %struct.mtd_partition* %108, %struct.mtd_partition** %13, align 8
  %109 = load %struct.mtd_partition*, %struct.mtd_partition** %13, align 8
  %110 = icmp ne %struct.mtd_partition* %109, null
  br i1 %110, label %114, label %111

111:                                              ; preds = %102
  %112 = load i32, i32* @ENOMEM, align 4
  %113 = sub nsw i32 0, %112
  store i32 %113, i32* %4, align 4
  br label %145

114:                                              ; preds = %102
  %115 = load i32, i32* @KERNEL_PART_NAME, align 4
  %116 = load %struct.mtd_partition*, %struct.mtd_partition** %13, align 8
  %117 = getelementptr inbounds %struct.mtd_partition, %struct.mtd_partition* %116, i64 0
  %118 = getelementptr inbounds %struct.mtd_partition, %struct.mtd_partition* %117, i32 0, i32 2
  store i32 %115, i32* %118, align 8
  %119 = load %struct.mtd_partition*, %struct.mtd_partition** %13, align 8
  %120 = getelementptr inbounds %struct.mtd_partition, %struct.mtd_partition* %119, i64 0
  %121 = getelementptr inbounds %struct.mtd_partition, %struct.mtd_partition* %120, i32 0, i32 0
  store i64 0, i64* %121, align 8
  %122 = load i64, i64* %12, align 8
  %123 = load %struct.mtd_partition*, %struct.mtd_partition** %13, align 8
  %124 = getelementptr inbounds %struct.mtd_partition, %struct.mtd_partition* %123, i64 0
  %125 = getelementptr inbounds %struct.mtd_partition, %struct.mtd_partition* %124, i32 0, i32 1
  store i64 %122, i64* %125, align 8
  %126 = load i32, i32* @ROOTFS_PART_NAME, align 4
  %127 = load %struct.mtd_partition*, %struct.mtd_partition** %13, align 8
  %128 = getelementptr inbounds %struct.mtd_partition, %struct.mtd_partition* %127, i64 1
  %129 = getelementptr inbounds %struct.mtd_partition, %struct.mtd_partition* %128, i32 0, i32 2
  store i32 %126, i32* %129, align 8
  %130 = load i64, i64* %12, align 8
  %131 = load %struct.mtd_partition*, %struct.mtd_partition** %13, align 8
  %132 = getelementptr inbounds %struct.mtd_partition, %struct.mtd_partition* %131, i64 1
  %133 = getelementptr inbounds %struct.mtd_partition, %struct.mtd_partition* %132, i32 0, i32 0
  store i64 %130, i64* %133, align 8
  %134 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %135 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = load i64, i64* %12, align 8
  %138 = sub i64 %136, %137
  %139 = load %struct.mtd_partition*, %struct.mtd_partition** %13, align 8
  %140 = getelementptr inbounds %struct.mtd_partition, %struct.mtd_partition* %139, i64 1
  %141 = getelementptr inbounds %struct.mtd_partition, %struct.mtd_partition* %140, i32 0, i32 1
  store i64 %138, i64* %141, align 8
  %142 = load %struct.mtd_partition*, %struct.mtd_partition** %13, align 8
  %143 = load %struct.mtd_partition**, %struct.mtd_partition*** %6, align 8
  store %struct.mtd_partition* %142, %struct.mtd_partition** %143, align 8
  %144 = load i32, i32* @WRGG_NR_PARTS, align 4
  store i32 %144, i32* %4, align 4
  br label %145

145:                                              ; preds = %114, %111, %100, %88, %78, %61, %28, %22
  %146 = load i32, i32* %4, align 4
  ret i32 %146
}

declare dso_local i32 @mtd_read(%struct.mtd_info*, i32, i64, i64*, i8*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i64 @be32_to_cpu(i32) #1

declare dso_local i32 @mtd_find_rootfs_from(%struct.mtd_info*, i32, i64, i64*, i32*) #1

declare dso_local %struct.mtd_partition* @kzalloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
