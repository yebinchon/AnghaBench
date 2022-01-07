; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-module.c_free_module.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-module.c_free_module.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.obs_module = type { %struct.obs_module*, %struct.obs_module*, %struct.obs_module*, i32 (...)*, i64, i32 (...)*, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @free_module(%struct.obs_module* %0) #0 {
  %2 = alloca %struct.obs_module*, align 8
  store %struct.obs_module* %0, %struct.obs_module** %2, align 8
  %3 = load %struct.obs_module*, %struct.obs_module** %2, align 8
  %4 = icmp ne %struct.obs_module* %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  br label %52

6:                                                ; preds = %1
  %7 = load %struct.obs_module*, %struct.obs_module** %2, align 8
  %8 = getelementptr inbounds %struct.obs_module, %struct.obs_module* %7, i32 0, i32 6
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %37

11:                                               ; preds = %6
  %12 = load %struct.obs_module*, %struct.obs_module** %2, align 8
  %13 = getelementptr inbounds %struct.obs_module, %struct.obs_module* %12, i32 0, i32 5
  %14 = load i32 (...)*, i32 (...)** %13, align 8
  %15 = icmp ne i32 (...)* %14, null
  br i1 %15, label %16, label %21

16:                                               ; preds = %11
  %17 = load %struct.obs_module*, %struct.obs_module** %2, align 8
  %18 = getelementptr inbounds %struct.obs_module, %struct.obs_module* %17, i32 0, i32 5
  %19 = load i32 (...)*, i32 (...)** %18, align 8
  %20 = call i32 (...) %19()
  br label %21

21:                                               ; preds = %16, %11
  %22 = load %struct.obs_module*, %struct.obs_module** %2, align 8
  %23 = getelementptr inbounds %struct.obs_module, %struct.obs_module* %22, i32 0, i32 4
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %36

26:                                               ; preds = %21
  %27 = load %struct.obs_module*, %struct.obs_module** %2, align 8
  %28 = getelementptr inbounds %struct.obs_module, %struct.obs_module* %27, i32 0, i32 3
  %29 = load i32 (...)*, i32 (...)** %28, align 8
  %30 = icmp ne i32 (...)* %29, null
  br i1 %30, label %31, label %36

31:                                               ; preds = %26
  %32 = load %struct.obs_module*, %struct.obs_module** %2, align 8
  %33 = getelementptr inbounds %struct.obs_module, %struct.obs_module* %32, i32 0, i32 3
  %34 = load i32 (...)*, i32 (...)** %33, align 8
  %35 = call i32 (...) %34()
  br label %36

36:                                               ; preds = %31, %26, %21
  br label %37

37:                                               ; preds = %36, %6
  %38 = load %struct.obs_module*, %struct.obs_module** %2, align 8
  %39 = getelementptr inbounds %struct.obs_module, %struct.obs_module* %38, i32 0, i32 2
  %40 = load %struct.obs_module*, %struct.obs_module** %39, align 8
  %41 = call i32 @bfree(%struct.obs_module* %40)
  %42 = load %struct.obs_module*, %struct.obs_module** %2, align 8
  %43 = getelementptr inbounds %struct.obs_module, %struct.obs_module* %42, i32 0, i32 1
  %44 = load %struct.obs_module*, %struct.obs_module** %43, align 8
  %45 = call i32 @bfree(%struct.obs_module* %44)
  %46 = load %struct.obs_module*, %struct.obs_module** %2, align 8
  %47 = getelementptr inbounds %struct.obs_module, %struct.obs_module* %46, i32 0, i32 0
  %48 = load %struct.obs_module*, %struct.obs_module** %47, align 8
  %49 = call i32 @bfree(%struct.obs_module* %48)
  %50 = load %struct.obs_module*, %struct.obs_module** %2, align 8
  %51 = call i32 @bfree(%struct.obs_module* %50)
  br label %52

52:                                               ; preds = %37, %5
  ret void
}

declare dso_local i32 @bfree(%struct.obs_module*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
