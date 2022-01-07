; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/storage/lmgr/extr_lock.c_FastPathTransferRelationLocks.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/storage/lmgr/extr_lock.c_FastPathTransferRelationLocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i64, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i64, i64*, i32 }
%struct.TYPE_17__ = type { i64, i64 }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32 }

@ProcGlobal = common dso_local global %struct.TYPE_18__* null, align 8
@LW_EXCLUSIVE = common dso_local global i32 0, align 4
@FP_LOCK_SLOTS_PER_BACKEND = common dso_local global i64 0, align 8
@FAST_PATH_LOCKNUMBER_OFFSET = common dso_local global i64 0, align 8
@FAST_PATH_BITS_PER_SLOT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_17__*, i64)* @FastPathTransferRelationLocks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @FastPathTransferRelationLocks(i32 %0, %struct.TYPE_17__* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_16__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_15__*, align 8
  store i32 %0, i32* %5, align 4
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %6, align 8
  store i64 %2, i64* %7, align 8
  %15 = load i64, i64* %7, align 8
  %16 = call i32* @LockHashPartitionLock(i64 %15)
  store i32* %16, i32** %8, align 8
  %17 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %9, align 8
  store i64 0, i64* %10, align 8
  br label %20

20:                                               ; preds = %125, %3
  %21 = load i64, i64* %10, align 8
  %22 = load %struct.TYPE_18__*, %struct.TYPE_18__** @ProcGlobal, align 8
  %23 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ult i64 %21, %24
  br i1 %25, label %26, label %128

26:                                               ; preds = %20
  %27 = load %struct.TYPE_18__*, %struct.TYPE_18__** @ProcGlobal, align 8
  %28 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %27, i32 0, i32 1
  %29 = load %struct.TYPE_16__*, %struct.TYPE_16__** %28, align 8
  %30 = load i64, i64* %10, align 8
  %31 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %29, i64 %30
  store %struct.TYPE_16__* %31, %struct.TYPE_16__** %11, align 8
  %32 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %33 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %32, i32 0, i32 2
  %34 = load i32, i32* @LW_EXCLUSIVE, align 4
  %35 = call i32 @LWLockAcquire(i32* %33, i32 %34)
  %36 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %37 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %38, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %26
  %44 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %45 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %44, i32 0, i32 2
  %46 = call i32 @LWLockRelease(i32* %45)
  br label %125

47:                                               ; preds = %26
  store i64 0, i64* %12, align 8
  br label %48

48:                                               ; preds = %118, %47
  %49 = load i64, i64* %12, align 8
  %50 = load i64, i64* @FP_LOCK_SLOTS_PER_BACKEND, align 8
  %51 = icmp ult i64 %49, %50
  br i1 %51, label %52, label %121

52:                                               ; preds = %48
  %53 = load i64, i64* %9, align 8
  %54 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %55 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %54, i32 0, i32 1
  %56 = load i64*, i64** %55, align 8
  %57 = load i64, i64* %12, align 8
  %58 = getelementptr inbounds i64, i64* %56, i64 %57
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %53, %59
  br i1 %60, label %66, label %61

61:                                               ; preds = %52
  %62 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %63 = load i64, i64* %12, align 8
  %64 = call i64 @FAST_PATH_GET_BITS(%struct.TYPE_16__* %62, i64 %63)
  %65 = icmp eq i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %61, %52
  br label %118

67:                                               ; preds = %61
  %68 = load i32*, i32** %8, align 8
  %69 = load i32, i32* @LW_EXCLUSIVE, align 4
  %70 = call i32 @LWLockAcquire(i32* %68, i32 %69)
  %71 = load i64, i64* @FAST_PATH_LOCKNUMBER_OFFSET, align 8
  store i64 %71, i64* %13, align 8
  br label %72

72:                                               ; preds = %112, %67
  %73 = load i64, i64* %13, align 8
  %74 = load i64, i64* @FAST_PATH_LOCKNUMBER_OFFSET, align 8
  %75 = load i64, i64* @FAST_PATH_BITS_PER_SLOT, align 8
  %76 = add i64 %74, %75
  %77 = icmp ult i64 %73, %76
  br i1 %77, label %78, label %115

78:                                               ; preds = %72
  %79 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %80 = load i64, i64* %12, align 8
  %81 = load i64, i64* %13, align 8
  %82 = call i32 @FAST_PATH_CHECK_LOCKMODE(%struct.TYPE_16__* %79, i64 %80, i64 %81)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %85, label %84

84:                                               ; preds = %78
  br label %112

85:                                               ; preds = %78
  %86 = load i32, i32* %5, align 4
  %87 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %88 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %89 = load i64, i64* %7, align 8
  %90 = load i64, i64* %13, align 8
  %91 = call %struct.TYPE_15__* @SetupLockInTable(i32 %86, %struct.TYPE_16__* %87, %struct.TYPE_17__* %88, i64 %89, i64 %90)
  store %struct.TYPE_15__* %91, %struct.TYPE_15__** %14, align 8
  %92 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %93 = icmp ne %struct.TYPE_15__* %92, null
  br i1 %93, label %100, label %94

94:                                               ; preds = %85
  %95 = load i32*, i32** %8, align 8
  %96 = call i32 @LWLockRelease(i32* %95)
  %97 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %98 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %97, i32 0, i32 2
  %99 = call i32 @LWLockRelease(i32* %98)
  store i32 0, i32* %4, align 4
  br label %129

100:                                              ; preds = %85
  %101 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %102 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %106 = load i64, i64* %13, align 8
  %107 = call i32 @GrantLock(i32 %104, %struct.TYPE_15__* %105, i64 %106)
  %108 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %109 = load i64, i64* %12, align 8
  %110 = load i64, i64* %13, align 8
  %111 = call i32 @FAST_PATH_CLEAR_LOCKMODE(%struct.TYPE_16__* %108, i64 %109, i64 %110)
  br label %112

112:                                              ; preds = %100, %84
  %113 = load i64, i64* %13, align 8
  %114 = add i64 %113, 1
  store i64 %114, i64* %13, align 8
  br label %72

115:                                              ; preds = %72
  %116 = load i32*, i32** %8, align 8
  %117 = call i32 @LWLockRelease(i32* %116)
  br label %121

118:                                              ; preds = %66
  %119 = load i64, i64* %12, align 8
  %120 = add i64 %119, 1
  store i64 %120, i64* %12, align 8
  br label %48

121:                                              ; preds = %115, %48
  %122 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %123 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %122, i32 0, i32 2
  %124 = call i32 @LWLockRelease(i32* %123)
  br label %125

125:                                              ; preds = %121, %43
  %126 = load i64, i64* %10, align 8
  %127 = add i64 %126, 1
  store i64 %127, i64* %10, align 8
  br label %20

128:                                              ; preds = %20
  store i32 1, i32* %4, align 4
  br label %129

129:                                              ; preds = %128, %94
  %130 = load i32, i32* %4, align 4
  ret i32 %130
}

declare dso_local i32* @LockHashPartitionLock(i64) #1

declare dso_local i32 @LWLockAcquire(i32*, i32) #1

declare dso_local i32 @LWLockRelease(i32*) #1

declare dso_local i64 @FAST_PATH_GET_BITS(%struct.TYPE_16__*, i64) #1

declare dso_local i32 @FAST_PATH_CHECK_LOCKMODE(%struct.TYPE_16__*, i64, i64) #1

declare dso_local %struct.TYPE_15__* @SetupLockInTable(i32, %struct.TYPE_16__*, %struct.TYPE_17__*, i64, i64) #1

declare dso_local i32 @GrantLock(i32, %struct.TYPE_15__*, i64) #1

declare dso_local i32 @FAST_PATH_CLEAR_LOCKMODE(%struct.TYPE_16__*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
