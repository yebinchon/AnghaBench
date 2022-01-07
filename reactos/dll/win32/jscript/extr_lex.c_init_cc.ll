; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_lex.c_init_cc.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_lex.c_init_cc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32* }

@TRUE = common dso_local global i32 0, align 4
@E_OUTOFMEMORY = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i32] [i32 95, i32 106, i32 115, i32 99, i32 114, i32 105, i32 112, i32 116, i32 0], align 4
@.str.1 = private unnamed_addr constant [7 x i32] [i32 95, i32 119, i32 105, i32 110, i32 54, i32 52, i32 0], align 4
@.str.2 = private unnamed_addr constant [7 x i32] [i32 95, i32 97, i32 109, i32 100, i32 54, i32 52, i32 0], align 4
@.str.3 = private unnamed_addr constant [17 x i32] [i32 95, i32 106, i32 115, i32 99, i32 114, i32 105, i32 112, i32 116, i32 95, i32 118, i32 101, i32 114, i32 115, i32 105, i32 111, i32 110, i32 0], align 4
@JSCRIPT_MAJOR_VERSION = common dso_local global i64 0, align 8
@JSCRIPT_MINOR_VERSION = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [15 x i32] [i32 95, i32 106, i32 115, i32 99, i32 114, i32 105, i32 112, i32 116, i32 95, i32 98, i32 117, i32 105, i32 108, i32 100, i32 0], align 4
@JSCRIPT_BUILD_VERSION = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*)* @init_cc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_cc(%struct.TYPE_10__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  %5 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %6 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 0
  %7 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 0
  %9 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %10 = icmp ne %struct.TYPE_11__* %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i32, i32* @TRUE, align 4
  store i32 %12, i32* %2, align 4
  br label %74

13:                                               ; preds = %1
  %14 = call %struct.TYPE_11__* @heap_alloc(i32 8)
  store %struct.TYPE_11__* %14, %struct.TYPE_11__** %4, align 8
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %16 = icmp ne %struct.TYPE_11__* %15, null
  br i1 %16, label %22, label %17

17:                                               ; preds = %13
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %19 = load i32, i32* @E_OUTOFMEMORY, align 4
  %20 = call i32 @lex_error(%struct.TYPE_10__* %18, i32 %19)
  %21 = load i32, i32* @FALSE, align 4
  store i32 %21, i32* %2, align 4
  br label %74

22:                                               ; preds = %13
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 0
  store i32* null, i32** %24, align 8
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %26 = load i32, i32* @TRUE, align 4
  %27 = call i32 @ccval_bool(i32 %26)
  %28 = call i32 @new_cc_var(%struct.TYPE_11__* %25, i8* bitcast ([9 x i32]* @.str to i8*), i32 -1, i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %60

30:                                               ; preds = %22
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %32 = load i32, i32* @TRUE, align 4
  %33 = call i32 @ccval_bool(i32 %32)
  %34 = call i32 @new_cc_var(%struct.TYPE_11__* %31, i8* bitcast ([7 x i32]* @.str.1 to i8*), i32 -1, i32 %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %60

36:                                               ; preds = %30
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %38 = load i32, i32* @TRUE, align 4
  %39 = call i32 @ccval_bool(i32 %38)
  %40 = call i32 @new_cc_var(%struct.TYPE_11__* %37, i8* bitcast ([7 x i32]* @.str.2 to i8*), i32 -1, i32 %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %60

42:                                               ; preds = %36
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %44 = load i64, i64* @JSCRIPT_MAJOR_VERSION, align 8
  %45 = sitofp i64 %44 to double
  %46 = load i64, i64* @JSCRIPT_MINOR_VERSION, align 8
  %47 = sitofp i64 %46 to double
  %48 = fdiv double %47, 1.000000e+01
  %49 = fadd double %45, %48
  %50 = fptosi double %49 to i64
  %51 = call i32 @ccval_num(i64 %50)
  %52 = call i32 @new_cc_var(%struct.TYPE_11__* %43, i8* bitcast ([17 x i32]* @.str.3 to i8*), i32 -1, i32 %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %42
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %56 = load i64, i64* @JSCRIPT_BUILD_VERSION, align 8
  %57 = call i32 @ccval_num(i64 %56)
  %58 = call i32 @new_cc_var(%struct.TYPE_11__* %55, i8* bitcast ([15 x i32]* @.str.4 to i8*), i32 -1, i32 %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %67, label %60

60:                                               ; preds = %54, %42, %36, %30, %22
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %62 = call i32 @release_cc(%struct.TYPE_11__* %61)
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %64 = load i32, i32* @E_OUTOFMEMORY, align 4
  %65 = call i32 @lex_error(%struct.TYPE_10__* %63, i32 %64)
  %66 = load i32, i32* @FALSE, align 4
  store i32 %66, i32* %2, align 4
  br label %74

67:                                               ; preds = %54
  %68 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 0
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 0
  store %struct.TYPE_11__* %68, %struct.TYPE_11__** %72, align 8
  %73 = load i32, i32* @TRUE, align 4
  store i32 %73, i32* %2, align 4
  br label %74

74:                                               ; preds = %67, %60, %17, %11
  %75 = load i32, i32* %2, align 4
  ret i32 %75
}

declare dso_local %struct.TYPE_11__* @heap_alloc(i32) #1

declare dso_local i32 @lex_error(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @new_cc_var(%struct.TYPE_11__*, i8*, i32, i32) #1

declare dso_local i32 @ccval_bool(i32) #1

declare dso_local i32 @ccval_num(i64) #1

declare dso_local i32 @release_cc(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
