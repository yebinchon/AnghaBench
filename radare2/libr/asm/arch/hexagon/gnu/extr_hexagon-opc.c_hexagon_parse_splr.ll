; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/arch/hexagon/gnu/extr_hexagon-opc.c_hexagon_parse_splr.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/arch/hexagon/gnu/extr_hexagon-opc.c_hexagon_parse_splr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8* }

@hexagon_gp_regs = common dso_local global i32 0, align 4
@hexagon_gp_regs_count = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@HEXAGON_OPERAND_IS_REGISTER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @hexagon_parse_splr(%struct.TYPE_5__* %0, i32* %1, i32* %2, i8* %3, i64* %4, i32* %5, i8** %6) #0 {
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_5__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i8**, align 8
  %16 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %9, align 8
  store i32* %1, i32** %10, align 8
  store i32* %2, i32** %11, align 8
  store i8* %3, i8** %12, align 8
  store i64* %4, i64** %13, align 8
  store i32* %5, i32** %14, align 8
  store i8** %6, i8*** %15, align 8
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %18 = load i32, i32* @hexagon_gp_regs, align 4
  %19 = load i32, i32* @hexagon_gp_regs_count, align 4
  %20 = call i32 @hexagon_reg_num(%struct.TYPE_5__* %17, i8** %12, i8 signext 114, i32 %18, i32 %19, i32* null, i8 signext 0)
  store i32 %20, i32* %16, align 4
  %21 = load i32, i32* %16, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %61, label %23

23:                                               ; preds = %7
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 0
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp eq i32 %29, 83
  br i1 %30, label %31, label %42

31:                                               ; preds = %23
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 1
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp eq i32 %37, 112
  br i1 %38, label %39, label %42

39:                                               ; preds = %31
  %40 = load i32, i32* %16, align 4
  %41 = icmp ne i32 %40, 29
  br i1 %41, label %61, label %42

42:                                               ; preds = %39, %31, %23
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load i8*, i8** %44, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 0
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp eq i32 %48, 76
  br i1 %49, label %50, label %62

50:                                               ; preds = %42
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = load i8*, i8** %52, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 1
  %55 = load i8, i8* %54, align 1
  %56 = sext i8 %55 to i32
  %57 = icmp eq i32 %56, 114
  br i1 %57, label %58, label %62

58:                                               ; preds = %50
  %59 = load i32, i32* %16, align 4
  %60 = icmp ne i32 %59, 31
  br i1 %60, label %61, label %62

61:                                               ; preds = %58, %39, %7
  store i8* null, i8** %8, align 8
  br label %84

62:                                               ; preds = %58, %50, %42
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %64 = load i32*, i32** %10, align 8
  %65 = load i32*, i32** %11, align 8
  %66 = load i32, i32* %16, align 4
  %67 = load i32, i32* @FALSE, align 4
  %68 = load i32, i32* @FALSE, align 4
  %69 = load i8**, i8*** %15, align 8
  %70 = call i64 @hexagon_encode_operand(%struct.TYPE_5__* %63, i32* %64, i32* %65, i32 %66, i32* null, i32 %67, i32 %68, i8** %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %83

72:                                               ; preds = %62
  %73 = load i32*, i32** %14, align 8
  %74 = icmp ne i32* %73, null
  br i1 %74, label %75, label %78

75:                                               ; preds = %72
  %76 = load i32, i32* @HEXAGON_OPERAND_IS_REGISTER, align 4
  %77 = load i32*, i32** %14, align 8
  store i32 %76, i32* %77, align 4
  br label %78

78:                                               ; preds = %75, %72
  %79 = load i32, i32* %16, align 4
  %80 = sext i32 %79 to i64
  %81 = load i64*, i64** %13, align 8
  store i64 %80, i64* %81, align 8
  %82 = load i8*, i8** %12, align 8
  store i8* %82, i8** %8, align 8
  br label %84

83:                                               ; preds = %62
  store i8* null, i8** %8, align 8
  br label %84

84:                                               ; preds = %83, %78, %61
  %85 = load i8*, i8** %8, align 8
  ret i8* %85
}

declare dso_local i32 @hexagon_reg_num(%struct.TYPE_5__*, i8**, i8 signext, i32, i32, i32*, i8 signext) #1

declare dso_local i64 @hexagon_encode_operand(%struct.TYPE_5__*, i32*, i32*, i32, i32*, i32, i32, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
