; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/pg_basebackup/extr_streamutil.c_RunIdentifySystem.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/pg_basebackup/extr_streamutil.c_RunIdentifySystem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [16 x i8] c"IDENTIFY_SYSTEM\00", align 1
@PGRES_TUPLES_OK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [44 x i8] c"could not send replication command \22%s\22: %s\00", align 1
@.str.2 = private unnamed_addr constant [93 x i8] c"could not identify system: got %d rows and %d fields, expected %d rows and %d or more fields\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"%X/%X\00", align 1
@.str.4 = private unnamed_addr constant [46 x i8] c"could not parse write-ahead log location \22%s\22\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @RunIdentifySystem(i32* %0, i8** %1, i32* %2, i32* %3, i8** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i8** %1, i8*** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i8** %4, i8*** %11, align 8
  %15 = load i32*, i32** %7, align 8
  %16 = icmp ne i32* %15, null
  %17 = zext i1 %16 to i32
  %18 = call i32 @Assert(i32 %17)
  %19 = load i32*, i32** %7, align 8
  %20 = call i32* @PQexec(i32* %19, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  store i32* %20, i32** %12, align 8
  %21 = load i32*, i32** %12, align 8
  %22 = call i64 @PQresultStatus(i32* %21)
  %23 = load i64, i64* @PGRES_TUPLES_OK, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %31

25:                                               ; preds = %5
  %26 = load i32*, i32** %7, align 8
  %27 = call i32 @PQerrorMessage(i32* %26)
  %28 = call i32 (i8*, ...) @pg_log_error(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %27)
  %29 = load i32*, i32** %12, align 8
  %30 = call i32 @PQclear(i32* %29)
  store i32 0, i32* %6, align 4
  br label %117

31:                                               ; preds = %5
  %32 = load i32*, i32** %12, align 8
  %33 = call i32 @PQntuples(i32* %32)
  %34 = icmp ne i32 %33, 1
  br i1 %34, label %39, label %35

35:                                               ; preds = %31
  %36 = load i32*, i32** %12, align 8
  %37 = call i32 @PQnfields(i32* %36)
  %38 = icmp slt i32 %37, 3
  br i1 %38, label %39, label %47

39:                                               ; preds = %35, %31
  %40 = load i32*, i32** %12, align 8
  %41 = call i32 @PQntuples(i32* %40)
  %42 = load i32*, i32** %12, align 8
  %43 = call i32 @PQnfields(i32* %42)
  %44 = call i32 (i8*, ...) @pg_log_error(i8* getelementptr inbounds ([93 x i8], [93 x i8]* @.str.2, i64 0, i64 0), i32 %41, i32 %43, i32 1, i32 3)
  %45 = load i32*, i32** %12, align 8
  %46 = call i32 @PQclear(i32* %45)
  store i32 0, i32* %6, align 4
  br label %117

47:                                               ; preds = %35
  %48 = load i8**, i8*** %8, align 8
  %49 = icmp ne i8** %48, null
  br i1 %49, label %50, label %55

50:                                               ; preds = %47
  %51 = load i32*, i32** %12, align 8
  %52 = call i32 @PQgetvalue(i32* %51, i32 0, i32 0)
  %53 = call i8* @pg_strdup(i32 %52)
  %54 = load i8**, i8*** %8, align 8
  store i8* %53, i8** %54, align 8
  br label %55

55:                                               ; preds = %50, %47
  %56 = load i32*, i32** %9, align 8
  %57 = icmp ne i32* %56, null
  br i1 %57, label %58, label %63

58:                                               ; preds = %55
  %59 = load i32*, i32** %12, align 8
  %60 = call i32 @PQgetvalue(i32* %59, i32 0, i32 1)
  %61 = call i32 @atoi(i32 %60)
  %62 = load i32*, i32** %9, align 8
  store i32 %61, i32* %62, align 4
  br label %63

63:                                               ; preds = %58, %55
  %64 = load i32*, i32** %10, align 8
  %65 = icmp ne i32* %64, null
  br i1 %65, label %66, label %83

66:                                               ; preds = %63
  %67 = load i32*, i32** %12, align 8
  %68 = call i32 @PQgetvalue(i32* %67, i32 0, i32 2)
  %69 = call i32 @sscanf(i32 %68, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32* %13, i32* %14)
  %70 = icmp ne i32 %69, 2
  br i1 %70, label %71, label %77

71:                                               ; preds = %66
  %72 = load i32*, i32** %12, align 8
  %73 = call i32 @PQgetvalue(i32* %72, i32 0, i32 2)
  %74 = call i32 (i8*, ...) @pg_log_error(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.4, i64 0, i64 0), i32 %73)
  %75 = load i32*, i32** %12, align 8
  %76 = call i32 @PQclear(i32* %75)
  store i32 0, i32* %6, align 4
  br label %117

