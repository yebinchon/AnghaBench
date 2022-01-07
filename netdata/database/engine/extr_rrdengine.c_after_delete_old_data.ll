; ModuleID = '/home/carl/AnghaBench/netdata/database/engine/extr_rrdengine.c_after_delete_old_data.c'
source_filename = "/home/carl/AnghaBench/netdata/database/engine/extr_rrdengine.c_after_delete_old_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.rrdengine_instance* }
%struct.rrdengine_instance = type { i32, %struct.TYPE_5__, %struct.rrdengine_worker_config }
%struct.TYPE_5__ = type { %struct.rrdengine_journalfile* }
%struct.rrdengine_journalfile = type { i32, %struct.rrdengine_journalfile* }
%struct.rrdengine_worker_config = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32* }
%struct.rrdengine_datafile = type { i32, %struct.rrdengine_datafile* }

@RRDENG_PATH_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Deleting data and journal file pair.\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"Deleted journal file \22%s\22.\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"Deleted data file \22%s\22.\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"Reclaimed %u bytes of disk space.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, i32)* @after_delete_old_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @after_delete_old_data(%struct.TYPE_7__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.rrdengine_instance*, align 8
  %6 = alloca %struct.rrdengine_worker_config*, align 8
  %7 = alloca %struct.rrdengine_datafile*, align 8
  %8 = alloca %struct.rrdengine_journalfile*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  store i32 %1, i32* %4, align 4
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = load %struct.rrdengine_instance*, %struct.rrdengine_instance** %16, align 8
  store %struct.rrdengine_instance* %17, %struct.rrdengine_instance** %5, align 8
  %18 = load %struct.rrdengine_instance*, %struct.rrdengine_instance** %5, align 8
  %19 = getelementptr inbounds %struct.rrdengine_instance, %struct.rrdengine_instance* %18, i32 0, i32 2
  store %struct.rrdengine_worker_config* %19, %struct.rrdengine_worker_config** %6, align 8
  %20 = load i32, i32* @RRDENG_PATH_MAX, align 4
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %13, align 8
  %23 = alloca i8, i64 %21, align 16
  store i64 %21, i64* %14, align 8
  %24 = load i32, i32* %4, align 4
  %25 = load %struct.rrdengine_instance*, %struct.rrdengine_instance** %5, align 8
  %26 = getelementptr inbounds %struct.rrdengine_instance, %struct.rrdengine_instance* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load %struct.rrdengine_journalfile*, %struct.rrdengine_journalfile** %27, align 8
  %29 = bitcast %struct.rrdengine_journalfile* %28 to %struct.rrdengine_datafile*
  store %struct.rrdengine_datafile* %29, %struct.rrdengine_datafile** %7, align 8
  %30 = load %struct.rrdengine_datafile*, %struct.rrdengine_datafile** %7, align 8
  %31 = getelementptr inbounds %struct.rrdengine_datafile, %struct.rrdengine_datafile* %30, i32 0, i32 1
  %32 = load %struct.rrdengine_datafile*, %struct.rrdengine_datafile** %31, align 8
  %33 = bitcast %struct.rrdengine_datafile* %32 to %struct.rrdengine_journalfile*
  store %struct.rrdengine_journalfile* %33, %struct.rrdengine_journalfile** %8, align 8
  %34 = load %struct.rrdengine_datafile*, %struct.rrdengine_datafile** %7, align 8
  %35 = getelementptr inbounds %struct.rrdengine_datafile, %struct.rrdengine_datafile* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  store i32 %36, i32* %11, align 4
  %37 = load %struct.rrdengine_journalfile*, %struct.rrdengine_journalfile** %8, align 8
  %38 = getelementptr inbounds %struct.rrdengine_journalfile, %struct.rrdengine_journalfile* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  store i32 %39, i32* %10, align 4
  store i32 0, i32* %9, align 4
  %40 = call i32 (i8*, ...) @info(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %41 = load %struct.rrdengine_instance*, %struct.rrdengine_instance** %5, align 8
  %42 = load %struct.rrdengine_datafile*, %struct.rrdengine_datafile** %7, align 8
  %43 = bitcast %struct.rrdengine_datafile* %42 to %struct.rrdengine_journalfile*
  %44 = call i32 @datafile_list_delete(%struct.rrdengine_instance* %41, %struct.rrdengine_journalfile* %43)
  %45 = load %struct.rrdengine_journalfile*, %struct.rrdengine_journalfile** %8, align 8
  %46 = load %struct.rrdengine_datafile*, %struct.rrdengine_datafile** %7, align 8
  %47 = bitcast %struct.rrdengine_datafile* %46 to %struct.rrdengine_journalfile*
  %48 = call i32 @destroy_journal_file(%struct.rrdengine_journalfile* %45, %struct.rrdengine_journalfile* %47)
  store i32 %48, i32* %12, align 4
  %49 = load i32, i32* %12, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %60, label %51

51:                                               ; preds = %2
  %52 = load %struct.rrdengine_datafile*, %struct.rrdengine_datafile** %7, align 8
  %53 = bitcast %struct.rrdengine_datafile* %52 to %struct.rrdengine_journalfile*
  %54 = trunc i64 %21 to i32
  %55 = call i32 @generate_journalfilepath(%struct.rrdengine_journalfile* %53, i8* %23, i32 %54)
  %56 = call i32 (i8*, ...) @info(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i8* %23)
  %57 = load i32, i32* %10, align 4
  %58 = load i32, i32* %9, align 4
  %59 = add i32 %58, %57
  store i32 %59, i32* %9, align 4
  br label %60

60:                                               ; preds = %51, %2
  %61 = load %struct.rrdengine_datafile*, %struct.rrdengine_datafile** %7, align 8
  %62 = bitcast %struct.rrdengine_datafile* %61 to %struct.rrdengine_journalfile*
  %63 = call i32 @destroy_data_file(%struct.rrdengine_journalfile* %62)
  store i32 %63, i32* %12, align 4
  %64 = load i32, i32* %12, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %75, label %66

66:                                               ; preds = %60
  %67 = load %struct.rrdengine_datafile*, %struct.rrdengine_datafile** %7, align 8
  %68 = bitcast %struct.rrdengine_datafile* %67 to %struct.rrdengine_journalfile*
  %69 = trunc i64 %21 to i32
  %70 = call i32 @generate_datafilepath(%struct.rrdengine_journalfile* %68, i8* %23, i32 %69)
  %71 = call i32 (i8*, ...) @info(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i8* %23)
  %72 = load i32, i32* %11, align 4
  %73 = load i32, i32* %9, align 4
  %74 = add i32 %73, %72
  store i32 %74, i32* %9, align 4
  br label %75

75:                                               ; preds = %66, %60
  %76 = load %struct.rrdengine_journalfile*, %struct.rrdengine_journalfile** %8, align 8
  %77 = call i32 @freez(%struct.rrdengine_journalfile* %76)
  %78 = load %struct.rrdengine_datafile*, %struct.rrdengine_datafile** %7, align 8
  %79 = bitcast %struct.rrdengine_datafile* %78 to %struct.rrdengine_journalfile*
  %80 = call i32 @freez(%struct.rrdengine_journalfile* %79)
  %81 = load i32, i32* %9, align 4
  %82 = load %struct.rrdengine_instance*, %struct.rrdengine_instance** %5, align 8
  %83 = getelementptr inbounds %struct.rrdengine_instance, %struct.rrdengine_instance* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = sub i32 %84, %81
  store i32 %85, i32* %83, align 8
  %86 = load i32, i32* %9, align 4
  %87 = call i32 (i8*, ...) @info(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i32 %86)
  %88 = load %struct.rrdengine_worker_config*, %struct.rrdengine_worker_config** %6, align 8
  %89 = getelementptr inbounds %struct.rrdengine_worker_config, %struct.rrdengine_worker_config* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 0
  store i32* null, i32** %90, align 8
  %91 = load %struct.rrdengine_worker_config*, %struct.rrdengine_worker_config** %6, align 8
  %92 = getelementptr inbounds %struct.rrdengine_worker_config, %struct.rrdengine_worker_config* %91, i32 0, i32 0
  %93 = call i64 @uv_async_send(i32* %92)
  %94 = icmp eq i64 0, %93
  %95 = zext i1 %94 to i32
  %96 = call i32 @assert(i32 %95)
  %97 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %97)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @info(i8*, ...) #2

declare dso_local i32 @datafile_list_delete(%struct.rrdengine_instance*, %struct.rrdengine_journalfile*) #2

declare dso_local i32 @destroy_journal_file(%struct.rrdengine_journalfile*, %struct.rrdengine_journalfile*) #2

declare dso_local i32 @generate_journalfilepath(%struct.rrdengine_journalfile*, i8*, i32) #2

declare dso_local i32 @destroy_data_file(%struct.rrdengine_journalfile*) #2

declare dso_local i32 @generate_datafilepath(%struct.rrdengine_journalfile*, i8*, i32) #2

declare dso_local i32 @freez(%struct.rrdengine_journalfile*) #2

declare dso_local i32 @assert(i32) #2

declare dso_local i64 @uv_async_send(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
