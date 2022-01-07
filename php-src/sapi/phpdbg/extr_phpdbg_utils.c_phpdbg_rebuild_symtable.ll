; ModuleID = '/home/carl/AnghaBench/php-src/sapi/phpdbg/extr_phpdbg_utils.c_phpdbg_rebuild_symtable.c'
source_filename = "/home/carl/AnghaBench/php-src/sapi/phpdbg/extr_phpdbg_utils.c_phpdbg_rebuild_symtable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@current_execute_data = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"inactive\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"type=\22op_array\22\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"No active op array!\00", align 1
@FAILURE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [20 x i8] c"type=\22symbol_table\22\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"No active symbol table!\00", align 1
@SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @phpdbg_rebuild_symtable() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @current_execute_data, align 4
  %3 = call %struct.TYPE_2__* @EG(i32 %2)
  %4 = icmp ne %struct.TYPE_2__* %3, null
  br i1 %4, label %5, label %11

5:                                                ; preds = %0
  %6 = load i32, i32* @current_execute_data, align 4
  %7 = call %struct.TYPE_2__* @EG(i32 %6)
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %5, %0
  %12 = call i32 @phpdbg_error(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %13 = load i32, i32* @FAILURE, align 4
  store i32 %13, i32* %1, align 4
  br label %22

14:                                               ; preds = %5
  %15 = call i32 (...) @zend_rebuild_symbol_table()
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %14
  %18 = call i32 @phpdbg_error(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  %19 = load i32, i32* @FAILURE, align 4
  store i32 %19, i32* %1, align 4
  br label %22

20:                                               ; preds = %14
  %21 = load i32, i32* @SUCCESS, align 4
  store i32 %21, i32* %1, align 4
  br label %22

22:                                               ; preds = %20, %17, %11
  %23 = load i32, i32* %1, align 4
  ret i32 %23
}

declare dso_local %struct.TYPE_2__* @EG(i32) #1

declare dso_local i32 @phpdbg_error(i8*, i8*, i8*) #1

declare dso_local i32 @zend_rebuild_symbol_table(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
