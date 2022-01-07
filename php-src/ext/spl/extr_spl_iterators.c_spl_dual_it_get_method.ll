; ModuleID = '/home/carl/AnghaBench/php-src/ext/spl/extr_spl_iterators.c_spl_dual_it_get_method.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/spl/extr_spl_iterators.c_spl_dual_it_get_method.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { {}* }
%struct.TYPE_18__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_17__**, i32*, i32*)* @spl_dual_it_get_method to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @spl_dual_it_get_method(%struct.TYPE_17__** %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_17__**, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_18__*, align 8
  store %struct.TYPE_17__** %0, %struct.TYPE_17__*** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %9 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %4, align 8
  %10 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %11 = call %struct.TYPE_18__* @spl_dual_it_from_obj(%struct.TYPE_17__* %10)
  store %struct.TYPE_18__* %11, %struct.TYPE_18__** %8, align 8
  %12 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %4, align 8
  %13 = load i32*, i32** %5, align 8
  %14 = load i32*, i32** %6, align 8
  %15 = call i32* @zend_std_get_method(%struct.TYPE_17__** %12, i32* %13, i32* %14)
  store i32* %15, i32** %7, align 8
  %16 = load i32*, i32** %7, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %69, label %18

18:                                               ; preds = %3
  %19 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %20 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %20, i32 0, i32 1
  %22 = load %struct.TYPE_14__*, %struct.TYPE_14__** %21, align 8
  %23 = icmp ne %struct.TYPE_14__* %22, null
  br i1 %23, label %24, label %69

24:                                               ; preds = %18
  %25 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %26, i32 0, i32 1
  %28 = load %struct.TYPE_14__*, %struct.TYPE_14__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %28, i32 0, i32 0
  %30 = load i32*, i32** %5, align 8
  %31 = call i32* @zend_hash_find_ptr(i32* %29, i32* %30)
  store i32* %31, i32** %7, align 8
  %32 = icmp eq i32* %31, null
  br i1 %32, label %33, label %61

33:                                               ; preds = %24
  %34 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call %struct.TYPE_13__* @Z_OBJ_HT(i32 %37)
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %60

42:                                               ; preds = %33
  %43 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call %struct.TYPE_17__* @Z_OBJ(i32 %46)
  %48 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %4, align 8
  store %struct.TYPE_17__* %47, %struct.TYPE_17__** %48, align 8
  %49 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %4, align 8
  %50 = load %struct.TYPE_17__*, %struct.TYPE_17__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_15__*, %struct.TYPE_15__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %52, i32 0, i32 0
  %54 = bitcast {}** %53 to i32* (%struct.TYPE_17__**, i32*, i32*)**
  %55 = load i32* (%struct.TYPE_17__**, i32*, i32*)*, i32* (%struct.TYPE_17__**, i32*, i32*)** %54, align 8
  %56 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %4, align 8
  %57 = load i32*, i32** %5, align 8
  %58 = load i32*, i32** %6, align 8
  %59 = call i32* %55(%struct.TYPE_17__** %56, i32* %57, i32* %58)
  store i32* %59, i32** %7, align 8
  br label %60

60:                                               ; preds = %42, %33
  br label %68

61:                                               ; preds = %24
  %62 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %63 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = call %struct.TYPE_17__* @Z_OBJ(i32 %65)
  %67 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %4, align 8
  store %struct.TYPE_17__* %66, %struct.TYPE_17__** %67, align 8
  br label %68

68:                                               ; preds = %61, %60
  br label %69

69:                                               ; preds = %68, %18, %3
  %70 = load i32*, i32** %7, align 8
  ret i32* %70
}

declare dso_local %struct.TYPE_18__* @spl_dual_it_from_obj(%struct.TYPE_17__*) #1

declare dso_local i32* @zend_std_get_method(%struct.TYPE_17__**, i32*, i32*) #1

declare dso_local i32* @zend_hash_find_ptr(i32*, i32*) #1

declare dso_local %struct.TYPE_13__* @Z_OBJ_HT(i32) #1

declare dso_local %struct.TYPE_17__* @Z_OBJ(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
