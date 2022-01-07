; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/replication/logical/extr_proto.c_logicalrep_write_insert.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/replication/logical/extr_proto.c_logicalrep_write_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 }

@REPLICA_IDENTITY_DEFAULT = common dso_local global i64 0, align 8
@REPLICA_IDENTITY_FULL = common dso_local global i64 0, align 8
@REPLICA_IDENTITY_INDEX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @logicalrep_write_insert(i32 %0, %struct.TYPE_7__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %4, align 4
  %8 = call i32 @pq_sendbyte(i32 %7, i8 signext 73)
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @REPLICA_IDENTITY_DEFAULT, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %32, label %16

16:                                               ; preds = %3
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @REPLICA_IDENTITY_FULL, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %32, label %24

24:                                               ; preds = %16
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @REPLICA_IDENTITY_INDEX, align 8
  %31 = icmp eq i64 %29, %30
  br label %32

32:                                               ; preds = %24, %16, %3
  %33 = phi i1 [ true, %16 ], [ true, %3 ], [ %31, %24 ]
  %34 = zext i1 %33 to i32
  %35 = call i32 @Assert(i32 %34)
  %36 = load i32, i32* %4, align 4
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %38 = call i32 @RelationGetRelid(%struct.TYPE_7__* %37)
  %39 = call i32 @pq_sendint32(i32 %36, i32 %38)
  %40 = load i32, i32* %4, align 4
  %41 = call i32 @pq_sendbyte(i32 %40, i8 signext 78)
  %42 = load i32, i32* %4, align 4
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @logicalrep_write_tuple(i32 %42, %struct.TYPE_7__* %43, i32 %44)
  ret void
}

declare dso_local i32 @pq_sendbyte(i32, i8 signext) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @pq_sendint32(i32, i32) #1

declare dso_local i32 @RelationGetRelid(%struct.TYPE_7__*) #1

declare dso_local i32 @logicalrep_write_tuple(i32, %struct.TYPE_7__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
