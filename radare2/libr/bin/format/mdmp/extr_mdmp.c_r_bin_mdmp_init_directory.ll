; ModuleID = '/home/carl/AnghaBench/radare2/libr/bin/format/mdmp/extr_mdmp.c_r_bin_mdmp_init_directory.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/bin/format/mdmp/extr_mdmp.c_r_bin_mdmp_init_directory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r_bin_mdmp_obj = type { i64, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64, i64 }
%struct.minidump_directory = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"mdmp_directory.offset\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"mdmp_directory.format\00", align 1
@.str.2 = private unnamed_addr constant [70 x i8] c"[4]E? (mdmp_stream_type)StreamType (mdmp_location_descriptor)Location\00", align 1
@.str.3 = private unnamed_addr constant [75 x i8] c"[ERROR] Number of streams = %u is greater than is supportable by bin size\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.r_bin_mdmp_obj*)* @r_bin_mdmp_init_directory to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @r_bin_mdmp_init_directory(%struct.r_bin_mdmp_obj* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.r_bin_mdmp_obj*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.minidump_directory, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.r_bin_mdmp_obj* %0, %struct.r_bin_mdmp_obj** %3, align 8
  %11 = load %struct.r_bin_mdmp_obj*, %struct.r_bin_mdmp_obj** %3, align 8
  %12 = getelementptr inbounds %struct.r_bin_mdmp_obj, %struct.r_bin_mdmp_obj* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.r_bin_mdmp_obj*, %struct.r_bin_mdmp_obj** %3, align 8
  %15 = getelementptr inbounds %struct.r_bin_mdmp_obj, %struct.r_bin_mdmp_obj* %14, i32 0, i32 2
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = call i32 @sdb_num_set(i32 %13, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i64 %18, i32 0)
  %20 = load %struct.r_bin_mdmp_obj*, %struct.r_bin_mdmp_obj** %3, align 8
  %21 = getelementptr inbounds %struct.r_bin_mdmp_obj, %struct.r_bin_mdmp_obj* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @sdb_set(i32 %22, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.2, i64 0, i64 0), i32 0)
  %24 = load %struct.r_bin_mdmp_obj*, %struct.r_bin_mdmp_obj** %3, align 8
  %25 = getelementptr inbounds %struct.r_bin_mdmp_obj, %struct.r_bin_mdmp_obj* %24, i32 0, i32 2
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  store i64 %28, i64* %6, align 8
  %29 = load i64, i64* %6, align 8
  %30 = load %struct.r_bin_mdmp_obj*, %struct.r_bin_mdmp_obj** %3, align 8
  %31 = getelementptr inbounds %struct.r_bin_mdmp_obj, %struct.r_bin_mdmp_obj* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp slt i64 %29, %32
  br i1 %33, label %34, label %40

34:                                               ; preds = %1
  %35 = load %struct.r_bin_mdmp_obj*, %struct.r_bin_mdmp_obj** %3, align 8
  %36 = getelementptr inbounds %struct.r_bin_mdmp_obj, %struct.r_bin_mdmp_obj* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* %6, align 8
  %39 = sub nsw i64 %37, %38
  br label %41

40:                                               ; preds = %1
  br label %41

41:                                               ; preds = %40, %34
  %42 = phi i64 [ %39, %34 ], [ 0, %40 ]
  store i64 %42, i64* %7, align 8
  %43 = load %struct.r_bin_mdmp_obj*, %struct.r_bin_mdmp_obj** %3, align 8
  %44 = getelementptr inbounds %struct.r_bin_mdmp_obj, %struct.r_bin_mdmp_obj* %43, i32 0, i32 2
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* %7, align 8
  %49 = udiv i64 %48, 4
  %50 = call i64 @R_MIN(i64 %47, i64 %49)
  store i64 %50, i64* %8, align 8
  %51 = load i64, i64* %8, align 8
  %52 = load %struct.r_bin_mdmp_obj*, %struct.r_bin_mdmp_obj** %3, align 8
  %53 = getelementptr inbounds %struct.r_bin_mdmp_obj, %struct.r_bin_mdmp_obj* %52, i32 0, i32 2
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = icmp ult i64 %51, %56
  br i1 %57, label %58, label %65

58:                                               ; preds = %41
  %59 = load %struct.r_bin_mdmp_obj*, %struct.r_bin_mdmp_obj** %3, align 8
  %60 = getelementptr inbounds %struct.r_bin_mdmp_obj, %struct.r_bin_mdmp_obj* %59, i32 0, i32 2
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = call i32 @eprintf(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.3, i64 0, i64 0), i64 %63)
  br label %65

65:                                               ; preds = %58, %41
  store i64 0, i64* %4, align 8
  br label %66

66:                                               ; preds = %90, %65
  %67 = load i64, i64* %4, align 8
  %68 = load i64, i64* %8, align 8
  %69 = icmp ult i64 %67, %68
  br i1 %69, label %70, label %93

70:                                               ; preds = %66
  %71 = load i64, i64* %4, align 8
  %72 = mul i64 %71, 4
  store i64 %72, i64* %9, align 8
  %73 = load %struct.r_bin_mdmp_obj*, %struct.r_bin_mdmp_obj** %3, align 8
  %74 = getelementptr inbounds %struct.r_bin_mdmp_obj, %struct.r_bin_mdmp_obj* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = load i64, i64* %6, align 8
  %77 = load i64, i64* %9, align 8
  %78 = add i64 %76, %77
  %79 = bitcast %struct.minidump_directory* %5 to i32*
  %80 = call i32 @r_buf_read_at(i32 %75, i64 %78, i32* %79, i32 4)
  store i32 %80, i32* %10, align 4
  %81 = load i32, i32* %10, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %89

83:                                               ; preds = %70
  %84 = load %struct.r_bin_mdmp_obj*, %struct.r_bin_mdmp_obj** %3, align 8
  %85 = call i32 @r_bin_mdmp_init_directory_entry(%struct.r_bin_mdmp_obj* %84, %struct.minidump_directory* %5)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %88, label %87

87:                                               ; preds = %83
  store i32 0, i32* %2, align 4
  br label %94

88:                                               ; preds = %83
  br label %89

89:                                               ; preds = %88, %70
  br label %90

90:                                               ; preds = %89
  %91 = load i64, i64* %4, align 8
  %92 = add i64 %91, 1
  store i64 %92, i64* %4, align 8
  br label %66

93:                                               ; preds = %66
  store i32 1, i32* %2, align 4
  br label %94

94:                                               ; preds = %93, %87
  %95 = load i32, i32* %2, align 4
  ret i32 %95
}

declare dso_local i32 @sdb_num_set(i32, i8*, i64, i32) #1

declare dso_local i32 @sdb_set(i32, i8*, i8*, i32) #1

declare dso_local i64 @R_MIN(i64, i64) #1

declare dso_local i32 @eprintf(i8*, i64) #1

declare dso_local i32 @r_buf_read_at(i32, i64, i32*, i32) #1

declare dso_local i32 @r_bin_mdmp_init_directory_entry(%struct.r_bin_mdmp_obj*, %struct.minidump_directory*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
