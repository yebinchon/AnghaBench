; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/nbtree/extr_nbtsearch.c__bt_moveright.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/nbtree/extr_nbtsearch.c__bt_moveright.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64 }
%struct.TYPE_9__ = type { i32 }

@BT_READ = common dso_local global i32 0, align 4
@BUFFER_LOCK_UNLOCK = common dso_local global i32 0, align 4
@BT_WRITE = common dso_local global i32 0, align 4
@P_HIKEY = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"fell off the end of index \22%s\22\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_bt_moveright(i32 %0, %struct.TYPE_8__* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_8__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_9__*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  %23 = zext i1 %22 to i64
  %24 = select i1 %22, i32 0, i32 1
  store i32 %24, i32* %17, align 4
  br label %25

25:                                               ; preds = %89, %72, %7
  %26 = load i32, i32* %10, align 4
  %27 = call i32 @BufferGetPage(i32 %26)
  store i32 %27, i32* %15, align 4
  %28 = load i32, i32* %14, align 4
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* %15, align 4
  %31 = call i32 @TestForOldSnapshot(i32 %28, i32 %29, i32 %30)
  %32 = load i32, i32* %15, align 4
  %33 = call i64 @PageGetSpecialPointer(i32 %32)
  %34 = inttoptr i64 %33 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %34, %struct.TYPE_9__** %16, align 8
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %36 = call i64 @P_RIGHTMOST(%struct.TYPE_9__* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %25
  br label %98

39:                                               ; preds = %25
  %40 = load i32, i32* %11, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %77

42:                                               ; preds = %39
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %44 = call i64 @P_INCOMPLETE_SPLIT(%struct.TYPE_9__* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %77

46:                                               ; preds = %42
  %47 = load i32, i32* %10, align 4
  %48 = call i32 @BufferGetBlockNumber(i32 %47)
  store i32 %48, i32* %18, align 4
  %49 = load i32, i32* %13, align 4
  %50 = load i32, i32* @BT_READ, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %59

52:                                               ; preds = %46
  %53 = load i32, i32* %10, align 4
  %54 = load i32, i32* @BUFFER_LOCK_UNLOCK, align 4
  %55 = call i32 @LockBuffer(i32 %53, i32 %54)
  %56 = load i32, i32* %10, align 4
  %57 = load i32, i32* @BT_WRITE, align 4
  %58 = call i32 @LockBuffer(i32 %56, i32 %57)
  br label %59

59:                                               ; preds = %52, %46
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %61 = call i64 @P_INCOMPLETE_SPLIT(%struct.TYPE_9__* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %59
  %64 = load i32, i32* %8, align 4
  %65 = load i32, i32* %10, align 4
  %66 = load i32, i32* %12, align 4
  %67 = call i32 @_bt_finish_split(i32 %64, i32 %65, i32 %66)
  br label %72

68:                                               ; preds = %59
  %69 = load i32, i32* %8, align 4
  %70 = load i32, i32* %10, align 4
  %71 = call i32 @_bt_relbuf(i32 %69, i32 %70)
  br label %72

72:                                               ; preds = %68, %63
  %73 = load i32, i32* %8, align 4
  %74 = load i32, i32* %18, align 4
  %75 = load i32, i32* %13, align 4
  %76 = call i32 @_bt_getbuf(i32 %73, i32 %74, i32 %75)
  store i32 %76, i32* %10, align 4
  br label %25

77:                                               ; preds = %42, %39
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %79 = call i64 @P_IGNORE(%struct.TYPE_9__* %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %89, label %81

81:                                               ; preds = %77
  %82 = load i32, i32* %8, align 4
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %84 = load i32, i32* %15, align 4
  %85 = load i32, i32* @P_HIKEY, align 4
  %86 = call i32 @_bt_compare(i32 %82, %struct.TYPE_8__* %83, i32 %84, i32 %85)
  %87 = load i32, i32* %17, align 4
  %88 = icmp sge i32 %86, %87
  br i1 %88, label %89, label %97

89:                                               ; preds = %81, %77
  %90 = load i32, i32* %8, align 4
  %91 = load i32, i32* %10, align 4
  %92 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* %13, align 4
  %96 = call i32 @_bt_relandgetbuf(i32 %90, i32 %91, i32 %94, i32 %95)
  store i32 %96, i32* %10, align 4
  br label %25

97:                                               ; preds = %81
  br label %98

98:                                               ; preds = %97, %38
  %99 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %100 = call i64 @P_IGNORE(%struct.TYPE_9__* %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %107

102:                                              ; preds = %98
  %103 = load i32, i32* @ERROR, align 4
  %104 = load i32, i32* %8, align 4
  %105 = call i32 @RelationGetRelationName(i32 %104)
  %106 = call i32 @elog(i32 %103, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %105)
  br label %107

107:                                              ; preds = %102, %98
  %108 = load i32, i32* %10, align 4
  ret i32 %108
}

declare dso_local i32 @BufferGetPage(i32) #1

declare dso_local i32 @TestForOldSnapshot(i32, i32, i32) #1

declare dso_local i64 @PageGetSpecialPointer(i32) #1

declare dso_local i64 @P_RIGHTMOST(%struct.TYPE_9__*) #1

declare dso_local i64 @P_INCOMPLETE_SPLIT(%struct.TYPE_9__*) #1

declare dso_local i32 @BufferGetBlockNumber(i32) #1

declare dso_local i32 @LockBuffer(i32, i32) #1

declare dso_local i32 @_bt_finish_split(i32, i32, i32) #1

declare dso_local i32 @_bt_relbuf(i32, i32) #1

declare dso_local i32 @_bt_getbuf(i32, i32, i32) #1

declare dso_local i64 @P_IGNORE(%struct.TYPE_9__*) #1

declare dso_local i32 @_bt_compare(i32, %struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @_bt_relandgetbuf(i32, i32, i32, i32) #1

declare dso_local i32 @elog(i32, i8*, i32) #1

declare dso_local i32 @RelationGetRelationName(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
