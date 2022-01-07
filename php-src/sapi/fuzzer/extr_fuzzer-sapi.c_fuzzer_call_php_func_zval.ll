; ModuleID = '/home/carl/AnghaBench/php-src/sapi/fuzzer/extr_fuzzer-sapi.c_fuzzer_call_php_func_zval.c'
source_filename = "/home/carl/AnghaBench/php-src/sapi/fuzzer/extr_fuzzer-sapi.c_fuzzer_call_php_func_zval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@function_table = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fuzzer_call_php_func_zval(i8* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = call i32 @ZVAL_STRING(i32* %8, i8* %9)
  %11 = call i32 @ZVAL_UNDEF(i32* %7)
  %12 = load i32, i32* @function_table, align 4
  %13 = call i32 @CG(i32 %12)
  %14 = load i32, i32* %5, align 4
  %15 = load i32*, i32** %6, align 8
  %16 = call i32 @call_user_function(i32 %13, i32* null, i32* %8, i32* %7, i32 %14, i32* %15)
  %17 = call i32 @php_var_dump(i32* %7, i32 0)
  %18 = call i32 @zval_ptr_dtor(i32* %7)
  %19 = call i32 @zval_ptr_dtor(i32* %8)
  ret void
}

declare dso_local i32 @ZVAL_STRING(i32*, i8*) #1

declare dso_local i32 @ZVAL_UNDEF(i32*) #1

declare dso_local i32 @call_user_function(i32, i32*, i32*, i32*, i32, i32*) #1

declare dso_local i32 @CG(i32) #1

declare dso_local i32 @php_var_dump(i32*, i32) #1

declare dso_local i32 @zval_ptr_dtor(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
