; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/cache/extr_relmapper.c_AtEOXact_RelationMap.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/cache/extr_relmapper.c_AtEOXact_RelationMap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64 }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_6__ = type { i64 }

@pending_shared_updates = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@pending_local_updates = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@active_shared_updates = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@active_local_updates = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @AtEOXact_RelationMap(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %3, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %29

7:                                                ; preds = %2
  %8 = load i32, i32* %4, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %29, label %10

10:                                               ; preds = %7
  %11 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @pending_shared_updates, i32 0, i32 0), align 8
  %12 = icmp eq i64 %11, 0
  %13 = zext i1 %12 to i32
  %14 = call i32 @Assert(i32 %13)
  %15 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @pending_local_updates, i32 0, i32 0), align 8
  %16 = icmp eq i64 %15, 0
  %17 = zext i1 %16 to i32
  %18 = call i32 @Assert(i32 %17)
  %19 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @active_shared_updates, i32 0, i32 0), align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %10
  %22 = call i32 @perform_relmap_update(i32 1, %struct.TYPE_6__* @active_shared_updates)
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @active_shared_updates, i32 0, i32 0), align 8
  br label %23

23:                                               ; preds = %21, %10
  %24 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @active_local_updates, i32 0, i32 0), align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %23
  %27 = call i32 @perform_relmap_update(i32 0, %struct.TYPE_6__* @active_local_updates)
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @active_local_updates, i32 0, i32 0), align 8
  br label %28

28:                                               ; preds = %26, %23
  br label %48

29:                                               ; preds = %7, %2
  %30 = load i32, i32* %4, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %29
  %33 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @pending_shared_updates, i32 0, i32 0), align 8
  %34 = icmp eq i64 %33, 0
  br label %35

35:                                               ; preds = %32, %29
  %36 = phi i1 [ true, %29 ], [ %34, %32 ]
  %37 = zext i1 %36 to i32
  %38 = call i32 @Assert(i32 %37)
  %39 = load i32, i32* %4, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %35
  %42 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @pending_local_updates, i32 0, i32 0), align 8
  %43 = icmp eq i64 %42, 0
  br label %44

44:                                               ; preds = %41, %35
  %45 = phi i1 [ true, %35 ], [ %43, %41 ]
  %46 = zext i1 %45 to i32
  %47 = call i32 @Assert(i32 %46)
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @active_shared_updates, i32 0, i32 0), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @active_local_updates, i32 0, i32 0), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @pending_shared_updates, i32 0, i32 0), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @pending_local_updates, i32 0, i32 0), align 8
  br label %48

48:                                               ; preds = %44, %28
  ret void
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @perform_relmap_update(i32, %struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
