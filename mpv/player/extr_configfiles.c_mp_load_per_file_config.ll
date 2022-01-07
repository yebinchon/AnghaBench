; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_configfiles.c_mp_load_per_file_config.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_configfiles.c_mp_load_per_file_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MPContext = type { i8*, i32, %struct.MPOpts* }
%struct.MPOpts = type { i64 }

@.str = private unnamed_addr constant [8 x i8] c"%s.conf\00", align 1
@.str.1 = private unnamed_addr constant [76 x i8] c"Filename is too long, can not load file or directory specific config files\0A\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"mpv.conf\00", align 1
@FILE_LOCAL_FLAGS = common dso_local global i32 0, align 4
@MSGL_INFO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.MPContext*)* @mp_load_per_file_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mp_load_per_file_config(%struct.MPContext* %0) #0 {
  %2 = alloca %struct.MPContext*, align 8
  %3 = alloca %struct.MPOpts*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca [512 x i8], align 16
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store %struct.MPContext* %0, %struct.MPContext** %2, align 8
  %10 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %11 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %10, i32 0, i32 2
  %12 = load %struct.MPOpts*, %struct.MPOpts** %11, align 8
  store %struct.MPOpts* %12, %struct.MPOpts** %3, align 8
  %13 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %14 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %13, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8
  store i8* %15, i8** %6, align 8
  %16 = load %struct.MPOpts*, %struct.MPOpts** %3, align 8
  %17 = getelementptr inbounds %struct.MPOpts, %struct.MPOpts* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %67

20:                                               ; preds = %1
  %21 = getelementptr inbounds [512 x i8], [512 x i8]* %5, i64 0, i64 0
  %22 = load i8*, i8** %6, align 8
  %23 = call i32 @snprintf(i8* %21, i32 512, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* %22)
  %24 = sext i32 %23 to i64
  %25 = icmp uge i64 %24, 512
  br i1 %25, label %26, label %29

26:                                               ; preds = %20
  %27 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %28 = call i32 @MP_VERBOSE(%struct.MPContext* %27, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.1, i64 0, i64 0))
  br label %67

29:                                               ; preds = %20
  %30 = getelementptr inbounds [512 x i8], [512 x i8]* %5, i64 0, i64 0
  %31 = call i8* @mp_basename(i8* %30)
  store i8* %31, i8** %7, align 8
  %32 = getelementptr inbounds [512 x i8], [512 x i8]* %5, i64 0, i64 0
  %33 = call i32 @mp_dirname(i8* %32)
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %8, align 4
  %35 = call i32 @bstr0(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %36 = call i8* @mp_path_join_bstr(i32* null, i32 %34, i32 %35)
  store i8* %36, i8** %9, align 8
  %37 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %38 = load i8*, i8** %9, align 8
  %39 = load i32, i32* @FILE_LOCAL_FLAGS, align 4
  %40 = load i32, i32* @MSGL_INFO, align 4
  %41 = call i64 @try_load_config(%struct.MPContext* %37, i8* %38, i32 %39, i32 %40)
  %42 = load i8*, i8** %9, align 8
  %43 = call i32 @talloc_free(i8* %42)
  %44 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %45 = getelementptr inbounds [512 x i8], [512 x i8]* %5, i64 0, i64 0
  %46 = load i32, i32* @FILE_LOCAL_FLAGS, align 4
  %47 = load i32, i32* @MSGL_INFO, align 4
  %48 = call i64 @try_load_config(%struct.MPContext* %44, i8* %45, i32 %46, i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %29
  br label %67

51:                                               ; preds = %29
  %52 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %53 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = load i8*, i8** %7, align 8
  %56 = call i8* @mp_find_config_file(i32* null, i32 %54, i8* %55)
  store i8* %56, i8** %4, align 8
  %57 = icmp ne i8* %56, null
  br i1 %57, label %58, label %66

58:                                               ; preds = %51
  %59 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %60 = load i8*, i8** %4, align 8
  %61 = load i32, i32* @FILE_LOCAL_FLAGS, align 4
  %62 = load i32, i32* @MSGL_INFO, align 4
  %63 = call i64 @try_load_config(%struct.MPContext* %59, i8* %60, i32 %61, i32 %62)
  %64 = load i8*, i8** %4, align 8
  %65 = call i32 @talloc_free(i8* %64)
  br label %66

66:                                               ; preds = %58, %51
  br label %67

67:                                               ; preds = %26, %50, %66, %1
  ret void
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i32 @MP_VERBOSE(%struct.MPContext*, i8*) #1

declare dso_local i8* @mp_basename(i8*) #1

declare dso_local i32 @mp_dirname(i8*) #1

declare dso_local i8* @mp_path_join_bstr(i32*, i32, i32) #1

declare dso_local i32 @bstr0(i8*) #1

declare dso_local i64 @try_load_config(%struct.MPContext*, i8*, i32, i32) #1

declare dso_local i32 @talloc_free(i8*) #1

declare dso_local i8* @mp_find_config_file(i32*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
