; ModuleID = '/home/carl/AnghaBench/php-src/ext/mysqli/extr_mysqli.c_mysqli_write_property.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/mysqli/extr_mysqli.c_mysqli_write_property.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32* }
%struct.TYPE_6__ = type { i32 (%struct.TYPE_7__*, i32*)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @mysqli_write_property(i32* %0, i32* %1, i32* %2, i8** %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca %struct.TYPE_6__*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i8** %3, i8*** %8, align 8
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %10, align 8
  %11 = load i32*, i32** %5, align 8
  %12 = call %struct.TYPE_7__* @php_mysqli_fetch_object(i32* %11)
  store %struct.TYPE_7__* %12, %struct.TYPE_7__** %9, align 8
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %23

17:                                               ; preds = %4
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = load i32*, i32** %6, align 8
  %22 = call %struct.TYPE_6__* @zend_hash_find_ptr(i32* %20, i32* %21)
  store %struct.TYPE_6__* %22, %struct.TYPE_6__** %10, align 8
  br label %23

23:                                               ; preds = %17, %4
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %25 = icmp ne %struct.TYPE_6__* %24, null
  br i1 %25, label %26, label %33

26:                                               ; preds = %23
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i32 (%struct.TYPE_7__*, i32*)*, i32 (%struct.TYPE_7__*, i32*)** %28, align 8
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %31 = load i32*, i32** %7, align 8
  %32 = call i32 %29(%struct.TYPE_7__* %30, i32* %31)
  br label %39

33:                                               ; preds = %23
  %34 = load i32*, i32** %5, align 8
  %35 = load i32*, i32** %6, align 8
  %36 = load i32*, i32** %7, align 8
  %37 = load i8**, i8*** %8, align 8
  %38 = call i32* @zend_std_write_property(i32* %34, i32* %35, i32* %36, i8** %37)
  store i32* %38, i32** %7, align 8
  br label %39

39:                                               ; preds = %33, %26
  %40 = load i32*, i32** %7, align 8
  ret i32* %40
}

declare dso_local %struct.TYPE_7__* @php_mysqli_fetch_object(i32*) #1

declare dso_local %struct.TYPE_6__* @zend_hash_find_ptr(i32*, i32*) #1

declare dso_local i32* @zend_std_write_property(i32*, i32*, i32*, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
