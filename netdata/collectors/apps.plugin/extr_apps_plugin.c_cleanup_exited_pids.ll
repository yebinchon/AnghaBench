; ModuleID = '/home/carl/AnghaBench/netdata/collectors/apps.plugin/extr_apps_plugin.c_cleanup_exited_pids.c'
source_filename = "/home/carl/AnghaBench/netdata/collectors/apps.plugin/extr_apps_plugin.c_cleanup_exited_pids.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pid_stat = type { i32, i64, i64, %struct.pid_stat*, i32, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i64 }

@root_of_pids = common dso_local global %struct.pid_stat* null, align 8
@debug_enabled = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [69 x i8] c" > CLEANUP cannot keep exited process %d (%s) anymore - removing it.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @cleanup_exited_pids to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cleanup_exited_pids() #0 {
  %1 = alloca i64, align 8
  %2 = alloca %struct.pid_stat*, align 8
  %3 = alloca i32, align 4
  store %struct.pid_stat* null, %struct.pid_stat** %2, align 8
  %4 = load %struct.pid_stat*, %struct.pid_stat** @root_of_pids, align 8
  store %struct.pid_stat* %4, %struct.pid_stat** %2, align 8
  br label %5

5:                                                ; preds = %112, %0
  %6 = load %struct.pid_stat*, %struct.pid_stat** %2, align 8
  %7 = icmp ne %struct.pid_stat* %6, null
  br i1 %7, label %8, label %113

8:                                                ; preds = %5
  %9 = load %struct.pid_stat*, %struct.pid_stat** %2, align 8
  %10 = getelementptr inbounds %struct.pid_stat, %struct.pid_stat* %9, i32 0, i32 7
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %95, label %13

13:                                               ; preds = %8
  %14 = load %struct.pid_stat*, %struct.pid_stat** %2, align 8
  %15 = getelementptr inbounds %struct.pid_stat, %struct.pid_stat* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %13
  %19 = load %struct.pid_stat*, %struct.pid_stat** %2, align 8
  %20 = getelementptr inbounds %struct.pid_stat, %struct.pid_stat* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp sgt i64 %21, 0
  br i1 %22, label %23, label %95

23:                                               ; preds = %18, %13
  %24 = load i64, i64* @debug_enabled, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %38

26:                                               ; preds = %23
  %27 = load %struct.pid_stat*, %struct.pid_stat** %2, align 8
  %28 = getelementptr inbounds %struct.pid_stat, %struct.pid_stat* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %36, label %31

31:                                               ; preds = %26
  %32 = load %struct.pid_stat*, %struct.pid_stat** %2, align 8
  %33 = getelementptr inbounds %struct.pid_stat, %struct.pid_stat* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br label %36

36:                                               ; preds = %31, %26
  %37 = phi i1 [ true, %26 ], [ %35, %31 ]
  br label %38

38:                                               ; preds = %36, %23
  %39 = phi i1 [ false, %23 ], [ %37, %36 ]
  %40 = zext i1 %39 to i32
  %41 = call i64 @unlikely(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %51

43:                                               ; preds = %38
  %44 = load %struct.pid_stat*, %struct.pid_stat** %2, align 8
  %45 = getelementptr inbounds %struct.pid_stat, %struct.pid_stat* %44, i32 0, i32 4
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.pid_stat*, %struct.pid_stat** %2, align 8
  %48 = getelementptr inbounds %struct.pid_stat, %struct.pid_stat* %47, i32 0, i32 6
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @debug_log(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str, i64 0, i64 0), i32 %46, i32 %49)
  br label %51

51:                                               ; preds = %43, %38
  store i64 0, i64* %1, align 8
  br label %52

52:                                               ; preds = %83, %51
  %53 = load i64, i64* %1, align 8
  %54 = load %struct.pid_stat*, %struct.pid_stat** %2, align 8
  %55 = getelementptr inbounds %struct.pid_stat, %struct.pid_stat* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = icmp ult i64 %53, %56
  br i1 %57, label %58, label %86

