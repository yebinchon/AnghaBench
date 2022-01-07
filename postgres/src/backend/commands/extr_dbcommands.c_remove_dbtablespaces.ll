; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/commands/extr_dbcommands.c_remove_dbtablespaces.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/commands/extr_dbcommands.c_remove_dbtablespaces.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }
%struct.stat = type { i32 }
%struct.TYPE_3__ = type { i64, i64 }

@TableSpaceRelationId = common dso_local global i32 0, align 4
@AccessShareLock = common dso_local global i32 0, align 4
@ForwardScanDirection = common dso_local global i32 0, align 4
@GLOBALTABLESPACE_OID = common dso_local global i64 0, align 8
@WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [69 x i8] c"some useless files may be left behind in old database directory \22%s\22\00", align 1
@RM_DBASE_ID = common dso_local global i32 0, align 4
@XLOG_DBASE_DROP = common dso_local global i32 0, align 4
@XLR_SPECIAL_REL_UPDATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @remove_dbtablespaces to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @remove_dbtablespaces(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.stat, align 4
  %10 = alloca %struct.TYPE_3__, align 8
  store i64 %0, i64* %2, align 8
  %11 = load i32, i32* @TableSpaceRelationId, align 4
  %12 = load i32, i32* @AccessShareLock, align 4
  %13 = call i32 @table_open(i32 %11, i32 %12)
  store i32 %13, i32* %3, align 4
  %14 = load i32, i32* %3, align 4
  %15 = call i32 @table_beginscan_catalog(i32 %14, i32 0, i32* null)
  store i32 %15, i32* %4, align 4
  br label %16

16:                                               ; preds = %57, %45, %32, %1
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @ForwardScanDirection, align 4
  %19 = call i32* @heap_getnext(i32 %17, i32 %18)
  store i32* %19, i32** %5, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %72

21:                                               ; preds = %16
  %22 = load i32*, i32** %5, align 8
  %23 = call i32 @GETSTRUCT(i32* %22)
  %24 = sext i32 %23 to i64
  %25 = inttoptr i64 %24 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %25, %struct.TYPE_4__** %6, align 8
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  store i64 %28, i64* %7, align 8
  %29 = load i64, i64* %7, align 8
  %30 = load i64, i64* @GLOBALTABLESPACE_OID, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %21
  br label %16

33:                                               ; preds = %21
  %34 = load i64, i64* %2, align 8
  %35 = load i64, i64* %7, align 8
  %36 = call i8* @GetDatabasePath(i64 %34, i64 %35)
  store i8* %36, i8** %8, align 8
  %37 = load i8*, i8** %8, align 8
  %38 = call i64 @lstat(i8* %37, %struct.stat* %9)
  %39 = icmp slt i64 %38, 0
  br i1 %39, label %45, label %40

40:                                               ; preds = %33
  %41 = getelementptr inbounds %struct.stat, %struct.stat* %9, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @S_ISDIR(i32 %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %40, %33
  %46 = load i8*, i8** %8, align 8
  %47 = call i32 @pfree(i8* %46)
  br label %16

48:                                               ; preds = %40
  %49 = load i8*, i8** %8, align 8
  %50 = call i32 @rmtree(i8* %49, i32 1)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %57, label %52

52:                                               ; preds = %48
  %53 = load i32, i32* @WARNING, align 4
  %54 = load i8*, i8** %8, align 8
  %55 = call i32 @errmsg(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str, i64 0, i64 0), i8* %54)
  %56 = call i32 @ereport(i32 %53, i32 %55)
  br label %57

57:                                               ; preds = %52, %48
  %58 = load i64, i64* %2, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 1
  store i64 %58, i64* %59, align 8
  %60 = load i64, i64* %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  store i64 %60, i64* %61, align 8
  %62 = call i32 (...) @XLogBeginInsert()
  %63 = bitcast %struct.TYPE_3__* %10 to i8*
  %64 = call i32 @XLogRegisterData(i8* %63, i32 16)
  %65 = load i32, i32* @RM_DBASE_ID, align 4
  %66 = load i32, i32* @XLOG_DBASE_DROP, align 4
  %67 = load i32, i32* @XLR_SPECIAL_REL_UPDATE, align 4
  %68 = or i32 %66, %67
  %69 = call i32 @XLogInsert(i32 %65, i32 %68)
  %70 = load i8*, i8** %8, align 8
  %71 = call i32 @pfree(i8* %70)
  br label %16

72:                                               ; preds = %16
  %73 = load i32, i32* %4, align 4
  %74 = call i32 @table_endscan(i32 %73)
  %75 = load i32, i32* %3, align 4
  %76 = load i32, i32* @AccessShareLock, align 4
  %77 = call i32 @table_close(i32 %75, i32 %76)
  ret void
}

declare dso_local i32 @table_open(i32, i32) #1

declare dso_local i32 @table_beginscan_catalog(i32, i32, i32*) #1

declare dso_local i32* @heap_getnext(i32, i32) #1

declare dso_local i32 @GETSTRUCT(i32*) #1

declare dso_local i8* @GetDatabasePath(i64, i64) #1

declare dso_local i64 @lstat(i8*, %struct.stat*) #1

declare dso_local i32 @S_ISDIR(i32) #1

declare dso_local i32 @pfree(i8*) #1

declare dso_local i32 @rmtree(i8*, i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errmsg(i8*, i8*) #1

declare dso_local i32 @XLogBeginInsert(...) #1

declare dso_local i32 @XLogRegisterData(i8*, i32) #1

declare dso_local i32 @XLogInsert(i32, i32) #1

declare dso_local i32 @table_endscan(i32) #1

declare dso_local i32 @table_close(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
