; ModuleID = '/home/carl/AnghaBench/radare2/libr/anal/p/extr_anal_ebc.c_ebc_op.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/anal/p/extr_anal_ebc.c_ebc_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i8*, i32 }

@EBC_OPCODE_MASK = common dso_local global i32 0, align 4
@R_ANAL_OP_TYPE_MOV = common dso_local global i8* null, align 8
@R_ANAL_OP_TYPE_RET = common dso_local global i8* null, align 8
@R_ANAL_OP_TYPE_CMP = common dso_local global i8* null, align 8
@R_ANAL_OP_TYPE_SHR = common dso_local global i8* null, align 8
@R_ANAL_OP_TYPE_SHL = common dso_local global i8* null, align 8
@R_ANAL_OP_TYPE_OR = common dso_local global i8* null, align 8
@R_ANAL_OP_TYPE_XOR = common dso_local global i8* null, align 8
@R_ANAL_OP_TYPE_MUL = common dso_local global i8* null, align 8
@R_ANAL_OP_TYPE_PUSH = common dso_local global i8* null, align 8
@R_ANAL_OP_TYPE_POP = common dso_local global i8* null, align 8
@R_ANAL_OP_TYPE_AND = common dso_local global i8* null, align 8
@R_ANAL_OP_TYPE_ADD = common dso_local global i8* null, align 8
@R_ANAL_OP_TYPE_SUB = common dso_local global i8* null, align 8
@R_ANAL_OP_TYPE_SWI = common dso_local global i8* null, align 8
@R_ANAL_OP_TYPE_UNK = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_7__*, i32, i32*, i32, i32)* @ebc_op to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ebc_op(i32* %0, %struct.TYPE_7__* %1, i32 %2, i32* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32* %3, i32** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %17 = load i32*, i32** %11, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @EBC_OPCODE_MASK, align 4
  %21 = and i32 %19, %20
  store i32 %21, i32* %16, align 4
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %23 = icmp ne %struct.TYPE_7__* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %6
  store i32 2, i32* %7, align 4
  br label %130

25:                                               ; preds = %6
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %27 = call i32 @memset(%struct.TYPE_7__* %26, i32 0, i32 40)
  %28 = load i32, i32* %10, align 4
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 6
  store i32 %28, i32* %30, align 8
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 1
  store i32 -1, i32* %32, align 4
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  store i32 -1, i32* %34, align 8
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 3
  store i32 -1, i32* %36, align 4
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 2
  store i32 -1, i32* %38, align 8
  %39 = load i32*, i32** %11, align 8
  %40 = call i32 @ebc_decode_command(i32* %39, i32* %15)
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 4
  store i32 %40, i32* %42, align 8
  store i32 %40, i32* %14, align 4
  %43 = load i32, i32* %14, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %25
  %46 = load i32, i32* %14, align 4
  store i32 %46, i32* %7, align 4
  br label %130

47:                                               ; preds = %25
  %48 = load i32, i32* %16, align 4
  switch i32 %48, label %124 [
    i32 154, label %49
    i32 155, label %54
    i32 152, label %59
    i32 138, label %59
    i32 150, label %59
    i32 143, label %59
    i32 153, label %59
    i32 139, label %59
    i32 151, label %59
    i32 145, label %59
    i32 140, label %59
    i32 141, label %59
    i32 144, label %59
    i32 146, label %59
    i32 147, label %59
    i32 149, label %59
    i32 148, label %59
    i32 142, label %59
    i32 132, label %63
    i32 165, label %67
    i32 158, label %67
    i32 164, label %67
    i32 156, label %67
    i32 157, label %67
    i32 163, label %67
    i32 161, label %67
    i32 162, label %67
    i32 159, label %67
    i32 160, label %67
    i32 130, label %71
    i32 131, label %75
    i32 135, label %79
    i32 128, label %83
    i32 137, label %87
    i32 133, label %91
    i32 134, label %95
    i32 168, label %99
    i32 169, label %103
    i32 129, label %107
    i32 136, label %111
    i32 166, label %115
    i32 167, label %120
  ]

49:                                               ; preds = %47
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %51 = load i32, i32* %10, align 4
  %52 = load i32*, i32** %11, align 8
  %53 = call i32 @ebc_anal_jmp8(%struct.TYPE_7__* %50, i32 %51, i32* %52)
  br label %128

54:                                               ; preds = %47
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %56 = load i32, i32* %10, align 4
  %57 = load i32*, i32** %11, align 8
  %58 = call i32 @ebc_anal_jmp(%struct.TYPE_7__* %55, i32 %56, i32* %57)
  br label %128

59:                                               ; preds = %47, %47, %47, %47, %47, %47, %47, %47, %47, %47, %47, %47, %47, %47, %47, %47
  %60 = load i8*, i8** @R_ANAL_OP_TYPE_MOV, align 8
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 5
  store i8* %60, i8** %62, align 8
  br label %128

63:                                               ; preds = %47
  %64 = load i8*, i8** @R_ANAL_OP_TYPE_RET, align 8
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 5
  store i8* %64, i8** %66, align 8
  br label %128

67:                                               ; preds = %47, %47, %47, %47, %47, %47, %47, %47, %47, %47
  %68 = load i8*, i8** @R_ANAL_OP_TYPE_CMP, align 8
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 5
  store i8* %68, i8** %70, align 8
  br label %128

71:                                               ; preds = %47
  %72 = load i8*, i8** @R_ANAL_OP_TYPE_SHR, align 8
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 5
  store i8* %72, i8** %74, align 8
  br label %128

75:                                               ; preds = %47
  %76 = load i8*, i8** @R_ANAL_OP_TYPE_SHL, align 8
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 5
  store i8* %76, i8** %78, align 8
  br label %128

79:                                               ; preds = %47
  %80 = load i8*, i8** @R_ANAL_OP_TYPE_OR, align 8
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 5
  store i8* %80, i8** %82, align 8
  br label %128

83:                                               ; preds = %47
  %84 = load i8*, i8** @R_ANAL_OP_TYPE_XOR, align 8
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 5
  store i8* %84, i8** %86, align 8
  br label %128

87:                                               ; preds = %47
  %88 = load i8*, i8** @R_ANAL_OP_TYPE_MUL, align 8
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 5
  store i8* %88, i8** %90, align 8
  br label %128

91:                                               ; preds = %47
  %92 = load i8*, i8** @R_ANAL_OP_TYPE_PUSH, align 8
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 5
  store i8* %92, i8** %94, align 8
  br label %128

95:                                               ; preds = %47
  %96 = load i8*, i8** @R_ANAL_OP_TYPE_POP, align 8
  %97 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 5
  store i8* %96, i8** %98, align 8
  br label %128

99:                                               ; preds = %47
  %100 = load i8*, i8** @R_ANAL_OP_TYPE_AND, align 8
  %101 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 5
  store i8* %100, i8** %102, align 8
  br label %128

103:                                              ; preds = %47
  %104 = load i8*, i8** @R_ANAL_OP_TYPE_ADD, align 8
  %105 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 5
  store i8* %104, i8** %106, align 8
  br label %128

107:                                              ; preds = %47
  %108 = load i8*, i8** @R_ANAL_OP_TYPE_SUB, align 8
  %109 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 5
  store i8* %108, i8** %110, align 8
  br label %128

111:                                              ; preds = %47
  %112 = load i8*, i8** @R_ANAL_OP_TYPE_SUB, align 8
  %113 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i32 0, i32 5
  store i8* %112, i8** %114, align 8
  br label %128

115:                                              ; preds = %47
  %116 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %117 = load i32, i32* %10, align 4
  %118 = load i32*, i32** %11, align 8
  %119 = call i32 @ebc_anal_call(%struct.TYPE_7__* %116, i32 %117, i32* %118)
  br label %128

120:                                              ; preds = %47
  %121 = load i8*, i8** @R_ANAL_OP_TYPE_SWI, align 8
  %122 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %122, i32 0, i32 5
  store i8* %121, i8** %123, align 8
  br label %128

124:                                              ; preds = %47
  %125 = load i8*, i8** @R_ANAL_OP_TYPE_UNK, align 8
  %126 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %127 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %126, i32 0, i32 5
  store i8* %125, i8** %127, align 8
  br label %128

128:                                              ; preds = %124, %120, %115, %111, %107, %103, %99, %95, %91, %87, %83, %79, %75, %71, %67, %63, %59, %54, %49
  %129 = load i32, i32* %14, align 4
  store i32 %129, i32* %7, align 4
  br label %130

130:                                              ; preds = %128, %45, %24
  %131 = load i32, i32* %7, align 4
  ret i32 %131
}

declare dso_local i32 @memset(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @ebc_decode_command(i32*, i32*) #1

declare dso_local i32 @ebc_anal_jmp8(%struct.TYPE_7__*, i32, i32*) #1

declare dso_local i32 @ebc_anal_jmp(%struct.TYPE_7__*, i32, i32*) #1

declare dso_local i32 @ebc_anal_call(%struct.TYPE_7__*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
