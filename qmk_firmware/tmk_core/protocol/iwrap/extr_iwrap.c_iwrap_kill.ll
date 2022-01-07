; ModuleID = '/home/carl/AnghaBench/qmk_firmware/tmk_core/protocol/iwrap/extr_iwrap.c_iwrap_kill.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/tmk_core/protocol/iwrap/extr_iwrap.c_iwrap_kill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"LIST\00", align 1
@rcv_buf = common dso_local global i8* null, align 8
@rcv_tail = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"LIST \00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"no connection to kill.\0A\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"KILL \00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"\0A\00\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iwrap_kill() #0 {
  %1 = alloca i8, align 1
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = call i32 @iwrap_mux_send(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %5 = call i32 @_delay_ms(i32 500)
  br label %6

6:                                                ; preds = %16, %0
  %7 = call signext i8 (...) @rcv_deq()
  store i8 %7, i8* %1, align 1
  %8 = sext i8 %7 to i32
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %6
  %11 = load i8, i8* %1, align 1
  %12 = sext i8 %11 to i32
  %13 = icmp ne i32 %12, 10
  br label %14

14:                                               ; preds = %10, %6
  %15 = phi i1 [ false, %6 ], [ %13, %10 ]
  br i1 %15, label %16, label %17

16:                                               ; preds = %14
  br label %6

17:                                               ; preds = %14
  %18 = load i8*, i8** @rcv_buf, align 8
  %19 = load i32, i32* @rcv_tail, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i8, i8* %18, i64 %20
  %22 = call i64 @strncmp(i8* %21, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 5)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %17
  %25 = call i32 @print(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  br label %63

26:                                               ; preds = %17
  store i32 10, i32* %2, align 4
  br label %27

27:                                               ; preds = %43, %26
  %28 = load i32, i32* %2, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %46

30:                                               ; preds = %27
  br label %31

31:                                               ; preds = %41, %30
  %32 = call signext i8 (...) @rcv_deq()
  store i8 %32, i8* %1, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %31
  %36 = load i8, i8* %1, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp ne i32 %37, 32
  br label %39

39:                                               ; preds = %35, %31
  %40 = phi i1 [ false, %31 ], [ %38, %35 ]
  br i1 %40, label %41, label %42

41:                                               ; preds = %39
  br label %31

42:                                               ; preds = %39
  br label %43

43:                                               ; preds = %42
  %44 = load i32, i32* %2, align 4
  %45 = add nsw i32 %44, -1
  store i32 %45, i32* %2, align 4
  br label %27

46:                                               ; preds = %27
  %47 = load i8*, i8** @rcv_buf, align 8
  %48 = load i32, i32* @rcv_tail, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i8, i8* %47, i64 %49
  %51 = getelementptr inbounds i8, i8* %50, i64 -5
  store i8* %51, i8** %3, align 8
  %52 = load i8*, i8** %3, align 8
  %53 = call i32 @strncpy(i8* %52, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 5)
  %54 = load i8*, i8** %3, align 8
  %55 = getelementptr inbounds i8, i8* %54, i64 22
  %56 = call i32 @strncpy(i8* %55, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32 2)
  %57 = load i8*, i8** %3, align 8
  %58 = call i32 @print_S(i8* %57)
  %59 = load i8*, i8** %3, align 8
  %60 = call i32 @iwrap_mux_send(i8* %59)
  %61 = call i32 @_delay_ms(i32 500)
  %62 = call i32 (...) @iwrap_check_connection()
  br label %63

63:                                               ; preds = %46, %24
  ret void
}

declare dso_local i32 @iwrap_mux_send(i8*) #1

declare dso_local i32 @_delay_ms(i32) #1

declare dso_local signext i8 @rcv_deq(...) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @print(i8*) #1

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

declare dso_local i32 @print_S(i8*) #1

declare dso_local i32 @iwrap_check_connection(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
