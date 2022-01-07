; ModuleID = '/home/carl/AnghaBench/netdata/collectors/apps.plugin/extr_apps_plugin.c_aggregate_fd_on_target.c'
source_filename = "/home/carl/AnghaBench/netdata/collectors/apps.plugin/extr_apps_plugin.c_aggregate_fd_on_target.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.target = type { i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@all_files = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.target*)* @aggregate_fd_on_target to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aggregate_fd_on_target(i32 %0, %struct.target* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.target*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.target* %1, %struct.target** %4, align 8
  %5 = load %struct.target*, %struct.target** %4, align 8
  %6 = icmp ne %struct.target* %5, null
  %7 = xor i1 %6, true
  %8 = zext i1 %7 to i32
  %9 = call i64 @unlikely(i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  br label %91

12:                                               ; preds = %2
  %13 = load %struct.target*, %struct.target** %4, align 8
  %14 = getelementptr inbounds %struct.target, %struct.target* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = load i32, i32* %3, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %15, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = call i64 @unlikely(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %31

22:                                               ; preds = %12
  %23 = load %struct.target*, %struct.target** %4, align 8
  %24 = getelementptr inbounds %struct.target, %struct.target* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* %3, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %28, align 4
  br label %91

31:                                               ; preds = %12
  %32 = load %struct.target*, %struct.target** %4, align 8
  %33 = getelementptr inbounds %struct.target, %struct.target* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = load i32, i32* %3, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %37, align 4
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** @all_files, align 8
  %41 = load i32, i32* %3, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  switch i32 %45, label %91 [
    i32 134, label %46
    i32 131, label %51
    i32 129, label %56
    i32 133, label %61
    i32 136, label %66
    i32 128, label %71
    i32 130, label %76
    i32 135, label %81
    i32 132, label %86
  ]

46:                                               ; preds = %31
  %47 = load %struct.target*, %struct.target** %4, align 8
  %48 = getelementptr inbounds %struct.target, %struct.target* %47, i32 0, i32 9
  %49 = load i32, i32* %48, align 8
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %48, align 8
  br label %91

51:                                               ; preds = %31
  %52 = load %struct.target*, %struct.target** %4, align 8
  %53 = getelementptr inbounds %struct.target, %struct.target* %52, i32 0, i32 8
  %54 = load i32, i32* %53, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %53, align 4
  br label %91

56:                                               ; preds = %31
  %57 = load %struct.target*, %struct.target** %4, align 8
  %58 = getelementptr inbounds %struct.target, %struct.target* %57, i32 0, i32 7
  %59 = load i32, i32* %58, align 8
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %58, align 8
  br label %91

61:                                               ; preds = %31
  %62 = load %struct.target*, %struct.target** %4, align 8
  %63 = getelementptr inbounds %struct.target, %struct.target* %62, i32 0, i32 6
  %64 = load i32, i32* %63, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %63, align 4
  br label %91

66:                                               ; preds = %31
  %67 = load %struct.target*, %struct.target** %4, align 8
  %68 = getelementptr inbounds %struct.target, %struct.target* %67, i32 0, i32 5
  %69 = load i32, i32* %68, align 8
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %68, align 8
  br label %91

71:                                               ; preds = %31
  %72 = load %struct.target*, %struct.target** %4, align 8
  %73 = getelementptr inbounds %struct.target, %struct.target* %72, i32 0, i32 4
  %74 = load i32, i32* %73, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %73, align 4
  br label %91

76:                                               ; preds = %31
  %77 = load %struct.target*, %struct.target** %4, align 8
  %78 = getelementptr inbounds %struct.target, %struct.target* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 8
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %78, align 8
  br label %91

81:                                               ; preds = %31
  %82 = load %struct.target*, %struct.target** %4, align 8
  %83 = getelementptr inbounds %struct.target, %struct.target* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %83, align 4
  br label %91

86:                                               ; preds = %31
  %87 = load %struct.target*, %struct.target** %4, align 8
  %88 = getelementptr inbounds %struct.target, %struct.target* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %88, align 8
  br label %91

91:                                               ; preds = %11, %22, %31, %86, %81, %76, %71, %66, %61, %56, %51, %46
  ret void
}

declare dso_local i64 @unlikely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
