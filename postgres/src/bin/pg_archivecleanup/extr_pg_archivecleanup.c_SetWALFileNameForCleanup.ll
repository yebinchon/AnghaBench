; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/pg_archivecleanup/extr_pg_archivecleanup.c_SetWALFileNameForCleanup.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/pg_archivecleanup/extr_pg_archivecleanup.c_SetWALFileNameForCleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@restartWALFileName = common dso_local global i32 0, align 4
@additional_ext = common dso_local global i32 0, align 4
@exclusiveCleanupFileName = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"%08X%08X%08X.partial\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"%08X%08X%08X.%08X.backup\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"invalid file name argument\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [39 x i8] c"Try \22%s --help\22 for more information.\0A\00", align 1
@progname = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @SetWALFileNameForCleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @SetWALFileNameForCleanup() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %11 = load i32, i32* @restartWALFileName, align 4
  %12 = load i32, i32* @additional_ext, align 4
  %13 = call i32 @TrimExtension(i32 %11, i32 %12)
  %14 = load i32, i32* @restartWALFileName, align 4
  %15 = call i64 @IsXLogFileName(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %0
  %18 = load i32, i32* @exclusiveCleanupFileName, align 4
  %19 = load i32, i32* @restartWALFileName, align 4
  %20 = call i32 @strcpy(i32 %18, i32 %19)
  store i32 1, i32* %1, align 4
  br label %55

21:                                               ; preds = %0
  %22 = load i32, i32* @restartWALFileName, align 4
  %23 = call i64 @IsPartialXLogFileName(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %37

25:                                               ; preds = %21
  store i32 1, i32* %3, align 4
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %26 = load i32, i32* @restartWALFileName, align 4
  %27 = call i32 (i32, i8*, i32*, i32*, i32*, ...) @sscanf(i32 %26, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32* %3, i32* %4, i32* %5)
  store i32 %27, i32* %2, align 4
  %28 = load i32, i32* %2, align 4
  %29 = icmp eq i32 %28, 3
  br i1 %29, label %30, label %36

30:                                               ; preds = %25
  store i32 1, i32* %1, align 4
  %31 = load i32, i32* @exclusiveCleanupFileName, align 4
  %32 = load i32, i32* %3, align 4
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @XLogFileNameById(i32 %31, i32 %32, i32 %33, i32 %34)
  br label %36

36:                                               ; preds = %30, %25
  br label %54

37:                                               ; preds = %21
  %38 = load i32, i32* @restartWALFileName, align 4
  %39 = call i64 @IsBackupHistoryFileName(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %53

41:                                               ; preds = %37
  store i32 1, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %42 = load i32, i32* @restartWALFileName, align 4
  %43 = call i32 (i32, i8*, i32*, i32*, i32*, ...) @sscanf(i32 %42, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32* %7, i32* %8, i32* %9, i32* %10)
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* %6, align 4
  %45 = icmp eq i32 %44, 4
  br i1 %45, label %46, label %52

46:                                               ; preds = %41
  store i32 1, i32* %1, align 4
  %47 = load i32, i32* @exclusiveCleanupFileName, align 4
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* %9, align 4
  %51 = call i32 @XLogFileNameById(i32 %47, i32 %48, i32 %49, i32 %50)
  br label %52

52:                                               ; preds = %46, %41
  br label %53

53:                                               ; preds = %52, %37
  br label %54

54:                                               ; preds = %53, %36
  br label %55

55:                                               ; preds = %54, %17
  %56 = load i32, i32* %1, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %65, label %58

58:                                               ; preds = %55
  %59 = call i32 @pg_log_error(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %60 = load i32, i32* @stderr, align 4
  %61 = call i8* @_(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0))
  %62 = load i8*, i8** @progname, align 8
  %63 = call i32 @fprintf(i32 %60, i8* %61, i8* %62)
  %64 = call i32 @exit(i32 2) #3
  unreachable

65:                                               ; preds = %55
  ret void
}

declare dso_local i32 @TrimExtension(i32, i32) #1

declare dso_local i64 @IsXLogFileName(i32) #1

declare dso_local i32 @strcpy(i32, i32) #1

declare dso_local i64 @IsPartialXLogFileName(i32) #1

declare dso_local i32 @sscanf(i32, i8*, i32*, i32*, i32*, ...) #1

declare dso_local i32 @XLogFileNameById(i32, i32, i32, i32) #1

declare dso_local i64 @IsBackupHistoryFileName(i32) #1

declare dso_local i32 @pg_log_error(i8*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i8* @_(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
