; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/storage/ipc/extr_procarray.c_HaveVirtualXIDsDelayingChkpt.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/storage/ipc/extr_procarray.c_HaveVirtualXIDsDelayingChkpt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32* }
%struct.TYPE_6__ = type { i64 }

@procArray = common dso_local global %struct.TYPE_5__* null, align 8
@ProcArrayLock = common dso_local global i32 0, align 4
@LW_SHARED = common dso_local global i32 0, align 4
@allProcs = common dso_local global i32* null, align 8
@allPgXact = common dso_local global %struct.TYPE_6__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @HaveVirtualXIDsDelayingChkpt(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_6__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** @procArray, align 8
  store %struct.TYPE_5__* %13, %struct.TYPE_5__** %6, align 8
  %14 = load i32, i32* @ProcArrayLock, align 4
  %15 = load i32, i32* @LW_SHARED, align 4
  %16 = call i32 @LWLockAcquire(i32 %14, i32 %15)
  store i32 0, i32* %7, align 4
  br label %17

17:                                               ; preds = %76, %2
  %18 = load i32, i32* %7, align 4
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp slt i32 %18, %21
  br i1 %22, label %23, label %79

23:                                               ; preds = %17
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  %27 = load i32, i32* %7, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %8, align 4
  %31 = load i32*, i32** @allProcs, align 8
  %32 = load i32, i32* %8, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  store i32* %34, i32** %9, align 8
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** @allPgXact, align 8
  %36 = load i32, i32* %8, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i64 %37
  store %struct.TYPE_6__* %38, %struct.TYPE_6__** %10, align 8
  %39 = load i32, i32* %11, align 4
  %40 = load i32*, i32** %9, align 8
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @GET_VXID_FROM_PGPROC(i32 %39, i32 %41)
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %75

47:                                               ; preds = %23
  %48 = load i32, i32* %11, align 4
  %49 = call i64 @VirtualTransactionIdIsValid(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %75

51:                                               ; preds = %47
  store i32 0, i32* %12, align 4
  br label %52

52:                                               ; preds = %67, %51
  %53 = load i32, i32* %12, align 4
  %54 = load i32, i32* %4, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %56, label %70

56:                                               ; preds = %52
  %57 = load i32, i32* %11, align 4
  %58 = load i32*, i32** %3, align 8
  %59 = load i32, i32* %12, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = call i64 @VirtualTransactionIdEquals(i32 %57, i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %56
  store i32 1, i32* %5, align 4
  br label %70

66:                                               ; preds = %56
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* %12, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %12, align 4
  br label %52

70:                                               ; preds = %65, %52
  %71 = load i32, i32* %5, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %70
  br label %79

74:                                               ; preds = %70
  br label %75

75:                                               ; preds = %74, %47, %23
  br label %76

76:                                               ; preds = %75
  %77 = load i32, i32* %7, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %7, align 4
  br label %17

79:                                               ; preds = %73, %17
  %80 = load i32, i32* @ProcArrayLock, align 4
  %81 = call i32 @LWLockRelease(i32 %80)
  %82 = load i32, i32* %5, align 4
  ret i32 %82
}

declare dso_local i32 @LWLockAcquire(i32, i32) #1

declare dso_local i32 @GET_VXID_FROM_PGPROC(i32, i32) #1

declare dso_local i64 @VirtualTransactionIdIsValid(i32) #1

declare dso_local i64 @VirtualTransactionIdEquals(i32, i32) #1

declare dso_local i32 @LWLockRelease(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
