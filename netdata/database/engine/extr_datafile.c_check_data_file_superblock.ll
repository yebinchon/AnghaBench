; ModuleID = '/home/carl/AnghaBench/netdata/database/engine/extr_datafile.c_check_data_file_superblock.c'
source_filename = "/home/carl/AnghaBench/netdata/database/engine/extr_datafile.c_check_data_file_superblock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rrdeng_df_sb = type { i32, i32, i32 }
%struct.TYPE_4__ = type { i64 }

@RRDFILE_ALIGNMENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"posix_memalign:%s\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"uv_fs_read: %s\00", align 1
@RRDENG_DF_MAGIC = common dso_local global i32 0, align 4
@RRDENG_MAGIC_SZ = common dso_local global i32 0, align 4
@RRDENG_DF_VER = common dso_local global i32 0, align 4
@RRDENG_VER_SZ = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"File has invalid superblock.\00", align 1
@UV_EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @check_data_file_superblock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_data_file_superblock(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.rrdeng_df_sb*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_4__, align 8
  store i32 %0, i32* %2, align 4
  %7 = bitcast %struct.rrdeng_df_sb** %4 to i8*
  %8 = load i32, i32* @RRDFILE_ALIGNMENT, align 4
  %9 = call i32 @posix_memalign(i8* %7, i32 %8, i32 12)
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = call i64 @unlikely(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %1
  %14 = load i32, i32* %3, align 4
  %15 = call i32 @strerror(i32 %14)
  %16 = call i32 @fatal(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %15)
  br label %17

17:                                               ; preds = %13, %1
  %18 = load %struct.rrdeng_df_sb*, %struct.rrdeng_df_sb** %4, align 8
  %19 = bitcast %struct.rrdeng_df_sb* %18 to i8*
  %20 = call i32 @uv_buf_init(i8* %19, i32 12)
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %2, align 4
  %22 = call i32 @uv_fs_read(i32* null, %struct.TYPE_4__* %6, i32 %21, i32* %5, i32 1, i32 0, i32* null)
  store i32 %22, i32* %3, align 4
  %23 = load i32, i32* %3, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %17
  %26 = load i32, i32* %3, align 4
  %27 = call i32 @uv_strerror(i32 %26)
  %28 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %27)
  %29 = call i32 @uv_fs_req_cleanup(%struct.TYPE_4__* %6)
  br label %62

30:                                               ; preds = %17
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp sge i64 %32, 0
  %34 = zext i1 %33 to i32
  %35 = call i32 @assert(i32 %34)
  %36 = call i32 @uv_fs_req_cleanup(%struct.TYPE_4__* %6)
  %37 = load %struct.rrdeng_df_sb*, %struct.rrdeng_df_sb** %4, align 8
  %38 = getelementptr inbounds %struct.rrdeng_df_sb, %struct.rrdeng_df_sb* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @RRDENG_DF_MAGIC, align 4
  %41 = load i32, i32* @RRDENG_MAGIC_SZ, align 4
  %42 = call i64 @strncmp(i32 %39, i32 %40, i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %57, label %44

44:                                               ; preds = %30
  %45 = load %struct.rrdeng_df_sb*, %struct.rrdeng_df_sb** %4, align 8
  %46 = getelementptr inbounds %struct.rrdeng_df_sb, %struct.rrdeng_df_sb* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @RRDENG_DF_VER, align 4
  %49 = load i32, i32* @RRDENG_VER_SZ, align 4
  %50 = call i64 @strncmp(i32 %47, i32 %48, i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %57, label %52

52:                                               ; preds = %44
  %53 = load %struct.rrdeng_df_sb*, %struct.rrdeng_df_sb** %4, align 8
  %54 = getelementptr inbounds %struct.rrdeng_df_sb, %struct.rrdeng_df_sb* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = icmp ne i32 %55, 1
  br i1 %56, label %57, label %60

57:                                               ; preds = %52, %44, %30
  %58 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %59 = load i32, i32* @UV_EINVAL, align 4
  store i32 %59, i32* %3, align 4
  br label %61

60:                                               ; preds = %52
  store i32 0, i32* %3, align 4
  br label %61

61:                                               ; preds = %60, %57
  br label %62

62:                                               ; preds = %61, %25
  %63 = load %struct.rrdeng_df_sb*, %struct.rrdeng_df_sb** %4, align 8
  %64 = call i32 @free(%struct.rrdeng_df_sb* %63)
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local i32 @posix_memalign(i8*, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @fatal(i8*, i32) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @uv_buf_init(i8*, i32) #1

declare dso_local i32 @uv_fs_read(i32*, %struct.TYPE_4__*, i32, i32*, i32, i32, i32*) #1

declare dso_local i32 @error(i8*, ...) #1

declare dso_local i32 @uv_strerror(i32) #1

declare dso_local i32 @uv_fs_req_cleanup(%struct.TYPE_4__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @strncmp(i32, i32, i32) #1

declare dso_local i32 @free(%struct.rrdeng_df_sb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
