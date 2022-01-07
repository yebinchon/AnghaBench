; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/file-updater/file-updater/extr_file-updater.c_single_file_thread.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/file-updater/file-updater/extr_file-updater.c_single_file_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.update_info = type { %struct.TYPE_3__, i32, i32 (i32, %struct.file_download_data*)*, i32, i32 }
%struct.TYPE_3__ = type { i32, i32* }
%struct.file_download_data = type opaque
%struct.file_download_data.0 = type { %struct.TYPE_4__, i64, i32 }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"Could not initialize Curl\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @single_file_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @single_file_thread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.update_info*, align 8
  %5 = alloca %struct.file_download_data.0, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to %struct.update_info*
  store %struct.update_info* %8, %struct.update_info** %4, align 8
  %9 = call i32 (...) @curl_easy_init()
  %10 = load %struct.update_info*, %struct.update_info** %4, align 8
  %11 = getelementptr inbounds %struct.update_info, %struct.update_info* %10, i32 0, i32 4
  store i32 %9, i32* %11, align 4
  %12 = load %struct.update_info*, %struct.update_info** %4, align 8
  %13 = getelementptr inbounds %struct.update_info, %struct.update_info* %12, i32 0, i32 4
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %1
  %17 = call i32 @warn(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  store i8* null, i8** %2, align 8
  br label %67

18:                                               ; preds = %1
  %19 = load %struct.update_info*, %struct.update_info** %4, align 8
  %20 = load %struct.update_info*, %struct.update_info** %4, align 8
  %21 = getelementptr inbounds %struct.update_info, %struct.update_info* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @do_http_request(%struct.update_info* %19, i32 %22, i64* %6)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %18
  store i8* null, i8** %2, align 8
  br label %67

26:                                               ; preds = %18
  %27 = load %struct.update_info*, %struct.update_info** %4, align 8
  %28 = getelementptr inbounds %struct.update_info, %struct.update_info* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %32, label %40

32:                                               ; preds = %26
  %33 = load %struct.update_info*, %struct.update_info** %4, align 8
  %34 = getelementptr inbounds %struct.update_info, %struct.update_info* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %32, %26
  store i8* null, i8** %2, align 8
  br label %67

41:                                               ; preds = %32
  %42 = load %struct.update_info*, %struct.update_info** %4, align 8
  %43 = getelementptr inbounds %struct.update_info, %struct.update_info* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 8
  %45 = getelementptr inbounds %struct.file_download_data.0, %struct.file_download_data.0* %5, i32 0, i32 2
  store i32 %44, i32* %45, align 8
  %46 = getelementptr inbounds %struct.file_download_data.0, %struct.file_download_data.0* %5, i32 0, i32 1
  store i64 0, i64* %46, align 8
  %47 = load %struct.update_info*, %struct.update_info** %4, align 8
  %48 = getelementptr inbounds %struct.update_info, %struct.update_info* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = getelementptr inbounds %struct.file_download_data.0, %struct.file_download_data.0* %5, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 8
  %53 = load %struct.update_info*, %struct.update_info** %4, align 8
  %54 = getelementptr inbounds %struct.update_info, %struct.update_info* %53, i32 0, i32 2
  %55 = load i32 (i32, %struct.file_download_data*)*, i32 (i32, %struct.file_download_data*)** %54, align 8
  %56 = load %struct.update_info*, %struct.update_info** %4, align 8
  %57 = getelementptr inbounds %struct.update_info, %struct.update_info* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = bitcast %struct.file_download_data.0* %5 to %struct.file_download_data*
  %60 = call i32 %55(i32 %58, %struct.file_download_data* %59)
  %61 = getelementptr inbounds %struct.file_download_data.0, %struct.file_download_data.0* %5, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.update_info*, %struct.update_info** %4, align 8
  %65 = getelementptr inbounds %struct.update_info, %struct.update_info* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 0
  store i32 %63, i32* %66, align 8
  store i8* null, i8** %2, align 8
  br label %67

67:                                               ; preds = %41, %40, %25, %16
  %68 = load i8*, i8** %2, align 8
  ret i8* %68
}

declare dso_local i32 @curl_easy_init(...) #1

declare dso_local i32 @warn(i8*) #1

declare dso_local i32 @do_http_request(%struct.update_info*, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
