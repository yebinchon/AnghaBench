; ModuleID = '/home/carl/AnghaBench/postgres/contrib/dblink/extr_dblink.c_get_sql_update.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/dblink/extr_dblink.c_get_sql_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_15__ = type { i8* }
%struct.TYPE_17__ = type { i32, i64 }

@ERROR = common dso_local global i32 0, align 4
@ERRCODE_CARDINALITY_VIOLATION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"source row not found\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"UPDATE %s SET \00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"%s = \00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"NULL\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c" WHERE \00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c" AND \00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c" = %s\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c" IS NULL\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_16__*, i32*, i32, i8**, i8**)* @get_sql_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @get_sql_update(%struct.TYPE_16__* %0, i32* %1, i32 %2, i8** %3, i8** %4) #0 {
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8**, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_14__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_15__, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.TYPE_17__*, align 8
  %21 = alloca i32, align 4
  %22 = alloca %struct.TYPE_17__*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8** %3, i8*** %9, align 8
  store i8** %4, i8*** %10, align 8
  %23 = call i32 @initStringInfo(%struct.TYPE_15__* %15)
  %24 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %25 = call i8* @generate_relation_name(%struct.TYPE_16__* %24)
  store i8* %25, i8** %11, align 8
  %26 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_14__*, %struct.TYPE_14__** %27, align 8
  store %struct.TYPE_14__* %28, %struct.TYPE_14__** %13, align 8
  %29 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %30 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %14, align 4
  %32 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %33 = load i32*, i32** %7, align 8
  %34 = load i32, i32* %8, align 4
  %35 = load i8**, i8*** %9, align 8
  %36 = call i32 @get_tuple_of_interest(%struct.TYPE_16__* %32, i32* %33, i32 %34, i8** %35)
  store i32 %36, i32* %12, align 4
  %37 = load i32, i32* %12, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %45, label %39

