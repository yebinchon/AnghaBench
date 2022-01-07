; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/storage/lmgr/extr_predicate.c_FlagRWConflict.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/storage/lmgr/extr_predicate.c_FlagRWConflict.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }

@OldCommittedSxact = common dso_local global %struct.TYPE_9__* null, align 8
@SXACT_FLAG_SUMMARY_CONFLICT_IN = common dso_local global i32 0, align 4
@SXACT_FLAG_SUMMARY_CONFLICT_OUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*, %struct.TYPE_9__*)* @FlagRWConflict to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @FlagRWConflict(%struct.TYPE_9__* %0, %struct.TYPE_9__* %1) #0 {
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %4, align 8
  %5 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %6 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %7 = icmp ne %struct.TYPE_9__* %5, %6
  %8 = zext i1 %7 to i32
  %9 = call i32 @Assert(i32 %8)
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %12 = call i32 @OnConflict_CheckForSerializationFailure(%struct.TYPE_9__* %10, %struct.TYPE_9__* %11)
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** @OldCommittedSxact, align 8
  %15 = icmp eq %struct.TYPE_9__* %13, %14
  br i1 %15, label %16, label %22

16:                                               ; preds = %2
  %17 = load i32, i32* @SXACT_FLAG_SUMMARY_CONFLICT_IN, align 4
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = or i32 %20, %17
  store i32 %21, i32* %19, align 4
  br label %37

22:                                               ; preds = %2
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** @OldCommittedSxact, align 8
  %25 = icmp eq %struct.TYPE_9__* %23, %24
  br i1 %25, label %26, label %32

26:                                               ; preds = %22
  %27 = load i32, i32* @SXACT_FLAG_SUMMARY_CONFLICT_OUT, align 4
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = or i32 %30, %27
  store i32 %31, i32* %29, align 4
  br label %36

32:                                               ; preds = %22
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %35 = call i32 @SetRWConflict(%struct.TYPE_9__* %33, %struct.TYPE_9__* %34)
  br label %36

36:                                               ; preds = %32, %26
  br label %37

37:                                               ; preds = %36, %16
  ret void
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @OnConflict_CheckForSerializationFailure(%struct.TYPE_9__*, %struct.TYPE_9__*) #1

declare dso_local i32 @SetRWConflict(%struct.TYPE_9__*, %struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
