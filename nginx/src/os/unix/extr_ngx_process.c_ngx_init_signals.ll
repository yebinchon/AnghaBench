; ModuleID = '/home/carl/AnghaBench/nginx/src/os/unix/extr_ngx_process.c_ngx_init_signals.c'
source_filename = "/home/carl/AnghaBench/nginx/src/os/unix/extr_ngx_process.c_ngx_init_signals.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32, i64 }
%struct.sigaction = type { i32, i32, i32, i64 }

@signals = common dso_local global %struct.TYPE_3__* null, align 8
@SA_SIGINFO = common dso_local global i32 0, align 4
@SIG_IGN = common dso_local global i32 0, align 4
@NGX_LOG_EMERG = common dso_local global i32 0, align 4
@ngx_errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"sigaction(%s) failed\00", align 1
@NGX_ERROR = common dso_local global i32 0, align 4
@NGX_OK = common dso_local global i32 0, align 4
@NGX_LOG_ALERT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ngx_init_signals(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca %struct.sigaction, align 8
  store i32* %0, i32** %3, align 8
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** @signals, align 8
  store %struct.TYPE_3__* %6, %struct.TYPE_3__** %4, align 8
  br label %7

7:                                                ; preds = %46, %1
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %49

12:                                               ; preds = %7
  %13 = call i32 @ngx_memzero(%struct.sigaction* %5, i32 24)
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %12
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %5, i32 0, i32 3
  store i64 %21, i64* %22, align 8
  %23 = load i32, i32* @SA_SIGINFO, align 4
  %24 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %5, i32 0, i32 2
  store i32 %23, i32* %24, align 8
  br label %28

25:                                               ; preds = %12
  %26 = load i32, i32* @SIG_IGN, align 4
  %27 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %5, i32 0, i32 1
  store i32 %26, i32* %27, align 4
  br label %28

28:                                               ; preds = %25, %18
  %29 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %5, i32 0, i32 0
  %30 = call i32 @sigemptyset(i32* %29)
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @sigaction(i64 %33, %struct.sigaction* %5, i32* null)
  %35 = icmp eq i32 %34, -1
  br i1 %35, label %36, label %45

36:                                               ; preds = %28
  %37 = load i32, i32* @NGX_LOG_EMERG, align 4
  %38 = load i32*, i32** %3, align 8
  %39 = load i32, i32* @ngx_errno, align 4
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @ngx_log_error(i32 %37, i32* %38, i32 %39, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %42)
  %44 = load i32, i32* @NGX_ERROR, align 4
  store i32 %44, i32* %2, align 4
  br label %51

45:                                               ; preds = %28
  br label %46

46:                                               ; preds = %45
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 1
  store %struct.TYPE_3__* %48, %struct.TYPE_3__** %4, align 8
  br label %7

49:                                               ; preds = %7
  %50 = load i32, i32* @NGX_OK, align 4
  store i32 %50, i32* %2, align 4
  br label %51

51:                                               ; preds = %49, %36
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local i32 @ngx_memzero(%struct.sigaction*, i32) #1

declare dso_local i32 @sigemptyset(i32*) #1

declare dso_local i32 @sigaction(i64, %struct.sigaction*, i32*) #1

declare dso_local i32 @ngx_log_error(i32, i32*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
