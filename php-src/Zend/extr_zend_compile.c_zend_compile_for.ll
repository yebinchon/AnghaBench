; ModuleID = '/home/carl/AnghaBench/php-src/Zend/extr_zend_compile.c_zend_compile_for.c'
source_filename = "/home/carl/AnghaBench/php-src/Zend/extr_zend_compile.c_zend_compile_for.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_5__** }

@ZEND_NOP = common dso_local global i32 0, align 4
@ZEND_JMPNZ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zend_compile_for(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %13, i64 0
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  store %struct.TYPE_5__* %15, %struct.TYPE_5__** %3, align 8
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %18, i64 1
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  store %struct.TYPE_5__* %20, %struct.TYPE_5__** %4, align 8
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %23, i64 2
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %24, align 8
  store %struct.TYPE_5__* %25, %struct.TYPE_5__** %5, align 8
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %28, i64 3
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %29, align 8
  store %struct.TYPE_5__* %30, %struct.TYPE_5__** %6, align 8
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %32 = call i32 @zend_compile_expr_list(i32* %7, %struct.TYPE_5__* %31)
  %33 = call i32 @zend_do_free(i32* %7)
  %34 = call i32 @zend_emit_jump(i32 0)
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* @ZEND_NOP, align 4
  %36 = call i32 @zend_begin_loop(i32 %35, i32* null, i32 0)
  %37 = call i32 (...) @get_next_op_number()
  store i32 %37, i32* %8, align 4
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %39 = call i32 @zend_compile_stmt(%struct.TYPE_5__* %38)
  %40 = call i32 (...) @get_next_op_number()
  store i32 %40, i32* %10, align 4
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %42 = call i32 @zend_compile_expr_list(i32* %7, %struct.TYPE_5__* %41)
  %43 = call i32 @zend_do_free(i32* %7)
  %44 = load i32, i32* %9, align 4
  %45 = call i32 @zend_update_jump_target_to_next(i32 %44)
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %47 = call i32 @zend_compile_expr_list(i32* %7, %struct.TYPE_5__* %46)
  %48 = call i32 (...) @zend_do_extended_stmt()
  %49 = load i32, i32* @ZEND_JMPNZ, align 4
  %50 = load i32, i32* %8, align 4
  %51 = call i32 @zend_emit_cond_jump(i32 %49, i32* %7, i32 %50)
  %52 = load i32, i32* %10, align 4
  %53 = call i32 @zend_end_loop(i32 %52, i32* null)
  ret void
}

declare dso_local i32 @zend_compile_expr_list(i32*, %struct.TYPE_5__*) #1

declare dso_local i32 @zend_do_free(i32*) #1

declare dso_local i32 @zend_emit_jump(i32) #1

declare dso_local i32 @zend_begin_loop(i32, i32*, i32) #1

declare dso_local i32 @get_next_op_number(...) #1

declare dso_local i32 @zend_compile_stmt(%struct.TYPE_5__*) #1

declare dso_local i32 @zend_update_jump_target_to_next(i32) #1

declare dso_local i32 @zend_do_extended_stmt(...) #1

declare dso_local i32 @zend_emit_cond_jump(i32, i32*, i32) #1

declare dso_local i32 @zend_end_loop(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
