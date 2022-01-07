; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_multixact.c_MultiXactAdvanceNextMXact.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_multixact.c_MultiXactAdvanceNextMXact.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, i8* }

@MultiXactGenLock = common dso_local global i32 0, align 4
@LW_EXCLUSIVE = common dso_local global i32 0, align 4
@MultiXactState = common dso_local global %struct.TYPE_2__* null, align 8
@DEBUG2 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"MultiXact: setting next multi to %u\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"MultiXact: setting next offset to %u\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @MultiXactAdvanceNextMXact(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load i32, i32* @MultiXactGenLock, align 4
  %6 = load i32, i32* @LW_EXCLUSIVE, align 4
  %7 = call i32 @LWLockAcquire(i32 %5, i32 %6)
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** @MultiXactState, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 1
  %10 = load i8*, i8** %9, align 8
  %11 = load i8*, i8** %3, align 8
  %12 = call i64 @MultiXactIdPrecedes(i8* %10, i8* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %21

14:                                               ; preds = %2
  %15 = load i32, i32* @DEBUG2, align 4
  %16 = load i8*, i8** %3, align 8
  %17 = call i32 @debug_elog3(i32 %15, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i8* %16)
  %18 = load i8*, i8** %3, align 8
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** @MultiXactState, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  store i8* %18, i8** %20, align 8
  br label %21

21:                                               ; preds = %14, %2
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** @MultiXactState, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  %25 = load i8*, i8** %4, align 8
  %26 = call i64 @MultiXactOffsetPrecedes(i8* %24, i8* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %21
  %29 = load i32, i32* @DEBUG2, align 4
  %30 = load i8*, i8** %4, align 8
  %31 = call i32 @debug_elog3(i32 %29, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i8* %30)
  %32 = load i8*, i8** %4, align 8
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** @MultiXactState, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  store i8* %32, i8** %34, align 8
  br label %35

35:                                               ; preds = %28, %21
  %36 = load i32, i32* @MultiXactGenLock, align 4
  %37 = call i32 @LWLockRelease(i32 %36)
  ret void
}

declare dso_local i32 @LWLockAcquire(i32, i32) #1

declare dso_local i64 @MultiXactIdPrecedes(i8*, i8*) #1

declare dso_local i32 @debug_elog3(i32, i8*, i8*) #1

declare dso_local i64 @MultiXactOffsetPrecedes(i8*, i8*) #1

declare dso_local i32 @LWLockRelease(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
