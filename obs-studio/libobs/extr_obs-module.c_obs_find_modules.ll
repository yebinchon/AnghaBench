; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-module.c_obs_find_modules.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-module.c_obs_find_modules.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, %struct.obs_module_path* }
%struct.obs_module_path = type { i32 }

@obs = common dso_local global %struct.TYPE_4__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @obs_find_modules(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.obs_module_path*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** @obs, align 8
  %8 = icmp ne %struct.TYPE_4__* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  br label %32

10:                                               ; preds = %2
  store i64 0, i64* %5, align 8
  br label %11

11:                                               ; preds = %29, %10
  %12 = load i64, i64* %5, align 8
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** @obs, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ult i64 %12, %16
  br i1 %17, label %18, label %32

18:                                               ; preds = %11
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** @obs, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 1
  %22 = load %struct.obs_module_path*, %struct.obs_module_path** %21, align 8
  %23 = load i64, i64* %5, align 8
  %24 = getelementptr inbounds %struct.obs_module_path, %struct.obs_module_path* %22, i64 %23
  store %struct.obs_module_path* %24, %struct.obs_module_path** %6, align 8
  %25 = load %struct.obs_module_path*, %struct.obs_module_path** %6, align 8
  %26 = load i32, i32* %3, align 4
  %27 = load i8*, i8** %4, align 8
  %28 = call i32 @find_modules_in_path(%struct.obs_module_path* %25, i32 %26, i8* %27)
  br label %29

29:                                               ; preds = %18
  %30 = load i64, i64* %5, align 8
  %31 = add i64 %30, 1
  store i64 %31, i64* %5, align 8
  br label %11

32:                                               ; preds = %9, %11
  ret void
}

declare dso_local i32 @find_modules_in_path(%struct.obs_module_path*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
