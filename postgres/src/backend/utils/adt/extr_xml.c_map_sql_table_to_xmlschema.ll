; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_xml.c_map_sql_table_to_xmlschema.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_xml.c_map_sql_table_to_xmlschema.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32 }
%struct.TYPE_15__ = type { i8* }
%struct.TYPE_16__ = type { i32, i32 }
%struct.TYPE_17__ = type { i32, i32, i64 }

@RELOID = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"cache lookup failed for relation %u\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"TableType\00", align 1
@MyDatabaseId = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"RowType\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"row\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"table\00", align 1
@.str.5 = private unnamed_addr constant [46 x i8] c"<xsd:complexType name=\22%s\22>\0A  <xsd:sequence>\0A\00", align 1
@.str.6 = private unnamed_addr constant [55 x i8] c"    <xsd:element name=\22%s\22 type=\22%s\22%s></xsd:element>\0A\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c" nillable=\22true\22\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c" minOccurs=\220\22\00", align 1
@.str.9 = private unnamed_addr constant [39 x i8] c"  </xsd:sequence>\0A</xsd:complexType>\0A\0A\00", align 1
@.str.10 = private unnamed_addr constant [160 x i8] c"<xsd:complexType name=\22%s\22>\0A  <xsd:sequence>\0A    <xsd:element name=\22row\22 type=\22%s\22 minOccurs=\220\22 maxOccurs=\22unbounded\22/>\0A  </xsd:sequence>\0A</xsd:complexType>\0A\0A\00", align 1
@.str.11 = private unnamed_addr constant [37 x i8] c"<xsd:element name=\22%s\22 type=\22%s\22/>\0A\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_14__*, i32, i32, i32, i8*)* @map_sql_table_to_xmlschema to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @map_sql_table_to_xmlschema(%struct.TYPE_14__* %0, i32 %1, i32 %2, i32 %3, i8* %4) #0 {
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca %struct.TYPE_15__, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_16__*, align 8
  %18 = alloca %struct.TYPE_17__*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i8* %4, i8** %10, align 8
  %19 = call i32 @initStringInfo(%struct.TYPE_15__* %15)
  %20 = load i32, i32* %7, align 4
  %21 = call i64 @OidIsValid(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %68

23:                                               ; preds = %5
  %24 = load i32, i32* @RELOID, align 4
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @ObjectIdGetDatum(i32 %25)
  %27 = call i32 @SearchSysCache1(i32 %24, i32 %26)
  store i32 %27, i32* %16, align 4
  %28 = load i32, i32* %16, align 4
  %29 = call i32 @HeapTupleIsValid(i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %23
  %32 = load i32, i32* @ERROR, align 4
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @elog(i32 %32, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %33)
  br label %35

35:                                               ; preds = %31, %23
  %36 = load i32, i32* %16, align 4
  %37 = call i64 @GETSTRUCT(i32 %36)
  %38 = inttoptr i64 %37 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %38, %struct.TYPE_16__** %17, align 8
  %39 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %40 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @NameStr(i32 %41)
  %43 = call i8* @map_sql_identifier_to_xml_name(i32 %42, i32 1, i32 0)
  store i8* %43, i8** %12, align 8
  %44 = load i32, i32* @MyDatabaseId, align 4
  %45 = call i32 @get_database_name(i32 %44)
  %46 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %47 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @get_namespace_name(i32 %48)
  %50 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %51 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @NameStr(i32 %52)
  %54 = call i8* @map_multipart_sql_identifier_to_xml_name(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %45, i32 %49, i32 %53)
  store i8* %54, i8** %13, align 8
  %55 = load i32, i32* @MyDatabaseId, align 4
  %56 = call i32 @get_database_name(i32 %55)
  %57 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %58 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @get_namespace_name(i32 %59)
  %61 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %62 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @NameStr(i32 %63)
  %65 = call i8* @map_multipart_sql_identifier_to_xml_name(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %56, i32 %60, i32 %64)
  store i8* %65, i8** %14, align 8
  %66 = load i32, i32* %16, align 4
  %67 = call i32 @ReleaseSysCache(i32 %66)
  br label %74

68:                                               ; preds = %5
  %69 = load i32, i32* %9, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %68
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8** %12, align 8
  br label %73

72:                                               ; preds = %68
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8** %12, align 8
  br label %73

73:                                               ; preds = %72, %71
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8** %13, align 8
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8** %14, align 8
  br label %74

74:                                               ; preds = %73, %35
  %75 = load i8*, i8** %10, align 8
  %76 = call i32 @xsd_schema_element_start(%struct.TYPE_15__* %15, i8* %75)
  %77 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %78 = call i32 @list_make1(%struct.TYPE_14__* %77)
  %79 = call i8* @map_sql_typecoll_to_xmlschema_types(i32 %78)
  %80 = call i32 @appendStringInfoString(%struct.TYPE_15__* %15, i8* %79)
  %81 = load i8*, i8** %14, align 8
  %82 = call i32 (%struct.TYPE_15__*, i8*, i8*, ...) @appendStringInfo(%struct.TYPE_15__* %15, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.5, i64 0, i64 0), i8* %81)
  store i32 0, i32* %11, align 4
  br label %83

83:                                               ; preds = %113, %74
  %84 = load i32, i32* %11, align 4
  %85 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = icmp slt i32 %84, %87
  br i1 %88, label %89, label %116

89:                                               ; preds = %83
  %90 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %91 = load i32, i32* %11, align 4
  %92 = call %struct.TYPE_17__* @TupleDescAttr(%struct.TYPE_14__* %90, i32 %91)
  store %struct.TYPE_17__* %92, %struct.TYPE_17__** %18, align 8
  %93 = load %struct.TYPE_17__*, %struct.TYPE_17__** %18, align 8
  %94 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %93, i32 0, i32 2
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %89
  br label %113

98:                                               ; preds = %89
  %99 = load %struct.TYPE_17__*, %struct.TYPE_17__** %18, align 8
  %100 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @NameStr(i32 %101)
  %103 = call i8* @map_sql_identifier_to_xml_name(i32 %102, i32 1, i32 0)
  %104 = load %struct.TYPE_17__*, %struct.TYPE_17__** %18, align 8
  %105 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = call i32 @map_sql_type_to_xml_name(i32 %106, i32 -1)
  %108 = load i32, i32* %8, align 4
  %109 = icmp ne i32 %108, 0
  %110 = zext i1 %109 to i64
  %111 = select i1 %109, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0)
  %112 = call i32 (%struct.TYPE_15__*, i8*, i8*, ...) @appendStringInfo(%struct.TYPE_15__* %15, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.6, i64 0, i64 0), i8* %103, i32 %107, i8* %111)
  br label %113

