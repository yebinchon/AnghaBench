; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_client.c_find_client.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_client.c_find_client.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpv_handle = type { i32 }
%struct.mp_client_api = type { i32, %struct.mpv_handle** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mpv_handle* (%struct.mp_client_api*, i8*)* @find_client to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mpv_handle* @find_client(%struct.mp_client_api* %0, i8* %1) #0 {
  %3 = alloca %struct.mpv_handle*, align 8
  %4 = alloca %struct.mp_client_api*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.mp_client_api* %0, %struct.mp_client_api** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 0, i32* %6, align 4
  br label %7

7:                                                ; preds = %35, %2
  %8 = load i32, i32* %6, align 4
  %9 = load %struct.mp_client_api*, %struct.mp_client_api** %4, align 8
  %10 = getelementptr inbounds %struct.mp_client_api, %struct.mp_client_api* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp slt i32 %8, %11
  br i1 %12, label %13, label %38

13:                                               ; preds = %7
  %14 = load %struct.mp_client_api*, %struct.mp_client_api** %4, align 8
  %15 = getelementptr inbounds %struct.mp_client_api, %struct.mp_client_api* %14, i32 0, i32 1
  %16 = load %struct.mpv_handle**, %struct.mpv_handle*** %15, align 8
  %17 = load i32, i32* %6, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.mpv_handle*, %struct.mpv_handle** %16, i64 %18
  %20 = load %struct.mpv_handle*, %struct.mpv_handle** %19, align 8
  %21 = getelementptr inbounds %struct.mpv_handle, %struct.mpv_handle* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i8*, i8** %5, align 8
  %24 = call i64 @strcmp(i32 %22, i8* %23)
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %34

26:                                               ; preds = %13
  %27 = load %struct.mp_client_api*, %struct.mp_client_api** %4, align 8
  %28 = getelementptr inbounds %struct.mp_client_api, %struct.mp_client_api* %27, i32 0, i32 1
  %29 = load %struct.mpv_handle**, %struct.mpv_handle*** %28, align 8
  %30 = load i32, i32* %6, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.mpv_handle*, %struct.mpv_handle** %29, i64 %31
  %33 = load %struct.mpv_handle*, %struct.mpv_handle** %32, align 8
  store %struct.mpv_handle* %33, %struct.mpv_handle** %3, align 8
  br label %39

34:                                               ; preds = %13
  br label %35

35:                                               ; preds = %34
  %36 = load i32, i32* %6, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %6, align 4
  br label %7

38:                                               ; preds = %7
  store %struct.mpv_handle* null, %struct.mpv_handle** %3, align 8
  br label %39

39:                                               ; preds = %38, %26
  %40 = load %struct.mpv_handle*, %struct.mpv_handle** %3, align 8
  ret %struct.mpv_handle* %40
}

declare dso_local i64 @strcmp(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
