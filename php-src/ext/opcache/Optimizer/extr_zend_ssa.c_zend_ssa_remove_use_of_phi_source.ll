; ModuleID = '/home/carl/AnghaBench/php-src/ext/opcache/Optimizer/extr_zend_ssa.c_zend_ssa_remove_use_of_phi_source.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/opcache/Optimizer/extr_zend_ssa.c_zend_ssa_remove_use_of_phi_source.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, i32*, i32, i32*)* @zend_ssa_remove_use_of_phi_source to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zend_ssa_remove_use_of_phi_source(%struct.TYPE_6__* %0, i32* %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32**, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %13 = load i32, i32* %7, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i64 %14
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  store i32** %16, i32*** %9, align 8
  br label %17

17:                                               ; preds = %28, %4
  %18 = load i32**, i32*** %9, align 8
  %19 = load i32*, i32** %18, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %26

21:                                               ; preds = %17
  %22 = load i32**, i32*** %9, align 8
  %23 = load i32*, i32** %22, align 8
  %24 = load i32*, i32** %6, align 8
  %25 = icmp ne i32* %23, %24
  br label %26

26:                                               ; preds = %21, %17
  %27 = phi i1 [ false, %17 ], [ %25, %21 ]
  br i1 %27, label %28, label %34

28:                                               ; preds = %26
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %30 = load i32, i32* %7, align 4
  %31 = load i32**, i32*** %9, align 8
  %32 = load i32*, i32** %31, align 8
  %33 = call i32** @zend_ssa_next_use_phi_ptr(%struct.TYPE_6__* %29, i32 %30, i32* %32)
  store i32** %33, i32*** %9, align 8
  br label %17

34:                                               ; preds = %26
  %35 = load i32**, i32*** %9, align 8
  %36 = load i32*, i32** %35, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %38, label %41

38:                                               ; preds = %34
  %39 = load i32*, i32** %8, align 8
  %40 = load i32**, i32*** %9, align 8
  store i32* %39, i32** %40, align 8
  br label %41

41:                                               ; preds = %38, %34
  ret void
}

declare dso_local i32** @zend_ssa_next_use_phi_ptr(%struct.TYPE_6__*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
