; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/generic/files/drivers/mtd/mtdsplit/extr_mtdsplit_trx.c_mtdsplit_parse_trx.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/generic/files/drivers/mtd/mtdsplit/extr_mtdsplit_trx.c_mtdsplit_parse_trx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { i64, i32, i64 }
%struct.mtd_partition = type { i64, i64, i32 }
%struct.mtd_part_parser_data = type { i32 }
%struct.trx_header = type { i64, i64*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@TRX_MAGIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"no valid trx header found in \22%s\22 at offset %llx\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"trx image exceeds MTD device \22%s\22\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"no trx header found in \22%s\22\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"no rootfs found in \22%s\22\0A\00", align 1
@KERNEL_PART_NAME = common dso_local global i32 0, align 4
@ROOTFS_PART_NAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtd_info*, %struct.mtd_partition**, %struct.mtd_part_parser_data*)* @mtdsplit_parse_trx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtdsplit_parse_trx(%struct.mtd_info* %0, %struct.mtd_partition** %1, %struct.mtd_part_parser_data* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mtd_info*, align 8
  %6 = alloca %struct.mtd_partition**, align 8
  %7 = alloca %struct.mtd_part_parser_data*, align 8
  %8 = alloca %struct.mtd_partition*, align 8
  %9 = alloca %struct.trx_header, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store %struct.mtd_info* %0, %struct.mtd_info** %5, align 8
  store %struct.mtd_partition** %1, %struct.mtd_partition*** %6, align 8
  store %struct.mtd_part_parser_data* %2, %struct.mtd_part_parser_data** %7, align 8
  store i64 0, i64* %13, align 8
  store i64 0, i64* %15, align 8
  store i32 2, i32* %10, align 4
  %17 = load i32, i32* %10, align 4
  %18 = sext i32 %17 to i64
  %19 = mul i64 %18, 24
  %20 = trunc i64 %19 to i32
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call %struct.mtd_partition* @kzalloc(i32 %20, i32 %21)
  store %struct.mtd_partition* %22, %struct.mtd_partition** %8, align 8
  %23 = load %struct.mtd_partition*, %struct.mtd_partition** %8, align 8
  %24 = icmp ne %struct.mtd_partition* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %3
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %149

28:                                               ; preds = %3
  store i64 0, i64* %11, align 8
  br label %29

29:                                               ; preds = %71, %28
  %30 = load i64, i64* %11, align 8
  %31 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %32 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ult i64 %30, %33
  br i1 %34, label %35, label %77

35:                                               ; preds = %29
  store i64 0, i64* %13, align 8
  %36 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %37 = load i64, i64* %11, align 8
  %38 = call i32 @read_trx_header(%struct.mtd_info* %36, i64 %37, %struct.trx_header* %9)
  store i32 %38, i32* %16, align 4
  %39 = load i32, i32* %16, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %35
  br label %71

42:                                               ; preds = %35
  %43 = getelementptr inbounds %struct.trx_header, %struct.trx_header* %9, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i32, i32* @TRX_MAGIC, align 4
  %46 = call i64 @cpu_to_le32(i32 %45)
  %47 = icmp ne i64 %44, %46
  br i1 %47, label %48, label %54

48:                                               ; preds = %42
  %49 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %50 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = load i64, i64* %11, align 8
  %53 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %51, i64 %52)
  br label %71

54:                                               ; preds = %42
  %55 = getelementptr inbounds %struct.trx_header, %struct.trx_header* %9, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = call i64 @le32_to_cpu(i32 %56)
  store i64 %57, i64* %13, align 8
  %58 = load i64, i64* %11, align 8
  %59 = load i64, i64* %13, align 8
  %60 = add i64 %58, %59
  %61 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %62 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp ugt i64 %60, %63
  br i1 %64, label %65, label %70

65:                                               ; preds = %54
  %66 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %67 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %68)
  br label %71

70:                                               ; preds = %54
  br label %77

71:                                               ; preds = %65, %48, %41
  %72 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %73 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* %11, align 8
  %76 = add i64 %75, %74
  store i64 %76, i64* %11, align 8
  br label %29

77:                                               ; preds = %70, %29
  %78 = load i64, i64* %13, align 8
  %79 = icmp eq i64 %78, 0
  br i1 %79, label %80, label %87

80:                                               ; preds = %77
  %81 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %82 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %83)
  %85 = load i32, i32* @ENODEV, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %16, align 4
  br label %145

