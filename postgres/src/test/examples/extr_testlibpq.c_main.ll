; ModuleID = '/home/carl/AnghaBench/postgres/src/test/examples/extr_testlibpq.c_main.c'
source_filename = "/home/carl/AnghaBench/postgres/src/test/examples/extr_testlibpq.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [18 x i8] c"dbname = postgres\00", align 1
@CONNECTION_OK = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"Connection to database failed: %s\00", align 1
@.str.2 = private unnamed_addr constant [55 x i8] c"SELECT pg_catalog.set_config('search_path', '', false)\00", align 1
@PGRES_TUPLES_OK = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [15 x i8] c"SET failed: %s\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"BEGIN\00", align 1
@PGRES_COMMAND_OK = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [25 x i8] c"BEGIN command failed: %s\00", align 1
@.str.6 = private unnamed_addr constant [54 x i8] c"DECLARE myportal CURSOR FOR select * from pg_database\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"DECLARE CURSOR failed: %s\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"FETCH ALL in myportal\00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c"FETCH ALL failed: %s\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"%-15s\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"\0A\0A\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.13 = private unnamed_addr constant [15 x i8] c"CLOSE myportal\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"END\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %12 = load i32, i32* %4, align 4
  %13 = icmp sgt i32 %12, 1
  br i1 %13, label %14, label %18

14:                                               ; preds = %2
  %15 = load i8**, i8*** %5, align 8
  %16 = getelementptr inbounds i8*, i8** %15, i64 1
  %17 = load i8*, i8** %16, align 8
  store i8* %17, i8** %6, align 8
  br label %19

18:                                               ; preds = %2
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8** %6, align 8
  br label %19

19:                                               ; preds = %18, %14
  %20 = load i8*, i8** %6, align 8
  %21 = call i32* @PQconnectdb(i8* %20)
  store i32* %21, i32** %7, align 8
  %22 = load i32*, i32** %7, align 8
  %23 = call i64 @PQstatus(i32* %22)
  %24 = load i64, i64* @CONNECTION_OK, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %33

26:                                               ; preds = %19
  %27 = load i32, i32* @stderr, align 4
  %28 = load i32*, i32** %7, align 8
  %29 = call i8* @PQerrorMessage(i32* %28)
  %30 = call i32 @fprintf(i32 %27, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i8* %29)
  %31 = load i32*, i32** %7, align 8
  %32 = call i32 @exit_nicely(i32* %31)
  br label %33

33:                                               ; preds = %26, %19
  %34 = load i32*, i32** %7, align 8
  %35 = call i32* @PQexec(i32* %34, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.2, i64 0, i64 0))
  store i32* %35, i32** %8, align 8
  %36 = load i32*, i32** %8, align 8
  %37 = call i64 @PQresultStatus(i32* %36)
  %38 = load i64, i64* @PGRES_TUPLES_OK, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %49

40:                                               ; preds = %33
  %41 = load i32, i32* @stderr, align 4
  %42 = load i32*, i32** %7, align 8
  %43 = call i8* @PQerrorMessage(i32* %42)
  %44 = call i32 @fprintf(i32 %41, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i8* %43)
  %45 = load i32*, i32** %8, align 8
  %46 = call i32 @PQclear(i32* %45)
  %47 = load i32*, i32** %7, align 8
  %48 = call i32 @exit_nicely(i32* %47)
  br label %49

49:                                               ; preds = %40, %33
  %50 = load i32*, i32** %8, align 8
  %51 = call i32 @PQclear(i32* %50)
  %52 = load i32*, i32** %7, align 8
  %53 = call i32* @PQexec(i32* %52, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  store i32* %53, i32** %8, align 8
  %54 = load i32*, i32** %8, align 8
  %55 = call i64 @PQresultStatus(i32* %54)
  %56 = load i64, i64* @PGRES_COMMAND_OK, align 8
  %57 = icmp ne i64 %55, %56
  br i1 %57, label %58, label %67

58:                                               ; preds = %49
  %59 = load i32, i32* @stderr, align 4
  %60 = load i32*, i32** %7, align 8
  %61 = call i8* @PQerrorMessage(i32* %60)
  %62 = call i32 @fprintf(i32 %59, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0), i8* %61)
  %63 = load i32*, i32** %8, align 8
  %64 = call i32 @PQclear(i32* %63)
  %65 = load i32*, i32** %7, align 8
  %66 = call i32 @exit_nicely(i32* %65)
  br label %67

67:                                               ; preds = %58, %49
  %68 = load i32*, i32** %8, align 8
  %69 = call i32 @PQclear(i32* %68)
  %70 = load i32*, i32** %7, align 8
  %71 = call i32* @PQexec(i32* %70, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.6, i64 0, i64 0))
  store i32* %71, i32** %8, align 8
  %72 = load i32*, i32** %8, align 8
  %73 = call i64 @PQresultStatus(i32* %72)
  %74 = load i64, i64* @PGRES_COMMAND_OK, align 8
  %75 = icmp ne i64 %73, %74
  br i1 %75, label %76, label %85

