; ModuleID = '/home/carl/AnghaBench/php-src/sapi/phpdbg/extr_phpdbg_bp.c_phpdbg_find_breakpoint_opcode.c'
source_filename = "/home/carl/AnghaBench/php-src/sapi/phpdbg/extr_phpdbg_bp.c_phpdbg_find_breakpoint_opcode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@bp = common dso_local global i32 0, align 4
@PHPDBG_BREAK_OPCODE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32)* @phpdbg_find_breakpoint_opcode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @phpdbg_find_breakpoint_opcode(i32 %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = call i8* @zend_get_opcode_name(i32 %5)
  store i8* %6, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = icmp ne i8* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store i32* null, i32** %2, align 8
  br label %20

10:                                               ; preds = %1
  %11 = load i32, i32* @bp, align 4
  %12 = call i32* @PHPDBG_G(i32 %11)
  %13 = load i64, i64* @PHPDBG_BREAK_OPCODE, align 8
  %14 = getelementptr inbounds i32, i32* %12, i64 %13
  %15 = load i8*, i8** %4, align 8
  %16 = load i8*, i8** %4, align 8
  %17 = call i32 @strlen(i8* %16)
  %18 = call i32 @zend_hash_func(i8* %15, i32 %17)
  %19 = call i32* @zend_hash_index_find_ptr(i32* %14, i32 %18)
  store i32* %19, i32** %2, align 8
  br label %20

20:                                               ; preds = %10, %9
  %21 = load i32*, i32** %2, align 8
  ret i32* %21
}

declare dso_local i8* @zend_get_opcode_name(i32) #1

declare dso_local i32* @zend_hash_index_find_ptr(i32*, i32) #1

declare dso_local i32* @PHPDBG_G(i32) #1

declare dso_local i32 @zend_hash_func(i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
