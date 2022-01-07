; ModuleID = '/home/carl/AnghaBench/postgres/contrib/dblink/extr_dblink.c_get_sql_insert.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/dblink/extr_dblink.c_get_sql_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_16__ = type { i8* }
%struct.TYPE_18__ = type { i64, i32 }

@ERROR = common dso_local global i32 0, align 4
@ERRCODE_CARDINALITY_VIOLATION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"source row not found\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"INSERT INTO %s(\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c") VALUES(\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"NULL\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_17__*, i32*, i32, i8**, i8**)* @get_sql_insert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @get_sql_insert(%struct.TYPE_17__* %0, i32* %1, i32 %2, i8** %3, i8** %4) #0 {
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8**, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_15__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_16__, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.TYPE_18__*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8** %3, i8*** %9, align 8
  store i8** %4, i8*** %10, align 8
  %21 = call i32 @initStringInfo(%struct.TYPE_16__* %15)
  %22 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %23 = call i8* @generate_relation_name(%struct.TYPE_17__* %22)
  store i8* %23, i8** %11, align 8
  %24 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_15__*, %struct.TYPE_15__** %25, align 8
  store %struct.TYPE_15__* %26, %struct.TYPE_15__** %13, align 8
  %27 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %28 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %14, align 4
  %30 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %31 = load i32*, i32** %7, align 8
  %32 = load i32, i32* %8, align 4
  %33 = load i8**, i8*** %9, align 8
  %34 = call i32 @get_tuple_of_interest(%struct.TYPE_17__* %30, i32* %31, i32 %32, i8** %33)
  store i32 %34, i32* %12, align 4
  %35 = load i32, i32* %12, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %43, label %37

