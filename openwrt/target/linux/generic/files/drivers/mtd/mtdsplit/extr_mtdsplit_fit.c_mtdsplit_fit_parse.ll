; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/generic/files/drivers/mtd/mtdsplit/extr_mtdsplit_fit.c_mtdsplit_fit_parse.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/generic/files/drivers/mtd/mtdsplit/extr_mtdsplit_fit.c_mtdsplit_fit_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { i64, i64, i32 }
%struct.mtd_partition = type { i64, i64, i32 }
%struct.mtd_part_parser_data = type { i32 }
%struct.fdt_header = type { i32, i32 }

@.str = private unnamed_addr constant [37 x i8] c"read error in \22%s\22 at offset 0x%llx\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"short read in \22%s\22\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@OF_DT_HEADER = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [49 x i8] c"no valid FIT image found in \22%s\22 at offset %llx\0A\00", align 1
@.str.3 = private unnamed_addr constant [48 x i8] c"FIT image in \22%s\22 at offset %llx has null size\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [41 x i8] c"no rootfs found after FIT image in \22%s\22\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@KERNEL_PART_NAME = common dso_local global i32 0, align 4
@ROOTFS_PART_NAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtd_info*, %struct.mtd_partition**, %struct.mtd_part_parser_data*)* @mtdsplit_fit_parse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtdsplit_fit_parse(%struct.mtd_info* %0, %struct.mtd_partition** %1, %struct.mtd_part_parser_data* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mtd_info*, align 8
  %6 = alloca %struct.mtd_partition**, align 8
  %7 = alloca %struct.mtd_part_parser_data*, align 8
  %8 = alloca %struct.fdt_header, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.mtd_partition*, align 8
  %17 = alloca i32, align 4
  store %struct.mtd_info* %0, %struct.mtd_info** %5, align 8
  store %struct.mtd_partition** %1, %struct.mtd_partition*** %6, align 8
  store %struct.mtd_part_parser_data* %2, %struct.mtd_part_parser_data** %7, align 8
  store i64 8, i64* %9, align 8
  store i64 0, i64* %11, align 8
  br label %18

18:                                               ; preds = %65, %3
  %19 = load i64, i64* %11, align 8
  %20 = load i64, i64* %9, align 8
  %21 = add i64 %19, %20
  %22 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %23 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ule i64 %21, %24
  br i1 %25, label %26, label %71

26:                                               ; preds = %18
  %27 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %28 = load i64, i64* %11, align 8
  %29 = load i64, i64* %9, align 8
  %30 = bitcast %struct.fdt_header* %8 to i8*
  %31 = call i32 @mtd_read(%struct.mtd_info* %27, i64 %28, i64 %29, i64* %10, i8* %30)
  store i32 %31, i32* %17, align 4
  %32 = load i32, i32* %17, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %26
  %35 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %36 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = load i64, i64* %11, align 8
  %39 = call i32 (i8*, i32, ...) @pr_err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %37, i64 %38)
  %40 = load i32, i32* %17, align 4
  store i32 %40, i32* %4, align 4
  br label %149

41:                                               ; preds = %26
  %42 = load i64, i64* %10, align 8
  %43 = load i64, i64* %9, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %45, label %52

45:                                               ; preds = %41
  %46 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %47 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = call i32 (i8*, i32, ...) @pr_err(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %48)
  %50 = load i32, i32* @EIO, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %4, align 4
  br label %149

52:                                               ; preds = %41
  %53 = getelementptr inbounds %struct.fdt_header, %struct.fdt_header* %8, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i64 @be32_to_cpu(i32 %54)
  %56 = load i64, i64* @OF_DT_HEADER, align 8
  %57 = icmp ne i64 %55, %56
  br i1 %57, label %58, label %64

58:                                               ; preds = %52
  %59 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %60 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = load i64, i64* %11, align 8
  %63 = call i32 @pr_debug(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0), i32 %61, i64 %62)
  br label %65

64:                                               ; preds = %52
  br label %71

65:                                               ; preds = %58
  %66 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %67 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* %11, align 8
  %70 = add i64 %69, %68
  store i64 %70, i64* %11, align 8
  br label %18

71:                                               ; preds = %64, %18
  %72 = load i64, i64* %11, align 8
  store i64 %72, i64* %12, align 8
  %73 = getelementptr inbounds %struct.fdt_header, %struct.fdt_header* %8, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i64 @be32_to_cpu(i32 %74)
  store i64 %75, i64* %13, align 8
  %76 = load i64, i64* %13, align 8
  %77 = icmp eq i64 %76, 0
  br i1 %77, label %78, label %86

78:                                               ; preds = %71
  %79 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %80 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = load i64, i64* %12, align 8
  %83 = call i32 (i8*, i32, ...) @pr_err(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0), i32 %81, i64 %82)
  %84 = load i32, i32* @ENODEV, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %4, align 4
  br label %149

86:                                               ; preds = %71
  %87 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %88 = load i64, i64* %12, align 8
  %89 = load i64, i64* %13, align 8
  %90 = add i64 %88, %89
  %91 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %92 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = call i32 @mtd_find_rootfs_from(%struct.mtd_info* %87, i64 %90, i64 %93, i64* %14, i32* null)
  store i32 %94, i32* %17, align 4
  %95 = load i32, i32* %17, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %103

