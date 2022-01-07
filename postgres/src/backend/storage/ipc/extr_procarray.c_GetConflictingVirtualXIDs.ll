; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/storage/ipc/extr_procarray.c_GetConflictingVirtualXIDs.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/storage/ipc/extr_procarray.c_GetConflictingVirtualXIDs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_13__ = type { i32, i32, i32* }
%struct.TYPE_15__ = type { i64, i64 }
%struct.TYPE_14__ = type { i32 }

@GetConflictingVirtualXIDs.vxids = internal global %struct.TYPE_12__* null, align 8
@procArray = common dso_local global %struct.TYPE_13__* null, align 8
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_OUT_OF_MEMORY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"out of memory\00", align 1
@ProcArrayLock = common dso_local global i32 0, align 4
@LW_SHARED = common dso_local global i32 0, align 4
@allProcs = common dso_local global %struct.TYPE_15__* null, align 8
@allPgXact = common dso_local global %struct.TYPE_14__* null, align 8
@InvalidBackendId = common dso_local global i32 0, align 4
@InvalidLocalTransactionId = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_12__* @GetConflictingVirtualXIDs(i32 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_15__*, align 8
  %10 = alloca %struct.TYPE_14__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_12__, align 4
  store i32 %0, i32* %3, align 4
  store i64 %1, i64* %4, align 8
  %13 = load %struct.TYPE_13__*, %struct.TYPE_13__** @procArray, align 8
  store %struct.TYPE_13__* %13, %struct.TYPE_13__** %5, align 8
  store i32 0, i32* %6, align 4
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** @GetConflictingVirtualXIDs.vxids, align 8
  %15 = icmp eq %struct.TYPE_12__* %14, null
  br i1 %15, label %16, label %35

16:                                               ; preds = %2
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = add nsw i32 %19, 1
  %21 = sext i32 %20 to i64
  %22 = mul i64 8, %21
  %23 = trunc i64 %22 to i32
  %24 = call i64 @malloc(i32 %23)
  %25 = inttoptr i64 %24 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %25, %struct.TYPE_12__** @GetConflictingVirtualXIDs.vxids, align 8
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** @GetConflictingVirtualXIDs.vxids, align 8
  %27 = icmp eq %struct.TYPE_12__* %26, null
  br i1 %27, label %28, label %34

28:                                               ; preds = %16
  %29 = load i32, i32* @ERROR, align 4
  %30 = load i32, i32* @ERRCODE_OUT_OF_MEMORY, align 4
  %31 = call i32 @errcode(i32 %30)
  %32 = call i32 @errmsg(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %33 = call i32 @ereport(i32 %29, i32 %32)
  br label %34

34:                                               ; preds = %28, %16
  br label %35

35:                                               ; preds = %34, %2
  %36 = load i32, i32* @ProcArrayLock, align 4
  %37 = load i32, i32* @LW_SHARED, align 4
  %38 = call i32 @LWLockAcquire(i32 %36, i32 %37)
  store i32 0, i32* %7, align 4
  br label %39

39:                                               ; preds = %118, %35
  %40 = load i32, i32* %7, align 4
  %41 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = icmp slt i32 %40, %43
  br i1 %44, label %45, label %121

45:                                               ; preds = %39
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %46, i32 0, i32 2
  %48 = load i32*, i32** %47, align 8
  %49 = load i32, i32* %7, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %8, align 4
  %53 = load %struct.TYPE_15__*, %struct.TYPE_15__** @allProcs, align 8
  %54 = load i32, i32* %8, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %53, i64 %55
  store %struct.TYPE_15__* %56, %struct.TYPE_15__** %9, align 8
  %57 = load %struct.TYPE_14__*, %struct.TYPE_14__** @allPgXact, align 8
  %58 = load i32, i32* %8, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %57, i64 %59
  store %struct.TYPE_14__* %60, %struct.TYPE_14__** %10, align 8
  %61 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %62 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp eq i64 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %45
  br label %118

66:                                               ; preds = %45
  %67 = load i64, i64* %4, align 8
  %68 = call i32 @OidIsValid(i64 %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %66
  %71 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %72 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* %4, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %117

76:                                               ; preds = %70, %66
  %77 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %78 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @UINT32_ACCESS_ONCE(i32 %79)
  store i32 %80, i32* %11, align 4
  %81 = load i32, i32* %3, align 4
  %82 = call i64 @TransactionIdIsValid(i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %93

84:                                               ; preds = %76
  %85 = load i32, i32* %11, align 4
  %86 = call i64 @TransactionIdIsValid(i32 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %116

88:                                               ; preds = %84
  %89 = load i32, i32* %11, align 4
  %90 = load i32, i32* %3, align 4
  %91 = call i32 @TransactionIdFollows(i32 %89, i32 %90)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %116, label %93

93:                                               ; preds = %88, %76
  %94 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %95 = bitcast %struct.TYPE_12__* %12 to i64*
  %96 = load i64, i64* %95, align 4
  %97 = bitcast %struct.TYPE_15__* %94 to { i64, i64 }*
  %98 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %97, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = call i32 @GET_VXID_FROM_PGPROC(i64 %96, i64 %99, i64 %101)
  %103 = bitcast %struct.TYPE_12__* %12 to i64*
  %104 = load i64, i64* %103, align 4
  %105 = call i64 @VirtualTransactionIdIsValid(i64 %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %115

107:                                              ; preds = %93
  %108 = load %struct.TYPE_12__*, %struct.TYPE_12__** @GetConflictingVirtualXIDs.vxids, align 8
  %109 = load i32, i32* %6, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %6, align 4
  %111 = sext i32 %109 to i64
  %112 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %108, i64 %111
  %113 = bitcast %struct.TYPE_12__* %112 to i8*
  %114 = bitcast %struct.TYPE_12__* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %113, i8* align 4 %114, i64 8, i1 false)
  br label %115

115:                                              ; preds = %107, %93
  br label %116

116:                                              ; preds = %115, %88, %84
  br label %117

117:                                              ; preds = %116, %70
  br label %118

118:                                              ; preds = %117, %65
  %119 = load i32, i32* %7, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %7, align 4
  br label %39

121:                                              ; preds = %39
  %122 = load i32, i32* @ProcArrayLock, align 4
  %123 = call i32 @LWLockRelease(i32 %122)
  %124 = load i32, i32* @InvalidBackendId, align 4
  %125 = load %struct.TYPE_12__*, %struct.TYPE_12__** @GetConflictingVirtualXIDs.vxids, align 8
  %126 = load i32, i32* %6, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %125, i64 %127
  %129 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %128, i32 0, i32 1
  store i32 %124, i32* %129, align 4
  %130 = load i32, i32* @InvalidLocalTransactionId, align 4
  %131 = load %struct.TYPE_12__*, %struct.TYPE_12__** @GetConflictingVirtualXIDs.vxids, align 8
  %132 = load i32, i32* %6, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %131, i64 %133
  %135 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %134, i32 0, i32 0
  store i32 %130, i32* %135, align 4
  %136 = load %struct.TYPE_12__*, %struct.TYPE_12__** @GetConflictingVirtualXIDs.vxids, align 8
  ret %struct.TYPE_12__* %136
}

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*) #1

declare dso_local i32 @LWLockAcquire(i32, i32) #1

declare dso_local i32 @OidIsValid(i64) #1

declare dso_local i32 @UINT32_ACCESS_ONCE(i32) #1

declare dso_local i64 @TransactionIdIsValid(i32) #1

declare dso_local i32 @TransactionIdFollows(i32, i32) #1

declare dso_local i32 @GET_VXID_FROM_PGPROC(i64, i64, i64) #1

declare dso_local i64 @VirtualTransactionIdIsValid(i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @LWLockRelease(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
