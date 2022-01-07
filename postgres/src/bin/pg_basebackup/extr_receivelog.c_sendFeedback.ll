; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/pg_basebackup/extr_receivelog.c_sendFeedback.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/pg_basebackup/extr_receivelog.c_sendFeedback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@reportFlushPosition = common dso_local global i64 0, align 8
@lastFlushPosition = common dso_local global i32 0, align 4
@InvalidXLogRecPtr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"could not send feedback packet: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32, i32)* @sendFeedback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sendFeedback(i32* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [34 x i8], align 16
  %11 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %11, align 4
  %12 = load i32, i32* %11, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [34 x i8], [34 x i8]* %10, i64 0, i64 %13
  store i8 114, i8* %14, align 1
  %15 = load i32, i32* %11, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* %11, align 4
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* %11, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [34 x i8], [34 x i8]* %10, i64 0, i64 %19
  %21 = call i32 @fe_sendint64(i32 %17, i8* %20)
  %22 = load i32, i32* %11, align 4
  %23 = add nsw i32 %22, 8
  store i32 %23, i32* %11, align 4
  %24 = load i64, i64* @reportFlushPosition, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %4
  %27 = load i32, i32* @lastFlushPosition, align 4
  %28 = load i32, i32* %11, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [34 x i8], [34 x i8]* %10, i64 0, i64 %29
  %31 = call i32 @fe_sendint64(i32 %27, i8* %30)
  br label %38

32:                                               ; preds = %4
  %33 = load i32, i32* @InvalidXLogRecPtr, align 4
  %34 = load i32, i32* %11, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [34 x i8], [34 x i8]* %10, i64 0, i64 %35
  %37 = call i32 @fe_sendint64(i32 %33, i8* %36)
  br label %38

38:                                               ; preds = %32, %26
  %39 = load i32, i32* %11, align 4
  %40 = add nsw i32 %39, 8
  store i32 %40, i32* %11, align 4
  %41 = load i32, i32* @InvalidXLogRecPtr, align 4
  %42 = load i32, i32* %11, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [34 x i8], [34 x i8]* %10, i64 0, i64 %43
  %45 = call i32 @fe_sendint64(i32 %41, i8* %44)
  %46 = load i32, i32* %11, align 4
  %47 = add nsw i32 %46, 8
  store i32 %47, i32* %11, align 4
  %48 = load i32, i32* %8, align 4
  %49 = load i32, i32* %11, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds [34 x i8], [34 x i8]* %10, i64 0, i64 %50
  %52 = call i32 @fe_sendint64(i32 %48, i8* %51)
  %53 = load i32, i32* %11, align 4
  %54 = add nsw i32 %53, 8
  store i32 %54, i32* %11, align 4
  %55 = load i32, i32* %9, align 4
  %56 = icmp ne i32 %55, 0
  %57 = zext i1 %56 to i64
  %58 = select i1 %56, i32 1, i32 0
  %59 = trunc i32 %58 to i8
  %60 = load i32, i32* %11, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds [34 x i8], [34 x i8]* %10, i64 0, i64 %61
  store i8 %59, i8* %62, align 1
  %63 = load i32, i32* %11, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %11, align 4
  %65 = load i32*, i32** %6, align 8
  %66 = getelementptr inbounds [34 x i8], [34 x i8]* %10, i64 0, i64 0
  %67 = load i32, i32* %11, align 4
  %68 = call i64 @PQputCopyData(i32* %65, i8* %66, i32 %67)
  %69 = icmp sle i64 %68, 0
  br i1 %69, label %74, label %70

70:                                               ; preds = %38
  %71 = load i32*, i32** %6, align 8
  %72 = call i64 @PQflush(i32* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %70, %38
  %75 = load i32*, i32** %6, align 8
  %76 = call i32 @PQerrorMessage(i32* %75)
  %77 = call i32 @pg_log_error(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %76)
  store i32 0, i32* %5, align 4
  br label %79

78:                                               ; preds = %70
  store i32 1, i32* %5, align 4
  br label %79

79:                                               ; preds = %78, %74
  %80 = load i32, i32* %5, align 4
  ret i32 %80
}

declare dso_local i32 @fe_sendint64(i32, i8*) #1

declare dso_local i64 @PQputCopyData(i32*, i8*, i32) #1

declare dso_local i64 @PQflush(i32*) #1

declare dso_local i32 @pg_log_error(i8*, i32) #1

declare dso_local i32 @PQerrorMessage(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
