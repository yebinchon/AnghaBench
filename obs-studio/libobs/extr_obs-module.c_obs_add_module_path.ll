; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-module.c_obs_add_module_path.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-module.c_obs_add_module_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.obs_module_path = type { i8*, i8* }

@obs = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @obs_add_module_path(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.obs_module_path, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** @obs, align 8
  %7 = icmp ne %struct.TYPE_2__* %6, null
  br i1 %7, label %8, label %14

8:                                                ; preds = %2
  %9 = load i8*, i8** %3, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %8
  %12 = load i8*, i8** %4, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %11, %8, %2
  br label %26

15:                                               ; preds = %11
  %16 = load i8*, i8** %3, align 8
  %17 = call i8* @bstrdup(i8* %16)
  %18 = getelementptr inbounds %struct.obs_module_path, %struct.obs_module_path* %5, i32 0, i32 1
  store i8* %17, i8** %18, align 8
  %19 = load i8*, i8** %4, align 8
  %20 = call i8* @bstrdup(i8* %19)
  %21 = getelementptr inbounds %struct.obs_module_path, %struct.obs_module_path* %5, i32 0, i32 0
  store i8* %20, i8** %21, align 8
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** @obs, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @da_push_back(i32 %24, %struct.obs_module_path* %5)
  br label %26

26:                                               ; preds = %15, %14
  ret void
}

declare dso_local i8* @bstrdup(i8*) #1

declare dso_local i32 @da_push_back(i32, %struct.obs_module_path*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
