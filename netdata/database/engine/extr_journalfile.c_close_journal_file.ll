; ModuleID = '/home/carl/AnghaBench/netdata/database/engine/extr_journalfile.c_close_journal_file.c'
source_filename = "/home/carl/AnghaBench/netdata/database/engine/extr_journalfile.c_close_journal_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rrdengine_journalfile = type { i32 }
%struct.rrdengine_datafile = type { %struct.rrdengine_instance* }
%struct.rrdengine_instance = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@RRDENG_PATH_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"uv_fs_close(%s): %s\00", align 1
@global_fs_errors = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @close_journal_file(%struct.rrdengine_journalfile* %0, %struct.rrdengine_datafile* %1) #0 {
  %3 = alloca %struct.rrdengine_journalfile*, align 8
  %4 = alloca %struct.rrdengine_datafile*, align 8
  %5 = alloca %struct.rrdengine_instance*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  store %struct.rrdengine_journalfile* %0, %struct.rrdengine_journalfile** %3, align 8
  store %struct.rrdengine_datafile* %1, %struct.rrdengine_datafile** %4, align 8
  %10 = load %struct.rrdengine_datafile*, %struct.rrdengine_datafile** %4, align 8
  %11 = getelementptr inbounds %struct.rrdengine_datafile, %struct.rrdengine_datafile* %10, i32 0, i32 0
  %12 = load %struct.rrdengine_instance*, %struct.rrdengine_instance** %11, align 8
  store %struct.rrdengine_instance* %12, %struct.rrdengine_instance** %5, align 8
  %13 = load i32, i32* @RRDENG_PATH_MAX, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %8, align 8
  %16 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %9, align 8
  %17 = load %struct.rrdengine_datafile*, %struct.rrdengine_datafile** %4, align 8
  %18 = trunc i64 %14 to i32
  %19 = call i32 @generate_journalfilepath(%struct.rrdengine_datafile* %17, i8* %16, i32 %18)
  %20 = load %struct.rrdengine_journalfile*, %struct.rrdengine_journalfile** %3, align 8
  %21 = getelementptr inbounds %struct.rrdengine_journalfile, %struct.rrdengine_journalfile* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @uv_fs_close(i32* null, i32* %6, i32 %22, i32* null)
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %36

26:                                               ; preds = %2
  %27 = load i32, i32* %7, align 4
  %28 = call i8* @uv_strerror(i32 %27)
  %29 = call i32 @error(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8* %16, i8* %28)
  %30 = load %struct.rrdengine_instance*, %struct.rrdengine_instance** %5, align 8
  %31 = getelementptr inbounds %struct.rrdengine_instance, %struct.rrdengine_instance* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %32, align 4
  %35 = call i32 @rrd_stat_atomic_add(i32* @global_fs_errors, i32 1)
  br label %36

36:                                               ; preds = %26, %2
  %37 = call i32 @uv_fs_req_cleanup(i32* %6)
  %38 = load i32, i32* %7, align 4
  %39 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %39)
  ret i32 %38
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @generate_journalfilepath(%struct.rrdengine_datafile*, i8*, i32) #2

declare dso_local i32 @uv_fs_close(i32*, i32*, i32, i32*) #2

declare dso_local i32 @error(i8*, i8*, i8*) #2

declare dso_local i8* @uv_strerror(i32) #2

declare dso_local i32 @rrd_stat_atomic_add(i32*, i32) #2

declare dso_local i32 @uv_fs_req_cleanup(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
