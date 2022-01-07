; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/converter/xt_usb/extr_matrix.c_matrix_scan.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/converter/xt_usb/extr_matrix.c_matrix_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@matrix_scan.state = internal global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%02X \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @matrix_scan() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = call i32 (...) @xt_host_recv()
  store i32 %3, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %0
  store i32 0, i32* %1, align 4
  br label %65

7:                                                ; preds = %0
  %8 = load i32, i32* %2, align 4
  %9 = call i32 @xprintf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %8)
  %10 = load i32, i32* @matrix_scan.state, align 4
  switch i32 %10, label %62 [
    i32 0, label %11
    i32 1, label %27
    i32 2, label %44
    i32 3, label %50
    i32 4, label %56
  ]

11:                                               ; preds = %7
  %12 = load i32, i32* %2, align 4
  switch i32 %12, label %15 [
    i32 224, label %13
    i32 225, label %14
  ]

13:                                               ; preds = %11
  store i32 1, i32* @matrix_scan.state, align 4
  br label %26

14:                                               ; preds = %11
  store i32 2, i32* @matrix_scan.state, align 4
  br label %26

15:                                               ; preds = %11
  %16 = load i32, i32* %2, align 4
  %17 = icmp slt i32 %16, 128
  br i1 %17, label %18, label %21

18:                                               ; preds = %15
  %19 = load i32, i32* %2, align 4
  %20 = call i32 @matrix_make(i32 %19)
  br label %25

21:                                               ; preds = %15
  %22 = load i32, i32* %2, align 4
  %23 = and i32 %22, 127
  %24 = call i32 @matrix_break(i32 %23)
  br label %25

25:                                               ; preds = %21, %18
  br label %26

26:                                               ; preds = %25, %14, %13
  br label %63

27:                                               ; preds = %7
  %28 = load i32, i32* %2, align 4
  switch i32 %28, label %30 [
    i32 42, label %29
    i32 170, label %29
    i32 54, label %29
    i32 182, label %29
  ]

29:                                               ; preds = %27, %27, %27, %27
  store i32 0, i32* @matrix_scan.state, align 4
  br label %43

30:                                               ; preds = %27
  %31 = load i32, i32* %2, align 4
  %32 = icmp slt i32 %31, 128
  br i1 %32, label %33, label %37

33:                                               ; preds = %30
  %34 = load i32, i32* %2, align 4
  %35 = call i32 @move_e0code(i32 %34)
  %36 = call i32 @matrix_make(i32 %35)
  br label %42

37:                                               ; preds = %30
  %38 = load i32, i32* %2, align 4
  %39 = and i32 %38, 127
  %40 = call i32 @move_e0code(i32 %39)
  %41 = call i32 @matrix_break(i32 %40)
  br label %42

42:                                               ; preds = %37, %33
  store i32 0, i32* @matrix_scan.state, align 4
  br label %43

43:                                               ; preds = %42, %29
  br label %63

44:                                               ; preds = %7
  %45 = load i32, i32* %2, align 4
  switch i32 %45, label %48 [
    i32 29, label %46
    i32 157, label %47
  ]

46:                                               ; preds = %44
  store i32 3, i32* @matrix_scan.state, align 4
  br label %49

47:                                               ; preds = %44
  store i32 4, i32* @matrix_scan.state, align 4
  br label %49

48:                                               ; preds = %44
  store i32 0, i32* @matrix_scan.state, align 4
  br label %49

49:                                               ; preds = %48, %47, %46
  br label %63

50:                                               ; preds = %7
  %51 = load i32, i32* %2, align 4
  switch i32 %51, label %54 [
    i32 69, label %52
  ]

52:                                               ; preds = %50
  %53 = call i32 @matrix_make(i32 85)
  br label %55

54:                                               ; preds = %50
  store i32 0, i32* @matrix_scan.state, align 4
  br label %55

55:                                               ; preds = %54, %52
  br label %63

56:                                               ; preds = %7
  %57 = load i32, i32* %2, align 4
  switch i32 %57, label %60 [
    i32 69, label %58
  ]

58:                                               ; preds = %56
  %59 = call i32 @matrix_break(i32 85)
  br label %61

60:                                               ; preds = %56
  store i32 0, i32* @matrix_scan.state, align 4
  br label %61

61:                                               ; preds = %60, %58
  br label %63

62:                                               ; preds = %7
  store i32 0, i32* @matrix_scan.state, align 4
  br label %63

63:                                               ; preds = %62, %61, %55, %49, %43, %26
  %64 = call i32 (...) @matrix_scan_quantum()
  store i32 1, i32* %1, align 4
  br label %65

65:                                               ; preds = %63, %6
  %66 = load i32, i32* %1, align 4
  ret i32 %66
}

declare dso_local i32 @xt_host_recv(...) #1

declare dso_local i32 @xprintf(i8*, i32) #1

declare dso_local i32 @matrix_make(i32) #1

declare dso_local i32 @matrix_break(i32) #1

declare dso_local i32 @move_e0code(i32) #1

declare dso_local i32 @matrix_scan_quantum(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
