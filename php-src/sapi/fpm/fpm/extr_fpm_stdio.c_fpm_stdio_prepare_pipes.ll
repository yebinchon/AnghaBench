; ModuleID = '/home/carl/AnghaBench/php-src/sapi/fpm/fpm/extr_fpm_stdio.c_fpm_stdio_prepare_pipes.c'
source_filename = "/home/carl/AnghaBench/php-src/sapi/fpm/fpm/extr_fpm_stdio.c_fpm_stdio_prepare_pipes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fpm_child_s = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }

@fd_stdout = common dso_local global i32* null, align 8
@ZLOG_SYSERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"failed to prepare the stdout pipe\00", align 1
@fd_stderr = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [34 x i8] c"failed to prepare the stderr pipe\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"failed to unblock pipes\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fpm_stdio_prepare_pipes(%struct.fpm_child_s* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fpm_child_s*, align 8
  store %struct.fpm_child_s* %0, %struct.fpm_child_s** %3, align 8
  %4 = load %struct.fpm_child_s*, %struct.fpm_child_s** %3, align 8
  %5 = getelementptr inbounds %struct.fpm_child_s, %struct.fpm_child_s* %4, i32 0, i32 0
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp eq i64 0, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %67

13:                                               ; preds = %1
  %14 = load i32*, i32** @fd_stdout, align 8
  %15 = call i64 @pipe(i32* %14)
  %16 = icmp sgt i64 0, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %13
  %18 = load i32, i32* @ZLOG_SYSERROR, align 4
  %19 = call i32 @zlog(i32 %18, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %67

20:                                               ; preds = %13
  %21 = load i32*, i32** @fd_stderr, align 8
  %22 = call i64 @pipe(i32* %21)
  %23 = icmp sgt i64 0, %22
  br i1 %23, label %24, label %35

24:                                               ; preds = %20
  %25 = load i32, i32* @ZLOG_SYSERROR, align 4
  %26 = call i32 @zlog(i32 %25, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %27 = load i32*, i32** @fd_stdout, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @close(i32 %29)
  %31 = load i32*, i32** @fd_stdout, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @close(i32 %33)
  store i32 -1, i32* %2, align 4
  br label %67

35:                                               ; preds = %20
  %36 = load i32*, i32** @fd_stdout, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 0
  %38 = load i32, i32* %37, align 4
  %39 = call i64 @fd_set_blocked(i32 %38, i32 0)
  %40 = icmp sgt i64 0, %39
  br i1 %40, label %47, label %41

41:                                               ; preds = %35
  %42 = load i32*, i32** @fd_stderr, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 0
  %44 = load i32, i32* %43, align 4
  %45 = call i64 @fd_set_blocked(i32 %44, i32 0)
  %46 = icmp sgt i64 0, %45
  br i1 %46, label %47, label %66

47:                                               ; preds = %41, %35
  %48 = load i32, i32* @ZLOG_SYSERROR, align 4
  %49 = call i32 @zlog(i32 %48, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %50 = load i32*, i32** @fd_stdout, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @close(i32 %52)
  %54 = load i32*, i32** @fd_stdout, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 1
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @close(i32 %56)
  %58 = load i32*, i32** @fd_stderr, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @close(i32 %60)
  %62 = load i32*, i32** @fd_stderr, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 1
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @close(i32 %64)
  store i32 -1, i32* %2, align 4
  br label %67

66:                                               ; preds = %41
  store i32 0, i32* %2, align 4
  br label %67

67:                                               ; preds = %66, %47, %24, %17, %12
  %68 = load i32, i32* %2, align 4
  ret i32 %68
}

declare dso_local i64 @pipe(i32*) #1

declare dso_local i32 @zlog(i32, i8*) #1

declare dso_local i32 @close(i32) #1

declare dso_local i64 @fd_set_blocked(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
