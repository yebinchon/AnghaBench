; ModuleID = '/home/carl/AnghaBench/nginx/src/os/win32/extr_ngx_process_cycle.c_ngx_os_signal_process.c'
source_filename = "/home/carl/AnghaBench/nginx/src/os/win32/extr_ngx_process_cycle.c_ngx_os_signal_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@NGX_PROCESS_SYNC_NAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"Global\\ngx_%s_%P%Z\00", align 1
@EVENT_MODIFY_STATE = common dso_local global i32 0, align 4
@NGX_LOG_ERR = common dso_local global i32 0, align 4
@ngx_errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"OpenEvent(\22%s\22) failed\00", align 1
@NGX_LOG_ALERT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"SetEvent(\22%s\22) failed\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ngx_os_signal_process(%struct.TYPE_3__* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load i32, i32* @NGX_PROCESS_SYNC_NAME, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %10, align 8
  %16 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %11, align 8
  %17 = bitcast i8* %16 to i32*
  %18 = load i8*, i8** %6, align 8
  %19 = load i32, i32* %7, align 4
  %20 = call i32 @ngx_sprintf(i32* %17, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8* %18, i32 %19)
  %21 = load i32, i32* @EVENT_MODIFY_STATE, align 4
  %22 = call i32* @OpenEvent(i32 %21, i32 0, i8* %16)
  store i32* %22, i32** %8, align 8
  %23 = load i32*, i32** %8, align 8
  %24 = icmp eq i32* %23, null
  br i1 %24, label %25, label %32

25:                                               ; preds = %3
  %26 = load i32, i32* @NGX_LOG_ERR, align 4
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @ngx_errno, align 4
  %31 = call i32 @ngx_log_error(i32 %26, i32 %29, i32 %30, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* %16)
  store i32 1, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %48

32:                                               ; preds = %3
  %33 = load i32*, i32** %8, align 8
  %34 = call i64 @SetEvent(i32* %33)
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %32
  %37 = load i32, i32* @NGX_LOG_ALERT, align 4
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @ngx_errno, align 4
  %42 = call i32 @ngx_log_error(i32 %37, i32 %40, i32 %41, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i8* %16)
  store i32 1, i32* %9, align 4
  br label %44

43:                                               ; preds = %32
  store i32 0, i32* %9, align 4
  br label %44

44:                                               ; preds = %43, %36
  %45 = load i32*, i32** %8, align 8
  %46 = call i32 @ngx_close_handle(i32* %45)
  %47 = load i32, i32* %9, align 4
  store i32 %47, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %48

48:                                               ; preds = %44, %25
  %49 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %49)
  %50 = load i32, i32* %4, align 4
  ret i32 %50
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @ngx_sprintf(i32*, i8*, i8*, i32) #2

declare dso_local i32* @OpenEvent(i32, i32, i8*) #2

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*, i8*) #2

declare dso_local i64 @SetEvent(i32*) #2

declare dso_local i32 @ngx_close_handle(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
