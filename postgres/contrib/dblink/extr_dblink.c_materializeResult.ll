; ModuleID = '/home/carl/AnghaBench/postgres/contrib/dblink/extr_dblink.c_materializeResult.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/dblink/extr_dblink.c_materializeResult.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i64 }
%struct.TYPE_15__ = type { i64, %struct.TYPE_14__*, i32*, %struct.TYPE_13__* }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i32 }

@SFRM_Materialize = common dso_local global i64 0, align 8
@PGRES_COMMAND_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [7 x i8] c"status\00", align 1
@TEXTOID = common dso_local global i32 0, align 4
@PGRES_TUPLES_OK = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_FEATURE_NOT_SUPPORTED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [75 x i8] c"function returning record called in context that cannot accept type record\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"return type must be a row type\00", align 1
@ERRCODE_DATATYPE_MISMATCH = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [77 x i8] c"remote query result rowtype does not match the specified FROM clause rowtype\00", align 1
@work_mem = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_16__*, i32*, i32*)* @materializeResult to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @materializeResult(%struct.TYPE_16__* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_15__*, align 8
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8**, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %20 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %23, %struct.TYPE_15__** %7, align 8
  %24 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @SFRM_Materialize, align 8
  %28 = icmp eq i64 %26, %27
  %29 = zext i1 %28 to i32
  %30 = call i32 @Assert(i32 %29)
  %31 = call i32 (...) @PG_TRY()
  %32 = load i32*, i32** %6, align 8
  %33 = call i64 @PQresultStatus(i32* %32)
  %34 = load i64, i64* @PGRES_COMMAND_OK, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %41

36:                                               ; preds = %3
  store i32 1, i32* %9, align 4
  %37 = call %struct.TYPE_14__* @CreateTemplateTupleDesc(i32 1)
  store %struct.TYPE_14__* %37, %struct.TYPE_14__** %8, align 8
  %38 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %39 = load i32, i32* @TEXTOID, align 4
  %40 = call i32 @TupleDescInitEntry(%struct.TYPE_14__* %38, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %39, i32 -1, i32 0)
  store i32 1, i32* %10, align 4
  store i32 1, i32* %11, align 4
  br label %67

41:                                               ; preds = %3
  %42 = load i32*, i32** %6, align 8
  %43 = call i64 @PQresultStatus(i32* %42)
  %44 = load i64, i64* @PGRES_TUPLES_OK, align 8
  %45 = icmp eq i64 %43, %44
  %46 = zext i1 %45 to i32
  %47 = call i32 @Assert(i32 %46)
  store i32 0, i32* %9, align 4
  %48 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %49 = call i32 @get_call_result_type(%struct.TYPE_16__* %48, i32* null, %struct.TYPE_14__** %8)
  switch i32 %49, label %57 [
    i32 129, label %50
    i32 128, label %51
  ]

50:                                               ; preds = %41
  br label %60

51:                                               ; preds = %41
  %52 = load i32, i32* @ERROR, align 4
  %53 = load i32, i32* @ERRCODE_FEATURE_NOT_SUPPORTED, align 4
  %54 = call i32 @errcode(i32 %53)
  %55 = call i32 @errmsg(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.1, i64 0, i64 0))
  %56 = call i32 @ereport(i32 %52, i32 %55)
  br label %60

