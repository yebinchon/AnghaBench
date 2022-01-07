; ModuleID = '/home/carl/AnghaBench/php-src/Zend/extr_zend_inheritance.c_resolve_delayed_variance_obligations.c'
source_filename = "/home/carl/AnghaBench/php-src/Zend/extr_zend_inheritance.c_resolve_delayed_variance_obligations.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@delayed_variance_obligations = common dso_local global i32 0, align 4
@check_variance_obligation = common dso_local global i32 0, align 4
@ZEND_ACC_UNRESOLVED_VARIANCE = common dso_local global i32 0, align 4
@ZEND_ACC_LINKED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*)* @resolve_delayed_variance_obligations to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @resolve_delayed_variance_obligations(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %6 = load i32, i32* @delayed_variance_obligations, align 4
  %7 = call i32* @CG(i32 %6)
  store i32* %7, i32** %3, align 8
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %9 = ptrtoint %struct.TYPE_3__* %8 to i64
  %10 = trunc i64 %9 to i32
  store i32 %10, i32* %5, align 4
  %11 = load i32*, i32** %3, align 8
  %12 = icmp ne i32* %11, null
  %13 = zext i1 %12 to i32
  %14 = call i32 @ZEND_ASSERT(i32 %13)
  %15 = load i32*, i32** %3, align 8
  %16 = load i32, i32* %5, align 4
  %17 = call i32* @zend_hash_index_find_ptr(i32* %15, i32 %16)
  store i32* %17, i32** %4, align 8
  %18 = load i32*, i32** %4, align 8
  %19 = icmp ne i32* %18, null
  %20 = zext i1 %19 to i32
  %21 = call i32 @ZEND_ASSERT(i32 %20)
  %22 = load i32*, i32** %4, align 8
  %23 = load i32, i32* @check_variance_obligation, align 4
  %24 = call i32 @zend_hash_apply(i32* %22, i32 %23)
  %25 = load i32*, i32** %4, align 8
  %26 = call i64 @zend_hash_num_elements(i32* %25)
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %43

28:                                               ; preds = %1
  %29 = load i32, i32* @ZEND_ACC_UNRESOLVED_VARIANCE, align 4
  %30 = xor i32 %29, -1
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = and i32 %33, %30
  store i32 %34, i32* %32, align 4
  %35 = load i32, i32* @ZEND_ACC_LINKED, align 4
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = or i32 %38, %35
  store i32 %39, i32* %37, align 4
  %40 = load i32*, i32** %3, align 8
  %41 = load i32, i32* %5, align 4
  %42 = call i32 @zend_hash_index_del(i32* %40, i32 %41)
  br label %43

43:                                               ; preds = %28, %1
  ret void
}

declare dso_local i32* @CG(i32) #1

declare dso_local i32 @ZEND_ASSERT(i32) #1

declare dso_local i32* @zend_hash_index_find_ptr(i32*, i32) #1

declare dso_local i32 @zend_hash_apply(i32*, i32) #1

declare dso_local i64 @zend_hash_num_elements(i32*) #1

declare dso_local i32 @zend_hash_index_del(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
