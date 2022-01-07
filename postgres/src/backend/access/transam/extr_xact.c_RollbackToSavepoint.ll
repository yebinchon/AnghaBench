; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_xact.c_RollbackToSavepoint.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_xact.c_RollbackToSavepoint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i64, %struct.TYPE_5__*, %struct.TYPE_5__* }

@CurrentTransactionState = common dso_local global %struct.TYPE_5__* null, align 8
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_INVALID_TRANSACTION_STATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [58 x i8] c"cannot rollback to savepoints during a parallel operation\00", align 1
@ERRCODE_S_E_INVALID_SPECIFICATION = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"savepoint \22%s\22 does not exist\00", align 1
@ERRCODE_NO_ACTIVE_SQL_TRANSACTION = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [42 x i8] c"%s can only be used in transaction blocks\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"ROLLBACK TO SAVEPOINT\00", align 1
@FATAL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [41 x i8] c"RollbackToSavepoint: unexpected state %s\00", align 1
@.str.5 = private unnamed_addr constant [61 x i8] c"savepoint \22%s\22 does not exist within current savepoint level\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @RollbackToSavepoint(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  store i8* %0, i8** %2, align 8
  %6 = load %struct.TYPE_5__*, %struct.TYPE_5__** @CurrentTransactionState, align 8
  store %struct.TYPE_5__* %6, %struct.TYPE_5__** %3, align 8
  %7 = call i64 (...) @IsInParallelMode()
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %1
  %10 = load i32, i32* @ERROR, align 4
  %11 = load i32, i32* @ERRCODE_INVALID_TRANSACTION_STATE, align 4
  %12 = call i32 @errcode(i32 %11)
  %13 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0))
  %14 = call i32 @ereport(i32 %10, i32 %13)
  br label %15

15:                                               ; preds = %9, %1
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  switch i32 %18, label %40 [
    i32 140, label %19
    i32 147, label %19
    i32 141, label %26
    i32 130, label %32
    i32 136, label %32
    i32 143, label %33
    i32 137, label %33
    i32 144, label %33
    i32 139, label %33
    i32 132, label %33
    i32 142, label %33
    i32 129, label %33
    i32 131, label %33
    i32 146, label %33
    i32 135, label %33
    i32 145, label %33
    i32 134, label %33
    i32 128, label %33
    i32 133, label %33
    i32 138, label %33
  ]

19:                                               ; preds = %15, %15
  %20 = load i32, i32* @ERROR, align 4
  %21 = load i32, i32* @ERRCODE_S_E_INVALID_SPECIFICATION, align 4
  %22 = call i32 @errcode(i32 %21)
  %23 = load i8*, i8** %2, align 8
  %24 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i8* %23)
  %25 = call i32 @ereport(i32 %20, i32 %24)
  br label %40

26:                                               ; preds = %15
  %27 = load i32, i32* @ERROR, align 4
  %28 = load i32, i32* @ERRCODE_NO_ACTIVE_SQL_TRANSACTION, align 4
  %29 = call i32 @errcode(i32 %28)
  %30 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  %31 = call i32 @ereport(i32 %27, i32 %30)
  br label %40

32:                                               ; preds = %15, %15
  br label %40

33:                                               ; preds = %15, %15, %15, %15, %15, %15, %15, %15, %15, %15, %15, %15, %15, %15, %15
  %34 = load i32, i32* @FATAL, align 4
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @BlockStateAsString(i32 %37)
  %39 = call i32 @elog(i32 %34, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0), i32 %38)
  br label %40

40:                                               ; preds = %15, %33, %32, %26, %19
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  store %struct.TYPE_5__* %41, %struct.TYPE_5__** %4, align 8
  br label %42

