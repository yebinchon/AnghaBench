; ModuleID = '/home/carl/AnghaBench/netdata/collectors/perf.plugin/extr_perf_plugin.c_perf_free.c'
source_filename = "/home/carl/AnghaBench/netdata/collectors/perf.plugin/extr_perf_plugin.c_perf_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event = type { i64, i64*, i64*, i64*, i64* }

@perf_events = common dso_local global %struct.perf_event* null, align 8
@EV_ID_END = common dso_local global i64 0, align 8
@number_of_cpus = common dso_local global i32 0, align 4
@NO_FD = common dso_local global i64 0, align 8
@EV_GROUP_NUM = common dso_local global i32 0, align 4
@group_leader_fds = common dso_local global i64** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @perf_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @perf_free() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.perf_event*, align 8
  store %struct.perf_event* null, %struct.perf_event** %3, align 8
  %4 = load %struct.perf_event*, %struct.perf_event** @perf_events, align 8
  %5 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %4, i64 0
  store %struct.perf_event* %5, %struct.perf_event** %3, align 8
  br label %6

6:                                                ; preds = %57, %0
  %7 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %8 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @EV_ID_END, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %12, label %60

12:                                               ; preds = %6
  store i32 0, i32* %1, align 4
  br label %13

13:                                               ; preds = %37, %12
  %14 = load i32, i32* %1, align 4
  %15 = load i32, i32* @number_of_cpus, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %40

17:                                               ; preds = %13
  %18 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %19 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %18, i32 0, i32 1
  %20 = load i64*, i64** %19, align 8
  %21 = load i32, i32* %1, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i64, i64* %20, i64 %22
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @NO_FD, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %36

27:                                               ; preds = %17
  %28 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %29 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %28, i32 0, i32 1
  %30 = load i64*, i64** %29, align 8
  %31 = load i32, i32* %1, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i64, i64* %30, i64 %32
  %34 = load i64, i64* %33, align 8
  %35 = call i32 @close(i64 %34)
  br label %36

36:                                               ; preds = %27, %17
  br label %37

37:                                               ; preds = %36
  %38 = load i32, i32* %1, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %1, align 4
  br label %13

40:                                               ; preds = %13
  %41 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %42 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %41, i32 0, i32 1
  %43 = load i64*, i64** %42, align 8
  %44 = call i32 @free(i64* %43)
  %45 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %46 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %45, i32 0, i32 2
  %47 = load i64*, i64** %46, align 8
  %48 = call i32 @free(i64* %47)
  %49 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %50 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %49, i32 0, i32 3
  %51 = load i64*, i64** %50, align 8
  %52 = call i32 @free(i64* %51)
  %53 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %54 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %53, i32 0, i32 4
  %55 = load i64*, i64** %54, align 8
  %56 = call i32 @free(i64* %55)
  br label %57

57:                                               ; preds = %40
  %58 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %59 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %58, i32 1
  store %struct.perf_event* %59, %struct.perf_event** %3, align 8
  br label %6

60:                                               ; preds = %6
  store i32 0, i32* %2, align 4
  br label %61

61:                                               ; preds = %72, %60
  %62 = load i32, i32* %2, align 4
  %63 = load i32, i32* @EV_GROUP_NUM, align 4
  %64 = icmp slt i32 %62, %63
  br i1 %64, label %65, label %75

65:                                               ; preds = %61
  %66 = load i64**, i64*** @group_leader_fds, align 8
  %67 = load i32, i32* %2, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i64*, i64** %66, i64 %68
  %70 = load i64*, i64** %69, align 8
  %71 = call i32 @free(i64* %70)
  br label %72

72:                                               ; preds = %65
  %73 = load i32, i32* %2, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %2, align 4
  br label %61

75:                                               ; preds = %61
  ret void
}

declare dso_local i32 @close(i64) #1

declare dso_local i32 @free(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
