; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_xact.c_UserAbortTransactionBlock.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_xact.c_UserAbortTransactionBlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, %struct.TYPE_3__* }

@CurrentTransactionState = common dso_local global %struct.TYPE_3__* null, align 8
@FATAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"UserAbortTransactionBlock: unexpected state %s\00", align 1
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_NO_ACTIVE_SQL_TRANSACTION = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"%s can only be used in transaction blocks\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"ROLLBACK AND CHAIN\00", align 1
@WARNING = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [36 x i8] c"there is no transaction in progress\00", align 1
@ERRCODE_INVALID_TRANSACTION_STATE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [41 x i8] c"cannot abort during a parallel operation\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @UserAbortTransactionBlock(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load %struct.TYPE_3__*, %struct.TYPE_3__** @CurrentTransactionState, align 8
  store %struct.TYPE_3__* %4, %struct.TYPE_3__** %3, align 8
  %5 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  switch i32 %7, label %104 [
    i32 140, label %8
    i32 147, label %11
    i32 130, label %14
    i32 136, label %14
    i32 137, label %73
    i32 141, label %73
    i32 139, label %91
    i32 143, label %97
    i32 144, label %97
    i32 132, label %97
    i32 142, label %97
    i32 129, label %97
    i32 131, label %97
    i32 146, label %97
    i32 135, label %97
    i32 145, label %97
    i32 134, label %97
    i32 128, label %97
    i32 133, label %97
    i32 138, label %97
  ]

8:                                                ; preds = %1
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  store i32 145, i32* %10, align 8
  br label %104

11:                                               ; preds = %1
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  store i32 146, i32* %13, align 8
  br label %104

14:                                               ; preds = %1, %1
  br label %15

15:                                               ; preds = %44, %14
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 2
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = icmp ne %struct.TYPE_3__* %18, null
  br i1 %19, label %20, label %48

20:                                               ; preds = %15
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp eq i32 %23, 130
  br i1 %24, label %25, label %28

25:                                               ; preds = %20
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  store i32 134, i32* %27, align 8
  br label %44

28:                                               ; preds = %20
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp eq i32 %31, 136
  br i1 %32, label %33, label %36

33:                                               ; preds = %28
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  store i32 135, i32* %35, align 8
  br label %43

36:                                               ; preds = %28
  %37 = load i32, i32* @FATAL, align 4
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @BlockStateAsString(i32 %40)
  %42 = call i32 @elog(i32 %37, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %41)
  br label %43

43:                                               ; preds = %36, %33
  br label %44

44:                                               ; preds = %43, %25
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 2
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %46, align 8
  store %struct.TYPE_3__* %47, %struct.TYPE_3__** %3, align 8
  br label %15

48:                                               ; preds = %15
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp eq i32 %51, 140
  br i1 %52, label %53, label %56

53:                                               ; preds = %48
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  store i32 145, i32* %55, align 8
  br label %72

56:                                               ; preds = %48
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = icmp eq i32 %59, 147
  br i1 %60, label %61, label %64

61:                                               ; preds = %56
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  store i32 146, i32* %63, align 8
  br label %71

64:                                               ; preds = %56
  %65 = load i32, i32* @FATAL, align 4
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @BlockStateAsString(i32 %68)
  %70 = call i32 @elog(i32 %65, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %69)
  br label %71

71:                                               ; preds = %64, %61
  br label %72

72:                                               ; preds = %71, %53
  br label %104

73:                                               ; preds = %1, %1
  %74 = load i32, i32* %2, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %82

76:                                               ; preds = %73
  %77 = load i32, i32* @ERROR, align 4
  %78 = load i32, i32* @ERRCODE_NO_ACTIVE_SQL_TRANSACTION, align 4
  %79 = call i32 @errcode(i32 %78)
  %80 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %81 = call i32 @ereport(i32 %77, i32 %80)
  br label %88

82:                                               ; preds = %73
  %83 = load i32, i32* @WARNING, align 4
  %84 = load i32, i32* @ERRCODE_NO_ACTIVE_SQL_TRANSACTION, align 4
  %85 = call i32 @errcode(i32 %84)
  %86 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  %87 = call i32 @ereport(i32 %83, i32 %86)
  br label %88

88:                                               ; preds = %82, %76
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 0
  store i32 145, i32* %90, align 8
  br label %104

91:                                               ; preds = %1
  %92 = load i32, i32* @FATAL, align 4
  %93 = load i32, i32* @ERRCODE_INVALID_TRANSACTION_STATE, align 4
  %94 = call i32 @errcode(i32 %93)
  %95 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0))
  %96 = call i32 @ereport(i32 %92, i32 %95)
  br label %104

97:                                               ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1
  %98 = load i32, i32* @FATAL, align 4
  %99 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = call i32 @BlockStateAsString(i32 %101)
  %103 = call i32 @elog(i32 %98, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %102)
  br label %104

104:                                              ; preds = %1, %97, %91, %88, %72, %11, %8
  %105 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = icmp eq i32 %107, 146
  br i1 %108, label %114, label %109

109:                                              ; preds = %104
  %110 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = icmp eq i32 %112, 145
  br label %114

114:                                              ; preds = %109, %104
  %115 = phi i1 [ true, %104 ], [ %113, %109 ]
  %116 = zext i1 %115 to i32
  %117 = call i32 @Assert(i32 %116)
  %118 = load i32, i32* %2, align 4
  %119 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %120 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %119, i32 0, i32 1
  store i32 %118, i32* %120, align 4
  ret void
}

declare dso_local i32 @elog(i32, i8*, i32) #1

declare dso_local i32 @BlockStateAsString(i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, ...) #1

declare dso_local i32 @Assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
