; ModuleID = '/home/carl/AnghaBench/mongoose/src/common/platforms/esp31/rom/extr_notes.c__X_get_rst_cause.c'
source_filename = "/home/carl/AnghaBench/mongoose/src/common/platforms/esp31/rom/extr_notes.c__X_get_rst_cause.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RTC_STATE1 = common dso_local global i32 0, align 4
@RTC_STATE0 = common dso_local global i32 0, align 4
@RTC_CNTL_SLP_WAKEUP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_X_get_rst_cause() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = load i32, i32* @RTC_STATE1, align 4
  %5 = call i32 @GET_PERI_REG_BITS(i32 %4, i32 6, i32 0)
  store i32 %5, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = icmp eq i32 %6, 5
  br i1 %7, label %8, label %28

8:                                                ; preds = %0
  %9 = load i32, i32* @RTC_STATE1, align 4
  %10 = ashr i32 %9, 12
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %8
  br label %13

13:                                               ; preds = %12, %8
  %14 = phi i1 [ false, %8 ], [ true, %12 ]
  %15 = zext i1 %14 to i32
  store i32 %15, i32* %3, align 4
  %16 = load i32, i32* %3, align 4
  %17 = icmp ne i32 %16, 1
  br i1 %17, label %18, label %26

18:                                               ; preds = %13
  %19 = load i32, i32* %3, align 4
  %20 = icmp eq i32 %19, 8
  br i1 %20, label %21, label %23

21:                                               ; preds = %18
  %22 = load i32, i32* %2, align 4
  br label %24

23:                                               ; preds = %18
  br label %24

24:                                               ; preds = %23, %21
  %25 = phi i32 [ %22, %21 ], [ 0, %23 ]
  store i32 %25, i32* %1, align 4
  br label %27

26:                                               ; preds = %13
  store i32 20, i32* %1, align 4
  br label %27

27:                                               ; preds = %26, %24
  br label %30

28:                                               ; preds = %0
  %29 = load i32, i32* %2, align 4
  store i32 %29, i32* %1, align 4
  br label %30

30:                                               ; preds = %28, %27
  %31 = load i32, i32* @RTC_STATE0, align 4
  %32 = load i32, i32* @RTC_CNTL_SLP_WAKEUP, align 4
  %33 = call i32 @CLEAR_PERI_REG_MASK(i32 %31, i32 %32)
  %34 = load i32, i32* %1, align 4
  ret i32 %34
}

declare dso_local i32 @GET_PERI_REG_BITS(i32, i32, i32) #1

declare dso_local i32 @CLEAR_PERI_REG_MASK(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
