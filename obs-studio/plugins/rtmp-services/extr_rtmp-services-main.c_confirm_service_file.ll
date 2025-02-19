; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/rtmp-services/extr_rtmp-services-main.c_confirm_service_file.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/rtmp-services/extr_rtmp-services-main.c_confirm_service_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file_download_data = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [14 x i8] c"services.json\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"format_version\00", align 1
@RTMP_SERVICES_FORMAT_VERSION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.file_download_data*)* @confirm_service_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @confirm_service_file(i8* %0, %struct.file_download_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.file_download_data*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.file_download_data* %1, %struct.file_download_data** %5, align 8
  %8 = load %struct.file_download_data*, %struct.file_download_data** %5, align 8
  %9 = getelementptr inbounds %struct.file_download_data, %struct.file_download_data* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = call i64 @astrcmpi(i32 %10, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %34

13:                                               ; preds = %2
  %14 = load %struct.file_download_data*, %struct.file_download_data** %5, align 8
  %15 = getelementptr inbounds %struct.file_download_data, %struct.file_download_data* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to i8*
  %19 = call i32* @obs_data_create_from_json(i8* %18)
  store i32* %19, i32** %6, align 8
  %20 = load i32*, i32** %6, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %13
  store i32 0, i32* %3, align 4
  br label %37

23:                                               ; preds = %13
  %24 = load i32*, i32** %6, align 8
  %25 = call i64 @obs_data_get_int(i32* %24, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %26 = trunc i64 %25 to i32
  store i32 %26, i32* %7, align 4
  %27 = load i32*, i32** %6, align 8
  %28 = call i32 @obs_data_release(i32* %27)
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* @RTMP_SERVICES_FORMAT_VERSION, align 4
  %31 = icmp ne i32 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %23
  store i32 0, i32* %3, align 4
  br label %37

33:                                               ; preds = %23
  br label %34

34:                                               ; preds = %33, %2
  %35 = load i8*, i8** %4, align 8
  %36 = call i32 @UNUSED_PARAMETER(i8* %35)
  store i32 1, i32* %3, align 4
  br label %37

37:                                               ; preds = %34, %32, %22
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local i64 @astrcmpi(i32, i8*) #1

declare dso_local i32* @obs_data_create_from_json(i8*) #1

declare dso_local i64 @obs_data_get_int(i32*, i8*) #1

declare dso_local i32 @obs_data_release(i32*) #1

declare dso_local i32 @UNUSED_PARAMETER(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
