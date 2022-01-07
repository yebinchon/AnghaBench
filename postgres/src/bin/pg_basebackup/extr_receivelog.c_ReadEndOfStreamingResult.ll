; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/pg_basebackup/extr_receivelog.c_ReadEndOfStreamingResult.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/pg_basebackup/extr_receivelog.c_ReadEndOfStreamingResult.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [103 x i8] c"unexpected result set after end-of-timeline: got %d rows and %d fields, expected %d rows and %d fields\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%X/%X\00", align 1
@.str.2 = private unnamed_addr constant [52 x i8] c"could not parse next timeline's starting point \22%s\22\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*)* @ReadEndOfStreamingResult to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ReadEndOfStreamingResult(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = load i32*, i32** %5, align 8
  %11 = call i32 @PQnfields(i32* %10)
  %12 = icmp slt i32 %11, 2
  br i1 %12, label %17, label %13

13:                                               ; preds = %3
  %14 = load i32*, i32** %5, align 8
  %15 = call i32 @PQntuples(i32* %14)
  %16 = icmp ne i32 %15, 1
  br i1 %16, label %17, label %23

17:                                               ; preds = %13, %3
  %18 = load i32*, i32** %5, align 8
  %19 = call i32 @PQntuples(i32* %18)
  %20 = load i32*, i32** %5, align 8
  %21 = call i32 @PQnfields(i32* %20)
  %22 = call i32 (i8*, i32, ...) @pg_log_error(i8* getelementptr inbounds ([103 x i8], [103 x i8]* @.str, i64 0, i64 0), i32 %19, i32 %21, i32 1, i32 2)
  store i32 0, i32* %4, align 4
  br label %42

23:                                               ; preds = %13
  %24 = load i32*, i32** %5, align 8
  %25 = call i32 @PQgetvalue(i32* %24, i32 0, i32 0)
  %26 = call i32 @atoi(i32 %25)
  %27 = load i32*, i32** %7, align 8
  store i32 %26, i32* %27, align 4
  %28 = load i32*, i32** %5, align 8
  %29 = call i32 @PQgetvalue(i32* %28, i32 0, i32 1)
  %30 = call i32 @sscanf(i32 %29, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32* %8, i32* %9)
  %31 = icmp ne i32 %30, 2
  br i1 %31, label %32, label %36

32:                                               ; preds = %23
  %33 = load i32*, i32** %5, align 8
  %34 = call i32 @PQgetvalue(i32* %33, i32 0, i32 1)
  %35 = call i32 (i8*, i32, ...) @pg_log_error(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0), i32 %34)
  store i32 0, i32* %4, align 4
  br label %42

36:                                               ; preds = %23
  %37 = load i32, i32* %8, align 4
  %38 = shl i32 %37, 32
  %39 = load i32, i32* %9, align 4
  %40 = or i32 %38, %39
  %41 = load i32*, i32** %6, align 8
  store i32 %40, i32* %41, align 4
  store i32 1, i32* %4, align 4
  br label %42

42:                                               ; preds = %36, %32, %17
  %43 = load i32, i32* %4, align 4
  ret i32 %43
}

declare dso_local i32 @PQnfields(i32*) #1

declare dso_local i32 @PQntuples(i32*) #1

declare dso_local i32 @pg_log_error(i8*, i32, ...) #1

declare dso_local i32 @atoi(i32) #1

declare dso_local i32 @PQgetvalue(i32*, i32, i32) #1

declare dso_local i32 @sscanf(i32, i8*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
