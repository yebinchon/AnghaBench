; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/storage/lmgr/extr_predicate.c_OldSerXidInit.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/storage/lmgr/extr_predicate.c_OldSerXidInit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32, i8*, i8* }

@OldSerXidPagePrecedesLogically = common dso_local global i32 0, align 4
@OldSerXidSlruCtl = common dso_local global %struct.TYPE_6__* null, align 8
@.str = private unnamed_addr constant [10 x i8] c"oldserxid\00", align 1
@NUM_OLDSERXID_BUFFERS = common dso_local global i32 0, align 4
@OldSerXidLock = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"pg_serial\00", align 1
@LWTRANCHE_OLDSERXID_BUFFERS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"OldSerXidControlData\00", align 1
@oldSerXidControl = common dso_local global %struct.TYPE_5__* null, align 8
@IsUnderPostmaster = common dso_local global i32 0, align 4
@InvalidTransactionId = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @OldSerXidInit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @OldSerXidInit() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @OldSerXidPagePrecedesLogically, align 4
  %3 = load %struct.TYPE_6__*, %struct.TYPE_6__** @OldSerXidSlruCtl, align 8
  %4 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 1
  store i32 %2, i32* %4, align 4
  %5 = load %struct.TYPE_6__*, %struct.TYPE_6__** @OldSerXidSlruCtl, align 8
  %6 = load i32, i32* @NUM_OLDSERXID_BUFFERS, align 4
  %7 = load i32, i32* @OldSerXidLock, align 4
  %8 = load i32, i32* @LWTRANCHE_OLDSERXID_BUFFERS, align 4
  %9 = call i32 @SimpleLruInit(%struct.TYPE_6__* %5, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %6, i32 0, i32 %7, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %8)
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** @OldSerXidSlruCtl, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  store i32 0, i32* %11, align 4
  %12 = call i64 @ShmemInitStruct(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 4, i32* %1)
  %13 = inttoptr i64 %12 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %13, %struct.TYPE_5__** @oldSerXidControl, align 8
  %14 = load i32, i32* %1, align 4
  %15 = load i32, i32* @IsUnderPostmaster, align 4
  %16 = icmp eq i32 %14, %15
  %17 = zext i1 %16 to i32
  %18 = call i32 @Assert(i32 %17)
  %19 = load i32, i32* %1, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %30, label %21

21:                                               ; preds = %0
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** @oldSerXidControl, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  store i32 -1, i32* %23, align 8
  %24 = load i8*, i8** @InvalidTransactionId, align 8
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** @oldSerXidControl, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 2
  store i8* %24, i8** %26, align 8
  %27 = load i8*, i8** @InvalidTransactionId, align 8
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** @oldSerXidControl, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 1
  store i8* %27, i8** %29, align 8
  br label %30

30:                                               ; preds = %21, %0
  ret void
}

declare dso_local i32 @SimpleLruInit(%struct.TYPE_6__*, i8*, i32, i32, i32, i8*, i32) #1

declare dso_local i64 @ShmemInitStruct(i8*, i32, i32*) #1

declare dso_local i32 @Assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
