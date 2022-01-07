; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/arch/hexagon/gnu/extr_hexagon-opc.c_hexagon_parse_sreg.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/arch/hexagon/gnu/extr_hexagon-opc.c_hexagon_parse_sreg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i8* }
%struct.TYPE_7__ = type { i32 }

@hexagon_parse_sreg.buf = internal global [150 x i8] zeroinitializer, align 16
@hexagon_supervisor_regs = common dso_local global %struct.TYPE_8__* null, align 8
@hexagon_supervisor_regs_count = common dso_local global i32 0, align 4
@hexagon_verify_hw = common dso_local global i32 0, align 4
@HEXAGON_OPERAND_IS_WRITE = common dso_local global i32 0, align 4
@HEXAGON_REG_IS_READONLY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"cannot write to read-only register `%s'.\00", align 1
@HEXAGON_OPERAND_IS_INVALID = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@HEXAGON_OPERAND_IS_SYSTEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_7__*, i32*, i32*, i8*, i64*, i32*, i8**)* @hexagon_parse_sreg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @hexagon_parse_sreg(%struct.TYPE_7__* %0, i32* %1, i32* %2, i8* %3, i64* %4, i32* %5, i8** %6) #0 {
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i8**, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %9, align 8
  store i32* %1, i32** %10, align 8
  store i32* %2, i32** %11, align 8
  store i8* %3, i8** %12, align 8
  store i64* %4, i64** %13, align 8
  store i32* %5, i32** %14, align 8
  store i8** %6, i8*** %15, align 8
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** @hexagon_supervisor_regs, align 8
  %20 = load i32, i32* @hexagon_supervisor_regs_count, align 4
  %21 = call i32 @hexagon_reg_num(%struct.TYPE_7__* %18, i8** %12, i8 signext 0, %struct.TYPE_8__* %19, i32 %20, i64* %16, i8 signext 0)
  store i32 %21, i32* %17, align 4
  %22 = load i32, i32* %17, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %7
  store i8* null, i8** %8, align 8
  br label %94

25:                                               ; preds = %7
  %26 = load i32*, i32** %14, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %28, label %30

28:                                               ; preds = %25
  %29 = load i32*, i32** %14, align 8
  store i32 0, i32* %29, align 4
  br label %30

30:                                               ; preds = %28, %25
  %31 = load i32, i32* @hexagon_verify_hw, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %70, label %33

33:                                               ; preds = %30
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @HEXAGON_OPERAND_IS_WRITE, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %69

40:                                               ; preds = %33
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** @hexagon_supervisor_regs, align 8
  %42 = load i64, i64* %16, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @HEXAGON_REG_IS_READONLY, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %69

49:                                               ; preds = %40
  %50 = load i8**, i8*** %15, align 8
  %51 = icmp ne i8** %50, null
  br i1 %51, label %52, label %60

52:                                               ; preds = %49
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** @hexagon_supervisor_regs, align 8
  %54 = load i64, i64* %16, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 1
  %57 = load i8*, i8** %56, align 8
  %58 = call i32 @sprintf(i8* getelementptr inbounds ([150 x i8], [150 x i8]* @hexagon_parse_sreg.buf, i64 0, i64 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i8* %57)
  %59 = load i8**, i8*** %15, align 8
  store i8* getelementptr inbounds ([150 x i8], [150 x i8]* @hexagon_parse_sreg.buf, i64 0, i64 0), i8** %59, align 8
  br label %60

60:                                               ; preds = %52, %49
  %61 = load i32*, i32** %14, align 8
  %62 = icmp ne i32* %61, null
  br i1 %62, label %63, label %68

63:                                               ; preds = %60
  %64 = load i32, i32* @HEXAGON_OPERAND_IS_INVALID, align 4
  %65 = load i32*, i32** %14, align 8
  %66 = load i32, i32* %65, align 4
  %67 = or i32 %66, %64
  store i32 %67, i32* %65, align 4
  br label %68

68:                                               ; preds = %63, %60
  br label %69

69:                                               ; preds = %68, %40, %33
  br label %70

70:                                               ; preds = %69, %30
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %72 = load i32*, i32** %10, align 8
  %73 = load i32*, i32** %11, align 8
  %74 = load i32, i32* %17, align 4
  %75 = load i32, i32* @FALSE, align 4
  %76 = load i32, i32* @FALSE, align 4
  %77 = load i8**, i8*** %15, align 8
  %78 = call i64 @hexagon_encode_operand(%struct.TYPE_7__* %71, i32* %72, i32* %73, i32 %74, i32* null, i32 %75, i32 %76, i8** %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %93

80:                                               ; preds = %70
  %81 = load i32*, i32** %14, align 8
  %82 = icmp ne i32* %81, null
  br i1 %82, label %83, label %88

83:                                               ; preds = %80
  %84 = load i32, i32* @HEXAGON_OPERAND_IS_SYSTEM, align 4
  %85 = load i32*, i32** %14, align 8
  %86 = load i32, i32* %85, align 4
  %87 = or i32 %86, %84
  store i32 %87, i32* %85, align 4
  br label %88

88:                                               ; preds = %83, %80
  %89 = load i32, i32* %17, align 4
  %90 = sext i32 %89 to i64
  %91 = load i64*, i64** %13, align 8
  store i64 %90, i64* %91, align 8
  %92 = load i8*, i8** %12, align 8
  store i8* %92, i8** %8, align 8
  br label %94

93:                                               ; preds = %70
  store i8* null, i8** %8, align 8
  br label %94

94:                                               ; preds = %93, %88, %24
  %95 = load i8*, i8** %8, align 8
  ret i8* %95
}

declare dso_local i32 @hexagon_reg_num(%struct.TYPE_7__*, i8**, i8 signext, %struct.TYPE_8__*, i32, i64*, i8 signext) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*) #1

declare dso_local i64 @hexagon_encode_operand(%struct.TYPE_7__*, i32*, i32*, i32, i32*, i32, i32, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
