; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-windows.c_log_available_memory.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-windows.c_log_available_memory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [49 x i8] c" (NOTE: 32bit programs cannot use more than 3gb)\00", align 1
@LOG_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"Physical Memory: %luMB Total, %luMB Free%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @log_available_memory to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @log_available_memory() #0 {
  %1 = alloca %struct.TYPE_3__, align 4
  %2 = alloca i8*, align 8
  %3 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 0
  store i32 12, i32* %3, align 4
  %4 = call i32 @GlobalMemoryStatusEx(%struct.TYPE_3__* %1)
  store i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i8** %2, align 8
  %5 = load i32, i32* @LOG_INFO, align 4
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = sdiv i32 %7, 1048576
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %11 = sdiv i32 %10, 1048576
  %12 = load i8*, i8** %2, align 8
  %13 = call i32 @blog(i32 %5, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %8, i32 %11, i8* %12)
  ret void
}

declare dso_local i32 @GlobalMemoryStatusEx(%struct.TYPE_3__*) #1

declare dso_local i32 @blog(i32, i8*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
