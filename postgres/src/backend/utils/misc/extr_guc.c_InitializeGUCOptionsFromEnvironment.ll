; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/misc/extr_guc.c_InitializeGUCOptionsFromEnvironment.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/misc/extr_guc.c_InitializeGUCOptionsFromEnvironment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"PGPORT\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"port\00", align 1
@PGC_POSTMASTER = common dso_local global i32 0, align 4
@PGC_S_ENV_VAR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"PGDATESTYLE\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"datestyle\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"PGCLIENTENCODING\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"client_encoding\00", align 1
@STACK_DEPTH_SLOP = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [4 x i8] c"%ld\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"max_stack_depth\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @InitializeGUCOptionsFromEnvironment to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @InitializeGUCOptionsFromEnvironment() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca [16 x i8], align 16
  %5 = call i8* @getenv(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i8* %5, i8** %1, align 8
  %6 = load i8*, i8** %1, align 8
  %7 = icmp ne i8* %6, null
  br i1 %7, label %8, label %13

8:                                                ; preds = %0
  %9 = load i8*, i8** %1, align 8
  %10 = load i32, i32* @PGC_POSTMASTER, align 4
  %11 = load i32, i32* @PGC_S_ENV_VAR, align 4
  %12 = call i32 @SetConfigOption(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %9, i32 %10, i32 %11)
  br label %13

13:                                               ; preds = %8, %0
  %14 = call i8* @getenv(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  store i8* %14, i8** %1, align 8
  %15 = load i8*, i8** %1, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %22

17:                                               ; preds = %13
  %18 = load i8*, i8** %1, align 8
  %19 = load i32, i32* @PGC_POSTMASTER, align 4
  %20 = load i32, i32* @PGC_S_ENV_VAR, align 4
  %21 = call i32 @SetConfigOption(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8* %18, i32 %19, i32 %20)
  br label %22

22:                                               ; preds = %17, %13
  %23 = call i8* @getenv(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  store i8* %23, i8** %1, align 8
  %24 = load i8*, i8** %1, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %31

26:                                               ; preds = %22
  %27 = load i8*, i8** %1, align 8
  %28 = load i32, i32* @PGC_POSTMASTER, align 4
  %29 = load i32, i32* @PGC_S_ENV_VAR, align 4
  %30 = call i32 @SetConfigOption(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i8* %27, i32 %28, i32 %29)
  br label %31

31:                                               ; preds = %26, %22
  %32 = call i64 (...) @get_stack_depth_rlimit()
  store i64 %32, i64* %2, align 8
  %33 = load i64, i64* %2, align 8
  %34 = icmp sgt i64 %33, 0
  br i1 %34, label %35, label %53

35:                                               ; preds = %31
  %36 = load i64, i64* %2, align 8
  %37 = load i64, i64* @STACK_DEPTH_SLOP, align 8
  %38 = sub nsw i64 %36, %37
  %39 = sdiv i64 %38, 1024
  store i64 %39, i64* %3, align 8
  %40 = load i64, i64* %3, align 8
  %41 = icmp sgt i64 %40, 100
  br i1 %41, label %42, label %52

42:                                               ; preds = %35
  %43 = load i64, i64* %3, align 8
  %44 = call i64 @Min(i64 %43, i32 2048)
  store i64 %44, i64* %3, align 8
  %45 = getelementptr inbounds [16 x i8], [16 x i8]* %4, i64 0, i64 0
  %46 = load i64, i64* %3, align 8
  %47 = call i32 @sprintf(i8* %45, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i64 %46)
  %48 = getelementptr inbounds [16 x i8], [16 x i8]* %4, i64 0, i64 0
  %49 = load i32, i32* @PGC_POSTMASTER, align 4
  %50 = load i32, i32* @PGC_S_ENV_VAR, align 4
  %51 = call i32 @SetConfigOption(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0), i8* %48, i32 %49, i32 %50)
  br label %52

52:                                               ; preds = %42, %35
  br label %53

53:                                               ; preds = %52, %31
  ret void
}

declare dso_local i8* @getenv(i8*) #1

declare dso_local i32 @SetConfigOption(i8*, i8*, i32, i32) #1

declare dso_local i64 @get_stack_depth_rlimit(...) #1

declare dso_local i64 @Min(i64, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
