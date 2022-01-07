; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/psql/extr_describe.c_listExtensionContents.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/psql/extr_describe.c_listExtensionContents.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i32 }
%struct.TYPE_8__ = type { i32 }

@pset = common dso_local global %struct.TYPE_9__ zeroinitializer, align 4
@.str = private unnamed_addr constant [53 x i8] c"The server (version %s) does not support extensions.\00", align 1
@.str.1 = private unnamed_addr constant [56 x i8] c"SELECT e.extname, e.oid\0AFROM pg_catalog.pg_extension e\0A\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"e.extname\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"ORDER BY 1;\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"Did not find any extension named \22%s\22.\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"Did not find any extensions.\00", align 1
@cancel_pressed = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @listExtensionContents(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_8__, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [32 x i8], align 16
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %10 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @pset, i32 0, i32 0), align 4
  %11 = icmp slt i32 %10, 90100
  br i1 %11, label %12, label %17

12:                                               ; preds = %1
  %13 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @pset, i32 0, i32 0), align 4
  %14 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i64 0, i64 0
  %15 = call i32 @formatPGVersionNumber(i32 %13, i32 0, i8* %14, i32 32)
  %16 = call i32 (i8*, ...) @pg_log_error(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %15)
  store i32 1, i32* %2, align 4
  br label %83

17:                                               ; preds = %1
  %18 = call i32 @initPQExpBuffer(%struct.TYPE_8__* %4)
  %19 = call i32 @printfPQExpBuffer(%struct.TYPE_8__* %4, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0))
  %20 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @pset, i32 0, i32 2), align 4
  %21 = load i8*, i8** %3, align 8
  %22 = call i32 @processSQLNamePattern(i32 %20, %struct.TYPE_8__* %4, i8* %21, i32 0, i32 0, i32* null, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32* null, i32* null)
  %23 = call i32 @appendPQExpBufferStr(%struct.TYPE_8__* %4, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32* @PSQLexec(i32 %25)
  store i32* %26, i32** %5, align 8
  %27 = call i32 @termPQExpBuffer(%struct.TYPE_8__* %4)
  %28 = load i32*, i32** %5, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %17
  store i32 0, i32* %2, align 4
  br label %83

31:                                               ; preds = %17
  %32 = load i32*, i32** %5, align 8
  %33 = call i32 @PQntuples(i32* %32)
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %50

35:                                               ; preds = %31
  %36 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @pset, i32 0, i32 1), align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %47, label %38

38:                                               ; preds = %35
  %39 = load i8*, i8** %3, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %41, label %44

41:                                               ; preds = %38
  %42 = load i8*, i8** %3, align 8
  %43 = call i32 (i8*, ...) @pg_log_error(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0), i8* %42)
  br label %46

44:                                               ; preds = %38
  %45 = call i32 (i8*, ...) @pg_log_error(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0))
  br label %46

46:                                               ; preds = %44, %41
  br label %47

47:                                               ; preds = %46, %35
  %48 = load i32*, i32** %5, align 8
  %49 = call i32 @PQclear(i32* %48)
  store i32 0, i32* %2, align 4
  br label %83

50:                                               ; preds = %31
  store i32 0, i32* %6, align 4
  br label %51

51:                                               ; preds = %77, %50
  %52 = load i32, i32* %6, align 4
  %53 = load i32*, i32** %5, align 8
  %54 = call i32 @PQntuples(i32* %53)
  %55 = icmp slt i32 %52, %54
  br i1 %55, label %56, label %80

56:                                               ; preds = %51
  %57 = load i32*, i32** %5, align 8
  %58 = load i32, i32* %6, align 4
  %59 = call i8* @PQgetvalue(i32* %57, i32 %58, i32 0)
  store i8* %59, i8** %8, align 8
  %60 = load i32*, i32** %5, align 8
  %61 = load i32, i32* %6, align 4
  %62 = call i8* @PQgetvalue(i32* %60, i32 %61, i32 1)
  store i8* %62, i8** %9, align 8
  %63 = load i8*, i8** %8, align 8
  %64 = load i8*, i8** %9, align 8
  %65 = call i32 @listOneExtensionContents(i8* %63, i8* %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %70, label %67

67:                                               ; preds = %56
  %68 = load i32*, i32** %5, align 8
  %69 = call i32 @PQclear(i32* %68)
  store i32 0, i32* %2, align 4
  br label %83

70:                                               ; preds = %56
  %71 = load i64, i64* @cancel_pressed, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %70
  %74 = load i32*, i32** %5, align 8
  %75 = call i32 @PQclear(i32* %74)
  store i32 0, i32* %2, align 4
  br label %83

76:                                               ; preds = %70
  br label %77

77:                                               ; preds = %76
  %78 = load i32, i32* %6, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %6, align 4
  br label %51

80:                                               ; preds = %51
  %81 = load i32*, i32** %5, align 8
  %82 = call i32 @PQclear(i32* %81)
  store i32 1, i32* %2, align 4
  br label %83

83:                                               ; preds = %80, %73, %67, %47, %30, %12
  %84 = load i32, i32* %2, align 4
  ret i32 %84
}

declare dso_local i32 @pg_log_error(i8*, ...) #1

declare dso_local i32 @formatPGVersionNumber(i32, i32, i8*, i32) #1

declare dso_local i32 @initPQExpBuffer(%struct.TYPE_8__*) #1

declare dso_local i32 @printfPQExpBuffer(%struct.TYPE_8__*, i8*) #1

declare dso_local i32 @processSQLNamePattern(i32, %struct.TYPE_8__*, i8*, i32, i32, i32*, i8*, i32*, i32*) #1

declare dso_local i32 @appendPQExpBufferStr(%struct.TYPE_8__*, i8*) #1

declare dso_local i32* @PSQLexec(i32) #1

declare dso_local i32 @termPQExpBuffer(%struct.TYPE_8__*) #1

declare dso_local i32 @PQntuples(i32*) #1

declare dso_local i32 @PQclear(i32*) #1

declare dso_local i8* @PQgetvalue(i32*, i32, i32) #1

declare dso_local i32 @listOneExtensionContents(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
