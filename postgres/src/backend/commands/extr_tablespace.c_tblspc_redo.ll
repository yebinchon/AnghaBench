; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/commands/extr_tablespace.c_tblspc_redo.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/commands/extr_tablespace.c_tblspc_redo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i32 }
%struct.TYPE_3__ = type { i32 }

@XLR_INFO_MASK = common dso_local global i64 0, align 8
@XLOG_TBLSPC_CREATE = common dso_local global i64 0, align 8
@XLOG_TBLSPC_DROP = common dso_local global i64 0, align 8
@LOG = common dso_local global i32 0, align 4
@ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"directories for tablespace %u could not be removed\00", align 1
@.str.1 = private unnamed_addr constant [54 x i8] c"You can remove the directories manually if necessary.\00", align 1
@PANIC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"tblspc_redo: unknown op code %u\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tblspc_redo(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  store i32* %0, i32** %2, align 8
  %7 = load i32*, i32** %2, align 8
  %8 = call i64 @XLogRecGetInfo(i32* %7)
  %9 = load i64, i64* @XLR_INFO_MASK, align 8
  %10 = xor i64 %9, -1
  %11 = and i64 %8, %10
  store i64 %11, i64* %3, align 8
  %12 = load i32*, i32** %2, align 8
  %13 = call i32 @XLogRecHasAnyBlockRefs(i32* %12)
  %14 = icmp ne i32 %13, 0
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i32
  %17 = call i32 @Assert(i32 %16)
  %18 = load i64, i64* %3, align 8
  %19 = load i64, i64* @XLOG_TBLSPC_CREATE, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %33

21:                                               ; preds = %1
  %22 = load i32*, i32** %2, align 8
  %23 = call i64 @XLogRecGetData(i32* %22)
  %24 = inttoptr i64 %23 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %24, %struct.TYPE_4__** %4, align 8
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  store i8* %27, i8** %5, align 8
  %28 = load i8*, i8** %5, align 8
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @create_tablespace_directories(i8* %28, i32 %31)
  br label %73

33:                                               ; preds = %1
  %34 = load i64, i64* %3, align 8
  %35 = load i64, i64* @XLOG_TBLSPC_DROP, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %68

37:                                               ; preds = %33
  %38 = load i32*, i32** %2, align 8
  %39 = call i64 @XLogRecGetData(i32* %38)
  %40 = inttoptr i64 %39 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %40, %struct.TYPE_3__** %6, align 8
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @destroy_tablespace_directories(i32 %43, i32 1)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %67, label %46

46:                                               ; preds = %37
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @ResolveRecoveryConflictWithTablespace(i32 %49)
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @destroy_tablespace_directories(i32 %53, i32 1)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %66, label %56

56:                                               ; preds = %46
  %57 = load i32, i32* @LOG, align 4
  %58 = load i32, i32* @ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE, align 4
  %59 = call i32 @errcode(i32 %58)
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @errmsg(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %62)
  %64 = call i32 @errhint(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0))
  %65 = call i32 @ereport(i32 %57, i32 %64)
  br label %66

66:                                               ; preds = %56, %46
  br label %67

67:                                               ; preds = %66, %37
  br label %72

68:                                               ; preds = %33
  %69 = load i32, i32* @PANIC, align 4
  %70 = load i64, i64* %3, align 8
  %71 = call i32 @elog(i32 %69, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i64 %70)
  br label %72

72:                                               ; preds = %68, %67
  br label %73

73:                                               ; preds = %72, %21
  ret void
}

declare dso_local i64 @XLogRecGetInfo(i32*) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @XLogRecHasAnyBlockRefs(i32*) #1

declare dso_local i64 @XLogRecGetData(i32*) #1

declare dso_local i32 @create_tablespace_directories(i8*, i32) #1

declare dso_local i32 @destroy_tablespace_directories(i32, i32) #1

declare dso_local i32 @ResolveRecoveryConflictWithTablespace(i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i32) #1

declare dso_local i32 @errhint(i8*) #1

declare dso_local i32 @elog(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
