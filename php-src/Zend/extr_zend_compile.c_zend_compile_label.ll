; ModuleID = '/home/carl/AnghaBench/php-src/Zend/extr_zend_compile.c_zend_compile_label.c'
source_filename = "/home/carl/AnghaBench/php-src/Zend/extr_zend_compile.c_zend_compile_label.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32* }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32, i32 }

@context = common dso_local global i32 0, align 4
@label_ptr_dtor = common dso_local global i32 0, align 4
@E_COMPILE_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Label '%s' already defined\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zend_compile_label(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_6__, align 4
  %5 = alloca %struct.TYPE_8__, align 4
  %6 = alloca %struct.TYPE_8__, align 4
  %7 = alloca %struct.TYPE_8__, align 4
  %8 = alloca %struct.TYPE_8__, align 4
  %9 = alloca %struct.TYPE_8__, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32* @zend_ast_get_str(i32 %14)
  store i32* %15, i32** %3, align 8
  %16 = load i32, i32* @context, align 4
  %17 = call i64 @CG(i32 %16)
  %18 = bitcast %struct.TYPE_8__* %5 to i64*
  store i64 %17, i64* %18, align 4
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %36, label %22

22:                                               ; preds = %1
  %23 = load i32, i32* @context, align 4
  %24 = call i64 @CG(i32 %23)
  %25 = bitcast %struct.TYPE_8__* %6 to i64*
  store i64 %24, i64* %25, align 4
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @ALLOC_HASHTABLE(i32 %27)
  %29 = load i32, i32* @context, align 4
  %30 = call i64 @CG(i32 %29)
  %31 = bitcast %struct.TYPE_8__* %7 to i64*
  store i64 %30, i64* %31, align 4
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @label_ptr_dtor, align 4
  %35 = call i32 @zend_hash_init(i32 %33, i32 8, i32* null, i32 %34, i32 0)
  br label %36

36:                                               ; preds = %22, %1
  %37 = load i32, i32* @context, align 4
  %38 = call i64 @CG(i32 %37)
  %39 = bitcast %struct.TYPE_8__* %8 to i64*
  store i64 %38, i64* %39, align 4
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 1
  store i32 %41, i32* %42, align 4
  %43 = call i32 (...) @get_next_op_number()
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 0
  store i32 %43, i32* %44, align 4
  %45 = load i32, i32* @context, align 4
  %46 = call i64 @CG(i32 %45)
  %47 = bitcast %struct.TYPE_8__* %9 to i64*
  store i64 %46, i64* %47, align 4
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32*, i32** %3, align 8
  %51 = call i32 @zend_hash_add_mem(i32 %49, i32* %50, %struct.TYPE_6__* %4, i32 8)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %58, label %53

53:                                               ; preds = %36
  %54 = load i32, i32* @E_COMPILE_ERROR, align 4
  %55 = load i32*, i32** %3, align 8
  %56 = call i32 @ZSTR_VAL(i32* %55)
  %57 = call i32 @zend_error_noreturn(i32 %54, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %56)
  br label %58

58:                                               ; preds = %53, %36
  ret void
}

declare dso_local i32* @zend_ast_get_str(i32) #1

declare dso_local i64 @CG(i32) #1

declare dso_local i32 @ALLOC_HASHTABLE(i32) #1

declare dso_local i32 @zend_hash_init(i32, i32, i32*, i32, i32) #1

declare dso_local i32 @get_next_op_number(...) #1

declare dso_local i32 @zend_hash_add_mem(i32, i32*, %struct.TYPE_6__*, i32) #1

declare dso_local i32 @zend_error_noreturn(i32, i8*, i32) #1

declare dso_local i32 @ZSTR_VAL(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
