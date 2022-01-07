; ModuleID = '/home/carl/AnghaBench/php-src/Zend/extr_zend_inheritance.c_check_unrecoverable_load_failure.c'
source_filename = "/home/carl/AnghaBench/php-src/Zend/extr_zend_inheritance.c_check_unrecoverable_load_failure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32* }

@ZEND_ACC_HAS_UNLINKED_USES = common dso_local global i32 0, align 4
@exception = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Exception must have been thrown\00", align 1
@E_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [65 x i8] c"During inheritance of %s with variance dependencies: Uncaught %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*)* @check_unrecoverable_load_failure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_unrecoverable_load_failure(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %5 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = load i32, i32* @ZEND_ACC_HAS_UNLINKED_USES, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %35

11:                                               ; preds = %1
  %12 = load i32, i32* @exception, align 4
  %13 = call i64 @EG(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %11
  br label %16

16:                                               ; preds = %15, %11
  %17 = phi i1 [ false, %11 ], [ true, %15 ]
  %18 = zext i1 %17 to i32
  %19 = call i32 @ZEND_ASSERT(i32 %18)
  %20 = load i32, i32* @exception, align 4
  %21 = call i64 @EG(i32 %20)
  %22 = call i32 @ZVAL_OBJ(i32* %4, i64 %21)
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @Z_ADDREF(i32 %23)
  %25 = call i32 (...) @zend_clear_exception()
  %26 = call i32* @zval_get_string(i32* %4)
  store i32* %26, i32** %3, align 8
  %27 = load i32, i32* @E_ERROR, align 4
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = call i32 @ZSTR_VAL(i32* %30)
  %32 = load i32*, i32** %3, align 8
  %33 = call i32 @ZSTR_VAL(i32* %32)
  %34 = call i32 @zend_error_noreturn(i32 %27, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.1, i64 0, i64 0), i32 %31, i32 %33)
  br label %35

35:                                               ; preds = %16, %1
  ret void
}

declare dso_local i32 @ZEND_ASSERT(i32) #1

declare dso_local i64 @EG(i32) #1

declare dso_local i32 @ZVAL_OBJ(i32*, i64) #1

declare dso_local i32 @Z_ADDREF(i32) #1

declare dso_local i32 @zend_clear_exception(...) #1

declare dso_local i32* @zval_get_string(i32*) #1

declare dso_local i32 @zend_error_noreturn(i32, i8*, i32, i32) #1

declare dso_local i32 @ZSTR_VAL(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
