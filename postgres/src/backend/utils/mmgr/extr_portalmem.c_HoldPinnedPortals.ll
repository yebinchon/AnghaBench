; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/mmgr/extr_portalmem.c_HoldPinnedPortals.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/mmgr/extr_portalmem.c_HoldPinnedPortals.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i64, i64, i64 }

@PortalHashTable = common dso_local global i32 0, align 4
@PORTAL_ONE_SELECT = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_INVALID_TRANSACTION_TERMINATION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [79 x i8] c"cannot perform transaction commands inside a cursor loop that is not read-only\00", align 1
@PORTAL_READY = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [43 x i8] c"pinned portal is not ready to be auto-held\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @HoldPinnedPortals() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = load i32, i32* @PortalHashTable, align 4
  %5 = call i32 @hash_seq_init(i32* %1, i32 %4)
  br label %6

6:                                                ; preds = %49, %0
  %7 = call i64 @hash_seq_search(i32* %1)
  %8 = inttoptr i64 %7 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %8, %struct.TYPE_4__** %2, align 8
  %9 = icmp ne %struct.TYPE_4__* %8, null
  br i1 %9, label %10, label %50

10:                                               ; preds = %6
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  store %struct.TYPE_5__* %13, %struct.TYPE_5__** %3, align 8
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 3
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %49

18:                                               ; preds = %10
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %49, label %23

23:                                               ; preds = %18
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @PORTAL_ONE_SELECT, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %35

29:                                               ; preds = %23
  %30 = load i32, i32* @ERROR, align 4
  %31 = load i32, i32* @ERRCODE_INVALID_TRANSACTION_TERMINATION, align 4
  %32 = call i32 @errcode(i32 %31)
  %33 = call i32 @errmsg(i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str, i64 0, i64 0))
  %34 = call i32 @ereport(i32 %30, i32 %33)
  br label %35

35:                                               ; preds = %29, %23
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @PORTAL_READY, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %35
  %42 = load i32, i32* @ERROR, align 4
  %43 = call i32 @elog(i32 %42, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  br label %44

44:                                               ; preds = %41, %35
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %46 = call i32 @HoldPortal(%struct.TYPE_5__* %45)
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  store i32 1, i32* %48, align 8
  br label %49

49:                                               ; preds = %44, %18, %10
  br label %6

50:                                               ; preds = %6
  ret void
}

declare dso_local i32 @hash_seq_init(i32*, i32) #1

declare dso_local i64 @hash_seq_search(i32*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*) #1

declare dso_local i32 @elog(i32, i8*) #1

declare dso_local i32 @HoldPortal(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
