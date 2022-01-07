; ModuleID = '/home/carl/AnghaBench/php-src/ext/opcache/jit/extr_zend_jit_disasm_x86.c_zend_syms_rotateleft.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/opcache/jit/extr_zend_jit_disasm_x86.c_zend_syms_rotateleft.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_4__*, %struct.TYPE_4__** }

@symbols = common dso_local global %struct.TYPE_4__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*)* @zend_syms_rotateleft to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zend_syms_rotateleft(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca %struct.TYPE_4__*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  %4 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 1
  %6 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %6, i64 1
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  store %struct.TYPE_4__* %8, %struct.TYPE_4__** %3, align 8
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 1
  %11 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %11, i64 0
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 1
  %16 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %16, i64 1
  store %struct.TYPE_4__* %13, %struct.TYPE_4__** %17, align 8
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 1
  %20 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %20, i64 0
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = icmp ne %struct.TYPE_4__* %22, null
  br i1 %23, label %24, label %32

24:                                               ; preds = %1
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  %28 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %28, i64 0
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  store %struct.TYPE_4__* %25, %struct.TYPE_4__** %31, align 8
  br label %32

32:                                               ; preds = %24, %1
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  store %struct.TYPE_4__* %35, %struct.TYPE_4__** %37, align 8
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = icmp eq %struct.TYPE_4__* %40, null
  br i1 %41, label %42, label %44

42:                                               ; preds = %32
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  store %struct.TYPE_4__* %43, %struct.TYPE_4__** @symbols, align 8
  br label %71

44:                                               ; preds = %32
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 1
  %49 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %49, i64 0
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %53 = icmp eq %struct.TYPE_4__* %51, %52
  br i1 %53, label %54, label %62

54:                                               ; preds = %44
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 1
  %60 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %60, i64 0
  store %struct.TYPE_4__* %55, %struct.TYPE_4__** %61, align 8
  br label %70

62:                                               ; preds = %44
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 1
  %68 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %68, i64 1
  store %struct.TYPE_4__* %63, %struct.TYPE_4__** %69, align 8
  br label %70

70:                                               ; preds = %62, %54
  br label %71

71:                                               ; preds = %70, %42
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 1
  %75 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %75, i64 0
  store %struct.TYPE_4__* %72, %struct.TYPE_4__** %76, align 8
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  store %struct.TYPE_4__* %77, %struct.TYPE_4__** %79, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
