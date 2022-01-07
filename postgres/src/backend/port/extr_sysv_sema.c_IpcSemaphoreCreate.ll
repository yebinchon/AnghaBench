; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/port/extr_sysv_sema.c_IpcSemaphoreCreate.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/port/extr_sysv_sema.c_IpcSemaphoreCreate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.semun = type { i64 }
%struct.TYPE_3__ = type { i32, i64 }

@nextSemaKey = common dso_local global i32 0, align 4
@PGSemaMagic = common dso_local global i64 0, align 8
@errno = common dso_local global i64 0, align 8
@ESRCH = common dso_local global i64 0, align 8
@IPC_RMID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32)* @IpcSemaphoreCreate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @IpcSemaphoreCreate(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca %union.semun, align 8
  %5 = alloca %struct.TYPE_3__, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  %7 = load i32, i32* @nextSemaKey, align 4
  %8 = add nsw i32 %7, 1
  store i32 %8, i32* @nextSemaKey, align 4
  br label %9

9:                                                ; preds = %71, %1
  %10 = load i32, i32* @nextSemaKey, align 4
  %11 = load i32, i32* %2, align 4
  %12 = add nsw i32 %11, 1
  %13 = call i64 @InternalIpcSemaphoreCreate(i32 %10, i32 %12)
  store i64 %13, i64* %3, align 8
  %14 = load i64, i64* %3, align 8
  %15 = icmp sge i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %9
  br label %74

17:                                               ; preds = %9
  %18 = load i32, i32* @nextSemaKey, align 4
  %19 = load i32, i32* %2, align 4
  %20 = add nsw i32 %19, 1
  %21 = call i64 @semget(i32 %18, i32 %20, i32 0)
  store i64 %21, i64* %3, align 8
  %22 = load i64, i64* %3, align 8
  %23 = icmp slt i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %17
  br label %71

25:                                               ; preds = %17
  %26 = load i64, i64* %3, align 8
  %27 = load i32, i32* %2, align 4
  %28 = call i64 @IpcSemaphoreGetValue(i64 %26, i32 %27)
  %29 = load i64, i64* @PGSemaMagic, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  br label %71

32:                                               ; preds = %25
  %33 = load i64, i64* %3, align 8
  %34 = load i32, i32* %2, align 4
  %35 = call i64 @IpcSemaphoreGetLastPID(i64 %33, i32 %34)
  store i64 %35, i64* %6, align 8
  %36 = load i64, i64* %6, align 8
  %37 = icmp sle i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %32
  br label %71

39:                                               ; preds = %32
  %40 = load i64, i64* %6, align 8
  %41 = call i64 (...) @getpid()
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %53

43:                                               ; preds = %39
  %44 = load i64, i64* %6, align 8
  %45 = call i64 @kill(i64 %44, i32 0)
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %51, label %47

47:                                               ; preds = %43
  %48 = load i64, i64* @errno, align 8
  %49 = load i64, i64* @ESRCH, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %47, %43
  br label %71

52:                                               ; preds = %47
  br label %53

53:                                               ; preds = %52, %39
  %54 = bitcast %union.semun* %4 to i64*
  store i64 0, i64* %54, align 8
  %55 = load i64, i64* %3, align 8
  %56 = load i32, i32* @IPC_RMID, align 4
  %57 = getelementptr inbounds %union.semun, %union.semun* %4, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = call i64 @semctl(i64 %55, i32 0, i32 %56, i64 %58)
  %60 = icmp slt i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %53
  br label %71

62:                                               ; preds = %53
  %63 = load i32, i32* @nextSemaKey, align 4
  %64 = load i32, i32* %2, align 4
  %65 = add nsw i32 %64, 1
  %66 = call i64 @InternalIpcSemaphoreCreate(i32 %63, i32 %65)
  store i64 %66, i64* %3, align 8
  %67 = load i64, i64* %3, align 8
  %68 = icmp sge i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %62
  br label %74

70:                                               ; preds = %62
  br label %71

71:                                               ; preds = %70, %61, %51, %38, %31, %24
  %72 = load i32, i32* @nextSemaKey, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* @nextSemaKey, align 4
  br label %9

74:                                               ; preds = %69, %16
  %75 = load i64, i64* %3, align 8
  %76 = load i32, i32* %2, align 4
  %77 = load i64, i64* @PGSemaMagic, align 8
  %78 = sub nsw i64 %77, 1
  %79 = call i32 @IpcSemaphoreInitialize(i64 %75, i32 %76, i64 %78)
  %80 = load i64, i64* %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 1
  store i64 %80, i64* %81, align 8
  %82 = load i32, i32* %2, align 4
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  store i32 %82, i32* %83, align 8
  %84 = call i32 @PGSemaphoreUnlock(%struct.TYPE_3__* %5)
  %85 = load i64, i64* %3, align 8
  ret i64 %85
}

declare dso_local i64 @InternalIpcSemaphoreCreate(i32, i32) #1

declare dso_local i64 @semget(i32, i32, i32) #1

declare dso_local i64 @IpcSemaphoreGetValue(i64, i32) #1

declare dso_local i64 @IpcSemaphoreGetLastPID(i64, i32) #1

declare dso_local i64 @getpid(...) #1

declare dso_local i64 @kill(i64, i32) #1

declare dso_local i64 @semctl(i64, i32, i32, i64) #1

declare dso_local i32 @IpcSemaphoreInitialize(i64, i32, i64) #1

declare dso_local i32 @PGSemaphoreUnlock(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
