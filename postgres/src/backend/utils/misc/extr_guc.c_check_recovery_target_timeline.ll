; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/misc/extr_guc.c_check_recovery_target_timeline.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/misc/extr_guc.c_check_recovery_target_timeline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"current\00", align 1
@RECOVERY_TARGET_TIMELINE_CONTROLFILE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"latest\00", align 1
@RECOVERY_TARGET_TIMELINE_LATEST = common dso_local global i32 0, align 4
@RECOVERY_TARGET_TIMELINE_NUMERIC = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i64 0, align 8
@ERANGE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [48 x i8] c"recovery_target_timeline is not a valid number.\00", align 1
@ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, i8**, i32)* @check_recovery_target_timeline to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_recovery_target_timeline(i8** %0, i8** %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store i8** %0, i8*** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i8**, i8*** %5, align 8
  %11 = load i8*, i8** %10, align 8
  %12 = call i64 @strcmp(i8* %11, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %3
  %15 = load i32, i32* @RECOVERY_TARGET_TIMELINE_CONTROLFILE, align 4
  store i32 %15, i32* %8, align 4
  br label %39

16:                                               ; preds = %3
  %17 = load i8**, i8*** %5, align 8
  %18 = load i8*, i8** %17, align 8
  %19 = call i64 @strcmp(i8* %18, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %16
  %22 = load i32, i32* @RECOVERY_TARGET_TIMELINE_LATEST, align 4
  store i32 %22, i32* %8, align 4
  br label %38

23:                                               ; preds = %16
  %24 = load i32, i32* @RECOVERY_TARGET_TIMELINE_NUMERIC, align 4
  store i32 %24, i32* %8, align 4
  store i64 0, i64* @errno, align 8
  %25 = load i8**, i8*** %5, align 8
  %26 = load i8*, i8** %25, align 8
  %27 = call i32 @strtoul(i8* %26, i32* null, i32 0)
  %28 = load i64, i64* @errno, align 8
  %29 = load i64, i64* @EINVAL, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %35, label %31

31:                                               ; preds = %23
  %32 = load i64, i64* @errno, align 8
  %33 = load i64, i64* @ERANGE, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %31, %23
  %36 = call i32 @GUC_check_errdetail(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %48

37:                                               ; preds = %31
  br label %38

38:                                               ; preds = %37, %21
  br label %39

39:                                               ; preds = %38, %14
  %40 = load i32, i32* @ERROR, align 4
  %41 = call i64 @guc_malloc(i32 %40, i32 4)
  %42 = inttoptr i64 %41 to i32*
  store i32* %42, i32** %9, align 8
  %43 = load i32, i32* %8, align 4
  %44 = load i32*, i32** %9, align 8
  store i32 %43, i32* %44, align 4
  %45 = load i32*, i32** %9, align 8
  %46 = bitcast i32* %45 to i8*
  %47 = load i8**, i8*** %6, align 8
  store i8* %46, i8** %47, align 8
  store i32 1, i32* %4, align 4
  br label %48

48:                                               ; preds = %39, %35
  %49 = load i32, i32* %4, align 4
  ret i32 %49
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @strtoul(i8*, i32*, i32) #1

declare dso_local i32 @GUC_check_errdetail(i8*) #1

declare dso_local i64 @guc_malloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
