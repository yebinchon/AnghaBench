; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/storage/ipc/extr_procarray.c_GetCurrentVirtualXIDs.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/storage/ipc/extr_procarray.c_GetCurrentVirtualXIDs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i32* }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_10__ = type { i32, i32 }

@procArray = common dso_local global %struct.TYPE_9__* null, align 8
@ProcArrayLock = common dso_local global i32 0, align 4
@LW_SHARED = common dso_local global i32 0, align 4
@allProcs = common dso_local global %struct.TYPE_11__* null, align 8
@allPgXact = common dso_local global %struct.TYPE_10__* null, align 8
@MyProc = common dso_local global %struct.TYPE_11__* null, align 8
@MyDatabaseId = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @GetCurrentVirtualXIDs(i32 %0, i32 %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_9__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_11__*, align 8
  %17 = alloca %struct.TYPE_10__*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** @procArray, align 8
  store %struct.TYPE_9__* %20, %struct.TYPE_9__** %12, align 8
  store i32 0, i32* %13, align 4
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = sext i32 %23 to i64
  %25 = mul i64 4, %24
  %26 = trunc i64 %25 to i32
  %27 = call i64 @palloc(i32 %26)
  %28 = inttoptr i64 %27 to i32*
  store i32* %28, i32** %11, align 8
  %29 = load i32, i32* @ProcArrayLock, align 4
  %30 = load i32, i32* @LW_SHARED, align 4
  %31 = call i32 @LWLockAcquire(i32 %29, i32 %30)
  store i32 0, i32* %14, align 4
  br label %32

32:                                               ; preds = %115, %5
  %33 = load i32, i32* %14, align 4
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = icmp slt i32 %33, %36
  br i1 %37, label %38, label %118

38:                                               ; preds = %32
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 2
  %41 = load i32*, i32** %40, align 8
  %42 = load i32, i32* %14, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %15, align 4
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** @allProcs, align 8
  %47 = load i32, i32* %15, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i64 %48
  store %struct.TYPE_11__* %49, %struct.TYPE_11__** %16, align 8
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** @allPgXact, align 8
  %51 = load i32, i32* %15, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i64 %52
  store %struct.TYPE_10__* %53, %struct.TYPE_10__** %17, align 8
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** @MyProc, align 8
  %56 = icmp eq %struct.TYPE_11__* %54, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %38
  br label %115

58:                                               ; preds = %38
  %59 = load i32, i32* %9, align 4
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = and i32 %59, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %58
  br label %115

66:                                               ; preds = %58
  %67 = load i32, i32* %8, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %75, label %69

69:                                               ; preds = %66
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @MyDatabaseId, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %114

75:                                               ; preds = %69, %66
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @UINT32_ACCESS_ONCE(i32 %78)
  store i32 %79, i32* %18, align 4
  %80 = load i32, i32* %7, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %87

82:                                               ; preds = %75
  %83 = load i32, i32* %18, align 4
  %84 = call i32 @TransactionIdIsValid(i32 %83)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %87, label %86

86:                                               ; preds = %82
  br label %115

87:                                               ; preds = %82, %75
  %88 = load i32, i32* %6, align 4
  %89 = call i32 @TransactionIdIsValid(i32 %88)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %96

91:                                               ; preds = %87
  %92 = load i32, i32* %18, align 4
  %93 = load i32, i32* %6, align 4
  %94 = call i64 @TransactionIdPrecedesOrEquals(i32 %92, i32 %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %113

96:                                               ; preds = %91, %87
  %97 = load i32, i32* %19, align 4
  %98 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %99 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = call i32 @GET_VXID_FROM_PGPROC(i32 %97, i64 %100)
  %102 = load i32, i32* %19, align 4
  %103 = call i64 @VirtualTransactionIdIsValid(i32 %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %112

105:                                              ; preds = %96
  %106 = load i32, i32* %19, align 4
  %107 = load i32*, i32** %11, align 8
  %108 = load i32, i32* %13, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %13, align 4
  %110 = sext i32 %108 to i64
  %111 = getelementptr inbounds i32, i32* %107, i64 %110
  store i32 %106, i32* %111, align 4
  br label %112

112:                                              ; preds = %105, %96
  br label %113

113:                                              ; preds = %112, %91
  br label %114

114:                                              ; preds = %113, %69
  br label %115

115:                                              ; preds = %114, %86, %65, %57
  %116 = load i32, i32* %14, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %14, align 4
  br label %32

118:                                              ; preds = %32
  %119 = load i32, i32* @ProcArrayLock, align 4
  %120 = call i32 @LWLockRelease(i32 %119)
  %121 = load i32, i32* %13, align 4
  %122 = load i32*, i32** %10, align 8
  store i32 %121, i32* %122, align 4
  %123 = load i32*, i32** %11, align 8
  ret i32* %123
}

declare dso_local i64 @palloc(i32) #1

declare dso_local i32 @LWLockAcquire(i32, i32) #1

declare dso_local i32 @UINT32_ACCESS_ONCE(i32) #1

declare dso_local i32 @TransactionIdIsValid(i32) #1

declare dso_local i64 @TransactionIdPrecedesOrEquals(i32, i32) #1

declare dso_local i32 @GET_VXID_FROM_PGPROC(i32, i64) #1

declare dso_local i64 @VirtualTransactionIdIsValid(i32) #1

declare dso_local i32 @LWLockRelease(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
