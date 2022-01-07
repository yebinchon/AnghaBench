; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-data.c_obs_data_create_from_json_file_safe.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-data.c_obs_data_create_from_json_file_safe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dstr = type { i32, i32 }

@.str = private unnamed_addr constant [2 x i8] c".\00", align 1
@LOG_WARNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [73 x i8] c"obs-data.c: [obs_data_create_from_json_file_safe] attempting backup file\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @obs_data_create_from_json_file_safe(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.dstr, align 4
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = call i32* @obs_data_create_from_json_file(i8* %7)
  store i32* %8, i32** %5, align 8
  %9 = load i32*, i32** %5, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %47, label %11

11:                                               ; preds = %2
  %12 = load i8*, i8** %4, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %14, label %47

14:                                               ; preds = %11
  %15 = load i8*, i8** %4, align 8
  %16 = load i8, i8* %15, align 1
  %17 = sext i8 %16 to i32
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %47

19:                                               ; preds = %14
  %20 = bitcast %struct.dstr* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %20, i8 0, i64 8, i1 false)
  %21 = load i8*, i8** %3, align 8
  %22 = call i32 @dstr_copy(%struct.dstr* %6, i8* %21)
  %23 = load i8*, i8** %4, align 8
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp ne i32 %25, 46
  br i1 %26, label %27, label %29

27:                                               ; preds = %19
  %28 = call i32 @dstr_cat(%struct.dstr* %6, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %29

29:                                               ; preds = %27, %19
  %30 = load i8*, i8** %4, align 8
  %31 = call i32 @dstr_cat(%struct.dstr* %6, i8* %30)
  %32 = getelementptr inbounds %struct.dstr, %struct.dstr* %6, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i64 @os_file_exists(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %45

36:                                               ; preds = %29
  %37 = load i32, i32* @LOG_WARNING, align 4
  %38 = call i32 @blog(i32 %37, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.1, i64 0, i64 0))
  %39 = getelementptr inbounds %struct.dstr, %struct.dstr* %6, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i8*, i8** %3, align 8
  %42 = call i32 @os_rename(i32 %40, i8* %41)
  %43 = load i8*, i8** %3, align 8
  %44 = call i32* @obs_data_create_from_json_file(i8* %43)
  store i32* %44, i32** %5, align 8
  br label %45

45:                                               ; preds = %36, %29
  %46 = call i32 @dstr_free(%struct.dstr* %6)
  br label %47

47:                                               ; preds = %45, %14, %11, %2
  %48 = load i32*, i32** %5, align 8
  ret i32* %48
}

declare dso_local i32* @obs_data_create_from_json_file(i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @dstr_copy(%struct.dstr*, i8*) #1

declare dso_local i32 @dstr_cat(%struct.dstr*, i8*) #1

declare dso_local i64 @os_file_exists(i32) #1

declare dso_local i32 @blog(i32, i8*) #1

declare dso_local i32 @os_rename(i32, i8*) #1

declare dso_local i32 @dstr_free(%struct.dstr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
