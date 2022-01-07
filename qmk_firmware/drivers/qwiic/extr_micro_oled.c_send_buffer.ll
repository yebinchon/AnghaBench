; ModuleID = '/home/carl/AnghaBench/qmk_firmware/drivers/qwiic/extr_micro_oled.c_send_buffer.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/drivers/qwiic/extr_micro_oled.c_send_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LCDHEIGHT = common dso_local global i32 0, align 4
@LCDWIDTH = common dso_local global i32 0, align 4
@micro_oled_screen_buffer = common dso_local global i64* null, align 8
@micro_oled_screen_current = common dso_local global i64* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @send_buffer() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 255, i32* %3, align 4
  store i32 0, i32* %1, align 4
  br label %5

5:                                                ; preds = %84, %0
  %6 = load i32, i32* %1, align 4
  %7 = load i32, i32* @LCDHEIGHT, align 4
  %8 = sdiv i32 %7, 8
  %9 = icmp slt i32 %6, %8
  br i1 %9, label %10, label %87

10:                                               ; preds = %5
  store i32 255, i32* %4, align 4
  store i32 0, i32* %2, align 4
  br label %11

11:                                               ; preds = %80, %10
  %12 = load i32, i32* %2, align 4
  %13 = load i32, i32* @LCDWIDTH, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %83

15:                                               ; preds = %11
  %16 = load i64*, i64** @micro_oled_screen_buffer, align 8
  %17 = load i32, i32* %1, align 4
  %18 = load i32, i32* @LCDWIDTH, align 4
  %19 = mul nsw i32 %17, %18
  %20 = load i32, i32* %2, align 4
  %21 = add nsw i32 %19, %20
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i64, i64* %16, i64 %22
  %24 = load i64, i64* %23, align 8
  %25 = load i64*, i64** @micro_oled_screen_current, align 8
  %26 = load i32, i32* %1, align 4
  %27 = load i32, i32* @LCDWIDTH, align 4
  %28 = mul nsw i32 %26, %27
  %29 = load i32, i32* %2, align 4
  %30 = add nsw i32 %28, %29
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i64, i64* %25, i64 %31
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %24, %33
  br i1 %34, label %35, label %79

35:                                               ; preds = %15
  %36 = load i32, i32* %3, align 4
  %37 = load i32, i32* %1, align 4
  %38 = icmp ne i32 %36, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %35
  %40 = load i32, i32* %1, align 4
  %41 = call i32 @set_page_address(i32 %40)
  br label %42

42:                                               ; preds = %39, %35
  %43 = load i32, i32* %4, align 4
  %44 = load i32, i32* %2, align 4
  %45 = icmp ne i32 %43, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %42
  %47 = load i32, i32* %2, align 4
  %48 = call i32 @set_column_address(i32 %47)
  br label %49

49:                                               ; preds = %46, %42
  %50 = load i64*, i64** @micro_oled_screen_buffer, align 8
  %51 = load i32, i32* %1, align 4
  %52 = load i32, i32* @LCDWIDTH, align 4
  %53 = mul nsw i32 %51, %52
  %54 = load i32, i32* %2, align 4
  %55 = add nsw i32 %53, %54
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i64, i64* %50, i64 %56
  %58 = load i64, i64* %57, align 8
  %59 = call i32 @send_data(i64 %58)
  %60 = load i64*, i64** @micro_oled_screen_buffer, align 8
  %61 = load i32, i32* %1, align 4
  %62 = load i32, i32* @LCDWIDTH, align 4
  %63 = mul nsw i32 %61, %62
  %64 = load i32, i32* %2, align 4
  %65 = add nsw i32 %63, %64
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i64, i64* %60, i64 %66
  %68 = load i64, i64* %67, align 8
  %69 = load i64*, i64** @micro_oled_screen_current, align 8
  %70 = load i32, i32* %1, align 4
  %71 = load i32, i32* @LCDWIDTH, align 4
  %72 = mul nsw i32 %70, %71
  %73 = load i32, i32* %2, align 4
  %74 = add nsw i32 %72, %73
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i64, i64* %69, i64 %75
  store i64 %68, i64* %76, align 8
  %77 = load i32, i32* %2, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %4, align 4
  br label %79

79:                                               ; preds = %49, %15
  br label %80

80:                                               ; preds = %79
  %81 = load i32, i32* %2, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %2, align 4
  br label %11

83:                                               ; preds = %11
  br label %84

84:                                               ; preds = %83
  %85 = load i32, i32* %1, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %1, align 4
  br label %5

87:                                               ; preds = %5
  ret void
}

declare dso_local i32 @set_page_address(i32) #1

declare dso_local i32 @set_column_address(i32) #1

declare dso_local i32 @send_data(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