58:                                               ; preds = %52
  %59 = load %struct.pid_stat*, %struct.pid_stat** %2, align 8
  %60 = getelementptr inbounds %struct.pid_stat, %struct.pid_stat* %59, i32 0, i32 5
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = load i64, i64* %1, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp sgt i64 %65, 0
  br i1 %66, label %67, label %82

67:                                               ; preds = %58
  %68 = load %struct.pid_stat*, %struct.pid_stat** %2, align 8
  %69 = getelementptr inbounds %struct.pid_stat, %struct.pid_stat* %68, i32 0, i32 5
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %69, align 8
  %71 = load i64, i64* %1, align 8
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = call i32 @file_descriptor_not_used(i64 %74)
  %76 = load %struct.pid_stat*, %struct.pid_stat** %2, align 8
  %77 = getelementptr inbounds %struct.pid_stat, %struct.pid_stat* %76, i32 0, i32 5
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** %77, align 8
  %79 = load i64, i64* %1, align 8
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i64 %79
  %81 = call i32 @clear_pid_fd(%struct.TYPE_2__* %80)
  br label %82

82:                                               ; preds = %67, %58
  br label %83

83:                                               ; preds = %82
  %84 = load i64, i64* %1, align 8
  %85 = add i64 %84, 1
  store i64 %85, i64* %1, align 8
  br label %52

86:                                               ; preds = %52
  %87 = load %struct.pid_stat*, %struct.pid_stat** %2, align 8
  %88 = getelementptr inbounds %struct.pid_stat, %struct.pid_stat* %87, i32 0, i32 4
  %89 = load i32, i32* %88, align 8
  store i32 %89, i32* %3, align 4
  %90 = load %struct.pid_stat*, %struct.pid_stat** %2, align 8
  %91 = getelementptr inbounds %struct.pid_stat, %struct.pid_stat* %90, i32 0, i32 3
  %92 = load %struct.pid_stat*, %struct.pid_stat** %91, align 8
  store %struct.pid_stat* %92, %struct.pid_stat** %2, align 8
  %93 = load i32, i32* %3, align 4
  %94 = call i32 @del_pid_entry(i32 %93)
  br label %112

95:                                               ; preds = %18, %8
  %96 = load %struct.pid_stat*, %struct.pid_stat** %2, align 8
  %97 = getelementptr inbounds %struct.pid_stat, %struct.pid_stat* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = call i64 @unlikely(i32 %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %106

101:                                              ; preds = %95
  %102 = load %struct.pid_stat*, %struct.pid_stat** %2, align 8
  %103 = getelementptr inbounds %struct.pid_stat, %struct.pid_stat* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = add nsw i64 %104, 1
  store i64 %105, i64* %103, align 8
  br label %106

106:                                              ; preds = %101, %95
  %107 = load %struct.pid_stat*, %struct.pid_stat** %2, align 8
  %108 = getelementptr inbounds %struct.pid_stat, %struct.pid_stat* %107, i32 0, i32 0
  store i32 0, i32* %108, align 8
  %109 = load %struct.pid_stat*, %struct.pid_stat** %2, align 8
  %110 = getelementptr inbounds %struct.pid_stat, %struct.pid_stat* %109, i32 0, i32 3
  %111 = load %struct.pid_stat*, %struct.pid_stat** %110, align 8
  store %struct.pid_stat* %111, %struct.pid_stat** %2, align 8
  br label %112

112:                                              ; preds = %106, %86
  br label %5

113:                                              ; preds = %5
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @debug_log(i8*, i32, i32) #1

declare dso_local i32 @file_descriptor_not_used(i64) #1

declare dso_local i32 @clear_pid_fd(%struct.TYPE_2__*) #1

declare dso_local i32 @del_pid_entry(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
