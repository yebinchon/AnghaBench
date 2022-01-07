; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/psql/extr_describe.c_describeTableDetails.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/psql/extr_describe.c_describeTableDetails.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32 }

@.str = private unnamed_addr constant [134 x i8] c"SELECT c.oid,\0A  n.nspname,\0A  c.relname\0AFROM pg_catalog.pg_class c\0A     LEFT JOIN pg_catalog.pg_namespace n ON n.oid = c.relnamespace\0A\00", align 1
@.str.1 = private unnamed_addr constant [77 x i8] c"WHERE n.nspname <> 'pg_catalog'\0A      AND n.nspname <> 'information_schema'\0A\00", align 1
@pset = common dso_local global %struct.TYPE_9__ zeroinitializer, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"n.nspname\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"c.relname\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"pg_catalog.pg_table_is_visible(c.oid)\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"ORDER BY 2, 3;\00", align 1
@.str.6 = private unnamed_addr constant [38 x i8] c"Did not find any relation named \22%s\22.\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"Did not find any relations.\00", align 1
@cancel_pressed = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @describeTableDetails(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_8__, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %14 = call i32 @initPQExpBuffer(%struct.TYPE_8__* %8)
  %15 = call i32 @printfPQExpBuffer(%struct.TYPE_8__* %8, i8* getelementptr inbounds ([134 x i8], [134 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* %7, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %23, label %18

18:                                               ; preds = %3
  %19 = load i8*, i8** %5, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %18
  %22 = call i32 @appendPQExpBufferStr(%struct.TYPE_8__* %8, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.1, i64 0, i64 0))
  br label %23

23:                                               ; preds = %21, %18, %3
  %24 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @pset, i32 0, i32 1), align 4
  %25 = load i8*, i8** %5, align 8
  %26 = load i32, i32* %7, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %23
  %29 = load i8*, i8** %5, align 8
  %30 = icmp ne i8* %29, null
  %31 = xor i1 %30, true
  br label %32

32:                                               ; preds = %28, %23
  %33 = phi i1 [ false, %23 ], [ %31, %28 ]
  %34 = zext i1 %33 to i32
  %35 = call i32 @processSQLNamePattern(i32 %24, %struct.TYPE_8__* %8, i8* %25, i32 %34, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32* null, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0))
  %36 = call i32 @appendPQExpBufferStr(%struct.TYPE_8__* %8, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0))
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32* @PSQLexec(i32 %38)
  store i32* %39, i32** %9, align 8
  %40 = call i32 @termPQExpBuffer(%struct.TYPE_8__* %8)
  %41 = load i32*, i32** %9, align 8
  %42 = icmp ne i32* %41, null
  br i1 %42, label %44, label %43

43:                                               ; preds = %32
  store i32 0, i32* %4, align 4
  br label %101

44:                                               ; preds = %32
  %45 = load i32*, i32** %9, align 8
  %46 = call i32 @PQntuples(i32* %45)
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %63

48:                                               ; preds = %44
  %49 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @pset, i32 0, i32 0), align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %60, label %51

51:                                               ; preds = %48
  %52 = load i8*, i8** %5, align 8
  %53 = icmp ne i8* %52, null
  br i1 %53, label %54, label %57

54:                                               ; preds = %51
  %55 = load i8*, i8** %5, align 8
  %56 = call i32 (i8*, ...) @pg_log_error(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i64 0, i64 0), i8* %55)
  br label %59

57:                                               ; preds = %51
  %58 = call i32 (i8*, ...) @pg_log_error(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0))
  br label %59

59:                                               ; preds = %57, %54
  br label %60

60:                                               ; preds = %59, %48
  %61 = load i32*, i32** %9, align 8
  %62 = call i32 @PQclear(i32* %61)
  store i32 0, i32* %4, align 4
  br label %101

63:                                               ; preds = %44
  store i32 0, i32* %10, align 4
  br label %64

64:                                               ; preds = %95, %63
  %65 = load i32, i32* %10, align 4
  %66 = load i32*, i32** %9, align 8
  %67 = call i32 @PQntuples(i32* %66)
  %68 = icmp slt i32 %65, %67
  br i1 %68, label %69, label %98

69:                                               ; preds = %64
  %70 = load i32*, i32** %9, align 8
  %71 = load i32, i32* %10, align 4
  %72 = call i8* @PQgetvalue(i32* %70, i32 %71, i32 0)
  store i8* %72, i8** %11, align 8
  %73 = load i32*, i32** %9, align 8
  %74 = load i32, i32* %10, align 4
  %75 = call i8* @PQgetvalue(i32* %73, i32 %74, i32 1)
  store i8* %75, i8** %12, align 8
  %76 = load i32*, i32** %9, align 8
  %77 = load i32, i32* %10, align 4
  %78 = call i8* @PQgetvalue(i32* %76, i32 %77, i32 2)
  store i8* %78, i8** %13, align 8
  %79 = load i8*, i8** %12, align 8
  %80 = load i8*, i8** %13, align 8
  %81 = load i8*, i8** %11, align 8
  %82 = load i32, i32* %6, align 4
  %83 = call i32 @describeOneTableDetails(i8* %79, i8* %80, i8* %81, i32 %82)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %88, label %85

85:                                               ; preds = %69
  %86 = load i32*, i32** %9, align 8
  %87 = call i32 @PQclear(i32* %86)
  store i32 0, i32* %4, align 4
  br label %101

88:                                               ; preds = %69
  %89 = load i64, i64* @cancel_pressed, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %88
  %92 = load i32*, i32** %9, align 8
  %93 = call i32 @PQclear(i32* %92)
  store i32 0, i32* %4, align 4
  br label %101

94:                                               ; preds = %88
  br label %95

95:                                               ; preds = %94
  %96 = load i32, i32* %10, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %10, align 4
  br label %64

98:                                               ; preds = %64
  %99 = load i32*, i32** %9, align 8
  %100 = call i32 @PQclear(i32* %99)
  store i32 1, i32* %4, align 4
  br label %101

101:                                              ; preds = %98, %91, %85, %60, %43
  %102 = load i32, i32* %4, align 4
  ret i32 %102
}

declare dso_local i32 @initPQExpBuffer(%struct.TYPE_8__*) #1

declare dso_local i32 @printfPQExpBuffer(%struct.TYPE_8__*, i8*) #1

declare dso_local i32 @appendPQExpBufferStr(%struct.TYPE_8__*, i8*) #1

declare dso_local i32 @processSQLNamePattern(i32, %struct.TYPE_8__*, i8*, i32, i32, i8*, i8*, i32*, i8*) #1

declare dso_local i32* @PSQLexec(i32) #1

declare dso_local i32 @termPQExpBuffer(%struct.TYPE_8__*) #1

declare dso_local i32 @PQntuples(i32*) #1

declare dso_local i32 @pg_log_error(i8*, ...) #1

declare dso_local i32 @PQclear(i32*) #1

declare dso_local i8* @PQgetvalue(i32*, i32, i32) #1

declare dso_local i32 @describeOneTableDetails(i8*, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
