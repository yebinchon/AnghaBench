; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_client.c_mpv_stream_cb_add_ro.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_client.c_mpv_stream_cb_add_ro.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { %struct.mp_client_api* }
%struct.mp_client_api = type { i32, i32, %struct.mp_custom_protocol* }
%struct.mp_custom_protocol = type { i8*, i32, i32 }

@MPV_ERROR_INVALID_PARAMETER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mpv_stream_cb_add_ro(%struct.TYPE_3__* %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.mp_client_api*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.mp_custom_protocol*, align 8
  %14 = alloca %struct.mp_custom_protocol, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %15 = load i32, i32* %9, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %4
  %18 = load i32, i32* @MPV_ERROR_INVALID_PARAMETER, align 4
  store i32 %18, i32* %5, align 4
  br label %87

19:                                               ; preds = %4
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load %struct.mp_client_api*, %struct.mp_client_api** %21, align 8
  store %struct.mp_client_api* %22, %struct.mp_client_api** %10, align 8
  store i32 0, i32* %11, align 4
  %23 = load %struct.mp_client_api*, %struct.mp_client_api** %10, align 8
  %24 = getelementptr inbounds %struct.mp_client_api, %struct.mp_client_api* %23, i32 0, i32 1
  %25 = call i32 @pthread_mutex_lock(i32* %24)
  store i32 0, i32* %12, align 4
  br label %26

26:                                               ; preds = %48, %19
  %27 = load i32, i32* %12, align 4
  %28 = load %struct.mp_client_api*, %struct.mp_client_api** %10, align 8
  %29 = getelementptr inbounds %struct.mp_client_api, %struct.mp_client_api* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp slt i32 %27, %30
  br i1 %31, label %32, label %51

32:                                               ; preds = %26
  %33 = load %struct.mp_client_api*, %struct.mp_client_api** %10, align 8
  %34 = getelementptr inbounds %struct.mp_client_api, %struct.mp_client_api* %33, i32 0, i32 2
  %35 = load %struct.mp_custom_protocol*, %struct.mp_custom_protocol** %34, align 8
  %36 = load i32, i32* %12, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.mp_custom_protocol, %struct.mp_custom_protocol* %35, i64 %37
  store %struct.mp_custom_protocol* %38, %struct.mp_custom_protocol** %13, align 8
  %39 = load %struct.mp_custom_protocol*, %struct.mp_custom_protocol** %13, align 8
  %40 = getelementptr inbounds %struct.mp_custom_protocol, %struct.mp_custom_protocol* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = load i8*, i8** %7, align 8
  %43 = call i64 @strcmp(i32 %41, i8* %42)
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %32
  %46 = load i32, i32* @MPV_ERROR_INVALID_PARAMETER, align 4
  store i32 %46, i32* %11, align 4
  br label %51

47:                                               ; preds = %32
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %12, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %12, align 4
  br label %26

51:                                               ; preds = %45, %26
  %52 = load i8*, i8** %7, align 8
  %53 = call i64 @stream_has_proto(i8* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %51
  %56 = load i32, i32* @MPV_ERROR_INVALID_PARAMETER, align 4
  store i32 %56, i32* %11, align 4
  br label %57

57:                                               ; preds = %55, %51
  %58 = load i32, i32* %11, align 4
  %59 = icmp sge i32 %58, 0
  br i1 %59, label %60, label %82

60:                                               ; preds = %57
  %61 = getelementptr inbounds %struct.mp_custom_protocol, %struct.mp_custom_protocol* %14, i32 0, i32 0
  %62 = load i8*, i8** %8, align 8
  store i8* %62, i8** %61, align 8
  %63 = getelementptr inbounds %struct.mp_custom_protocol, %struct.mp_custom_protocol* %14, i32 0, i32 1
  %64 = load i32, i32* %9, align 4
  store i32 %64, i32* %63, align 8
  %65 = getelementptr inbounds %struct.mp_custom_protocol, %struct.mp_custom_protocol* %14, i32 0, i32 2
  %66 = load %struct.mp_client_api*, %struct.mp_client_api** %10, align 8
  %67 = load i8*, i8** %7, align 8
  %68 = call i32 @talloc_strdup(%struct.mp_client_api* %66, i8* %67)
  store i32 %68, i32* %65, align 4
  %69 = load %struct.mp_client_api*, %struct.mp_client_api** %10, align 8
  %70 = load %struct.mp_client_api*, %struct.mp_client_api** %10, align 8
  %71 = getelementptr inbounds %struct.mp_client_api, %struct.mp_client_api* %70, i32 0, i32 2
  %72 = load %struct.mp_custom_protocol*, %struct.mp_custom_protocol** %71, align 8
  %73 = load %struct.mp_client_api*, %struct.mp_client_api** %10, align 8
  %74 = getelementptr inbounds %struct.mp_client_api, %struct.mp_client_api* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = bitcast %struct.mp_custom_protocol* %14 to { i8*, i64 }*
  %77 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %76, i32 0, i32 0
  %78 = load i8*, i8** %77, align 8
  %79 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %76, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = call i32 @MP_TARRAY_APPEND(%struct.mp_client_api* %69, %struct.mp_custom_protocol* %72, i32 %75, i8* %78, i64 %80)
  br label %82

82:                                               ; preds = %60, %57
  %83 = load %struct.mp_client_api*, %struct.mp_client_api** %10, align 8
  %84 = getelementptr inbounds %struct.mp_client_api, %struct.mp_client_api* %83, i32 0, i32 1
  %85 = call i32 @pthread_mutex_unlock(i32* %84)
  %86 = load i32, i32* %11, align 4
  store i32 %86, i32* %5, align 4
  br label %87

87:                                               ; preds = %82, %17
  %88 = load i32, i32* %5, align 4
  ret i32 %88
}

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i64 @stream_has_proto(i8*) #1

declare dso_local i32 @talloc_strdup(%struct.mp_client_api*, i8*) #1

declare dso_local i32 @MP_TARRAY_APPEND(%struct.mp_client_api*, %struct.mp_custom_protocol*, i32, i8*, i64) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
