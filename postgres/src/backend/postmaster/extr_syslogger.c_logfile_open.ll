; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/postmaster/extr_syslogger.c_logfile_open.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/postmaster/extr_syslogger.c_logfile_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@Log_file_mode = common dso_local global i32 0, align 4
@S_IWUSR = common dso_local global i32 0, align 4
@S_IRWXU = common dso_local global i32 0, align 4
@S_IRWXG = common dso_local global i32 0, align 4
@S_IRWXO = common dso_local global i32 0, align 4
@PG_IOLBF = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@LOG = common dso_local global i32 0, align 4
@FATAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"could not open log file \22%s\22: %m\00", align 1
@_O_TEXT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i8*, i32)* @logfile_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @logfile_open(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* @Log_file_mode, align 4
  %11 = load i32, i32* @S_IWUSR, align 4
  %12 = or i32 %10, %11
  %13 = xor i32 %12, -1
  %14 = load i32, i32* @S_IRWXU, align 4
  %15 = load i32, i32* @S_IRWXG, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @S_IRWXO, align 4
  %18 = or i32 %16, %17
  %19 = and i32 %13, %18
  %20 = call i32 @umask(i32 %19)
  store i32 %20, i32* %8, align 4
  %21 = load i8*, i8** %4, align 8
  %22 = load i8*, i8** %5, align 8
  %23 = call i32* @fopen(i8* %21, i8* %22)
  store i32* %23, i32** %7, align 8
  %24 = load i32, i32* %8, align 4
  %25 = call i32 @umask(i32 %24)
  %26 = load i32*, i32** %7, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %28, label %32

28:                                               ; preds = %3
  %29 = load i32*, i32** %7, align 8
  %30 = load i32, i32* @PG_IOLBF, align 4
  %31 = call i32 @setvbuf(i32* %29, i32* null, i32 %30, i32 0)
  br label %47

32:                                               ; preds = %3
  %33 = load i32, i32* @errno, align 4
  store i32 %33, i32* %9, align 4
  %34 = load i32, i32* %6, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %32
  %37 = load i32, i32* @LOG, align 4
  br label %40

38:                                               ; preds = %32
  %39 = load i32, i32* @FATAL, align 4
  br label %40

40:                                               ; preds = %38, %36
  %41 = phi i32 [ %37, %36 ], [ %39, %38 ]
  %42 = call i32 (...) @errcode_for_file_access()
  %43 = load i8*, i8** %4, align 8
  %44 = call i32 @errmsg(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i8* %43)
  %45 = call i32 @ereport(i32 %41, i32 %44)
  %46 = load i32, i32* %9, align 4
  store i32 %46, i32* @errno, align 4
  br label %47

47:                                               ; preds = %40, %28
  %48 = load i32*, i32** %7, align 8
  ret i32* %48
}

declare dso_local i32 @umask(i32) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @setvbuf(i32*, i32*, i32, i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode_for_file_access(...) #1

declare dso_local i32 @errmsg(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
