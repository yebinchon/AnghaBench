; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/arch/hexagon/gnu/extr_hexagon-opc.c_hexagon_parse_dreg8.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/arch/hexagon/gnu/extr_hexagon-opc.c_hexagon_parse_dreg8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@hexagon_gp_regs = common dso_local global i32 0, align 4
@hexagon_gp_regs_count = common dso_local global i32 0, align 4
@hexagon_parse_dreg8.buf = internal global [100 x i8] zeroinitializer, align 16
@.str = private unnamed_addr constant [32 x i8] c"invalid odd register number: %d\00", align 1
@hexagon_parse_dreg8.buf.1 = internal global [100 x i8] zeroinitializer, align 16
@.str.2 = private unnamed_addr constant [33 x i8] c"invalid even register number: %d\00", align 1
@hexagon_parse_dreg8.buf.3 = internal global [100 x i8] zeroinitializer, align 16
@.str.4 = private unnamed_addr constant [37 x i8] c"registers must be consecutive: %d:%d\00", align 1
@FALSE = common dso_local global i32 0, align 4
@HEXAGON_OPERAND_IS_PAIR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32*, i32*, i32*, i8*, i64*, i32*, i8**)* @hexagon_parse_dreg8 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @hexagon_parse_dreg8(i32* %0, i32* %1, i32* %2, i8* %3, i64* %4, i32* %5, i8** %6) #0 {
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i8**, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32* %0, i32** %9, align 8
  store i32* %1, i32** %10, align 8
  store i32* %2, i32** %11, align 8
  store i8* %3, i8** %12, align 8
  store i64* %4, i64** %13, align 8
  store i32* %5, i32** %14, align 8
  store i8** %6, i8*** %15, align 8
  %18 = load i32*, i32** %9, align 8
  %19 = load i32, i32* @hexagon_gp_regs, align 4
  %20 = load i32, i32* @hexagon_gp_regs_count, align 4
  %21 = call i32 @hexagon_reg_num(i32* %18, i8** %12, i8 signext 114, i32 %19, i32 %20, i32* null, i8 signext 0)
  store i32 %21, i32* %16, align 4
  %22 = load i32*, i32** %9, align 8
  %23 = load i32, i32* @hexagon_gp_regs, align 4
  %24 = load i32, i32* @hexagon_gp_regs_count, align 4
  %25 = call i32 @hexagon_reg_num(i32* %22, i8** %12, i8 signext 58, i32 %23, i32 %24, i32* null, i8 signext 0)
  store i32 %25, i32* %17, align 4
  %26 = load i32, i32* %16, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %7
  %29 = load i32, i32* %17, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %28, %7
  store i8* null, i8** %8, align 8
  br label %114

32:                                               ; preds = %28
  %33 = load i32, i32* %16, align 4
  %34 = srem i32 %33, 2
  %35 = icmp ne i32 %34, 1
  br i1 %35, label %36, label %44

36:                                               ; preds = %32
  %37 = load i8**, i8*** %15, align 8
  %38 = icmp ne i8** %37, null
  br i1 %38, label %39, label %43

