; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/initdb/extr_initdb.c_write_version_file.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/initdb/extr_initdb.c_write_version_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [14 x i8] c"%s/PG_VERSION\00", align 1
@pg_data = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"%s/%s/PG_VERSION\00", align 1
@PG_BINARY_W = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"could not open file \22%s\22 for writing: %m\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@PG_MAJORVERSION = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [30 x i8] c"could not write file \22%s\22: %m\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @write_version_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_version_file(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = icmp eq i8* %5, null
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = load i32, i32* @pg_data, align 4
  %9 = call i8* (i8*, i32, ...) @psprintf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %8)
  store i8* %9, i8** %4, align 8
  br label %14

10:                                               ; preds = %1
  %11 = load i32, i32* @pg_data, align 4
  %12 = load i8*, i8** %2, align 8
  %13 = call i8* (i8*, i32, ...) @psprintf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %11, i8* %12)
  store i8* %13, i8** %4, align 8
  br label %14

14:                                               ; preds = %10, %7
  %15 = load i8*, i8** %4, align 8
  %16 = load i32, i32* @PG_BINARY_W, align 4
  %17 = call i32* @fopen(i8* %15, i32 %16)
  store i32* %17, i32** %3, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %19, label %23

19:                                               ; preds = %14
  %20 = load i8*, i8** %4, align 8
  %21 = call i32 @pg_log_error(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i8* %20)
  %22 = call i32 @exit(i32 1) #3
  unreachable

23:                                               ; preds = %14
  %24 = load i32*, i32** %3, align 8
  %25 = load i8*, i8** @PG_MAJORVERSION, align 8
  %26 = call i64 @fprintf(i32* %24, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* %25)
  %27 = icmp slt i64 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %23
  %29 = load i32*, i32** %3, align 8
  %30 = call i64 @fclose(i32* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %28, %23
  %33 = load i8*, i8** %4, align 8
  %34 = call i32 @pg_log_error(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i8* %33)
  %35 = call i32 @exit(i32 1) #3
  unreachable

36:                                               ; preds = %28
  %37 = load i8*, i8** %4, align 8
  %38 = call i32 @free(i8* %37)
  ret void
}

declare dso_local i8* @psprintf(i8*, i32, ...) #1

declare dso_local i32* @fopen(i8*, i32) #1

declare dso_local i32 @pg_log_error(i8*, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i64 @fprintf(i32*, i8*, i8*) #1

declare dso_local i64 @fclose(i32*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
