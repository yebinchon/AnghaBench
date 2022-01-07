; ModuleID = '/home/carl/AnghaBench/php-src/ext/opcache/extr_zend_accelerator_util_funcs.c_zend_accel_move_user_functions.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/opcache/extr_zend_accelerator_util_funcs.c_zend_accel_move_user_functions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32, i32*, %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i32, i32 }
%struct.TYPE_17__ = type { %struct.TYPE_15__, %struct.TYPE_19__ }
%struct.TYPE_15__ = type { i32* }
%struct.TYPE_18__ = type { i64, %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32* }

@IS_UNDEF = common dso_local global i64 0, align 8
@ZEND_USER_FUNCTION = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zend_accel_move_user_functions(%struct.TYPE_19__* %0, i32 %1, %struct.TYPE_17__* %2) #0 {
  %4 = alloca %struct.TYPE_19__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca %struct.TYPE_20__*, align 8
  %8 = alloca %struct.TYPE_20__*, align 8
  %9 = alloca %struct.TYPE_19__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_18__*, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.TYPE_17__* %2, %struct.TYPE_17__** %6, align 8
  %13 = load i32, i32* %5, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %3
  br label %100

16:                                               ; preds = %3
  %17 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %17, i32 0, i32 1
  store %struct.TYPE_19__* %18, %struct.TYPE_19__** %9, align 8
  %19 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  store i32* %22, i32** %10, align 8
  %23 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  store i32* %25, i32** %11, align 8
  %26 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %26, i32 0, i32 1
  store i32* null, i32** %27, align 8
  %28 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @zend_hash_extend(%struct.TYPE_19__* %28, i32 %29, i32 0)
  %31 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %31, i32 0, i32 2
  %33 = load %struct.TYPE_20__*, %struct.TYPE_20__** %32, align 8
  %34 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %33, i64 %37
  store %struct.TYPE_20__* %38, %struct.TYPE_20__** %8, align 8
  %39 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %40 = load i32, i32* %5, align 4
  %41 = sext i32 %40 to i64
  %42 = sub i64 0, %41
  %43 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %39, i64 %42
  store %struct.TYPE_20__* %43, %struct.TYPE_20__** %7, align 8
  br label %44

44:                                               ; preds = %93, %16
  %45 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %46 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %47 = icmp ne %struct.TYPE_20__* %45, %46
  br i1 %47, label %48, label %96

48:                                               ; preds = %44
  %49 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i64 @Z_TYPE(i32 %51)
  %53 = load i64, i64* @IS_UNDEF, align 8
  %54 = icmp eq i64 %52, %53
  %55 = zext i1 %54 to i32
  %56 = call i64 @UNEXPECTED(i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %48
  br label %93

59:                                               ; preds = %48
  %60 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call %struct.TYPE_18__* @Z_PTR(i32 %62)
  store %struct.TYPE_18__* %63, %struct.TYPE_18__** %12, align 8
  %64 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %65 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @ZEND_USER_FUNCTION, align 8
  %68 = icmp eq i64 %66, %67
  %69 = zext i1 %68 to i32
  %70 = call i64 @EXPECTED(i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %92

72:                                               ; preds = %59
  %73 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %74 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %74, i32 0, i32 0
  %76 = load i32*, i32** %75, align 8
  %77 = load i32*, i32** %10, align 8
  %78 = icmp eq i32* %76, %77
  %79 = zext i1 %78 to i32
  %80 = call i64 @EXPECTED(i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %92

82:                                               ; preds = %72
  %83 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %84 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %85 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %88 = call i32 @_zend_hash_append_ptr(%struct.TYPE_19__* %83, i32 %86, %struct.TYPE_18__* %87)
  %89 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %90 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %91 = call i32 @zend_hash_del_bucket(%struct.TYPE_19__* %89, %struct.TYPE_20__* %90)
  br label %92

92:                                               ; preds = %82, %72, %59
  br label %93

93:                                               ; preds = %92, %58
  %94 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %95 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %94, i32 1
  store %struct.TYPE_20__* %95, %struct.TYPE_20__** %7, align 8
  br label %44

96:                                               ; preds = %44
  %97 = load i32*, i32** %11, align 8
  %98 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %98, i32 0, i32 1
  store i32* %97, i32** %99, align 8
  br label %100

100:                                              ; preds = %96, %15
  ret void
}

declare dso_local i32 @zend_hash_extend(%struct.TYPE_19__*, i32, i32) #1

declare dso_local i64 @UNEXPECTED(i32) #1

declare dso_local i64 @Z_TYPE(i32) #1

declare dso_local %struct.TYPE_18__* @Z_PTR(i32) #1

declare dso_local i64 @EXPECTED(i32) #1

declare dso_local i32 @_zend_hash_append_ptr(%struct.TYPE_19__*, i32, %struct.TYPE_18__*) #1

declare dso_local i32 @zend_hash_del_bucket(%struct.TYPE_19__*, %struct.TYPE_20__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
