; ModuleID = '/home/carl/AnghaBench/php-src/sapi/phpdbg/extr_phpdbg_frame.c_phpdbg_print_cur_frame_info.c'
source_filename = "/home/carl/AnghaBench/php-src/sapi/phpdbg/extr_phpdbg_frame.c_phpdbg_print_cur_frame_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @phpdbg_print_cur_frame_info() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i32*, align 8
  %3 = call i8* (...) @zend_get_executed_filename()
  store i8* %3, i8** %1, align 8
  %4 = load i8*, i8** %1, align 8
  %5 = load i8*, i8** %1, align 8
  %6 = call i32 @strlen(i8* %5)
  %7 = call i32* @zend_string_init(i8* %4, i32 %6, i32 0)
  store i32* %7, i32** %2, align 8
  %8 = load i32*, i32** %2, align 8
  %9 = call i64 (...) @zend_get_executed_lineno()
  %10 = sub nsw i64 %9, 1
  %11 = call i64 (...) @zend_get_executed_lineno()
  %12 = call i32 @phpdbg_list_file(i32* %8, i32 3, i64 %10, i64 %11)
  %13 = load i32*, i32** %2, align 8
  %14 = call i32 @efree(i32* %13)
  ret void
}

declare dso_local i8* @zend_get_executed_filename(...) #1

declare dso_local i32* @zend_string_init(i8*, i32, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @phpdbg_list_file(i32*, i32, i64, i64) #1

declare dso_local i64 @zend_get_executed_lineno(...) #1

declare dso_local i32 @efree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
