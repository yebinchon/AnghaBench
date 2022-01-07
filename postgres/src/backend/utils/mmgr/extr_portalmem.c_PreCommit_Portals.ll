; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/mmgr/extr_portalmem.c_PreCommit_Portals.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/mmgr/extr_portalmem.c_PreCommit_Portals.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64, i32, i64, i32*, i32*, i32, i64 }

@PortalHashTable = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"cannot commit while a portal is pinned\00", align 1
@PORTAL_ACTIVE = common dso_local global i64 0, align 8
@CURSOR_OPT_HOLD = common dso_local global i32 0, align 4
@InvalidSubTransactionId = common dso_local global i64 0, align 8
@PORTAL_READY = common dso_local global i64 0, align 8
@ERRCODE_FEATURE_NOT_SUPPORTED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [65 x i8] c"cannot PREPARE a transaction that has created a cursor WITH HOLD\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @PreCommit_Portals(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  %7 = load i32, i32* @PortalHashTable, align 4
  %8 = call i32 @hash_seq_init(i32* %4, i32 %7)
  br label %9

9:                                                ; preds = %101, %96, %56, %1
  %10 = call i64 @hash_seq_search(i32* %4)
  %11 = inttoptr i64 %10 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %11, %struct.TYPE_5__** %5, align 8
  %12 = icmp ne %struct.TYPE_5__* %11, null
  br i1 %12, label %13, label %105

13:                                               ; preds = %9
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  store %struct.TYPE_6__* %16, %struct.TYPE_6__** %6, align 8
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 6
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %13
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 5
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %21
  %27 = load i32, i32* @ERROR, align 4
  %28 = call i32 @elog(i32 %27, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  br label %29

29:                                               ; preds = %26, %21, %13
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @PORTAL_ACTIVE, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %59

35:                                               ; preds = %29
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 4
  %38 = load i32*, i32** %37, align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %40, label %56

40:                                               ; preds = %35
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 3
  %43 = load i32*, i32** %42, align 8
  %44 = icmp ne i32* %43, null
  br i1 %44, label %45, label %53

45:                                               ; preds = %40
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 4
  %48 = load i32*, i32** %47, align 8
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 3
  %51 = load i32*, i32** %50, align 8
  %52 = call i32 @UnregisterSnapshotFromOwner(i32* %48, i32* %51)
  br label %53

53:                                               ; preds = %45, %40
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 4
  store i32* null, i32** %55, align 8
  br label %56

56:                                               ; preds = %53, %35
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 3
  store i32* null, i32** %58, align 8
  br label %9

59:                                               ; preds = %29
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @CURSOR_OPT_HOLD, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %90

66:                                               ; preds = %59
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @InvalidSubTransactionId, align 8
  %71 = icmp ne i64 %69, %70
  br i1 %71, label %72, label %90

72:                                               ; preds = %66
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @PORTAL_READY, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %90

78:                                               ; preds = %72
  %79 = load i32, i32* %2, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %87

81:                                               ; preds = %78
  %82 = load i32, i32* @ERROR, align 4
  %83 = load i32, i32* @ERRCODE_FEATURE_NOT_SUPPORTED, align 4
  %84 = call i32 @errcode(i32 %83)
  %85 = call i32 @errmsg(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.1, i64 0, i64 0))
  %86 = call i32 @ereport(i32 %82, i32 %85)
  br label %87

87:                                               ; preds = %81, %78
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %89 = call i32 @HoldPortal(%struct.TYPE_6__* %88)
  store i32 1, i32* %3, align 4
  br label %101

90:                                               ; preds = %72, %66, %59
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 2
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @InvalidSubTransactionId, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %96, label %97

96:                                               ; preds = %90
  br label %9

97:                                               ; preds = %90
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %99 = call i32 @PortalDrop(%struct.TYPE_6__* %98, i32 1)
  store i32 1, i32* %3, align 4
  br label %100

100:                                              ; preds = %97
  br label %101

101:                                              ; preds = %100, %87
  %102 = call i32 @hash_seq_term(i32* %4)
  %103 = load i32, i32* @PortalHashTable, align 4
  %104 = call i32 @hash_seq_init(i32* %4, i32 %103)
  br label %9

105:                                              ; preds = %9
  %106 = load i32, i32* %3, align 4
  ret i32 %106
}

declare dso_local i32 @hash_seq_init(i32*, i32) #1

declare dso_local i64 @hash_seq_search(i32*) #1

declare dso_local i32 @elog(i32, i8*) #1

declare dso_local i32 @UnregisterSnapshotFromOwner(i32*, i32*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*) #1

declare dso_local i32 @HoldPortal(%struct.TYPE_6__*) #1

declare dso_local i32 @PortalDrop(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @hash_seq_term(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
