; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/crkbd/keymaps/edvorakjp/extr_oled.c_read_mode_icon.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/crkbd/keymaps/edvorakjp/extr_oled.c_read_mode_icon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@read_mode_icon.logo = internal constant [2 x [2 x [3 x i8]]] [[2 x [3 x i8]] [[3 x i8] c"\95\96\00", [3 x i8] c"\B5\B6\00"], [2 x [3 x i8]] [[3 x i8] c"\97\98\00", [3 x i8] c"\B7\B8\00"]], align 1
@read_mode_icon.mode_icon = internal global [10 x i8] zeroinitializer, align 1
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @read_mode_icon(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = icmp ne i32 %4, 0
  %6 = zext i1 %5 to i64
  %7 = select i1 %5, i32 1, i32 0
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds [2 x [2 x [3 x i8]]], [2 x [2 x [3 x i8]]]* @read_mode_icon.logo, i64 0, i64 %9
  %11 = getelementptr inbounds [2 x [3 x i8]], [2 x [3 x i8]]* %10, i64 0, i64 0
  %12 = getelementptr inbounds [3 x i8], [3 x i8]* %11, i64 0, i64 0
  %13 = call i32 @strcpy(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @read_mode_icon.mode_icon, i64 0, i64 0), i8* %12)
  %14 = call i32 @strcat(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @read_mode_icon.mode_icon, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %15 = load i32, i32* %3, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds [2 x [2 x [3 x i8]]], [2 x [2 x [3 x i8]]]* @read_mode_icon.logo, i64 0, i64 %16
  %18 = getelementptr inbounds [2 x [3 x i8]], [2 x [3 x i8]]* %17, i64 0, i64 1
  %19 = getelementptr inbounds [3 x i8], [3 x i8]* %18, i64 0, i64 0
  %20 = call i32 @strcat(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @read_mode_icon.mode_icon, i64 0, i64 0), i8* %19)
  ret i8* getelementptr inbounds ([10 x i8], [10 x i8]* @read_mode_icon.mode_icon, i64 0, i64 0)
}

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @strcat(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
