; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/mstsc/extr_rdp.c_process_pointer_pdu.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/mstsc/extr_rdp.c_process_pointer_pdu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [22 x i8] c"Pointer message 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @process_pointer_pdu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process_pointer_pdu(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call i32 @in_uint16_le(i32 %6, i32 %7)
  %9 = load i32, i32* %2, align 4
  %10 = call i32 @in_uint8s(i32 %9, i32 2)
  %11 = load i32, i32* %3, align 4
  switch i32 %11, label %39 [
    i32 130, label %12
    i32 131, label %27
    i32 132, label %30
    i32 128, label %33
    i32 129, label %36
  ]

12:                                               ; preds = %1
  %13 = load i32, i32* %2, align 4
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @in_uint16_le(i32 %13, i32 %14)
  %16 = load i32, i32* %2, align 4
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @in_uint16_le(i32 %16, i32 %17)
  %19 = load i32, i32* %2, align 4
  %20 = call i32 @s_check(i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %12
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @ui_move_pointer(i32 %23, i32 %24)
  br label %26

26:                                               ; preds = %22, %12
  br label %42

27:                                               ; preds = %1
  %28 = load i32, i32* %2, align 4
  %29 = call i32 @process_colour_pointer_pdu(i32 %28)
  br label %42

30:                                               ; preds = %1
  %31 = load i32, i32* %2, align 4
  %32 = call i32 @process_cached_pointer_pdu(i32 %31)
  br label %42

33:                                               ; preds = %1
  %34 = load i32, i32* %2, align 4
  %35 = call i32 @process_system_pointer_pdu(i32 %34)
  br label %42

36:                                               ; preds = %1
  %37 = load i32, i32* %2, align 4
  %38 = call i32 @process_new_pointer_pdu(i32 %37)
  br label %42

39:                                               ; preds = %1
  %40 = load i32, i32* %3, align 4
  %41 = call i32 @unimpl(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %40)
  br label %42

42:                                               ; preds = %39, %36, %33, %30, %27, %26
  ret void
}

declare dso_local i32 @in_uint16_le(i32, i32) #1

declare dso_local i32 @in_uint8s(i32, i32) #1

declare dso_local i32 @s_check(i32) #1

declare dso_local i32 @ui_move_pointer(i32, i32) #1

declare dso_local i32 @process_colour_pointer_pdu(i32) #1

declare dso_local i32 @process_cached_pointer_pdu(i32) #1

declare dso_local i32 @process_system_pointer_pdu(i32) #1

declare dso_local i32 @process_new_pointer_pdu(i32) #1

declare dso_local i32 @unimpl(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
