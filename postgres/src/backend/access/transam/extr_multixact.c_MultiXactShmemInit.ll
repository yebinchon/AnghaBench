; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_multixact.c_MultiXactShmemInit.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_multixact.c_MultiXactShmemInit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i64 }

@DEBUG2 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Shared Memory Init for MultiXact\00", align 1
@MultiXactOffsetPagePrecedes = common dso_local global i32 0, align 4
@MultiXactOffsetCtl = common dso_local global %struct.TYPE_7__* null, align 8
@MultiXactMemberPagePrecedes = common dso_local global i32 0, align 4
@MultiXactMemberCtl = common dso_local global %struct.TYPE_7__* null, align 8
@.str.1 = private unnamed_addr constant [17 x i8] c"multixact_offset\00", align 1
@NUM_MXACTOFFSET_BUFFERS = common dso_local global i32 0, align 4
@MultiXactOffsetControlLock = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"pg_multixact/offsets\00", align 1
@LWTRANCHE_MXACTOFFSET_BUFFERS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [17 x i8] c"multixact_member\00", align 1
@NUM_MXACTMEMBER_BUFFERS = common dso_local global i32 0, align 4
@MultiXactMemberControlLock = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [21 x i8] c"pg_multixact/members\00", align 1
@LWTRANCHE_MXACTMEMBER_BUFFERS = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [23 x i8] c"Shared MultiXact State\00", align 1
@SHARED_MULTIXACT_STATE_SIZE = common dso_local global i32 0, align 4
@MultiXactState = common dso_local global %struct.TYPE_8__* null, align 8
@IsUnderPostmaster = common dso_local global i32 0, align 4
@OldestMemberMXactId = common dso_local global i64 0, align 8
@MaxOldestSlot = common dso_local global i64 0, align 8
@OldestVisibleMXactId = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @MultiXactShmemInit() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @DEBUG2, align 4
  %3 = call i32 @debug_elog2(i32 %2, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %4 = load i32, i32* @MultiXactOffsetPagePrecedes, align 4
  %5 = load %struct.TYPE_7__*, %struct.TYPE_7__** @MultiXactOffsetCtl, align 8
  %6 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 0
  store i32 %4, i32* %6, align 4
  %7 = load i32, i32* @MultiXactMemberPagePrecedes, align 4
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** @MultiXactMemberCtl, align 8
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  store i32 %7, i32* %9, align 4
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** @MultiXactOffsetCtl, align 8
  %11 = load i32, i32* @NUM_MXACTOFFSET_BUFFERS, align 4
  %12 = load i32, i32* @MultiXactOffsetControlLock, align 4
  %13 = load i32, i32* @LWTRANCHE_MXACTOFFSET_BUFFERS, align 4
  %14 = call i32 @SimpleLruInit(%struct.TYPE_7__* %10, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %11, i32 0, i32 %12, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %13)
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** @MultiXactMemberCtl, align 8
  %16 = load i32, i32* @NUM_MXACTMEMBER_BUFFERS, align 4
  %17 = load i32, i32* @MultiXactMemberControlLock, align 4
  %18 = load i32, i32* @LWTRANCHE_MXACTMEMBER_BUFFERS, align 4
  %19 = call i32 @SimpleLruInit(%struct.TYPE_7__* %15, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i32 %16, i32 0, i32 %17, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i32 %18)
  %20 = load i32, i32* @SHARED_MULTIXACT_STATE_SIZE, align 4
  %21 = call %struct.TYPE_8__* @ShmemInitStruct(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i32 %20, i32* %1)
  store %struct.TYPE_8__* %21, %struct.TYPE_8__** @MultiXactState, align 8
  %22 = load i32, i32* @IsUnderPostmaster, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %33, label %24

24:                                               ; preds = %0
  %25 = load i32, i32* %1, align 4
  %26 = icmp ne i32 %25, 0
  %27 = xor i1 %26, true
  %28 = zext i1 %27 to i32
  %29 = call i32 @Assert(i32 %28)
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** @MultiXactState, align 8
  %31 = load i32, i32* @SHARED_MULTIXACT_STATE_SIZE, align 4
  %32 = call i32 @MemSet(%struct.TYPE_8__* %30, i32 0, i32 %31)
  br label %36

33:                                               ; preds = %0
  %34 = load i32, i32* %1, align 4
  %35 = call i32 @Assert(i32 %34)
  br label %36

36:                                               ; preds = %33, %24
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** @MultiXactState, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  store i64 %39, i64* @OldestMemberMXactId, align 8
  %40 = load i64, i64* @OldestMemberMXactId, align 8
  %41 = load i64, i64* @MaxOldestSlot, align 8
  %42 = add nsw i64 %40, %41
  store i64 %42, i64* @OldestVisibleMXactId, align 8
  ret void
}

declare dso_local i32 @debug_elog2(i32, i8*) #1

declare dso_local i32 @SimpleLruInit(%struct.TYPE_7__*, i8*, i32, i32, i32, i8*, i32) #1

declare dso_local %struct.TYPE_8__* @ShmemInitStruct(i8*, i32, i32*) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @MemSet(%struct.TYPE_8__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
