; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/crkbd/keymaps/edvorakjp/extr_oled.c_read_layer_state.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/crkbd/keymaps/edvorakjp/extr_oled.c_read_layer_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@read_layer_state.layer_state_str = internal global [24 x i8] zeroinitializer, align 16
@layer_state = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"Default\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"Raise\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"Lower\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"Undef-%ld\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"Layer: \00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @read_layer_state() #0 {
  %1 = alloca [17 x i8], align 16
  %2 = load i32, i32* @layer_state, align 4
  %3 = call i32 @biton32(i32 %2)
  switch i32 %3, label %13 [
    i32 130, label %4
    i32 128, label %7
    i32 129, label %10
  ]

4:                                                ; preds = %0
  %5 = getelementptr inbounds [17 x i8], [17 x i8]* %1, i64 0, i64 0
  %6 = call i32 @strcpy(i8* %5, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  br label %17

7:                                                ; preds = %0
  %8 = getelementptr inbounds [17 x i8], [17 x i8]* %1, i64 0, i64 0
  %9 = call i32 @strcpy(i8* %8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  br label %17

10:                                               ; preds = %0
  %11 = getelementptr inbounds [17 x i8], [17 x i8]* %1, i64 0, i64 0
  %12 = call i32 @strcpy(i8* %11, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  br label %17

13:                                               ; preds = %0
  %14 = getelementptr inbounds [17 x i8], [17 x i8]* %1, i64 0, i64 0
  %15 = load i32, i32* @layer_state, align 4
  %16 = call i32 @snprintf(i8* %14, i32 17, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32 %15)
  br label %17

17:                                               ; preds = %13, %10, %7, %4
  %18 = call i32 @strcpy(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @read_layer_state.layer_state_str, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  %19 = getelementptr inbounds [17 x i8], [17 x i8]* %1, i64 0, i64 0
  %20 = call i32 @strcat(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @read_layer_state.layer_state_str, i64 0, i64 0), i8* %19)
  %21 = call i32 @strcat(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @read_layer_state.layer_state_str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  ret i8* getelementptr inbounds ([24 x i8], [24 x i8]* @read_layer_state.layer_state_str, i64 0, i64 0)
}

declare dso_local i32 @biton32(i32) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @strcat(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
