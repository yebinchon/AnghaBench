; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/postmaster/extr_checkpointer.c_RequestCheckpoint.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/postmaster/extr_checkpointer.c_RequestCheckpoint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i64, i32, i32, i32, i32 }

@IsPostmasterEnvironment = common dso_local global i32 0, align 4
@CHECKPOINT_IMMEDIATE = common dso_local global i32 0, align 4
@CheckpointerShmem = common dso_local global %struct.TYPE_2__* null, align 8
@CHECKPOINT_REQUESTED = common dso_local global i32 0, align 4
@CHECKPOINT_WAIT = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@LOG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [61 x i8] c"could not signal for checkpoint: checkpointer is not running\00", align 1
@SIGINT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"could not signal for checkpoint: %m\00", align 1
@WAIT_EVENT_CHECKPOINT_START = common dso_local global i32 0, align 4
@WAIT_EVENT_CHECKPOINT_DONE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"checkpoint request failed\00", align 1
@.str.3 = private unnamed_addr constant [55 x i8] c"Consult recent messages in the server log for details.\00", align 1
@MAX_SIGNAL_TRIES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @RequestCheckpoint(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %9 = load i32, i32* @IsPostmasterEnvironment, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %17, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* %2, align 4
  %13 = load i32, i32* @CHECKPOINT_IMMEDIATE, align 4
  %14 = or i32 %12, %13
  %15 = call i32 @CreateCheckPoint(i32 %14)
  %16 = call i32 (...) @smgrcloseall()
  br label %166

17:                                               ; preds = %1
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** @CheckpointerShmem, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 6
  %20 = call i32 @SpinLockAcquire(i32* %19)
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** @CheckpointerShmem, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %4, align 4
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** @CheckpointerShmem, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %2, align 4
  %28 = load i32, i32* @CHECKPOINT_REQUESTED, align 4
  %29 = or i32 %27, %28
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** @CheckpointerShmem, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = or i32 %32, %29
  store i32 %33, i32* %31, align 8
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** @CheckpointerShmem, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 6
  %36 = call i32 @SpinLockRelease(i32* %35)
  store i32 0, i32* %3, align 4
  br label %37

37:                                               ; preds = %96, %17
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** @CheckpointerShmem, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 3
  %40 = load i64, i64* %39, align 8
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %63

42:                                               ; preds = %37
  %43 = load i32, i32* %3, align 4
  %44 = icmp sge i32 %43, 600
  br i1 %44, label %50, label %45

45:                                               ; preds = %42
  %46 = load i32, i32* %2, align 4
  %47 = load i32, i32* @CHECKPOINT_WAIT, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %62, label %50

50:                                               ; preds = %45, %42
  %51 = load i32, i32* %2, align 4
  %52 = load i32, i32* @CHECKPOINT_WAIT, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %50
  %56 = load i32, i32* @ERROR, align 4
  br label %59

57:                                               ; preds = %50
  %58 = load i32, i32* @LOG, align 4
  br label %59

59:                                               ; preds = %57, %55
  %60 = phi i32 [ %56, %55 ], [ %58, %57 ]
  %61 = call i32 @elog(i32 %60, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0))
  br label %99

62:                                               ; preds = %45
  br label %93

