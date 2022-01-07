; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/pg_dump/extr_pg_dumpall.c_dumpUserConfig.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/pg_dump/extr_pg_dumpall.c_dumpUserConfig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i8* }

@server_version = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [118 x i8] c"SELECT setconfig[%d] FROM pg_db_role_setting WHERE setdatabase = 0 AND setrole = (SELECT oid FROM %s WHERE rolname = \00", align 1
@role_catalog = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"SELECT rolconfig[%d] FROM %s WHERE rolname = \00", align 1
@.str.2 = private unnamed_addr constant [53 x i8] c"SELECT useconfig[%d] FROM pg_shadow WHERE usename = \00", align 1
@OPF = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"--\0A-- User Configurations\0A--\0A\0A\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"--\0A-- User Config \22%s\22\0A--\0A\0A\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"ROLE\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*)* @dumpUserConfig to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dumpUserConfig(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = call %struct.TYPE_9__* (...) @createPQExpBuffer()
  store %struct.TYPE_9__* %9, %struct.TYPE_9__** %5, align 8
  store i32 1, i32* %6, align 4
  store i32 1, i32* %7, align 4
  br label %10

10:                                               ; preds = %84, %2
  %11 = load i32, i32* @server_version, align 4
  %12 = icmp sge i32 %11, 90000
  br i1 %12, label %13, label %18

13:                                               ; preds = %10
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @role_catalog, align 4
  %17 = call i32 (%struct.TYPE_9__*, i8*, i32, ...) @printfPQExpBuffer(%struct.TYPE_9__* %14, i8* getelementptr inbounds ([118 x i8], [118 x i8]* @.str, i64 0, i64 0), i32 %15, i32 %16)
  br label %31

18:                                               ; preds = %10
  %19 = load i32, i32* @server_version, align 4
  %20 = icmp sge i32 %19, 80100
  br i1 %20, label %21, label %26

21:                                               ; preds = %18
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* @role_catalog, align 4
  %25 = call i32 (%struct.TYPE_9__*, i8*, i32, ...) @printfPQExpBuffer(%struct.TYPE_9__* %22, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %23, i32 %24)
  br label %30

26:                                               ; preds = %18
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %28 = load i32, i32* %6, align 4
  %29 = call i32 (%struct.TYPE_9__*, i8*, i32, ...) @printfPQExpBuffer(%struct.TYPE_9__* %27, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i64 0, i64 0), i32 %28)
  br label %30

30:                                               ; preds = %26, %21
  br label %31

31:                                               ; preds = %30, %13
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %33 = load i8*, i8** %4, align 8
  %34 = load i32*, i32** %3, align 8
  %35 = call i32 @appendStringLiteralConn(%struct.TYPE_9__* %32, i8* %33, i32* %34)
  %36 = load i32, i32* @server_version, align 4
  %37 = icmp sge i32 %36, 90000
  br i1 %37, label %38, label %41

38:                                               ; preds = %31
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %40 = call i32 @appendPQExpBufferChar(%struct.TYPE_9__* %39, i8 signext 41)
  br label %41

41:                                               ; preds = %38, %31
  %42 = load i32*, i32** %3, align 8
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 0
  %45 = load i8*, i8** %44, align 8
  %46 = call i32* @executeQuery(i32* %42, i8* %45)
  store i32* %46, i32** %8, align 8
  %47 = load i32*, i32** %8, align 8
  %48 = call i32 @PQntuples(i32* %47)
  %49 = icmp eq i32 %48, 1
  br i1 %49, label %50, label %81

50:                                               ; preds = %41
  %51 = load i32*, i32** %8, align 8
  %52 = call i32 @PQgetisnull(i32* %51, i32 0, i32 0)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %81, label %54

54:                                               ; preds = %50
  %55 = load i32, i32* %7, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %54
  %58 = load i32, i32* @OPF, align 4
  %59 = call i32 (i32, i8*, ...) @fprintf(i32 %58, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  br label %60

60:                                               ; preds = %57, %54
  %61 = load i32, i32* @OPF, align 4
  %62 = load i8*, i8** %4, align 8
  %63 = call i32 (i32, i8*, ...) @fprintf(i32 %61, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i8* %62)
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %65 = call i32 @resetPQExpBuffer(%struct.TYPE_9__* %64)
  %66 = load i32*, i32** %3, align 8
  %67 = load i32*, i32** %8, align 8
  %68 = call i32 @PQgetvalue(i32* %67, i32 0, i32 0)
  %69 = load i8*, i8** %4, align 8
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %71 = call i32 @makeAlterConfigCommand(i32* %66, i32 %68, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8* %69, i32* null, i32* null, %struct.TYPE_9__* %70)
  %72 = load i32, i32* @OPF, align 4
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 0
  %75 = load i8*, i8** %74, align 8
  %76 = call i32 (i32, i8*, ...) @fprintf(i32 %72, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i8* %75)
  %77 = load i32*, i32** %8, align 8
  %78 = call i32 @PQclear(i32* %77)
  %79 = load i32, i32* %6, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %6, align 4
  br label %84

81:                                               ; preds = %50, %41
  %82 = load i32*, i32** %8, align 8
  %83 = call i32 @PQclear(i32* %82)
  br label %85

84:                                               ; preds = %60
  br label %10

85:                                               ; preds = %81
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %87 = call i32 @destroyPQExpBuffer(%struct.TYPE_9__* %86)
  ret void
}

declare dso_local %struct.TYPE_9__* @createPQExpBuffer(...) #1

declare dso_local i32 @printfPQExpBuffer(%struct.TYPE_9__*, i8*, i32, ...) #1

declare dso_local i32 @appendStringLiteralConn(%struct.TYPE_9__*, i8*, i32*) #1

declare dso_local i32 @appendPQExpBufferChar(%struct.TYPE_9__*, i8 signext) #1

declare dso_local i32* @executeQuery(i32*, i8*) #1

declare dso_local i32 @PQntuples(i32*) #1

declare dso_local i32 @PQgetisnull(i32*, i32, i32) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @resetPQExpBuffer(%struct.TYPE_9__*) #1

declare dso_local i32 @makeAlterConfigCommand(i32*, i32, i8*, i8*, i32*, i32*, %struct.TYPE_9__*) #1

declare dso_local i32 @PQgetvalue(i32*, i32, i32) #1

declare dso_local i32 @PQclear(i32*) #1

declare dso_local i32 @destroyPQExpBuffer(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
