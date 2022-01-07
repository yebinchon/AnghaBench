; ModuleID = '/home/carl/AnghaBench/radare2/shlr/grub/fs/extr_udf.c_grub_udf_read_icb.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/grub/fs/extr_udf.c_grub_udf_read_icb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.grub_udf_data = type { i32 }
%struct.grub_udf_long_ad = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.grub_fshelp_node = type { %struct.grub_udf_data*, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@grub_errno = common dso_local global i64 0, align 8
@GRUB_UDF_LOG2_BLKSZ = common dso_local global i32 0, align 4
@GRUB_UDF_TAG_IDENT_FE = common dso_local global i64 0, align 8
@GRUB_UDF_TAG_IDENT_EFE = common dso_local global i64 0, align 8
@GRUB_ERR_BAD_FS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"invalid fe/efe descriptor\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.grub_udf_data*, %struct.grub_udf_long_ad*, %struct.grub_fshelp_node*)* @grub_udf_read_icb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @grub_udf_read_icb(%struct.grub_udf_data* %0, %struct.grub_udf_long_ad* %1, %struct.grub_fshelp_node* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.grub_udf_data*, align 8
  %6 = alloca %struct.grub_udf_long_ad*, align 8
  %7 = alloca %struct.grub_fshelp_node*, align 8
  %8 = alloca i32, align 4
  store %struct.grub_udf_data* %0, %struct.grub_udf_data** %5, align 8
  store %struct.grub_udf_long_ad* %1, %struct.grub_udf_long_ad** %6, align 8
  store %struct.grub_fshelp_node* %2, %struct.grub_fshelp_node** %7, align 8
  %9 = load %struct.grub_udf_data*, %struct.grub_udf_data** %5, align 8
  %10 = load %struct.grub_udf_long_ad*, %struct.grub_udf_long_ad** %6, align 8
  %11 = getelementptr inbounds %struct.grub_udf_long_ad, %struct.grub_udf_long_ad* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.grub_udf_long_ad*, %struct.grub_udf_long_ad** %6, align 8
  %15 = getelementptr inbounds %struct.grub_udf_long_ad, %struct.grub_udf_long_ad* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @grub_udf_get_block(%struct.grub_udf_data* %9, i32 %13, i32 %17)
  store i32 %18, i32* %8, align 4
  %19 = load i64, i64* @grub_errno, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %3
  %22 = load i64, i64* @grub_errno, align 8
  store i64 %22, i64* %4, align 8
  br label %67

23:                                               ; preds = %3
  %24 = load %struct.grub_udf_data*, %struct.grub_udf_data** %5, align 8
  %25 = getelementptr inbounds %struct.grub_udf_data, %struct.grub_udf_data* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* @GRUB_UDF_LOG2_BLKSZ, align 4
  %29 = shl i32 %27, %28
  %30 = load %struct.grub_fshelp_node*, %struct.grub_fshelp_node** %7, align 8
  %31 = getelementptr inbounds %struct.grub_fshelp_node, %struct.grub_fshelp_node* %30, i32 0, i32 2
  %32 = call i64 @grub_disk_read(i32 %26, i32 %29, i32 0, i32 4, %struct.TYPE_6__* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %23
  %35 = load i64, i64* @grub_errno, align 8
  store i64 %35, i64* %4, align 8
  br label %67

36:                                               ; preds = %23
  %37 = load %struct.grub_fshelp_node*, %struct.grub_fshelp_node** %7, align 8
  %38 = getelementptr inbounds %struct.grub_fshelp_node, %struct.grub_fshelp_node* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i64 @U16(i32 %41)
  %43 = load i64, i64* @GRUB_UDF_TAG_IDENT_FE, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %45, label %57

45:                                               ; preds = %36
  %46 = load %struct.grub_fshelp_node*, %struct.grub_fshelp_node** %7, align 8
  %47 = getelementptr inbounds %struct.grub_fshelp_node, %struct.grub_fshelp_node* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i64 @U16(i32 %50)
  %52 = load i64, i64* @GRUB_UDF_TAG_IDENT_EFE, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %45
  %55 = load i32, i32* @GRUB_ERR_BAD_FS, align 4
  %56 = call i64 @grub_error(i32 %55, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  store i64 %56, i64* %4, align 8
  br label %67

57:                                               ; preds = %45, %36
  %58 = load %struct.grub_udf_long_ad*, %struct.grub_udf_long_ad** %6, align 8
  %59 = getelementptr inbounds %struct.grub_udf_long_ad, %struct.grub_udf_long_ad* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.grub_fshelp_node*, %struct.grub_fshelp_node** %7, align 8
  %63 = getelementptr inbounds %struct.grub_fshelp_node, %struct.grub_fshelp_node* %62, i32 0, i32 1
  store i32 %61, i32* %63, align 8
  %64 = load %struct.grub_udf_data*, %struct.grub_udf_data** %5, align 8
  %65 = load %struct.grub_fshelp_node*, %struct.grub_fshelp_node** %7, align 8
  %66 = getelementptr inbounds %struct.grub_fshelp_node, %struct.grub_fshelp_node* %65, i32 0, i32 0
  store %struct.grub_udf_data* %64, %struct.grub_udf_data** %66, align 8
  store i64 0, i64* %4, align 8
  br label %67

67:                                               ; preds = %57, %54, %34, %21
  %68 = load i64, i64* %4, align 8
  ret i64 %68
}

declare dso_local i32 @grub_udf_get_block(%struct.grub_udf_data*, i32, i32) #1

declare dso_local i64 @grub_disk_read(i32, i32, i32, i32, %struct.TYPE_6__*) #1

declare dso_local i64 @U16(i32) #1

declare dso_local i64 @grub_error(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
