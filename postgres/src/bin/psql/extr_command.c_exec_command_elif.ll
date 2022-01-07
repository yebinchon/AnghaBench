; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/psql/extr_command.c_exec_command_elif.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/psql/extr_command.c_exec_command_elif.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [17 x i8] c"\\elif expression\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"\\elif: cannot occur after \\else\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"\\elif: no matching \\if\00", align 1
@PSQL_CMD_SKIP_LINE = common dso_local global i32 0, align 4
@PSQL_CMD_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @exec_command_elif to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @exec_command_elif(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 1, i32* %7, align 4
  %8 = load i32, i32* %5, align 4
  %9 = call i32 @conditional_stack_peek(i32 %8)
  switch i32 %9, label %44 [
    i32 128, label %10
    i32 131, label %19
    i32 130, label %33
    i32 132, label %40
    i32 133, label %40
    i32 129, label %42
  ]

10:                                               ; preds = %3
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* %6, align 4
  %14 = call i32 @save_query_text_state(i32 %11, i32 %12, i32 %13)
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @conditional_stack_poke(i32 %15, i32 130)
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @ignore_boolean_expression(i32 %17)
  br label %44

19:                                               ; preds = %3
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @discard_query_text(i32 %20, i32 %21, i32 %22)
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @conditional_stack_poke(i32 %24, i32 128)
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @is_true_boolean_expression(i32 %26, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %19
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @conditional_stack_poke(i32 %30, i32 131)
  br label %32

32:                                               ; preds = %29, %19
  br label %44

33:                                               ; preds = %3
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @discard_query_text(i32 %34, i32 %35, i32 %36)
  %38 = load i32, i32* %4, align 4
  %39 = call i32 @ignore_boolean_expression(i32 %38)
  br label %44

40:                                               ; preds = %3, %3
  %41 = call i32 @pg_log_error(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  br label %44

42:                                               ; preds = %3
  %43 = call i32 @pg_log_error(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  br label %44

44:                                               ; preds = %3, %42, %40, %33, %32, %10
  %45 = load i32, i32* %7, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %44
  %48 = load i32, i32* @PSQL_CMD_SKIP_LINE, align 4
  br label %51

49:                                               ; preds = %44
  %50 = load i32, i32* @PSQL_CMD_ERROR, align 4
  br label %51

51:                                               ; preds = %49, %47
  %52 = phi i32 [ %48, %47 ], [ %50, %49 ]
  ret i32 %52
}

declare dso_local i32 @conditional_stack_peek(i32) #1

declare dso_local i32 @save_query_text_state(i32, i32, i32) #1

declare dso_local i32 @conditional_stack_poke(i32, i32) #1

declare dso_local i32 @ignore_boolean_expression(i32) #1

declare dso_local i32 @discard_query_text(i32, i32, i32) #1

declare dso_local i32 @is_true_boolean_expression(i32, i8*) #1

declare dso_local i32 @pg_log_error(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
