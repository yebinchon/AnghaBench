; ModuleID = '/home/carl/AnghaBench/netdata/database/engine/extr_datafile.c_create_data_file.c'
source_filename = "/home/carl/AnghaBench/netdata/database/engine/extr_datafile.c_create_data_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rrdengine_datafile = type { i32, i32, %struct.rrdengine_instance* }
%struct.rrdengine_instance = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i64 }
%struct.rrdeng_df_sb = type { i32, i32, i32 }

@RRDENG_PATH_MAX = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@O_RDWR = common dso_local global i32 0, align 4
@O_TRUNC = common dso_local global i32 0, align 4
@global_fs_errors = common dso_local global i32 0, align 4
@RRDFILE_ALIGNMENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"posix_memalign:%s\00", align 1
@RRDENG_DF_MAGIC = common dso_local global i32 0, align 4
@RRDENG_MAGIC_SZ = common dso_local global i32 0, align 4
@RRDENG_DF_VER = common dso_local global i32 0, align 4
@RRDENG_VER_SZ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"uv_fs_write: %s\00", align 1
@global_io_errors = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @create_data_file(%struct.rrdengine_datafile* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rrdengine_datafile*, align 8
  %4 = alloca %struct.rrdengine_instance*, align 8
  %5 = alloca %struct.TYPE_6__, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.rrdeng_df_sb*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.rrdengine_datafile* %0, %struct.rrdengine_datafile** %3, align 8
  %14 = load %struct.rrdengine_datafile*, %struct.rrdengine_datafile** %3, align 8
  %15 = getelementptr inbounds %struct.rrdengine_datafile, %struct.rrdengine_datafile* %14, i32 0, i32 2
  %16 = load %struct.rrdengine_instance*, %struct.rrdengine_instance** %15, align 8
  store %struct.rrdengine_instance* %16, %struct.rrdengine_instance** %4, align 8
  %17 = load i32, i32* @RRDENG_PATH_MAX, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %11, align 8
  %20 = alloca i8, i64 %18, align 16
  store i64 %18, i64* %12, align 8
  %21 = load %struct.rrdengine_datafile*, %struct.rrdengine_datafile** %3, align 8
  %22 = trunc i64 %18 to i32
  %23 = call i32 @generate_datafilepath(%struct.rrdengine_datafile* %21, i8* %20, i32 %22)
  %24 = load i32, i32* @O_CREAT, align 4
  %25 = load i32, i32* @O_RDWR, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @O_TRUNC, align 4
  %28 = or i32 %26, %27
  %29 = call i32 @open_file_direct_io(i8* %20, i32 %28, i32* %6)
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %8, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %40

32:                                               ; preds = %1
  %33 = load %struct.rrdengine_instance*, %struct.rrdengine_instance** %4, align 8
  %34 = getelementptr inbounds %struct.rrdengine_instance, %struct.rrdengine_instance* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 4
  %36 = load i32, i32* %35, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %35, align 4
  %38 = call i32 @rrd_stat_atomic_add(i32* @global_fs_errors, i32 1)
  %39 = load i32, i32* %8, align 4
  store i32 %39, i32* %2, align 4
  store i32 1, i32* %13, align 4
  br label %121

40:                                               ; preds = %1
  %41 = load i32, i32* %6, align 4
  %42 = load %struct.rrdengine_datafile*, %struct.rrdengine_datafile** %3, align 8
  %43 = getelementptr inbounds %struct.rrdengine_datafile, %struct.rrdengine_datafile* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 4
  %44 = load %struct.rrdengine_instance*, %struct.rrdengine_instance** %4, align 8
  %45 = getelementptr inbounds %struct.rrdengine_instance, %struct.rrdengine_instance* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %46, align 4
  %49 = bitcast %struct.rrdeng_df_sb** %9 to i8*
  %50 = load i32, i32* @RRDFILE_ALIGNMENT, align 4
  %51 = call i32 @posix_memalign(i8* %49, i32 %50, i32 12)
  store i32 %51, i32* %7, align 4
  %52 = load i32, i32* %7, align 4
  %53 = call i64 @unlikely(i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %40
  %56 = load i32, i32* %7, align 4
  %57 = call i32 @strerror(i32 %56)
  %58 = call i32 @fatal(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %57)
  br label %59

59:                                               ; preds = %55, %40
  %60 = load %struct.rrdeng_df_sb*, %struct.rrdeng_df_sb** %9, align 8
  %61 = getelementptr inbounds %struct.rrdeng_df_sb, %struct.rrdeng_df_sb* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @RRDENG_DF_MAGIC, align 4
  %64 = load i32, i32* @RRDENG_MAGIC_SZ, align 4
  %65 = call i32 @strncpy(i32 %62, i32 %63, i32 %64)
  %66 = load %struct.rrdeng_df_sb*, %struct.rrdeng_df_sb** %9, align 8
  %67 = getelementptr inbounds %struct.rrdeng_df_sb, %struct.rrdeng_df_sb* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @RRDENG_DF_VER, align 4
  %70 = load i32, i32* @RRDENG_VER_SZ, align 4
  %71 = call i32 @strncpy(i32 %68, i32 %69, i32 %70)
  %72 = load %struct.rrdeng_df_sb*, %struct.rrdeng_df_sb** %9, align 8
  %73 = getelementptr inbounds %struct.rrdeng_df_sb, %struct.rrdeng_df_sb* %72, i32 0, i32 0
  store i32 1, i32* %73, align 4
  %74 = load %struct.rrdeng_df_sb*, %struct.rrdeng_df_sb** %9, align 8
  %75 = bitcast %struct.rrdeng_df_sb* %74 to i8*
  %76 = call i32 @uv_buf_init(i8* %75, i32 12)
  store i32 %76, i32* %10, align 4
  %77 = load i32, i32* %6, align 4
  %78 = call i32 @uv_fs_write(i32* null, %struct.TYPE_6__* %5, i32 %77, i32* %10, i32 1, i32 0, i32* null)
  store i32 %78, i32* %7, align 4
  %79 = load i32, i32* %7, align 4
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %81, label %96

81:                                               ; preds = %59
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = icmp slt i64 %83, 0
  %85 = zext i1 %84 to i32
  %86 = call i32 @assert(i32 %85)
  %87 = load i32, i32* %7, align 4
  %88 = call i32 @uv_strerror(i32 %87)
  %89 = call i32 @error(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %88)
  %90 = load %struct.rrdengine_instance*, %struct.rrdengine_instance** %4, align 8
  %91 = getelementptr inbounds %struct.rrdengine_instance, %struct.rrdengine_instance* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %92, align 4
  %95 = call i32 @rrd_stat_atomic_add(i32* @global_io_errors, i32 1)
  br label %96

96:                                               ; preds = %81, %59
  %97 = call i32 @uv_fs_req_cleanup(%struct.TYPE_6__* %5)
  %98 = load %struct.rrdeng_df_sb*, %struct.rrdeng_df_sb** %9, align 8
  %99 = call i32 @free(%struct.rrdeng_df_sb* %98)
  %100 = load i32, i32* %7, align 4
  %101 = icmp slt i32 %100, 0
  br i1 %101, label %102, label %106

102:                                              ; preds = %96
  %103 = load %struct.rrdengine_datafile*, %struct.rrdengine_datafile** %3, align 8
  %104 = call i32 @destroy_data_file(%struct.rrdengine_datafile* %103)
  %105 = load i32, i32* %7, align 4
  store i32 %105, i32* %2, align 4
  store i32 1, i32* %13, align 4
  br label %121

106:                                              ; preds = %96
  %107 = load %struct.rrdengine_datafile*, %struct.rrdengine_datafile** %3, align 8
  %108 = getelementptr inbounds %struct.rrdengine_datafile, %struct.rrdengine_datafile* %107, i32 0, i32 0
  store i32 12, i32* %108, align 8
  %109 = load %struct.rrdengine_instance*, %struct.rrdengine_instance** %4, align 8
  %110 = getelementptr inbounds %struct.rrdengine_instance, %struct.rrdengine_instance* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = sext i32 %112 to i64
  %114 = add i64 %113, 12
  %115 = trunc i64 %114 to i32
  store i32 %115, i32* %111, align 4
  %116 = load %struct.rrdengine_instance*, %struct.rrdengine_instance** %4, align 8
  %117 = getelementptr inbounds %struct.rrdengine_instance, %struct.rrdengine_instance* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %118, align 4
  store i32 0, i32* %2, align 4
  store i32 1, i32* %13, align 4
  br label %121

121:                                              ; preds = %106, %102, %32
  %122 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %122)
  %123 = load i32, i32* %2, align 4
  ret i32 %123
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @generate_datafilepath(%struct.rrdengine_datafile*, i8*, i32) #2

declare dso_local i32 @open_file_direct_io(i8*, i32, i32*) #2

declare dso_local i32 @rrd_stat_atomic_add(i32*, i32) #2

declare dso_local i32 @posix_memalign(i8*, i32, i32) #2

declare dso_local i64 @unlikely(i32) #2

declare dso_local i32 @fatal(i8*, i32) #2

declare dso_local i32 @strerror(i32) #2

declare dso_local i32 @strncpy(i32, i32, i32) #2

declare dso_local i32 @uv_buf_init(i8*, i32) #2

declare dso_local i32 @uv_fs_write(i32*, %struct.TYPE_6__*, i32, i32*, i32, i32, i32*) #2

declare dso_local i32 @assert(i32) #2

declare dso_local i32 @error(i8*, i32) #2

declare dso_local i32 @uv_strerror(i32) #2

declare dso_local i32 @uv_fs_req_cleanup(%struct.TYPE_6__*) #2

declare dso_local i32 @free(%struct.rrdeng_df_sb*) #2

declare dso_local i32 @destroy_data_file(%struct.rrdengine_datafile*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
