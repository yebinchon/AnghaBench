; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/storage/lmgr/extr_lwlock.c_LWLockRelease.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/storage/lmgr/extr_lwlock.c_LWLockRelease.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }

@num_held_lwlocks = common dso_local global i32 0, align 4
@held_lwlocks = common dso_local global %struct.TYPE_9__* null, align 8
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"lock %s is not held\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"LWLockRelease\00", align 1
@LW_EXCLUSIVE = common dso_local global i64 0, align 8
@LW_VAL_EXCLUSIVE = common dso_local global i32 0, align 4
@LW_VAL_SHARED = common dso_local global i32 0, align 4
@LW_FLAG_HAS_WAITERS = common dso_local global i32 0, align 4
@LW_FLAG_RELEASE_OK = common dso_local global i32 0, align 4
@LW_LOCK_MASK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"releasing waiters\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @LWLockRelease(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  %7 = load i32, i32* @num_held_lwlocks, align 4
  store i32 %7, i32* %6, align 4
  br label %8

8:                                                ; preds = %22, %1
  %9 = load i32, i32* %6, align 4
  %10 = add nsw i32 %9, -1
  store i32 %10, i32* %6, align 4
  %11 = icmp sge i32 %10, 0
  br i1 %11, label %12, label %23

12:                                               ; preds = %8
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** @held_lwlocks, align 8
  %15 = load i32, i32* %6, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 1
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %20 = icmp eq %struct.TYPE_8__* %13, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %12
  br label %23

22:                                               ; preds = %12
  br label %8

23:                                               ; preds = %21, %8
  %24 = load i32, i32* %6, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %23
  %27 = load i32, i32* @ERROR, align 4
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %29 = call i32 @T_NAME(%struct.TYPE_8__* %28)
  %30 = call i32 @elog(i32 %27, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %29)
  br label %31

31:                                               ; preds = %26, %23
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** @held_lwlocks, align 8
  %33 = load i32, i32* %6, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  store i64 %37, i64* %3, align 8
  %38 = load i32, i32* @num_held_lwlocks, align 4
  %39 = add nsw i32 %38, -1
  store i32 %39, i32* @num_held_lwlocks, align 4
  br label %40

40:                                               ; preds = %56, %31
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* @num_held_lwlocks, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %59

44:                                               ; preds = %40
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** @held_lwlocks, align 8
  %46 = load i32, i32* %6, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i64 %47
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** @held_lwlocks, align 8
  %50 = load i32, i32* %6, align 4
  %51 = add nsw i32 %50, 1
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i64 %52
  %54 = bitcast %struct.TYPE_9__* %48 to i8*
  %55 = bitcast %struct.TYPE_9__* %53 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %54, i8* align 8 %55, i64 16, i1 false)
  br label %56

56:                                               ; preds = %44
  %57 = load i32, i32* %6, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %6, align 4
  br label %40

59:                                               ; preds = %40
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %61 = load i64, i64* %3, align 8
  %62 = call i32 @PRINT_LWDEBUG(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_8__* %60, i64 %61)
  %63 = load i64, i64* %3, align 8
  %64 = load i64, i64* @LW_EXCLUSIVE, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %71

66:                                               ; preds = %59
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 0
  %69 = load i32, i32* @LW_VAL_EXCLUSIVE, align 4
  %70 = call i32 @pg_atomic_sub_fetch_u32(i32* %68, i32 %69)
  store i32 %70, i32* %4, align 4
  br label %76

71:                                               ; preds = %59
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 0
  %74 = load i32, i32* @LW_VAL_SHARED, align 4
  %75 = call i32 @pg_atomic_sub_fetch_u32(i32* %73, i32 %74)
  store i32 %75, i32* %4, align 4
  br label %76

76:                                               ; preds = %71, %66
  %77 = load i32, i32* %4, align 4
  %78 = load i32, i32* @LW_VAL_EXCLUSIVE, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  %81 = xor i1 %80, true
  %82 = zext i1 %81 to i32
  %83 = call i32 @Assert(i32 %82)
  %84 = load i32, i32* %4, align 4
  %85 = load i32, i32* @LW_FLAG_HAS_WAITERS, align 4
  %86 = load i32, i32* @LW_FLAG_RELEASE_OK, align 4
  %87 = or i32 %85, %86
  %88 = and i32 %84, %87
  %89 = load i32, i32* @LW_FLAG_HAS_WAITERS, align 4
  %90 = load i32, i32* @LW_FLAG_RELEASE_OK, align 4
  %91 = or i32 %89, %90
  %92 = icmp eq i32 %88, %91
  br i1 %92, label %93, label %99

93:                                               ; preds = %76
  %94 = load i32, i32* %4, align 4
  %95 = load i32, i32* @LW_LOCK_MASK, align 4
  %96 = and i32 %94, %95
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %93
  store i32 1, i32* %5, align 4
  br label %100

99:                                               ; preds = %93, %76
  store i32 0, i32* %5, align 4
  br label %100

100:                                              ; preds = %99, %98
  %101 = load i32, i32* %5, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %108

103:                                              ; preds = %100
  %104 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %105 = call i32 @LOG_LWDEBUG(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_8__* %104, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %106 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %107 = call i32 @LWLockWakeup(%struct.TYPE_8__* %106)
  br label %108

108:                                              ; preds = %103, %100
  %109 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %110 = call i32 @T_NAME(%struct.TYPE_8__* %109)
  %111 = call i32 @TRACE_POSTGRESQL_LWLOCK_RELEASE(i32 %110)
  %112 = call i32 (...) @RESUME_INTERRUPTS()
  ret void
}

declare dso_local i32 @elog(i32, i8*, i32) #1

declare dso_local i32 @T_NAME(%struct.TYPE_8__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @PRINT_LWDEBUG(i8*, %struct.TYPE_8__*, i64) #1

declare dso_local i32 @pg_atomic_sub_fetch_u32(i32*, i32) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @LOG_LWDEBUG(i8*, %struct.TYPE_8__*, i8*) #1

declare dso_local i32 @LWLockWakeup(%struct.TYPE_8__*) #1

declare dso_local i32 @TRACE_POSTGRESQL_LWLOCK_RELEASE(i32) #1

declare dso_local i32 @RESUME_INTERRUPTS(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
