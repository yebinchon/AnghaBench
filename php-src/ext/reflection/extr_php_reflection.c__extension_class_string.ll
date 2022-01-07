; ModuleID = '/home/carl/AnghaBench/php-src/ext/reflection/extr_php_reflection.c__extension_class_string.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/reflection/extr_php_reflection.c__extension_class_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64, i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_12__ = type { i32 }

@ZEND_INTERNAL_CLASS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_13__*, i32*, i32*, i8*, %struct.TYPE_12__*, i32*)* @_extension_class_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_extension_class_string(%struct.TYPE_13__* %0, i32* %1, i32* %2, i8* %3, %struct.TYPE_12__* %4, i32* %5) #0 {
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.TYPE_12__*, align 8
  %12 = alloca i32*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i8* %3, i8** %10, align 8
  store %struct.TYPE_12__* %4, %struct.TYPE_12__** %11, align 8
  store i32* %5, i32** %12, align 8
  %13 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %14 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @ZEND_INTERNAL_CLASS, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %56

18:                                               ; preds = %6
  %19 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %22, align 8
  %24 = icmp ne %struct.TYPE_9__* %23, null
  br i1 %24, label %25, label %56

25:                                               ; preds = %18
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @strcasecmp(i32 %32, i32 %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %56, label %38

38:                                               ; preds = %25
  %39 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = load i32*, i32** %8, align 8
  %43 = call i64 @zend_string_equals_ci(i32 %41, i32* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %55

45:                                               ; preds = %38
  %46 = load i32*, i32** %9, align 8
  %47 = call i32 @smart_str_append_printf(i32* %46, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %48 = load i32*, i32** %9, align 8
  %49 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %50 = load i8*, i8** %10, align 8
  %51 = call i32 @_class_string(i32* %48, %struct.TYPE_13__* %49, i32* null, i8* %50)
  %52 = load i32*, i32** %12, align 8
  %53 = load i32, i32* %52, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %52, align 4
  br label %55

55:                                               ; preds = %45, %38
  br label %56

56:                                               ; preds = %55, %25, %18, %6
  ret void
}

declare dso_local i32 @strcasecmp(i32, i32) #1

declare dso_local i64 @zend_string_equals_ci(i32, i32*) #1

declare dso_local i32 @smart_str_append_printf(i32*, i8*) #1

declare dso_local i32 @_class_string(i32*, %struct.TYPE_13__*, i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
