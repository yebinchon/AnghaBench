; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/ar7/files/drivers/mtd/extr_titanpart.c_create_titan_partitions.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/ar7/files/drivers/mtd/extr_titanpart.c_create_titan_partitions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_partition = type { i32 }
%struct.mtd_info = type { i32 }
%struct.nsp_img_hdr_head = type { i64, i32 }
%struct.nsp_img_hdr_section_info = type { i32, i32, i32 }
%struct.nsp_img_hdr_sections = type { i64, i32, i32, i8* }

@.str = private unnamed_addr constant [8 x i8] c"BOOTCFG\00", align 1
@NSP_IMG_MAGIC_NUMBER = common dso_local global i64 0, align 8
@MAX_NUM_PARTITIONS = common dso_local global i32 0, align 4
@NSP_IMG_SECTION_TYPE_FILESYSTEM_ROOT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"root\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"rootfs\00", align 1
@NSP_IMG_SECTION_TYPE_KERNEL = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [7 x i8] c"kernel\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"primary_image\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"full_image\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"BOOTLOADER\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"bootloader\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"boot_env\00", align 1
@titan_parts = common dso_local global %struct.mtd_partition* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @create_titan_partitions(%struct.mtd_info* %0, %struct.mtd_partition** %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mtd_info*, align 8
  %6 = alloca %struct.mtd_partition**, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.nsp_img_hdr_head, align 8
  %9 = alloca %struct.nsp_img_hdr_section_info, align 4
  %10 = alloca %struct.nsp_img_hdr_sections, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  store %struct.mtd_info* %0, %struct.mtd_info** %5, align 8
  store %struct.mtd_partition** %1, %struct.mtd_partition*** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 0, i32* %17, align 4
  %19 = call i64 @titan_get_single_image(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32* %11, i32* %12)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %187

22:                                               ; preds = %3
  %23 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %24 = load i32, i32* %11, align 4
  %25 = bitcast %struct.nsp_img_hdr_head* %8 to i32*
  %26 = call i32 @mtd_read(%struct.mtd_info* %23, i32 %24, i32 16, i64* %18, i32* %25)
  %27 = getelementptr inbounds %struct.nsp_img_hdr_head, %struct.nsp_img_hdr_head* %8, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @NSP_IMG_MAGIC_NUMBER, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %22
  store i32 -1, i32* %4, align 4
  br label %187

32:                                               ; preds = %22
  %33 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %34 = load i32, i32* %11, align 4
  %35 = getelementptr inbounds %struct.nsp_img_hdr_head, %struct.nsp_img_hdr_head* %8, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = add i32 %34, %36
  %38 = bitcast %struct.nsp_img_hdr_section_info* %9 to i32*
  %39 = call i32 @mtd_read(%struct.mtd_info* %33, i32 %37, i32 12, i64* %18, i32* %38)
  store i32 0, i32* %16, align 4
  br label %40

40:                                               ; preds = %83, %32
  %41 = load i32, i32* %16, align 4
  %42 = getelementptr inbounds %struct.nsp_img_hdr_section_info, %struct.nsp_img_hdr_section_info* %9, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = icmp slt i32 %41, %43
  br i1 %44, label %45, label %49

45:                                               ; preds = %40
  %46 = load i32, i32* %16, align 4
  %47 = load i32, i32* @MAX_NUM_PARTITIONS, align 4
  %48 = icmp slt i32 %46, %47
  br label %49

49:                                               ; preds = %45, %40
  %50 = phi i1 [ false, %40 ], [ %48, %45 ]
  br i1 %50, label %51, label %86

51:                                               ; preds = %49
  %52 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %53 = load i32, i32* %11, align 4
  %54 = getelementptr inbounds %struct.nsp_img_hdr_section_info, %struct.nsp_img_hdr_section_info* %9, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = add i32 %53, %55
  %57 = load i32, i32* %16, align 4
  %58 = getelementptr inbounds %struct.nsp_img_hdr_section_info, %struct.nsp_img_hdr_section_info* %9, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = mul nsw i32 %57, %59
  %61 = add i32 %56, %60
  %62 = bitcast %struct.nsp_img_hdr_sections* %10 to i32*
  %63 = call i32 @mtd_read(%struct.mtd_info* %52, i32 %61, i32 24, i64* %18, i32* %62)
  %64 = getelementptr inbounds %struct.nsp_img_hdr_sections, %struct.nsp_img_hdr_sections* %10, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @NSP_IMG_SECTION_TYPE_FILESYSTEM_ROOT, align 8
  %67 = icmp ne i64 %65, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %51
  br label %83

69:                                               ; preds = %51
  %70 = load i32, i32* %11, align 4
  %71 = getelementptr inbounds %struct.nsp_img_hdr_sections, %struct.nsp_img_hdr_sections* %10, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = add i32 %70, %72
  store i32 %73, i32* %13, align 4
  %74 = load i32, i32* %13, align 4
  %75 = getelementptr inbounds %struct.nsp_img_hdr_sections, %struct.nsp_img_hdr_sections* %10, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = add i32 %74, %76
  store i32 %77, i32* %14, align 4
  %78 = load i32, i32* %13, align 4
  %79 = load i32, i32* %14, align 4
  %80 = call i32 @titan_add_partition(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %78, i32 %79)
  %81 = load i32, i32* %17, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %17, align 4
  br label %83

83:                                               ; preds = %69, %68
  %84 = load i32, i32* %16, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %16, align 4
  br label %40

86:                                               ; preds = %49
  store i32 0, i32* %16, align 4
  br label %87

87:                                               ; preds = %151, %86
  %88 = load i32, i32* %16, align 4
  %89 = getelementptr inbounds %struct.nsp_img_hdr_section_info, %struct.nsp_img_hdr_section_info* %9, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = icmp slt i32 %88, %90
  br i1 %91, label %92, label %96

92:                                               ; preds = %87
  %93 = load i32, i32* %16, align 4
  %94 = load i32, i32* @MAX_NUM_PARTITIONS, align 4
  %95 = icmp slt i32 %93, %94
  br label %96

96:                                               ; preds = %92, %87
  %97 = phi i1 [ false, %87 ], [ %95, %92 ]
  br i1 %97, label %98, label %154

98:                                               ; preds = %96
  %99 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %100 = load i32, i32* %11, align 4
  %101 = getelementptr inbounds %struct.nsp_img_hdr_section_info, %struct.nsp_img_hdr_section_info* %9, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = add i32 %100, %102
  %104 = load i32, i32* %16, align 4
  %105 = getelementptr inbounds %struct.nsp_img_hdr_section_info, %struct.nsp_img_hdr_section_info* %9, i32 0, i32 2
  %106 = load i32, i32* %105, align 4
  %107 = mul nsw i32 %104, %106
  %108 = add i32 %103, %107
  %109 = bitcast %struct.nsp_img_hdr_sections* %10 to i32*
  %110 = call i32 @mtd_read(%struct.mtd_info* %99, i32 %108, i32 24, i64* %18, i32* %109)
  %111 = getelementptr inbounds %struct.nsp_img_hdr_sections, %struct.nsp_img_hdr_sections* %10, i32 0, i32 3
  %112 = load i8*, i8** %111, align 8
  store i8* %112, i8** %15, align 8
  %113 = getelementptr inbounds %struct.nsp_img_hdr_sections, %struct.nsp_img_hdr_sections* %10, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* @NSP_IMG_SECTION_TYPE_FILESYSTEM_ROOT, align 8
  %116 = icmp eq i64 %114, %115
  br i1 %116, label %117, label %129

117:                                              ; preds = %98
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8** %15, align 8
  %118 = load i32, i32* %11, align 4
  %119 = getelementptr inbounds %struct.nsp_img_hdr_sections, %struct.nsp_img_hdr_sections* %10, i32 0, i32 1
  %120 = load i32, i32* %119, align 8
  %121 = add i32 %118, %120
  store i32 %121, i32* %13, align 4
  %122 = load i32, i32* %12, align 4
  store i32 %122, i32* %14, align 4
  %123 = load i8*, i8** %15, align 8
  %124 = load i32, i32* %13, align 4
  %125 = load i32, i32* %14, align 4
  %126 = call i32 @titan_add_partition(i8* %123, i32 %124, i32 %125)
  %127 = load i32, i32* %17, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %17, align 4
  br label %150

129:                                              ; preds = %98
  %130 = getelementptr inbounds %struct.nsp_img_hdr_sections, %struct.nsp_img_hdr_sections* %10, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = load i64, i64* @NSP_IMG_SECTION_TYPE_KERNEL, align 8
  %133 = icmp eq i64 %131, %132
  br i1 %133, label %134, label %149

134:                                              ; preds = %129
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8** %15, align 8
  %135 = load i32, i32* %11, align 4
  %136 = getelementptr inbounds %struct.nsp_img_hdr_sections, %struct.nsp_img_hdr_sections* %10, i32 0, i32 1
  %137 = load i32, i32* %136, align 8
  %138 = add i32 %135, %137
  store i32 %138, i32* %13, align 4
  %139 = load i32, i32* %13, align 4
  %140 = getelementptr inbounds %struct.nsp_img_hdr_sections, %struct.nsp_img_hdr_sections* %10, i32 0, i32 2
  %141 = load i32, i32* %140, align 4
  %142 = add i32 %139, %141
  store i32 %142, i32* %14, align 4
  %143 = load i8*, i8** %15, align 8
  %144 = load i32, i32* %13, align 4
  %145 = load i32, i32* %14, align 4
  %146 = call i32 @titan_add_partition(i8* %143, i32 %144, i32 %145)
  %147 = load i32, i32* %17, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %17, align 4
  br label %149

149:                                              ; preds = %134, %129
  br label %150

150:                                              ; preds = %149, %117
  br label %151

151:                                              ; preds = %150
  %152 = load i32, i32* %16, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %16, align 4
  br label %87

154:                                              ; preds = %96
  %155 = load i32, i32* %11, align 4
  %156 = load i32, i32* %12, align 4
  %157 = call i32 @titan_add_partition(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i32 %155, i32 %156)
  %158 = load i32, i32* %17, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %17, align 4
  %160 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %161 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = call i32 @titan_add_partition(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i32 0, i32 %162)
  %164 = load i32, i32* %17, align 4
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %17, align 4
  %166 = call i32 @titan_parse_env_address(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i32* %13, i32* %14)
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %174, label %168

168:                                              ; preds = %154
  %169 = load i32, i32* %13, align 4
  %170 = load i32, i32* %14, align 4
  %171 = call i32 @titan_add_partition(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0), i32 %169, i32 %170)
  %172 = load i32, i32* %17, align 4
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* %17, align 4
  br label %174

