; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/pg_dump/extr_parallel.c_parseWorkerCommand.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/pg_dump/extr_parallel.c_parseWorkerCommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"DUMP \00", align 1
@ACT_DUMP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"DUMP %d%n\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"RESTORE \00", align 1
@ACT_RESTORE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [13 x i8] c"RESTORE %d%n\00", align 1
@.str.4 = private unnamed_addr constant [48 x i8] c"unrecognized command received from master: \22%s\22\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32**, i32*, i8*)* @parseWorkerCommand to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parseWorkerCommand(i32* %0, i32** %1, i32* %2, i8* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32** %1, i32*** %6, align 8
  store i32* %2, i32** %7, align 8
  store i8* %3, i8** %8, align 8
  %11 = load i8*, i8** %8, align 8
  %12 = call i64 @messageStartsWith(i8* %11, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %34

14:                                               ; preds = %4
  %15 = load i32, i32* @ACT_DUMP, align 4
  %16 = load i32*, i32** %7, align 8
  store i32 %15, i32* %16, align 4
  %17 = load i8*, i8** %8, align 8
  %18 = call i32 @sscanf(i8* %17, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32* %9, i32* %10)
  %19 = load i32, i32* %10, align 4
  %20 = load i8*, i8** %8, align 8
  %21 = call i32 @strlen(i8* %20)
  %22 = icmp eq i32 %19, %21
  %23 = zext i1 %22 to i32
  %24 = call i32 @Assert(i32 %23)
  %25 = load i32*, i32** %5, align 8
  %26 = load i32, i32* %9, align 4
  %27 = call i32* @getTocEntryByDumpId(i32* %25, i32 %26)
  %28 = load i32**, i32*** %6, align 8
  store i32* %27, i32** %28, align 8
  %29 = load i32**, i32*** %6, align 8
  %30 = load i32*, i32** %29, align 8
  %31 = icmp ne i32* %30, null
  %32 = zext i1 %31 to i32
  %33 = call i32 @Assert(i32 %32)
  br label %62

34:                                               ; preds = %4
  %35 = load i8*, i8** %8, align 8
  %36 = call i64 @messageStartsWith(i8* %35, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %58

38:                                               ; preds = %34
  %39 = load i32, i32* @ACT_RESTORE, align 4
  %40 = load i32*, i32** %7, align 8
  store i32 %39, i32* %40, align 4
  %41 = load i8*, i8** %8, align 8
  %42 = call i32 @sscanf(i8* %41, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i32* %9, i32* %10)
  %43 = load i32, i32* %10, align 4
  %44 = load i8*, i8** %8, align 8
  %45 = call i32 @strlen(i8* %44)
  %46 = icmp eq i32 %43, %45
  %47 = zext i1 %46 to i32
  %48 = call i32 @Assert(i32 %47)
  %49 = load i32*, i32** %5, align 8
  %50 = load i32, i32* %9, align 4
  %51 = call i32* @getTocEntryByDumpId(i32* %49, i32 %50)
  %52 = load i32**, i32*** %6, align 8
  store i32* %51, i32** %52, align 8
  %53 = load i32**, i32*** %6, align 8
  %54 = load i32*, i32** %53, align 8
  %55 = icmp ne i32* %54, null
  %56 = zext i1 %55 to i32
  %57 = call i32 @Assert(i32 %56)
  br label %61

58:                                               ; preds = %34
  %59 = load i8*, i8** %8, align 8
  %60 = call i32 @fatal(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.4, i64 0, i64 0), i8* %59)
  br label %61

61:                                               ; preds = %58, %38
  br label %62

62:                                               ; preds = %61, %14
  ret void
}

declare dso_local i64 @messageStartsWith(i8*, i8*) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*, i32*) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32* @getTocEntryByDumpId(i32*, i32) #1

declare dso_local i32 @fatal(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
