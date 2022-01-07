; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_varsup.c_GetNewObjectId.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_varsup.c_GetNewObjectId.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64 }

@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"cannot assign OIDs during recovery\00", align 1
@OidGenLock = common dso_local global i32 0, align 4
@LW_EXCLUSIVE = common dso_local global i32 0, align 4
@ShmemVariableCache = common dso_local global %struct.TYPE_2__* null, align 8
@FirstNormalObjectId = common dso_local global i8* null, align 8
@IsPostmasterEnvironment = common dso_local global i64 0, align 8
@FirstBootstrapObjectId = common dso_local global i64 0, align 8
@VAR_OID_PREFETCH = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @GetNewObjectId() #0 {
  %1 = alloca i64, align 8
  %2 = call i64 (...) @RecoveryInProgress()
  %3 = icmp ne i64 %2, 0
  br i1 %3, label %4, label %7

4:                                                ; preds = %0
  %5 = load i32, i32* @ERROR, align 4
  %6 = call i32 @elog(i32 %5, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %7

7:                                                ; preds = %4, %0
  %8 = load i32, i32* @OidGenLock, align 4
  %9 = load i32, i32* @LW_EXCLUSIVE, align 4
  %10 = call i32 @LWLockAcquire(i32 %8, i32 %9)
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ShmemVariableCache, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i8*, i8** @FirstNormalObjectId, align 8
  %15 = ptrtoint i8* %14 to i64
  %16 = icmp slt i64 %13, %15
  br i1 %16, label %17, label %42

17:                                               ; preds = %7
  %18 = load i64, i64* @IsPostmasterEnvironment, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %17
  %21 = load i8*, i8** @FirstNormalObjectId, align 8
  %22 = ptrtoint i8* %21 to i64
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ShmemVariableCache, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  store i64 %22, i64* %24, align 8
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ShmemVariableCache, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  store i64 0, i64* %26, align 8
  br label %41

27:                                               ; preds = %17
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ShmemVariableCache, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @FirstBootstrapObjectId, align 8
  %32 = icmp slt i64 %30, %31
  br i1 %32, label %33, label %40

33:                                               ; preds = %27
  %34 = load i8*, i8** @FirstNormalObjectId, align 8
  %35 = ptrtoint i8* %34 to i64
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ShmemVariableCache, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  store i64 %35, i64* %37, align 8
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ShmemVariableCache, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  store i64 0, i64* %39, align 8
  br label %40

40:                                               ; preds = %33, %27
  br label %41

41:                                               ; preds = %40, %20
  br label %42

42:                                               ; preds = %41, %7
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ShmemVariableCache, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %57

47:                                               ; preds = %42
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ShmemVariableCache, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @VAR_OID_PREFETCH, align 8
  %52 = add nsw i64 %50, %51
  %53 = call i32 @XLogPutNextOid(i64 %52)
  %54 = load i64, i64* @VAR_OID_PREFETCH, align 8
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ShmemVariableCache, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 1
  store i64 %54, i64* %56, align 8
  br label %57

57:                                               ; preds = %47, %42
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ShmemVariableCache, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  store i64 %60, i64* %1, align 8
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ShmemVariableCache, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = add nsw i64 %63, 1
  store i64 %64, i64* %62, align 8
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ShmemVariableCache, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = add nsw i64 %67, -1
  store i64 %68, i64* %66, align 8
  %69 = load i32, i32* @OidGenLock, align 4
  %70 = call i32 @LWLockRelease(i32 %69)
  %71 = load i64, i64* %1, align 8
  ret i64 %71
}

declare dso_local i64 @RecoveryInProgress(...) #1

declare dso_local i32 @elog(i32, i8*) #1

declare dso_local i32 @LWLockAcquire(i32, i32) #1

declare dso_local i32 @XLogPutNextOid(i64) #1

declare dso_local i32 @LWLockRelease(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
