; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/replication/extr_slotfuncs.c_create_physical_replication_slot.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/replication/extr_slotfuncs.c_create_physical_replication_slot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@MyReplicationSlot = common dso_local global %struct.TYPE_4__* null, align 8
@RS_TEMPORARY = common dso_local global i32 0, align 4
@RS_PERSISTENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i32, i32)* @create_physical_replication_slot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @create_physical_replication_slot(i8* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** @MyReplicationSlot, align 8
  %10 = icmp ne %struct.TYPE_4__* %9, null
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i32
  %13 = call i32 @Assert(i32 %12)
  %14 = load i8*, i8** %5, align 8
  %15 = load i32, i32* %7, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %4
  %18 = load i32, i32* @RS_TEMPORARY, align 4
  br label %21

19:                                               ; preds = %4
  %20 = load i32, i32* @RS_PERSISTENT, align 4
  br label %21

21:                                               ; preds = %19, %17
  %22 = phi i32 [ %18, %17 ], [ %20, %19 ]
  %23 = call i32 @ReplicationSlotCreate(i8* %14, i32 0, i32 %22)
  %24 = load i32, i32* %6, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %40

26:                                               ; preds = %21
  %27 = load i32, i32* %8, align 4
  %28 = call i64 @XLogRecPtrIsInvalid(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %26
  %31 = call i32 (...) @ReplicationSlotReserveWal()
  br label %37

32:                                               ; preds = %26
  %33 = load i32, i32* %8, align 4
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** @MyReplicationSlot, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  store i32 %33, i32* %36, align 4
  br label %37

37:                                               ; preds = %32, %30
  %38 = call i32 (...) @ReplicationSlotMarkDirty()
  %39 = call i32 (...) @ReplicationSlotSave()
  br label %40

40:                                               ; preds = %37, %21
  ret void
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @ReplicationSlotCreate(i8*, i32, i32) #1

declare dso_local i64 @XLogRecPtrIsInvalid(i32) #1

declare dso_local i32 @ReplicationSlotReserveWal(...) #1

declare dso_local i32 @ReplicationSlotMarkDirty(...) #1

declare dso_local i32 @ReplicationSlotSave(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
