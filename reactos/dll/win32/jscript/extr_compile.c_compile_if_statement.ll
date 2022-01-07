; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_compile.c_compile_if_statement.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_compile.c_compile_if_statement.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i64, i64, i32 }

@TRUE = common dso_local global i32 0, align 4
@OP_jmp_z = common dso_local global i32 0, align 4
@E_OUTOFMEMORY = common dso_local global i32 0, align 4
@OP_jmp = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, %struct.TYPE_9__*)* @compile_if_statement to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @compile_if_statement(%struct.TYPE_10__* %0, %struct.TYPE_9__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %5, align 8
  %9 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @TRUE, align 4
  %14 = call i32 @compile_expression(%struct.TYPE_10__* %9, i32 %12, i32 %13)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = call i64 @FAILED(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i32, i32* %7, align 4
  store i32 %19, i32* %3, align 4
  br label %85

20:                                               ; preds = %2
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %22 = load i32, i32* @OP_jmp_z, align 4
  %23 = call i32 @push_instr(%struct.TYPE_10__* %21, i32 %22)
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %20
  %27 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %27, i32* %3, align 4
  br label %85

28:                                               ; preds = %20
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = call i32 @compile_statement(%struct.TYPE_10__* %29, i32* null, i64 %32)
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %7, align 4
  %35 = call i64 @FAILED(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %28
  %38 = load i32, i32* %7, align 4
  store i32 %38, i32* %3, align 4
  br label %85

39:                                               ; preds = %28
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %76

44:                                               ; preds = %39
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %46 = load i32, i32* @OP_jmp, align 4
  %47 = call i32 @push_instr(%struct.TYPE_10__* %45, i32 %46)
  store i32 %47, i32* %8, align 4
  %48 = load i32, i32* %8, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %52, label %50

50:                                               ; preds = %44
  %51 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %51, i32* %3, align 4
  br label %85

52:                                               ; preds = %44
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %54 = load i32, i32* %6, align 4
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @set_arg_uint(%struct.TYPE_10__* %53, i32 %54, i32 %57)
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = call i32 @compile_statement(%struct.TYPE_10__* %59, i32* null, i64 %62)
  store i32 %63, i32* %7, align 4
  %64 = load i32, i32* %7, align 4
  %65 = call i64 @FAILED(i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %52
  %68 = load i32, i32* %7, align 4
  store i32 %68, i32* %3, align 4
  br label %85

69:                                               ; preds = %52
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %71 = load i32, i32* %8, align 4
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @set_arg_uint(%struct.TYPE_10__* %70, i32 %71, i32 %74)
  br label %83

76:                                               ; preds = %39
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %78 = load i32, i32* %6, align 4
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @set_arg_uint(%struct.TYPE_10__* %77, i32 %78, i32 %81)
  br label %83

83:                                               ; preds = %76, %69
  %84 = load i32, i32* @S_OK, align 4
  store i32 %84, i32* %3, align 4
  br label %85

85:                                               ; preds = %83, %67, %50, %37, %26, %18
  %86 = load i32, i32* %3, align 4
  ret i32 %86
}

declare dso_local i32 @compile_expression(%struct.TYPE_10__*, i32, i32) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @push_instr(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @compile_statement(%struct.TYPE_10__*, i32*, i64) #1

declare dso_local i32 @set_arg_uint(%struct.TYPE_10__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
