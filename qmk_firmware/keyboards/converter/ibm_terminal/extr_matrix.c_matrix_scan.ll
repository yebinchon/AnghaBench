; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/converter/ibm_terminal/extr_matrix.c_matrix_scan.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/converter/ibm_terminal/extr_matrix.c_matrix_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@matrix_scan.state = internal global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"wFF \00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"[ack]\0ARESET_RESPONSE: \00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"[ok]\0AKBD_ID: \00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"err\0ARESET: \00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"\0ACONFIG: \00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"wF8 \00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"[ack]\0AREADY\0A\00", align 1
@.str.9 = private unnamed_addr constant [32 x i8] c"unexpected scan code at READY: \00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.11 = private unnamed_addr constant [29 x i8] c"unexpected scan code at F0: \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @matrix_scan() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 (...) @ps2_host_recv()
  store i32 %2, i32* %1, align 4
  %3 = icmp ne i32 %2, 0
  br i1 %3, label %4, label %9

4:                                                ; preds = %0
  %5 = call i32 @debug(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %6 = load i32, i32* %1, align 4
  %7 = call i32 @debug_hex(i32 %6)
  %8 = call i32 @debug(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %9

9:                                                ; preds = %4, %0
  %10 = load i32, i32* @matrix_scan.state, align 4
  switch i32 %10, label %84 [
    i32 0, label %11
    i32 1, label %18
    i32 2, label %30
    i32 3, label %35
    i32 4, label %41
    i32 5, label %48
    i32 6, label %67
  ]

11:                                               ; preds = %9
  %12 = call i32 @debug(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %13 = call i32 @ps2_host_send(i32 255)
  %14 = icmp eq i32 %13, 250
  br i1 %14, label %15, label %17

15:                                               ; preds = %11
  %16 = call i32 @debug(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  store i32 1, i32* @matrix_scan.state, align 4
  br label %17

17:                                               ; preds = %15, %11
  br label %84

18:                                               ; preds = %9
  %19 = load i32, i32* %1, align 4
  %20 = icmp eq i32 %19, 170
  br i1 %20, label %21, label %23

21:                                               ; preds = %18
  %22 = call i32 @debug(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  store i32 2, i32* @matrix_scan.state, align 4
  br label %29

23:                                               ; preds = %18
  %24 = load i32, i32* %1, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %23
  %27 = call i32 @debug(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0))
  store i32 0, i32* @matrix_scan.state, align 4
  br label %28

28:                                               ; preds = %26, %23
  br label %29

29:                                               ; preds = %28, %21
  br label %84

30:                                               ; preds = %9
  %31 = load i32, i32* %1, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %30
  store i32 3, i32* @matrix_scan.state, align 4
  br label %34

34:                                               ; preds = %33, %30
  br label %84

35:                                               ; preds = %9
  %36 = load i32, i32* %1, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %35
  %39 = call i32 @debug(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0))
  store i32 4, i32* @matrix_scan.state, align 4
  br label %40

40:                                               ; preds = %38, %35
  br label %84

41:                                               ; preds = %9
  %42 = call i32 @debug(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0))
  %43 = call i32 @ps2_host_send(i32 248)
  %44 = icmp eq i32 %43, 250
  br i1 %44, label %45, label %47

45:                                               ; preds = %41
  %46 = call i32 @debug(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0))
  store i32 5, i32* @matrix_scan.state, align 4
  br label %47

47:                                               ; preds = %45, %41
  br label %84

48:                                               ; preds = %9
  %49 = load i32, i32* %1, align 4
  switch i32 %49, label %53 [
    i32 0, label %50
    i32 240, label %51
  ]

50:                                               ; preds = %48
  br label %66

51:                                               ; preds = %48
  store i32 6, i32* @matrix_scan.state, align 4
  %52 = call i32 @debug(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %66

53:                                               ; preds = %48
  %54 = load i32, i32* %1, align 4
  %55 = icmp slt i32 %54, 136
  br i1 %55, label %56, label %59

56:                                               ; preds = %53
  %57 = load i32, i32* %1, align 4
  %58 = call i32 @matrix_make(i32 %57)
  br label %64

59:                                               ; preds = %53
  %60 = call i32 @debug(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9, i64 0, i64 0))
  %61 = load i32, i32* %1, align 4
  %62 = call i32 @debug_hex(i32 %61)
  %63 = call i32 @debug(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0))
  br label %64

64:                                               ; preds = %59, %56
  store i32 5, i32* @matrix_scan.state, align 4
  %65 = call i32 @debug(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0))
  br label %66

66:                                               ; preds = %64, %51, %50
  br label %84

67:                                               ; preds = %9
  %68 = load i32, i32* %1, align 4
  switch i32 %68, label %70 [
    i32 0, label %69
  ]

69:                                               ; preds = %67
  br label %83

70:                                               ; preds = %67
  %71 = load i32, i32* %1, align 4
  %72 = icmp slt i32 %71, 136
  br i1 %72, label %73, label %76

73:                                               ; preds = %70
  %74 = load i32, i32* %1, align 4
  %75 = call i32 @matrix_break(i32 %74)
  br label %81

76:                                               ; preds = %70
  %77 = call i32 @debug(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.11, i64 0, i64 0))
  %78 = load i32, i32* %1, align 4
  %79 = call i32 @debug_hex(i32 %78)
  %80 = call i32 @debug(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0))
  br label %81

81:                                               ; preds = %76, %73
  store i32 5, i32* @matrix_scan.state, align 4
  %82 = call i32 @debug(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0))
  br label %83

83:                                               ; preds = %81, %69
  br label %84

84:                                               ; preds = %9, %83, %66, %47, %40, %34, %29, %17
  ret i32 1
}

declare dso_local i32 @ps2_host_recv(...) #1

declare dso_local i32 @debug(i8*) #1

declare dso_local i32 @debug_hex(i32) #1

declare dso_local i32 @ps2_host_send(i32) #1

declare dso_local i32 @matrix_make(i32) #1

declare dso_local i32 @matrix_break(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
