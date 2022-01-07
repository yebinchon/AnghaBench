; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/cache/extr_relmapper.c_RestoreRelationMap.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/cache/extr_relmapper.c_RestoreRelationMap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64 }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_6__ = type { %struct.TYPE_10__, %struct.TYPE_9__ }

@active_shared_updates = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@active_local_updates = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@pending_shared_updates = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@pending_local_updates = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"parallel worker has existing mappings\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @RestoreRelationMap(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_6__*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @active_shared_updates, i32 0, i32 0), align 8
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %15, label %6

6:                                                ; preds = %1
  %7 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @active_local_updates, i32 0, i32 0), align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %15, label %9

9:                                                ; preds = %6
  %10 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @pending_shared_updates, i32 0, i32 0), align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %9
  %13 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @pending_local_updates, i32 0, i32 0), align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %12, %9, %6, %1
  %16 = load i32, i32* @ERROR, align 4
  %17 = call i32 @elog(i32 %16, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  br label %18

18:                                               ; preds = %15, %12
  %19 = load i8*, i8** %2, align 8
  %20 = bitcast i8* %19 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %20, %struct.TYPE_6__** %3, align 8
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 1
  %23 = bitcast %struct.TYPE_9__* %22 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 bitcast (%struct.TYPE_9__* @active_shared_updates to i8*), i8* align 8 %23, i64 8, i1 false)
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = bitcast %struct.TYPE_10__* %25 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 bitcast (%struct.TYPE_10__* @active_local_updates to i8*), i8* align 8 %26, i64 8, i1 false)
  ret void
}

declare dso_local i32 @elog(i32, i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
