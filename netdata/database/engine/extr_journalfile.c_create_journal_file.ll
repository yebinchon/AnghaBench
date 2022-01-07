; ModuleID = '/home/carl/AnghaBench/netdata/database/engine/extr_journalfile.c_create_journal_file.c'
source_filename = "/home/carl/AnghaBench/netdata/database/engine/extr_journalfile.c_create_journal_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rrdengine_journalfile = type { i32, i32 }
%struct.rrdengine_datafile = type { %struct.rrdengine_instance* }
%struct.rrdengine_instance = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i64 }
%struct.rrdeng_jf_sb = type { i32, i32 }

@RRDENG_PATH_MAX = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@O_RDWR = common dso_local global i32 0, align 4
@O_TRUNC = common dso_local global i32 0, align 4
@global_fs_errors = common dso_local global i32 0, align 4
@RRDFILE_ALIGNMENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"posix_memalign:%s\00", align 1
@RRDENG_JF_MAGIC = common dso_local global i32 0, align 4
@RRDENG_MAGIC_SZ = common dso_local global i32 0, align 4
@RRDENG_JF_VER = common dso_local global i32 0, align 4
@RRDENG_VER_SZ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"uv_fs_write: %s\00", align 1
@global_io_errors = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @create_journal_file(%struct.rrdengine_journalfile* %0, %struct.rrdengine_datafile* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rrdengine_journalfile*, align 8
  %5 = alloca %struct.rrdengine_datafile*, align 8
  %6 = alloca %struct.rrdengine_instance*, align 8
  %7 = alloca %struct.TYPE_6__, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.rrdeng_jf_sb*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.rrdengine_journalfile* %0, %struct.rrdengine_journalfile** %4, align 8
  store %struct.rrdengine_datafile* %1, %struct.rrdengine_datafile** %5, align 8
  %16 = load %struct.rrdengine_datafile*, %struct.rrdengine_datafile** %5, align 8
  %17 = getelementptr inbounds %struct.rrdengine_datafile, %struct.rrdengine_datafile* %16, i32 0, i32 0
  %18 = load %struct.rrdengine_instance*, %struct.rrdengine_instance** %17, align 8
  store %struct.rrdengine_instance* %18, %struct.rrdengine_instance** %6, align 8
  %19 = load i32, i32* @RRDENG_PATH_MAX, align 4
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %13, align 8
  %22 = alloca i8, i64 %20, align 16
  store i64 %20, i64* %14, align 8
  %23 = load %struct.rrdengine_datafile*, %struct.rrdengine_datafile** %5, align 8
  %24 = trunc i64 %20 to i32
  %25 = call i32 @generate_journalfilepath(%struct.rrdengine_datafile* %23, i8* %22, i32 %24)
  %26 = load i32, i32* @O_CREAT, align 4
  %27 = load i32, i32* @O_RDWR, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @O_TRUNC, align 4
  %30 = or i32 %28, %29
  %31 = call i32 @open_file_direct_io(i8* %22, i32 %30, i32* %8)
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* %10, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %42

34:                                               ; preds = %2
  %35 = load %struct.rrdengine_instance*, %struct.rrdengine_instance** %6, align 8
  %36 = getelementptr inbounds %struct.rrdengine_instance, %struct.rrdengine_instance* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 4
  %38 = load i32, i32* %37, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %37, align 4
  %40 = call i32 @rrd_stat_atomic_add(i32* @global_fs_errors, i32 1)
  %41 = load i32, i32* %10, align 4
  store i32 %41, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %122

42:                                               ; preds = %2
  %43 = load i32, i32* %8, align 4
  %44 = load %struct.rrdengine_journalfile*, %struct.rrdengine_journalfile** %4, align 8
  %45 = getelementptr inbounds %struct.rrdengine_journalfile, %struct.rrdengine_journalfile* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 4
  %46 = load %struct.rrdengine_instance*, %struct.rrdengine_instance** %6, align 8
  %47 = getelementptr inbounds %struct.rrdengine_instance, %struct.rrdengine_instance* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %48, align 4
  %51 = bitcast %struct.rrdeng_jf_sb** %11 to i8*
  %52 = load i32, i32* @RRDFILE_ALIGNMENT, align 4
  %53 = call i32 @posix_memalign(i8* %51, i32 %52, i32 8)
  store i32 %53, i32* %9, align 4
  %54 = load i32, i32* %9, align 4
  %55 = call i64 @unlikely(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %42
  %58 = load i32, i32* %9, align 4
  %59 = call i32 @strerror(i32 %58)
  %60 = call i32 @fatal(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %59)
  br label %61

61:                                               ; preds = %57, %42
  %62 = load %struct.rrdeng_jf_sb*, %struct.rrdeng_jf_sb** %11, align 8
  %63 = getelementptr inbounds %struct.rrdeng_jf_sb, %struct.rrdeng_jf_sb* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @RRDENG_JF_MAGIC, align 4
  %66 = load i32, i32* @RRDENG_MAGIC_SZ, align 4
  %67 = call i32 @strncpy(i32 %64, i32 %65, i32 %66)
  %68 = load %struct.rrdeng_jf_sb*, %struct.rrdeng_jf_sb** %11, align 8
  %69 = getelementptr inbounds %struct.rrdeng_jf_sb, %struct.rrdeng_jf_sb* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @RRDENG_JF_VER, align 4
  %72 = load i32, i32* @RRDENG_VER_SZ, align 4
  %73 = call i32 @strncpy(i32 %70, i32 %71, i32 %72)
  %74 = load %struct.rrdeng_jf_sb*, %struct.rrdeng_jf_sb** %11, align 8
  %75 = bitcast %struct.rrdeng_jf_sb* %74 to i8*
  %76 = call i32 @uv_buf_init(i8* %75, i32 8)
  store i32 %76, i32* %12, align 4
  %77 = load i32, i32* %8, align 4
  %78 = call i32 @uv_fs_write(i32* null, %struct.TYPE_6__* %7, i32 %77, i32* %12, i32 1, i32 0, i32* null)
  store i32 %78, i32* %9, align 4
  %79 = load i32, i32* %9, align 4
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %81, label %96

81:                                               ; preds = %61
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = icmp slt i64 %83, 0
  %85 = zext i1 %84 to i32
  %86 = call i32 @assert(i32 %85)
  %87 = load i32, i32* %9, align 4
  %88 = call i32 @uv_strerror(i32 %87)
  %89 = call i32 @error(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %88)
  %90 = load %struct.rrdengine_instance*, %struct.rrdengine_instance** %6, align 8
  %91 = getelementptr inbounds %struct.rrdengine_instance, %struct.rrdengine_instance* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %92, align 4
  %95 = call i32 @rrd_stat_atomic_add(i32* @global_io_errors, i32 1)
  br label %96

96:                                               ; preds = %81, %61
  %97 = call i32 @uv_fs_req_cleanup(%struct.TYPE_6__* %7)
  %98 = load %struct.rrdeng_jf_sb*, %struct.rrdeng_jf_sb** %11, align 8
  %99 = call i32 @free(%struct.rrdeng_jf_sb* %98)
  %100 = load i32, i32* %9, align 4
  %101 = icmp slt i32 %100, 0
  br i1 %101, label %102, label %107

102:                                              ; preds = %96
  %103 = load %struct.rrdengine_journalfile*, %struct.rrdengine_journalfile** %4, align 8
  %104 = load %struct.rrdengine_datafile*, %struct.rrdengine_datafile** %5, align 8
  %105 = call i32 @destroy_journal_file(%struct.rrdengine_journalfile* %103, %struct.rrdengine_datafile* %104)
  %106 = load i32, i32* %9, align 4
  store i32 %106, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %122

107:                                              ; preds = %96
  %108 = load %struct.rrdengine_journalfile*, %struct.rrdengine_journalfile** %4, align 8
  %109 = getelementptr inbounds %struct.rrdengine_journalfile, %struct.rrdengine_journalfile* %108, i32 0, i32 0
  store i32 8, i32* %109, align 4
  %110 = load %struct.rrdengine_instance*, %struct.rrdengine_instance** %6, align 8
  %111 = getelementptr inbounds %struct.rrdengine_instance, %struct.rrdengine_instance* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = sext i32 %113 to i64
  %115 = add i64 %114, 8
  %116 = trunc i64 %115 to i32
  store i32 %116, i32* %112, align 4
  %117 = load %struct.rrdengine_instance*, %struct.rrdengine_instance** %6, align 8
  %118 = getelementptr inbounds %struct.rrdengine_instance, %struct.rrdengine_instance* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %119, align 4
  store i32 0, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %122

122:                                              ; preds = %107, %102, %34
  %123 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %123)
  %124 = load i32, i32* %3, align 4
  ret i32 %124
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @generate_journalfilepath(%struct.rrdengine_datafile*, i8*, i32) #2

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

declare dso_local i32 @free(%struct.rrdeng_jf_sb*) #2

declare dso_local i32 @destroy_journal_file(%struct.rrdengine_journalfile*, %struct.rrdengine_datafile*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
