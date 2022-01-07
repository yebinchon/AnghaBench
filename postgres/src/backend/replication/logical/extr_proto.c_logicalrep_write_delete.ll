; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/replication/logical/extr_proto.c_logicalrep_write_delete.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/replication/logical/extr_proto.c_logicalrep_write_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 }

@REPLICA_IDENTITY_DEFAULT = common dso_local global i64 0, align 8
@REPLICA_IDENTITY_FULL = common dso_local global i64 0, align 8
@REPLICA_IDENTITY_INDEX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @logicalrep_write_delete(i32 %0, %struct.TYPE_7__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %8 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @REPLICA_IDENTITY_DEFAULT, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %30, label %14

14:                                               ; preds = %3
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @REPLICA_IDENTITY_FULL, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %30, label %22

22:                                               ; preds = %14
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @REPLICA_IDENTITY_INDEX, align 8
  %29 = icmp eq i64 %27, %28
  br label %30

30:                                               ; preds = %22, %14, %3
  %31 = phi i1 [ true, %14 ], [ true, %3 ], [ %29, %22 ]
  %32 = zext i1 %31 to i32
  %33 = call i32 @Assert(i32 %32)
  %34 = load i32, i32* %4, align 4
  %35 = call i32 @pq_sendbyte(i32 %34, i8 signext 68)
  %36 = load i32, i32* %4, align 4
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %38 = call i32 @RelationGetRelid(%struct.TYPE_7__* %37)
  %39 = call i32 @pq_sendint32(i32 %36, i32 %38)
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @REPLICA_IDENTITY_FULL, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %30
  %48 = load i32, i32* %4, align 4
  %49 = call i32 @pq_sendbyte(i32 %48, i8 signext 79)
  br label %53

50:                                               ; preds = %30
  %51 = load i32, i32* %4, align 4
  %52 = call i32 @pq_sendbyte(i32 %51, i8 signext 75)
  br label %53

53:                                               ; preds = %50, %47
  %54 = load i32, i32* %4, align 4
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %56 = load i32, i32* %6, align 4
  %57 = call i32 @logicalrep_write_tuple(i32 %54, %struct.TYPE_7__* %55, i32 %56)
  ret void
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @pq_sendbyte(i32, i8 signext) #1

declare dso_local i32 @pq_sendint32(i32, i32) #1

declare dso_local i32 @RelationGetRelid(%struct.TYPE_7__*) #1

declare dso_local i32 @logicalrep_write_tuple(i32, %struct.TYPE_7__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
