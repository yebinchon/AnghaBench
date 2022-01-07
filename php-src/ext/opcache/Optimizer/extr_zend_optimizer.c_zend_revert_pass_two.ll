; ModuleID = '/home/carl/AnghaBench/php-src/ext/opcache/Optimizer/extr_zend_optimizer.c_zend_revert_pass_two.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/opcache/Optimizer/extr_zend_optimizer.c_zend_revert_pass_two.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i32*, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32 }

@ZEND_ACC_DONE_PASS_TWO = common dso_local global i32 0, align 4
@IS_CONST = common dso_local global i32 0, align 4
@IS_TMP_VAR = common dso_local global i32 0, align 4
@IS_VAR = common dso_local global i32 0, align 4
@IS_CV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*)* @zend_revert_pass_two to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zend_revert_pass_two(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  %6 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* @ZEND_ACC_DONE_PASS_TWO, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  %12 = zext i1 %11 to i32
  %13 = call i32 @ZEND_ASSERT(i32 %12)
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 4
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  store %struct.TYPE_7__* %16, %struct.TYPE_7__** %3, align 8
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i64 %21
  store %struct.TYPE_7__* %22, %struct.TYPE_7__** %4, align 8
  br label %23

23:                                               ; preds = %53, %1
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %26 = icmp ult %struct.TYPE_7__* %24, %25
  br i1 %26, label %27, label %67

27:                                               ; preds = %23
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @IS_CONST, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %40

33:                                               ; preds = %27
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 4
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @ZEND_PASS_TWO_UNDO_CONSTANT(%struct.TYPE_6__* %34, %struct.TYPE_7__* %35, i32 %38)
  br label %40

40:                                               ; preds = %33, %27
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @IS_CONST, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %53

46:                                               ; preds = %40
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @ZEND_PASS_TWO_UNDO_CONSTANT(%struct.TYPE_6__* %47, %struct.TYPE_7__* %48, i32 %51)
  br label %53

53:                                               ; preds = %46, %40
  %54 = load i32, i32* @IS_TMP_VAR, align 4
  %55 = load i32, i32* @IS_VAR, align 4
  %56 = or i32 %54, %55
  %57 = load i32, i32* @IS_CV, align 4
  %58 = or i32 %56, %57
  %59 = load i32, i32* @IS_CONST, align 4
  %60 = or i32 %58, %59
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = and i32 %63, %60
  store i32 %64, i32* %62, align 4
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 1
  store %struct.TYPE_7__* %66, %struct.TYPE_7__** %3, align 8
  br label %23

67:                                               ; preds = %23
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 3
  %70 = load i32*, i32** %69, align 8
  %71 = icmp ne i32* %70, null
  br i1 %71, label %72, label %94

72:                                               ; preds = %67
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = sext i32 %75 to i64
  %77 = mul i64 4, %76
  %78 = trunc i64 %77 to i32
  %79 = call i32* @emalloc(i32 %78)
  store i32* %79, i32** %5, align 8
  %80 = load i32*, i32** %5, align 8
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 3
  %83 = load i32*, i32** %82, align 8
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = sext i32 %86 to i64
  %88 = mul i64 4, %87
  %89 = trunc i64 %88 to i32
  %90 = call i32 @memcpy(i32* %80, i32* %83, i32 %89)
  %91 = load i32*, i32** %5, align 8
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 3
  store i32* %91, i32** %93, align 8
  br label %94

94:                                               ; preds = %72, %67
  %95 = load i32, i32* @ZEND_ACC_DONE_PASS_TWO, align 4
  %96 = xor i32 %95, -1
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = and i32 %99, %96
  store i32 %100, i32* %98, align 8
  ret void
}

declare dso_local i32 @ZEND_ASSERT(i32) #1

declare dso_local i32 @ZEND_PASS_TWO_UNDO_CONSTANT(%struct.TYPE_6__*, %struct.TYPE_7__*, i32) #1

declare dso_local i32* @emalloc(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