57:                                               ; preds = %41
  %58 = load i32, i32* @ERROR, align 4
  %59 = call i32 @elog(i32 %58, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  br label %60

60:                                               ; preds = %57, %51, %50
  %61 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %62 = call %struct.TYPE_14__* @CreateTupleDescCopy(%struct.TYPE_14__* %61)
  store %struct.TYPE_14__* %62, %struct.TYPE_14__** %8, align 8
  %63 = load i32*, i32** %6, align 8
  %64 = call i32 @PQntuples(i32* %63)
  store i32 %64, i32* %10, align 4
  %65 = load i32*, i32** %6, align 8
  %66 = call i32 @PQnfields(i32* %65)
  store i32 %66, i32* %11, align 4
  br label %67

67:                                               ; preds = %60, %36
  %68 = load i32, i32* %11, align 4
  %69 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %70 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = icmp ne i32 %68, %71
  br i1 %72, label %73, label %79

73:                                               ; preds = %67
  %74 = load i32, i32* @ERROR, align 4
  %75 = load i32, i32* @ERRCODE_DATATYPE_MISMATCH, align 4
  %76 = call i32 @errcode(i32 %75)
  %77 = call i32 @errmsg(i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.3, i64 0, i64 0))
  %78 = call i32 @ereport(i32 %74, i32 %77)
  br label %79

79:                                               ; preds = %73, %67
  %80 = load i32, i32* %10, align 4
  %81 = icmp sgt i32 %80, 0
  br i1 %81, label %82, label %170

82:                                               ; preds = %79
  store i32 -1, i32* %13, align 4
  %83 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %84 = call i32* @TupleDescGetAttInMetadata(%struct.TYPE_14__* %83)
  store i32* %84, i32** %12, align 8
  %85 = load i32, i32* %9, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %90, label %87

87:                                               ; preds = %82
  %88 = load i32*, i32** %5, align 8
  %89 = call i32 @applyRemoteGucs(i32* %88)
  store i32 %89, i32* %13, align 4
  br label %90

90:                                               ; preds = %87, %82
  %91 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %92 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %91, i32 0, i32 3
  %93 = load %struct.TYPE_13__*, %struct.TYPE_13__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @MemoryContextSwitchTo(i32 %95)
  store i32 %96, i32* %15, align 4
  %97 = load i32, i32* @work_mem, align 4
  %98 = call i32* @tuplestore_begin_heap(i32 1, i32 0, i32 %97)
  store i32* %98, i32** %14, align 8
  %99 = load i32*, i32** %14, align 8
  %100 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %101 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %100, i32 0, i32 2
  store i32* %99, i32** %101, align 8
  %102 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %103 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %104 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %103, i32 0, i32 1
  store %struct.TYPE_14__* %102, %struct.TYPE_14__** %104, align 8
  %105 = load i32, i32* %15, align 4
  %106 = call i32 @MemoryContextSwitchTo(i32 %105)
  %107 = load i32, i32* %11, align 4
  %108 = sext i32 %107 to i64
  %109 = mul i64 %108, 8
  %110 = trunc i64 %109 to i32
  %111 = call i64 @palloc(i32 %110)
  %112 = inttoptr i64 %111 to i8**
  store i8** %112, i8*** %17, align 8
  store i32 0, i32* %16, align 4
  br label %113

113:                                              ; preds = %162, %90
  %114 = load i32, i32* %16, align 4
  %115 = load i32, i32* %10, align 4
  %116 = icmp slt i32 %114, %115
  br i1 %116, label %117, label %165

117:                                              ; preds = %113
  %118 = load i32, i32* %9, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %150, label %120

120:                                              ; preds = %117
  store i32 0, i32* %19, align 4
  br label %121

121:                                              ; preds = %146, %120
  %122 = load i32, i32* %19, align 4
  %123 = load i32, i32* %11, align 4
  %124 = icmp slt i32 %122, %123
  br i1 %124, label %125, label %149

125:                                              ; preds = %121
  %126 = load i32*, i32** %6, align 8
  %127 = load i32, i32* %16, align 4
  %128 = load i32, i32* %19, align 4
  %129 = call i64 @PQgetisnull(i32* %126, i32 %127, i32 %128)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %136

131:                                              ; preds = %125
  %132 = load i8**, i8*** %17, align 8
  %133 = load i32, i32* %19, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i8*, i8** %132, i64 %134
  store i8* null, i8** %135, align 8
  br label %145