77:                                               ; preds = %66
  %78 = load i32, i32* %13, align 4
  %79 = shl i32 %78, 32
  %80 = load i32, i32* %14, align 4
  %81 = or i32 %79, %80
  %82 = load i32*, i32** %10, align 8
  store i32 %81, i32* %82, align 4
  br label %83

83:                                               ; preds = %77, %63
  %84 = load i8**, i8*** %11, align 8
  %85 = icmp ne i8** %84, null
  br i1 %85, label %86, label %114

86:                                               ; preds = %83
  %87 = load i8**, i8*** %11, align 8
  store i8* null, i8** %87, align 8
  %88 = load i32*, i32** %7, align 8
  %89 = call i32 @PQserverVersion(i32* %88)
  %90 = icmp sge i32 %89, 90400
  br i1 %90, label %91, label %113

91:                                               ; preds = %86
  %92 = load i32*, i32** %12, align 8
  %93 = call i32 @PQnfields(i32* %92)
  %94 = icmp slt i32 %93, 4
  br i1 %94, label %95, label %103

95:                                               ; preds = %91
  %96 = load i32*, i32** %12, align 8
  %97 = call i32 @PQntuples(i32* %96)
  %98 = load i32*, i32** %12, align 8
  %99 = call i32 @PQnfields(i32* %98)
  %100 = call i32 (i8*, ...) @pg_log_error(i8* getelementptr inbounds ([93 x i8], [93 x i8]* @.str.2, i64 0, i64 0), i32 %97, i32 %99, i32 1, i32 4)
  %101 = load i32*, i32** %12, align 8
  %102 = call i32 @PQclear(i32* %101)
  store i32 0, i32* %6, align 4
  br label %117

103:                                              ; preds = %91
  %104 = load i32*, i32** %12, align 8
  %105 = call i32 @PQgetisnull(i32* %104, i32 0, i32 3)
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %112, label %107

107:                                              ; preds = %103
  %108 = load i32*, i32** %12, align 8
  %109 = call i32 @PQgetvalue(i32* %108, i32 0, i32 3)
  %110 = call i8* @pg_strdup(i32 %109)
  %111 = load i8**, i8*** %11, align 8
  store i8* %110, i8** %111, align 8
  br label %112

112:                                              ; preds = %107, %103
  br label %113

113:                                              ; preds = %112, %86
  br label %114

114:                                              ; preds = %113, %83
  %115 = load i32*, i32** %12, align 8
  %116 = call i32 @PQclear(i32* %115)
  store i32 1, i32* %6, align 4
  br label %117

117:                                              ; preds = %114, %95, %71, %39, %25
  %118 = load i32, i32* %6, align 4
  ret i32 %118
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32* @PQexec(i32*, i8*) #1

declare dso_local i64 @PQresultStatus(i32*) #1

declare dso_local i32 @pg_log_error(i8*, ...) #1

declare dso_local i32 @PQerrorMessage(i32*) #1

declare dso_local i32 @PQclear(i32*) #1

declare dso_local i32 @PQntuples(i32*) #1

declare dso_local i32 @PQnfields(i32*) #1

declare dso_local i8* @pg_strdup(i32) #1

declare dso_local i32 @PQgetvalue(i32*, i32, i32) #1

declare dso_local i32 @atoi(i32) #1

declare dso_local i32 @sscanf(i32, i8*, i32*, i32*) #1

declare dso_local i32 @PQserverVersion(i32*) #1

declare dso_local i32 @PQgetisnull(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
