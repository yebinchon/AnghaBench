; ModuleID = '/home/carl/AnghaBench/mongoose/examples/api_server/extr_sqlite3.c_sqlite3MemoryAlarm.c'
source_filename = "/home/carl/AnghaBench/mongoose/examples/api_server/extr_sqlite3.c_sqlite3MemoryAlarm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { void (i8*, i32, i32)*, i32, i32, i32, i8* }

@mem0 = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@SQLITE_STATUS_MEMORY_USED = common dso_local global i32 0, align 4
@SQLITE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (void (i8*, i32, i32)*, i8*, i32)* @sqlite3MemoryAlarm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sqlite3MemoryAlarm(void (i8*, i32, i32)* %0, i8* %1, i32 %2) #0 {
  %4 = alloca void (i8*, i32, i32)*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store void (i8*, i32, i32)* %0, void (i8*, i32, i32)** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mem0, i32 0, i32 3), align 8
  %9 = call i32 @sqlite3_mutex_enter(i32 %8)
  %10 = load void (i8*, i32, i32)*, void (i8*, i32, i32)** %4, align 8
  store void (i8*, i32, i32)* %10, void (i8*, i32, i32)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mem0, i32 0, i32 0), align 8
  %11 = load i8*, i8** %5, align 8
  store i8* %11, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mem0, i32 0, i32 4), align 8
  %12 = load i32, i32* %6, align 4
  store i32 %12, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mem0, i32 0, i32 1), align 8
  %13 = load i32, i32* @SQLITE_STATUS_MEMORY_USED, align 4
  %14 = call i32 @sqlite3StatusValue(i32 %13)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %3
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp sle i32 %18, %19
  br label %21

21:                                               ; preds = %17, %3
  %22 = phi i1 [ false, %3 ], [ %20, %17 ]
  %23 = zext i1 %22 to i32
  store i32 %23, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mem0, i32 0, i32 2), align 4
  %24 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mem0, i32 0, i32 3), align 8
  %25 = call i32 @sqlite3_mutex_leave(i32 %24)
  %26 = load i32, i32* @SQLITE_OK, align 4
  ret i32 %26
}

declare dso_local i32 @sqlite3_mutex_enter(i32) #1

declare dso_local i32 @sqlite3StatusValue(i32) #1

declare dso_local i32 @sqlite3_mutex_leave(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
