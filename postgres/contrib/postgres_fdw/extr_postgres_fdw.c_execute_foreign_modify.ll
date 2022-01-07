; ModuleID = '/home/carl/AnghaBench/postgres/contrib/postgres_fdw/extr_postgres_fdw.c_execute_foreign_modify.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/postgres_fdw/extr_postgres_fdw.c_execute_foreign_modify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64 }
%struct.TYPE_8__ = type { i32, i64, i32, i32, i32, i32, i32 }

@CMD_INSERT = common dso_local global i64 0, align 8
@CMD_UPDATE = common dso_local global i64 0, align 8
@CMD_DELETE = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"ctid is NULL\00", align 1
@PGRES_TUPLES_OK = common dso_local global i64 0, align 8
@PGRES_COMMAND_OK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, %struct.TYPE_7__*, i64, i32*, i32*)* @execute_foreign_modify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @execute_foreign_modify(i32* %0, %struct.TYPE_7__* %1, i64 %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_8__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i8**, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %21, %struct.TYPE_8__** %11, align 8
  store i32* null, i32** %12, align 8
  %22 = load i64, i64* %8, align 8
  %23 = load i64, i64* @CMD_INSERT, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %33, label %25

25:                                               ; preds = %5
  %26 = load i64, i64* %8, align 8
  %27 = load i64, i64* @CMD_UPDATE, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %33, label %29

29:                                               ; preds = %25
  %30 = load i64, i64* %8, align 8
  %31 = load i64, i64* @CMD_DELETE, align 8
  %32 = icmp eq i64 %30, %31
  br label %33

33:                                               ; preds = %29, %25, %5
  %34 = phi i1 [ true, %25 ], [ true, %5 ], [ %32, %29 ]
  %35 = zext i1 %34 to i32
  %36 = call i32 @Assert(i32 %35)
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 5
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %33
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %43 = call i32 @prepare_foreign_modify(%struct.TYPE_8__* %42)
  br label %44

44:                                               ; preds = %41, %33
  %45 = load i64, i64* %8, align 8
  %46 = load i64, i64* @CMD_UPDATE, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %52, label %48

48:                                               ; preds = %44
  %49 = load i64, i64* %8, align 8
  %50 = load i64, i64* @CMD_DELETE, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %67

52:                                               ; preds = %48, %44
  %53 = load i32*, i32** %10, align 8
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 6
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @ExecGetJunkAttribute(i32* %53, i32 %56, i32* %17)
  store i32 %57, i32* %16, align 4
  %58 = load i32, i32* %17, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %52
  %61 = load i32, i32* @ERROR, align 4
  %62 = call i32 @elog(i32 %61, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  br label %63

63:                                               ; preds = %60, %52
  %64 = load i32, i32* %16, align 4
  %65 = call i64 @DatumGetPointer(i32 %64)
  %66 = inttoptr i64 %65 to i32*
  store i32* %66, i32** %12, align 8
  br label %67

67:                                               ; preds = %63, %48
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %69 = load i32*, i32** %12, align 8
  %70 = load i32*, i32** %9, align 8
  %71 = call i8** @convert_prep_stmt_params(%struct.TYPE_8__* %68, i32* %69, i32* %70)
  store i8** %71, i8*** %13, align 8
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 5
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 4
  %80 = load i32, i32* %79, align 8
  %81 = load i8**, i8*** %13, align 8
  %82 = call i32 @PQsendQueryPrepared(i32 %74, i32 %77, i32 %80, i8** %81, i32* null, i32* null, i32 0)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %93, label %84

84:                                               ; preds = %67
  %85 = load i32, i32* @ERROR, align 4
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @pgfdw_report_error(i32 %85, i32* null, i32 %88, i32 0, i32 %91)
  br label %93

93:                                               ; preds = %84, %67
  %94 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 3
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = call i32* @pgfdw_get_result(i32 %96, i32 %99)
  store i32* %100, i32** %14, align 8
  %101 = load i32*, i32** %14, align 8
  %102 = call i64 @PQresultStatus(i32* %101)
  %103 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %93
  %108 = load i64, i64* @PGRES_TUPLES_OK, align 8
  br label %111

109:                                              ; preds = %93
  %110 = load i64, i64* @PGRES_COMMAND_OK, align 8
  br label %111

111:                                              ; preds = %109, %107
  %112 = phi i64 [ %108, %107 ], [ %110, %109 ]
  %113 = icmp ne i64 %102, %112
  br i1 %113, label %114, label %124

114:                                              ; preds = %111
  %115 = load i32, i32* @ERROR, align 4
  %116 = load i32*, i32** %14, align 8
  %117 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i32 0, i32 3
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %121 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 8
  %123 = call i32 @pgfdw_report_error(i32 %115, i32* %116, i32 %119, i32 1, i32 %122)
  br label %124

124:                                              ; preds = %114, %111
  %125 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %126 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %125, i32 0, i32 1
  %127 = load i64, i64* %126, align 8
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %140

129:                                              ; preds = %124
  %130 = load i32*, i32** %14, align 8
  %131 = call i32 @PQntuples(i32* %130)
  store i32 %131, i32* %15, align 4
  %132 = load i32, i32* %15, align 4
  %133 = icmp sgt i32 %132, 0
  br i1 %133, label %134, label %139

134:                                              ; preds = %129
  %135 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %136 = load i32*, i32** %9, align 8
  %137 = load i32*, i32** %14, align 8
  %138 = call i32 @store_returning_result(%struct.TYPE_8__* %135, i32* %136, i32* %137)
  br label %139

139:                                              ; preds = %134, %129
  br label %144

140:                                              ; preds = %124
  %141 = load i32*, i32** %14, align 8
  %142 = call i32 @PQcmdTuples(i32* %141)
  %143 = call i32 @atoi(i32 %142)
  store i32 %143, i32* %15, align 4
  br label %144

144:                                              ; preds = %140, %139
  %145 = load i32*, i32** %14, align 8
  %146 = call i32 @PQclear(i32* %145)
  %147 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %148 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = call i32 @MemoryContextReset(i32 %149)
  %151 = load i32, i32* %15, align 4
  %152 = icmp sgt i32 %151, 0
  br i1 %152, label %153, label %155

153:                                              ; preds = %144
  %154 = load i32*, i32** %9, align 8
  br label %156

155:                                              ; preds = %144
  br label %156

156:                                              ; preds = %155, %153
  %157 = phi i32* [ %154, %153 ], [ null, %155 ]
  ret i32* %157
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @prepare_foreign_modify(%struct.TYPE_8__*) #1

declare dso_local i32 @ExecGetJunkAttribute(i32*, i32, i32*) #1

declare dso_local i32 @elog(i32, i8*) #1

declare dso_local i64 @DatumGetPointer(i32) #1

declare dso_local i8** @convert_prep_stmt_params(%struct.TYPE_8__*, i32*, i32*) #1

declare dso_local i32 @PQsendQueryPrepared(i32, i32, i32, i8**, i32*, i32*, i32) #1

declare dso_local i32 @pgfdw_report_error(i32, i32*, i32, i32, i32) #1

declare dso_local i32* @pgfdw_get_result(i32, i32) #1

declare dso_local i64 @PQresultStatus(i32*) #1

declare dso_local i32 @PQntuples(i32*) #1

declare dso_local i32 @store_returning_result(%struct.TYPE_8__*, i32*, i32*) #1

declare dso_local i32 @atoi(i32) #1

declare dso_local i32 @PQcmdTuples(i32*) #1

declare dso_local i32 @PQclear(i32*) #1

declare dso_local i32 @MemoryContextReset(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
