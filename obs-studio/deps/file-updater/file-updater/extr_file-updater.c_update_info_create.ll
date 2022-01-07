; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/file-updater/file-updater/extr_file-updater.c_update_info_create.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/file-updater/file-updater/extr_file-updater.c_update_info_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.update_info = type { i8*, i32, i32, i8*, i32, i32, i8*, i8*, i8*, i8* }
%struct.dstr = type { i8*, i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@LOG_WARNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"%sCould not create cache directory %s\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c".temp\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"%sCould not create temp directory %s\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"package.json\00", align 1
@update_thread = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.update_info* @update_info_create(i8* %0, i8* %1, i8* %2, i8* %3, i8* %4, i32 %5, i8* %6) #0 {
  %8 = alloca %struct.update_info*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca %struct.update_info*, align 8
  %17 = alloca %struct.dstr, align 8
  store i8* %0, i8** %9, align 8
  store i8* %1, i8** %10, align 8
  store i8* %2, i8** %11, align 8
  store i8* %3, i8** %12, align 8
  store i8* %4, i8** %13, align 8
  store i32 %5, i32* %14, align 4
  store i8* %6, i8** %15, align 8
  %18 = bitcast %struct.dstr* %17 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %18, i8 0, i64 16, i1 false)
  %19 = load i8*, i8** %9, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %7
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %9, align 8
  br label %22

22:                                               ; preds = %21, %7
  %23 = load i8*, i8** %13, align 8
  %24 = call i64 @os_mkdir(i8* %23)
  %25 = icmp slt i64 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %22
  %27 = load i32, i32* @LOG_WARNING, align 4
  %28 = load i8*, i8** %9, align 8
  %29 = load i8*, i8** %13, align 8
  %30 = call i32 @blog(i32 %27, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i8* %28, i8* %29)
  store %struct.update_info* null, %struct.update_info** %8, align 8
  br label %98

31:                                               ; preds = %22
  %32 = load i8*, i8** %13, align 8
  %33 = call i32 @dstr_copy(%struct.dstr* %17, i8* %32)
  %34 = call signext i8 @dstr_end(%struct.dstr* %17)
  %35 = sext i8 %34 to i32
  %36 = icmp ne i32 %35, 47
  br i1 %36, label %37, label %43

37:                                               ; preds = %31
  %38 = call signext i8 @dstr_end(%struct.dstr* %17)
  %39 = sext i8 %38 to i32
  %40 = icmp ne i32 %39, 92
  br i1 %40, label %41, label %43

41:                                               ; preds = %37
  %42 = call i32 @dstr_cat_ch(%struct.dstr* %17, i8 signext 47)
  br label %43

