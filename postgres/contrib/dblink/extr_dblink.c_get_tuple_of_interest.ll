; ModuleID = '/home/carl/AnghaBench/postgres/contrib/dblink/extr_dblink.c_get_tuple_of_interest.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/dblink/extr_dblink.c_get_tuple_of_interest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32* }
%struct.TYPE_17__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_18__ = type { i32, i64 }

@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"SPI connect failure - returned %d\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"SELECT \00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"NULL\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c" FROM %s WHERE \00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c" AND \00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c" = %s\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c" IS NULL\00", align 1
@SPI_OK_SELECT = common dso_local global i32 0, align 4
@SPI_processed = common dso_local global i32 0, align 4
@ERRCODE_CARDINALITY_VIOLATION = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [45 x i8] c"source criteria matched more than one record\00", align 1
@SPI_tuptable = common dso_local global %struct.TYPE_16__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_17__*, i32*, i32, i8**)* @get_tuple_of_interest to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @get_tuple_of_interest(%struct.TYPE_17__* %0, i32* %1, i32 %2, i8** %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8**, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.TYPE_14__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_15__, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_18__*, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_18__*, align 8
  %20 = alloca %struct.TYPE_16__*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8** %3, i8*** %9, align 8
  %21 = call i32 (...) @SPI_connect()
  store i32 %21, i32* %14, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %4
  %24 = load i32, i32* @ERROR, align 4
  %25 = load i32, i32* %14, align 4
  %26 = call i32 @elog(i32 %24, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %25)
  br label %27

27:                                               ; preds = %23, %4
  %28 = call i32 @initStringInfo(%struct.TYPE_15__* %13)
  %29 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %30 = call i8* @generate_relation_name(%struct.TYPE_17__* %29)
  store i8* %30, i8** %10, align 8
  %31 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_14__*, %struct.TYPE_14__** %32, align 8
  store %struct.TYPE_14__* %33, %struct.TYPE_14__** %11, align 8
  %34 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %35 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %12, align 4
  %37 = call i32 @appendStringInfoString(%struct.TYPE_15__* %13, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %16, align 4
  br label %38

38:                                               ; preds = %65, %27
  %39 = load i32, i32* %16, align 4
  %40 = load i32, i32* %12, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %68

42:                                               ; preds = %38
  %43 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %44 = load i32, i32* %16, align 4
  %45 = call %struct.TYPE_18__* @TupleDescAttr(%struct.TYPE_14__* %43, i32 %44)
  store %struct.TYPE_18__* %45, %struct.TYPE_18__** %17, align 8
  %46 = load i32, i32* %16, align 4
  %47 = icmp sgt i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %42
  %49 = call i32 @appendStringInfoString(%struct.TYPE_15__* %13, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  br label %50

50:                                               ; preds = %48, %42
  %51 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %52 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %50
  %56 = call i32 @appendStringInfoString(%struct.TYPE_15__* %13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  br label %64

57:                                               ; preds = %50
  %58 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %59 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @NameStr(i32 %60)
  %62 = call i8* @quote_ident_cstr(i32 %61)
  %63 = call i32 @appendStringInfoString(%struct.TYPE_15__* %13, i8* %62)
  br label %64

64:                                               ; preds = %57, %55
  br label %65

65:                                               ; preds = %64
  %66 = load i32, i32* %16, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %16, align 4
  br label %38

68:                                               ; preds = %38
  %69 = load i8*, i8** %10, align 8
  %70 = call i32 @appendStringInfo(%struct.TYPE_15__* %13, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i8* %69)
  store i32 0, i32* %16, align 4
  br label %71

71:                                               ; preds = %112, %68
  %72 = load i32, i32* %16, align 4
  %73 = load i32, i32* %8, align 4
  %74 = icmp slt i32 %72, %73
  br i1 %74, label %75, label %115

75:                                               ; preds = %71
  %76 = load i32*, i32** %7, align 8
  %77 = load i32, i32* %16, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %76, i64 %78
  %80 = load i32, i32* %79, align 4
  store i32 %80, i32* %18, align 4
  %81 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %82 = load i32, i32* %18, align 4
  %83 = call %struct.TYPE_18__* @TupleDescAttr(%struct.TYPE_14__* %81, i32 %82)
  store %struct.TYPE_18__* %83, %struct.TYPE_18__** %19, align 8
  %84 = load i32, i32* %16, align 4
  %85 = icmp sgt i32 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %75
  %87 = call i32 @appendStringInfoString(%struct.TYPE_15__* %13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  br label %88

88:                                               ; preds = %86, %75
  %89 = load %struct.TYPE_18__*, %struct.TYPE_18__** %19, align 8
  %90 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @NameStr(i32 %91)
  %93 = call i8* @quote_ident_cstr(i32 %92)
  %94 = call i32 @appendStringInfoString(%struct.TYPE_15__* %13, i8* %93)
  %95 = load i8**, i8*** %9, align 8
  %96 = load i32, i32* %16, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i8*, i8** %95, i64 %97
  %99 = load i8*, i8** %98, align 8
  %100 = icmp ne i8* %99, null
  br i1 %100, label %101, label %109

101:                                              ; preds = %88
  %102 = load i8**, i8*** %9, align 8
  %103 = load i32, i32* %16, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i8*, i8** %102, i64 %104
  %106 = load i8*, i8** %105, align 8
  %107 = call i8* @quote_literal_cstr(i8* %106)
  %108 = call i32 @appendStringInfo(%struct.TYPE_15__* %13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i8* %107)
  br label %111

109:                                              ; preds = %88
  %110 = call i32 @appendStringInfoString(%struct.TYPE_15__* %13, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0))
  br label %111

111:                                              ; preds = %109, %101
  br label %112

112:                                              ; preds = %111
  %113 = load i32, i32* %16, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %16, align 4
  br label %71

115:                                              ; preds = %71
  %116 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @SPI_exec(i32 %117, i32 0)
  store i32 %118, i32* %14, align 4
  %119 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @pfree(i32 %120)
  %122 = load i32, i32* %14, align 4
  %123 = load i32, i32* @SPI_OK_SELECT, align 4
  %124 = icmp eq i32 %122, %123
  br i1 %124, label %125, label %134

125:                                              ; preds = %115
  %126 = load i32, i32* @SPI_processed, align 4
  %127 = icmp sgt i32 %126, 1
  br i1 %127, label %128, label %134

128:                                              ; preds = %125
  %129 = load i32, i32* @ERROR, align 4
  %130 = load i32, i32* @ERRCODE_CARDINALITY_VIOLATION, align 4
  %131 = call i32 @errcode(i32 %130)
  %132 = call i32 @errmsg(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.8, i64 0, i64 0))
  %133 = call i32 @ereport(i32 %129, i32 %132)
  br label %153

134:                                              ; preds = %125, %115
  %135 = load i32, i32* %14, align 4
  %136 = load i32, i32* @SPI_OK_SELECT, align 4
  %137 = icmp eq i32 %135, %136
  br i1 %137, label %138, label %151

138:                                              ; preds = %134
  %139 = load i32, i32* @SPI_processed, align 4
  %140 = icmp eq i32 %139, 1
  br i1 %140, label %141, label %151

141:                                              ; preds = %138
  %142 = load %struct.TYPE_16__*, %struct.TYPE_16__** @SPI_tuptable, align 8
  store %struct.TYPE_16__* %142, %struct.TYPE_16__** %20, align 8
  %143 = load %struct.TYPE_16__*, %struct.TYPE_16__** %20, align 8
  %144 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %143, i32 0, i32 0
  %145 = load i32*, i32** %144, align 8
  %146 = getelementptr inbounds i32, i32* %145, i64 0
  %147 = load i32, i32* %146, align 4
  %148 = call i32* @SPI_copytuple(i32 %147)
  store i32* %148, i32** %15, align 8
  %149 = call i32 (...) @SPI_finish()
  %150 = load i32*, i32** %15, align 8
  store i32* %150, i32** %5, align 8
  br label %154

151:                                              ; preds = %138, %134
  %152 = call i32 (...) @SPI_finish()
  store i32* null, i32** %5, align 8
  br label %154

153:                                              ; preds = %128
  store i32* null, i32** %5, align 8
  br label %154

154:                                              ; preds = %153, %151, %141
  %155 = load i32*, i32** %5, align 8
  ret i32* %155
}

declare dso_local i32 @SPI_connect(...) #1

declare dso_local i32 @elog(i32, i8*, i32) #1

declare dso_local i32 @initStringInfo(%struct.TYPE_15__*) #1

declare dso_local i8* @generate_relation_name(%struct.TYPE_17__*) #1

declare dso_local i32 @appendStringInfoString(%struct.TYPE_15__*, i8*) #1

declare dso_local %struct.TYPE_18__* @TupleDescAttr(%struct.TYPE_14__*, i32) #1

declare dso_local i8* @quote_ident_cstr(i32) #1

declare dso_local i32 @NameStr(i32) #1

declare dso_local i32 @appendStringInfo(%struct.TYPE_15__*, i8*, i8*) #1

declare dso_local i8* @quote_literal_cstr(i8*) #1

declare dso_local i32 @SPI_exec(i32, i32) #1

declare dso_local i32 @pfree(i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*) #1

declare dso_local i32* @SPI_copytuple(i32) #1

declare dso_local i32 @SPI_finish(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