97:                                               ; preds = %86
  %98 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %99 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 8
  %101 = call i32 @pr_info(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0), i32 %100)
  %102 = load i32, i32* %17, align 4
  store i32 %102, i32* %4, align 4
  br label %149

103:                                              ; preds = %86
  %104 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %105 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* %14, align 8
  %108 = sub i64 %106, %107
  store i64 %108, i64* %15, align 8
  %109 = load i32, i32* @GFP_KERNEL, align 4
  %110 = call %struct.mtd_partition* @kzalloc(i32 48, i32 %109)
  store %struct.mtd_partition* %110, %struct.mtd_partition** %16, align 8
  %111 = load %struct.mtd_partition*, %struct.mtd_partition** %16, align 8
  %112 = icmp ne %struct.mtd_partition* %111, null
  br i1 %112, label %116, label %113

113:                                              ; preds = %103
  %114 = load i32, i32* @ENOMEM, align 4
  %115 = sub nsw i32 0, %114
  store i32 %115, i32* %4, align 4
  br label %149

116:                                              ; preds = %103
  %117 = load i32, i32* @KERNEL_PART_NAME, align 4
  %118 = load %struct.mtd_partition*, %struct.mtd_partition** %16, align 8
  %119 = getelementptr inbounds %struct.mtd_partition, %struct.mtd_partition* %118, i64 0
  %120 = getelementptr inbounds %struct.mtd_partition, %struct.mtd_partition* %119, i32 0, i32 2
  store i32 %117, i32* %120, align 8
  %121 = load i64, i64* %12, align 8
  %122 = load %struct.mtd_partition*, %struct.mtd_partition** %16, align 8
  %123 = getelementptr inbounds %struct.mtd_partition, %struct.mtd_partition* %122, i64 0
  %124 = getelementptr inbounds %struct.mtd_partition, %struct.mtd_partition* %123, i32 0, i32 0
  store i64 %121, i64* %124, align 8
  %125 = load i64, i64* %13, align 8
  %126 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %127 = call i64 @mtd_rounddown_to_eb(i64 %125, %struct.mtd_info* %126)
  %128 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %129 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %128, i32 0, i32 1
  %130 = load i64, i64* %129, align 8
  %131 = add i64 %127, %130
  %132 = load %struct.mtd_partition*, %struct.mtd_partition** %16, align 8
  %133 = getelementptr inbounds %struct.mtd_partition, %struct.mtd_partition* %132, i64 0
  %134 = getelementptr inbounds %struct.mtd_partition, %struct.mtd_partition* %133, i32 0, i32 1
  store i64 %131, i64* %134, align 8
  %135 = load i32, i32* @ROOTFS_PART_NAME, align 4
  %136 = load %struct.mtd_partition*, %struct.mtd_partition** %16, align 8
  %137 = getelementptr inbounds %struct.mtd_partition, %struct.mtd_partition* %136, i64 1
  %138 = getelementptr inbounds %struct.mtd_partition, %struct.mtd_partition* %137, i32 0, i32 2
  store i32 %135, i32* %138, align 8
  %139 = load i64, i64* %14, align 8
  %140 = load %struct.mtd_partition*, %struct.mtd_partition** %16, align 8
  %141 = getelementptr inbounds %struct.mtd_partition, %struct.mtd_partition* %140, i64 1
  %142 = getelementptr inbounds %struct.mtd_partition, %struct.mtd_partition* %141, i32 0, i32 0
  store i64 %139, i64* %142, align 8
  %143 = load i64, i64* %15, align 8
  %144 = load %struct.mtd_partition*, %struct.mtd_partition** %16, align 8
  %145 = getelementptr inbounds %struct.mtd_partition, %struct.mtd_partition* %144, i64 1
  %146 = getelementptr inbounds %struct.mtd_partition, %struct.mtd_partition* %145, i32 0, i32 1
  store i64 %143, i64* %146, align 8
  %147 = load %struct.mtd_partition*, %struct.mtd_partition** %16, align 8
  %148 = load %struct.mtd_partition**, %struct.mtd_partition*** %6, align 8
  store %struct.mtd_partition* %147, %struct.mtd_partition** %148, align 8
  store i32 2, i32* %4, align 4
  br label %149

149:                                              ; preds = %116, %113, %97, %78, %45, %34
  %150 = load i32, i32* %4, align 4
  ret i32 %150
}

declare dso_local i32 @mtd_read(%struct.mtd_info*, i64, i64, i64*, i8*) #1

declare dso_local i32 @pr_err(i8*, i32, ...) #1

declare dso_local i64 @be32_to_cpu(i32) #1

declare dso_local i32 @pr_debug(i8*, i32, i64) #1

declare dso_local i32 @mtd_find_rootfs_from(%struct.mtd_info*, i64, i64, i64*, i32*) #1

declare dso_local i32 @pr_info(i8*, i32) #1

declare dso_local %struct.mtd_partition* @kzalloc(i32, i32) #1

declare dso_local i64 @mtd_rounddown_to_eb(i64, %struct.mtd_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