39:                                               ; preds = %36
  %40 = load i32, i32* %16, align 4
  %41 = call i32 (i8*, i8*, i32, ...) @sprintf(i8* getelementptr inbounds ([100 x i8], [100 x i8]* @hexagon_parse_dreg8.buf, i64 0, i64 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %40)
  %42 = load i8**, i8*** %15, align 8
  store i8* getelementptr inbounds ([100 x i8], [100 x i8]* @hexagon_parse_dreg8.buf, i64 0, i64 0), i8** %42, align 8
  br label %43

43:                                               ; preds = %39, %36
  store i8* null, i8** %8, align 8
  br label %114

44:                                               ; preds = %32
  %45 = load i32, i32* %17, align 4
  %46 = srem i32 %45, 2
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %56

48:                                               ; preds = %44
  %49 = load i8**, i8*** %15, align 8
  %50 = icmp ne i8** %49, null
  br i1 %50, label %51, label %55

51:                                               ; preds = %48
  %52 = load i32, i32* %17, align 4
  %53 = call i32 (i8*, i8*, i32, ...) @sprintf(i8* getelementptr inbounds ([100 x i8], [100 x i8]* @hexagon_parse_dreg8.buf.1, i64 0, i64 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %52)
  %54 = load i8**, i8*** %15, align 8
  store i8* getelementptr inbounds ([100 x i8], [100 x i8]* @hexagon_parse_dreg8.buf.1, i64 0, i64 0), i8** %54, align 8
  br label %55

55:                                               ; preds = %51, %48
  store i8* null, i8** %8, align 8
  br label %114

56:                                               ; preds = %44
  %57 = load i32, i32* %16, align 4
  %58 = load i32, i32* %17, align 4
  %59 = add nsw i32 %58, 1
  %60 = icmp ne i32 %57, %59
  br i1 %60, label %61, label %70

61:                                               ; preds = %56
  %62 = load i8**, i8*** %15, align 8
  %63 = icmp ne i8** %62, null
  br i1 %63, label %64, label %69

64:                                               ; preds = %61
  %65 = load i32, i32* %16, align 4
  %66 = load i32, i32* %17, align 4
  %67 = call i32 (i8*, i8*, i32, ...) @sprintf(i8* getelementptr inbounds ([100 x i8], [100 x i8]* @hexagon_parse_dreg8.buf.3, i64 0, i64 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i32 %65, i32 %66)
  %68 = load i8**, i8*** %15, align 8
  store i8* getelementptr inbounds ([100 x i8], [100 x i8]* @hexagon_parse_dreg8.buf.3, i64 0, i64 0), i8** %68, align 8
  br label %69

69:                                               ; preds = %64, %61
  store i8* null, i8** %8, align 8
  br label %114

70:                                               ; preds = %56
  %71 = load i32, i32* %16, align 4
  %72 = icmp slt i32 %71, 1
  br i1 %72, label %76, label %73

73:                                               ; preds = %70
  %74 = load i32, i32* %16, align 4
  %75 = icmp sgt i32 %74, 7
  br i1 %75, label %76, label %82

76:                                               ; preds = %73, %70
  %77 = load i32, i32* %16, align 4
  %78 = icmp slt i32 %77, 17
  br i1 %78, label %91, label %79

79:                                               ; preds = %76
  %80 = load i32, i32* %16, align 4
  %81 = icmp sgt i32 %80, 23
  br i1 %81, label %91, label %82

82:                                               ; preds = %79, %73
  %83 = load i32, i32* %17, align 4
  %84 = icmp sgt i32 %83, 6
  br i1 %84, label %85, label %92

85:                                               ; preds = %82
  %86 = load i32, i32* %17, align 4
  %87 = icmp slt i32 %86, 16
  br i1 %87, label %91, label %88

88:                                               ; preds = %85
  %89 = load i32, i32* %17, align 4
  %90 = icmp sgt i32 %89, 22
  br i1 %90, label %91, label %92

91:                                               ; preds = %88, %85, %79, %76
  store i8* null, i8** %8, align 8
  br label %114

92:                                               ; preds = %88, %82
  %93 = load i32*, i32** %9, align 8
  %94 = load i32*, i32** %10, align 8
  %95 = load i32*, i32** %11, align 8
  %96 = load i32, i32* %17, align 4
  %97 = load i32, i32* @FALSE, align 4
  %98 = load i32, i32* @FALSE, align 4
  %99 = load i8**, i8*** %15, align 8
  %100 = call i64 @hexagon_encode_operand(i32* %93, i32* %94, i32* %95, i32 %96, i32* null, i32 %97, i32 %98, i8** %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %113

102:                                              ; preds = %92
  %103 = load i32*, i32** %14, align 8
  %104 = icmp ne i32* %103, null
  br i1 %104, label %105, label %108

105:                                              ; preds = %102
  %106 = load i32, i32* @HEXAGON_OPERAND_IS_PAIR, align 4
  %107 = load i32*, i32** %14, align 8
  store i32 %106, i32* %107, align 4
  br label %108

108:                                              ; preds = %105, %102
  %109 = load i32, i32* %17, align 4
  %110 = sext i32 %109 to i64
  %111 = load i64*, i64** %13, align 8
  store i64 %110, i64* %111, align 8
  %112 = load i8*, i8** %12, align 8
  store i8* %112, i8** %8, align 8
  br label %114

113:                                              ; preds = %92
  store i8* null, i8** %8, align 8
  br label %114

114:                                              ; preds = %113, %108, %91, %69, %55, %43, %31
  %115 = load i8*, i8** %8, align 8
  ret i8* %115
}

declare dso_local i32 @hexagon_reg_num(i32*, i8**, i8 signext, i32, i32, i32*, i8 signext) #1

declare dso_local i32 @sprintf(i8*, i8*, i32, ...) #1

declare dso_local i64 @hexagon_encode_operand(i32*, i32*, i32*, i32, i32*, i32, i32, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
