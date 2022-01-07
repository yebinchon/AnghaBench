; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/storage/ipc/extr_procsignal.c_SendProcSignal.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/storage/ipc/extr_procsignal.c_SendProcSignal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32* }

@InvalidBackendId = common dso_local global i32 0, align 4
@ProcSignalSlots = common dso_local global %struct.TYPE_3__* null, align 8
@SIGUSR1 = common dso_local global i32 0, align 4
@NumProcSignalSlots = common dso_local global i32 0, align 4
@ESRCH = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @SendProcSignal(i64 %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = load i32, i32* @InvalidBackendId, align 4
  %12 = icmp ne i32 %10, %11
  br i1 %12, label %13, label %34

13:                                               ; preds = %3
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** @ProcSignalSlots, align 8
  %15 = load i32, i32* %7, align 4
  %16 = sub nsw i32 %15, 1
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i64 %17
  store %struct.TYPE_3__* %18, %struct.TYPE_3__** %8, align 8
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load volatile i64, i64* %20, align 8
  %22 = load i64, i64* %5, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %33

24:                                               ; preds = %13
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 1
  %27 = load volatile i32*, i32** %26, align 8
  %28 = load i64, i64* %6, align 8
  %29 = getelementptr inbounds i32, i32* %27, i64 %28
  store i32 1, i32* %29, align 4
  %30 = load i64, i64* %5, align 8
  %31 = load i32, i32* @SIGUSR1, align 4
  %32 = call i32 @kill(i64 %30, i32 %31)
  store i32 %32, i32* %4, align 4
  br label %66

33:                                               ; preds = %13
  br label %64

34:                                               ; preds = %3
  %35 = load i32, i32* @NumProcSignalSlots, align 4
  %36 = sub nsw i32 %35, 1
  store i32 %36, i32* %9, align 4
  br label %37

37:                                               ; preds = %60, %34
  %38 = load i32, i32* %9, align 4
  %39 = icmp sge i32 %38, 0
  br i1 %39, label %40, label %63

40:                                               ; preds = %37
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** @ProcSignalSlots, align 8
  %42 = load i32, i32* %9, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i64 %43
  store %struct.TYPE_3__* %44, %struct.TYPE_3__** %8, align 8
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load volatile i64, i64* %46, align 8
  %48 = load i64, i64* %5, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %59

50:                                               ; preds = %40
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 1
  %53 = load volatile i32*, i32** %52, align 8
  %54 = load i64, i64* %6, align 8
  %55 = getelementptr inbounds i32, i32* %53, i64 %54
  store i32 1, i32* %55, align 4
  %56 = load i64, i64* %5, align 8
  %57 = load i32, i32* @SIGUSR1, align 4
  %58 = call i32 @kill(i64 %56, i32 %57)
  store i32 %58, i32* %4, align 4
  br label %66

59:                                               ; preds = %40
  br label %60

60:                                               ; preds = %59
  %61 = load i32, i32* %9, align 4
  %62 = add nsw i32 %61, -1
  store i32 %62, i32* %9, align 4
  br label %37

63:                                               ; preds = %37
  br label %64

64:                                               ; preds = %63, %33
  %65 = load i32, i32* @ESRCH, align 4
  store i32 %65, i32* @errno, align 4
  store i32 -1, i32* %4, align 4
  br label %66

66:                                               ; preds = %64, %50, %24
  %67 = load i32, i32* %4, align 4
  ret i32 %67
}

declare dso_local i32 @kill(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
