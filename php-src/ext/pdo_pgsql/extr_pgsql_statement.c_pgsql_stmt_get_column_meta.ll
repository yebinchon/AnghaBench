; ModuleID = '/home/carl/AnghaBench/php-src/ext/pdo_pgsql/extr_pgsql_statement.c_pgsql_stmt_get_column_meta.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/pdo_pgsql/extr_pgsql_statement.c_pgsql_stmt_get_column_meta.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i64 }
%struct.TYPE_9__ = type { %struct.TYPE_7__*, %struct.TYPE_6__*, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@FAILURE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"pgsql:oid\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"pgsql:table_oid\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"table\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"native_type\00", align 1
@BOOLLABEL = common dso_local global i8* null, align 8
@BYTEALABEL = common dso_local global i8* null, align 8
@INT8LABEL = common dso_local global i8* null, align 8
@INT2LABEL = common dso_local global i8* null, align 8
@INT4LABEL = common dso_local global i8* null, align 8
@TEXTLABEL = common dso_local global i8* null, align 8
@VARCHARLABEL = common dso_local global i8* null, align 8
@DATELABEL = common dso_local global i8* null, align 8
@TIMESTAMPLABEL = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [41 x i8] c"SELECT TYPNAME FROM PG_TYPE WHERE OID=%u\00", align 1
@PGRES_TUPLES_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i64, i32*)* @pgsql_stmt_get_column_meta to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pgsql_stmt_get_column_meta(%struct.TYPE_8__* %0, i64 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32* %2, i32** %7, align 8
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %17, %struct.TYPE_9__** %8, align 8
  store i8* null, i8** %10, align 8
  store i8* null, i8** %13, align 8
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %3
  %23 = load i32, i32* @FAILURE, align 4
  store i32 %23, i32* %4, align 4
  br label %147

24:                                               ; preds = %3
  %25 = load i64, i64* %6, align 8
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp uge i64 %25, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %24
  %31 = load i32, i32* @FAILURE, align 4
  store i32 %31, i32* %4, align 4
  br label %147

32:                                               ; preds = %24
  %33 = load i32*, i32** %7, align 8
  %34 = call i32 @array_init(i32* %33)
  %35 = load i32*, i32** %7, align 8
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 1
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %37, align 8
  %39 = load i64, i64* %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @add_assoc_long(i32* %35, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %42)
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = load i64, i64* %6, align 8
  %48 = call i32 @PQftable(i32 %46, i64 %47)
  store i32 %48, i32* %12, align 4
  %49 = load i32*, i32** %7, align 8
  %50 = load i32, i32* %12, align 4
  %51 = call i32 @add_assoc_long(i32* %49, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %50)
  %52 = load i32, i32* %12, align 4
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i8* @pdo_pgsql_translate_oid_to_table(i32 %52, i32 %57)
  store i8* %58, i8** %13, align 8
  %59 = load i8*, i8** %13, align 8
  %60 = icmp ne i8* %59, null
  br i1 %60, label %61, label %67

61:                                               ; preds = %32
  %62 = load i32*, i32** %7, align 8
  %63 = load i8*, i8** %13, align 8
  %64 = call i32 @add_assoc_string(i32* %62, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* %63)
  %65 = load i8*, i8** %13, align 8
  %66 = call i32 @efree(i8* %65)
  br label %67

67:                                               ; preds = %61, %32
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 1
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %69, align 8
  %71 = load i64, i64* %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  switch i32 %74, label %111 [
    i32 136, label %75
    i32 135, label %79
    i32 131, label %83
    i32 133, label %87
    i32 132, label %91
    i32 130, label %95
    i32 128, label %99
    i32 134, label %103
    i32 129, label %107
  ]

75:                                               ; preds = %67
  %76 = load i32*, i32** %7, align 8
  %77 = load i8*, i8** @BOOLLABEL, align 8
  %78 = call i32 @add_assoc_string(i32* %76, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i8* %77)
  br label %146

79:                                               ; preds = %67
  %80 = load i32*, i32** %7, align 8
  %81 = load i8*, i8** @BYTEALABEL, align 8
  %82 = call i32 @add_assoc_string(i32* %80, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i8* %81)
  br label %146

83:                                               ; preds = %67
  %84 = load i32*, i32** %7, align 8
  %85 = load i8*, i8** @INT8LABEL, align 8
  %86 = call i32 @add_assoc_string(i32* %84, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i8* %85)
  br label %146

87:                                               ; preds = %67
  %88 = load i32*, i32** %7, align 8
  %89 = load i8*, i8** @INT2LABEL, align 8
  %90 = call i32 @add_assoc_string(i32* %88, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i8* %89)
  br label %146

91:                                               ; preds = %67
  %92 = load i32*, i32** %7, align 8
  %93 = load i8*, i8** @INT4LABEL, align 8
  %94 = call i32 @add_assoc_string(i32* %92, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i8* %93)
  br label %146

95:                                               ; preds = %67
  %96 = load i32*, i32** %7, align 8
  %97 = load i8*, i8** @TEXTLABEL, align 8
  %98 = call i32 @add_assoc_string(i32* %96, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i8* %97)
  br label %146

99:                                               ; preds = %67
  %100 = load i32*, i32** %7, align 8
  %101 = load i8*, i8** @VARCHARLABEL, align 8
  %102 = call i32 @add_assoc_string(i32* %100, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i8* %101)
  br label %146

103:                                              ; preds = %67
  %104 = load i32*, i32** %7, align 8
  %105 = load i8*, i8** @DATELABEL, align 8
  %106 = call i32 @add_assoc_string(i32* %104, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i8* %105)
  br label %146

107:                                              ; preds = %67
  %108 = load i32*, i32** %7, align 8
  %109 = load i8*, i8** @TIMESTAMPLABEL, align 8
  %110 = call i32 @add_assoc_string(i32* %108, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i8* %109)
  br label %146

111:                                              ; preds = %67
  %112 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %113 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %112, i32 0, i32 1
  %114 = load %struct.TYPE_6__*, %struct.TYPE_6__** %113, align 8
  %115 = load i64, i64* %6, align 8
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i64 %115
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @spprintf(i8** %10, i32 0, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0), i32 %118)
  %120 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %121 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %120, i32 0, i32 0
  %122 = load %struct.TYPE_7__*, %struct.TYPE_7__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = load i8*, i8** %10, align 8
  %126 = call i32* @PQexec(i32 %124, i8* %125)
  store i32* %126, i32** %9, align 8
  %127 = load i8*, i8** %10, align 8
  %128 = call i32 @efree(i8* %127)
  %129 = load i32*, i32** %9, align 8
  %130 = call i32 @PQresultStatus(i32* %129)
  store i32 %130, i32* %11, align 4
  %131 = load i32, i32* %11, align 4
  %132 = load i32, i32* @PGRES_TUPLES_OK, align 4
  %133 = icmp eq i32 %131, %132
  br i1 %133, label %134, label %143