174:                                              ; preds = %168, %154
  %175 = call i32 @titan_parse_env_address(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0), i32* %13, i32* %14)
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %183, label %177

177:                                              ; preds = %174
  %178 = load i32, i32* %13, align 4
  %179 = load i32, i32* %14, align 4
  %180 = call i32 @titan_add_partition(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0), i32 %178, i32 %179)
  %181 = load i32, i32* %17, align 4
  %182 = add nsw i32 %181, 1
  store i32 %182, i32* %17, align 4
  br label %183

183:                                              ; preds = %177, %174
  %184 = load %struct.mtd_partition*, %struct.mtd_partition** @titan_parts, align 8
  %185 = load %struct.mtd_partition**, %struct.mtd_partition*** %6, align 8
  store %struct.mtd_partition* %184, %struct.mtd_partition** %185, align 8
  %186 = load i32, i32* %17, align 4
  store i32 %186, i32* %4, align 4
  br label %187

187:                                              ; preds = %183, %31, %21
  %188 = load i32, i32* %4, align 4
  ret i32 %188
}

declare dso_local i64 @titan_get_single_image(i8*, i32*, i32*) #1

declare dso_local i32 @mtd_read(%struct.mtd_info*, i32, i32, i64*, i32*) #1

declare dso_local i32 @titan_add_partition(i8*, i32, i32) #1

declare dso_local i32 @titan_parse_env_address(i8*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
