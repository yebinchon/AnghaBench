; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/winhlp32/extr_macro.lex.yy.c_yypush_buffer_state.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/winhlp32/extr_macro.lex.yy.c_yypush_buffer_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32* }

@YY_CURRENT_BUFFER = common dso_local global i64 0, align 8
@yy_hold_char = common dso_local global i32 0, align 4
@yy_c_buf_p = common dso_local global i32* null, align 8
@YY_CURRENT_BUFFER_LVALUE = common dso_local global %struct.TYPE_4__* null, align 8
@yy_n_chars = common dso_local global i32 0, align 4
@yy_buffer_stack_top = common dso_local global i32 0, align 4
@yy_did_buffer_switch_on_eof = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @yypush_buffer_state(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  %3 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %4 = icmp eq %struct.TYPE_4__* %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  br label %28

6:                                                ; preds = %1
  %7 = call i32 (...) @yyensure_buffer_stack()
  %8 = load i64, i64* @YY_CURRENT_BUFFER, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %19

10:                                               ; preds = %6
  %11 = load i32, i32* @yy_hold_char, align 4
  %12 = load i32*, i32** @yy_c_buf_p, align 8
  store i32 %11, i32* %12, align 4
  %13 = load i32*, i32** @yy_c_buf_p, align 8
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** @YY_CURRENT_BUFFER_LVALUE, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 1
  store i32* %13, i32** %15, align 8
  %16 = load i32, i32* @yy_n_chars, align 4
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** @YY_CURRENT_BUFFER_LVALUE, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 8
  br label %19

19:                                               ; preds = %10, %6
  %20 = load i64, i64* @YY_CURRENT_BUFFER, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %19
  %23 = load i32, i32* @yy_buffer_stack_top, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* @yy_buffer_stack_top, align 4
  br label %25

25:                                               ; preds = %22, %19
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  store %struct.TYPE_4__* %26, %struct.TYPE_4__** @YY_CURRENT_BUFFER_LVALUE, align 8
  %27 = call i32 (...) @yy_load_buffer_state()
  store i32 1, i32* @yy_did_buffer_switch_on_eof, align 4
  br label %28

28:                                               ; preds = %25, %5
  ret void
}

declare dso_local i32 @yyensure_buffer_stack(...) #1

declare dso_local i32 @yy_load_buffer_state(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
