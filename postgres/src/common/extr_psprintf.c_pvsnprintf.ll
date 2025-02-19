; ModuleID = '/home/carl/AnghaBench/postgres/src/common/extr_psprintf.c_pvsnprintf.c'
source_filename = "/home/carl/AnghaBench/postgres/src/common/extr_psprintf.c_pvsnprintf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"vsnprintf failed: %m with format string \22%s\22\00", align 1
@MaxAllocSize = common dso_local global i32 0, align 4
@ERRCODE_PROGRAM_LIMIT_EXCEEDED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"out of memory\00", align 1
@EXIT_FAILURE = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @pvsnprintf(i8* %0, i64 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load i8*, i8** %6, align 8
  %12 = load i64, i64* %7, align 8
  %13 = load i8*, i8** %8, align 8
  %14 = load i32, i32* %9, align 4
  %15 = call i32 @vsnprintf(i8* %11, i64 %12, i8* %13, i32 %14)
  store i32 %15, i32* %10, align 4
  %16 = load i32, i32* %10, align 4
  %17 = icmp slt i32 %16, 0
  %18 = zext i1 %17 to i32
  %19 = call i64 @unlikely(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %4
  %22 = load i32, i32* @ERROR, align 4
  %23 = load i8*, i8** %8, align 8
  %24 = call i32 @elog(i32 %22, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i8* %23)
  br label %25

25:                                               ; preds = %21, %4
  %26 = load i32, i32* %10, align 4
  %27 = sext i32 %26 to i64
  %28 = load i64, i64* %7, align 8
  %29 = icmp ult i64 %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %25
  %31 = load i32, i32* %10, align 4
  %32 = sext i32 %31 to i64
  store i64 %32, i64* %5, align 8
  br label %53

33:                                               ; preds = %25
  %34 = load i32, i32* %10, align 4
  %35 = sext i32 %34 to i64
  %36 = load i32, i32* @MaxAllocSize, align 4
  %37 = sub nsw i32 %36, 1
  %38 = sext i32 %37 to i64
  %39 = icmp ugt i64 %35, %38
  %40 = zext i1 %39 to i32
  %41 = call i64 @unlikely(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %33
  %44 = load i32, i32* @ERROR, align 4
  %45 = load i32, i32* @ERRCODE_PROGRAM_LIMIT_EXCEEDED, align 4
  %46 = call i32 @errcode(i32 %45)
  %47 = call i32 @errmsg(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %48 = call i32 @ereport(i32 %44, i32 %47)
  br label %49

49:                                               ; preds = %43, %33
  %50 = load i32, i32* %10, align 4
  %51 = add nsw i32 %50, 1
  %52 = sext i32 %51 to i64
  store i64 %52, i64* %5, align 8
  br label %53

53:                                               ; preds = %49, %30
  %54 = load i64, i64* %5, align 8
  ret i64 %54
}

declare dso_local i32 @vsnprintf(i8*, i64, i8*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @elog(i32, i8*, i8*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
