; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/psql/extr_describe.c_listTSParsersVerbose.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/psql/extr_describe.c_listTSParsersVerbose.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32 }

@.str = private unnamed_addr constant [133 x i8] c"SELECT p.oid,\0A  n.nspname,\0A  p.prsname\0AFROM pg_catalog.pg_ts_parser p\0ALEFT JOIN pg_catalog.pg_namespace n ON n.oid = p.prsnamespace\0A\00", align 1
@pset = common dso_local global %struct.TYPE_9__ zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"n.nspname\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"p.prsname\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"pg_catalog.pg_ts_parser_is_visible(p.oid)\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"ORDER BY 1, 2;\00", align 1
@.str.5 = private unnamed_addr constant [48 x i8] c"Did not find any text search parser named \22%s\22.\00", align 1
@.str.6 = private unnamed_addr constant [38 x i8] c"Did not find any text search parsers.\00", align 1
@cancel_pressed = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @listTSParsersVerbose to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @listTSParsersVerbose(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_8__, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %10 = call i32 @initPQExpBuffer(%struct.TYPE_8__* %4)
  %11 = call i32 @printfPQExpBuffer(%struct.TYPE_8__* %4, i8* getelementptr inbounds ([133 x i8], [133 x i8]* @.str, i64 0, i64 0))
  %12 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @pset, i32 0, i32 1), align 4
  %13 = load i8*, i8** %3, align 8
  %14 = call i32 @processSQLNamePattern(i32 %12, %struct.TYPE_8__* %4, i8* %13, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32* null, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0))
  %15 = call i32 @appendPQExpBufferStr(%struct.TYPE_8__* %4, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32* @PSQLexec(i32 %17)
  store i32* %18, i32** %5, align 8
  %19 = call i32 @termPQExpBuffer(%struct.TYPE_8__* %4)
  %20 = load i32*, i32** %5, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %85

23:                                               ; preds = %1
  %24 = load i32*, i32** %5, align 8
  %25 = call i32 @PQntuples(i32* %24)
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %42

27:                                               ; preds = %23
  %28 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @pset, i32 0, i32 0), align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %39, label %30

30:                                               ; preds = %27
  %31 = load i8*, i8** %3, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %33, label %36

33:                                               ; preds = %30
  %34 = load i8*, i8** %3, align 8
  %35 = call i32 (i8*, ...) @pg_log_error(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.5, i64 0, i64 0), i8* %34)
  br label %38

36:                                               ; preds = %30
  %37 = call i32 (i8*, ...) @pg_log_error(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i64 0, i64 0))
  br label %38

38:                                               ; preds = %36, %33
  br label %39

39:                                               ; preds = %38, %27
  %40 = load i32*, i32** %5, align 8
  %41 = call i32 @PQclear(i32* %40)
  store i32 0, i32* %2, align 4
  br label %85

42:                                               ; preds = %23
  store i32 0, i32* %6, align 4
  br label %43

43:                                               ; preds = %79, %42
  %44 = load i32, i32* %6, align 4
  %45 = load i32*, i32** %5, align 8
  %46 = call i32 @PQntuples(i32* %45)
  %47 = icmp slt i32 %44, %46
  br i1 %47, label %48, label %82

48:                                               ; preds = %43
  store i8* null, i8** %8, align 8
  %49 = load i32*, i32** %5, align 8
  %50 = load i32, i32* %6, align 4
  %51 = call i8* @PQgetvalue(i32* %49, i32 %50, i32 0)
  store i8* %51, i8** %7, align 8
  %52 = load i32*, i32** %5, align 8
  %53 = load i32, i32* %6, align 4
  %54 = call i32 @PQgetisnull(i32* %52, i32 %53, i32 1)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %60, label %56

56:                                               ; preds = %48
  %57 = load i32*, i32** %5, align 8
  %58 = load i32, i32* %6, align 4
  %59 = call i8* @PQgetvalue(i32* %57, i32 %58, i32 1)
  store i8* %59, i8** %8, align 8
  br label %60

60:                                               ; preds = %56, %48
  %61 = load i32*, i32** %5, align 8
  %62 = load i32, i32* %6, align 4
  %63 = call i8* @PQgetvalue(i32* %61, i32 %62, i32 2)
  store i8* %63, i8** %9, align 8
  %64 = load i8*, i8** %7, align 8
  %65 = load i8*, i8** %8, align 8
  %66 = load i8*, i8** %9, align 8
  %67 = call i32 @describeOneTSParser(i8* %64, i8* %65, i8* %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %72, label %69

69:                                               ; preds = %60
  %70 = load i32*, i32** %5, align 8
  %71 = call i32 @PQclear(i32* %70)
  store i32 0, i32* %2, align 4
  br label %85

72:                                               ; preds = %60
  %73 = load i64, i64* @cancel_pressed, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %72
  %76 = load i32*, i32** %5, align 8
  %77 = call i32 @PQclear(i32* %76)
  store i32 0, i32* %2, align 4
  br label %85

78:                                               ; preds = %72
  br label %79

79:                                               ; preds = %78
  %80 = load i32, i32* %6, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %6, align 4
  br label %43

82:                                               ; preds = %43
  %83 = load i32*, i32** %5, align 8
  %84 = call i32 @PQclear(i32* %83)
  store i32 1, i32* %2, align 4
  br label %85

85:                                               ; preds = %82, %75, %69, %39, %22
  %86 = load i32, i32* %2, align 4
  ret i32 %86
}

declare dso_local i32 @initPQExpBuffer(%struct.TYPE_8__*) #1

declare dso_local i32 @printfPQExpBuffer(%struct.TYPE_8__*, i8*) #1

declare dso_local i32 @processSQLNamePattern(i32, %struct.TYPE_8__*, i8*, i32, i32, i8*, i8*, i32*, i8*) #1

declare dso_local i32 @appendPQExpBufferStr(%struct.TYPE_8__*, i8*) #1

declare dso_local i32* @PSQLexec(i32) #1

declare dso_local i32 @termPQExpBuffer(%struct.TYPE_8__*) #1

declare dso_local i32 @PQntuples(i32*) #1

declare dso_local i32 @pg_log_error(i8*, ...) #1

declare dso_local i32 @PQclear(i32*) #1

declare dso_local i8* @PQgetvalue(i32*, i32, i32) #1

declare dso_local i32 @PQgetisnull(i32*, i32, i32) #1

declare dso_local i32 @describeOneTSParser(i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
