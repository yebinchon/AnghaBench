; ModuleID = '/home/carl/AnghaBench/postgres/contrib/postgres_fdw/extr_connection.c_pgfdw_subxact_callback.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/postgres_fdw/extr_connection.c_pgfdw_subxact_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32* }

@SUBXACT_EVENT_PRE_COMMIT_SUB = common dso_local global i64 0, align 8
@SUBXACT_EVENT_ABORT_SUB = common dso_local global i64 0, align 8
@xact_got_connection = common dso_local global i32 0, align 4
@ConnectionHash = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"missed cleaning up remote subtransaction at level %d\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"RELEASE SAVEPOINT s%d\00", align 1
@PQTRANS_ACTIVE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [49 x i8] c"ROLLBACK TO SAVEPOINT s%d; RELEASE SAVEPOINT s%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i32, i32, i8*)* @pgfdw_subxact_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pgfdw_subxact_callback(i64 %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_3__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca [100 x i8], align 16
  %13 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %14 = load i64, i64* %5, align 8
  %15 = load i64, i64* @SUBXACT_EVENT_PRE_COMMIT_SUB, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %22, label %17

17:                                               ; preds = %4
  %18 = load i64, i64* %5, align 8
  %19 = load i64, i64* @SUBXACT_EVENT_ABORT_SUB, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %22, label %21

21:                                               ; preds = %17
  br label %130

22:                                               ; preds = %17, %4
  %23 = load i32, i32* @xact_got_connection, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %22
  br label %130

26:                                               ; preds = %22
  %27 = call i32 (...) @GetCurrentTransactionNestLevel()
  store i32 %27, i32* %11, align 4
  %28 = load i32, i32* @ConnectionHash, align 4
  %29 = call i32 @hash_seq_init(i32* %9, i32 %28)
  br label %30

30:                                               ; preds = %125, %45, %26
  %31 = call i64 @hash_seq_search(i32* %9)
  %32 = inttoptr i64 %31 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %32, %struct.TYPE_3__** %10, align 8
  %33 = icmp ne %struct.TYPE_3__* %32, null
  br i1 %33, label %34, label %130

34:                                               ; preds = %30
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 3
  %37 = load i32*, i32** %36, align 8
  %38 = icmp eq i32* %37, null
  br i1 %38, label %45, label %39

39:                                               ; preds = %34
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* %11, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %39, %34
  br label %30

46:                                               ; preds = %39
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* %11, align 4
  %51 = icmp sgt i32 %49, %50
  br i1 %51, label %52, label %58

52:                                               ; preds = %46
  %53 = load i32, i32* @ERROR, align 4
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @elog(i32 %53, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %56)
  br label %58

58:                                               ; preds = %52, %46
  %59 = load i64, i64* %5, align 8
  %60 = load i64, i64* @SUBXACT_EVENT_PRE_COMMIT_SUB, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %77

62:                                               ; preds = %58
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %64 = call i32 @pgfdw_reject_incomplete_xact_state_change(%struct.TYPE_3__* %63)
  %65 = getelementptr inbounds [100 x i8], [100 x i8]* %12, i64 0, i64 0
  %66 = load i32, i32* %11, align 4
  %67 = call i32 (i8*, i32, i8*, i32, ...) @snprintf(i8* %65, i32 100, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %66)
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 1
  store i32 1, i32* %69, align 4
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 3
  %72 = load i32*, i32** %71, align 8
  %73 = getelementptr inbounds [100 x i8], [100 x i8]* %12, i64 0, i64 0
  %74 = call i32 @do_sql_command(i32* %72, i8* %73)
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 1
  store i32 0, i32* %76, align 4
  br label %125

77:                                               ; preds = %58
  %78 = call i64 (...) @in_error_recursion_trouble()
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %77
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 1
  store i32 1, i32* %82, align 4
  br label %124

83:                                               ; preds = %77
  %84 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %123, label %88

88:                                               ; preds = %83
  store i32 0, i32* %13, align 4
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 1
  store i32 1, i32* %90, align 4
  %91 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 2
  store i32 1, i32* %92, align 8
  %93 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 3
  %95 = load i32*, i32** %94, align 8
  %96 = call i64 @PQtransactionStatus(i32* %95)
  %97 = load i64, i64* @PQTRANS_ACTIVE, align 8
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %99, label %106

99:                                               ; preds = %88
  %100 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 3
  %102 = load i32*, i32** %101, align 8
  %103 = call i32 @pgfdw_cancel_query(i32* %102)
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %106, label %105

105:                                              ; preds = %99
  store i32 1, i32* %13, align 4
  br label %119

106:                                              ; preds = %99, %88
  %107 = getelementptr inbounds [100 x i8], [100 x i8]* %12, i64 0, i64 0
  %108 = load i32, i32* %11, align 4
  %109 = load i32, i32* %11, align 4
  %110 = call i32 (i8*, i32, i8*, i32, ...) @snprintf(i8* %107, i32 100, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0), i32 %108, i32 %109)
  %111 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i32 0, i32 3
  %113 = load i32*, i32** %112, align 8
  %114 = getelementptr inbounds [100 x i8], [100 x i8]* %12, i64 0, i64 0
  %115 = call i32 @pgfdw_exec_cleanup_query(i32* %113, i8* %114, i32 0)
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %118, label %117

117:                                              ; preds = %106
  store i32 1, i32* %13, align 4
  br label %118

118:                                              ; preds = %117, %106
  br label %119

119:                                              ; preds = %118, %105
  %120 = load i32, i32* %13, align 4
  %121 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i32 0, i32 1
  store i32 %120, i32* %122, align 4
  br label %123

123:                                              ; preds = %119, %83
  br label %124

124:                                              ; preds = %123, %80
  br label %125

125:                                              ; preds = %124, %62
  %126 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %127 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = add nsw i32 %128, -1
  store i32 %129, i32* %127, align 8
  br label %30

130:                                              ; preds = %21, %25, %30
  ret void
}

declare dso_local i32 @GetCurrentTransactionNestLevel(...) #1

declare dso_local i32 @hash_seq_init(i32*, i32) #1

declare dso_local i64 @hash_seq_search(i32*) #1

declare dso_local i32 @elog(i32, i8*, i32) #1

declare dso_local i32 @pgfdw_reject_incomplete_xact_state_change(%struct.TYPE_3__*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, ...) #1

declare dso_local i32 @do_sql_command(i32*, i8*) #1

declare dso_local i64 @in_error_recursion_trouble(...) #1

declare dso_local i64 @PQtransactionStatus(i32*) #1

declare dso_local i32 @pgfdw_cancel_query(i32*) #1

declare dso_local i32 @pgfdw_exec_cleanup_query(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
