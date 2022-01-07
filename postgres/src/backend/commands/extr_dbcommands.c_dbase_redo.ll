; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/commands/extr_dbcommands.c_dbase_redo.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/commands/extr_dbcommands.c_dbase_redo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32 }
%struct.stat = type { i32 }
%struct.TYPE_3__ = type { i32, i32 }

@XLR_INFO_MASK = common dso_local global i64 0, align 8
@XLOG_DBASE_CREATE = common dso_local global i64 0, align 8
@WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [69 x i8] c"some useless files may be left behind in old database directory \22%s\22\00", align 1
@XLOG_DBASE_DROP = common dso_local global i64 0, align 8
@InHotStandby = common dso_local global i64 0, align 8
@DatabaseRelationId = common dso_local global i32 0, align 4
@AccessExclusiveLock = common dso_local global i32 0, align 4
@PANIC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"dbase_redo: unknown op code %u\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dbase_redo(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.stat, align 4
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca i8*, align 8
  store i32* %0, i32** %2, align 8
  %10 = load i32*, i32** %2, align 8
  %11 = call i64 @XLogRecGetInfo(i32* %10)
  %12 = load i64, i64* @XLR_INFO_MASK, align 8
  %13 = xor i64 %12, -1
  %14 = and i64 %11, %13
  store i64 %14, i64* %3, align 8
  %15 = load i32*, i32** %2, align 8
  %16 = call i32 @XLogRecHasAnyBlockRefs(i32* %15)
  %17 = icmp ne i32 %16, 0
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  %20 = call i32 @Assert(i32 %19)
  %21 = load i64, i64* %3, align 8
  %22 = load i64, i64* @XLOG_DBASE_CREATE, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %68

24:                                               ; preds = %1
  %25 = load i32*, i32** %2, align 8
  %26 = call i64 @XLogRecGetData(i32* %25)
  %27 = inttoptr i64 %26 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %27, %struct.TYPE_4__** %4, align 8
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = call i8* @GetDatabasePath(i32 %30, i32 %33)
  store i8* %34, i8** %5, align 8
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i8* @GetDatabasePath(i32 %37, i32 %40)
  store i8* %41, i8** %6, align 8
  %42 = load i8*, i8** %6, align 8
  %43 = call i64 @stat(i8* %42, %struct.stat* %7)
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %60

45:                                               ; preds = %24
  %46 = getelementptr inbounds %struct.stat, %struct.stat* %7, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i64 @S_ISDIR(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %60

50:                                               ; preds = %45
  %51 = load i8*, i8** %6, align 8
  %52 = call i32 @rmtree(i8* %51, i32 1)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %59, label %54

54:                                               ; preds = %50
  %55 = load i32, i32* @WARNING, align 4
  %56 = load i8*, i8** %6, align 8
  %57 = call i32 @errmsg(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str, i64 0, i64 0), i8* %56)
  %58 = call i32 @ereport(i32 %55, i32 %57)
  br label %59

59:                                               ; preds = %54, %50
  br label %60

60:                                               ; preds = %59, %45, %24
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @FlushDatabaseBuffers(i32 %63)
  %65 = load i8*, i8** %5, align 8
  %66 = load i8*, i8** %6, align 8
  %67 = call i32 @copydir(i8* %65, i8* %66, i32 0)
  br label %137

68:                                               ; preds = %1
  %69 = load i64, i64* %3, align 8
  %70 = load i64, i64* @XLOG_DBASE_DROP, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %132

72:                                               ; preds = %68
  %73 = load i32*, i32** %2, align 8
  %74 = call i64 @XLogRecGetData(i32* %73)
  %75 = inttoptr i64 %74 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %75, %struct.TYPE_3__** %8, align 8
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = call i8* @GetDatabasePath(i32 %78, i32 %81)
  store i8* %82, i8** %9, align 8
  %83 = load i64, i64* @InHotStandby, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %96

85:                                               ; preds = %72
  %86 = load i32, i32* @DatabaseRelationId, align 4
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @AccessExclusiveLock, align 4
  %91 = call i32 @LockSharedObjectForSession(i32 %86, i32 %89, i32 0, i32 %90)
  %92 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @ResolveRecoveryConflictWithDatabase(i32 %94)
  br label %96

96:                                               ; preds = %85, %72
  %97 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @ReplicationSlotsDropDBSlots(i32 %99)
  %101 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @DropDatabaseBuffers(i32 %103)
  %105 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @ForgetDatabaseSyncRequests(i32 %107)
  %109 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @XLogDropDatabase(i32 %111)
  %113 = load i8*, i8** %9, align 8
  %114 = call i32 @rmtree(i8* %113, i32 1)
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %121, label %116

116:                                              ; preds = %96
  %117 = load i32, i32* @WARNING, align 4
  %118 = load i8*, i8** %9, align 8
  %119 = call i32 @errmsg(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str, i64 0, i64 0), i8* %118)
  %120 = call i32 @ereport(i32 %117, i32 %119)
  br label %121

121:                                              ; preds = %116, %96
  %122 = load i64, i64* @InHotStandby, align 8
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %131

124:                                              ; preds = %121
  %125 = load i32, i32* @DatabaseRelationId, align 4
  %126 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %127 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = load i32, i32* @AccessExclusiveLock, align 4
  %130 = call i32 @UnlockSharedObjectForSession(i32 %125, i32 %128, i32 0, i32 %129)
  br label %131

131:                                              ; preds = %124, %121
  br label %136

132:                                              ; preds = %68
  %133 = load i32, i32* @PANIC, align 4
  %134 = load i64, i64* %3, align 8
  %135 = call i32 @elog(i32 %133, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i64 %134)
  br label %136

136:                                              ; preds = %132, %131
  br label %137

137:                                              ; preds = %136, %60
  ret void
}

declare dso_local i64 @XLogRecGetInfo(i32*) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @XLogRecHasAnyBlockRefs(i32*) #1

declare dso_local i64 @XLogRecGetData(i32*) #1

declare dso_local i8* @GetDatabasePath(i32, i32) #1

declare dso_local i64 @stat(i8*, %struct.stat*) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i32 @rmtree(i8*, i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errmsg(i8*, i8*) #1

declare dso_local i32 @FlushDatabaseBuffers(i32) #1

declare dso_local i32 @copydir(i8*, i8*, i32) #1

declare dso_local i32 @LockSharedObjectForSession(i32, i32, i32, i32) #1

declare dso_local i32 @ResolveRecoveryConflictWithDatabase(i32) #1

declare dso_local i32 @ReplicationSlotsDropDBSlots(i32) #1

declare dso_local i32 @DropDatabaseBuffers(i32) #1

declare dso_local i32 @ForgetDatabaseSyncRequests(i32) #1

declare dso_local i32 @XLogDropDatabase(i32) #1

declare dso_local i32 @UnlockSharedObjectForSession(i32, i32, i32, i32) #1

declare dso_local i32 @elog(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
