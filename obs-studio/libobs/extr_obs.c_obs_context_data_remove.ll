; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs.c_obs_context_data_remove.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs.c_obs_context_data_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.obs_context_data = type { i32*, %struct.TYPE_2__**, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.TYPE_2__** }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @obs_context_data_remove(%struct.obs_context_data* %0) #0 {
  %2 = alloca %struct.obs_context_data*, align 8
  store %struct.obs_context_data* %0, %struct.obs_context_data** %2, align 8
  %3 = load %struct.obs_context_data*, %struct.obs_context_data** %2, align 8
  %4 = icmp ne %struct.obs_context_data* %3, null
  br i1 %4, label %5, label %46

5:                                                ; preds = %1
  %6 = load %struct.obs_context_data*, %struct.obs_context_data** %2, align 8
  %7 = getelementptr inbounds %struct.obs_context_data, %struct.obs_context_data* %6, i32 0, i32 0
  %8 = load i32*, i32** %7, align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %10, label %46

10:                                               ; preds = %5
  %11 = load %struct.obs_context_data*, %struct.obs_context_data** %2, align 8
  %12 = getelementptr inbounds %struct.obs_context_data, %struct.obs_context_data* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = call i32 @pthread_mutex_lock(i32* %13)
  %15 = load %struct.obs_context_data*, %struct.obs_context_data** %2, align 8
  %16 = getelementptr inbounds %struct.obs_context_data, %struct.obs_context_data* %15, i32 0, i32 1
  %17 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %16, align 8
  %18 = icmp ne %struct.TYPE_2__** %17, null
  br i1 %18, label %19, label %26

19:                                               ; preds = %10
  %20 = load %struct.obs_context_data*, %struct.obs_context_data** %2, align 8
  %21 = getelementptr inbounds %struct.obs_context_data, %struct.obs_context_data* %20, i32 0, i32 2
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = load %struct.obs_context_data*, %struct.obs_context_data** %2, align 8
  %24 = getelementptr inbounds %struct.obs_context_data, %struct.obs_context_data* %23, i32 0, i32 1
  %25 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %24, align 8
  store %struct.TYPE_2__* %22, %struct.TYPE_2__** %25, align 8
  br label %26

26:                                               ; preds = %19, %10
  %27 = load %struct.obs_context_data*, %struct.obs_context_data** %2, align 8
  %28 = getelementptr inbounds %struct.obs_context_data, %struct.obs_context_data* %27, i32 0, i32 2
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = icmp ne %struct.TYPE_2__* %29, null
  br i1 %30, label %31, label %39

31:                                               ; preds = %26
  %32 = load %struct.obs_context_data*, %struct.obs_context_data** %2, align 8
  %33 = getelementptr inbounds %struct.obs_context_data, %struct.obs_context_data* %32, i32 0, i32 1
  %34 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %33, align 8
  %35 = load %struct.obs_context_data*, %struct.obs_context_data** %2, align 8
  %36 = getelementptr inbounds %struct.obs_context_data, %struct.obs_context_data* %35, i32 0, i32 2
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  store %struct.TYPE_2__** %34, %struct.TYPE_2__*** %38, align 8
  br label %39

39:                                               ; preds = %31, %26
  %40 = load %struct.obs_context_data*, %struct.obs_context_data** %2, align 8
  %41 = getelementptr inbounds %struct.obs_context_data, %struct.obs_context_data* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = call i32 @pthread_mutex_unlock(i32* %42)
  %44 = load %struct.obs_context_data*, %struct.obs_context_data** %2, align 8
  %45 = getelementptr inbounds %struct.obs_context_data, %struct.obs_context_data* %44, i32 0, i32 0
  store i32* null, i32** %45, align 8
  br label %46

46:                                               ; preds = %39, %5, %1
  ret void
}

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
