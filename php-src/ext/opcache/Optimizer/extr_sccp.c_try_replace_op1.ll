; ModuleID = '/home/carl/AnghaBench/php-src/ext/opcache/Optimizer/extr_sccp.c_try_replace_op1.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/opcache/Optimizer/extr_sccp.c_try_replace_op1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { %struct.TYPE_19__*, i32 }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_17__ = type { i32, i32, %struct.TYPE_14__, i8* }
%struct.TYPE_14__ = type { i8* }
%struct.TYPE_16__ = type { i32, i32, i32, i32 }

@ZEND_IS_EQUAL = common dso_local global i32 0, align 4
@IS_STRING = common dso_local global i32 0, align 4
@IS_CONST = common dso_local global i8* null, align 8
@ZEND_QM_ASSIGN = common dso_local global i32 0, align 4
@IS_UNUSED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_18__*, %struct.TYPE_17__*, %struct.TYPE_16__*, i32, i32*)* @try_replace_op1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @try_replace_op1(%struct.TYPE_18__* %0, %struct.TYPE_17__* %1, %struct.TYPE_16__* %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_18__*, align 8
  %8 = alloca %struct.TYPE_17__*, align 8
  %9 = alloca %struct.TYPE_16__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %7, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %8, align 8
  store %struct.TYPE_16__* %2, %struct.TYPE_16__** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %13 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %14 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* %10, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %125

18:                                               ; preds = %5
  %19 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %24 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %25 = call i64 @can_replace_op1(i32 %22, %struct.TYPE_17__* %23, %struct.TYPE_16__* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %125

27:                                               ; preds = %18
  %28 = load i32*, i32** %11, align 8
  %29 = call i32 @ZVAL_COPY(i32* %12, i32* %28)
  %30 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %35 = call i64 @zend_optimizer_update_op1_const(i32 %33, %struct.TYPE_17__* %34, i32* %12)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %27
  store i32 1, i32* %6, align 4
  br label %126

38:                                               ; preds = %27
  %39 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  switch i32 %41, label %121 [
    i32 132, label %42
    i32 131, label %46
    i32 128, label %46
    i32 129, label %46
    i32 130, label %67
  ]

42:                                               ; preds = %38
  %43 = load i32, i32* @ZEND_IS_EQUAL, align 4
  %44 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 8
  br label %46

46:                                               ; preds = %38, %38, %38, %42
  %47 = load i32, i32* %12, align 4
  %48 = call i32 @Z_TYPE(i32 %47)
  %49 = load i32, i32* @IS_STRING, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %55

51:                                               ; preds = %46
  %52 = load i32, i32* %12, align 4
  %53 = call i32 @Z_STR(i32 %52)
  %54 = call i32 @zend_string_hash_val(i32 %53)
  br label %55

55:                                               ; preds = %51, %46
  %56 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = call i8* @zend_optimizer_add_literal(i32 %59, i32* %12)
  %61 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %61, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %62, i32 0, i32 0
  store i8* %60, i8** %63, align 8
  %64 = load i8*, i8** @IS_CONST, align 8
  %65 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %66 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %65, i32 0, i32 3
  store i8* %64, i8** %66, align 8
  store i32 1, i32* %6, align 4
  br label %126

67:                                               ; preds = %38
  %68 = call i32 @zval_ptr_dtor_nogc(i32* %12)
  %69 = call i32 @ZVAL_FALSE(i32* %12)
  %70 = load i32, i32* @ZEND_QM_ASSIGN, align 4
  %71 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %72 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %71, i32 0, i32 0
  store i32 %70, i32* %72, align 8
  %73 = load i8*, i8** @IS_CONST, align 8
  %74 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %75 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %74, i32 0, i32 3
  store i8* %73, i8** %75, align 8
  %76 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %77 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = call i8* @zend_optimizer_add_literal(i32 %79, i32* %12)
  %81 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %82 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %81, i32 0, i32 2
  %83 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %82, i32 0, i32 0
  store i8* %80, i8** %83, align 8
  %84 = load i32, i32* @IS_UNUSED, align 4
  %85 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %86 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %85, i32 0, i32 1
  store i32 %84, i32* %86, align 4
  %87 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %88 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = icmp sge i32 %89, 0
  br i1 %90, label %91, label %120

91:                                               ; preds = %67
  %92 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %93 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 4
  %95 = icmp eq i32 %94, -1
  %96 = zext i1 %95 to i32
  %97 = call i32 @ZEND_ASSERT(i32 %96)
  %98 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %99 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %99, i32 0, i32 0
  %101 = load %struct.TYPE_19__*, %struct.TYPE_19__** %100, align 8
  %102 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %103 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %104 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %104, i32 0, i32 0
  %106 = load %struct.TYPE_19__*, %struct.TYPE_19__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = sext i32 %108 to i64
  %110 = sub i64 0, %109
  %111 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %102, i64 %110
  %112 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %113 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @zend_ssa_unlink_use_chain(%struct.TYPE_19__* %101, %struct.TYPE_16__* %111, i32 %114)
  %116 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %117 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %116, i32 0, i32 1
  store i32 -1, i32* %117, align 4
  %118 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %119 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %118, i32 0, i32 3
  store i32 -1, i32* %119, align 4
  br label %120

120:                                              ; preds = %91, %67
  store i32 1, i32* %6, align 4
  br label %126

121:                                              ; preds = %38
  br label %122

122:                                              ; preds = %121
  %123 = call i32 @zval_ptr_dtor_nogc(i32* %12)
  br label %124

124:                                              ; preds = %122
  br label %125

125:                                              ; preds = %124, %18, %5
  store i32 0, i32* %6, align 4
  br label %126

126:                                              ; preds = %125, %120, %55, %37
  %127 = load i32, i32* %6, align 4
  ret i32 %127
}

declare dso_local i64 @can_replace_op1(i32, %struct.TYPE_17__*, %struct.TYPE_16__*) #1

declare dso_local i32 @ZVAL_COPY(i32*, i32*) #1

declare dso_local i64 @zend_optimizer_update_op1_const(i32, %struct.TYPE_17__*, i32*) #1

declare dso_local i32 @Z_TYPE(i32) #1

declare dso_local i32 @zend_string_hash_val(i32) #1

declare dso_local i32 @Z_STR(i32) #1

declare dso_local i8* @zend_optimizer_add_literal(i32, i32*) #1

declare dso_local i32 @zval_ptr_dtor_nogc(i32*) #1

declare dso_local i32 @ZVAL_FALSE(i32*) #1

declare dso_local i32 @ZEND_ASSERT(i32) #1

declare dso_local i32 @zend_ssa_unlink_use_chain(%struct.TYPE_19__*, %struct.TYPE_16__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
