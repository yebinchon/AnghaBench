; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/replication/logical/extr_proto.c_logicalrep_write_update.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/replication/logical/extr_proto.c_logicalrep_write_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 }

@REPLICA_IDENTITY_DEFAULT = common dso_local global i64 0, align 8
@REPLICA_IDENTITY_FULL = common dso_local global i64 0, align 8
@REPLICA_IDENTITY_INDEX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @logicalrep_write_update(i32 %0, %struct.TYPE_7__* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  store i32 %0, i32* %5, align 4
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %9 = load i32, i32* %5, align 4
  %10 = call i32 @pq_sendbyte(i32 %9, i8 signext 85)
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @REPLICA_IDENTITY_DEFAULT, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %34, label %18

18:                                               ; preds = %4
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @REPLICA_IDENTITY_FULL, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %34, label %26

26:                                               ; preds = %18
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @REPLICA_IDENTITY_INDEX, align 8
  %33 = icmp eq i64 %31, %32
  br label %34

34:                                               ; preds = %26, %18, %4
  %35 = phi i1 [ true, %18 ], [ true, %4 ], [ %33, %26 ]
  %36 = zext i1 %35 to i32
  %37 = call i32 @Assert(i32 %36)
  %38 = load i32, i32* %5, align 4
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %40 = call i32 @RelationGetRelid(%struct.TYPE_7__* %39)
  %41 = call i32 @pq_sendint32(i32 %38, i32 %40)
  %42 = load i32*, i32** %7, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %44, label %63

44:                                               ; preds = %34
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @REPLICA_IDENTITY_FULL, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %44
  %53 = load i32, i32* %5, align 4
  %54 = call i32 @pq_sendbyte(i32 %53, i8 signext 79)
  br label %58

55:                                               ; preds = %44
  %56 = load i32, i32* %5, align 4
  %57 = call i32 @pq_sendbyte(i32 %56, i8 signext 75)
  br label %58

58:                                               ; preds = %55, %52
  %59 = load i32, i32* %5, align 4
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %61 = load i32*, i32** %7, align 8
  %62 = call i32 @logicalrep_write_tuple(i32 %59, %struct.TYPE_7__* %60, i32* %61)
  br label %63

63:                                               ; preds = %58, %34
  %64 = load i32, i32* %5, align 4
  %65 = call i32 @pq_sendbyte(i32 %64, i8 signext 78)
  %66 = load i32, i32* %5, align 4
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %68 = load i32*, i32** %8, align 8
  %69 = call i32 @logicalrep_write_tuple(i32 %66, %struct.TYPE_7__* %67, i32* %68)
  ret void
}

declare dso_local i32 @pq_sendbyte(i32, i8 signext) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @pq_sendint32(i32, i32) #1

declare dso_local i32 @RelationGetRelid(%struct.TYPE_7__*) #1

declare dso_local i32 @logicalrep_write_tuple(i32, %struct.TYPE_7__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
