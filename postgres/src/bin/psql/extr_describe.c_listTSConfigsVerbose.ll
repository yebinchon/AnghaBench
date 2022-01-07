; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/psql/extr_describe.c_listTSConfigsVerbose.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/psql/extr_describe.c_listTSConfigsVerbose.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32 }

@.str = private unnamed_addr constant [298 x i8] c"SELECT c.oid, c.cfgname,\0A   n.nspname,\0A   p.prsname,\0A   np.nspname as pnspname\0AFROM pg_catalog.pg_ts_config c\0A   LEFT JOIN pg_catalog.pg_namespace n ON n.oid = c.cfgnamespace,\0A pg_catalog.pg_ts_parser p\0A   LEFT JOIN pg_catalog.pg_namespace np ON np.oid = p.prsnamespace\0AWHERE  p.oid = c.cfgparser\0A\00", align 1
@pset = common dso_local global %struct.TYPE_9__ zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"n.nspname\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"c.cfgname\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"pg_catalog.pg_ts_config_is_visible(c.oid)\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"ORDER BY 3, 2;\00", align 1
@.str.5 = private unnamed_addr constant [55 x i8] c"Did not find any text search configuration named \22%s\22.\00", align 1
@.str.6 = private unnamed_addr constant [45 x i8] c"Did not find any text search configurations.\00", align 1
@cancel_pressed = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @listTSConfigsVerbose to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @listTSConfigsVerbose(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_8__, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %12 = call i32 @initPQExpBuffer(%struct.TYPE_8__* %4)
  %13 = call i32 @printfPQExpBuffer(%struct.TYPE_8__* %4, i8* getelementptr inbounds ([298 x i8], [298 x i8]* @.str, i64 0, i64 0))
  %14 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @pset, i32 0, i32 1), align 4
  %15 = load i8*, i8** %3, align 8
  %16 = call i32 @processSQLNamePattern(i32 %14, %struct.TYPE_8__* %4, i8* %15, i32 1, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32* null, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0))
  %17 = call i32 @appendPQExpBufferStr(%struct.TYPE_8__* %4, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32* @PSQLexec(i32 %19)
  store i32* %20, i32** %5, align 8
  %21 = call i32 @termPQExpBuffer(%struct.TYPE_8__* %4)
  %22 = load i32*, i32** %5, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %101

25:                                               ; preds = %1
  %26 = load i32*, i32** %5, align 8
  %27 = call i32 @PQntuples(i32* %26)
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %44

29:                                               ; preds = %25
  %30 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @pset, i32 0, i32 0), align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %41, label %32

32:                                               ; preds = %29
  %33 = load i8*, i8** %3, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %35, label %38

35:                                               ; preds = %32
  %36 = load i8*, i8** %3, align 8
  %37 = call i32 (i8*, ...) @pg_log_error(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.5, i64 0, i64 0), i8* %36)
  br label %40

38:                                               ; preds = %32
  %39 = call i32 (i8*, ...) @pg_log_error(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.6, i64 0, i64 0))
  br label %40

40:                                               ; preds = %38, %35
  br label %41

41:                                               ; preds = %40, %29
  %42 = load i32*, i32** %5, align 8
  %43 = call i32 @PQclear(i32* %42)
  store i32 0, i32* %2, align 4
  br label %101

44:                                               ; preds = %25
  store i32 0, i32* %6, align 4
  br label %45

45:                                               ; preds = %95, %44
  %46 = load i32, i32* %6, align 4
  %47 = load i32*, i32** %5, align 8
  %48 = call i32 @PQntuples(i32* %47)
  %49 = icmp slt i32 %46, %48
  br i1 %49, label %50, label %98

50:                                               ; preds = %45
  store i8* null, i8** %9, align 8
  store i8* null, i8** %11, align 8
  %51 = load i32*, i32** %5, align 8
  %52 = load i32, i32* %6, align 4
  %53 = call i8* @PQgetvalue(i32* %51, i32 %52, i32 0)
  store i8* %53, i8** %7, align 8
  %54 = load i32*, i32** %5, align 8
  %55 = load i32, i32* %6, align 4
  %56 = call i8* @PQgetvalue(i32* %54, i32 %55, i32 1)
  store i8* %56, i8** %8, align 8
  %57 = load i32*, i32** %5, align 8
  %58 = load i32, i32* %6, align 4
  %59 = call i32 @PQgetisnull(i32* %57, i32 %58, i32 2)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %65, label %61

61:                                               ; preds = %50
  %62 = load i32*, i32** %5, align 8
  %63 = load i32, i32* %6, align 4
  %64 = call i8* @PQgetvalue(i32* %62, i32 %63, i32 2)
  store i8* %64, i8** %9, align 8
  br label %65

65:                                               ; preds = %61, %50
  %66 = load i32*, i32** %5, align 8
  %67 = load i32, i32* %6, align 4
  %68 = call i8* @PQgetvalue(i32* %66, i32 %67, i32 3)
  store i8* %68, i8** %10, align 8
  %69 = load i32*, i32** %5, align 8
  %70 = load i32, i32* %6, align 4
  %71 = call i32 @PQgetisnull(i32* %69, i32 %70, i32 4)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %77, label %73

73:                                               ; preds = %65
  %74 = load i32*, i32** %5, align 8
  %75 = load i32, i32* %6, align 4
  %76 = call i8* @PQgetvalue(i32* %74, i32 %75, i32 4)
  store i8* %76, i8** %11, align 8
  br label %77

77:                                               ; preds = %73, %65
  %78 = load i8*, i8** %7, align 8
  %79 = load i8*, i8** %9, align 8
  %80 = load i8*, i8** %8, align 8
  %81 = load i8*, i8** %11, align 8
  %82 = load i8*, i8** %10, align 8
  %83 = call i32 @describeOneTSConfig(i8* %78, i8* %79, i8* %80, i8* %81, i8* %82)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %88, label %85

85:                                               ; preds = %77
  %86 = load i32*, i32** %5, align 8
  %87 = call i32 @PQclear(i32* %86)
  store i32 0, i32* %2, align 4
  br label %101

88:                                               ; preds = %77
  %89 = load i64, i64* @cancel_pressed, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %88
  %92 = load i32*, i32** %5, align 8
  %93 = call i32 @PQclear(i32* %92)
  store i32 0, i32* %2, align 4
  br label %101

94:                                               ; preds = %88
  br label %95

95:                                               ; preds = %94
  %96 = load i32, i32* %6, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %6, align 4
  br label %45

98:                                               ; preds = %45
  %99 = load i32*, i32** %5, align 8
  %100 = call i32 @PQclear(i32* %99)
  store i32 1, i32* %2, align 4
  br label %101

101:                                              ; preds = %98, %91, %85, %41, %24
  %102 = load i32, i32* %2, align 4
  ret i32 %102
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

declare dso_local i32 @describeOneTSConfig(i8*, i8*, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
