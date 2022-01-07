; ModuleID = '/home/carl/AnghaBench/postgres/contrib/dblink/extr_dblink.c_storeRow.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/dblink/extr_dblink.c_storeRow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i8**, i32, i32*, i32, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i64 }
%struct.TYPE_14__ = type { %struct.TYPE_13__*, i32*, %struct.TYPE_11__* }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_11__ = type { i32 }

@ERROR = common dso_local global i32 0, align 4
@ERRCODE_FEATURE_NOT_SUPPORTED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [75 x i8] c"function returning record called in context that cannot accept type record\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"return type must be a row type\00", align 1
@ERRCODE_DATATYPE_MISMATCH = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [77 x i8] c"remote query result rowtype does not match the specified FROM clause rowtype\00", align 1
@work_mem = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_12__*, i32*, i32)* @storeRow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @storeRow(%struct.TYPE_12__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_14__*, align 8
  %12 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %13 = load i32*, i32** %5, align 8
  %14 = call i32 @PQnfields(i32* %13)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %112

17:                                               ; preds = %3
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 4
  %20 = load volatile %struct.TYPE_15__*, %struct.TYPE_15__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %23, %struct.TYPE_14__** %11, align 8
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 2
  %26 = load volatile i32*, i32** %25, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %28, label %33

28:                                               ; preds = %17
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 2
  %31 = load volatile i32*, i32** %30, align 8
  %32 = call i32 @tuplestore_end(i32* %31)
  br label %33

33:                                               ; preds = %28, %17
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 2
  store volatile i32* null, i32** %35, align 8
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 4
  %38 = load volatile %struct.TYPE_15__*, %struct.TYPE_15__** %37, align 8
  %39 = call i32 @get_call_result_type(%struct.TYPE_15__* %38, i32* null, %struct.TYPE_13__** %12)
  switch i32 %39, label %47 [
    i32 129, label %40
    i32 128, label %41
  ]

40:                                               ; preds = %33
  br label %50

41:                                               ; preds = %33
  %42 = load i32, i32* @ERROR, align 4
  %43 = load i32, i32* @ERRCODE_FEATURE_NOT_SUPPORTED, align 4
  %44 = call i32 @errcode(i32 %43)
  %45 = call i32 @errmsg(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str, i64 0, i64 0))
  %46 = call i32 @ereport(i32 %42, i32 %45)
  br label %50

47:                                               ; preds = %33
  %48 = load i32, i32* @ERROR, align 4
  %49 = call i32 @elog(i32 %48, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  br label %50

50:                                               ; preds = %47, %41, %40
  %51 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %52 = call %struct.TYPE_13__* @CreateTupleDescCopy(%struct.TYPE_13__* %51)
  store %struct.TYPE_13__* %52, %struct.TYPE_13__** %12, align 8
  %53 = load i32, i32* %7, align 4
  %54 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %55 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = icmp ne i32 %53, %56
  br i1 %57, label %58, label %64

58:                                               ; preds = %50
  %59 = load i32, i32* @ERROR, align 4
  %60 = load i32, i32* @ERRCODE_DATATYPE_MISMATCH, align 4
  %61 = call i32 @errcode(i32 %60)
  %62 = call i32 @errmsg(i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.2, i64 0, i64 0))
  %63 = call i32 @ereport(i32 %59, i32 %62)
  br label %64

64:                                               ; preds = %58, %50
  %65 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %66 = call i32 @TupleDescGetAttInMetadata(%struct.TYPE_13__* %65)
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %67, i32 0, i32 3
  store volatile i32 %66, i32* %68, align 8
  %69 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %70 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %69, i32 0, i32 2
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @MemoryContextSwitchTo(i32 %73)
  store i32 %74, i32* %10, align 4
  %75 = load i32, i32* @work_mem, align 4
  %76 = call i32* @tuplestore_begin_heap(i32 1, i32 0, i32 %75)
  %77 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %77, i32 0, i32 2
  store volatile i32* %76, i32** %78, align 8
  %79 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %79, i32 0, i32 2
  %81 = load volatile i32*, i32** %80, align 8
  %82 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %83 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %82, i32 0, i32 1
  store i32* %81, i32** %83, align 8
  %84 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %85 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %86 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %85, i32 0, i32 0
  store %struct.TYPE_13__* %84, %struct.TYPE_13__** %86, align 8
  %87 = load i32, i32* %10, align 4
  %88 = call i32 @MemoryContextSwitchTo(i32 %87)
  %89 = load i32*, i32** %5, align 8
  %90 = call i32 @PQntuples(i32* %89)
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %64
  br label %171

93:                                               ; preds = %64
  %94 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %94, i32 0, i32 0
  %96 = load volatile i8**, i8*** %95, align 8
  %97 = icmp ne i8** %96, null
  br i1 %97, label %98, label %103

