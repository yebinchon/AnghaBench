; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/psql/extr_command.c_exec_command_if.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/psql/extr_command.c_exec_command_if.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IFSTATE_TRUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"\\if expression\00", align 1
@IFSTATE_FALSE = common dso_local global i32 0, align 4
@IFSTATE_IGNORED = common dso_local global i32 0, align 4
@PSQL_CMD_SKIP_LINE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @exec_command_if to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @exec_command_if(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %5, align 4
  %8 = call i64 @conditional_active(i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %26

10:                                               ; preds = %3
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @IFSTATE_TRUE, align 4
  %13 = call i32 @conditional_stack_push(i32 %11, i32 %12)
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @save_query_text_state(i32 %14, i32 %15, i32 %16)
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @is_true_boolean_expression(i32 %18, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %10
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @IFSTATE_FALSE, align 4
  %24 = call i32 @conditional_stack_poke(i32 %22, i32 %23)
  br label %25

25:                                               ; preds = %21, %10
  br label %36

26:                                               ; preds = %3
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* @IFSTATE_IGNORED, align 4
  %29 = call i32 @conditional_stack_push(i32 %27, i32 %28)
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @save_query_text_state(i32 %30, i32 %31, i32 %32)
  %34 = load i32, i32* %4, align 4
  %35 = call i32 @ignore_boolean_expression(i32 %34)
  br label %36

36:                                               ; preds = %26, %25
  %37 = load i32, i32* @PSQL_CMD_SKIP_LINE, align 4
  ret i32 %37
}

declare dso_local i64 @conditional_active(i32) #1

declare dso_local i32 @conditional_stack_push(i32, i32) #1

declare dso_local i32 @save_query_text_state(i32, i32, i32) #1

declare dso_local i32 @is_true_boolean_expression(i32, i8*) #1

declare dso_local i32 @conditional_stack_poke(i32, i32) #1

declare dso_local i32 @ignore_boolean_expression(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
