; ModuleID = '/home/carl/AnghaBench/netdata/collectors/apps.plugin/extr_apps_plugin.c_reallocate_target_fds.c'
source_filename = "/home/carl/AnghaBench/netdata/collectors/apps.plugin/extr_apps_plugin.c_reallocate_target_fds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.target = type { i32, i32* }

@all_files_size = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.target*)* @reallocate_target_fds to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @reallocate_target_fds(%struct.target* %0) #0 {
  %2 = alloca %struct.target*, align 8
  store %struct.target* %0, %struct.target** %2, align 8
  %3 = load %struct.target*, %struct.target** %2, align 8
  %4 = icmp ne %struct.target* %3, null
  %5 = xor i1 %4, true
  %6 = zext i1 %5 to i32
  %7 = call i64 @unlikely(i32 %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %57

10:                                               ; preds = %1
  %11 = load %struct.target*, %struct.target** %2, align 8
  %12 = getelementptr inbounds %struct.target, %struct.target* %11, i32 0, i32 1
  %13 = load i32*, i32** %12, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %15, label %21

15:                                               ; preds = %10
  %16 = load %struct.target*, %struct.target** %2, align 8
  %17 = getelementptr inbounds %struct.target, %struct.target* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @all_files_size, align 4
  %20 = icmp slt i32 %18, %19
  br label %21

21:                                               ; preds = %15, %10
  %22 = phi i1 [ true, %10 ], [ %20, %15 ]
  %23 = zext i1 %22 to i32
  %24 = call i64 @unlikely(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %57

26:                                               ; preds = %21
  %27 = load %struct.target*, %struct.target** %2, align 8
  %28 = getelementptr inbounds %struct.target, %struct.target* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = load i32, i32* @all_files_size, align 4
  %31 = sext i32 %30 to i64
  %32 = mul i64 4, %31
  %33 = trunc i64 %32 to i32
  %34 = call i32* @reallocz(i32* %29, i32 %33)
  %35 = load %struct.target*, %struct.target** %2, align 8
  %36 = getelementptr inbounds %struct.target, %struct.target* %35, i32 0, i32 1
  store i32* %34, i32** %36, align 8
  %37 = load %struct.target*, %struct.target** %2, align 8
  %38 = getelementptr inbounds %struct.target, %struct.target* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = load %struct.target*, %struct.target** %2, align 8
  %41 = getelementptr inbounds %struct.target, %struct.target* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %39, i64 %43
  %45 = load i32, i32* @all_files_size, align 4
  %46 = load %struct.target*, %struct.target** %2, align 8
  %47 = getelementptr inbounds %struct.target, %struct.target* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = sub nsw i32 %45, %48
  %50 = sext i32 %49 to i64
  %51 = mul i64 4, %50
  %52 = trunc i64 %51 to i32
  %53 = call i32 @memset(i32* %44, i32 0, i32 %52)
  %54 = load i32, i32* @all_files_size, align 4
  %55 = load %struct.target*, %struct.target** %2, align 8
  %56 = getelementptr inbounds %struct.target, %struct.target* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 8
  br label %57

57:                                               ; preds = %9, %26, %21
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32* @reallocz(i32*, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
