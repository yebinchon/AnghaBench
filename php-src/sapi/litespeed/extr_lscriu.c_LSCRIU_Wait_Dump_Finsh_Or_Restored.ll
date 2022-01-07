; ModuleID = '/home/carl/AnghaBench/php-src/sapi/litespeed/extr_lscriu.c_LSCRIU_Wait_Dump_Finsh_Or_Restored.c'
source_filename = "/home/carl/AnghaBench/php-src/sapi/litespeed/extr_lscriu.c_LSCRIU_Wait_Dump_Finsh_Or_Restored.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [31 x i8] c"Timed out waiting to be dumped\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @LSCRIU_Wait_Dump_Finsh_Or_Restored to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @LSCRIU_Wait_Dump_Finsh_Or_Restored(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %34, %1
  %7 = call i32 @usleep(i32 1000)
  %8 = call i32 @time(i32* %4)
  %9 = load i32, i32* %3, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %6
  %12 = load i32, i32* %4, align 4
  store i32 %12, i32* %3, align 4
  br label %33

13:                                               ; preds = %6
  %14 = load i32, i32* %2, align 4
  %15 = call i32 (...) @getppid()
  %16 = icmp ne i32 %14, %15
  br i1 %16, label %22, label %17

17:                                               ; preds = %13
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* %3, align 4
  %20 = sub nsw i32 %18, %19
  %21 = icmp sgt i32 %20, 10
  br i1 %21, label %22, label %23

22:                                               ; preds = %17, %13
  store i32 1, i32* %5, align 4
  br label %32

23:                                               ; preds = %17
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* %3, align 4
  %26 = sub nsw i32 %24, %25
  %27 = icmp sgt i32 %26, 5
  br i1 %27, label %28, label %31

28:                                               ; preds = %23
  %29 = call i32 @LSCRIU_Restored_Error(i32 1, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %30 = call i32 @exit(i32 1) #3
  unreachable

31:                                               ; preds = %23
  br label %32

32:                                               ; preds = %31, %22
  br label %33

33:                                               ; preds = %32, %11
  br label %34

34:                                               ; preds = %33
  %35 = load i32, i32* %5, align 4
  %36 = icmp ne i32 %35, 0
  %37 = xor i1 %36, true
  br i1 %37, label %6, label %38

38:                                               ; preds = %34
  ret void
}

declare dso_local i32 @usleep(i32) #1

declare dso_local i32 @time(i32*) #1

declare dso_local i32 @getppid(...) #1

declare dso_local i32 @LSCRIU_Restored_Error(i32, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
