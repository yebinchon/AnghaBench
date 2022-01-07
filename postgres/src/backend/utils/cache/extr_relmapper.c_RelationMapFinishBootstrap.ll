; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/cache/extr_relmapper.c_RelationMapFinishBootstrap.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/cache/extr_relmapper.c_RelationMapFinishBootstrap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64 }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_6__ = type { i64 }

@active_shared_updates = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@active_local_updates = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@pending_shared_updates = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@pending_local_updates = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@shared_map = common dso_local global i32 0, align 4
@InvalidOid = common dso_local global i32 0, align 4
@GLOBALTABLESPACE_OID = common dso_local global i32 0, align 4
@local_map = common dso_local global i32 0, align 4
@MyDatabaseId = common dso_local global i32 0, align 4
@MyDatabaseTableSpace = common dso_local global i32 0, align 4
@DatabasePath = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @RelationMapFinishBootstrap() #0 {
  %1 = call i32 (...) @IsBootstrapProcessingMode()
  %2 = call i32 @Assert(i32 %1)
  %3 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @active_shared_updates, i32 0, i32 0), align 8
  %4 = icmp eq i64 %3, 0
  %5 = zext i1 %4 to i32
  %6 = call i32 @Assert(i32 %5)
  %7 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @active_local_updates, i32 0, i32 0), align 8
  %8 = icmp eq i64 %7, 0
  %9 = zext i1 %8 to i32
  %10 = call i32 @Assert(i32 %9)
  %11 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @pending_shared_updates, i32 0, i32 0), align 8
  %12 = icmp eq i64 %11, 0
  %13 = zext i1 %12 to i32
  %14 = call i32 @Assert(i32 %13)
  %15 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @pending_local_updates, i32 0, i32 0), align 8
  %16 = icmp eq i64 %15, 0
  %17 = zext i1 %16 to i32
  %18 = call i32 @Assert(i32 %17)
  %19 = load i32, i32* @InvalidOid, align 4
  %20 = load i32, i32* @GLOBALTABLESPACE_OID, align 4
  %21 = call i32 @write_relmap_file(i32 1, i32* @shared_map, i32 0, i32 0, i32 0, i32 %19, i32 %20, i32* null)
  %22 = load i32, i32* @MyDatabaseId, align 4
  %23 = load i32, i32* @MyDatabaseTableSpace, align 4
  %24 = load i32*, i32** @DatabasePath, align 8
  %25 = call i32 @write_relmap_file(i32 0, i32* @local_map, i32 0, i32 0, i32 0, i32 %22, i32 %23, i32* %24)
  ret void
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @IsBootstrapProcessingMode(...) #1

declare dso_local i32 @write_relmap_file(i32, i32*, i32, i32, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
