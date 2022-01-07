; ModuleID = '/home/carl/AnghaBench/mongoose/examples/api_server/extr_sqlite3.c_unixTempFileDir.c'
source_filename = "/home/carl/AnghaBench/mongoose/examples/api_server/extr_sqlite3.c_unixTempFileDir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }

@unixTempFileDir.azDirs = internal global [6 x i8*] [i8* null, i8* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i8* null], align 16
@.str = private unnamed_addr constant [9 x i8] c"/var/tmp\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"/usr/tmp\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"/tmp\00", align 1
@sqlite3_temp_directory = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [7 x i8] c"TMPDIR\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* ()* @unixTempFileDir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @unixTempFileDir() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.stat, align 4
  %3 = alloca i8*, align 8
  store i8* null, i8** %3, align 8
  %4 = load i8*, i8** @sqlite3_temp_directory, align 8
  store i8* %4, i8** getelementptr inbounds ([6 x i8*], [6 x i8*]* @unixTempFileDir.azDirs, i64 0, i64 0), align 16
  %5 = load i8*, i8** getelementptr inbounds ([6 x i8*], [6 x i8*]* @unixTempFileDir.azDirs, i64 0, i64 1), align 8
  %6 = icmp ne i8* %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %0
  %8 = call i8* @getenv(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  store i8* %8, i8** getelementptr inbounds ([6 x i8*], [6 x i8*]* @unixTempFileDir.azDirs, i64 0, i64 1), align 8
  br label %9

9:                                                ; preds = %7, %0
  store i32 0, i32* %1, align 4
  br label %10

10:                                               ; preds = %35, %9
  %11 = load i32, i32* %1, align 4
  %12 = zext i32 %11 to i64
  %13 = icmp ult i64 %12, 6
  br i1 %13, label %14, label %41

14:                                               ; preds = %10
  %15 = load i8*, i8** %3, align 8
  %16 = icmp eq i8* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %14
  br label %35

18:                                               ; preds = %14
  %19 = load i8*, i8** %3, align 8
  %20 = call i64 @osStat(i8* %19, %struct.stat* %2)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  br label %35

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.stat, %struct.stat* %2, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @S_ISDIR(i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %23
  br label %35

29:                                               ; preds = %23
  %30 = load i8*, i8** %3, align 8
  %31 = call i64 @osAccess(i8* %30, i32 7)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %29
  br label %35

34:                                               ; preds = %29
  br label %41

35:                                               ; preds = %33, %28, %22, %17
  %36 = load i32, i32* %1, align 4
  %37 = add i32 %36, 1
  store i32 %37, i32* %1, align 4
  %38 = zext i32 %36 to i64
  %39 = getelementptr inbounds [6 x i8*], [6 x i8*]* @unixTempFileDir.azDirs, i64 0, i64 %38
  %40 = load i8*, i8** %39, align 8
  store i8* %40, i8** %3, align 8
  br label %10

41:                                               ; preds = %34, %10
  %42 = load i8*, i8** %3, align 8
  ret i8* %42
}

declare dso_local i8* @getenv(i8*) #1

declare dso_local i64 @osStat(i8*, %struct.stat*) #1

declare dso_local i32 @S_ISDIR(i32) #1

declare dso_local i64 @osAccess(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
