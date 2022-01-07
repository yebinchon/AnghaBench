; ModuleID = '/home/carl/AnghaBench/netdata/database/engine/extr_datafile.c_close_data_file.c'
source_filename = "/home/carl/AnghaBench/netdata/database/engine/extr_datafile.c_close_data_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rrdengine_datafile = type { i32, %struct.rrdengine_instance* }
%struct.rrdengine_instance = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@RRDENG_PATH_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"uv_fs_close(%s): %s\00", align 1
@global_fs_errors = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @close_data_file(%struct.rrdengine_datafile* %0) #0 {
  %2 = alloca %struct.rrdengine_datafile*, align 8
  %3 = alloca %struct.rrdengine_instance*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  store %struct.rrdengine_datafile* %0, %struct.rrdengine_datafile** %2, align 8
  %8 = load %struct.rrdengine_datafile*, %struct.rrdengine_datafile** %2, align 8
  %9 = getelementptr inbounds %struct.rrdengine_datafile, %struct.rrdengine_datafile* %8, i32 0, i32 1
  %10 = load %struct.rrdengine_instance*, %struct.rrdengine_instance** %9, align 8
  store %struct.rrdengine_instance* %10, %struct.rrdengine_instance** %3, align 8
  %11 = load i32, i32* @RRDENG_PATH_MAX, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %6, align 8
  %14 = alloca i8, i64 %12, align 16
  store i64 %12, i64* %7, align 8
  %15 = load %struct.rrdengine_datafile*, %struct.rrdengine_datafile** %2, align 8
  %16 = trunc i64 %12 to i32
  %17 = call i32 @generate_datafilepath(%struct.rrdengine_datafile* %15, i8* %14, i32 %16)
  %18 = load %struct.rrdengine_datafile*, %struct.rrdengine_datafile** %2, align 8
  %19 = getelementptr inbounds %struct.rrdengine_datafile, %struct.rrdengine_datafile* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @uv_fs_close(i32* null, i32* %4, i32 %20, i32* null)
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %34

24:                                               ; preds = %1
  %25 = load i32, i32* %5, align 4
  %26 = call i8* @uv_strerror(i32 %25)
  %27 = call i32 @error(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8* %14, i8* %26)
  %28 = load %struct.rrdengine_instance*, %struct.rrdengine_instance** %3, align 8
  %29 = getelementptr inbounds %struct.rrdengine_instance, %struct.rrdengine_instance* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %30, align 4
  %33 = call i32 @rrd_stat_atomic_add(i32* @global_fs_errors, i32 1)
  br label %34

34:                                               ; preds = %24, %1
  %35 = call i32 @uv_fs_req_cleanup(i32* %4)
  %36 = load i32, i32* %5, align 4
  %37 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %37)
  ret i32 %36
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @generate_datafilepath(%struct.rrdengine_datafile*, i8*, i32) #2

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
