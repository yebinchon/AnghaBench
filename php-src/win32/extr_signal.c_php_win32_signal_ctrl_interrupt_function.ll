; ModuleID = '/home/carl/AnghaBench/php-src/win32/extr_signal.c_php_win32_signal_ctrl_interrupt_function.c'
source_filename = "/home/carl/AnghaBench/php-src/win32/extr_signal.c_php_win32_signal_ctrl_interrupt_function.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IS_UNDEF = common dso_local global i64 0, align 8
@ctrl_handler = common dso_local global i32 0, align 4
@ctrl_evt = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @php_win32_signal_ctrl_interrupt_function to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @php_win32_signal_ctrl_interrupt_function(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca [1 x i32], align 4
  store i32* %0, i32** %2, align 8
  %5 = load i64, i64* @IS_UNDEF, align 8
  %6 = load i32, i32* @ctrl_handler, align 4
  %7 = call i64 @Z_TYPE(i32 %6)
  %8 = icmp ne i64 %5, %7
  br i1 %8, label %9, label %16

9:                                                ; preds = %1
  %10 = getelementptr inbounds [1 x i32], [1 x i32]* %4, i64 0, i64 0
  %11 = load i32, i32* @ctrl_evt, align 4
  %12 = call i32 @ZVAL_LONG(i32* %10, i32 %11)
  %13 = getelementptr inbounds [1 x i32], [1 x i32]* %4, i64 0, i64 0
  %14 = call i32 @call_user_function(i32* null, i32* null, i32* @ctrl_handler, i32* %3, i32 1, i32* %13)
  %15 = call i32 @zval_ptr_dtor(i32* %3)
  br label %16

16:                                               ; preds = %9, %1
  br i1 true, label %17, label %20

17:                                               ; preds = %16
  %18 = load i32*, i32** %2, align 8
  %19 = call i32 @orig_interrupt_function(i32* %18)
  br label %20

20:                                               ; preds = %17, %16
  ret void
}

declare dso_local i64 @Z_TYPE(i32) #1

declare dso_local i32 @ZVAL_LONG(i32*, i32) #1

declare dso_local i32 @call_user_function(i32*, i32*, i32*, i32*, i32, i32*) #1

declare dso_local i32 @zval_ptr_dtor(i32*) #1

declare dso_local i32 @orig_interrupt_function(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
