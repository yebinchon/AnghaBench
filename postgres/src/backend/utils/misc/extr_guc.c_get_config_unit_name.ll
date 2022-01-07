; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/misc/extr_guc.c_get_config_unit_name.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/misc/extr_guc.c_get_config_unit_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GUC_UNIT_MEMORY = common dso_local global i32 0, align 4
@GUC_UNIT_TIME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"B\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"kB\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"MB\00", align 1
@get_config_unit_name.bbuf = internal global [8 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"%dkB\00", align 1
@BLCKSZ = common dso_local global i32 0, align 4
@get_config_unit_name.xbuf = internal global [8 x i8] zeroinitializer, align 1
@XLOG_BLCKSZ = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [3 x i8] c"ms\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"min\00", align 1
@ERROR = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [33 x i8] c"unrecognized GUC units value: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32)* @get_config_unit_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @get_config_unit_name(i32 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = load i32, i32* @GUC_UNIT_MEMORY, align 4
  %6 = load i32, i32* @GUC_UNIT_TIME, align 4
  %7 = or i32 %5, %6
  %8 = and i32 %4, %7
  switch i32 %8, label %34 [
    i32 0, label %9
    i32 134, label %10
    i32 133, label %11
    i32 132, label %12
    i32 135, label %13
    i32 128, label %22
    i32 130, label %31
    i32 129, label %32
    i32 131, label %33
  ]

9:                                                ; preds = %1
  store i8* null, i8** %2, align 8
  br label %42

10:                                               ; preds = %1
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8** %2, align 8
  br label %42

11:                                               ; preds = %1
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8** %2, align 8
  br label %42

12:                                               ; preds = %1
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8** %2, align 8
  br label %42

13:                                               ; preds = %1
  %14 = load i8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @get_config_unit_name.bbuf, i64 0, i64 0), align 1
  %15 = sext i8 %14 to i32
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %13
  %18 = load i32, i32* @BLCKSZ, align 4
  %19 = sdiv i32 %18, 1024
  %20 = call i32 @snprintf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @get_config_unit_name.bbuf, i64 0, i64 0), i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 %19)
  br label %21

21:                                               ; preds = %17, %13
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @get_config_unit_name.bbuf, i64 0, i64 0), i8** %2, align 8
  br label %42

22:                                               ; preds = %1
  %23 = load i8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @get_config_unit_name.xbuf, i64 0, i64 0), align 1
  %24 = sext i8 %23 to i32
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %22
  %27 = load i32, i32* @XLOG_BLCKSZ, align 4
  %28 = sdiv i32 %27, 1024
  %29 = call i32 @snprintf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @get_config_unit_name.xbuf, i64 0, i64 0), i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 %28)
  br label %30

30:                                               ; preds = %26, %22
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @get_config_unit_name.xbuf, i64 0, i64 0), i8** %2, align 8
  br label %42

31:                                               ; preds = %1
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8** %2, align 8
  br label %42

32:                                               ; preds = %1
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i8** %2, align 8
  br label %42

33:                                               ; preds = %1
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i8** %2, align 8
  br label %42

34:                                               ; preds = %1
  %35 = load i32, i32* @ERROR, align 4
  %36 = load i32, i32* %3, align 4
  %37 = load i32, i32* @GUC_UNIT_MEMORY, align 4
  %38 = load i32, i32* @GUC_UNIT_TIME, align 4
  %39 = or i32 %37, %38
  %40 = and i32 %36, %39
  %41 = call i32 @elog(i32 %35, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0), i32 %40)
  store i8* null, i8** %2, align 8
  br label %42

42:                                               ; preds = %34, %33, %32, %31, %30, %21, %12, %11, %10, %9
  %43 = load i8*, i8** %2, align 8
  ret i8* %43
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @elog(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
