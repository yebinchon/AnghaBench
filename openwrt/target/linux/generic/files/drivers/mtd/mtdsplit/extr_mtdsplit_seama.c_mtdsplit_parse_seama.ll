; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/generic/files/drivers/mtd/mtdsplit/extr_mtdsplit_seama.c_mtdsplit_parse_seama.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/generic/files/drivers/mtd/mtdsplit/extr_mtdsplit_seama.c_mtdsplit_parse_seama.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { i64 }
%struct.mtd_partition = type { i32, i64, i32 }
%struct.mtd_part_parser_data = type { i32 }
%struct.seama_header = type { i32, i32, i32 }

@EIO = common dso_local global i32 0, align 4
@SEAMA_MAGIC = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@SEAMA_MIN_ROOTFS_OFFS = common dso_local global i32 0, align 4
@SEAMA_NR_PARTS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@KERNEL_PART_NAME = common dso_local global i32 0, align 4
@MTDSPLIT_PART_TYPE_UBI = common dso_local global i32 0, align 4
@UBI_PART_NAME = common dso_local global i32 0, align 4
@ROOTFS_PART_NAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtd_info*, %struct.mtd_partition**, %struct.mtd_part_parser_data*)* @mtdsplit_parse_seama to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtdsplit_parse_seama(%struct.mtd_info* %0, %struct.mtd_partition** %1, %struct.mtd_part_parser_data* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mtd_info*, align 8
  %6 = alloca %struct.mtd_partition**, align 8
  %7 = alloca %struct.mtd_part_parser_data*, align 8
  %8 = alloca %struct.seama_header, align 4
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
  store i64 12, i64* %9, align 8
  %16 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %17 = load i64, i64* %9, align 8
  %18 = bitcast %struct.seama_header* %8 to i8*
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
  %32 = getelementptr inbounds %struct.seama_header, %struct.seama_header* %8, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = call i64 @be32_to_cpu(i32 %33)
  %35 = load i64, i64* @SEAMA_MAGIC, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %31
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %4, align 4
  br label %145

40:                                               ; preds = %31
  %41 = load i64, i64* %9, align 8
  %42 = getelementptr inbounds %struct.seama_header, %struct.seama_header* %8, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i64 @be32_to_cpu(i32 %43)
  %45 = add i64 %41, %44
  %46 = getelementptr inbounds %struct.seama_header, %struct.seama_header* %8, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @be16_to_cpu(i32 %47)
  %49 = sext i32 %48 to i64
  %50 = add i64 %45, %49
  store i64 %50, i64* %11, align 8
  %51 = load i64, i64* %11, align 8
  %52 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %53 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp ugt i64 %51, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %40
  %57 = load i32, i32* @EINVAL, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %4, align 4
  br label %145

59:                                               ; preds = %40
  %60 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %61 = load i64, i64* %11, align 8
  %62 = call i32 @mtd_check_rootfs_magic(%struct.mtd_info* %60, i64 %61, i32* %14)
  store i32 %62, i32* %15, align 4
  %63 = load i32, i32* %15, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %67, label %65

65:                                               ; preds = %59
  %66 = load i64, i64* %11, align 8
  store i64 %66, i64* %12, align 8
  br label %79

67:                                               ; preds = %59
  %68 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %69 = load i32, i32* @SEAMA_MIN_ROOTFS_OFFS, align 4
  %70 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %71 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = call i32 @mtd_find_rootfs_from(%struct.mtd_info* %68, i32 %69, i64 %72, i64* %12, i32* %14)
  store i32 %73, i32* %15, align 4
  %74 = load i32, i32* %15, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %67
  %77 = load i32, i32* %15, align 4
  store i32 %77, i32* %4, align 4
  br label %145

78:                                               ; preds = %67
  br label %79

79:                                               ; preds = %78, %65
  %80 = load i32, i32* @SEAMA_NR_PARTS, align 4
  %81 = sext i32 %80 to i64
  %82 = mul i64 %81, 24
  %83 = trunc i64 %82 to i32
  %84 = load i32, i32* @GFP_KERNEL, align 4
  %85 = call %struct.mtd_partition* @kzalloc(i32 %83, i32 %84)
  store %struct.mtd_partition* %85, %struct.mtd_partition** %13, align 8
  %86 = load %struct.mtd_partition*, %struct.mtd_partition** %13, align 8
  %87 = icmp ne %struct.mtd_partition* %86, null
  br i1 %87, label %91, label %88

88:                                               ; preds = %79
  %89 = load i32, i32* @ENOMEM, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %4, align 4
  br label %145

91:                                               ; preds = %79
  %92 = load i32, i32* @KERNEL_PART_NAME, align 4
  %93 = load %struct.mtd_partition*, %struct.mtd_partition** %13, align 8
  %94 = getelementptr inbounds %struct.mtd_partition, %struct.mtd_partition* %93, i64 0
  %95 = getelementptr inbounds %struct.mtd_partition, %struct.mtd_partition* %94, i32 0, i32 2
  store i32 %92, i32* %95, align 8
  %96 = getelementptr inbounds %struct.seama_header, %struct.seama_header* %8, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @be16_to_cpu(i32 %97)
  %99 = sext i32 %98 to i64
  %100 = add i64 12, %99
  %101 = trunc i64 %100 to i32
  %102 = load %struct.mtd_partition*, %struct.mtd_partition** %13, align 8
  %103 = getelementptr inbounds %struct.mtd_partition, %struct.mtd_partition* %102, i64 0
  %104 = getelementptr inbounds %struct.mtd_partition, %struct.mtd_partition* %103, i32 0, i32 0
  store i32 %101, i32* %104, align 8
  %105 = load i64, i64* %12, align 8
  %106 = load %struct.mtd_partition*, %struct.mtd_partition** %13, align 8
  %107 = getelementptr inbounds %struct.mtd_partition, %struct.mtd_partition* %106, i64 0
  %108 = getelementptr inbounds %struct.mtd_partition, %struct.mtd_partition* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = sext i32 %109 to i64
  %111 = sub i64 %105, %110
  %112 = load %struct.mtd_partition*, %struct.mtd_partition** %13, align 8
  %113 = getelementptr inbounds %struct.mtd_partition, %struct.mtd_partition* %112, i64 0
  %114 = getelementptr inbounds %struct.mtd_partition, %struct.mtd_partition* %113, i32 0, i32 1
  store i64 %111, i64* %114, align 8
  %115 = load i32, i32* %14, align 4
  %116 = load i32, i32* @MTDSPLIT_PART_TYPE_UBI, align 4
  %117 = icmp eq i32 %115, %116
  br i1 %117, label %118, label %123

118:                                              ; preds = %91
  %119 = load i32, i32* @UBI_PART_NAME, align 4
  %120 = load %struct.mtd_partition*, %struct.mtd_partition** %13, align 8
  %121 = getelementptr inbounds %struct.mtd_partition, %struct.mtd_partition* %120, i64 1
  %122 = getelementptr inbounds %struct.mtd_partition, %struct.mtd_partition* %121, i32 0, i32 2
  store i32 %119, i32* %122, align 8
  br label %128

123:                                              ; preds = %91
  %124 = load i32, i32* @ROOTFS_PART_NAME, align 4
  %125 = load %struct.mtd_partition*, %struct.mtd_partition** %13, align 8
  %126 = getelementptr inbounds %struct.mtd_partition, %struct.mtd_partition* %125, i64 1
  %127 = getelementptr inbounds %struct.mtd_partition, %struct.mtd_partition* %126, i32 0, i32 2
  store i32 %124, i32* %127, align 8
  br label %128

128:                                              ; preds = %123, %118
  %129 = load i64, i64* %12, align 8
  %130 = trunc i64 %129 to i32
  %131 = load %struct.mtd_partition*, %struct.mtd_partition** %13, align 8
  %132 = getelementptr inbounds %struct.mtd_partition, %struct.mtd_partition* %131, i64 1
  %133 = getelementptr inbounds %struct.mtd_partition, %struct.mtd_partition* %132, i32 0, i32 0
  store i32 %130, i32* %133, align 8
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
  %144 = load i32, i32* @SEAMA_NR_PARTS, align 4
  store i32 %144, i32* %4, align 4
  br label %145

145:                                              ; preds = %128, %88, %76, %56, %37, %28, %22
  %146 = load i32, i32* %4, align 4
  ret i32 %146
}

declare dso_local i32 @mtd_read(%struct.mtd_info*, i32, i64, i64*, i8*) #1

declare dso_local i64 @be32_to_cpu(i32) #1

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i32 @mtd_check_rootfs_magic(%struct.mtd_info*, i64, i32*) #1

declare dso_local i32 @mtd_find_rootfs_from(%struct.mtd_info*, i32, i64, i64*, i32*) #1

declare dso_local %struct.mtd_partition* @kzalloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