76:                                               ; preds = %67
  %77 = load i32, i32* @stderr, align 4
  %78 = load i32*, i32** %7, align 8
  %79 = call i8* @PQerrorMessage(i32* %78)
  %80 = call i32 @fprintf(i32 %77, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0), i8* %79)
  %81 = load i32*, i32** %8, align 8
  %82 = call i32 @PQclear(i32* %81)
  %83 = load i32*, i32** %7, align 8
  %84 = call i32 @exit_nicely(i32* %83)
  br label %85

85:                                               ; preds = %76, %67
  %86 = load i32*, i32** %8, align 8
  %87 = call i32 @PQclear(i32* %86)
  %88 = load i32*, i32** %7, align 8
  %89 = call i32* @PQexec(i32* %88, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0))
  store i32* %89, i32** %8, align 8
  %90 = load i32*, i32** %8, align 8
  %91 = call i64 @PQresultStatus(i32* %90)
  %92 = load i64, i64* @PGRES_TUPLES_OK, align 8
  %93 = icmp ne i64 %91, %92
  br i1 %93, label %94, label %103

94:                                               ; preds = %85
  %95 = load i32, i32* @stderr, align 4
  %96 = load i32*, i32** %7, align 8
  %97 = call i8* @PQerrorMessage(i32* %96)
  %98 = call i32 @fprintf(i32 %95, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i64 0, i64 0), i8* %97)
  %99 = load i32*, i32** %8, align 8
  %100 = call i32 @PQclear(i32* %99)
  %101 = load i32*, i32** %7, align 8
  %102 = call i32 @exit_nicely(i32* %101)
  br label %103

103:                                              ; preds = %94, %85
  %104 = load i32*, i32** %8, align 8
  %105 = call i32 @PQnfields(i32* %104)
  store i32 %105, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %106

106:                                              ; preds = %115, %103
  %107 = load i32, i32* %10, align 4
  %108 = load i32, i32* %9, align 4
  %109 = icmp slt i32 %107, %108
  br i1 %109, label %110, label %118

110:                                              ; preds = %106
  %111 = load i32*, i32** %8, align 8
  %112 = load i32, i32* %10, align 4
  %113 = call i8* @PQfname(i32* %111, i32 %112)
  %114 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i8* %113)
  br label %115

115:                                              ; preds = %110
  %116 = load i32, i32* %10, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %10, align 4
  br label %106

118:                                              ; preds = %106
  %119 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0))
  store i32 0, i32* %10, align 4
  br label %120

120:                                              ; preds = %141, %118
  %121 = load i32, i32* %10, align 4
  %122 = load i32*, i32** %8, align 8
  %123 = call i32 @PQntuples(i32* %122)
  %124 = icmp slt i32 %121, %123
  br i1 %124, label %125, label %144

125:                                              ; preds = %120
  store i32 0, i32* %11, align 4
  br label %126

126:                                              ; preds = %136, %125
  %127 = load i32, i32* %11, align 4
  %128 = load i32, i32* %9, align 4
  %129 = icmp slt i32 %127, %128
  br i1 %129, label %130, label %139

130:                                              ; preds = %126
  %131 = load i32*, i32** %8, align 8
  %132 = load i32, i32* %10, align 4
  %133 = load i32, i32* %11, align 4
  %134 = call i8* @PQgetvalue(i32* %131, i32 %132, i32 %133)
  %135 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i8* %134)
  br label %136

136:                                              ; preds = %130
  %137 = load i32, i32* %11, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %11, align 4
  br label %126

139:                                              ; preds = %126
  %140 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0))
  br label %141

141:                                              ; preds = %139
  %142 = load i32, i32* %10, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %10, align 4
  br label %120

144:                                              ; preds = %120
  %145 = load i32*, i32** %8, align 8
  %146 = call i32 @PQclear(i32* %145)
  %147 = load i32*, i32** %7, align 8
  %148 = call i32* @PQexec(i32* %147, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.13, i64 0, i64 0))
  store i32* %148, i32** %8, align 8
  %149 = load i32*, i32** %8, align 8
  %150 = call i32 @PQclear(i32* %149)
  %151 = load i32*, i32** %7, align 8
  %152 = call i32* @PQexec(i32* %151, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i64 0, i64 0))
  store i32* %152, i32** %8, align 8
  %153 = load i32*, i32** %8, align 8
  %154 = call i32 @PQclear(i32* %153)
  %155 = load i32*, i32** %7, align 8
  %156 = call i32 @PQfinish(i32* %155)
  ret i32 0
}

declare dso_local i32* @PQconnectdb(i8*) #1

declare dso_local i64 @PQstatus(i32*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i8* @PQerrorMessage(i32*) #1

declare dso_local i32 @exit_nicely(i32*) #1

declare dso_local i32* @PQexec(i32*, i8*) #1

declare dso_local i64 @PQresultStatus(i32*) #1

declare dso_local i32 @PQclear(i32*) #1

declare dso_local i32 @PQnfields(i32*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i8* @PQfname(i32*, i32) #1

declare dso_local i32 @PQntuples(i32*) #1

declare dso_local i8* @PQgetvalue(i32*, i32, i32) #1

declare dso_local i32 @PQfinish(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
