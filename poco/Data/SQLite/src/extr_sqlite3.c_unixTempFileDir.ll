; ModuleID = '/home/carl/AnghaBench/poco/Data/SQLite/src/extr_sqlite3.c_unixTempFileDir.c'
source_filename = "/home/carl/AnghaBench/poco/Data/SQLite/src/extr_sqlite3.c_unixTempFileDir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }

@unixTempFileDir.azDirs = internal global [6 x i8*] [i8* null, i8* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [9 x i8] c"/var/tmp\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"/usr/tmp\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"/tmp\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c".\00", align 1
@sqlite3_temp_directory = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [14 x i8] c"SQLITE_TMPDIR\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"TMPDIR\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* ()* @unixTempFileDir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @unixTempFileDir() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i32, align 4
  %3 = alloca %struct.stat, align 4
  %4 = alloca i8*, align 8
  store i32 0, i32* %2, align 4
  %5 = load i8*, i8** @sqlite3_temp_directory, align 8
  store i8* %5, i8** %4, align 8
  %6 = load i8*, i8** getelementptr inbounds ([6 x i8*], [6 x i8*]* @unixTempFileDir.azDirs, i64 0, i64 0), align 16
  %7 = icmp ne i8* %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %0
  %9 = call i8* @getenv(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  store i8* %9, i8** getelementptr inbounds ([6 x i8*], [6 x i8*]* @unixTempFileDir.azDirs, i64 0, i64 0), align 16
  br label %10

10:                                               ; preds = %8, %0
  %11 = load i8*, i8** getelementptr inbounds ([6 x i8*], [6 x i8*]* @unixTempFileDir.azDirs, i64 0, i64 1), align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %10
  %14 = call i8* @getenv(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  store i8* %14, i8** getelementptr inbounds ([6 x i8*], [6 x i8*]* @unixTempFileDir.azDirs, i64 0, i64 1), align 8
  br label %15

15:                                               ; preds = %13, %10
  br label %16

16:                                               ; preds = %15, %39
  %17 = load i8*, i8** %4, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %34

19:                                               ; preds = %16
  %20 = load i8*, i8** %4, align 8
  %21 = call i64 @osStat(i8* %20, %struct.stat* %3)
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %34

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.stat, %struct.stat* %3, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i64 @S_ISDIR(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %23
  %29 = load i8*, i8** %4, align 8
  %30 = call i64 @osAccess(i8* %29, i32 3)
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %28
  %33 = load i8*, i8** %4, align 8
  store i8* %33, i8** %1, align 8
  br label %46

34:                                               ; preds = %28, %23, %19, %16
  %35 = load i32, i32* %2, align 4
  %36 = zext i32 %35 to i64
  %37 = icmp uge i64 %36, 6
  br i1 %37, label %38, label %39

38:                                               ; preds = %34
  br label %45

39:                                               ; preds = %34
  %40 = load i32, i32* %2, align 4
  %41 = add i32 %40, 1
  store i32 %41, i32* %2, align 4
  %42 = zext i32 %40 to i64
  %43 = getelementptr inbounds [6 x i8*], [6 x i8*]* @unixTempFileDir.azDirs, i64 0, i64 %42
  %44 = load i8*, i8** %43, align 8
  store i8* %44, i8** %4, align 8
  br label %16

45:                                               ; preds = %38
  store i8* null, i8** %1, align 8
  br label %46

46:                                               ; preds = %45, %32
  %47 = load i8*, i8** %1, align 8
  ret i8* %47
}

declare dso_local i8* @getenv(i8*) #1

declare dso_local i64 @osStat(i8*, %struct.stat*) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i64 @osAccess(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
