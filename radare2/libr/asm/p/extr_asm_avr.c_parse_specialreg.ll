; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/p/extr_asm_avr.c_parse_specialreg.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/p/extr_asm_avr.c_parse_specialreg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@REGS_TABLE = common dso_local global i32 0, align 4
@RegsTable = common dso_local global %struct.TYPE_2__* null, align 8
@OPERAND_YPQ = common dso_local global i32 0, align 4
@OPERAND_ZPQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @parse_specialreg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_specialreg(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = call i32 @strlen(i8* %6)
  store i32 %7, i32* %3, align 4
  store i32 -1, i32* %5, align 4
  %8 = load i32, i32* %3, align 4
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %10, label %103

10:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %11

11:                                               ; preds = %33, %10
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @REGS_TABLE, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %36

15:                                               ; preds = %11
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** @RegsTable, align 8
  %17 = load i32, i32* %4, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load i8*, i8** %2, align 8
  %23 = call i32 @strncmp(i32 %21, i8* %22, i32 4)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %32, label %25

25:                                               ; preds = %15
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** @RegsTable, align 8
  %27 = load i32, i32* %4, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %5, align 4
  br label %36

32:                                               ; preds = %15
  br label %33

33:                                               ; preds = %32
  %34 = load i32, i32* %4, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %4, align 4
  br label %11

36:                                               ; preds = %25, %11
  %37 = load i32, i32* %5, align 4
  %38 = icmp eq i32 %37, -1
  br i1 %38, label %39, label %69

39:                                               ; preds = %36
  %40 = load i8*, i8** %2, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 1
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp eq i32 %43, 43
  br i1 %44, label %45, label %69

45:                                               ; preds = %39
  %46 = load i8*, i8** %2, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 0
  %48 = load i8, i8* %47, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp eq i32 %49, 121
  br i1 %50, label %51, label %56

51:                                               ; preds = %45
  %52 = load i32, i32* %3, align 4
  %53 = icmp sgt i32 %52, 2
  br i1 %53, label %54, label %56

54:                                               ; preds = %51
  %55 = load i32, i32* @OPERAND_YPQ, align 4
  store i32 %55, i32* %5, align 4
  br label %68

56:                                               ; preds = %51, %45
  %57 = load i8*, i8** %2, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 0
  %59 = load i8, i8* %58, align 1
  %60 = sext i8 %59 to i32
  %61 = icmp eq i32 %60, 122
  br i1 %61, label %62, label %67

62:                                               ; preds = %56
  %63 = load i32, i32* %3, align 4
  %64 = icmp sgt i32 %63, 2
  br i1 %64, label %65, label %67

65:                                               ; preds = %62
  %66 = load i32, i32* @OPERAND_ZPQ, align 4
  store i32 %66, i32* %5, align 4
  br label %67

67:                                               ; preds = %65, %62, %56
  br label %68

68:                                               ; preds = %67, %54
  br label %69

69:                                               ; preds = %68, %39, %36
  %70 = load i32, i32* %5, align 4
  %71 = icmp eq i32 %70, -1
  br i1 %71, label %72, label %102

72:                                               ; preds = %69
  %73 = load i8*, i8** %2, align 8
  %74 = getelementptr inbounds i8, i8* %73, i64 2
  %75 = load i8, i8* %74, align 1
  %76 = sext i8 %75 to i32
  %77 = icmp eq i32 %76, 43
  br i1 %77, label %78, label %102

78:                                               ; preds = %72
  %79 = load i8*, i8** %2, align 8
  %80 = getelementptr inbounds i8, i8* %79, i64 0
  %81 = load i8, i8* %80, align 1
  %82 = sext i8 %81 to i32
  %83 = icmp eq i32 %82, 121
  br i1 %83, label %84, label %89

84:                                               ; preds = %78
  %85 = load i32, i32* %3, align 4
  %86 = icmp sgt i32 %85, 2
  br i1 %86, label %87, label %89

87:                                               ; preds = %84
  %88 = load i32, i32* @OPERAND_YPQ, align 4
  store i32 %88, i32* %5, align 4
  br label %101

89:                                               ; preds = %84, %78
  %90 = load i8*, i8** %2, align 8
  %91 = getelementptr inbounds i8, i8* %90, i64 0
  %92 = load i8, i8* %91, align 1
  %93 = sext i8 %92 to i32
  %94 = icmp eq i32 %93, 122
  br i1 %94, label %95, label %100

95:                                               ; preds = %89
  %96 = load i32, i32* %3, align 4
  %97 = icmp sgt i32 %96, 2
  br i1 %97, label %98, label %100

98:                                               ; preds = %95
  %99 = load i32, i32* @OPERAND_ZPQ, align 4
  store i32 %99, i32* %5, align 4
  br label %100

100:                                              ; preds = %98, %95, %89
  br label %101

101:                                              ; preds = %100, %87
  br label %102

102:                                              ; preds = %101, %72, %69
  br label %103

103:                                              ; preds = %102, %1
  %104 = load i32, i32* %5, align 4
  ret i32 %104
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @strncmp(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
