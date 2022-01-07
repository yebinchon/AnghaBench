; ModuleID = '/home/carl/AnghaBench/php-src/Zend/extr_zend_inheritance.c_do_inherit_class_constant.c'
source_filename = "/home/carl/AnghaBench/php-src/Zend/extr_zend_inheritance.c_do_inherit_class_constant.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i32, i32, i32, %struct.TYPE_10__*, i32* }
%struct.TYPE_10__ = type { i32* }

@ZEND_ACC_PPP_MASK = common dso_local global i32 0, align 4
@E_COMPILE_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"Access level to %s::%s must be %s (as in class %s)%s\00", align 1
@ZEND_ACC_PUBLIC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [11 x i8] c" or weaker\00", align 1
@ZEND_ACC_PRIVATE = common dso_local global i32 0, align 4
@IS_CONSTANT_AST = common dso_local global i64 0, align 8
@ZEND_ACC_CONSTANTS_UPDATED = common dso_local global i32 0, align 4
@ZEND_INTERNAL_CLASS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_12__*, %struct.TYPE_11__*)* @do_inherit_class_constant to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_inherit_class_constant(i32* %0, %struct.TYPE_12__* %1, %struct.TYPE_11__* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_12__*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %5, align 8
  store %struct.TYPE_11__* %2, %struct.TYPE_11__** %6, align 8
  %9 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %10 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 1
  %11 = load i32*, i32** %4, align 8
  %12 = call i32* @zend_hash_find_ex(i32* %10, i32* %11, i32 1)
  store i32* %12, i32** %7, align 8
  %13 = load i32*, i32** %7, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %15, label %65

15:                                               ; preds = %3
  %16 = load i32*, i32** %7, align 8
  %17 = call i64 @Z_PTR_P(i32* %16)
  %18 = inttoptr i64 %17 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %18, %struct.TYPE_12__** %8, align 8
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @Z_ACCESS_FLAGS(i32 %21)
  %23 = load i32, i32* @ZEND_ACC_PPP_MASK, align 4
  %24 = and i32 %22, %23
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @Z_ACCESS_FLAGS(i32 %27)
  %29 = load i32, i32* @ZEND_ACC_PPP_MASK, align 4
  %30 = and i32 %28, %29
  %31 = icmp sgt i32 %24, %30
  %32 = zext i1 %31 to i32
  %33 = call i64 @UNEXPECTED(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %64

35:                                               ; preds = %15
  %36 = load i32, i32* @E_COMPILE_ERROR, align 4
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 4
  %39 = load i32*, i32** %38, align 8
  %40 = call i32 @ZSTR_VAL(i32* %39)
  %41 = load i32*, i32** %4, align 8
  %42 = call i32 @ZSTR_VAL(i32* %41)
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @Z_ACCESS_FLAGS(i32 %45)
  %47 = call i32 @zend_visibility_string(i32 %46)
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 3
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = call i32 @ZSTR_VAL(i32* %52)
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @Z_ACCESS_FLAGS(i32 %56)
  %58 = load i32, i32* @ZEND_ACC_PUBLIC, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  %61 = zext i1 %60 to i64
  %62 = select i1 %60, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0)
  %63 = call i32 @zend_error_noreturn(i32 %36, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %40, i32 %42, i32 %47, i32 %53, i8* %62)
  br label %64

64:                                               ; preds = %35, %15
  br label %107

65:                                               ; preds = %3
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @Z_ACCESS_FLAGS(i32 %68)
  %70 = load i32, i32* @ZEND_ACC_PRIVATE, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %106, label %73

73:                                               ; preds = %65
  %74 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i64 @Z_TYPE(i32 %76)
  %78 = load i64, i64* @IS_CONSTANT_AST, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %87

80:                                               ; preds = %73
  %81 = load i32, i32* @ZEND_ACC_CONSTANTS_UPDATED, align 4
  %82 = xor i32 %81, -1
  %83 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = and i32 %85, %82
  store i32 %86, i32* %84, align 8
  br label %87

87:                                               ; preds = %80, %73
  %88 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %89 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* @ZEND_INTERNAL_CLASS, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %100

94:                                               ; preds = %87
  %95 = call %struct.TYPE_12__* @pemalloc(i32 4, i32 1)
  store %struct.TYPE_12__* %95, %struct.TYPE_12__** %8, align 8
  %96 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %97 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %98 = call i32 @memcpy(%struct.TYPE_12__* %96, %struct.TYPE_12__* %97, i32 4)
  %99 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  store %struct.TYPE_12__* %99, %struct.TYPE_12__** %5, align 8
  br label %100

100:                                              ; preds = %94, %87
  %101 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %102 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %101, i32 0, i32 1
  %103 = load i32*, i32** %4, align 8
  %104 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %105 = call i32 @_zend_hash_append_ptr(i32* %102, i32* %103, %struct.TYPE_12__* %104)
  br label %106

106:                                              ; preds = %100, %65
  br label %107

107:                                              ; preds = %106, %64
  ret void
}

declare dso_local i32* @zend_hash_find_ex(i32*, i32*, i32) #1

declare dso_local i64 @Z_PTR_P(i32*) #1

declare dso_local i64 @UNEXPECTED(i32) #1

declare dso_local i32 @Z_ACCESS_FLAGS(i32) #1

declare dso_local i32 @zend_error_noreturn(i32, i8*, i32, i32, i32, i32, i8*) #1

declare dso_local i32 @ZSTR_VAL(i32*) #1

declare dso_local i32 @zend_visibility_string(i32) #1

declare dso_local i64 @Z_TYPE(i32) #1

declare dso_local %struct.TYPE_12__* @pemalloc(i32, i32) #1

declare dso_local i32 @memcpy(%struct.TYPE_12__*, %struct.TYPE_12__*, i32) #1

declare dso_local i32 @_zend_hash_append_ptr(i32*, i32*, %struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
