; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3dcompiler_43/extr_hlsl.yy.c_hlsl_pop_buffer_state.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3dcompiler_43/extr_hlsl.yy.c_hlsl_pop_buffer_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@YY_CURRENT_BUFFER = common dso_local global i64 0, align 8
@YY_CURRENT_BUFFER_LVALUE = common dso_local global i32* null, align 8
@yy_buffer_stack_top = common dso_local global i64 0, align 8
@yy_did_buffer_switch_on_eof = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @yypop_buffer_state() #0 {
  %1 = load i64, i64* @YY_CURRENT_BUFFER, align 8
  %2 = icmp ne i64 %1, 0
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  br label %17

4:                                                ; preds = %0
  %5 = load i64, i64* @YY_CURRENT_BUFFER, align 8
  %6 = call i32 @yy_delete_buffer(i64 %5)
  store i32* null, i32** @YY_CURRENT_BUFFER_LVALUE, align 8
  %7 = load i64, i64* @yy_buffer_stack_top, align 8
  %8 = icmp sgt i64 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %4
  %10 = load i64, i64* @yy_buffer_stack_top, align 8
  %11 = add nsw i64 %10, -1
  store i64 %11, i64* @yy_buffer_stack_top, align 8
  br label %12

12:                                               ; preds = %9, %4
  %13 = load i64, i64* @YY_CURRENT_BUFFER, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %12
  %16 = call i32 (...) @yy_load_buffer_state()
  store i32 1, i32* @yy_did_buffer_switch_on_eof, align 4
  br label %17

17:                                               ; preds = %3, %15, %12
  ret void
}

declare dso_local i32 @yy_delete_buffer(i64) #1

declare dso_local i32 @yy_load_buffer_state(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
