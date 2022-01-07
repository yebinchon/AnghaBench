; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-service.c_find_service.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-service.c_find_service.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, %struct.obs_service_info* }
%struct.obs_service_info = type { i32 }

@obs = common dso_local global %struct.TYPE_4__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.obs_service_info* @find_service(i8* %0) #0 {
  %2 = alloca %struct.obs_service_info*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i64 0, i64* %4, align 8
  br label %5

5:                                                ; preds = %32, %1
  %6 = load i64, i64* %4, align 8
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** @obs, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ult i64 %6, %10
  br i1 %11, label %12, label %35

12:                                               ; preds = %5
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** @obs, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 1
  %16 = load %struct.obs_service_info*, %struct.obs_service_info** %15, align 8
  %17 = load i64, i64* %4, align 8
  %18 = getelementptr inbounds %struct.obs_service_info, %struct.obs_service_info* %16, i64 %17
  %19 = getelementptr inbounds %struct.obs_service_info, %struct.obs_service_info* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i8*, i8** %3, align 8
  %22 = call i64 @strcmp(i32 %20, i8* %21)
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %12
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** @obs, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 1
  %28 = load %struct.obs_service_info*, %struct.obs_service_info** %27, align 8
  %29 = load i64, i64* %4, align 8
  %30 = getelementptr inbounds %struct.obs_service_info, %struct.obs_service_info* %28, i64 %29
  store %struct.obs_service_info* %30, %struct.obs_service_info** %2, align 8
  br label %36

31:                                               ; preds = %12
  br label %32

32:                                               ; preds = %31
  %33 = load i64, i64* %4, align 8
  %34 = add i64 %33, 1
  store i64 %34, i64* %4, align 8
  br label %5

35:                                               ; preds = %5
  store %struct.obs_service_info* null, %struct.obs_service_info** %2, align 8
  br label %36

36:                                               ; preds = %35, %24
  %37 = load %struct.obs_service_info*, %struct.obs_service_info** %2, align 8
  ret %struct.obs_service_info* %37
}

declare dso_local i64 @strcmp(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
