; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/p/extr_asm_tms320.c_tms320_disassemble.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/p/extr_asm_tms320.c_tms320_disassemble.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i8* }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_11__ = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"c54x\00", align 1
@engine = common dso_local global %struct.TYPE_13__ zeroinitializer, align 8
@TMS320_F_CPU_C54X = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"c55x+\00", align 1
@TMS320_F_CPU_C55X_PLUS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"c55x\00", align 1
@TMS320_F_CPU_C55X = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [16 x i8] c"unknown asm.cpu\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*, %struct.TYPE_11__*, i32*, i32)* @tms320_disassemble to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tms320_disassemble(%struct.TYPE_12__* %0, %struct.TYPE_11__* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %6, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %10 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %11 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %23

14:                                               ; preds = %4
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = call i64 @r_str_casecmp(i64 %17, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %14
  %21 = load i32, i32* @TMS320_F_CPU_C54X, align 4
  %22 = call i32 @tms320_f_set_cpu(%struct.TYPE_13__* @engine, i32 %21)
  br label %58

23:                                               ; preds = %14, %4
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %37

28:                                               ; preds = %23
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = call i64 @r_str_casecmp(i64 %31, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %28
  %35 = load i32, i32* @TMS320_F_CPU_C55X_PLUS, align 4
  %36 = call i32 @tms320_f_set_cpu(%struct.TYPE_13__* @engine, i32 %35)
  br label %57

37:                                               ; preds = %28, %23
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %51

42:                                               ; preds = %37
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = call i64 @r_str_casecmp(i64 %45, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %42
  %49 = load i32, i32* @TMS320_F_CPU_C55X, align 4
  %50 = call i32 @tms320_f_set_cpu(%struct.TYPE_13__* @engine, i32 %49)
  br label %56

51:                                               ; preds = %42, %37
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %53 = call i32 @r_asm_op_set_asm(%struct.TYPE_11__* %52, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 0
  store i32 -1, i32* %55, align 4
  store i32 -1, i32* %5, align 4
  br label %70

56:                                               ; preds = %48
  br label %57

57:                                               ; preds = %56, %34
  br label %58

58:                                               ; preds = %57, %20
  %59 = load i32*, i32** %8, align 8
  %60 = load i32, i32* %9, align 4
  %61 = call i32 @tms320_dasm(%struct.TYPE_13__* @engine, i32* %59, i32 %60)
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 4
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %65 = load i8*, i8** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @engine, i32 0, i32 0), align 8
  %66 = call i32 @r_asm_op_set_asm(%struct.TYPE_11__* %64, i8* %65)
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  store i32 %69, i32* %5, align 4
  br label %70

70:                                               ; preds = %58, %51
  %71 = load i32, i32* %5, align 4
  ret i32 %71
}

declare dso_local i64 @r_str_casecmp(i64, i8*) #1

declare dso_local i32 @tms320_f_set_cpu(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @r_asm_op_set_asm(%struct.TYPE_11__*, i8*) #1

declare dso_local i32 @tms320_dasm(%struct.TYPE_13__*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
