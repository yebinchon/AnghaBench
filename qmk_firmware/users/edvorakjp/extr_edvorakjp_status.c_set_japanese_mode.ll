; ModuleID = '/home/carl/AnghaBench/qmk_firmware/users/edvorakjp/extr_edvorakjp_status.c_set_japanese_mode.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/users/edvorakjp/extr_edvorakjp_status.c_set_japanese_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i64 }

@edvorakjp_state = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@edvorakjp_config = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@X_LANG1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"`\00", align 1
@X_LANG2 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_japanese_mode(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  store i32 %3, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @edvorakjp_state, i32 0, i32 0), align 4
  %4 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @edvorakjp_state, i32 0, i32 0), align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %6, label %17

6:                                                ; preds = %1
  %7 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @edvorakjp_config, i32 0, i32 0), align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %6
  %10 = load i32, i32* @X_LANG1, align 4
  %11 = call i32 @SS_TAP(i32 %10)
  %12 = call i32 @SEND_STRING(i32 %11)
  br label %16

13:                                               ; preds = %6
  %14 = call i32 @SS_LALT(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %15 = call i32 @SEND_STRING(i32 %14)
  br label %16

16:                                               ; preds = %13, %9
  br label %28

17:                                               ; preds = %1
  %18 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @edvorakjp_config, i32 0, i32 0), align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %17
  %21 = load i32, i32* @X_LANG2, align 4
  %22 = call i32 @SS_TAP(i32 %21)
  %23 = call i32 @SEND_STRING(i32 %22)
  br label %27

24:                                               ; preds = %17
  %25 = call i32 @SS_LALT(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %26 = call i32 @SEND_STRING(i32 %25)
  br label %27

27:                                               ; preds = %24, %20
  br label %28

28:                                               ; preds = %27, %16
  ret void
}

declare dso_local i32 @SEND_STRING(i32) #1

declare dso_local i32 @SS_TAP(i32) #1

declare dso_local i32 @SS_LALT(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