87:                                               ; preds = %77
  %88 = load i64, i64* %11, align 8
  %89 = getelementptr inbounds %struct.trx_header, %struct.trx_header* %9, i32 0, i32 1
  %90 = load i64*, i64** %89, align 8
  %91 = getelementptr inbounds i64, i64* %90, i64 0
  %92 = load i64, i64* %91, align 8
  %93 = add i64 %88, %92
  store i64 %93, i64* %12, align 8
  %94 = load i64, i64* %11, align 8
  %95 = getelementptr inbounds %struct.trx_header, %struct.trx_header* %9, i32 0, i32 1
  %96 = load i64*, i64** %95, align 8
  %97 = getelementptr inbounds i64, i64* %96, i64 1
  %98 = load i64, i64* %97, align 8
  %99 = add i64 %94, %98
  store i64 %99, i64* %14, align 8
  %100 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %101 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* %14, align 8
  %104 = sub i64 %102, %103
  store i64 %104, i64* %15, align 8
  %105 = load i64, i64* %14, align 8
  %106 = load i64, i64* %12, align 8
  %107 = sub i64 %105, %106
  store i64 %107, i64* %13, align 8
  %108 = load i64, i64* %15, align 8
  %109 = icmp eq i64 %108, 0
  br i1 %109, label %110, label %117

110:                                              ; preds = %87
  %111 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %112 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 8
  %114 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 %113)
  %115 = load i32, i32* @ENODEV, align 4
  %116 = sub nsw i32 0, %115
  store i32 %116, i32* %16, align 4
  br label %145

117:                                              ; preds = %87
  %118 = load i32, i32* @KERNEL_PART_NAME, align 4
  %119 = load %struct.mtd_partition*, %struct.mtd_partition** %8, align 8
  %120 = getelementptr inbounds %struct.mtd_partition, %struct.mtd_partition* %119, i64 0
  %121 = getelementptr inbounds %struct.mtd_partition, %struct.mtd_partition* %120, i32 0, i32 2
  store i32 %118, i32* %121, align 8
  %122 = load i64, i64* %12, align 8
  %123 = load %struct.mtd_partition*, %struct.mtd_partition** %8, align 8
  %124 = getelementptr inbounds %struct.mtd_partition, %struct.mtd_partition* %123, i64 0
  %125 = getelementptr inbounds %struct.mtd_partition, %struct.mtd_partition* %124, i32 0, i32 0
  store i64 %122, i64* %125, align 8
  %126 = load i64, i64* %13, align 8
  %127 = load %struct.mtd_partition*, %struct.mtd_partition** %8, align 8
  %128 = getelementptr inbounds %struct.mtd_partition, %struct.mtd_partition* %127, i64 0
  %129 = getelementptr inbounds %struct.mtd_partition, %struct.mtd_partition* %128, i32 0, i32 1
  store i64 %126, i64* %129, align 8
  %130 = load i32, i32* @ROOTFS_PART_NAME, align 4
  %131 = load %struct.mtd_partition*, %struct.mtd_partition** %8, align 8
  %132 = getelementptr inbounds %struct.mtd_partition, %struct.mtd_partition* %131, i64 1
  %133 = getelementptr inbounds %struct.mtd_partition, %struct.mtd_partition* %132, i32 0, i32 2
  store i32 %130, i32* %133, align 8
  %134 = load i64, i64* %14, align 8
  %135 = load %struct.mtd_partition*, %struct.mtd_partition** %8, align 8
  %136 = getelementptr inbounds %struct.mtd_partition, %struct.mtd_partition* %135, i64 1
  %137 = getelementptr inbounds %struct.mtd_partition, %struct.mtd_partition* %136, i32 0, i32 0
  store i64 %134, i64* %137, align 8
  %138 = load i64, i64* %15, align 8
  %139 = load %struct.mtd_partition*, %struct.mtd_partition** %8, align 8
  %140 = getelementptr inbounds %struct.mtd_partition, %struct.mtd_partition* %139, i64 1
  %141 = getelementptr inbounds %struct.mtd_partition, %struct.mtd_partition* %140, i32 0, i32 1
  store i64 %138, i64* %141, align 8
  %142 = load %struct.mtd_partition*, %struct.mtd_partition** %8, align 8
  %143 = load %struct.mtd_partition**, %struct.mtd_partition*** %6, align 8
  store %struct.mtd_partition* %142, %struct.mtd_partition** %143, align 8
  %144 = load i32, i32* %10, align 4
  store i32 %144, i32* %4, align 4
  br label %149

145:                                              ; preds = %110, %80
  %146 = load %struct.mtd_partition*, %struct.mtd_partition** %8, align 8
  %147 = call i32 @kfree(%struct.mtd_partition* %146)
  %148 = load i32, i32* %16, align 4
  store i32 %148, i32* %4, align 4
  br label %149

149:                                              ; preds = %145, %117, %25
  %150 = load i32, i32* %4, align 4
  ret i32 %150
}

declare dso_local %struct.mtd_partition* @kzalloc(i32, i32) #1

declare dso_local i32 @read_trx_header(%struct.mtd_info*, i64, %struct.trx_header*) #1

declare dso_local i64 @cpu_to_le32(i32) #1

declare dso_local i32 @pr_debug(i8*, i32, ...) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i32 @kfree(%struct.mtd_partition*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