136:                                              ; preds = %125
  %137 = load i32*, i32** %6, align 8
  %138 = load i32, i32* %16, align 4
  %139 = load i32, i32* %19, align 4
  %140 = call i8* @PQgetvalue(i32* %137, i32 %138, i32 %139)
  %141 = load i8**, i8*** %17, align 8
  %142 = load i32, i32* %19, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i8*, i8** %141, i64 %143
  store i8* %140, i8** %144, align 8
  br label %145

145:                                              ; preds = %136, %131
  br label %146

146:                                              ; preds = %145
  %147 = load i32, i32* %19, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %19, align 4
  br label %121

149:                                              ; preds = %121
  br label %155

150:                                              ; preds = %117
  %151 = load i32*, i32** %6, align 8
  %152 = call i8* @PQcmdStatus(i32* %151)
  %153 = load i8**, i8*** %17, align 8
  %154 = getelementptr inbounds i8*, i8** %153, i64 0
  store i8* %152, i8** %154, align 8
  br label %155

155:                                              ; preds = %150, %149
  %156 = load i32*, i32** %12, align 8
  %157 = load i8**, i8*** %17, align 8
  %158 = call i32 @BuildTupleFromCStrings(i32* %156, i8** %157)
  store i32 %158, i32* %18, align 4
  %159 = load i32*, i32** %14, align 8
  %160 = load i32, i32* %18, align 4
  %161 = call i32 @tuplestore_puttuple(i32* %159, i32 %160)
  br label %162

162:                                              ; preds = %155
  %163 = load i32, i32* %16, align 4
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %16, align 4
  br label %113

165:                                              ; preds = %113
  %166 = load i32, i32* %13, align 4
  %167 = call i32 @restoreLocalGucs(i32 %166)
  %168 = load i32*, i32** %14, align 8
  %169 = call i32 @tuplestore_donestoring(i32* %168)
  br label %170

170:                                              ; preds = %165, %79
  %171 = call i32 (...) @PG_FINALLY()
  %172 = load i32*, i32** %6, align 8
  %173 = call i32 @PQclear(i32* %172)
  %174 = call i32 (...) @PG_END_TRY()
  ret void
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @PG_TRY(...) #1

declare dso_local i64 @PQresultStatus(i32*) #1

declare dso_local %struct.TYPE_14__* @CreateTemplateTupleDesc(i32) #1

declare dso_local i32 @TupleDescInitEntry(%struct.TYPE_14__*, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @get_call_result_type(%struct.TYPE_16__*, i32*, %struct.TYPE_14__**) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*) #1

declare dso_local i32 @elog(i32, i8*) #1

declare dso_local %struct.TYPE_14__* @CreateTupleDescCopy(%struct.TYPE_14__*) #1

declare dso_local i32 @PQntuples(i32*) #1

declare dso_local i32 @PQnfields(i32*) #1

declare dso_local i32* @TupleDescGetAttInMetadata(%struct.TYPE_14__*) #1

declare dso_local i32 @applyRemoteGucs(i32*) #1

declare dso_local i32 @MemoryContextSwitchTo(i32) #1

declare dso_local i32* @tuplestore_begin_heap(i32, i32, i32) #1

declare dso_local i64 @palloc(i32) #1

declare dso_local i64 @PQgetisnull(i32*, i32, i32) #1

declare dso_local i8* @PQgetvalue(i32*, i32, i32) #1

declare dso_local i8* @PQcmdStatus(i32*) #1

declare dso_local i32 @BuildTupleFromCStrings(i32*, i8**) #1

declare dso_local i32 @tuplestore_puttuple(i32*, i32) #1

declare dso_local i32 @restoreLocalGucs(i32) #1

declare dso_local i32 @tuplestore_donestoring(i32*) #1

declare dso_local i32 @PG_FINALLY(...) #1

declare dso_local i32 @PQclear(i32*) #1

declare dso_local i32 @PG_END_TRY(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
