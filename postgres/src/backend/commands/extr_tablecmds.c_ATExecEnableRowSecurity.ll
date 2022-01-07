; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/commands/extr_tablecmds.c_ATExecEnableRowSecurity.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/commands/extr_tablecmds.c_ATExecEnableRowSecurity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { i32 }

@RelationRelationId = common dso_local global i32 0, align 4
@RowExclusiveLock = common dso_local global i32 0, align 4
@RELOID = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"cache lookup failed for relation %u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @ATExecEnableRowSecurity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ATExecEnableRowSecurity(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_8__*, align 8
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = call i32 @RelationGetRelid(i32 %6)
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* @RelationRelationId, align 4
  %9 = load i32, i32* @RowExclusiveLock, align 4
  %10 = call i32 @table_open(i32 %8, i32 %9)
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* @RELOID, align 4
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @ObjectIdGetDatum(i32 %12)
  %14 = call %struct.TYPE_8__* @SearchSysCacheCopy1(i32 %11, i32 %13)
  store %struct.TYPE_8__* %14, %struct.TYPE_8__** %5, align 8
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %16 = call i32 @HeapTupleIsValid(%struct.TYPE_8__* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %1
  %19 = load i32, i32* @ERROR, align 4
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @elog(i32 %19, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %20)
  br label %22

22:                                               ; preds = %18, %1
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %24 = call i64 @GETSTRUCT(%struct.TYPE_8__* %23)
  %25 = inttoptr i64 %24 to %struct.TYPE_9__*
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 0
  store i32 1, i32* %26, align 4
  %27 = load i32, i32* %3, align 4
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %31 = call i32 @CatalogTupleUpdate(i32 %27, i32* %29, %struct.TYPE_8__* %30)
  %32 = load i32, i32* %3, align 4
  %33 = load i32, i32* @RowExclusiveLock, align 4
  %34 = call i32 @table_close(i32 %32, i32 %33)
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %36 = call i32 @heap_freetuple(%struct.TYPE_8__* %35)
  ret void
}

declare dso_local i32 @RelationGetRelid(i32) #1

declare dso_local i32 @table_open(i32, i32) #1

declare dso_local %struct.TYPE_8__* @SearchSysCacheCopy1(i32, i32) #1

declare dso_local i32 @ObjectIdGetDatum(i32) #1

declare dso_local i32 @HeapTupleIsValid(%struct.TYPE_8__*) #1

declare dso_local i32 @elog(i32, i8*, i32) #1

declare dso_local i64 @GETSTRUCT(%struct.TYPE_8__*) #1

declare dso_local i32 @CatalogTupleUpdate(i32, i32*, %struct.TYPE_8__*) #1

declare dso_local i32 @table_close(i32, i32) #1

declare dso_local i32 @heap_freetuple(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