39:                                               ; preds = %5
  %40 = load i32, i32* @ERROR, align 4
  %41 = load i32, i32* @ERRCODE_CARDINALITY_VIOLATION, align 4
  %42 = call i32 @errcode(i32 %41)
  %43 = call i32 @errmsg(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %44 = call i32 @ereport(i32 %40, i32 %43)
  br label %45

45:                                               ; preds = %39, %5
  %46 = load i8*, i8** %11, align 8
  %47 = call i32 @appendStringInfo(%struct.TYPE_15__* %15, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8* %46)
  store i32 0, i32* %19, align 4
  store i32 0, i32* %18, align 4
  br label %48

48:                                               ; preds = %114, %45
  %49 = load i32, i32* %18, align 4
  %50 = load i32, i32* %14, align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %52, label %117

52:                                               ; preds = %48
  %53 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %54 = load i32, i32* %18, align 4
  %55 = call %struct.TYPE_17__* @TupleDescAttr(%struct.TYPE_14__* %53, i32 %54)
  store %struct.TYPE_17__* %55, %struct.TYPE_17__** %20, align 8
  %56 = load %struct.TYPE_17__*, %struct.TYPE_17__** %20, align 8
  %57 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %52
  br label %114

61:                                               ; preds = %52
  %62 = load i32, i32* %19, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %61
  %65 = call i32 @appendStringInfoString(%struct.TYPE_15__* %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  br label %66

66:                                               ; preds = %64, %61
  %67 = load %struct.TYPE_17__*, %struct.TYPE_17__** %20, align 8
  %68 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @NameStr(i32 %69)
  %71 = call i8* @quote_ident_cstr(i32 %70)
  %72 = call i32 @appendStringInfo(%struct.TYPE_15__* %15, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* %71)
  %73 = load i32*, i32** %7, align 8
  %74 = load i32, i32* %8, align 4
  %75 = load i32, i32* %18, align 4
  %76 = call i32 @get_attnum_pk_pos(i32* %73, i32 %74, i32 %75)
  store i32 %76, i32* %17, align 4
  %77 = load i32, i32* %17, align 4
  %78 = icmp sge i32 %77, 0
  br i1 %78, label %79, label %96

79:                                               ; preds = %66
  %80 = load i8**, i8*** %10, align 8
  %81 = load i32, i32* %17, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i8*, i8** %80, i64 %82
  %84 = load i8*, i8** %83, align 8
  %85 = icmp ne i8* %84, null
  br i1 %85, label %86, label %93

86:                                               ; preds = %79
  %87 = load i8**, i8*** %10, align 8
  %88 = load i32, i32* %17, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i8*, i8** %87, i64 %89
  %91 = load i8*, i8** %90, align 8
  %92 = call i8* @pstrdup(i8* %91)
  br label %94

93:                                               ; preds = %79
  br label %94

94:                                               ; preds = %93, %86
  %95 = phi i8* [ %92, %86 ], [ null, %93 ]
  store i8* %95, i8** %16, align 8
  br label %102

96:                                               ; preds = %66
  %97 = load i32, i32* %12, align 4
  %98 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %99 = load i32, i32* %18, align 4
  %100 = add nsw i32 %99, 1
  %101 = call i8* @SPI_getvalue(i32 %97, %struct.TYPE_14__* %98, i32 %100)
  store i8* %101, i8** %16, align 8
  br label %102

102:                                              ; preds = %96, %94
  %103 = load i8*, i8** %16, align 8
  %104 = icmp ne i8* %103, null
  br i1 %104, label %105, label %111

105:                                              ; preds = %102
  %106 = load i8*, i8** %16, align 8
  %107 = call i8* @quote_literal_cstr(i8* %106)
  %108 = call i32 @appendStringInfoString(%struct.TYPE_15__* %15, i8* %107)
  %109 = load i8*, i8** %16, align 8
  %110 = call i32 @pfree(i8* %109)
  br label %113

111:                                              ; preds = %102
  %112 = call i32 @appendStringInfoString(%struct.TYPE_15__* %15, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  br label %113

113:                                              ; preds = %111, %105
  store i32 1, i32* %19, align 4
  br label %114

114:                                              ; preds = %113, %60
  %115 = load i32, i32* %18, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %18, align 4
  br label %48

117:                                              ; preds = %48
  %118 = call i32 @appendStringInfoString(%struct.TYPE_15__* %15, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  store i32 0, i32* %18, align 4
  br label %119

119:                                              ; preds = %157, %117
  %120 = load i32, i32* %18, align 4
  %121 = load i32, i32* %8, align 4
  %122 = icmp slt i32 %120, %121
  br i1 %122, label %123, label %160

123:                                              ; preds = %119
  %124 = load i32*, i32** %7, align 8
  %125 = load i32, i32* %18, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i32, i32* %124, i64 %126
  %128 = load i32, i32* %127, align 4
  store i32 %128, i32* %21, align 4
  %129 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %130 = load i32, i32* %21, align 4
  %131 = call %struct.TYPE_17__* @TupleDescAttr(%struct.TYPE_14__* %129, i32 %130)
  store %struct.TYPE_17__* %131, %struct.TYPE_17__** %22, align 8
  %132 = load i32, i32* %18, align 4
  %133 = icmp sgt i32 %132, 0
  br i1 %133, label %134, label %136

134:                                              ; preds = %123
  %135 = call i32 @appendStringInfoString(%struct.TYPE_15__* %15, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  br label %136

136:                                              ; preds = %134, %123
  %137 = load %struct.TYPE_17__*, %struct.TYPE_17__** %22, align 8
  %138 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = call i32 @NameStr(i32 %139)
  %141 = call i8* @quote_ident_cstr(i32 %140)
  %142 = call i32 @appendStringInfoString(%struct.TYPE_15__* %15, i8* %141)
  %143 = load i8**, i8*** %10, align 8
  %144 = load i32, i32* %18, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i8*, i8** %143, i64 %145
  %147 = load i8*, i8** %146, align 8
  store i8* %147, i8** %16, align 8
  %148 = load i8*, i8** %16, align 8
  %149 = icmp ne i8* %148, null
  br i1 %149, label %150, label %154

150:                                              ; preds = %136
  %151 = load i8*, i8** %16, align 8
  %152 = call i8* @quote_literal_cstr(i8* %151)
  %153 = call i32 @appendStringInfo(%struct.TYPE_15__* %15, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i8* %152)
  br label %156

154:                                              ; preds = %136
  %155 = call i32 @appendStringInfoString(%struct.TYPE_15__* %15, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0))
  br label %156

156:                                              ; preds = %154, %150
  br label %157

157:                                              ; preds = %156
  %158 = load i32, i32* %18, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %18, align 4
  br label %119

160:                                              ; preds = %119
  %161 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %15, i32 0, i32 0
  %162 = load i8*, i8** %161, align 8
  ret i8* %162
}

declare dso_local i32 @initStringInfo(%struct.TYPE_15__*) #1

declare dso_local i8* @generate_relation_name(%struct.TYPE_16__*) #1

declare dso_local i32 @get_tuple_of_interest(%struct.TYPE_16__*, i32*, i32, i8**) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*) #1

declare dso_local i32 @appendStringInfo(%struct.TYPE_15__*, i8*, i8*) #1

declare dso_local %struct.TYPE_17__* @TupleDescAttr(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @appendStringInfoString(%struct.TYPE_15__*, i8*) #1

declare dso_local i8* @quote_ident_cstr(i32) #1

declare dso_local i32 @NameStr(i32) #1

declare dso_local i32 @get_attnum_pk_pos(i32*, i32, i32) #1

declare dso_local i8* @pstrdup(i8*) #1

declare dso_local i8* @SPI_getvalue(i32, %struct.TYPE_14__*, i32) #1

declare dso_local i8* @quote_literal_cstr(i8*) #1

declare dso_local i32 @pfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
