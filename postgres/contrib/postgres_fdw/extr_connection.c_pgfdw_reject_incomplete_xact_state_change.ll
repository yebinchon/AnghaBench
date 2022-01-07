; ModuleID = '/home/carl/AnghaBench/postgres/contrib/postgres_fdw/extr_connection.c_pgfdw_reject_incomplete_xact_state_change.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/postgres_fdw/extr_connection.c_pgfdw_reject_incomplete_xact_state_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i32* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i32 }

@USERMAPPINGOID = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"cache lookup failed for user mapping %u\00", align 1
@ERRCODE_CONNECTION_EXCEPTION = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"connection to server \22%s\22 was lost\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*)* @pgfdw_reject_incomplete_xact_state_change to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pgfdw_reject_incomplete_xact_state_change(%struct.TYPE_9__* %0) #0 {
  %2 = alloca %struct.TYPE_9__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %2, align 8
  %6 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 2
  %8 = load i32*, i32** %7, align 8
  %9 = icmp eq i32* %8, null
  br i1 %9, label %15, label %10

10:                                               ; preds = %1
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %10, %1
  br label %52

16:                                               ; preds = %10
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %18 = call i32 @disconnect_pg_server(%struct.TYPE_9__* %17)
  %19 = load i32, i32* @USERMAPPINGOID, align 4
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @ObjectIdGetDatum(i32 %22)
  %24 = call i32 @SearchSysCache1(i32 %19, i32 %23)
  store i32 %24, i32* %3, align 4
  %25 = load i32, i32* %3, align 4
  %26 = call i32 @HeapTupleIsValid(i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %34, label %28

28:                                               ; preds = %16
  %29 = load i32, i32* @ERROR, align 4
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @elog(i32 %29, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %32)
  br label %34

34:                                               ; preds = %28, %16
  %35 = load i32, i32* %3, align 4
  %36 = call i64 @GETSTRUCT(i32 %35)
  %37 = inttoptr i64 %36 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %37, %struct.TYPE_7__** %4, align 8
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call %struct.TYPE_8__* @GetForeignServer(i32 %40)
  store %struct.TYPE_8__* %41, %struct.TYPE_8__** %5, align 8
  %42 = load i32, i32* %3, align 4
  %43 = call i32 @ReleaseSysCache(i32 %42)
  %44 = load i32, i32* @ERROR, align 4
  %45 = load i32, i32* @ERRCODE_CONNECTION_EXCEPTION, align 4
  %46 = call i32 @errcode(i32 %45)
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @errmsg(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %49)
  %51 = call i32 @ereport(i32 %44, i32 %50)
  br label %52

52:                                               ; preds = %34, %15
  ret void
}

declare dso_local i32 @disconnect_pg_server(%struct.TYPE_9__*) #1

declare dso_local i32 @SearchSysCache1(i32, i32) #1

declare dso_local i32 @ObjectIdGetDatum(i32) #1

declare dso_local i32 @HeapTupleIsValid(i32) #1

declare dso_local i32 @elog(i32, i8*, i32) #1

declare dso_local i64 @GETSTRUCT(i32) #1

declare dso_local %struct.TYPE_8__* @GetForeignServer(i32) #1

declare dso_local i32 @ReleaseSysCache(i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
