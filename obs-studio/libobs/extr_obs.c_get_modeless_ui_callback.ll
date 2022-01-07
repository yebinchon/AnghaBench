; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs.c_get_modeless_ui_callback.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs.c_get_modeless_ui_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, %struct.obs_modeless_ui* }
%struct.obs_modeless_ui = type { i32, i32, i32 }

@obs = common dso_local global %struct.TYPE_4__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.obs_modeless_ui* (i8*, i8*, i8*)* @get_modeless_ui_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.obs_modeless_ui* @get_modeless_ui_callback(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.obs_modeless_ui*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.obs_modeless_ui*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 0, i64* %8, align 8
  br label %10

10:                                               ; preds = %47, %3
  %11 = load i64, i64* %8, align 8
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** @obs, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ult i64 %11, %15
  br i1 %16, label %17, label %50

17:                                               ; preds = %10
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** @obs, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 1
  %21 = load %struct.obs_modeless_ui*, %struct.obs_modeless_ui** %20, align 8
  %22 = load i64, i64* %8, align 8
  %23 = getelementptr inbounds %struct.obs_modeless_ui, %struct.obs_modeless_ui* %21, i64 %22
  store %struct.obs_modeless_ui* %23, %struct.obs_modeless_ui** %9, align 8
  %24 = load %struct.obs_modeless_ui*, %struct.obs_modeless_ui** %9, align 8
  %25 = getelementptr inbounds %struct.obs_modeless_ui, %struct.obs_modeless_ui* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = load i8*, i8** %5, align 8
  %28 = call i64 @strcmp(i32 %26, i8* %27)
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %46

30:                                               ; preds = %17
  %31 = load %struct.obs_modeless_ui*, %struct.obs_modeless_ui** %9, align 8
  %32 = getelementptr inbounds %struct.obs_modeless_ui, %struct.obs_modeless_ui* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load i8*, i8** %6, align 8
  %35 = call i64 @strcmp(i32 %33, i8* %34)
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %46

37:                                               ; preds = %30
  %38 = load %struct.obs_modeless_ui*, %struct.obs_modeless_ui** %9, align 8
  %39 = getelementptr inbounds %struct.obs_modeless_ui, %struct.obs_modeless_ui* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i8*, i8** %7, align 8
  %42 = call i64 @strcmp(i32 %40, i8* %41)
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %37
  %45 = load %struct.obs_modeless_ui*, %struct.obs_modeless_ui** %9, align 8
  store %struct.obs_modeless_ui* %45, %struct.obs_modeless_ui** %4, align 8
  br label %51

46:                                               ; preds = %37, %30, %17
  br label %47

47:                                               ; preds = %46
  %48 = load i64, i64* %8, align 8
  %49 = add i64 %48, 1
  store i64 %49, i64* %8, align 8
  br label %10

50:                                               ; preds = %10
  store %struct.obs_modeless_ui* null, %struct.obs_modeless_ui** %4, align 8
  br label %51

51:                                               ; preds = %50, %44
  %52 = load %struct.obs_modeless_ui*, %struct.obs_modeless_ui** %4, align 8
  ret %struct.obs_modeless_ui* %52
}

declare dso_local i64 @strcmp(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
