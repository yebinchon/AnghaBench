; ModuleID = '/home/carl/AnghaBench/php-src/ext/opcache/Optimizer/extr_sccp.c_try_replace_op2.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/opcache/Optimizer/extr_sccp.c_try_replace_op2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { %struct.TYPE_20__*, i32 }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_17__ = type { i32, i32, i32 }

@IS_STRING = common dso_local global i32 0, align 4
@ZEND_INSTANCEOF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_19__*, %struct.TYPE_18__*, %struct.TYPE_17__*, i32, i32*)* @try_replace_op2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @try_replace_op2(%struct.TYPE_19__* %0, %struct.TYPE_18__* %1, %struct.TYPE_17__* %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_19__*, align 8
  %8 = alloca %struct.TYPE_18__*, align 8
  %9 = alloca %struct.TYPE_17__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_17__*, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %7, align 8
  store %struct.TYPE_18__* %1, %struct.TYPE_18__** %8, align 8
  store %struct.TYPE_17__* %2, %struct.TYPE_17__** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %14 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %15 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %10, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %114

19:                                               ; preds = %5
  %20 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %25 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %26 = call i64 @can_replace_op2(i32 %23, %struct.TYPE_18__* %24, %struct.TYPE_17__* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %114

28:                                               ; preds = %19
  %29 = load i32*, i32** %11, align 8
  %30 = call i32 @ZVAL_COPY(i32* %12, i32* %29)
  %31 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %36 = call i64 @zend_optimizer_update_op2_const(i32 %34, %struct.TYPE_18__* %35, i32* %12)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %28
  store i32 1, i32* %6, align 4
  br label %115

39:                                               ; preds = %28
  %40 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  switch i32 %42, label %110 [
    i32 128, label %43
  ]

43:                                               ; preds = %39
  %44 = load i32, i32* %12, align 4
  %45 = call i32 @Z_TYPE(i32 %44)
  %46 = load i32, i32* @IS_STRING, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %109

48:                                               ; preds = %43
  %49 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %49, i64 1
  %51 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @ZEND_INSTANCEOF, align 4
  %54 = icmp eq i32 %52, %53
  %55 = zext i1 %54 to i32
  %56 = call i32 @ZEND_ASSERT(i32 %55)
  %57 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %58 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %61 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %60, i64 1
  %62 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = icmp eq i32 %59, %63
  %65 = zext i1 %64 to i32
  %66 = call i32 @ZEND_ASSERT(i32 %65)
  %67 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %68 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %72 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %71, i64 1
  %73 = call i64 @zend_optimizer_update_op2_const(i32 %70, %struct.TYPE_18__* %72, i32* %12)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %108

75:                                               ; preds = %48
  %76 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %77 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %76, i64 1
  store %struct.TYPE_17__* %77, %struct.TYPE_17__** %13, align 8
  %78 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %79 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %79, i32 0, i32 0
  %81 = load %struct.TYPE_20__*, %struct.TYPE_20__** %80, align 8
  %82 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %83 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %84 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %84, i32 0, i32 0
  %86 = load %struct.TYPE_20__*, %struct.TYPE_20__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = sext i32 %88 to i64
  %90 = sub i64 0, %89
  %91 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %82, i64 %90
  %92 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %93 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @zend_ssa_unlink_use_chain(%struct.TYPE_20__* %81, %struct.TYPE_17__* %91, i32 %94)
  %96 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %97 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %96, i32 0, i32 0
  store i32 -1, i32* %97, align 4
  %98 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %99 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %98, i32 0, i32 2
  store i32 -1, i32* %99, align 4
  %100 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %101 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %101, i32 0, i32 0
  %103 = load %struct.TYPE_20__*, %struct.TYPE_20__** %102, align 8
  %104 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %105 = call i32 @zend_ssa_remove_result_def(%struct.TYPE_20__* %103, %struct.TYPE_17__* %104)
  %106 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %107 = call i32 @MAKE_NOP(%struct.TYPE_18__* %106)
  store i32 1, i32* %6, align 4
  br label %115

108:                                              ; preds = %48
  br label %109

109:                                              ; preds = %108, %43
  br label %110

110:                                              ; preds = %39, %109
  br label %111

111:                                              ; preds = %110
  %112 = call i32 @zval_ptr_dtor_nogc(i32* %12)
  br label %113

113:                                              ; preds = %111
  br label %114

114:                                              ; preds = %113, %19, %5
  store i32 0, i32* %6, align 4
  br label %115

115:                                              ; preds = %114, %75, %38
  %116 = load i32, i32* %6, align 4
  ret i32 %116
}

declare dso_local i64 @can_replace_op2(i32, %struct.TYPE_18__*, %struct.TYPE_17__*) #1

declare dso_local i32 @ZVAL_COPY(i32*, i32*) #1

declare dso_local i64 @zend_optimizer_update_op2_const(i32, %struct.TYPE_18__*, i32*) #1

declare dso_local i32 @Z_TYPE(i32) #1

declare dso_local i32 @ZEND_ASSERT(i32) #1

declare dso_local i32 @zend_ssa_unlink_use_chain(%struct.TYPE_20__*, %struct.TYPE_17__*, i32) #1

declare dso_local i32 @zend_ssa_remove_result_def(%struct.TYPE_20__*, %struct.TYPE_17__*) #1

declare dso_local i32 @MAKE_NOP(%struct.TYPE_18__*) #1

declare dso_local i32 @zval_ptr_dtor_nogc(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
