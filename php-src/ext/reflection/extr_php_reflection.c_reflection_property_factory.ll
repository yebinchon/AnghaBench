; ModuleID = '/home/carl/AnghaBench/php-src/ext/reflection/extr_php_reflection.c_reflection_property_factory.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/reflection/extr_php_reflection.c_reflection_property_factory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32* }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32* }
%struct.TYPE_12__ = type { i64, %struct.TYPE_11__*, i32, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32, %struct.TYPE_10__* }

@reflection_property_ptr = common dso_local global i32 0, align 4
@REF_TYPE_PROPERTY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_11__*, i32*, %struct.TYPE_10__*, i32*)* @reflection_property_factory to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @reflection_property_factory(%struct.TYPE_11__* %0, i32* %1, %struct.TYPE_10__* %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_12__*, align 8
  %10 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.TYPE_10__* %2, %struct.TYPE_10__** %7, align 8
  store i32* %3, i32** %8, align 8
  %11 = load i32, i32* @reflection_property_ptr, align 4
  %12 = load i32*, i32** %8, align 8
  %13 = call i32 @reflection_instantiate(i32 %11, i32* %12)
  %14 = load i32*, i32** %8, align 8
  %15 = call %struct.TYPE_12__* @Z_REFLECTION_P(i32* %14)
  store %struct.TYPE_12__* %15, %struct.TYPE_12__** %9, align 8
  %16 = call i64 @emalloc(i32 16)
  %17 = inttoptr i64 %16 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %17, %struct.TYPE_13__** %10, align 8
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %19 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %20 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 1
  store %struct.TYPE_10__* %18, %struct.TYPE_10__** %20, align 8
  %21 = load i32*, i32** %6, align 8
  %22 = call i32 @zend_string_copy(i32* %21)
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %24 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 8
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 3
  store %struct.TYPE_13__* %25, %struct.TYPE_13__** %27, align 8
  %28 = load i32, i32* @REF_TYPE_PROPERTY, align 4
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 2
  store i32 %28, i32* %30, align 8
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 1
  store %struct.TYPE_11__* %31, %struct.TYPE_11__** %33, align 8
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 0
  store i64 0, i64* %35, align 8
  %36 = load i32*, i32** %8, align 8
  %37 = call i32 @reflection_prop_name(i32* %36)
  %38 = load i32*, i32** %6, align 8
  %39 = call i32 @ZVAL_STR_COPY(i32 %37, i32* %38)
  %40 = load i32*, i32** %8, align 8
  %41 = call i32 @reflection_prop_class(i32* %40)
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %43 = icmp ne %struct.TYPE_10__* %42, null
  br i1 %43, label %44, label %50

44:                                               ; preds = %4
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  br label %54

50:                                               ; preds = %4
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  br label %54

54:                                               ; preds = %50, %44
  %55 = phi i32* [ %49, %44 ], [ %53, %50 ]
  %56 = call i32 @ZVAL_STR_COPY(i32 %41, i32* %55)
  ret void
}

declare dso_local i32 @reflection_instantiate(i32, i32*) #1

declare dso_local %struct.TYPE_12__* @Z_REFLECTION_P(i32*) #1

declare dso_local i64 @emalloc(i32) #1

declare dso_local i32 @zend_string_copy(i32*) #1

declare dso_local i32 @ZVAL_STR_COPY(i32, i32*) #1

declare dso_local i32 @reflection_prop_name(i32*) #1

declare dso_local i32 @reflection_prop_class(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
