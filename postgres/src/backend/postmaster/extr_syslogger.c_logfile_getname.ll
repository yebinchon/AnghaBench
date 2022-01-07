; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/postmaster/extr_syslogger.c_logfile_getname.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/postmaster/extr_syslogger.c_logfile_getname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAXPGPATH = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [4 x i8] c"%s/\00", align 1
@Log_directory = common dso_local global i8* null, align 8
@Log_filename = common dso_local global i32 0, align 4
@log_timezone = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c".log\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32, i8*)* @logfile_getname to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @logfile_getname(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %7 = load i64, i64* @MAXPGPATH, align 8
  %8 = call i8* @palloc(i64 %7)
  store i8* %8, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = load i64, i64* @MAXPGPATH, align 8
  %11 = load i8*, i8** @Log_directory, align 8
  %12 = call i32 @snprintf(i8* %9, i64 %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %11)
  %13 = load i8*, i8** %5, align 8
  %14 = call i32 @strlen(i8* %13)
  store i32 %14, i32* %6, align 4
  %15 = load i8*, i8** %5, align 8
  %16 = load i32, i32* %6, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i8, i8* %15, i64 %17
  %19 = load i64, i64* @MAXPGPATH, align 8
  %20 = load i32, i32* %6, align 4
  %21 = sext i32 %20 to i64
  %22 = sub nsw i64 %19, %21
  %23 = load i32, i32* @Log_filename, align 4
  %24 = load i32, i32* @log_timezone, align 4
  %25 = call i32 @pg_localtime(i32* %3, i32 %24)
  %26 = call i32 @pg_strftime(i8* %18, i64 %22, i32 %23, i32 %25)
  %27 = load i8*, i8** %4, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %56

29:                                               ; preds = %2
  %30 = load i8*, i8** %5, align 8
  %31 = call i32 @strlen(i8* %30)
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %6, align 4
  %33 = icmp sgt i32 %32, 4
  br i1 %33, label %34, label %45

34:                                               ; preds = %29
  %35 = load i8*, i8** %5, align 8
  %36 = load i32, i32* %6, align 4
  %37 = sub nsw i32 %36, 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i8, i8* %35, i64 %38
  %40 = call i64 @strcmp(i8* %39, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %34
  %43 = load i32, i32* %6, align 4
  %44 = sub nsw i32 %43, 4
  store i32 %44, i32* %6, align 4
  br label %45

45:                                               ; preds = %42, %34, %29
  %46 = load i8*, i8** %5, align 8
  %47 = load i32, i32* %6, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i8, i8* %46, i64 %48
  %50 = load i8*, i8** %4, align 8
  %51 = load i64, i64* @MAXPGPATH, align 8
  %52 = load i32, i32* %6, align 4
  %53 = sext i32 %52 to i64
  %54 = sub nsw i64 %51, %53
  %55 = call i32 @strlcpy(i8* %49, i8* %50, i64 %54)
  br label %56

56:                                               ; preds = %45, %2
  %57 = load i8*, i8** %5, align 8
  ret i8* %57
}

declare dso_local i8* @palloc(i64) #1

declare dso_local i32 @snprintf(i8*, i64, i8*, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @pg_strftime(i8*, i64, i32, i32) #1

declare dso_local i32 @pg_localtime(i32*, i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @strlcpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
