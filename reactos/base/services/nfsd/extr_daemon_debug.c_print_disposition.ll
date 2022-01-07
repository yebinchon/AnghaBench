; ModuleID = '/home/carl/AnghaBench/reactos/base/services/nfsd/extr_daemon_debug.c_print_disposition.c'
source_filename = "/home/carl/AnghaBench/reactos/base/services/nfsd/extr_daemon_debug.c_print_disposition.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@g_debug_level = common dso_local global i32 0, align 4
@dlog_file = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"userland disposition = \00", align 1
@FILE_SUPERSEDE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [16 x i8] c"FILE_SUPERSEDE\0A\00", align 1
@FILE_CREATE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [13 x i8] c"FILE_CREATE\0A\00", align 1
@FILE_OPEN = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [11 x i8] c"FILE_OPEN\0A\00", align 1
@FILE_OPEN_IF = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [14 x i8] c"FILE_OPEN_IF\0A\00", align 1
@FILE_OVERWRITE = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [16 x i8] c"FILE_OVERWRITE\0A\00", align 1
@FILE_OVERWRITE_IF = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [19 x i8] c"FILE_OVERWRITE_IF\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @print_disposition(i32 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i64 %1, i64* %4, align 8
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* @g_debug_level, align 4
  %7 = icmp sgt i32 %5, %6
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  br label %58

9:                                                ; preds = %2
  %10 = load i32, i32* @dlog_file, align 4
  %11 = call i32 @fprintf(i32 %10, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %12 = load i64, i64* %4, align 8
  %13 = load i64, i64* @FILE_SUPERSEDE, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %9
  %16 = load i32, i32* @dlog_file, align 4
  %17 = call i32 @fprintf(i32 %16, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  br label %58

18:                                               ; preds = %9
  %19 = load i64, i64* %4, align 8
  %20 = load i64, i64* @FILE_CREATE, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %18
  %23 = load i32, i32* @dlog_file, align 4
  %24 = call i32 @fprintf(i32 %23, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  br label %57

25:                                               ; preds = %18
  %26 = load i64, i64* %4, align 8
  %27 = load i64, i64* @FILE_OPEN, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %25
  %30 = load i32, i32* @dlog_file, align 4
  %31 = call i32 @fprintf(i32 %30, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  br label %56

32:                                               ; preds = %25
  %33 = load i64, i64* %4, align 8
  %34 = load i64, i64* @FILE_OPEN_IF, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %32
  %37 = load i32, i32* @dlog_file, align 4
  %38 = call i32 @fprintf(i32 %37, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  br label %55

39:                                               ; preds = %32
  %40 = load i64, i64* %4, align 8
  %41 = load i64, i64* @FILE_OVERWRITE, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %39
  %44 = load i32, i32* @dlog_file, align 4
  %45 = call i32 @fprintf(i32 %44, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0))
  br label %54

46:                                               ; preds = %39
  %47 = load i64, i64* %4, align 8
  %48 = load i64, i64* @FILE_OVERWRITE_IF, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %46
  %51 = load i32, i32* @dlog_file, align 4
  %52 = call i32 @fprintf(i32 %51, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0))
  br label %53

53:                                               ; preds = %50, %46
  br label %54

54:                                               ; preds = %53, %43
  br label %55

55:                                               ; preds = %54, %36
  br label %56

56:                                               ; preds = %55, %29
  br label %57

57:                                               ; preds = %56, %22
  br label %58

58:                                               ; preds = %8, %57, %15
  ret void
}

declare dso_local i32 @fprintf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
