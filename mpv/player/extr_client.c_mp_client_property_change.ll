; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_client.c_mp_client_property_change.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_client.c_mp_client_property_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MPContext = type { %struct.mp_client_api* }
%struct.mp_client_api = type { i32, i32, %struct.mpv_handle** }
%struct.mpv_handle = type { i32, i64, i32, %struct.TYPE_2__** }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mp_client_property_change(%struct.MPContext* %0, i8* %1) #0 {
  %3 = alloca %struct.MPContext*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.mp_client_api*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.mpv_handle*, align 8
  %9 = alloca i32, align 4
  store %struct.MPContext* %0, %struct.MPContext** %3, align 8
  store i8* %1, i8** %4, align 8
  %10 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %11 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %10, i32 0, i32 0
  %12 = load %struct.mp_client_api*, %struct.mp_client_api** %11, align 8
  store %struct.mp_client_api* %12, %struct.mp_client_api** %5, align 8
  %13 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %14 = load i8*, i8** %4, align 8
  %15 = call i32 @mp_get_property_id(%struct.MPContext* %13, i8* %14)
  store i32 %15, i32* %6, align 4
  %16 = load %struct.mp_client_api*, %struct.mp_client_api** %5, align 8
  %17 = getelementptr inbounds %struct.mp_client_api, %struct.mp_client_api* %16, i32 0, i32 1
  %18 = call i32 @pthread_mutex_lock(i32* %17)
  store i32 0, i32* %7, align 4
  br label %19

19:                                               ; preds = %78, %2
  %20 = load i32, i32* %7, align 4
  %21 = load %struct.mp_client_api*, %struct.mp_client_api** %5, align 8
  %22 = getelementptr inbounds %struct.mp_client_api, %struct.mp_client_api* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp slt i32 %20, %23
  br i1 %24, label %25, label %81

25:                                               ; preds = %19
  %26 = load %struct.mp_client_api*, %struct.mp_client_api** %5, align 8
  %27 = getelementptr inbounds %struct.mp_client_api, %struct.mp_client_api* %26, i32 0, i32 2
  %28 = load %struct.mpv_handle**, %struct.mpv_handle*** %27, align 8
  %29 = load i32, i32* %7, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.mpv_handle*, %struct.mpv_handle** %28, i64 %30
  %32 = load %struct.mpv_handle*, %struct.mpv_handle** %31, align 8
  store %struct.mpv_handle* %32, %struct.mpv_handle** %8, align 8
  %33 = load %struct.mpv_handle*, %struct.mpv_handle** %8, align 8
  %34 = getelementptr inbounds %struct.mpv_handle, %struct.mpv_handle* %33, i32 0, i32 2
  %35 = call i32 @pthread_mutex_lock(i32* %34)
  store i32 0, i32* %9, align 4
  br label %36

36:                                               ; preds = %59, %25
  %37 = load i32, i32* %9, align 4
  %38 = load %struct.mpv_handle*, %struct.mpv_handle** %8, align 8
  %39 = getelementptr inbounds %struct.mpv_handle, %struct.mpv_handle* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp slt i32 %37, %40
  br i1 %41, label %42, label %62

42:                                               ; preds = %36
  %43 = load %struct.mpv_handle*, %struct.mpv_handle** %8, align 8
  %44 = getelementptr inbounds %struct.mpv_handle, %struct.mpv_handle* %43, i32 0, i32 3
  %45 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %44, align 8
  %46 = load i32, i32* %9, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %45, i64 %47
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %6, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %58

54:                                               ; preds = %42
  %55 = load %struct.mpv_handle*, %struct.mpv_handle** %8, align 8
  %56 = load i32, i32* %9, align 4
  %57 = call i32 @mark_property_changed(%struct.mpv_handle* %55, i32 %56)
  br label %58

58:                                               ; preds = %54, %42
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* %9, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %9, align 4
  br label %36

62:                                               ; preds = %36
  %63 = load %struct.mpv_handle*, %struct.mpv_handle** %8, align 8
  %64 = getelementptr inbounds %struct.mpv_handle, %struct.mpv_handle* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.mpv_handle*, %struct.mpv_handle** %8, align 8
  %67 = getelementptr inbounds %struct.mpv_handle, %struct.mpv_handle* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = sext i32 %68 to i64
  %70 = icmp slt i64 %65, %69
  br i1 %70, label %71, label %74

71:                                               ; preds = %62
  %72 = load %struct.mpv_handle*, %struct.mpv_handle** %8, align 8
  %73 = call i32 @wakeup_client(%struct.mpv_handle* %72)
  br label %74

74:                                               ; preds = %71, %62
  %75 = load %struct.mpv_handle*, %struct.mpv_handle** %8, align 8
  %76 = getelementptr inbounds %struct.mpv_handle, %struct.mpv_handle* %75, i32 0, i32 2
  %77 = call i32 @pthread_mutex_unlock(i32* %76)
  br label %78

78:                                               ; preds = %74
  %79 = load i32, i32* %7, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %7, align 4
  br label %19

81:                                               ; preds = %19
  %82 = load %struct.mp_client_api*, %struct.mp_client_api** %5, align 8
  %83 = getelementptr inbounds %struct.mp_client_api, %struct.mp_client_api* %82, i32 0, i32 1
  %84 = call i32 @pthread_mutex_unlock(i32* %83)
  ret void
}

declare dso_local i32 @mp_get_property_id(%struct.MPContext*, i8*) #1

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @mark_property_changed(%struct.mpv_handle*, i32) #1

declare dso_local i32 @wakeup_client(%struct.mpv_handle*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
