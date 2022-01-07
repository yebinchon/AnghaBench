; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_twophase.c_TwoPhaseShmemInit.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_twophase.c_TwoPhaseShmemInit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__*, i64 }
%struct.TYPE_5__ = type { i64, i32, %struct.TYPE_5__* }
%struct.TYPE_7__ = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"Prepared Transaction Table\00", align 1
@TwoPhaseState = common dso_local global %struct.TYPE_6__* null, align 8
@IsUnderPostmaster = common dso_local global i32 0, align 4
@TwoPhaseStateData = common dso_local global i32 0, align 4
@prepXacts = common dso_local global i32 0, align 4
@max_prepared_xacts = common dso_local global i32 0, align 4
@PreparedXactProcs = common dso_local global %struct.TYPE_7__* null, align 8
@MaxBackends = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @TwoPhaseShmemInit() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca i32, align 4
  %4 = call i32 (...) @TwoPhaseShmemSize()
  %5 = call %struct.TYPE_6__* @ShmemInitStruct(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %4, i32* %1)
  store %struct.TYPE_6__* %5, %struct.TYPE_6__** @TwoPhaseState, align 8
  %6 = load i32, i32* @IsUnderPostmaster, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %75, label %8

8:                                                ; preds = %0
  %9 = load i32, i32* %1, align 4
  %10 = icmp ne i32 %9, 0
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i32
  %13 = call i32 @Assert(i32 %12)
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** @TwoPhaseState, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %15, align 8
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** @TwoPhaseState, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 1
  store i64 0, i64* %17, align 8
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** @TwoPhaseState, align 8
  %19 = bitcast %struct.TYPE_6__* %18 to i8*
  %20 = load i32, i32* @TwoPhaseStateData, align 4
  %21 = load i32, i32* @prepXacts, align 4
  %22 = call i64 @offsetof(i32 %20, i32 %21)
  %23 = load i32, i32* @max_prepared_xacts, align 4
  %24 = sext i32 %23 to i64
  %25 = mul i64 8, %24
  %26 = add i64 %22, %25
  %27 = call i32 @MAXALIGN(i64 %26)
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i8, i8* %19, i64 %28
  %30 = bitcast i8* %29 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %30, %struct.TYPE_5__** %2, align 8
  store i32 0, i32* %3, align 4
  br label %31

31:                                               ; preds = %71, %8
  %32 = load i32, i32* %3, align 4
  %33 = load i32, i32* @max_prepared_xacts, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %74

35:                                               ; preds = %31
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** @TwoPhaseState, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %37, align 8
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %40 = load i32, i32* %3, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 2
  store %struct.TYPE_5__* %38, %struct.TYPE_5__** %43, align 8
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %45 = load i32, i32* %3, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i64 %46
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** @TwoPhaseState, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  store %struct.TYPE_5__* %47, %struct.TYPE_5__** %49, align 8
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** @PreparedXactProcs, align 8
  %51 = load i32, i32* %3, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %57 = load i32, i32* %3, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 1
  store i32 %55, i32* %60, align 8
  %61 = load i64, i64* @MaxBackends, align 8
  %62 = add nsw i64 %61, 1
  %63 = load i32, i32* %3, align 4
  %64 = sext i32 %63 to i64
  %65 = add nsw i64 %62, %64
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %67 = load i32, i32* %3, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 0
  store i64 %65, i64* %70, align 8
  br label %71

71:                                               ; preds = %35
  %72 = load i32, i32* %3, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %3, align 4
  br label %31

74:                                               ; preds = %31
  br label %78

75:                                               ; preds = %0
  %76 = load i32, i32* %1, align 4
  %77 = call i32 @Assert(i32 %76)
  br label %78

78:                                               ; preds = %75, %74
  ret void
}

declare dso_local %struct.TYPE_6__* @ShmemInitStruct(i8*, i32, i32*) #1

declare dso_local i32 @TwoPhaseShmemSize(...) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @MAXALIGN(i64) #1

declare dso_local i64 @offsetof(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
