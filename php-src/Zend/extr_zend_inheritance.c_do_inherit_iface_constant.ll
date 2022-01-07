; ModuleID = '/home/carl/AnghaBench/php-src/Zend/extr_zend_inheritance.c_do_inherit_iface_constant.c'
source_filename = "/home/carl/AnghaBench/php-src/Zend/extr_zend_inheritance.c_do_inherit_iface_constant.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i32, i32, i32 }

@IS_CONSTANT_AST = common dso_local global i64 0, align 8
@ZEND_ACC_CONSTANTS_UPDATED = common dso_local global i32 0, align 4
@ZEND_INTERNAL_CLASS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_13__*, %struct.TYPE_12__*, %struct.TYPE_12__*)* @do_inherit_iface_constant to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_inherit_iface_constant(i32* %0, %struct.TYPE_13__* %1, %struct.TYPE_12__* %2, %struct.TYPE_12__* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca %struct.TYPE_13__*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %6, align 8
  store %struct.TYPE_12__* %2, %struct.TYPE_12__** %7, align 8
  store %struct.TYPE_12__* %3, %struct.TYPE_12__** %8, align 8
  %10 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %11 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 1
  %12 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %13 = load i32*, i32** %5, align 8
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %15 = call i64 @do_inherit_constant_check(i32* %11, %struct.TYPE_13__* %12, i32* %13, %struct.TYPE_12__* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %50

17:                                               ; preds = %4
  %18 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @Z_TYPE(i32 %20)
  %22 = load i64, i64* @IS_CONSTANT_AST, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %31

24:                                               ; preds = %17
  %25 = load i32, i32* @ZEND_ACC_CONSTANTS_UPDATED, align 4
  %26 = xor i32 %25, -1
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = and i32 %29, %26
  store i32 %30, i32* %28, align 4
  br label %31

31:                                               ; preds = %24, %17
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @ZEND_INTERNAL_CLASS, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %31
  %39 = call %struct.TYPE_13__* @pemalloc(i32 4, i32 1)
  store %struct.TYPE_13__* %39, %struct.TYPE_13__** %9, align 8
  %40 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %41 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %42 = call i32 @memcpy(%struct.TYPE_13__* %40, %struct.TYPE_13__* %41, i32 4)
  %43 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  store %struct.TYPE_13__* %43, %struct.TYPE_13__** %6, align 8
  br label %44

44:                                               ; preds = %38, %31
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 1
  %47 = load i32*, i32** %5, align 8
  %48 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %49 = call i32 @zend_hash_update_ptr(i32* %46, i32* %47, %struct.TYPE_13__* %48)
  br label %50

50:                                               ; preds = %44, %4
  ret void
}

declare dso_local i64 @do_inherit_constant_check(i32*, %struct.TYPE_13__*, i32*, %struct.TYPE_12__*) #1

declare dso_local i64 @Z_TYPE(i32) #1

declare dso_local %struct.TYPE_13__* @pemalloc(i32, i32) #1

declare dso_local i32 @memcpy(%struct.TYPE_13__*, %struct.TYPE_13__*, i32) #1

declare dso_local i32 @zend_hash_update_ptr(i32*, i32*, %struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
