; ModuleID = '/home/carl/AnghaBench/php-src/Zend/extr_zend_opcode.c_zend_update_extended_stmts.c'
source_filename = "/home/carl/AnghaBench/php-src/Zend/extr_zend_opcode.c_zend_update_extended_stmts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64, i32 }

@ZEND_EXT_STMT = common dso_local global i64 0, align 8
@ZEND_NOP = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*)* @zend_update_extended_stmts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zend_update_extended_stmts(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  %5 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 1
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  store %struct.TYPE_5__* %7, %struct.TYPE_5__** %3, align 8
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i64 %12
  store %struct.TYPE_5__* %13, %struct.TYPE_5__** %4, align 8
  br label %14

14:                                               ; preds = %62, %36, %1
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %17 = icmp ult %struct.TYPE_5__* %15, %16
  br i1 %17, label %18, label %65

18:                                               ; preds = %14
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @ZEND_EXT_STMT, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %62

24:                                               ; preds = %18
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i64 1
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %28 = icmp ult %struct.TYPE_5__* %26, %27
  br i1 %28, label %29, label %56

29:                                               ; preds = %24
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i64 1
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @ZEND_EXT_STMT, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %43

36:                                               ; preds = %29
  %37 = load i8*, i8** @ZEND_NOP, align 8
  %38 = ptrtoint i8* %37 to i64
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  store i64 %38, i64* %40, align 8
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 1
  store %struct.TYPE_5__* %42, %struct.TYPE_5__** %3, align 8
  br label %14

43:                                               ; preds = %29
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i64 1
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %47 = icmp ult %struct.TYPE_5__* %45, %46
  br i1 %47, label %48, label %55

48:                                               ; preds = %43
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i64 1
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 8
  br label %55

55:                                               ; preds = %48, %43
  br label %61

56:                                               ; preds = %24
  %57 = load i8*, i8** @ZEND_NOP, align 8
  %58 = ptrtoint i8* %57 to i64
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  store i64 %58, i64* %60, align 8
  br label %61

61:                                               ; preds = %56, %55
  br label %62

62:                                               ; preds = %61, %18
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 1
  store %struct.TYPE_5__* %64, %struct.TYPE_5__** %3, align 8
  br label %14

65:                                               ; preds = %14
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
