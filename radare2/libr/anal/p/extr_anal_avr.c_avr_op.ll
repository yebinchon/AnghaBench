; ModuleID = '/home/carl/AnghaBench/radare2/libr/anal/p/extr_anal_avr.c_avr_op.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/anal/p/extr_anal_avr.c_avr_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64, i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_13__ = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"_prog\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"_io\00", align 1
@CPU_CONST_PARAM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"sram_start\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"_sram\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"sram_size\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"_eeprom\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"eeprom_size\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"_page\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*, %struct.TYPE_11__*, i64, i32*, i32, i32)* @avr_op to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @avr_op(%struct.TYPE_12__* %0, %struct.TYPE_11__* %1, i64 %2, i32* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca %struct.TYPE_11__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_13__*, align 8
  %15 = alloca i64, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %8, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %9, align 8
  store i64 %2, i64* %10, align 8
  store i32* %3, i32** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %17 = icmp ne %struct.TYPE_11__* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %6
  store i32 2, i32* %7, align 4
  br label %90

19:                                               ; preds = %6
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %21 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = call %struct.TYPE_13__* @get_cpu_model(i32 %22)
  store %struct.TYPE_13__* %23, %struct.TYPE_13__** %14, align 8
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %79

28:                                               ; preds = %19
  store i64 0, i64* %15, align 8
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* %15, align 8
  %33 = call i32 @r_anal_esil_reg_write(i64 %31, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i64 %32)
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %35 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = shl i32 1, %36
  %38 = sext i32 %37 to i64
  %39 = load i64, i64* %15, align 8
  %40 = add nsw i64 %39, %38
  store i64 %40, i64* %15, align 8
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* %15, align 8
  %45 = call i32 @r_anal_esil_reg_write(i64 %43, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i64 %44)
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %47 = load i32, i32* @CPU_CONST_PARAM, align 4
  %48 = call i32 @const_by_name(%struct.TYPE_13__* %46, i32 %47, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %49 = call i64 @const_get_value(i32 %48)
  %50 = load i64, i64* %15, align 8
  %51 = add nsw i64 %50, %49
  store i64 %51, i64* %15, align 8
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* %15, align 8
  %56 = call i32 @r_anal_esil_reg_write(i64 %54, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i64 %55)
  %57 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %58 = load i32, i32* @CPU_CONST_PARAM, align 4
  %59 = call i32 @const_by_name(%struct.TYPE_13__* %57, i32 %58, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  %60 = call i64 @const_get_value(i32 %59)
  %61 = load i64, i64* %15, align 8
  %62 = add nsw i64 %61, %60
  store i64 %62, i64* %15, align 8
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* %15, align 8
  %67 = call i32 @r_anal_esil_reg_write(i64 %65, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i64 %66)
  %68 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %69 = load i32, i32* @CPU_CONST_PARAM, align 4
  %70 = call i32 @const_by_name(%struct.TYPE_13__* %68, i32 %69, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0))
  %71 = call i64 @const_get_value(i32 %70)
  %72 = load i64, i64* %15, align 8
  %73 = add nsw i64 %72, %71
  store i64 %73, i64* %15, align 8
  %74 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* %15, align 8
  %78 = call i32 @r_anal_esil_reg_write(i64 %76, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i64 %77)
  br label %79

79:                                               ; preds = %28, %19
  %80 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %81 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %82 = load i64, i64* %10, align 8
  %83 = load i32*, i32** %11, align 8
  %84 = load i32, i32* %12, align 4
  %85 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %86 = call i32 @avr_op_analyze(%struct.TYPE_12__* %80, %struct.TYPE_11__* %81, i64 %82, i32* %83, i32 %84, %struct.TYPE_13__* %85)
  %87 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %88 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  store i32 %89, i32* %7, align 4
  br label %90

90:                                               ; preds = %79, %18
  %91 = load i32, i32* %7, align 4
  ret i32 %91
}

declare dso_local %struct.TYPE_13__* @get_cpu_model(i32) #1

declare dso_local i32 @r_anal_esil_reg_write(i64, i8*, i64) #1

declare dso_local i64 @const_get_value(i32) #1

declare dso_local i32 @const_by_name(%struct.TYPE_13__*, i32, i8*) #1

declare dso_local i32 @avr_op_analyze(%struct.TYPE_12__*, %struct.TYPE_11__*, i64, i32*, i32, %struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
