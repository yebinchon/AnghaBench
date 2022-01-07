; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/pg_dump/extr_pg_dumpall.c_runPgDump.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/pg_dump/extr_pg_dumpall.c_runPgDump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"\22%s\22 %s %s\00", align 1
@pg_dump_bin = common dso_local global i32 0, align 4
@pgdumpopts = common dso_local global %struct.TYPE_10__* null, align 8
@filename = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [6 x i8] c" -Fa \00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c" -Fp \00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"%s dbname=\00", align 1
@connstr = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [13 x i8] c"running \22%s\22\00", align 1
@stdout = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @runPgDump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @runPgDump(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = call %struct.TYPE_9__* (...) @createPQExpBuffer()
  store %struct.TYPE_9__* %8, %struct.TYPE_9__** %5, align 8
  %9 = call %struct.TYPE_9__* (...) @createPQExpBuffer()
  store %struct.TYPE_9__* %9, %struct.TYPE_9__** %6, align 8
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %11 = load i32, i32* @pg_dump_bin, align 4
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** @pgdumpopts, align 8
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i8*, i8** %4, align 8
  %16 = call i32 (%struct.TYPE_9__*, i8*, i32, ...) @appendPQExpBuffer(%struct.TYPE_9__* %10, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %11, i32 %14, i8* %15)
  %17 = load i64, i64* @filename, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %21 = call i32 @appendPQExpBufferStr(%struct.TYPE_9__* %20, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  br label %25

22:                                               ; preds = %2
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %24 = call i32 @appendPQExpBufferStr(%struct.TYPE_9__* %23, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  br label %25

25:                                               ; preds = %22, %19
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %27 = load i32, i32* @connstr, align 4
  %28 = call i32 (%struct.TYPE_9__*, i8*, i32, ...) @appendPQExpBuffer(%struct.TYPE_9__* %26, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 %27)
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %30 = load i8*, i8** %3, align 8
  %31 = call i32 @appendConnStrVal(%struct.TYPE_9__* %29, i8* %30)
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @appendShellString(%struct.TYPE_9__* %32, i32 %35)
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @pg_log_info(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i32 %39)
  %41 = load i32, i32* @stdout, align 4
  %42 = call i32 @fflush(i32 %41)
  %43 = load i32, i32* @stderr, align 4
  %44 = call i32 @fflush(i32 %43)
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @system(i32 %47)
  store i32 %48, i32* %7, align 4
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %50 = call i32 @destroyPQExpBuffer(%struct.TYPE_9__* %49)
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %52 = call i32 @destroyPQExpBuffer(%struct.TYPE_9__* %51)
  %53 = load i32, i32* %7, align 4
  ret i32 %53
}

declare dso_local %struct.TYPE_9__* @createPQExpBuffer(...) #1

declare dso_local i32 @appendPQExpBuffer(%struct.TYPE_9__*, i8*, i32, ...) #1

declare dso_local i32 @appendPQExpBufferStr(%struct.TYPE_9__*, i8*) #1

declare dso_local i32 @appendConnStrVal(%struct.TYPE_9__*, i8*) #1

declare dso_local i32 @appendShellString(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @pg_log_info(i8*, i32) #1

declare dso_local i32 @fflush(i32) #1

declare dso_local i32 @system(i32) #1

declare dso_local i32 @destroyPQExpBuffer(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
