; ModuleID = '/home/carl/AnghaBench/macvim/src/extr_gui_gtk_x11.c_gui_mch_early_init_check.c'
source_filename = "/home/carl/AnghaBench/macvim/src/extr_gui_gtk_x11.c_gui_mch_early_init_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"DISPLAY\00", align 1
@NUL = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@gui = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@e_opendisp = common dso_local global i64 0, align 8
@FAIL = common dso_local global i32 0, align 4
@OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gui_mch_early_init_check() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64*, align 8
  %3 = call i64* @mch_getenv(i64* bitcast ([8 x i8]* @.str to i64*))
  store i64* %3, i64** %2, align 8
  %4 = load i64*, i64** %2, align 8
  %5 = icmp eq i64* %4, null
  br i1 %5, label %11, label %6

6:                                                ; preds = %0
  %7 = load i64*, i64** %2, align 8
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @NUL, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %18

11:                                               ; preds = %6, %0
  %12 = load i32, i32* @TRUE, align 4
  store i32 %12, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gui, i32 0, i32 0), align 4
  %13 = load i64, i64* @e_opendisp, align 8
  %14 = inttoptr i64 %13 to i8*
  %15 = call i32 @_(i8* %14)
  %16 = call i32 @EMSG(i32 %15)
  %17 = load i32, i32* @FAIL, align 4
  store i32 %17, i32* %1, align 4
  br label %20

18:                                               ; preds = %6
  %19 = load i32, i32* @OK, align 4
  store i32 %19, i32* %1, align 4
  br label %20

20:                                               ; preds = %18, %11
  %21 = load i32, i32* %1, align 4
  ret i32 %21
}

declare dso_local i64* @mch_getenv(i64*) #1

declare dso_local i32 @EMSG(i32) #1

declare dso_local i32 @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
