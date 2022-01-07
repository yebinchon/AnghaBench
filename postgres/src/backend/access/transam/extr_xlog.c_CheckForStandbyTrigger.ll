; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_xlog.c_CheckForStandbyTrigger.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_xlog.c_CheckForStandbyTrigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }

@CheckForStandbyTrigger.triggered = internal global i32 0, align 4
@PROMOTE_SIGNAL_FILE = common dso_local global i32* null, align 8
@FALLBACK_PROMOTE_SIGNAL_FILE = common dso_local global i32* null, align 8
@fast_promote = common dso_local global i32 0, align 4
@LOG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"received promote request\00", align 1
@PromoteTriggerFile = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"promote trigger file found: %s\00", align 1
@errno = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [45 x i8] c"could not stat promote trigger file \22%s\22: %m\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @CheckForStandbyTrigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @CheckForStandbyTrigger() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.stat, align 4
  %3 = load i32, i32* @CheckForStandbyTrigger.triggered, align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %0
  store i32 1, i32* %1, align 4
  br label %62

6:                                                ; preds = %0
  %7 = call i64 (...) @IsPromoteTriggered()
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %31

9:                                                ; preds = %6
  %10 = load i32*, i32** @PROMOTE_SIGNAL_FILE, align 8
  %11 = call i64 @stat(i32* %10, %struct.stat* %2)
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %9
  %14 = load i32*, i32** @PROMOTE_SIGNAL_FILE, align 8
  %15 = call i32 @unlink(i32* %14)
  %16 = load i32*, i32** @FALLBACK_PROMOTE_SIGNAL_FILE, align 8
  %17 = call i32 @unlink(i32* %16)
  store i32 1, i32* @fast_promote, align 4
  br label %26

18:                                               ; preds = %9
  %19 = load i32*, i32** @FALLBACK_PROMOTE_SIGNAL_FILE, align 8
  %20 = call i64 @stat(i32* %19, %struct.stat* %2)
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %18
  %23 = load i32*, i32** @FALLBACK_PROMOTE_SIGNAL_FILE, align 8
  %24 = call i32 @unlink(i32* %23)
  store i32 0, i32* @fast_promote, align 4
  br label %25

25:                                               ; preds = %22, %18
  br label %26

26:                                               ; preds = %25, %13
  %27 = load i32, i32* @LOG, align 4
  %28 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %29 = call i32 @ereport(i32 %27, i32 %28)
  %30 = call i32 (...) @ResetPromoteTriggered()
  store i32 1, i32* @CheckForStandbyTrigger.triggered, align 4
  store i32 1, i32* %1, align 4
  br label %62

31:                                               ; preds = %6
  %32 = load i32*, i32** @PromoteTriggerFile, align 8
  %33 = icmp eq i32* %32, null
  br i1 %33, label %38, label %34

34:                                               ; preds = %31
  %35 = load i32*, i32** @PromoteTriggerFile, align 8
  %36 = call i64 @strcmp(i32* %35, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %34, %31
  store i32 0, i32* %1, align 4
  br label %62

39:                                               ; preds = %34
  %40 = load i32*, i32** @PromoteTriggerFile, align 8
  %41 = call i64 @stat(i32* %40, %struct.stat* %2)
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %39
  %44 = load i32, i32* @LOG, align 4
  %45 = load i32*, i32** @PromoteTriggerFile, align 8
  %46 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32* %45)
  %47 = call i32 @ereport(i32 %44, i32 %46)
  %48 = load i32*, i32** @PromoteTriggerFile, align 8
  %49 = call i32 @unlink(i32* %48)
  store i32 1, i32* @CheckForStandbyTrigger.triggered, align 4
  store i32 1, i32* @fast_promote, align 4
  store i32 1, i32* %1, align 4
  br label %62

50:                                               ; preds = %39
  %51 = load i64, i64* @errno, align 8
  %52 = load i64, i64* @ENOENT, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %54, label %60

54:                                               ; preds = %50
  %55 = load i32, i32* @ERROR, align 4
  %56 = call i32 (...) @errcode_for_file_access()
  %57 = load i32*, i32** @PromoteTriggerFile, align 8
  %58 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i32* %57)
  %59 = call i32 @ereport(i32 %55, i32 %58)
  br label %60

60:                                               ; preds = %54, %50
  br label %61

61:                                               ; preds = %60
  store i32 0, i32* %1, align 4
  br label %62

62:                                               ; preds = %61, %43, %38, %26, %5
  %63 = load i32, i32* %1, align 4
  ret i32 %63
}

declare dso_local i64 @IsPromoteTriggered(...) #1

declare dso_local i64 @stat(i32*, %struct.stat*) #1

declare dso_local i32 @unlink(i32*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errmsg(i8*, ...) #1

declare dso_local i32 @ResetPromoteTriggered(...) #1

declare dso_local i64 @strcmp(i32*, i8*) #1

declare dso_local i32 @errcode_for_file_access(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
