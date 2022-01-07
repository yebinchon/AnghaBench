; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/rtmp-services/extr_rtmp-common.c_rtmp_common_url.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/rtmp-services/extr_rtmp-common.c_rtmp_common_url.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtmp_common = type { i8*, i8*, i64 }
%struct.twitch_ingest = type { i8* }

@.str = private unnamed_addr constant [7 x i8] c"Twitch\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"auto\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"YouNow\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @rtmp_common_url to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @rtmp_common_url(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.rtmp_common*, align 8
  %5 = alloca %struct.twitch_ingest, align 8
  %6 = alloca %struct.twitch_ingest, align 8
  store i8* %0, i8** %3, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to %struct.rtmp_common*
  store %struct.rtmp_common* %8, %struct.rtmp_common** %4, align 8
  %9 = load %struct.rtmp_common*, %struct.rtmp_common** %4, align 8
  %10 = getelementptr inbounds %struct.rtmp_common, %struct.rtmp_common* %9, i32 0, i32 0
  %11 = load i8*, i8** %10, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %13, label %41

13:                                               ; preds = %1
  %14 = load %struct.rtmp_common*, %struct.rtmp_common** %4, align 8
  %15 = getelementptr inbounds %struct.rtmp_common, %struct.rtmp_common* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  %17 = call i64 @strcmp(i8* %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %41

19:                                               ; preds = %13
  %20 = load %struct.rtmp_common*, %struct.rtmp_common** %4, align 8
  %21 = getelementptr inbounds %struct.rtmp_common, %struct.rtmp_common* %20, i32 0, i32 1
  %22 = load i8*, i8** %21, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %40

24:                                               ; preds = %19
  %25 = load %struct.rtmp_common*, %struct.rtmp_common** %4, align 8
  %26 = getelementptr inbounds %struct.rtmp_common, %struct.rtmp_common* %25, i32 0, i32 1
  %27 = load i8*, i8** %26, align 8
  %28 = call i64 @strcmp(i8* %27, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %40

30:                                               ; preds = %24
  %31 = call i32 @twitch_ingests_refresh(i32 3)
  %32 = call i32 (...) @twitch_ingests_lock()
  %33 = call i8* @twitch_ingest(i32 0)
  %34 = getelementptr inbounds %struct.twitch_ingest, %struct.twitch_ingest* %6, i32 0, i32 0
  store i8* %33, i8** %34, align 8
  %35 = bitcast %struct.twitch_ingest* %5 to i8*
  %36 = bitcast %struct.twitch_ingest* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %35, i8* align 8 %36, i64 8, i1 false)
  %37 = call i32 (...) @twitch_ingests_unlock()
  %38 = getelementptr inbounds %struct.twitch_ingest, %struct.twitch_ingest* %5, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  store i8* %39, i8** %2, align 8
  br label %75

40:                                               ; preds = %24, %19
  br label %41

41:                                               ; preds = %40, %13, %1
  %42 = load %struct.rtmp_common*, %struct.rtmp_common** %4, align 8
  %43 = getelementptr inbounds %struct.rtmp_common, %struct.rtmp_common* %42, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  %45 = icmp ne i8* %44, null
  br i1 %45, label %46, label %71

46:                                               ; preds = %41
  %47 = load %struct.rtmp_common*, %struct.rtmp_common** %4, align 8
  %48 = getelementptr inbounds %struct.rtmp_common, %struct.rtmp_common* %47, i32 0, i32 0
  %49 = load i8*, i8** %48, align 8
  %50 = call i64 @strcmp(i8* %49, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %71

52:                                               ; preds = %46
  %53 = load %struct.rtmp_common*, %struct.rtmp_common** %4, align 8
  %54 = getelementptr inbounds %struct.rtmp_common, %struct.rtmp_common* %53, i32 0, i32 1
  %55 = load i8*, i8** %54, align 8
  %56 = icmp ne i8* %55, null
  br i1 %56, label %57, label %70

57:                                               ; preds = %52
  %58 = load %struct.rtmp_common*, %struct.rtmp_common** %4, align 8
  %59 = getelementptr inbounds %struct.rtmp_common, %struct.rtmp_common* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %70

62:                                               ; preds = %57
  %63 = load %struct.rtmp_common*, %struct.rtmp_common** %4, align 8
  %64 = getelementptr inbounds %struct.rtmp_common, %struct.rtmp_common* %63, i32 0, i32 1
  %65 = load i8*, i8** %64, align 8
  %66 = load %struct.rtmp_common*, %struct.rtmp_common** %4, align 8
  %67 = getelementptr inbounds %struct.rtmp_common, %struct.rtmp_common* %66, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = call i8* @younow_get_ingest(i8* %65, i64 %68)
  store i8* %69, i8** %2, align 8
  br label %75

70:                                               ; preds = %57, %52
  br label %71

71:                                               ; preds = %70, %46, %41
  %72 = load %struct.rtmp_common*, %struct.rtmp_common** %4, align 8
  %73 = getelementptr inbounds %struct.rtmp_common, %struct.rtmp_common* %72, i32 0, i32 1
  %74 = load i8*, i8** %73, align 8
  store i8* %74, i8** %2, align 8
  br label %75

75:                                               ; preds = %71, %62, %30
  %76 = load i8*, i8** %2, align 8
  ret i8* %76
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @twitch_ingests_refresh(i32) #1

declare dso_local i32 @twitch_ingests_lock(...) #1

declare dso_local i8* @twitch_ingest(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @twitch_ingests_unlock(...) #1

declare dso_local i8* @younow_get_ingest(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