42:                                               ; preds = %61, %40
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %44 = call i64 @PointerIsValid(%struct.TYPE_5__* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %65

46:                                               ; preds = %42
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 3
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %48, align 8
  %50 = call i64 @PointerIsValid(%struct.TYPE_5__* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %60

52:                                               ; preds = %46
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 3
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %54, align 8
  %56 = load i8*, i8** %2, align 8
  %57 = call i64 @strcmp(%struct.TYPE_5__* %55, i8* %56)
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %52
  br label %65

60:                                               ; preds = %52, %46
  br label %61

61:                                               ; preds = %60
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 2
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %63, align 8
  store %struct.TYPE_5__* %64, %struct.TYPE_5__** %4, align 8
  br label %42

65:                                               ; preds = %59, %42
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %67 = call i64 @PointerIsValid(%struct.TYPE_5__* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %76, label %69

69:                                               ; preds = %65
  %70 = load i32, i32* @ERROR, align 4
  %71 = load i32, i32* @ERRCODE_S_E_INVALID_SPECIFICATION, align 4
  %72 = call i32 @errcode(i32 %71)
  %73 = load i8*, i8** %2, align 8
  %74 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i8* %73)
  %75 = call i32 @ereport(i32 %70, i32 %74)
  br label %76

76:                                               ; preds = %69, %65
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %79, %82
  br i1 %83, label %84, label %91

84:                                               ; preds = %76
  %85 = load i32, i32* @ERROR, align 4
  %86 = load i32, i32* @ERRCODE_S_E_INVALID_SPECIFICATION, align 4
  %87 = call i32 @errcode(i32 %86)
  %88 = load i8*, i8** %2, align 8
  %89 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.5, i64 0, i64 0), i8* %88)
  %90 = call i32 @ereport(i32 %85, i32 %89)
  br label %91

91:                                               ; preds = %84, %76
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** @CurrentTransactionState, align 8
  store %struct.TYPE_5__* %92, %struct.TYPE_5__** %5, align 8
  br label %93

93:                                               ; preds = %122, %91
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %95 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %96 = icmp eq %struct.TYPE_5__* %94, %95
  br i1 %96, label %97, label %98

97:                                               ; preds = %93
  br label %129

98:                                               ; preds = %93
  %99 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = icmp eq i32 %101, 130
  br i1 %102, label %103, label %106

103:                                              ; preds = %98
  %104 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 0
  store i32 134, i32* %105, align 8
  br label %122

106:                                              ; preds = %98
  %107 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = icmp eq i32 %109, 136
  br i1 %110, label %111, label %114

111:                                              ; preds = %106
  %112 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %112, i32 0, i32 0
  store i32 135, i32* %113, align 8
  br label %121

114:                                              ; preds = %106
  %115 = load i32, i32* @FATAL, align 4
  %116 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = call i32 @BlockStateAsString(i32 %118)
  %120 = call i32 @elog(i32 %115, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0), i32 %119)
  br label %121

121:                                              ; preds = %114, %111
  br label %122

122:                                              ; preds = %121, %103
  %123 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %124 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %123, i32 0, i32 2
  %125 = load %struct.TYPE_5__*, %struct.TYPE_5__** %124, align 8
  store %struct.TYPE_5__* %125, %struct.TYPE_5__** %5, align 8
  %126 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %127 = call i64 @PointerIsValid(%struct.TYPE_5__* %126)
  %128 = call i32 @Assert(i64 %127)
  br label %93

129:                                              ; preds = %97
  %130 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %131 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = icmp eq i32 %132, 130
  br i1 %133, label %134, label %137

134:                                              ; preds = %129
  %135 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %136 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %135, i32 0, i32 0
  store i32 128, i32* %136, align 8
  br label %153

137:                                              ; preds = %129
  %138 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %139 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = icmp eq i32 %140, 136
  br i1 %141, label %142, label %145

142:                                              ; preds = %137
  %143 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %144 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %143, i32 0, i32 0
  store i32 133, i32* %144, align 8
  br label %152

145:                                              ; preds = %137
  %146 = load i32, i32* @FATAL, align 4
  %147 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %148 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = call i32 @BlockStateAsString(i32 %149)
  %151 = call i32 @elog(i32 %146, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0), i32 %150)
  br label %152

152:                                              ; preds = %145, %142
  br label %153

153:                                              ; preds = %152, %134
  ret void
}

declare dso_local i64 @IsInParallelMode(...) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, ...) #1

declare dso_local i32 @elog(i32, i8*, i32) #1

declare dso_local i32 @BlockStateAsString(i32) #1

declare dso_local i64 @PointerIsValid(%struct.TYPE_5__*) #1

declare dso_local i64 @strcmp(%struct.TYPE_5__*, i8*) #1

declare dso_local i32 @Assert(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
