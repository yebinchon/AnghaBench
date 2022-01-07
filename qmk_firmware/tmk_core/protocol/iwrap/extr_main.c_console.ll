; ModuleID = '/home/carl/AnghaBench/qmk_firmware/tmk_core/protocol/iwrap/extr_main.c_console.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/tmk_core/protocol/iwrap/extr_main.c_console.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@console.breaked = internal global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"break(? for help): \00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @console to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @console() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = call i32 (...) @uart_available()
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %6, label %5

5:                                                ; preds = %0
  store i32 0, i32* %1, align 4
  br label %35

6:                                                ; preds = %0
  %7 = call i32 (...) @uart_getchar()
  store i32 %7, i32* %2, align 4
  %8 = load i32, i32* %2, align 4
  %9 = trunc i32 %8 to i8
  %10 = call i32 @uart_putchar(i8 signext %9)
  %11 = load i32, i32* %2, align 4
  switch i32 %11, label %23 [
    i32 0, label %12
    i32 13, label %18
    i32 8, label %21
  ]

12:                                               ; preds = %6
  %13 = load i32, i32* @console.breaked, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %12
  %16 = call i32 @print(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* @console.breaked, align 4
  br label %17

17:                                               ; preds = %15, %12
  br label %34

18:                                               ; preds = %6
  %19 = call i32 @uart_putchar(i8 signext 10)
  %20 = call i32 (...) @iwrap_buf_send()
  br label %34

21:                                               ; preds = %6
  %22 = call i32 (...) @iwrap_buf_del()
  br label %34

23:                                               ; preds = %6
  %24 = load i32, i32* @console.breaked, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %23
  %27 = call i32 @print(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %28 = load i32, i32* %2, align 4
  %29 = call i32 @console_command(i32 %28)
  store i32 0, i32* @console.breaked, align 4
  br label %33

30:                                               ; preds = %23
  %31 = load i32, i32* %2, align 4
  %32 = call i32 @iwrap_buf_add(i32 %31)
  br label %33

33:                                               ; preds = %30, %26
  br label %34

34:                                               ; preds = %33, %21, %18, %17
  store i32 1, i32* %1, align 4
  br label %35

35:                                               ; preds = %34, %5
  %36 = load i32, i32* %1, align 4
  ret i32 %36
}

declare dso_local i32 @uart_available(...) #1

declare dso_local i32 @uart_getchar(...) #1

declare dso_local i32 @uart_putchar(i8 signext) #1

declare dso_local i32 @print(i8*) #1

declare dso_local i32 @iwrap_buf_send(...) #1

declare dso_local i32 @iwrap_buf_del(...) #1

declare dso_local i32 @console_command(i32) #1

declare dso_local i32 @iwrap_buf_add(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