43:                                               ; preds = %41, %37, %31
  %44 = call i32 @dstr_cat(%struct.dstr* %17, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %45 = getelementptr inbounds %struct.dstr, %struct.dstr* %17, i32 0, i32 0
  %46 = load i8*, i8** %45, align 8
  %47 = call i64 @os_mkdir(i8* %46)
  %48 = icmp slt i64 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %43
  %50 = load i32, i32* @LOG_WARNING, align 4
  %51 = load i8*, i8** %9, align 8
  %52 = load i8*, i8** %13, align 8
  %53 = call i32 @blog(i32 %50, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i8* %51, i8* %52)
  %54 = call i32 @dstr_free(%struct.dstr* %17)
  store %struct.update_info* null, %struct.update_info** %8, align 8
  br label %98

55:                                               ; preds = %43
  %56 = call %struct.update_info* @bzalloc(i32 64)
  store %struct.update_info* %56, %struct.update_info** %16, align 8
  %57 = load i8*, i8** %9, align 8
  %58 = call i8* @bstrdup(i8* %57)
  %59 = load %struct.update_info*, %struct.update_info** %16, align 8
  %60 = getelementptr inbounds %struct.update_info, %struct.update_info* %59, i32 0, i32 9
  store i8* %58, i8** %60, align 8
  %61 = load i8*, i8** %10, align 8
  %62 = call i8* @bstrdup(i8* %61)
  %63 = load %struct.update_info*, %struct.update_info** %16, align 8
  %64 = getelementptr inbounds %struct.update_info, %struct.update_info* %63, i32 0, i32 8
  store i8* %62, i8** %64, align 8
  %65 = getelementptr inbounds %struct.dstr, %struct.dstr* %17, i32 0, i32 0
  %66 = load i8*, i8** %65, align 8
  %67 = load %struct.update_info*, %struct.update_info** %16, align 8
  %68 = getelementptr inbounds %struct.update_info, %struct.update_info* %67, i32 0, i32 0
  store i8* %66, i8** %68, align 8
  %69 = load i8*, i8** %12, align 8
  %70 = call i8* @bstrdup(i8* %69)
  %71 = load %struct.update_info*, %struct.update_info** %16, align 8
  %72 = getelementptr inbounds %struct.update_info, %struct.update_info* %71, i32 0, i32 7
  store i8* %70, i8** %72, align 8
  %73 = load i8*, i8** %13, align 8
  %74 = call i8* @bstrdup(i8* %73)
  %75 = load %struct.update_info*, %struct.update_info** %16, align 8
  %76 = getelementptr inbounds %struct.update_info, %struct.update_info* %75, i32 0, i32 6
  store i8* %74, i8** %76, align 8
  %77 = load i8*, i8** %11, align 8
  %78 = call i32 @get_path(i8* %77, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  %79 = load %struct.update_info*, %struct.update_info** %16, align 8
  %80 = getelementptr inbounds %struct.update_info, %struct.update_info* %79, i32 0, i32 5
  store i32 %78, i32* %80, align 4
  %81 = load i32, i32* %14, align 4
  %82 = load %struct.update_info*, %struct.update_info** %16, align 8
  %83 = getelementptr inbounds %struct.update_info, %struct.update_info* %82, i32 0, i32 4
  store i32 %81, i32* %83, align 8
  %84 = load i8*, i8** %15, align 8
  %85 = load %struct.update_info*, %struct.update_info** %16, align 8
  %86 = getelementptr inbounds %struct.update_info, %struct.update_info* %85, i32 0, i32 3
  store i8* %84, i8** %86, align 8
  %87 = load %struct.update_info*, %struct.update_info** %16, align 8
  %88 = getelementptr inbounds %struct.update_info, %struct.update_info* %87, i32 0, i32 2
  %89 = load i32, i32* @update_thread, align 4
  %90 = load %struct.update_info*, %struct.update_info** %16, align 8
  %91 = call i64 @pthread_create(i32* %88, i32* null, i32 %89, %struct.update_info* %90)
  %92 = icmp eq i64 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %55
  %94 = load %struct.update_info*, %struct.update_info** %16, align 8
  %95 = getelementptr inbounds %struct.update_info, %struct.update_info* %94, i32 0, i32 1
  store i32 1, i32* %95, align 8
  br label %96

96:                                               ; preds = %93, %55
  %97 = load %struct.update_info*, %struct.update_info** %16, align 8
  store %struct.update_info* %97, %struct.update_info** %8, align 8
  br label %98

98:                                               ; preds = %96, %49, %26
  %99 = load %struct.update_info*, %struct.update_info** %8, align 8
  ret %struct.update_info* %99
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @os_mkdir(i8*) #2

declare dso_local i32 @blog(i32, i8*, i8*, i8*) #2

declare dso_local i32 @dstr_copy(%struct.dstr*, i8*) #2

declare dso_local signext i8 @dstr_end(%struct.dstr*) #2

declare dso_local i32 @dstr_cat_ch(%struct.dstr*, i8 signext) #2

declare dso_local i32 @dstr_cat(%struct.dstr*, i8*) #2

declare dso_local i32 @dstr_free(%struct.dstr*) #2

declare dso_local %struct.update_info* @bzalloc(i32) #2

declare dso_local i8* @bstrdup(i8*) #2

declare dso_local i32 @get_path(i8*, i8*) #2

declare !callback !2 dso_local i64 @pthread_create(i32*, i32*, i32, %struct.update_info*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{!3}
!3 = !{i64 2, i64 3, i1 false}
