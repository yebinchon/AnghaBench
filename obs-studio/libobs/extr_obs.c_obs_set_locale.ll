; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs.c_obs_set_locale.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs.c_obs_set_locale.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.obs_module*, i64 }
%struct.obs_module = type { %struct.obs_module*, i32 (i8*)* }

@obs = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @obs_set_locale(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.obs_module*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load %struct.TYPE_2__*, %struct.TYPE_2__** @obs, align 8
  %5 = icmp ne %struct.TYPE_2__* %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  br label %43

7:                                                ; preds = %1
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** @obs, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %7
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** @obs, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = call i32 @bfree(i64 %15)
  br label %17

17:                                               ; preds = %12, %7
  %18 = load i8*, i8** %2, align 8
  %19 = call i64 @bstrdup(i8* %18)
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** @obs, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  store i64 %19, i64* %21, align 8
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** @obs, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load %struct.obs_module*, %struct.obs_module** %23, align 8
  store %struct.obs_module* %24, %struct.obs_module** %3, align 8
  br label %25

25:                                               ; preds = %39, %17
  %26 = load %struct.obs_module*, %struct.obs_module** %3, align 8
  %27 = icmp ne %struct.obs_module* %26, null
  br i1 %27, label %28, label %43

28:                                               ; preds = %25
  %29 = load %struct.obs_module*, %struct.obs_module** %3, align 8
  %30 = getelementptr inbounds %struct.obs_module, %struct.obs_module* %29, i32 0, i32 1
  %31 = load i32 (i8*)*, i32 (i8*)** %30, align 8
  %32 = icmp ne i32 (i8*)* %31, null
  br i1 %32, label %33, label %39

33:                                               ; preds = %28
  %34 = load %struct.obs_module*, %struct.obs_module** %3, align 8
  %35 = getelementptr inbounds %struct.obs_module, %struct.obs_module* %34, i32 0, i32 1
  %36 = load i32 (i8*)*, i32 (i8*)** %35, align 8
  %37 = load i8*, i8** %2, align 8
  %38 = call i32 %36(i8* %37)
  br label %39

39:                                               ; preds = %33, %28
  %40 = load %struct.obs_module*, %struct.obs_module** %3, align 8
  %41 = getelementptr inbounds %struct.obs_module, %struct.obs_module* %40, i32 0, i32 0
  %42 = load %struct.obs_module*, %struct.obs_module** %41, align 8
  store %struct.obs_module* %42, %struct.obs_module** %3, align 8
  br label %25

43:                                               ; preds = %6, %25
  ret void
}

declare dso_local i32 @bfree(i64) #1

declare dso_local i64 @bstrdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