98:                                               ; preds = %93
  %99 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %99, i32 0, i32 0
  %101 = load volatile i8**, i8*** %100, align 8
  %102 = call i32 @pfree(i8** %101)
  br label %103

103:                                              ; preds = %98, %93
  %104 = load i32, i32* %7, align 4
  %105 = sext i32 %104 to i64
  %106 = mul i64 %105, 8
  %107 = trunc i64 %106 to i32
  %108 = call i64 @palloc(i32 %107)
  %109 = inttoptr i64 %108 to i8**
  %110 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %111 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %110, i32 0, i32 0
  store volatile i8** %109, i8*** %111, align 8
  br label %112

112:                                              ; preds = %103, %3
  %113 = load i32*, i32** %5, align 8
  %114 = call i32 @PQntuples(i32* %113)
  %115 = icmp eq i32 %114, 1
  %116 = zext i1 %115 to i32
  %117 = call i32 @Assert(i32 %116)
  %118 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %119 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %118, i32 0, i32 1
  %120 = load volatile i32, i32* %119, align 8
  %121 = call i32 @MemoryContextSwitchTo(i32 %120)
  store i32 %121, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %122

122:                                              ; preds = %149, %112
  %123 = load i32, i32* %9, align 4
  %124 = load i32, i32* %7, align 4
  %125 = icmp slt i32 %123, %124
  br i1 %125, label %126, label %152

126:                                              ; preds = %122
  %127 = load i32*, i32** %5, align 8
  %128 = load i32, i32* %9, align 4
  %129 = call i64 @PQgetisnull(i32* %127, i32 0, i32 %128)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %138

131:                                              ; preds = %126
  %132 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %133 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %132, i32 0, i32 0
  %134 = load volatile i8**, i8*** %133, align 8
  %135 = load i32, i32* %9, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i8*, i8** %134, i64 %136
  store i8* null, i8** %137, align 8
  br label %148

138:                                              ; preds = %126
  %139 = load i32*, i32** %5, align 8
  %140 = load i32, i32* %9, align 4
  %141 = call i8* @PQgetvalue(i32* %139, i32 0, i32 %140)
  %142 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %143 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %142, i32 0, i32 0
  %144 = load volatile i8**, i8*** %143, align 8
  %145 = load i32, i32* %9, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i8*, i8** %144, i64 %146
  store i8* %141, i8** %147, align 8
  br label %148

148:                                              ; preds = %138, %131
  br label %149

149:                                              ; preds = %148
  %150 = load i32, i32* %9, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %9, align 4
  br label %122

152:                                              ; preds = %122
  %153 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %154 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %153, i32 0, i32 3
  %155 = load volatile i32, i32* %154, align 8
  %156 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %157 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %156, i32 0, i32 0
  %158 = load volatile i8**, i8*** %157, align 8
  %159 = call i32 @BuildTupleFromCStrings(i32 %155, i8** %158)
  store i32 %159, i32* %8, align 4
  %160 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %161 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %160, i32 0, i32 2
  %162 = load volatile i32*, i32** %161, align 8
  %163 = load i32, i32* %8, align 4
  %164 = call i32 @tuplestore_puttuple(i32* %162, i32 %163)
  %165 = load i32, i32* %10, align 4
  %166 = call i32 @MemoryContextSwitchTo(i32 %165)
  %167 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %168 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %167, i32 0, i32 1
  %169 = load volatile i32, i32* %168, align 8
  %170 = call i32 @MemoryContextReset(i32 %169)
  br label %171

171:                                              ; preds = %152, %92
  ret void
}

declare dso_local i32 @PQnfields(i32*) #1

declare dso_local i32 @tuplestore_end(i32*) #1

declare dso_local i32 @get_call_result_type(%struct.TYPE_15__*, i32*, %struct.TYPE_13__**) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*) #1

declare dso_local i32 @elog(i32, i8*) #1

declare dso_local %struct.TYPE_13__* @CreateTupleDescCopy(%struct.TYPE_13__*) #1

declare dso_local i32 @TupleDescGetAttInMetadata(%struct.TYPE_13__*) #1

declare dso_local i32 @MemoryContextSwitchTo(i32) #1

declare dso_local i32* @tuplestore_begin_heap(i32, i32, i32) #1

declare dso_local i32 @PQntuples(i32*) #1

declare dso_local i32 @pfree(i8**) #1

declare dso_local i64 @palloc(i32) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i64 @PQgetisnull(i32*, i32, i32) #1

declare dso_local i8* @PQgetvalue(i32*, i32, i32) #1

declare dso_local i32 @BuildTupleFromCStrings(i32, i8**) #1

declare dso_local i32 @tuplestore_puttuple(i32*, i32) #1

declare dso_local i32 @MemoryContextReset(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
