; ModuleID = '/home/carl/AnghaBench/netdata/collectors/proc.plugin/extr_ipc.c_ipc_sem_get_status.c'
source_filename = "/home/carl/AnghaBench/netdata/collectors/proc.plugin/extr_ipc.c_ipc_sem_get_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipc_status = type { i32, i32 }
%struct.seminfo = type { i32, i32 }
%union.semun = type { i32* }

@SEM_INFO = common dso_local global i32 0, align 4
@ipc_sem_get_status.error_shown = internal global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"IPC: kernel is not configured for semaphores\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ipc_status*)* @ipc_sem_get_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipc_sem_get_status(%struct.ipc_status* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ipc_status*, align 8
  %4 = alloca %struct.seminfo, align 4
  %5 = alloca %union.semun, align 8
  store %struct.ipc_status* %0, %struct.ipc_status** %3, align 8
  %6 = bitcast %struct.seminfo* %4 to i8*
  %7 = bitcast i8* %6 to i32*
  %8 = bitcast %union.semun* %5 to i32**
  store i32* %7, i32** %8, align 8
  %9 = load i32, i32* @SEM_INFO, align 4
  %10 = getelementptr inbounds %union.semun, %union.semun* %5, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = call i64 @semctl(i32 0, i32 0, i32 %9, i32* %11)
  %13 = icmp slt i64 %12, 0
  %14 = zext i1 %13 to i32
  %15 = call i64 @unlikely(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %31

17:                                               ; preds = %1
  %18 = load i32, i32* @ipc_sem_get_status.error_shown, align 4
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  %22 = call i64 @unlikely(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %17
  %25 = call i32 @error(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* @ipc_sem_get_status.error_shown, align 4
  br label %26

26:                                               ; preds = %24, %17
  %27 = load %struct.ipc_status*, %struct.ipc_status** %3, align 8
  %28 = getelementptr inbounds %struct.ipc_status, %struct.ipc_status* %27, i32 0, i32 1
  store i32 0, i32* %28, align 4
  %29 = load %struct.ipc_status*, %struct.ipc_status** %3, align 8
  %30 = getelementptr inbounds %struct.ipc_status, %struct.ipc_status* %29, i32 0, i32 0
  store i32 0, i32* %30, align 4
  store i32 -1, i32* %2, align 4
  br label %40

31:                                               ; preds = %1
  %32 = getelementptr inbounds %struct.seminfo, %struct.seminfo* %4, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.ipc_status*, %struct.ipc_status** %3, align 8
  %35 = getelementptr inbounds %struct.ipc_status, %struct.ipc_status* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 4
  %36 = getelementptr inbounds %struct.seminfo, %struct.seminfo* %4, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.ipc_status*, %struct.ipc_status** %3, align 8
  %39 = getelementptr inbounds %struct.ipc_status, %struct.ipc_status* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 4
  store i32 0, i32* %2, align 4
  br label %40

40:                                               ; preds = %31, %26
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @semctl(i32, i32, i32, i32*) #1

declare dso_local i32 @error(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
