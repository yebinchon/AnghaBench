; ModuleID = '/home/carl/AnghaBench/postgres/src/test/regress/extr_pg_regress.c_file_line_count.c'
source_filename = "/home/carl/AnghaBench/postgres/src/test/regress/extr_pg_regress.c_file_line_count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"%s: could not open file \22%s\22 for reading: %s\0A\00", align 1
@progname = common dso_local global i8* null, align 8
@errno = common dso_local global i32 0, align 4
@EOF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @file_line_count to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @file_line_count(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  store i8* %0, i8** %3, align 8
  store i32 0, i32* %5, align 4
  %7 = load i8*, i8** %3, align 8
  %8 = call i32* @fopen(i8* %7, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %8, i32** %6, align 8
  %9 = load i32*, i32** %6, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %19, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @stderr, align 4
  %13 = call i8* @_(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  %14 = load i8*, i8** @progname, align 8
  %15 = load i8*, i8** %3, align 8
  %16 = load i32, i32* @errno, align 4
  %17 = call i8* @strerror(i32 %16)
  %18 = call i32 @fprintf(i32 %12, i8* %13, i8* %14, i8* %15, i8* %17)
  store i32 -1, i32* %2, align 4
  br label %36

19:                                               ; preds = %1
  br label %20

20:                                               ; preds = %31, %19
  %21 = load i32*, i32** %6, align 8
  %22 = call i32 @fgetc(i32* %21)
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* @EOF, align 4
  %24 = icmp ne i32 %22, %23
  br i1 %24, label %25, label %32

25:                                               ; preds = %20
  %26 = load i32, i32* %4, align 4
  %27 = icmp eq i32 %26, 10
  br i1 %27, label %28, label %31

28:                                               ; preds = %25
  %29 = load i32, i32* %5, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %5, align 4
  br label %31

31:                                               ; preds = %28, %25
  br label %20

32:                                               ; preds = %20
  %33 = load i32*, i32** %6, align 8
  %34 = call i32 @fclose(i32* %33)
  %35 = load i32, i32* %5, align 4
  store i32 %35, i32* %2, align 4
  br label %36

36:                                               ; preds = %32, %11
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, i8*, i8*) #1

declare dso_local i8* @_(i8*) #1

declare dso_local i8* @strerror(i32) #1

declare dso_local i32 @fgetc(i32*) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
