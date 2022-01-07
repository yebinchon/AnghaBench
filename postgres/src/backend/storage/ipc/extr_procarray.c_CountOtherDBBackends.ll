; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/storage/ipc/extr_procarray.c_CountOtherDBBackends.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/storage/ipc/extr_procarray.c_CountOtherDBBackends.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32* }
%struct.TYPE_10__ = type { i64, i32 }
%struct.TYPE_9__ = type { i32 }

@procArray = common dso_local global %struct.TYPE_8__* null, align 8
@ProcArrayLock = common dso_local global i32 0, align 4
@LW_SHARED = common dso_local global i32 0, align 4
@allProcs = common dso_local global %struct.TYPE_10__* null, align 8
@allPgXact = common dso_local global %struct.TYPE_9__* null, align 8
@MyProc = common dso_local global %struct.TYPE_10__* null, align 8
@PROC_IS_AUTOVACUUM = common dso_local global i32 0, align 4
@SIGTERM = common dso_local global i32 0, align 4
@MAXAUTOVACPIDS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @CountOtherDBBackends(i64 %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca [10 x i32], align 16
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_10__*, align 8
  %16 = alloca %struct.TYPE_9__*, align 8
  store i64 %0, i64* %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** @procArray, align 8
  store %struct.TYPE_8__* %17, %struct.TYPE_8__** %8, align 8
  store i32 0, i32* %10, align 4
  br label %18

18:                                               ; preds = %119, %3
  %19 = load i32, i32* %10, align 4
  %20 = icmp slt i32 %19, 50
  br i1 %20, label %21, label %122

21:                                               ; preds = %18
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %22 = call i32 (...) @CHECK_FOR_INTERRUPTS()
  %23 = load i32*, i32** %7, align 8
  store i32 0, i32* %23, align 4
  %24 = load i32*, i32** %6, align 8
  store i32 0, i32* %24, align 4
  %25 = load i32, i32* @ProcArrayLock, align 4
  %26 = load i32, i32* @LW_SHARED, align 4
  %27 = call i32 @LWLockAcquire(i32 %25, i32 %26)
  store i32 0, i32* %13, align 4
  br label %28

28:                                               ; preds = %93, %21
  %29 = load i32, i32* %13, align 4
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp slt i32 %29, %32
  br i1 %33, label %34, label %96

34:                                               ; preds = %28
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* %13, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %14, align 4
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** @allProcs, align 8
  %43 = load i32, i32* %14, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i64 %44
  store %struct.TYPE_10__* %45, %struct.TYPE_10__** %15, align 8
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** @allPgXact, align 8
  %47 = load i32, i32* %14, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i64 %48
  store %struct.TYPE_9__* %49, %struct.TYPE_9__** %16, align 8
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* %5, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %34
  br label %93

56:                                               ; preds = %34
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** @MyProc, align 8
  %59 = icmp eq %struct.TYPE_10__* %57, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %56
  br label %93

61:                                               ; preds = %56
  store i32 1, i32* %12, align 4
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %61
  %67 = load i32*, i32** %7, align 8
  %68 = load i32, i32* %67, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %67, align 4
  br label %92

70:                                               ; preds = %61
  %71 = load i32*, i32** %6, align 8
  %72 = load i32, i32* %71, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %71, align 4
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @PROC_IS_AUTOVACUUM, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %91

80:                                               ; preds = %70
  %81 = load i32, i32* %11, align 4
  %82 = icmp slt i32 %81, 10
  br i1 %82, label %83, label %91

83:                                               ; preds = %80
  %84 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* %11, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %11, align 4
  %89 = sext i32 %87 to i64
  %90 = getelementptr inbounds [10 x i32], [10 x i32]* %9, i64 0, i64 %89
  store i32 %86, i32* %90, align 4
  br label %91

91:                                               ; preds = %83, %80, %70
  br label %92

92:                                               ; preds = %91, %66
  br label %93

93:                                               ; preds = %92, %60, %55
  %94 = load i32, i32* %13, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %13, align 4
  br label %28

96:                                               ; preds = %28
  %97 = load i32, i32* @ProcArrayLock, align 4
  %98 = call i32 @LWLockRelease(i32 %97)
  %99 = load i32, i32* %12, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %102, label %101

101:                                              ; preds = %96
  store i32 0, i32* %4, align 4
  br label %123

102:                                              ; preds = %96
  store i32 0, i32* %13, align 4
  br label %103

103:                                              ; preds = %114, %102
  %104 = load i32, i32* %13, align 4
  %105 = load i32, i32* %11, align 4
  %106 = icmp slt i32 %104, %105
  br i1 %106, label %107, label %117

107:                                              ; preds = %103
  %108 = load i32, i32* %13, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds [10 x i32], [10 x i32]* %9, i64 0, i64 %109
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* @SIGTERM, align 4
  %113 = call i32 @kill(i32 %111, i32 %112)
  br label %114

114:                                              ; preds = %107
  %115 = load i32, i32* %13, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %13, align 4
  br label %103

117:                                              ; preds = %103
  %118 = call i32 @pg_usleep(i32 100000)
  br label %119

119:                                              ; preds = %117
  %120 = load i32, i32* %10, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %10, align 4
  br label %18

122:                                              ; preds = %18
  store i32 1, i32* %4, align 4
  br label %123

123:                                              ; preds = %122, %101
  %124 = load i32, i32* %4, align 4
  ret i32 %124
}

declare dso_local i32 @CHECK_FOR_INTERRUPTS(...) #1

declare dso_local i32 @LWLockAcquire(i32, i32) #1

declare dso_local i32 @LWLockRelease(i32) #1

declare dso_local i32 @kill(i32, i32) #1

declare dso_local i32 @pg_usleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
