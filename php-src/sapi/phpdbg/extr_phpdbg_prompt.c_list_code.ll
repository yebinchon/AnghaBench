; ModuleID = '/home/carl/AnghaBench/php-src/sapi/phpdbg/extr_phpdbg_prompt.c_list_code.c'
source_filename = "/home/carl/AnghaBench/php-src/sapi/phpdbg/extr_phpdbg_prompt.c_list_code.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@flags = common dso_local global i32 0, align 4
@PHPDBG_IN_EVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @list_code to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @list_code() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i32*, align 8
  %3 = load i32, i32* @flags, align 4
  %4 = call i32 @PHPDBG_G(i32 %3)
  %5 = load i32, i32* @PHPDBG_IN_EVAL, align 4
  %6 = and i32 %4, %5
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %21, label %8

8:                                                ; preds = %0
  %9 = call i8* (...) @zend_get_executed_filename()
  store i8* %9, i8** %1, align 8
  %10 = load i8*, i8** %1, align 8
  %11 = load i8*, i8** %1, align 8
  %12 = call i32 @strlen(i8* %11)
  %13 = call i32* @zend_string_init(i8* %10, i32 %12, i32 0)
  store i32* %13, i32** %2, align 8
  %14 = load i32*, i32** %2, align 8
  %15 = call i64 (...) @zend_get_executed_lineno()
  %16 = sub nsw i64 %15, 1
  %17 = call i64 (...) @zend_get_executed_lineno()
  %18 = call i32 @phpdbg_list_file(i32* %14, i32 3, i64 %16, i64 %17)
  %19 = load i32*, i32** %2, align 8
  %20 = call i32 @efree(i32* %19)
  br label %21

21:                                               ; preds = %8, %0
  ret void
}

declare dso_local i32 @PHPDBG_G(i32) #1

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
