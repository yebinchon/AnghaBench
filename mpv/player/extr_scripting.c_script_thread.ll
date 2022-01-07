; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_scripting.c_script_thread.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_scripting.c_script_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread_arg = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8*, i64 (i32, i32)* }

@.str = private unnamed_addr constant [8 x i8] c"%s (%s)\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"Could not load %s %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @script_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @script_thread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.thread_arg*, align 8
  %4 = alloca [90 x i8], align 16
  store i8* %0, i8** %2, align 8
  %5 = call i32 (...) @pthread_self()
  %6 = call i32 @pthread_detach(i32 %5)
  %7 = load i8*, i8** %2, align 8
  %8 = bitcast i8* %7 to %struct.thread_arg*
  store %struct.thread_arg* %8, %struct.thread_arg** %3, align 8
  %9 = getelementptr inbounds [90 x i8], [90 x i8]* %4, i64 0, i64 0
  %10 = load %struct.thread_arg*, %struct.thread_arg** %3, align 8
  %11 = getelementptr inbounds %struct.thread_arg, %struct.thread_arg* %10, i32 0, i32 2
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i8*, i8** %13, align 8
  %15 = load %struct.thread_arg*, %struct.thread_arg** %3, align 8
  %16 = getelementptr inbounds %struct.thread_arg, %struct.thread_arg* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call i8* @mpv_client_name(i32 %17)
  %19 = call i32 @snprintf(i8* %9, i32 90, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* %14, i8* %18)
  %20 = getelementptr inbounds [90 x i8], [90 x i8]* %4, i64 0, i64 0
  %21 = call i32 @mpthread_set_name(i8* %20)
  %22 = load %struct.thread_arg*, %struct.thread_arg** %3, align 8
  %23 = getelementptr inbounds %struct.thread_arg, %struct.thread_arg* %22, i32 0, i32 2
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load i64 (i32, i32)*, i64 (i32, i32)** %25, align 8
  %27 = load %struct.thread_arg*, %struct.thread_arg** %3, align 8
  %28 = getelementptr inbounds %struct.thread_arg, %struct.thread_arg* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.thread_arg*, %struct.thread_arg** %3, align 8
  %31 = getelementptr inbounds %struct.thread_arg, %struct.thread_arg* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i64 %26(i32 %29, i32 %32)
  %34 = icmp slt i64 %33, 0
  br i1 %34, label %35, label %46

35:                                               ; preds = %1
  %36 = load %struct.thread_arg*, %struct.thread_arg** %3, align 8
  %37 = load %struct.thread_arg*, %struct.thread_arg** %3, align 8
  %38 = getelementptr inbounds %struct.thread_arg, %struct.thread_arg* %37, i32 0, i32 2
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i8*, i8** %40, align 8
  %42 = load %struct.thread_arg*, %struct.thread_arg** %3, align 8
  %43 = getelementptr inbounds %struct.thread_arg, %struct.thread_arg* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @MP_ERR(%struct.thread_arg* %36, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i8* %41, i32 %44)
  br label %46

46:                                               ; preds = %35, %1
  %47 = load %struct.thread_arg*, %struct.thread_arg** %3, align 8
  %48 = getelementptr inbounds %struct.thread_arg, %struct.thread_arg* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @mpv_destroy(i32 %49)
  %51 = load %struct.thread_arg*, %struct.thread_arg** %3, align 8
  %52 = call i32 @talloc_free(%struct.thread_arg* %51)
  ret i8* null
}

declare dso_local i32 @pthread_detach(i32) #1

declare dso_local i32 @pthread_self(...) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*) #1

declare dso_local i8* @mpv_client_name(i32) #1

declare dso_local i32 @mpthread_set_name(i8*) #1

declare dso_local i32 @MP_ERR(%struct.thread_arg*, i8*, i8*, i32) #1

declare dso_local i32 @mpv_destroy(i32) #1

declare dso_local i32 @talloc_free(%struct.thread_arg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
