; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_xml.c_map_sql_type_to_xml_name.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_xml.c_map_sql_type_to_xml_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i8* }
%struct.TYPE_7__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [5 x i8] c"CHAR\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"CHAR_%d\00", align 1
@VARHDRSZ = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"VARCHAR\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"VARCHAR_%d\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"NUMERIC\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"NUMERIC_%d_%d\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"INTEGER\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"SMALLINT\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"BIGINT\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"REAL\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"DOUBLE\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"BOOLEAN\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"TIME\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"TIME_%d\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"TIME_WTZ\00", align 1
@.str.15 = private unnamed_addr constant [12 x i8] c"TIME_WTZ_%d\00", align 1
@.str.16 = private unnamed_addr constant [10 x i8] c"TIMESTAMP\00", align 1
@.str.17 = private unnamed_addr constant [13 x i8] c"TIMESTAMP_%d\00", align 1
@.str.18 = private unnamed_addr constant [14 x i8] c"TIMESTAMP_WTZ\00", align 1
@.str.19 = private unnamed_addr constant [17 x i8] c"TIMESTAMP_WTZ_%d\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"DATE\00", align 1
@.str.21 = private unnamed_addr constant [4 x i8] c"XML\00", align 1
@TYPEOID = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str.22 = private unnamed_addr constant [32 x i8] c"cache lookup failed for type %u\00", align 1
@TYPTYPE_DOMAIN = common dso_local global i32 0, align 4
@.str.23 = private unnamed_addr constant [7 x i8] c"Domain\00", align 1
@.str.24 = private unnamed_addr constant [4 x i8] c"UDT\00", align 1
@MyDatabaseId = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32, i32)* @map_sql_type_to_xml_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @map_sql_type_to_xml_name(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_7__*, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %8 = call i32 @initStringInfo(%struct.TYPE_6__* %5)
  %9 = load i32, i32* %3, align 4
  switch i32 %9, label %101 [
    i32 141, label %10
    i32 129, label %21
    i32 134, label %32
    i32 136, label %49
    i32 137, label %51
    i32 135, label %53
    i32 139, label %55
    i32 138, label %57
    i32 142, label %59
    i32 133, label %61
    i32 130, label %70
    i32 132, label %79
    i32 131, label %88
    i32 140, label %97
    i32 128, label %99
  ]

10:                                               ; preds = %2
  %11 = load i32, i32* %4, align 4
  %12 = icmp eq i32 %11, -1
  br i1 %12, label %13, label %15

13:                                               ; preds = %10
  %14 = call i32 @appendStringInfoString(%struct.TYPE_6__* %5, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  br label %20

15:                                               ; preds = %10
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @VARHDRSZ, align 4
  %18 = sub nsw i32 %16, %17
  %19 = call i32 (%struct.TYPE_6__*, i8*, i32, ...) @appendStringInfo(%struct.TYPE_6__* %5, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %18)
  br label %20

20:                                               ; preds = %15, %13
  br label %139

21:                                               ; preds = %2
  %22 = load i32, i32* %4, align 4
  %23 = icmp eq i32 %22, -1
  br i1 %23, label %24, label %26

24:                                               ; preds = %21
  %25 = call i32 @appendStringInfoString(%struct.TYPE_6__* %5, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  br label %31

26:                                               ; preds = %21
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* @VARHDRSZ, align 4
  %29 = sub nsw i32 %27, %28
  %30 = call i32 (%struct.TYPE_6__*, i8*, i32, ...) @appendStringInfo(%struct.TYPE_6__* %5, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 %29)
  br label %31

31:                                               ; preds = %26, %24
  br label %139

32:                                               ; preds = %2
  %33 = load i32, i32* %4, align 4
  %34 = icmp eq i32 %33, -1
  br i1 %34, label %35, label %37

35:                                               ; preds = %32
  %36 = call i32 @appendStringInfoString(%struct.TYPE_6__* %5, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  br label %48

37:                                               ; preds = %32
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* @VARHDRSZ, align 4
  %40 = sub nsw i32 %38, %39
  %41 = ashr i32 %40, 16
  %42 = and i32 %41, 65535
  %43 = load i32, i32* %4, align 4
  %44 = load i32, i32* @VARHDRSZ, align 4
  %45 = sub nsw i32 %43, %44
  %46 = and i32 %45, 65535
  %47 = call i32 (%struct.TYPE_6__*, i8*, i32, ...) @appendStringInfo(%struct.TYPE_6__* %5, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i32 %42, i32 %46)
  br label %48

48:                                               ; preds = %37, %35
  br label %139

49:                                               ; preds = %2
  %50 = call i32 @appendStringInfoString(%struct.TYPE_6__* %5, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0))
  br label %139

51:                                               ; preds = %2
  %52 = call i32 @appendStringInfoString(%struct.TYPE_6__* %5, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0))
  br label %139

53:                                               ; preds = %2
  %54 = call i32 @appendStringInfoString(%struct.TYPE_6__* %5, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0))
  br label %139

55:                                               ; preds = %2
  %56 = call i32 @appendStringInfoString(%struct.TYPE_6__* %5, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0))
  br label %139

57:                                               ; preds = %2
  %58 = call i32 @appendStringInfoString(%struct.TYPE_6__* %5, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0))
  br label %139

59:                                               ; preds = %2
  %60 = call i32 @appendStringInfoString(%struct.TYPE_6__* %5, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0))
  br label %139

61:                                               ; preds = %2
  %62 = load i32, i32* %4, align 4
  %63 = icmp eq i32 %62, -1
  br i1 %63, label %64, label %66

64:                                               ; preds = %61
  %65 = call i32 @appendStringInfoString(%struct.TYPE_6__* %5, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0))
  br label %69

