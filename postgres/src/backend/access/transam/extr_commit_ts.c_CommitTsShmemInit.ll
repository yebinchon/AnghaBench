; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_commit_ts.c_CommitTsShmemInit.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_commit_ts.c_CommitTsShmemInit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32, %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32, i32 }

@CommitTsPagePrecedes = common dso_local global i32 0, align 4
@CommitTsCtl = common dso_local global %struct.TYPE_8__* null, align 8
@.str = private unnamed_addr constant [17 x i8] c"commit_timestamp\00", align 1
@CommitTsControlLock = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"pg_commit_ts\00", align 1
@LWTRANCHE_COMMITTS_BUFFERS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"CommitTs shared\00", align 1
@commitTsShared = common dso_local global %struct.TYPE_7__* null, align 8
@IsUnderPostmaster = common dso_local global i32 0, align 4
@InvalidTransactionId = common dso_local global i32 0, align 4
@InvalidRepOriginId = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CommitTsShmemInit() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @CommitTsPagePrecedes, align 4
  %3 = load %struct.TYPE_8__*, %struct.TYPE_8__** @CommitTsCtl, align 8
  %4 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %3, i32 0, i32 0
  store i32 %2, i32* %4, align 4
  %5 = load %struct.TYPE_8__*, %struct.TYPE_8__** @CommitTsCtl, align 8
  %6 = call i32 (...) @CommitTsShmemBuffers()
  %7 = load i32, i32* @CommitTsControlLock, align 4
  %8 = load i32, i32* @LWTRANCHE_COMMITTS_BUFFERS, align 4
  %9 = call i32 @SimpleLruInit(%struct.TYPE_8__* %5, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %6, i32 0, i32 %7, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %8)
  %10 = call %struct.TYPE_7__* @ShmemInitStruct(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 4, i32* %1)
  store %struct.TYPE_7__* %10, %struct.TYPE_7__** @commitTsShared, align 8
  %11 = load i32, i32* @IsUnderPostmaster, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %33, label %13

13:                                               ; preds = %0
  %14 = load i32, i32* %1, align 4
  %15 = icmp ne i32 %14, 0
  %16 = xor i1 %15, true
  %17 = zext i1 %16 to i32
  %18 = call i32 @Assert(i32 %17)
  %19 = load i32, i32* @InvalidTransactionId, align 4
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** @commitTsShared, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 2
  store i32 %19, i32* %21, align 4
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** @commitTsShared, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @TIMESTAMP_NOBEGIN(i32 %25)
  %27 = load i32, i32* @InvalidRepOriginId, align 4
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** @commitTsShared, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  store i32 %27, i32* %30, align 4
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** @commitTsShared, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  store i32 0, i32* %32, align 4
  br label %36

33:                                               ; preds = %0
  %34 = load i32, i32* %1, align 4
  %35 = call i32 @Assert(i32 %34)
  br label %36

36:                                               ; preds = %33, %13
  ret void
}

declare dso_local i32 @SimpleLruInit(%struct.TYPE_8__*, i8*, i32, i32, i32, i8*, i32) #1

declare dso_local i32 @CommitTsShmemBuffers(...) #1

declare dso_local %struct.TYPE_7__* @ShmemInitStruct(i8*, i32, i32*) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @TIMESTAMP_NOBEGIN(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
