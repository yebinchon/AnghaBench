; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/arch/hexagon/gnu/extr_hexagon-opc.c_hexagon_extract_modifier_operand.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/arch/hexagon/gnu/extr_hexagon-opc.c_hexagon_extract_modifier_operand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, i32 }

@hexagon_extract_modifier_operand.xx = internal global [100 x i8] zeroinitializer, align 16
@hexagon_control_regs_count = common dso_local global i64 0, align 8
@hexagon_control_regs = common dso_local global %struct.TYPE_2__* null, align 8
@.str = private unnamed_addr constant [29 x i8] c"Illegal modifier operand: %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hexagon_extract_modifier_operand(i32* %0, i32 %1, i8* %2, i32* %3, i8** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i64, align 8
  %13 = alloca [100 x i8], align 16
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i32* %3, i32** %10, align 8
  store i8** %4, i8*** %11, align 8
  %16 = load i32*, i32** %7, align 8
  %17 = load i32, i32* %8, align 4
  %18 = load i8*, i8** %9, align 8
  %19 = getelementptr inbounds [100 x i8], [100 x i8]* %13, i64 0, i64 0
  %20 = load i8**, i8*** %11, align 8
  %21 = call i32 @hexagon_dis_operand(i32* %16, i32 %17, i32 0, i32 0, i8* %18, i8* %19, i8** %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %57

24:                                               ; preds = %5
  store i64 0, i64* %12, align 8
  br label %25

25:                                               ; preds = %50, %24
  %26 = load i64, i64* %12, align 8
  %27 = load i64, i64* @hexagon_control_regs_count, align 8
  %28 = icmp ult i64 %26, %27
  br i1 %28, label %29, label %53

29:                                               ; preds = %25
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** @hexagon_control_regs, align 8
  %31 = load i64, i64* %12, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  store i8* %34, i8** %14, align 8
  %35 = load i8*, i8** %14, align 8
  %36 = call i64 @strlen(i8* %35)
  store i64 %36, i64* %15, align 8
  %37 = getelementptr inbounds [100 x i8], [100 x i8]* %13, i64 0, i64 0
  %38 = load i8*, i8** %14, align 8
  %39 = load i64, i64* %15, align 8
  %40 = call i32 @r_str_ncasecmp(i8* %37, i8* %38, i64 %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %49, label %42

42:                                               ; preds = %29
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** @hexagon_control_regs, align 8
  %44 = load i64, i64* %12, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = load i32*, i32** %10, align 8
  store i32 %47, i32* %48, align 4
  store i32 1, i32* %6, align 4
  br label %57

49:                                               ; preds = %29
  br label %50

50:                                               ; preds = %49
  %51 = load i64, i64* %12, align 8
  %52 = add i64 %51, 1
  store i64 %52, i64* %12, align 8
  br label %25

53:                                               ; preds = %25
  %54 = getelementptr inbounds [100 x i8], [100 x i8]* %13, i64 0, i64 0
  %55 = call i32 @sprintf(i8* getelementptr inbounds ([100 x i8], [100 x i8]* @hexagon_extract_modifier_operand.xx, i64 0, i64 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* %54)
  %56 = load i8**, i8*** %11, align 8
  store i8* getelementptr inbounds ([100 x i8], [100 x i8]* @hexagon_extract_modifier_operand.xx, i64 0, i64 0), i8** %56, align 8
  store i32 0, i32* %6, align 4
  br label %57

57:                                               ; preds = %53, %42, %23
  %58 = load i32, i32* %6, align 4
  ret i32 %58
}

declare dso_local i32 @hexagon_dis_operand(i32*, i32, i32, i32, i8*, i8*, i8**) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @r_str_ncasecmp(i8*, i8*, i64) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
