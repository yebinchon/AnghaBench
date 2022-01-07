; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/file-updater/file-updater/extr_file-updater.c_update_save_metadata.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/file-updater/file-updater/extr_file-updater.c_update_save_metadata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.update_info = type { i32, i32 }
%struct.dstr = type { i32, i32 }

@.str = private unnamed_addr constant [10 x i8] c"meta.json\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"etag\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.update_info*)* @update_save_metadata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_save_metadata(%struct.update_info* %0) #0 {
  %2 = alloca %struct.update_info*, align 8
  %3 = alloca %struct.dstr, align 4
  %4 = alloca i32*, align 8
  store %struct.update_info* %0, %struct.update_info** %2, align 8
  %5 = bitcast %struct.dstr* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %5, i8 0, i64 8, i1 false)
  %6 = load %struct.update_info*, %struct.update_info** %2, align 8
  %7 = getelementptr inbounds %struct.update_info, %struct.update_info* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %30

11:                                               ; preds = %1
  %12 = load %struct.update_info*, %struct.update_info** %2, align 8
  %13 = getelementptr inbounds %struct.update_info, %struct.update_info* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @dstr_copy(%struct.dstr* %3, i32 %14)
  %16 = call i32 @dstr_cat(%struct.dstr* %3, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %17 = call i32* (...) @obs_data_create()
  store i32* %17, i32** %4, align 8
  %18 = load i32*, i32** %4, align 8
  %19 = load %struct.update_info*, %struct.update_info** %2, align 8
  %20 = getelementptr inbounds %struct.update_info, %struct.update_info* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @obs_data_set_string(i32* %18, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %21)
  %23 = load i32*, i32** %4, align 8
  %24 = getelementptr inbounds %struct.dstr, %struct.dstr* %3, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @obs_data_save_json(i32* %23, i32 %25)
  %27 = load i32*, i32** %4, align 8
  %28 = call i32 @obs_data_release(i32* %27)
  %29 = call i32 @dstr_free(%struct.dstr* %3)
  br label %30

30:                                               ; preds = %11, %10
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @dstr_copy(%struct.dstr*, i32) #2

declare dso_local i32 @dstr_cat(%struct.dstr*, i8*) #2

declare dso_local i32* @obs_data_create(...) #2

declare dso_local i32 @obs_data_set_string(i32*, i8*, i32) #2

declare dso_local i32 @obs_data_save_json(i32*, i32) #2

declare dso_local i32 @obs_data_release(i32*) #2

declare dso_local i32 @dstr_free(%struct.dstr*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