113:                                              ; preds = %98, %97
  %114 = load i32, i32* %11, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %11, align 4
  br label %83

116:                                              ; preds = %83
  %117 = call i32 @appendStringInfoString(%struct.TYPE_15__* %15, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.9, i64 0, i64 0))
  %118 = load i32, i32* %9, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %127, label %120

120:                                              ; preds = %116
  %121 = load i8*, i8** %13, align 8
  %122 = load i8*, i8** %14, align 8
  %123 = call i32 (%struct.TYPE_15__*, i8*, i8*, ...) @appendStringInfo(%struct.TYPE_15__* %15, i8* getelementptr inbounds ([160 x i8], [160 x i8]* @.str.10, i64 0, i64 0), i8* %121, i8* %122)
  %124 = load i8*, i8** %12, align 8
  %125 = load i8*, i8** %13, align 8
  %126 = call i32 (%struct.TYPE_15__*, i8*, i8*, ...) @appendStringInfo(%struct.TYPE_15__* %15, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.11, i64 0, i64 0), i8* %124, i8* %125)
  br label %131

127:                                              ; preds = %116
  %128 = load i8*, i8** %12, align 8
  %129 = load i8*, i8** %14, align 8
  %130 = call i32 (%struct.TYPE_15__*, i8*, i8*, ...) @appendStringInfo(%struct.TYPE_15__* %15, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.11, i64 0, i64 0), i8* %128, i8* %129)
  br label %131

131:                                              ; preds = %127, %120
  %132 = call i32 @xsd_schema_element_end(%struct.TYPE_15__* %15)
  %133 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %15, i32 0, i32 0
  %134 = load i8*, i8** %133, align 8
  ret i8* %134
}

declare dso_local i32 @initStringInfo(%struct.TYPE_15__*) #1

declare dso_local i64 @OidIsValid(i32) #1

declare dso_local i32 @SearchSysCache1(i32, i32) #1

declare dso_local i32 @ObjectIdGetDatum(i32) #1

declare dso_local i32 @HeapTupleIsValid(i32) #1

declare dso_local i32 @elog(i32, i8*, i32) #1

declare dso_local i64 @GETSTRUCT(i32) #1

declare dso_local i8* @map_sql_identifier_to_xml_name(i32, i32, i32) #1

declare dso_local i32 @NameStr(i32) #1

declare dso_local i8* @map_multipart_sql_identifier_to_xml_name(i8*, i32, i32, i32) #1

declare dso_local i32 @get_database_name(i32) #1

declare dso_local i32 @get_namespace_name(i32) #1

declare dso_local i32 @ReleaseSysCache(i32) #1

declare dso_local i32 @xsd_schema_element_start(%struct.TYPE_15__*, i8*) #1

declare dso_local i32 @appendStringInfoString(%struct.TYPE_15__*, i8*) #1

declare dso_local i8* @map_sql_typecoll_to_xmlschema_types(i32) #1

declare dso_local i32 @list_make1(%struct.TYPE_14__*) #1

declare dso_local i32 @appendStringInfo(%struct.TYPE_15__*, i8*, i8*, ...) #1

declare dso_local %struct.TYPE_17__* @TupleDescAttr(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @map_sql_type_to_xml_name(i32, i32) #1

declare dso_local i32 @xsd_schema_element_end(%struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
