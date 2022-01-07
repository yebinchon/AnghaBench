; ModuleID = '/home/carl/AnghaBench/postgres/contrib/postgres_fdw/extr_connection.c_pgfdw_xact_callback.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/postgres_fdw/extr_connection.c_pgfdw_xact_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32, i32, i32, i32* }

@xact_got_connection = common dso_local global i32 0, align 4
@ConnectionHash = common dso_local global i32 0, align 4
@DEBUG3 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"closing remote transaction on connection %p\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"COMMIT TRANSACTION\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"DEALLOCATE ALL\00", align 1
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_FEATURE_NOT_SUPPORTED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [78 x i8] c"cannot PREPARE a transaction that has operated on postgres_fdw foreign tables\00", align 1
@.str.4 = private unnamed_addr constant [48 x i8] c"missed cleaning up connection during pre-commit\00", align 1
@PQTRANS_ACTIVE = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [18 x i8] c"ABORT TRANSACTION\00", align 1
@CONNECTION_OK = common dso_local global i64 0, align 8
@PQTRANS_IDLE = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [25 x i8] c"discarding connection %p\00", align 1
@cursor_number = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*)* @pgfdw_xact_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pgfdw_xact_callback(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %9 = load i32, i32* @xact_got_connection, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  br label %175

12:                                               ; preds = %2
  %13 = load i32, i32* @ConnectionHash, align 4
  %14 = call i32 @hash_seq_init(i32* %5, i32 %13)
  br label %15

15:                                               ; preds = %173, %24, %12
  %16 = call i64 @hash_seq_search(i32* %5)
  %17 = inttoptr i64 %16 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %17, %struct.TYPE_4__** %6, align 8
  %18 = icmp ne %struct.TYPE_4__* %17, null
  br i1 %18, label %19, label %174

19:                                               ; preds = %15
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 4
  %22 = load i32*, i32** %21, align 8
  %23 = icmp eq i32* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  br label %15

25:                                               ; preds = %19
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp sgt i64 %28, 0
  br i1 %29, label %30, label %144

30:                                               ; preds = %25
  store i32 0, i32* %8, align 4
  %31 = load i32, i32* @DEBUG3, align 4
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 4
  %34 = load i32*, i32** %33, align 8
  %35 = call i32 (i32, i8*, ...) @elog(i32 %31, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32* %34)
  %36 = load i32, i32* %3, align 4
  switch i32 %36, label %143 [
    i32 131, label %37
    i32 129, label %37
    i32 128, label %69
    i32 132, label %75
    i32 134, label %75
    i32 130, label %75
    i32 133, label %78
    i32 135, label %78
  ]

37:                                               ; preds = %30, %30
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %39 = call i32 @pgfdw_reject_incomplete_xact_state_change(%struct.TYPE_4__* %38)
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 1
  store i32 1, i32* %41, align 8
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 4
  %44 = load i32*, i32** %43, align 8
  %45 = call i32 @do_sql_command(i32* %44, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 1
  store i32 0, i32* %47, align 8
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %64

52:                                               ; preds = %37
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 8
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %64

57:                                               ; preds = %52
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 4
  %60 = load i32*, i32** %59, align 8
  %61 = call i32* @PQexec(i32* %60, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  store i32* %61, i32** %7, align 8
  %62 = load i32*, i32** %7, align 8
  %63 = call i32 @PQclear(i32* %62)
  br label %64

64:                                               ; preds = %57, %52, %37
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 2
  store i32 0, i32* %66, align 4
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 3
  store i32 0, i32* %68, align 8
  br label %143

69:                                               ; preds = %30
  %70 = load i32, i32* @ERROR, align 4
  %71 = load i32, i32* @ERRCODE_FEATURE_NOT_SUPPORTED, align 4
  %72 = call i32 @errcode(i32 %71)
  %73 = call i32 @errmsg(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.3, i64 0, i64 0))
  %74 = call i32 @ereport(i32 %70, i32 %73)
  br label %143

75:                                               ; preds = %30, %30, %30
  %76 = load i32, i32* @ERROR, align 4
  %77 = call i32 (i32, i8*, ...) @elog(i32 %76, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.4, i64 0, i64 0))
  br label %143

78:                                               ; preds = %30, %30
  %79 = call i32 (...) @in_error_recursion_trouble()
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %78
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 1
  store i32 1, i32* %83, align 8
  br label %84

84:                                               ; preds = %81, %78
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %84
  br label %143

90:                                               ; preds = %84
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 1
  store i32 1, i32* %92, align 8
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 3
  store i32 1, i32* %94, align 8
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 4
  %97 = load i32*, i32** %96, align 8
  %98 = call i64 @PQtransactionStatus(i32* %97)
  %99 = load i64, i64* @PQTRANS_ACTIVE, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %101, label %108

101:                                              ; preds = %90
  %102 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 4
  %104 = load i32*, i32** %103, align 8
  %105 = call i32 @pgfdw_cancel_query(i32* %104)
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %108, label %107

107:                                              ; preds = %101
  store i32 1, i32* %8, align 4
  br label %139

108:                                              ; preds = %101, %90
  %109 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 4
  %111 = load i32*, i32** %110, align 8
  %112 = call i32 @pgfdw_exec_cleanup_query(i32* %111, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i32 0)
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %115, label %114

114:                                              ; preds = %108
  store i32 1, i32* %8, align 4
  br label %138

115:                                              ; preds = %108
  %116 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %132

120:                                              ; preds = %115
  %121 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 3
  %123 = load i32, i32* %122, align 8
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %132

125:                                              ; preds = %120
  %126 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i32 0, i32 4
  %128 = load i32*, i32** %127, align 8
  %129 = call i32 @pgfdw_exec_cleanup_query(i32* %128, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 1)
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %132, label %131

131:                                              ; preds = %125
  store i32 1, i32* %8, align 4
  br label %137

132:                                              ; preds = %125, %120, %115
  %133 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 2
  store i32 0, i32* %134, align 4
  %135 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %135, i32 0, i32 3
  store i32 0, i32* %136, align 8
  br label %137

137:                                              ; preds = %132, %131
  br label %138

138:                                              ; preds = %137, %114
  br label %139

139:                                              ; preds = %138, %107
  %140 = load i32, i32* %8, align 4
  %141 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i32 0, i32 1
  store i32 %140, i32* %142, align 8
  br label %143

143:                                              ; preds = %30, %139, %89, %75, %69, %64
  br label %144

144:                                              ; preds = %143, %25
  %145 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %146 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %145, i32 0, i32 0
  store i64 0, i64* %146, align 8
  %147 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %148 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %147, i32 0, i32 4
  %149 = load i32*, i32** %148, align 8
  %150 = call i64 @PQstatus(i32* %149)
  %151 = load i64, i64* @CONNECTION_OK, align 8
  %152 = icmp ne i64 %150, %151
  br i1 %152, label %165, label %153

153:                                              ; preds = %144
  %154 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %155 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %154, i32 0, i32 4
  %156 = load i32*, i32** %155, align 8
  %157 = call i64 @PQtransactionStatus(i32* %156)
  %158 = load i64, i64* @PQTRANS_IDLE, align 8
  %159 = icmp ne i64 %157, %158
  br i1 %159, label %165, label %160

160:                                              ; preds = %153
  %161 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %162 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 8
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %173

165:                                              ; preds = %160, %153, %144
  %166 = load i32, i32* @DEBUG3, align 4
  %167 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %168 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %167, i32 0, i32 4
  %169 = load i32*, i32** %168, align 8
  %170 = call i32 (i32, i8*, ...) @elog(i32 %166, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0), i32* %169)
  %171 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %172 = call i32 @disconnect_pg_server(%struct.TYPE_4__* %171)
  br label %173

173:                                              ; preds = %165, %160
  br label %15

174:                                              ; preds = %15
  store i32 0, i32* @xact_got_connection, align 4
  store i64 0, i64* @cursor_number, align 8
  br label %175

175:                                              ; preds = %174, %11
  ret void
}

declare dso_local i32 @hash_seq_init(i32*, i32) #1

declare dso_local i64 @hash_seq_search(i32*) #1

declare dso_local i32 @elog(i32, i8*, ...) #1

declare dso_local i32 @pgfdw_reject_incomplete_xact_state_change(%struct.TYPE_4__*) #1

declare dso_local i32 @do_sql_command(i32*, i8*) #1

declare dso_local i32* @PQexec(i32*, i8*) #1

declare dso_local i32 @PQclear(i32*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*) #1

declare dso_local i32 @in_error_recursion_trouble(...) #1

declare dso_local i64 @PQtransactionStatus(i32*) #1

declare dso_local i32 @pgfdw_cancel_query(i32*) #1

declare dso_local i32 @pgfdw_exec_cleanup_query(i32*, i8*, i32) #1

declare dso_local i64 @PQstatus(i32*) #1

declare dso_local i32 @disconnect_pg_server(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
