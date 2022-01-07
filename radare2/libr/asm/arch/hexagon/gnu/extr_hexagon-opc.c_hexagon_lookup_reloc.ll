; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/arch/hexagon/gnu/extr_hexagon-opc.c_hexagon_lookup_reloc.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/arch/hexagon/gnu/extr_hexagon-opc.c_hexagon_lookup_reloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i64, i64, i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }

@BFD_RELOC_NONE = common dso_local global i64 0, align 8
@hexagon_operand_count = common dso_local global i64 0, align 8
@HEXAGON_OPERAND_IS_KXED = common dso_local global i32 0, align 4
@hexagon_operands = common dso_local global %struct.TYPE_6__* null, align 8
@HEXAGON_OPERAND_IS_IMMEDIATE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_6__* @hexagon_lookup_reloc(i64 %0, i32 %1, %struct.TYPE_7__* %2) #0 {
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store i64 %0, i64* %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_7__* %2, %struct.TYPE_7__** %7, align 8
  %10 = load i64, i64* %5, align 8
  %11 = load i64, i64* @BFD_RELOC_NONE, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %16, label %13

13:                                               ; preds = %3
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %15 = icmp ne %struct.TYPE_7__* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %13, %3
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %4, align 8
  br label %119

17:                                               ; preds = %13
  store i64 0, i64* %9, align 8
  br label %18

18:                                               ; preds = %115, %17
  %19 = load i64, i64* %9, align 8
  %20 = load i64, i64* @hexagon_operand_count, align 8
  %21 = icmp ult i64 %19, %20
  br i1 %21, label %22, label %118

22:                                               ; preds = %18
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* @HEXAGON_OPERAND_IS_KXED, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %100

27:                                               ; preds = %22
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** @hexagon_operands, align 8
  %29 = load i64, i64* %9, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @HEXAGON_OPERAND_IS_IMMEDIATE, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %94

36:                                               ; preds = %27
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = and i32 %39, 129
  switch i32 %40, label %93 [
    i32 129, label %41
    i32 128, label %67
  ]

41:                                               ; preds = %36
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** @hexagon_operands, align 8
  %43 = load i64, i64* %9, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 4
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** @hexagon_operands, align 8
  %48 = load i64, i64* %9, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 4
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @TOLOWER(i32 %51)
  %53 = icmp ne i32 %46, %52
  br i1 %53, label %65, label %54

54:                                               ; preds = %41
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** @hexagon_operands, align 8
  %59 = load i64, i64* %9, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @strstr(i32 %57, i32 %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %66, label %65

65:                                               ; preds = %54, %41
  br label %115

66:                                               ; preds = %54
  br label %93

67:                                               ; preds = %36
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** @hexagon_operands, align 8
  %69 = load i64, i64* %9, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 4
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** @hexagon_operands, align 8
  %74 = load i64, i64* %9, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 4
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @TOUPPER(i32 %77)
  %79 = icmp ne i32 %72, %78
  br i1 %79, label %91, label %80

80:                                               ; preds = %67
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** @hexagon_operands, align 8
  %85 = load i64, i64* %9, align 8
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @strstr(i32 %83, i32 %88)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %92, label %91

91:                                               ; preds = %80, %67
  br label %115

92:                                               ; preds = %80
  br label %93

93:                                               ; preds = %36, %92, %66
  br label %94

94:                                               ; preds = %93, %27
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** @hexagon_operands, align 8
  %96 = load i64, i64* %9, align 8
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  store i64 %99, i64* %8, align 8
  br label %106

100:                                              ; preds = %22
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** @hexagon_operands, align 8
  %102 = load i64, i64* %9, align 8
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 2
  %105 = load i64, i64* %104, align 8
  store i64 %105, i64* %8, align 8
  br label %106

106:                                              ; preds = %100, %94
  %107 = load i64, i64* %8, align 8
  %108 = load i64, i64* %5, align 8
  %109 = icmp eq i64 %107, %108
  br i1 %109, label %110, label %114

110:                                              ; preds = %106
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** @hexagon_operands, align 8
  %112 = load i64, i64* %9, align 8
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i64 %112
  store %struct.TYPE_6__* %113, %struct.TYPE_6__** %4, align 8
  br label %119

114:                                              ; preds = %106
  br label %115

115:                                              ; preds = %114, %91, %65
  %116 = load i64, i64* %9, align 8
  %117 = add i64 %116, 1
  store i64 %117, i64* %9, align 8
  br label %18

118:                                              ; preds = %18
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %4, align 8
  br label %119

119:                                              ; preds = %118, %110, %16
  %120 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  ret %struct.TYPE_6__* %120
}

declare dso_local i32 @TOLOWER(i32) #1

declare dso_local i32 @strstr(i32, i32) #1

declare dso_local i32 @TOUPPER(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
