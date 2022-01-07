; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/mstsc/extr_licence.c_licence_process.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/mstsc/extr_licence.c_licence_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [20 x i8] c"licence tag 0x%02x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @licence_process(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = load i32, i32* %3, align 4
  %6 = call i32 @in_uint8(i32 %4, i32 %5)
  %7 = load i32, i32* %2, align 4
  %8 = call i32 @in_uint8s(i32 %7, i32 3)
  %9 = load i32, i32* %3, align 4
  switch i32 %9, label %22 [
    i32 129, label %10
    i32 130, label %13
    i32 131, label %16
    i32 128, label %16
    i32 132, label %19
  ]

10:                                               ; preds = %1
  %11 = load i32, i32* %2, align 4
  %12 = call i32 @licence_process_request(i32 %11)
  br label %25

13:                                               ; preds = %1
  %14 = load i32, i32* %2, align 4
  %15 = call i32 @licence_process_platform_challenge(i32 %14)
  br label %25

16:                                               ; preds = %1, %1
  %17 = load i32, i32* %2, align 4
  %18 = call i32 @licence_process_new_license(i32 %17)
  br label %25

19:                                               ; preds = %1
  %20 = load i32, i32* %2, align 4
  %21 = call i32 @licence_process_error_alert(i32 %20)
  br label %25

22:                                               ; preds = %1
  %23 = load i32, i32* %3, align 4
  %24 = call i32 @unimpl(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %23)
  br label %25

25:                                               ; preds = %22, %19, %16, %13, %10
  ret void
}

declare dso_local i32 @in_uint8(i32, i32) #1

declare dso_local i32 @in_uint8s(i32, i32) #1

declare dso_local i32 @licence_process_request(i32) #1

declare dso_local i32 @licence_process_platform_challenge(i32) #1

declare dso_local i32 @licence_process_new_license(i32) #1

declare dso_local i32 @licence_process_error_alert(i32) #1

declare dso_local i32 @unimpl(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
