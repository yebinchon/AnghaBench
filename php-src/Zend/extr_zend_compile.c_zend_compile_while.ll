; ModuleID = '/home/carl/AnghaBench/php-src/Zend/extr_zend_compile.c_zend_compile_while.c'
source_filename = "/home/carl/AnghaBench/php-src/Zend/extr_zend_compile.c_zend_compile_while.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_5__** }

@ZEND_NOP = common dso_local global i32 0, align 4
@ZEND_JMPNZ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zend_compile_while(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %11, i64 0
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  store %struct.TYPE_5__* %13, %struct.TYPE_5__** %3, align 8
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %16, i64 1
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  store %struct.TYPE_5__* %18, %struct.TYPE_5__** %4, align 8
  %19 = call i32 @zend_emit_jump(i32 0)
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* @ZEND_NOP, align 4
  %21 = call i32 @zend_begin_loop(i32 %20, i32* null, i32 0)
  %22 = call i32 (...) @get_next_op_number()
  store i32 %22, i32* %6, align 4
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %24 = call i32 @zend_compile_stmt(%struct.TYPE_5__* %23)
  %25 = call i32 (...) @get_next_op_number()
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* %8, align 4
  %28 = call i32 @zend_update_jump_target(i32 %26, i32 %27)
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %30 = call i32 @zend_compile_expr(i32* %5, %struct.TYPE_5__* %29)
  %31 = load i32, i32* @ZEND_JMPNZ, align 4
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @zend_emit_cond_jump(i32 %31, i32* %5, i32 %32)
  %34 = load i32, i32* %8, align 4
  %35 = call i32 @zend_end_loop(i32 %34, i32* null)
  ret void
}

declare dso_local i32 @zend_emit_jump(i32) #1

declare dso_local i32 @zend_begin_loop(i32, i32*, i32) #1

declare dso_local i32 @get_next_op_number(...) #1

declare dso_local i32 @zend_compile_stmt(%struct.TYPE_5__*) #1

declare dso_local i32 @zend_update_jump_target(i32, i32) #1

declare dso_local i32 @zend_compile_expr(i32*, %struct.TYPE_5__*) #1

declare dso_local i32 @zend_emit_cond_jump(i32, i32*, i32) #1

declare dso_local i32 @zend_end_loop(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