134:                                              ; preds = %111
  %135 = load i32*, i32** %9, align 8
  %136 = call i32 @PQntuples(i32* %135)
  %137 = icmp eq i32 1, %136
  br i1 %137, label %138, label %143

138:                                              ; preds = %134
  %139 = load i32*, i32** %7, align 8
  %140 = load i32*, i32** %9, align 8
  %141 = call i8* @PQgetvalue(i32* %140, i32 0, i32 0)
  %142 = call i32 @add_assoc_string(i32* %139, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i8* %141)
  br label %143

143:                                              ; preds = %138, %134, %111
  %144 = load i32*, i32** %9, align 8
  %145 = call i32 @PQclear(i32* %144)
  br label %146

146:                                              ; preds = %143, %107, %103, %99, %95, %91, %87, %83, %79, %75
  store i32 1, i32* %4, align 4
  br label %147

147:                                              ; preds = %146, %30, %22
  %148 = load i32, i32* %4, align 4
  ret i32 %148
}

declare dso_local i32 @array_init(i32*) #1

declare dso_local i32 @add_assoc_long(i32*, i8*, i32) #1

declare dso_local i32 @PQftable(i32, i64) #1

declare dso_local i8* @pdo_pgsql_translate_oid_to_table(i32, i32) #1

declare dso_local i32 @add_assoc_string(i32*, i8*, i8*) #1

declare dso_local i32 @efree(i8*) #1

declare dso_local i32 @spprintf(i8**, i32, i8*, i32) #1

declare dso_local i32* @PQexec(i32, i8*) #1

declare dso_local i32 @PQresultStatus(i32*) #1

declare dso_local i32 @PQntuples(i32*) #1

declare dso_local i8* @PQgetvalue(i32*, i32, i32) #1

declare dso_local i32 @PQclear(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
