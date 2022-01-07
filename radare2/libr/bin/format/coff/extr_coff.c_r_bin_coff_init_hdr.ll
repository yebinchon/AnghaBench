; ModuleID = '/home/carl/AnghaBench/radare2/libr/bin/format/coff/extr_coff.c_r_bin_coff_init_hdr.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/bin/format/coff/extr_coff.c_r_bin_coff_init_hdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r_bin_coff_obj = type { i64, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@COFF_IS_LITTLE_ENDIAN = common dso_local global i64 0, align 8
@COFF_IS_BIG_ENDIAN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [7 x i8] c"2S3I2S\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"2s3i2s\00", align 1
@COFF_FILE_TI_COFF = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [2 x i8] c"S\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.r_bin_coff_obj*)* @r_bin_coff_init_hdr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @r_bin_coff_init_hdr(%struct.r_bin_coff_obj* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.r_bin_coff_obj*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.r_bin_coff_obj* %0, %struct.r_bin_coff_obj** %3, align 8
  %6 = load %struct.r_bin_coff_obj*, %struct.r_bin_coff_obj** %3, align 8
  %7 = getelementptr inbounds %struct.r_bin_coff_obj, %struct.r_bin_coff_obj* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 4
  %9 = load i64, i64* @COFF_IS_LITTLE_ENDIAN, align 8
  %10 = call i32 @r_buf_read_ble16_at(i32 %8, i32 0, i64 %9)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  switch i32 %11, label %16 [
    i32 128, label %12
    i32 129, label %12
  ]

12:                                               ; preds = %1, %1
  %13 = load i64, i64* @COFF_IS_BIG_ENDIAN, align 8
  %14 = load %struct.r_bin_coff_obj*, %struct.r_bin_coff_obj** %3, align 8
  %15 = getelementptr inbounds %struct.r_bin_coff_obj, %struct.r_bin_coff_obj* %14, i32 0, i32 0
  store i64 %13, i64* %15, align 8
  br label %20

16:                                               ; preds = %1
  %17 = load i64, i64* @COFF_IS_LITTLE_ENDIAN, align 8
  %18 = load %struct.r_bin_coff_obj*, %struct.r_bin_coff_obj** %3, align 8
  %19 = getelementptr inbounds %struct.r_bin_coff_obj, %struct.r_bin_coff_obj* %18, i32 0, i32 0
  store i64 %17, i64* %19, align 8
  br label %20

20:                                               ; preds = %16, %12
  store i32 0, i32* %5, align 4
  %21 = load %struct.r_bin_coff_obj*, %struct.r_bin_coff_obj** %3, align 8
  %22 = getelementptr inbounds %struct.r_bin_coff_obj, %struct.r_bin_coff_obj* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.r_bin_coff_obj*, %struct.r_bin_coff_obj** %3, align 8
  %25 = getelementptr inbounds %struct.r_bin_coff_obj, %struct.r_bin_coff_obj* %24, i32 0, i32 3
  %26 = bitcast %struct.TYPE_2__* %25 to i32*
  %27 = load %struct.r_bin_coff_obj*, %struct.r_bin_coff_obj** %3, align 8
  %28 = getelementptr inbounds %struct.r_bin_coff_obj, %struct.r_bin_coff_obj* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  %31 = zext i1 %30 to i64
  %32 = select i1 %30, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0)
  %33 = call i32 @r_buf_fread_at(i32 %23, i32 0, i32* %26, i8* %32, i32 1)
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* %5, align 4
  %35 = sext i32 %34 to i64
  %36 = icmp ne i64 %35, 4
  br i1 %36, label %37, label %38

37:                                               ; preds = %20
  store i32 0, i32* %2, align 4
  br label %64

38:                                               ; preds = %20
  %39 = load %struct.r_bin_coff_obj*, %struct.r_bin_coff_obj** %3, align 8
  %40 = getelementptr inbounds %struct.r_bin_coff_obj, %struct.r_bin_coff_obj* %39, i32 0, i32 3
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @COFF_FILE_TI_COFF, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %63

45:                                               ; preds = %38
  %46 = load %struct.r_bin_coff_obj*, %struct.r_bin_coff_obj** %3, align 8
  %47 = getelementptr inbounds %struct.r_bin_coff_obj, %struct.r_bin_coff_obj* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.r_bin_coff_obj*, %struct.r_bin_coff_obj** %3, align 8
  %50 = getelementptr inbounds %struct.r_bin_coff_obj, %struct.r_bin_coff_obj* %49, i32 0, i32 1
  %51 = load %struct.r_bin_coff_obj*, %struct.r_bin_coff_obj** %3, align 8
  %52 = getelementptr inbounds %struct.r_bin_coff_obj, %struct.r_bin_coff_obj* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  %55 = zext i1 %54 to i64
  %56 = select i1 %54, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)
  %57 = call i32 @r_buf_fread(i32 %48, i32* %50, i8* %56, i32 1)
  store i32 %57, i32* %5, align 4
  %58 = load i32, i32* %5, align 4
  %59 = sext i32 %58 to i64
  %60 = icmp ne i64 %59, 4
  br i1 %60, label %61, label %62

61:                                               ; preds = %45
  store i32 0, i32* %2, align 4
  br label %64

62:                                               ; preds = %45
  br label %63

63:                                               ; preds = %62, %38
  store i32 1, i32* %2, align 4
  br label %64

64:                                               ; preds = %63, %61, %37
  %65 = load i32, i32* %2, align 4
  ret i32 %65
}

declare dso_local i32 @r_buf_read_ble16_at(i32, i32, i64) #1

declare dso_local i32 @r_buf_fread_at(i32, i32, i32*, i8*, i32) #1

declare dso_local i32 @r_buf_fread(i32, i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
