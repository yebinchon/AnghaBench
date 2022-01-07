; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/error/extr_elog.c_DebugFileOpen.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/error/extr_elog.c_DebugFileOpen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@OutputFileName = common dso_local global i64* null, align 8
@O_CREAT = common dso_local global i32 0, align 4
@O_APPEND = common dso_local global i32 0, align 4
@O_WRONLY = common dso_local global i32 0, align 4
@FATAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"could not open file \22%s\22: %m\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"could not reopen file \22%s\22 as stderr: %m\00", align 1
@IsUnderPostmaster = common dso_local global i64 0, align 8
@stdout = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [41 x i8] c"could not reopen file \22%s\22 as stdout: %m\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @DebugFileOpen() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i64*, i64** @OutputFileName, align 8
  %4 = getelementptr inbounds i64, i64* %3, i64 0
  %5 = load i64, i64* %4, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %56

7:                                                ; preds = %0
  %8 = load i64*, i64** @OutputFileName, align 8
  %9 = load i32, i32* @O_CREAT, align 4
  %10 = load i32, i32* @O_APPEND, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* @O_WRONLY, align 4
  %13 = or i32 %11, %12
  %14 = call i32 @open(i64* %8, i32 %13, i32 438)
  store i32 %14, i32* %1, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %7
  %17 = load i32, i32* @FATAL, align 4
  %18 = call i32 (...) @errcode_for_file_access()
  %19 = load i64*, i64** @OutputFileName, align 8
  %20 = call i32 @errmsg(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i64* %19)
  %21 = call i32 @ereport(i32 %17, i32 %20)
  br label %22

22:                                               ; preds = %16, %7
  %23 = load i32, i32* %1, align 4
  %24 = call i32 @isatty(i32 %23)
  store i32 %24, i32* %2, align 4
  %25 = load i32, i32* %1, align 4
  %26 = call i32 @close(i32 %25)
  %27 = load i64*, i64** @OutputFileName, align 8
  %28 = load i32, i32* @stderr, align 4
  %29 = call i32 @freopen(i64* %27, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %37, label %31

31:                                               ; preds = %22
  %32 = load i32, i32* @FATAL, align 4
  %33 = call i32 (...) @errcode_for_file_access()
  %34 = load i64*, i64** @OutputFileName, align 8
  %35 = call i32 @errmsg(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i64* %34)
  %36 = call i32 @ereport(i32 %32, i32 %35)
  br label %37

37:                                               ; preds = %31, %22
  %38 = load i32, i32* %2, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %55

40:                                               ; preds = %37
  %41 = load i64, i64* @IsUnderPostmaster, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %55

43:                                               ; preds = %40
  %44 = load i64*, i64** @OutputFileName, align 8
  %45 = load i32, i32* @stdout, align 4
  %46 = call i32 @freopen(i64* %44, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %54, label %48

48:                                               ; preds = %43
  %49 = load i32, i32* @FATAL, align 4
  %50 = call i32 (...) @errcode_for_file_access()
  %51 = load i64*, i64** @OutputFileName, align 8
  %52 = call i32 @errmsg(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i64* %51)
  %53 = call i32 @ereport(i32 %49, i32 %52)
  br label %54

54:                                               ; preds = %48, %43
  br label %55

55:                                               ; preds = %54, %40, %37
  br label %56

56:                                               ; preds = %55, %0
  ret void
}

declare dso_local i32 @open(i64*, i32, i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode_for_file_access(...) #1

declare dso_local i32 @errmsg(i8*, i64*) #1

declare dso_local i32 @isatty(i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @freopen(i64*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
