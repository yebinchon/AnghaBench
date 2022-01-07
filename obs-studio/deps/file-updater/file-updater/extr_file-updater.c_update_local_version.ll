; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/file-updater/file-updater/extr_file-updater.c_update_local_version.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/file-updater/file-updater/extr_file-updater.c_update_local_version.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.update_info = type { i32, i32 }

@.str = private unnamed_addr constant [8 x i8] c"version\00", align 1
@update_files_to_local = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"package.json\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.update_info*)* @update_local_version to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @update_local_version(%struct.update_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.update_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.update_info* %0, %struct.update_info** %3, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.update_info*, %struct.update_info** %3, align 8
  %7 = getelementptr inbounds %struct.update_info, %struct.update_info* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i64 @obs_data_get_int(i32 %8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %10 = trunc i64 %9 to i32
  store i32 %10, i32* %4, align 4
  %11 = load %struct.update_info*, %struct.update_info** %3, align 8
  %12 = getelementptr inbounds %struct.update_info, %struct.update_info* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i64 @obs_data_get_int(i32 %13, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %15 = trunc i64 %14 to i32
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* %4, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %42

19:                                               ; preds = %1
  %20 = load %struct.update_info*, %struct.update_info** %3, align 8
  %21 = getelementptr inbounds %struct.update_info, %struct.update_info* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @update_files_to_local, align 4
  %24 = load %struct.update_info*, %struct.update_info** %3, align 8
  %25 = call i32 @enum_files(i32 %22, i32 %23, %struct.update_info* %24)
  %26 = load %struct.update_info*, %struct.update_info** %3, align 8
  %27 = call i32 @copy_local_to_cache(%struct.update_info* %26, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %28 = load %struct.update_info*, %struct.update_info** %3, align 8
  %29 = getelementptr inbounds %struct.update_info, %struct.update_info* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @obs_data_release(i32 %30)
  %32 = load %struct.update_info*, %struct.update_info** %3, align 8
  %33 = getelementptr inbounds %struct.update_info, %struct.update_info* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @obs_data_addref(i32 %34)
  %36 = load %struct.update_info*, %struct.update_info** %3, align 8
  %37 = getelementptr inbounds %struct.update_info, %struct.update_info* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.update_info*, %struct.update_info** %3, align 8
  %40 = getelementptr inbounds %struct.update_info, %struct.update_info* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 4
  %41 = load i32, i32* %4, align 4
  store i32 %41, i32* %2, align 4
  br label %44

42:                                               ; preds = %1
  %43 = load i32, i32* %5, align 4
  store i32 %43, i32* %2, align 4
  br label %44

44:                                               ; preds = %42, %19
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local i64 @obs_data_get_int(i32, i8*) #1

declare dso_local i32 @enum_files(i32, i32, %struct.update_info*) #1

declare dso_local i32 @copy_local_to_cache(%struct.update_info*, i8*) #1

declare dso_local i32 @obs_data_release(i32) #1

declare dso_local i32 @obs_data_addref(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
