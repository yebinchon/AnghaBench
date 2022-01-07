; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/pg_resetwal/extr_pg_resetwal.c_CheckDataVersion.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/pg_resetwal/extr_pg_resetwal.c_CheckDataVersion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [11 x i8] c"PG_VERSION\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"could not open file \22%s\22 for reading: %m\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"unexpected empty file \22%s\22\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"could not read file \22%s\22: %m\00", align 1
@PG_MAJORVERSION = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [35 x i8] c"data directory is of wrong version\00", align 1
@.str.6 = private unnamed_addr constant [83 x i8] c"File \22%s\22 contains \22%s\22, which is not compatible with this program's version \22%s\22.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @CheckDataVersion to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CheckDataVersion() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca [64 x i8], align 16
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8** %1, align 8
  %4 = load i8*, i8** %1, align 8
  %5 = call i32* @fopen(i8* %4, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %5, i32** %2, align 8
  %6 = icmp eq i32* %5, null
  br i1 %6, label %7, label %11

7:                                                ; preds = %0
  %8 = load i8*, i8** %1, align 8
  %9 = call i32 (i8*, ...) @pg_log_error(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i8* %8)
  %10 = call i32 @exit(i32 1) #3
  unreachable

11:                                               ; preds = %0
  %12 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %13 = load i32*, i32** %2, align 8
  %14 = call i32 @fgets(i8* %12, i32 64, i32* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %28, label %16

16:                                               ; preds = %11
  %17 = load i32*, i32** %2, align 8
  %18 = call i32 @ferror(i32* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %16
  %21 = load i8*, i8** %1, align 8
  %22 = call i32 (i8*, ...) @pg_log_error(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i8* %21)
  br label %26

23:                                               ; preds = %16
  %24 = load i8*, i8** %1, align 8
  %25 = call i32 (i8*, ...) @pg_log_error(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i8* %24)
  br label %26

26:                                               ; preds = %23, %20
  %27 = call i32 @exit(i32 1) #3
  unreachable

28:                                               ; preds = %11
  %29 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %30 = call i32 @pg_strip_crlf(i8* %29)
  %31 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %32 = load i32, i32* @PG_MAJORVERSION, align 4
  %33 = call i64 @strcmp(i8* %31, i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %28
  %36 = call i32 (i8*, ...) @pg_log_error(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0))
  %37 = load i8*, i8** %1, align 8
  %38 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %39 = load i32, i32* @PG_MAJORVERSION, align 4
  %40 = call i32 @pg_log_info(i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.6, i64 0, i64 0), i8* %37, i8* %38, i32 %39)
  %41 = call i32 @exit(i32 1) #3
  unreachable

42:                                               ; preds = %28
  %43 = load i32*, i32** %2, align 8
  %44 = call i32 @fclose(i32* %43)
  ret void
}

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @pg_log_error(i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @fgets(i8*, i32, i32*) #1

declare dso_local i32 @ferror(i32*) #1

declare dso_local i32 @pg_strip_crlf(i8*) #1

declare dso_local i64 @strcmp(i8*, i32) #1

declare dso_local i32 @pg_log_info(i8*, i8*, i8*, i32) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
