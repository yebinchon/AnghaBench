; ModuleID = '/home/carl/AnghaBench/php-src/ext/opcache/Optimizer/extr_zend_inference.c_zend_ssa_check_scc_var.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/opcache/Optimizer/extr_zend_inference.c_zend_ssa_check_scc_var.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { %struct.TYPE_12__*, i32 }
%struct.TYPE_11__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_13__*, i32, i32*, i32*, i32*, %struct.TYPE_11__*)* @zend_ssa_check_scc_var to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zend_ssa_check_scc_var(i32* %0, %struct.TYPE_13__* %1, i32 %2, i32* %3, i32* %4, i32* %5, %struct.TYPE_11__* %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_13__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_11__*, align 8
  %15 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  store %struct.TYPE_11__* %6, %struct.TYPE_11__** %14, align 8
  %16 = load i32*, i32** %11, align 8
  %17 = load i32, i32* %16, align 4
  %18 = load i32*, i32** %12, align 8
  %19 = load i32, i32* %10, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %18, i64 %20
  store i32 %17, i32* %21, align 4
  %22 = load i32*, i32** %11, align 8
  %23 = load i32, i32* %22, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %22, align 4
  %25 = load i32, i32* %10, align 4
  %26 = load i32*, i32** %13, align 8
  %27 = load i32, i32* %10, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  store i32 %25, i32* %29, align 4
  %30 = load i32, i32* %10, align 4
  %31 = call i32 @FOR_EACH_VAR_USAGE(i32 %30, i32 (i32)* @CHECK_SCC_VAR)
  %32 = load i32*, i32** %13, align 8
  %33 = load i32, i32* %10, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %10, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %88

39:                                               ; preds = %7
  %40 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %41 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %44 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %43, i32 0, i32 1
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %44, align 8
  %46 = load i32, i32* %10, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 0
  store i32 %42, i32* %49, align 8
  br label %50

50:                                               ; preds = %70, %39
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp sgt i64 %53, 0
  br i1 %54, label %55, label %83

55:                                               ; preds = %50
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %57 = call i32 @zend_worklist_stack_peek(%struct.TYPE_11__* %56)
  store i32 %57, i32* %15, align 4
  %58 = load i32*, i32** %12, align 8
  %59 = load i32, i32* %15, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = load i32*, i32** %12, align 8
  %64 = load i32, i32* %10, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = icmp sle i32 %62, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %55
  br label %83

70:                                               ; preds = %55
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %72 = call i32 @zend_worklist_stack_pop(%struct.TYPE_11__* %71)
  %73 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %74 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %77 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %76, i32 0, i32 1
  %78 = load %struct.TYPE_10__*, %struct.TYPE_10__** %77, align 8
  %79 = load i32, i32* %15, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 0
  store i32 %75, i32* %82, align 8
  br label %50

83:                                               ; preds = %69, %50
  %84 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %85 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %85, align 8
  br label %92

88:                                               ; preds = %7
  %89 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %90 = load i32, i32* %10, align 4
  %91 = call i32 @zend_worklist_stack_push(%struct.TYPE_11__* %89, i32 %90)
  br label %92

92:                                               ; preds = %88, %83
  ret void
}

declare dso_local i32 @FOR_EACH_VAR_USAGE(i32, i32 (i32)*) #1

declare dso_local i32 @CHECK_SCC_VAR(i32) #1

declare dso_local i32 @zend_worklist_stack_peek(%struct.TYPE_11__*) #1

declare dso_local i32 @zend_worklist_stack_pop(%struct.TYPE_11__*) #1

declare dso_local i32 @zend_worklist_stack_push(%struct.TYPE_11__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
