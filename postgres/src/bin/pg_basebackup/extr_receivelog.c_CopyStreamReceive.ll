; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/pg_basebackup/extr_receivelog.c_CopyStreamReceive.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/pg_basebackup/extr_receivelog.c_CopyStreamReceive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [43 x i8] c"could not receive data from WAL stream: %s\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"could not read COPY data: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64, i32, i8**)* @CopyStreamReceive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @CopyStreamReceive(i32* %0, i64 %1, i32 %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8**, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i8** %3, i8*** %9, align 8
  store i8* null, i8** %10, align 8
  %13 = load i8**, i8*** %9, align 8
  %14 = load i8*, i8** %13, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %16, label %20

16:                                               ; preds = %4
  %17 = load i8**, i8*** %9, align 8
  %18 = load i8*, i8** %17, align 8
  %19 = call i32 @PQfreemem(i8* %18)
  br label %20

20:                                               ; preds = %16, %4
  %21 = load i8**, i8*** %9, align 8
  store i8* null, i8** %21, align 8
  %22 = load i32*, i32** %6, align 8
  %23 = call i32 @PQgetCopyData(i32* %22, i8** %10, i32 1)
  store i32 %23, i32* %11, align 4
  %24 = load i32, i32* %11, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %50

26:                                               ; preds = %20
  %27 = load i32*, i32** %6, align 8
  %28 = load i64, i64* %7, align 8
  %29 = load i32, i32* %8, align 4
  %30 = call i32 @CopyStreamPoll(i32* %27, i64 %28, i32 %29)
  store i32 %30, i32* %12, align 4
  %31 = load i32, i32* %12, align 4
  %32 = icmp sle i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %26
  %34 = load i32, i32* %12, align 4
  store i32 %34, i32* %5, align 4
  br label %65

35:                                               ; preds = %26
  %36 = load i32*, i32** %6, align 8
  %37 = call i64 @PQconsumeInput(i32* %36)
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %35
  %40 = load i32*, i32** %6, align 8
  %41 = call i32 @PQerrorMessage(i32* %40)
  %42 = call i32 @pg_log_error(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %41)
  store i32 -1, i32* %5, align 4
  br label %65

43:                                               ; preds = %35
  %44 = load i32*, i32** %6, align 8
  %45 = call i32 @PQgetCopyData(i32* %44, i8** %10, i32 1)
  store i32 %45, i32* %11, align 4
  %46 = load i32, i32* %11, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %43
  store i32 0, i32* %5, align 4
  br label %65

49:                                               ; preds = %43
  br label %50

50:                                               ; preds = %49, %20
  %51 = load i32, i32* %11, align 4
  %52 = icmp eq i32 %51, -1
  br i1 %52, label %53, label %54

53:                                               ; preds = %50
  store i32 -2, i32* %5, align 4
  br label %65

54:                                               ; preds = %50
  %55 = load i32, i32* %11, align 4
  %56 = icmp eq i32 %55, -2
  br i1 %56, label %57, label %61

57:                                               ; preds = %54
  %58 = load i32*, i32** %6, align 8
  %59 = call i32 @PQerrorMessage(i32* %58)
  %60 = call i32 @pg_log_error(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %59)
  store i32 -1, i32* %5, align 4
  br label %65

61:                                               ; preds = %54
  %62 = load i8*, i8** %10, align 8
  %63 = load i8**, i8*** %9, align 8
  store i8* %62, i8** %63, align 8
  %64 = load i32, i32* %11, align 4
  store i32 %64, i32* %5, align 4
  br label %65

65:                                               ; preds = %61, %57, %53, %48, %39, %33
  %66 = load i32, i32* %5, align 4
  ret i32 %66
}

declare dso_local i32 @PQfreemem(i8*) #1

declare dso_local i32 @PQgetCopyData(i32*, i8**, i32) #1

declare dso_local i32 @CopyStreamPoll(i32*, i64, i32) #1

declare dso_local i64 @PQconsumeInput(i32*) #1

declare dso_local i32 @pg_log_error(i8*, i32) #1

declare dso_local i32 @PQerrorMessage(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
