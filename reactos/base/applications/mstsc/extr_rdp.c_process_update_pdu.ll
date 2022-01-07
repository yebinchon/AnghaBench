; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/mstsc/extr_rdp.c_process_update_pdu.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/mstsc/extr_rdp.c_process_update_pdu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [11 x i8] c"update %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @process_update_pdu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process_update_pdu(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call i32 @in_uint16_le(i32 %5, i32 %6)
  %8 = call i32 (...) @ui_begin_update()
  %9 = load i32, i32* %3, align 4
  switch i32 %9, label %28 [
    i32 130, label %10
    i32 131, label %21
    i32 129, label %24
    i32 128, label %27
  ]

10:                                               ; preds = %1
  %11 = load i32, i32* %2, align 4
  %12 = call i32 @in_uint8s(i32 %11, i32 2)
  %13 = load i32, i32* %2, align 4
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @in_uint16_le(i32 %13, i32 %14)
  %16 = load i32, i32* %2, align 4
  %17 = call i32 @in_uint8s(i32 %16, i32 2)
  %18 = load i32, i32* %2, align 4
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @process_orders(i32 %18, i32 %19)
  br label %31

21:                                               ; preds = %1
  %22 = load i32, i32* %2, align 4
  %23 = call i32 @process_bitmap_updates(i32 %22)
  br label %31

24:                                               ; preds = %1
  %25 = load i32, i32* %2, align 4
  %26 = call i32 @process_palette(i32 %25)
  br label %31

27:                                               ; preds = %1
  br label %31

28:                                               ; preds = %1
  %29 = load i32, i32* %3, align 4
  %30 = call i32 @unimpl(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %29)
  br label %31

31:                                               ; preds = %28, %27, %24, %21, %10
  %32 = call i32 (...) @ui_end_update()
  ret void
}

declare dso_local i32 @in_uint16_le(i32, i32) #1

declare dso_local i32 @ui_begin_update(...) #1

declare dso_local i32 @in_uint8s(i32, i32) #1

declare dso_local i32 @process_orders(i32, i32) #1

declare dso_local i32 @process_bitmap_updates(i32) #1

declare dso_local i32 @process_palette(i32) #1

declare dso_local i32 @unimpl(i8*, i32) #1

declare dso_local i32 @ui_end_update(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