63:                                               ; preds = %37
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** @CheckpointerShmem, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 3
  %66 = load i64, i64* %65, align 8
  %67 = load i32, i32* @SIGINT, align 4
  %68 = call i64 @kill(i64 %66, i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %91

70:                                               ; preds = %63
  %71 = load i32, i32* %3, align 4
  %72 = icmp sge i32 %71, 600
  br i1 %72, label %78, label %73

73:                                               ; preds = %70
  %74 = load i32, i32* %2, align 4
  %75 = load i32, i32* @CHECKPOINT_WAIT, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %90, label %78

78:                                               ; preds = %73, %70
  %79 = load i32, i32* %2, align 4
  %80 = load i32, i32* @CHECKPOINT_WAIT, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %78
  %84 = load i32, i32* @ERROR, align 4
  br label %87

85:                                               ; preds = %78
  %86 = load i32, i32* @LOG, align 4
  br label %87

87:                                               ; preds = %85, %83
  %88 = phi i32 [ %84, %83 ], [ %86, %85 ]
  %89 = call i32 @elog(i32 %88, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  br label %99

90:                                               ; preds = %73
  br label %92

91:                                               ; preds = %63
  br label %99

92:                                               ; preds = %90
  br label %93

93:                                               ; preds = %92, %62
  %94 = call i32 (...) @CHECK_FOR_INTERRUPTS()
  %95 = call i32 @pg_usleep(i64 100000)
  br label %96

96:                                               ; preds = %93
  %97 = load i32, i32* %3, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %3, align 4
  br label %37

99:                                               ; preds = %91, %87, %59
  %100 = load i32, i32* %2, align 4
  %101 = load i32, i32* @CHECKPOINT_WAIT, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %166

104:                                              ; preds = %99
  %105 = load %struct.TYPE_2__*, %struct.TYPE_2__** @CheckpointerShmem, align 8
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 7
  %107 = call i32 @ConditionVariablePrepareToSleep(i32* %106)
  br label %108

108:                                              ; preds = %122, %104
  %109 = load %struct.TYPE_2__*, %struct.TYPE_2__** @CheckpointerShmem, align 8
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 6
  %111 = call i32 @SpinLockAcquire(i32* %110)
  %112 = load %struct.TYPE_2__*, %struct.TYPE_2__** @CheckpointerShmem, align 8
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  store i32 %114, i32* %6, align 4
  %115 = load %struct.TYPE_2__*, %struct.TYPE_2__** @CheckpointerShmem, align 8
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i32 0, i32 6
  %117 = call i32 @SpinLockRelease(i32* %116)
  %118 = load i32, i32* %6, align 4
  %119 = load i32, i32* %5, align 4
  %120 = icmp ne i32 %118, %119
  br i1 %120, label %121, label %122

121:                                              ; preds = %108
  br label %127

122:                                              ; preds = %108
  %123 = load %struct.TYPE_2__*, %struct.TYPE_2__** @CheckpointerShmem, align 8
  %124 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %123, i32 0, i32 7
  %125 = load i32, i32* @WAIT_EVENT_CHECKPOINT_START, align 4
  %126 = call i32 @ConditionVariableSleep(i32* %124, i32 %125)
  br label %108

127:                                              ; preds = %121
  %128 = call i32 (...) @ConditionVariableCancelSleep()
  %129 = load %struct.TYPE_2__*, %struct.TYPE_2__** @CheckpointerShmem, align 8
  %130 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %129, i32 0, i32 5
  %131 = call i32 @ConditionVariablePrepareToSleep(i32* %130)
  br label %132

132:                                              ; preds = %150, %127
  %133 = load %struct.TYPE_2__*, %struct.TYPE_2__** @CheckpointerShmem, align 8
  %134 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %133, i32 0, i32 6
  %135 = call i32 @SpinLockAcquire(i32* %134)
  %136 = load %struct.TYPE_2__*, %struct.TYPE_2__** @CheckpointerShmem, align 8
  %137 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %136, i32 0, i32 4
  %138 = load i32, i32* %137, align 8
  store i32 %138, i32* %8, align 4
  %139 = load %struct.TYPE_2__*, %struct.TYPE_2__** @CheckpointerShmem, align 8
  %140 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  store i32 %141, i32* %7, align 4
  %142 = load %struct.TYPE_2__*, %struct.TYPE_2__** @CheckpointerShmem, align 8
  %143 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %142, i32 0, i32 6
  %144 = call i32 @SpinLockRelease(i32* %143)
  %145 = load i32, i32* %8, align 4
  %146 = load i32, i32* %6, align 4
  %147 = sub nsw i32 %145, %146
  %148 = icmp sge i32 %147, 0
  br i1 %148, label %149, label %150

149:                                              ; preds = %132
  br label %155

150:                                              ; preds = %132
  %151 = load %struct.TYPE_2__*, %struct.TYPE_2__** @CheckpointerShmem, align 8
  %152 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %151, i32 0, i32 5
  %153 = load i32, i32* @WAIT_EVENT_CHECKPOINT_DONE, align 4
  %154 = call i32 @ConditionVariableSleep(i32* %152, i32 %153)
  br label %132

155:                                              ; preds = %149
  %156 = call i32 (...) @ConditionVariableCancelSleep()
  %157 = load i32, i32* %7, align 4
  %158 = load i32, i32* %4, align 4
  %159 = icmp ne i32 %157, %158
  br i1 %159, label %160, label %165

160:                                              ; preds = %155
  %161 = load i32, i32* @ERROR, align 4
  %162 = call i32 @errmsg(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %163 = call i32 @errhint(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.3, i64 0, i64 0))
  %164 = call i32 @ereport(i32 %161, i32 %163)
  br label %165

165:                                              ; preds = %160, %155
  br label %166

166:                                              ; preds = %11, %165, %99
  ret void
}

declare dso_local i32 @CreateCheckPoint(i32) #1

declare dso_local i32 @smgrcloseall(...) #1

declare dso_local i32 @SpinLockAcquire(i32*) #1

declare dso_local i32 @SpinLockRelease(i32*) #1

declare dso_local i32 @elog(i32, i8*) #1

declare dso_local i64 @kill(i64, i32) #1

declare dso_local i32 @CHECK_FOR_INTERRUPTS(...) #1

declare dso_local i32 @pg_usleep(i64) #1

declare dso_local i32 @ConditionVariablePrepareToSleep(i32*) #1

declare dso_local i32 @ConditionVariableSleep(i32*, i32) #1

declare dso_local i32 @ConditionVariableCancelSleep(...) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errmsg(i8*) #1

declare dso_local i32 @errhint(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