37:                                               ; preds = %5
  %38 = load i32, i32* @ERROR, align 4
  %39 = load i32, i32* @ERRCODE_CARDINALITY_VIOLATION, align 4
  %40 = call i32 @errcode(i32 %39)
  %41 = call i32 @errmsg(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %42 = call i32 @ereport(i32 %38, i32 %41)
  br label %43

43:                                               ; preds = %37, %5
  %44 = load i8*, i8** %11, align 8
  %45 = call i32 @appendStringInfo(%struct.TYPE_16__* %15, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i8* %44)
  store i32 0, i32* %19, align 4
  store i32 0, i32* %18, align 4
  br label %46

46:                                               ; preds = %71, %43
  %47 = load i32, i32* %18, align 4
  %48 = load i32, i32* %14, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %50, label %74

50:                                               ; preds = %46
  %51 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %52 = load i32, i32* %18, align 4
  %53 = call %struct.TYPE_18__* @TupleDescAttr(%struct.TYPE_15__* %51, i32 %52)
  store %struct.TYPE_18__* %53, %struct.TYPE_18__** %20, align 8
  %54 = load %struct.TYPE_18__*, %struct.TYPE_18__** %20, align 8
  %55 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %50
  br label %71

59:                                               ; preds = %50
  %60 = load i32, i32* %19, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %59
  %63 = call i32 @appendStringInfoChar(%struct.TYPE_16__* %15, i8 signext 44)
  br label %64

64:                                               ; preds = %62, %59
  %65 = load %struct.TYPE_18__*, %struct.TYPE_18__** %20, align 8
  %66 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @NameStr(i32 %67)
  %69 = call i8* @quote_ident_cstr(i32 %68)
  %70 = call i32 @appendStringInfoString(%struct.TYPE_16__* %15, i8* %69)
  store i32 1, i32* %19, align 4
  br label %71

71:                                               ; preds = %64, %58
  %72 = load i32, i32* %18, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %18, align 4
  br label %46

74:                                               ; preds = %46
  %75 = call i32 @appendStringInfoString(%struct.TYPE_16__* %15, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %19, align 4
  store i32 0, i32* %18, align 4
  br label %76

76:                                               ; preds = %135, %74
  %77 = load i32, i32* %18, align 4
  %78 = load i32, i32* %14, align 4
  %79 = icmp slt i32 %77, %78
  br i1 %79, label %80, label %138

80:                                               ; preds = %76
  %81 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %82 = load i32, i32* %18, align 4
  %83 = call %struct.TYPE_18__* @TupleDescAttr(%struct.TYPE_15__* %81, i32 %82)
  %84 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %80
  br label %135

88:                                               ; preds = %80
  %89 = load i32, i32* %19, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %88
  %92 = call i32 @appendStringInfoChar(%struct.TYPE_16__* %15, i8 signext 44)
  br label %93

93:                                               ; preds = %91, %88
  %94 = load i32*, i32** %7, align 8
  %95 = load i32, i32* %8, align 4
  %96 = load i32, i32* %18, align 4
  %97 = call i32 @get_attnum_pk_pos(i32* %94, i32 %95, i32 %96)
  store i32 %97, i32* %17, align 4
  %98 = load i32, i32* %17, align 4
  %99 = icmp sge i32 %98, 0
  br i1 %99, label %100, label %117

100:                                              ; preds = %93
  %101 = load i8**, i8*** %10, align 8
  %102 = load i32, i32* %17, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i8*, i8** %101, i64 %103
  %105 = load i8*, i8** %104, align 8
  %106 = icmp ne i8* %105, null
  br i1 %106, label %107, label %114

107:                                              ; preds = %100
  %108 = load i8**, i8*** %10, align 8
  %109 = load i32, i32* %17, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i8*, i8** %108, i64 %110
  %112 = load i8*, i8** %111, align 8
  %113 = call i8* @pstrdup(i8* %112)
  br label %115

114:                                              ; preds = %100
  br label %115

115:                                              ; preds = %114, %107
  %116 = phi i8* [ %113, %107 ], [ null, %114 ]
  store i8* %116, i8** %16, align 8
  br label %123

117:                                              ; preds = %93
  %118 = load i32, i32* %12, align 4
  %119 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %120 = load i32, i32* %18, align 4
  %121 = add nsw i32 %120, 1
  %122 = call i8* @SPI_getvalue(i32 %118, %struct.TYPE_15__* %119, i32 %121)
  store i8* %122, i8** %16, align 8
  br label %123

123:                                              ; preds = %117, %115
  %124 = load i8*, i8** %16, align 8
  %125 = icmp ne i8* %124, null
  br i1 %125, label %126, label %132

126:                                              ; preds = %123
  %127 = load i8*, i8** %16, align 8
  %128 = call i8* @quote_literal_cstr(i8* %127)
  %129 = call i32 @appendStringInfoString(%struct.TYPE_16__* %15, i8* %128)
  %130 = load i8*, i8** %16, align 8
  %131 = call i32 @pfree(i8* %130)
  br label %134

132:                                              ; preds = %123
  %133 = call i32 @appendStringInfoString(%struct.TYPE_16__* %15, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  br label %134

134:                                              ; preds = %132, %126
  store i32 1, i32* %19, align 4
  br label %135

135:                                              ; preds = %134, %87
  %136 = load i32, i32* %18, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %18, align 4
  br label %76

138:                                              ; preds = %76
  %139 = call i32 @appendStringInfoChar(%struct.TYPE_16__* %15, i8 signext 41)
  %140 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %15, i32 0, i32 0
  %141 = load i8*, i8** %140, align 8
  ret i8* %141
}

declare dso_local i32 @initStringInfo(%struct.TYPE_16__*) #1

declare dso_local i8* @generate_relation_name(%struct.TYPE_17__*) #1

declare dso_local i32 @get_tuple_of_interest(%struct.TYPE_17__*, i32*, i32, i8**) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*) #1

declare dso_local i32 @appendStringInfo(%struct.TYPE_16__*, i8*, i8*) #1

declare dso_local %struct.TYPE_18__* @TupleDescAttr(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @appendStringInfoChar(%struct.TYPE_16__*, i8 signext) #1

declare dso_local i32 @appendStringInfoString(%struct.TYPE_16__*, i8*) #1

declare dso_local i8* @quote_ident_cstr(i32) #1

declare dso_local i32 @NameStr(i32) #1

declare dso_local i32 @get_attnum_pk_pos(i32*, i32, i32) #1

declare dso_local i8* @pstrdup(i8*) #1

declare dso_local i8* @SPI_getvalue(i32, %struct.TYPE_15__*, i32) #1

declare dso_local i8* @quote_literal_cstr(i8*) #1

declare dso_local i32 @pfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
