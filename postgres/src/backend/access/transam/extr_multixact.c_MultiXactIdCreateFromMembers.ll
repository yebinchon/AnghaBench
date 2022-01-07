; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_multixact.c_MultiXactIdCreateFromMembers.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_multixact.c_MultiXactIdCreateFromMembers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32, i32, i32 }

@DEBUG2 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"Create: %s\00", align 1
@InvalidMultiXactId = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"Create: in cache!\00", align 1
@ERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [48 x i8] c"new multixact has more than one updating member\00", align 1
@SizeOfMultiXactCreate = common dso_local global i32 0, align 4
@RM_MULTIXACT_ID = common dso_local global i32 0, align 4
@XLOG_MULTIXACT_CREATE_ID = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [17 x i8] c"Create: all done\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @MultiXactIdCreateFromMembers(i32 %0, %struct.TYPE_9__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_8__, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %5, align 8
  %11 = load i32, i32* @DEBUG2, align 4
  %12 = load i32, i32* @InvalidMultiXactId, align 4
  %13 = load i32, i32* %4, align 4
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %15 = call i32 @mxid_to_string(i32 %12, i32 %13, %struct.TYPE_9__* %14)
  %16 = call i32 @debug_elog3(i32 %11, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = load i32, i32* %4, align 4
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %19 = call i32 @mXactCacheGetBySet(i32 %17, %struct.TYPE_9__* %18)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = call i64 @MultiXactIdIsValid(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %2
  %24 = load i32, i32* @DEBUG2, align 4
  %25 = call i32 @debug_elog2(i32 %24, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %26 = load i32, i32* %6, align 4
  store i32 %26, i32* %3, align 4
  br label %88

27:                                               ; preds = %2
  store i32 0, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %28

28:                                               ; preds = %49, %27
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* %4, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %52

32:                                               ; preds = %28
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %34 = load i32, i32* %9, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i64 @ISUPDATE_from_mxstatus(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %32
  %42 = load i32, i32* %10, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %41
  %45 = load i32, i32* @ERROR, align 4
  %46 = call i32 @elog(i32 %45, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0))
  br label %47

47:                                               ; preds = %44, %41
  store i32 1, i32* %10, align 4
  br label %48

48:                                               ; preds = %47, %32
  br label %49

49:                                               ; preds = %48
  %50 = load i32, i32* %9, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %9, align 4
  br label %28

52:                                               ; preds = %28
  %53 = load i32, i32* %4, align 4
  %54 = call i32 @GetNewMultiXactId(i32 %53, i32* %7)
  store i32 %54, i32* %6, align 4
  %55 = load i32, i32* %6, align 4
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 2
  store i32 %55, i32* %56, align 4
  %57 = load i32, i32* %7, align 4
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 1
  store i32 %57, i32* %58, align 4
  %59 = load i32, i32* %4, align 4
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  store i32 %59, i32* %60, align 4
  %61 = call i32 (...) @XLogBeginInsert()
  %62 = bitcast %struct.TYPE_8__* %8 to i8*
  %63 = load i32, i32* @SizeOfMultiXactCreate, align 4
  %64 = call i32 @XLogRegisterData(i8* %62, i32 %63)
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %66 = bitcast %struct.TYPE_9__* %65 to i8*
  %67 = load i32, i32* %4, align 4
  %68 = sext i32 %67 to i64
  %69 = mul i64 %68, 4
  %70 = trunc i64 %69 to i32
  %71 = call i32 @XLogRegisterData(i8* %66, i32 %70)
  %72 = load i32, i32* @RM_MULTIXACT_ID, align 4
  %73 = load i32, i32* @XLOG_MULTIXACT_CREATE_ID, align 4
  %74 = call i32 @XLogInsert(i32 %72, i32 %73)
  %75 = load i32, i32* %6, align 4
  %76 = load i32, i32* %7, align 4
  %77 = load i32, i32* %4, align 4
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %79 = call i32 @RecordNewMultiXact(i32 %75, i32 %76, i32 %77, %struct.TYPE_9__* %78)
  %80 = call i32 (...) @END_CRIT_SECTION()
  %81 = load i32, i32* %6, align 4
  %82 = load i32, i32* %4, align 4
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %84 = call i32 @mXactCachePut(i32 %81, i32 %82, %struct.TYPE_9__* %83)
  %85 = load i32, i32* @DEBUG2, align 4
  %86 = call i32 @debug_elog2(i32 %85, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  %87 = load i32, i32* %6, align 4
  store i32 %87, i32* %3, align 4
  br label %88

88:                                               ; preds = %52, %23
  %89 = load i32, i32* %3, align 4
  ret i32 %89
}

declare dso_local i32 @debug_elog3(i32, i8*, i32) #1

declare dso_local i32 @mxid_to_string(i32, i32, %struct.TYPE_9__*) #1

declare dso_local i32 @mXactCacheGetBySet(i32, %struct.TYPE_9__*) #1

declare dso_local i64 @MultiXactIdIsValid(i32) #1

declare dso_local i32 @debug_elog2(i32, i8*) #1

declare dso_local i64 @ISUPDATE_from_mxstatus(i32) #1

declare dso_local i32 @elog(i32, i8*) #1

declare dso_local i32 @GetNewMultiXactId(i32, i32*) #1

declare dso_local i32 @XLogBeginInsert(...) #1

declare dso_local i32 @XLogRegisterData(i8*, i32) #1

declare dso_local i32 @XLogInsert(i32, i32) #1

declare dso_local i32 @RecordNewMultiXact(i32, i32, i32, %struct.TYPE_9__*) #1

declare dso_local i32 @END_CRIT_SECTION(...) #1

declare dso_local i32 @mXactCachePut(i32, i32, %struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
