; ModuleID = '/home/carl/AnghaBench/mpv/osdep/extr_terminal-unix.c_terminal_thread.c'
source_filename = "/home/carl/AnghaBench/mpv/osdep/extr_terminal-unix.c_terminal_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pollfd = type { i64, i32, i32 }
%struct.mp_cmd = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"terminal\00", align 1
@read_terminal = common dso_local global i32 0, align 4
@death_pipe = common dso_local global i32* null, align 8
@POLLIN = common dso_local global i32 0, align 4
@tty_in = common dso_local global i32 0, align 4
@input_ctx = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"quit 4\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @terminal_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @terminal_thread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca [2 x %struct.pollfd], align 16
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  %7 = alloca %struct.mp_cmd*, align 8
  store i8* %0, i8** %2, align 8
  %8 = call i32 @mpthread_set_name(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %9 = load i32, i32* @read_terminal, align 4
  store i32 %9, i32* %3, align 4
  br label %10

10:                                               ; preds = %1, %48
  %11 = call i32 (...) @getch2_poll()
  %12 = getelementptr inbounds [2 x %struct.pollfd], [2 x %struct.pollfd]* %4, i64 0, i64 0
  %13 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %12, i32 0, i32 0
  store i64 0, i64* %13, align 16
  %14 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %12, i32 0, i32 1
  %15 = load i32*, i32** @death_pipe, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %14, align 8
  %18 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %12, i32 0, i32 2
  %19 = load i32, i32* @POLLIN, align 4
  store i32 %19, i32* %18, align 4
  %20 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %12, i64 1
  %21 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %20, i32 0, i32 0
  store i64 0, i64* %21, align 16
  %22 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %20, i32 0, i32 1
  %23 = load i32, i32* @tty_in, align 4
  store i32 %23, i32* %22, align 8
  %24 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %20, i32 0, i32 2
  %25 = load i32, i32* @POLLIN, align 4
  store i32 %25, i32* %24, align 4
  %26 = getelementptr inbounds [2 x %struct.pollfd], [2 x %struct.pollfd]* %4, i64 0, i64 0
  %27 = load i32, i32* %3, align 4
  %28 = icmp ne i32 %27, 0
  %29 = zext i1 %28 to i64
  %30 = select i1 %28, i32 2, i32 1
  %31 = call i32 @polldev(%struct.pollfd* %26, i32 %30, i32 -1)
  %32 = getelementptr inbounds [2 x %struct.pollfd], [2 x %struct.pollfd]* %4, i64 0, i64 0
  %33 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 16
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %10
  br label %49

37:                                               ; preds = %10
  %38 = getelementptr inbounds [2 x %struct.pollfd], [2 x %struct.pollfd]* %4, i64 0, i64 1
  %39 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 16
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %37
  %43 = load i32, i32* @input_ctx, align 4
  %44 = call i32 @getch2(i32 %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %42
  br label %49

47:                                               ; preds = %42
  br label %48

48:                                               ; preds = %47, %37
  br label %10

49:                                               ; preds = %46, %36
  %50 = load i32*, i32** @death_pipe, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @read(i32 %52, i8* %5, i32 1)
  %54 = icmp eq i32 %53, 1
  br i1 %54, label %55, label %59

55:                                               ; preds = %49
  %56 = load i8, i8* %5, align 1
  %57 = sext i8 %56 to i32
  %58 = icmp eq i32 %57, 1
  br label %59

59:                                               ; preds = %55, %49
  %60 = phi i1 [ false, %49 ], [ %58, %55 ]
  %61 = zext i1 %60 to i32
  store i32 %61, i32* %6, align 4
  %62 = load i32, i32* %6, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %75

64:                                               ; preds = %59
  %65 = load i32, i32* @input_ctx, align 4
  %66 = call i32 @bstr0(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %67 = call %struct.mp_cmd* @mp_input_parse_cmd(i32 %65, i32 %66, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0))
  store %struct.mp_cmd* %67, %struct.mp_cmd** %7, align 8
  %68 = load %struct.mp_cmd*, %struct.mp_cmd** %7, align 8
  %69 = icmp ne %struct.mp_cmd* %68, null
  br i1 %69, label %70, label %74

70:                                               ; preds = %64
  %71 = load i32, i32* @input_ctx, align 4
  %72 = load %struct.mp_cmd*, %struct.mp_cmd** %7, align 8
  %73 = call i32 @mp_input_queue_cmd(i32 %71, %struct.mp_cmd* %72)
  br label %74

74:                                               ; preds = %70, %64
  br label %75

75:                                               ; preds = %74, %59
  ret i8* null
}

declare dso_local i32 @mpthread_set_name(i8*) #1

declare dso_local i32 @getch2_poll(...) #1

declare dso_local i32 @polldev(%struct.pollfd*, i32, i32) #1

declare dso_local i32 @getch2(i32) #1

declare dso_local i32 @read(i32, i8*, i32) #1

declare dso_local %struct.mp_cmd* @mp_input_parse_cmd(i32, i32, i8*) #1

declare dso_local i32 @bstr0(i8*) #1

declare dso_local i32 @mp_input_queue_cmd(i32, %struct.mp_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
