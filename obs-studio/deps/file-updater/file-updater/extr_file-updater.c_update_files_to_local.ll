; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/file-updater/file-updater/extr_file-updater.c_update_files_to_local.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/file-updater/file-updater/extr_file-updater.c_update_files_to_local.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.update_info = type { i32 }
%struct.file_update_data = type { i32, i32, i32, i64 }

@.str = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@newer_than_cache = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*)* @update_files_to_local to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @update_files_to_local(i8* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.update_info*, align 8
  %6 = alloca %struct.file_update_data, align 8
  store i8* %0, i8** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to %struct.update_info*
  store %struct.update_info* %8, %struct.update_info** %5, align 8
  %9 = getelementptr inbounds %struct.file_update_data, %struct.file_update_data* %6, i32 0, i32 0
  %10 = load i32*, i32** %4, align 8
  %11 = call i64 @obs_data_get_int(i32* %10, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %12 = trunc i64 %11 to i32
  store i32 %12, i32* %9, align 8
  %13 = getelementptr inbounds %struct.file_update_data, %struct.file_update_data* %6, i32 0, i32 1
  %14 = load i32*, i32** %4, align 8
  %15 = call i32 @obs_data_get_string(i32* %14, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  store i32 %15, i32* %13, align 4
  %16 = getelementptr inbounds %struct.file_update_data, %struct.file_update_data* %6, i32 0, i32 2
  store i32 0, i32* %16, align 8
  %17 = getelementptr inbounds %struct.file_update_data, %struct.file_update_data* %6, i32 0, i32 3
  store i64 0, i64* %17, align 8
  %18 = load %struct.update_info*, %struct.update_info** %5, align 8
  %19 = getelementptr inbounds %struct.update_info, %struct.update_info* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @newer_than_cache, align 4
  %22 = call i32 @enum_files(i32 %20, i32 %21, %struct.file_update_data* %6)
  %23 = getelementptr inbounds %struct.file_update_data, %struct.file_update_data* %6, i32 0, i32 3
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %2
  %27 = getelementptr inbounds %struct.file_update_data, %struct.file_update_data* %6, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %35, label %30

30:                                               ; preds = %26, %2
  %31 = load %struct.update_info*, %struct.update_info** %5, align 8
  %32 = getelementptr inbounds %struct.file_update_data, %struct.file_update_data* %6, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @copy_local_to_cache(%struct.update_info* %31, i32 %33)
  br label %35

35:                                               ; preds = %30, %26
  ret i32 1
}

declare dso_local i64 @obs_data_get_int(i32*, i8*) #1

declare dso_local i32 @obs_data_get_string(i32*, i8*) #1

declare dso_local i32 @enum_files(i32, i32, %struct.file_update_data*) #1

declare dso_local i32 @copy_local_to_cache(%struct.update_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
