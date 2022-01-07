; ModuleID = '/home/carl/AnghaBench/netdata/collectors/apps.plugin/extr_apps_plugin.c_del_pid_entry.c'
source_filename = "/home/carl/AnghaBench/netdata/collectors/apps.plugin/extr_apps_plugin.c_del_pid_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pid_stat = type { i64, %struct.pid_stat*, %struct.pid_stat*, %struct.pid_stat*, i32, %struct.pid_stat*, %struct.pid_stat*, %struct.pid_stat*, %struct.pid_stat*, %struct.pid_stat*, %struct.pid_stat*, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { %struct.pid_stat* }

@all_pids = common dso_local global %struct.pid_stat** null, align 8
@.str = private unnamed_addr constant [48 x i8] c"attempted to free pid %d that is not allocated.\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"process %d %s exited, deleting it.\00", align 1
@root_of_pids = common dso_local global %struct.pid_stat* null, align 8
@all_pids_count = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @del_pid_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @del_pid_entry(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.pid_stat*, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %5 = load %struct.pid_stat**, %struct.pid_stat*** @all_pids, align 8
  %6 = load i64, i64* %2, align 8
  %7 = getelementptr inbounds %struct.pid_stat*, %struct.pid_stat** %5, i64 %6
  %8 = load %struct.pid_stat*, %struct.pid_stat** %7, align 8
  store %struct.pid_stat* %8, %struct.pid_stat** %3, align 8
  %9 = load %struct.pid_stat*, %struct.pid_stat** %3, align 8
  %10 = icmp ne %struct.pid_stat* %9, null
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i32
  %13 = call i64 @unlikely(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load i64, i64* %2, align 8
  %17 = call i32 @error(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i64 %16)
  br label %126

18:                                               ; preds = %1
  %19 = load i64, i64* %2, align 8
  %20 = load %struct.pid_stat*, %struct.pid_stat** %3, align 8
  %21 = getelementptr inbounds %struct.pid_stat, %struct.pid_stat* %20, i32 0, i32 12
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @debug_log(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i64 %19, i32 %22)
  %24 = load %struct.pid_stat*, %struct.pid_stat** @root_of_pids, align 8
  %25 = load %struct.pid_stat*, %struct.pid_stat** %3, align 8
  %26 = icmp eq %struct.pid_stat* %24, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %18
  %28 = load %struct.pid_stat*, %struct.pid_stat** %3, align 8
  %29 = getelementptr inbounds %struct.pid_stat, %struct.pid_stat* %28, i32 0, i32 10
  %30 = load %struct.pid_stat*, %struct.pid_stat** %29, align 8
  store %struct.pid_stat* %30, %struct.pid_stat** @root_of_pids, align 8
  br label %31

31:                                               ; preds = %27, %18
  %32 = load %struct.pid_stat*, %struct.pid_stat** %3, align 8
  %33 = getelementptr inbounds %struct.pid_stat, %struct.pid_stat* %32, i32 0, i32 10
  %34 = load %struct.pid_stat*, %struct.pid_stat** %33, align 8
  %35 = icmp ne %struct.pid_stat* %34, null
  br i1 %35, label %36, label %44

36:                                               ; preds = %31
  %37 = load %struct.pid_stat*, %struct.pid_stat** %3, align 8
  %38 = getelementptr inbounds %struct.pid_stat, %struct.pid_stat* %37, i32 0, i32 11
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = load %struct.pid_stat*, %struct.pid_stat** %3, align 8
  %41 = getelementptr inbounds %struct.pid_stat, %struct.pid_stat* %40, i32 0, i32 10
  %42 = load %struct.pid_stat*, %struct.pid_stat** %41, align 8
  %43 = getelementptr inbounds %struct.pid_stat, %struct.pid_stat* %42, i32 0, i32 11
  store %struct.TYPE_2__* %39, %struct.TYPE_2__** %43, align 8
  br label %44

44:                                               ; preds = %36, %31
  %45 = load %struct.pid_stat*, %struct.pid_stat** %3, align 8
  %46 = getelementptr inbounds %struct.pid_stat, %struct.pid_stat* %45, i32 0, i32 11
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = icmp ne %struct.TYPE_2__* %47, null
  br i1 %48, label %49, label %57

49:                                               ; preds = %44
  %50 = load %struct.pid_stat*, %struct.pid_stat** %3, align 8
  %51 = getelementptr inbounds %struct.pid_stat, %struct.pid_stat* %50, i32 0, i32 10
  %52 = load %struct.pid_stat*, %struct.pid_stat** %51, align 8
  %53 = load %struct.pid_stat*, %struct.pid_stat** %3, align 8
  %54 = getelementptr inbounds %struct.pid_stat, %struct.pid_stat* %53, i32 0, i32 11
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  store %struct.pid_stat* %52, %struct.pid_stat** %56, align 8
  br label %57

57:                                               ; preds = %49, %44
  store i64 0, i64* %4, align 8
  br label %58

58:                                               ; preds = %83, %57
  %59 = load i64, i64* %4, align 8
  %60 = load %struct.pid_stat*, %struct.pid_stat** %3, align 8
  %61 = getelementptr inbounds %struct.pid_stat, %struct.pid_stat* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp ult i64 %59, %62
  br i1 %63, label %64, label %86

64:                                               ; preds = %58
  %65 = load %struct.pid_stat*, %struct.pid_stat** %3, align 8
  %66 = getelementptr inbounds %struct.pid_stat, %struct.pid_stat* %65, i32 0, i32 8
  %67 = load %struct.pid_stat*, %struct.pid_stat** %66, align 8
  %68 = load i64, i64* %4, align 8
  %69 = getelementptr inbounds %struct.pid_stat, %struct.pid_stat* %67, i64 %68
  %70 = getelementptr inbounds %struct.pid_stat, %struct.pid_stat* %69, i32 0, i32 9
  %71 = load %struct.pid_stat*, %struct.pid_stat** %70, align 8
  %72 = icmp ne %struct.pid_stat* %71, null
  br i1 %72, label %73, label %82

73:                                               ; preds = %64
  %74 = load %struct.pid_stat*, %struct.pid_stat** %3, align 8
  %75 = getelementptr inbounds %struct.pid_stat, %struct.pid_stat* %74, i32 0, i32 8
  %76 = load %struct.pid_stat*, %struct.pid_stat** %75, align 8
  %77 = load i64, i64* %4, align 8
  %78 = getelementptr inbounds %struct.pid_stat, %struct.pid_stat* %76, i64 %77
  %79 = getelementptr inbounds %struct.pid_stat, %struct.pid_stat* %78, i32 0, i32 9
  %80 = load %struct.pid_stat*, %struct.pid_stat** %79, align 8
  %81 = call i32 @freez(%struct.pid_stat* %80)
  br label %82

82:                                               ; preds = %73, %64
  br label %83

83:                                               ; preds = %82
  %84 = load i64, i64* %4, align 8
  %85 = add i64 %84, 1
  store i64 %85, i64* %4, align 8
  br label %58

86:                                               ; preds = %58
  %87 = load %struct.pid_stat*, %struct.pid_stat** %3, align 8
  %88 = getelementptr inbounds %struct.pid_stat, %struct.pid_stat* %87, i32 0, i32 8
  %89 = load %struct.pid_stat*, %struct.pid_stat** %88, align 8
  %90 = call i32 @freez(%struct.pid_stat* %89)
  %91 = load %struct.pid_stat*, %struct.pid_stat** %3, align 8
  %92 = getelementptr inbounds %struct.pid_stat, %struct.pid_stat* %91, i32 0, i32 7
  %93 = load %struct.pid_stat*, %struct.pid_stat** %92, align 8
  %94 = call i32 @freez(%struct.pid_stat* %93)
  %95 = load %struct.pid_stat*, %struct.pid_stat** %3, align 8
  %96 = getelementptr inbounds %struct.pid_stat, %struct.pid_stat* %95, i32 0, i32 6
  %97 = load %struct.pid_stat*, %struct.pid_stat** %96, align 8
  %98 = call i32 @freez(%struct.pid_stat* %97)
  %99 = load %struct.pid_stat*, %struct.pid_stat** %3, align 8
  %100 = getelementptr inbounds %struct.pid_stat, %struct.pid_stat* %99, i32 0, i32 5
  %101 = load %struct.pid_stat*, %struct.pid_stat** %100, align 8
  %102 = call i32 @freez(%struct.pid_stat* %101)
  %103 = load %struct.pid_stat*, %struct.pid_stat** %3, align 8
  %104 = getelementptr inbounds %struct.pid_stat, %struct.pid_stat* %103, i32 0, i32 4
  %105 = load i32, i32* %104, align 8
  %106 = call i32 @arl_free(i32 %105)
  %107 = load %struct.pid_stat*, %struct.pid_stat** %3, align 8
  %108 = getelementptr inbounds %struct.pid_stat, %struct.pid_stat* %107, i32 0, i32 3
  %109 = load %struct.pid_stat*, %struct.pid_stat** %108, align 8
  %110 = call i32 @freez(%struct.pid_stat* %109)
  %111 = load %struct.pid_stat*, %struct.pid_stat** %3, align 8
  %112 = getelementptr inbounds %struct.pid_stat, %struct.pid_stat* %111, i32 0, i32 2
  %113 = load %struct.pid_stat*, %struct.pid_stat** %112, align 8
  %114 = call i32 @freez(%struct.pid_stat* %113)
  %115 = load %struct.pid_stat*, %struct.pid_stat** %3, align 8
  %116 = getelementptr inbounds %struct.pid_stat, %struct.pid_stat* %115, i32 0, i32 1
  %117 = load %struct.pid_stat*, %struct.pid_stat** %116, align 8
  %118 = call i32 @freez(%struct.pid_stat* %117)
  %119 = load %struct.pid_stat*, %struct.pid_stat** %3, align 8
  %120 = call i32 @freez(%struct.pid_stat* %119)
  %121 = load %struct.pid_stat**, %struct.pid_stat*** @all_pids, align 8
  %122 = load i64, i64* %2, align 8
  %123 = getelementptr inbounds %struct.pid_stat*, %struct.pid_stat** %121, i64 %122
  store %struct.pid_stat* null, %struct.pid_stat** %123, align 8
  %124 = load i32, i32* @all_pids_count, align 4
  %125 = add nsw i32 %124, -1
  store i32 %125, i32* @all_pids_count, align 4
  br label %126

126:                                              ; preds = %86, %15
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @error(i8*, i64) #1

declare dso_local i32 @debug_log(i8*, i64, i32) #1

declare dso_local i32 @freez(%struct.pid_stat*) #1

declare dso_local i32 @arl_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
