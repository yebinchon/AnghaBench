; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/storage/lmgr/extr_lock.c_lock_twophase_standby_recover.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/storage/lmgr/extr_lock.c_lock_twophase_standby_recover.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i64, i32, i32 }

@LockMethods = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"unrecognized lock method: %d\00", align 1
@AccessExclusiveLock = common dso_local global i64 0, align 8
@LOCKTAG_RELATION = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lock_twophase_standby_recover(i32 %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_3__*, align 8
  %10 = alloca %struct.TYPE_4__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = load i8*, i8** %7, align 8
  %14 = bitcast i8* %13 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %14, %struct.TYPE_3__** %9, align 8
  %15 = load i32, i32* %8, align 4
  %16 = sext i32 %15 to i64
  %17 = icmp eq i64 %16, 32
  %18 = zext i1 %17 to i32
  %19 = call i32 @Assert(i32 %18)
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 1
  store %struct.TYPE_4__* %21, %struct.TYPE_4__** %10, align 8
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  store i64 %24, i64* %11, align 8
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  store i64 %27, i64* %12, align 8
  %28 = load i64, i64* %12, align 8
  %29 = icmp sle i64 %28, 0
  br i1 %29, label %35, label %30

30:                                               ; preds = %4
  %31 = load i64, i64* %12, align 8
  %32 = load i32, i32* @LockMethods, align 4
  %33 = call i64 @lengthof(i32 %32)
  %34 = icmp sge i64 %31, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %30, %4
  %36 = load i32, i32* @ERROR, align 4
  %37 = load i64, i64* %12, align 8
  %38 = call i32 @elog(i32 %36, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i64 %37)
  br label %39

39:                                               ; preds = %35, %30
  %40 = load i64, i64* %11, align 8
  %41 = load i64, i64* @AccessExclusiveLock, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %58

43:                                               ; preds = %39
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @LOCKTAG_RELATION, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %58

49:                                               ; preds = %43
  %50 = load i32, i32* %5, align 4
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @StandbyAcquireAccessExclusiveLock(i32 %50, i32 %53, i32 %56)
  br label %58

58:                                               ; preds = %49, %43, %39
  ret void
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i64 @lengthof(i32) #1

declare dso_local i32 @elog(i32, i8*, i64) #1

declare dso_local i32 @StandbyAcquireAccessExclusiveLock(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
