; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/postmaster/extr_postmaster.c_StartChildProcess.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/postmaster/extr_postmaster.c_StartChildProcess.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"postgres\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"-x%d\00", align 1
@TopMemoryContext = common dso_local global i32 0, align 4
@PostmasterContext = common dso_local global i32* null, align 8
@errno = common dso_local global i32 0, align 4
@LOG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"could not fork startup process: %m\00", align 1
@.str.3 = private unnamed_addr constant [45 x i8] c"could not fork background writer process: %m\00", align 1
@.str.4 = private unnamed_addr constant [40 x i8] c"could not fork checkpointer process: %m\00", align 1
@.str.5 = private unnamed_addr constant [38 x i8] c"could not fork WAL writer process: %m\00", align 1
@.str.6 = private unnamed_addr constant [40 x i8] c"could not fork WAL receiver process: %m\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"could not fork process: %m\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32)* @StartChildProcess to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @StartChildProcess(i32 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca [10 x i8*], align 16
  %6 = alloca i32, align 4
  %7 = alloca [32 x i8], align 16
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 0, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = add nsw i32 %9, 1
  store i32 %10, i32* %6, align 4
  %11 = sext i32 %9 to i64
  %12 = getelementptr inbounds [10 x i8*], [10 x i8*]* %5, i64 0, i64 %11
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8** %12, align 8
  %13 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i64 0, i64 0
  %14 = load i32, i32* %3, align 4
  %15 = call i32 @snprintf(i8* %13, i32 32, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %14)
  %16 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i64 0, i64 0
  %17 = load i32, i32* %6, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %6, align 4
  %19 = sext i32 %17 to i64
  %20 = getelementptr inbounds [10 x i8*], [10 x i8*]* %5, i64 0, i64 %19
  store i8* %16, i8** %20, align 8
  %21 = load i32, i32* %6, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [10 x i8*], [10 x i8*]* %5, i64 0, i64 %22
  store i8* null, i8** %23, align 8
  %24 = load i32, i32* %6, align 4
  %25 = getelementptr inbounds [10 x i8*], [10 x i8*]* %5, i64 0, i64 0
  %26 = call i32 @lengthof(i8** %25)
  %27 = icmp slt i32 %24, %26
  %28 = zext i1 %27 to i32
  %29 = call i32 @Assert(i32 %28)
  %30 = call i64 (...) @fork_process()
  store i64 %30, i64* %4, align 8
  %31 = load i64, i64* %4, align 8
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %44

33:                                               ; preds = %1
  %34 = call i32 (...) @InitPostmasterChild()
  %35 = call i32 @ClosePostmasterPorts(i32 0)
  %36 = load i32, i32* @TopMemoryContext, align 4
  %37 = call i32 @MemoryContextSwitchTo(i32 %36)
  %38 = load i32*, i32** @PostmasterContext, align 8
  %39 = call i32 @MemoryContextDelete(i32* %38)
  store i32* null, i32** @PostmasterContext, align 8
  %40 = load i32, i32* %6, align 4
  %41 = getelementptr inbounds [10 x i8*], [10 x i8*]* %5, i64 0, i64 0
  %42 = call i32 @AuxiliaryProcessMain(i32 %40, i8** %41)
  %43 = call i32 @ExitPostmaster(i32 0)
  br label %44

44:                                               ; preds = %33, %1
  %45 = load i64, i64* %4, align 8
  %46 = icmp slt i64 %45, 0
  br i1 %46, label %47, label %81

47:                                               ; preds = %44
  %48 = load i32, i32* @errno, align 4
  store i32 %48, i32* %8, align 4
  %49 = load i32, i32* %8, align 4
  store i32 %49, i32* @errno, align 4
  %50 = load i32, i32* %3, align 4
  switch i32 %50, label %71 [
    i32 130, label %51
    i32 132, label %55
    i32 131, label %59
    i32 128, label %63
    i32 129, label %67
  ]

51:                                               ; preds = %47
  %52 = load i32, i32* @LOG, align 4
  %53 = call i32 @errmsg(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  %54 = call i32 @ereport(i32 %52, i32 %53)
  br label %75

55:                                               ; preds = %47
  %56 = load i32, i32* @LOG, align 4
  %57 = call i32 @errmsg(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0))
  %58 = call i32 @ereport(i32 %56, i32 %57)
  br label %75

59:                                               ; preds = %47
  %60 = load i32, i32* @LOG, align 4
  %61 = call i32 @errmsg(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0))
  %62 = call i32 @ereport(i32 %60, i32 %61)
  br label %75

63:                                               ; preds = %47
  %64 = load i32, i32* @LOG, align 4
  %65 = call i32 @errmsg(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0))
  %66 = call i32 @ereport(i32 %64, i32 %65)
  br label %75

67:                                               ; preds = %47
  %68 = load i32, i32* @LOG, align 4
  %69 = call i32 @errmsg(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.6, i64 0, i64 0))
  %70 = call i32 @ereport(i32 %68, i32 %69)
  br label %75

71:                                               ; preds = %47
  %72 = load i32, i32* @LOG, align 4
  %73 = call i32 @errmsg(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0))
  %74 = call i32 @ereport(i32 %72, i32 %73)
  br label %75

75:                                               ; preds = %71, %67, %63, %59, %55, %51
  %76 = load i32, i32* %3, align 4
  %77 = icmp eq i32 %76, 130
  br i1 %77, label %78, label %80

78:                                               ; preds = %75
  %79 = call i32 @ExitPostmaster(i32 1)
  br label %80

80:                                               ; preds = %78, %75
  store i64 0, i64* %2, align 8
  br label %83

81:                                               ; preds = %44
  %82 = load i64, i64* %4, align 8
  store i64 %82, i64* %2, align 8
  br label %83

83:                                               ; preds = %81, %80
  %84 = load i64, i64* %2, align 8
  ret i64 %84
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @lengthof(i8**) #1

declare dso_local i64 @fork_process(...) #1

declare dso_local i32 @InitPostmasterChild(...) #1

declare dso_local i32 @ClosePostmasterPorts(i32) #1

declare dso_local i32 @MemoryContextSwitchTo(i32) #1

declare dso_local i32 @MemoryContextDelete(i32*) #1

declare dso_local i32 @AuxiliaryProcessMain(i32, i8**) #1

declare dso_local i32 @ExitPostmaster(i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errmsg(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