66:                                               ; preds = %61
  %67 = load i32, i32* %4, align 4
  %68 = call i32 (%struct.TYPE_6__*, i8*, i32, ...) @appendStringInfo(%struct.TYPE_6__* %5, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0), i32 %67)
  br label %69

69:                                               ; preds = %66, %64
  br label %139

70:                                               ; preds = %2
  %71 = load i32, i32* %4, align 4
  %72 = icmp eq i32 %71, -1
  br i1 %72, label %73, label %75

73:                                               ; preds = %70
  %74 = call i32 @appendStringInfoString(%struct.TYPE_6__* %5, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i64 0, i64 0))
  br label %78

75:                                               ; preds = %70
  %76 = load i32, i32* %4, align 4
  %77 = call i32 (%struct.TYPE_6__*, i8*, i32, ...) @appendStringInfo(%struct.TYPE_6__* %5, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i64 0, i64 0), i32 %76)
  br label %78

78:                                               ; preds = %75, %73
  br label %139

79:                                               ; preds = %2
  %80 = load i32, i32* %4, align 4
  %81 = icmp eq i32 %80, -1
  br i1 %81, label %82, label %84

82:                                               ; preds = %79
  %83 = call i32 @appendStringInfoString(%struct.TYPE_6__* %5, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i64 0, i64 0))
  br label %87

84:                                               ; preds = %79
  %85 = load i32, i32* %4, align 4
  %86 = call i32 (%struct.TYPE_6__*, i8*, i32, ...) @appendStringInfo(%struct.TYPE_6__* %5, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.17, i64 0, i64 0), i32 %85)
  br label %87

87:                                               ; preds = %84, %82
  br label %139

88:                                               ; preds = %2
  %89 = load i32, i32* %4, align 4
  %90 = icmp eq i32 %89, -1
  br i1 %90, label %91, label %93

91:                                               ; preds = %88
  %92 = call i32 @appendStringInfoString(%struct.TYPE_6__* %5, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i64 0, i64 0))
  br label %96

93:                                               ; preds = %88
  %94 = load i32, i32* %4, align 4
  %95 = call i32 (%struct.TYPE_6__*, i8*, i32, ...) @appendStringInfo(%struct.TYPE_6__* %5, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.19, i64 0, i64 0), i32 %94)
  br label %96

96:                                               ; preds = %93, %91
  br label %139

97:                                               ; preds = %2
  %98 = call i32 @appendStringInfoString(%struct.TYPE_6__* %5, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i64 0, i64 0))
  br label %139

99:                                               ; preds = %2
  %100 = call i32 @appendStringInfoString(%struct.TYPE_6__* %5, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.21, i64 0, i64 0))
  br label %139

101:                                              ; preds = %2
  %102 = load i32, i32* @TYPEOID, align 4
  %103 = load i32, i32* %3, align 4
  %104 = call i32 @ObjectIdGetDatum(i32 %103)
  %105 = call i32 @SearchSysCache1(i32 %102, i32 %104)
  store i32 %105, i32* %6, align 4
  %106 = load i32, i32* %6, align 4
  %107 = call i32 @HeapTupleIsValid(i32 %106)
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %113, label %109

109:                                              ; preds = %101
  %110 = load i32, i32* @ERROR, align 4
  %111 = load i32, i32* %3, align 4
  %112 = call i32 @elog(i32 %110, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.22, i64 0, i64 0), i32 %111)
  br label %113

113:                                              ; preds = %109, %101
  %114 = load i32, i32* %6, align 4
  %115 = call i32 @GETSTRUCT(i32 %114)
  %116 = sext i32 %115 to i64
  %117 = inttoptr i64 %116 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %117, %struct.TYPE_7__** %7, align 8
  %118 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* @TYPTYPE_DOMAIN, align 4
  %122 = icmp eq i32 %120, %121
  %123 = zext i1 %122 to i64
  %124 = select i1 %122, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.23, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.24, i64 0, i64 0)
  %125 = load i32, i32* @MyDatabaseId, align 4
  %126 = call i32 @get_database_name(i32 %125)
  %127 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %128 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @get_namespace_name(i32 %129)
  %131 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %132 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @NameStr(i32 %133)
  %135 = call i8* @map_multipart_sql_identifier_to_xml_name(i8* %124, i32 %126, i32 %130, i32 %134)
  %136 = call i32 @appendStringInfoString(%struct.TYPE_6__* %5, i8* %135)
  %137 = load i32, i32* %6, align 4
  %138 = call i32 @ReleaseSysCache(i32 %137)
  br label %139

139:                                              ; preds = %113, %99, %97, %96, %87, %78, %69, %59, %57, %55, %53, %51, %49, %48, %31, %20
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 0
  %141 = load i8*, i8** %140, align 8
  ret i8* %141
}

declare dso_local i32 @initStringInfo(%struct.TYPE_6__*) #1

declare dso_local i32 @appendStringInfoString(%struct.TYPE_6__*, i8*) #1

declare dso_local i32 @appendStringInfo(%struct.TYPE_6__*, i8*, i32, ...) #1

declare dso_local i32 @SearchSysCache1(i32, i32) #1

declare dso_local i32 @ObjectIdGetDatum(i32) #1

declare dso_local i32 @HeapTupleIsValid(i32) #1

declare dso_local i32 @elog(i32, i8*, i32) #1

declare dso_local i32 @GETSTRUCT(i32) #1

declare dso_local i8* @map_multipart_sql_identifier_to_xml_name(i8*, i32, i32, i32) #1

declare dso_local i32 @get_database_name(i32) #1

declare dso_local i32 @get_namespace_name(i32) #1

declare dso_local i32 @NameStr(i32) #1

declare dso_local i32 @ReleaseSysCache(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
