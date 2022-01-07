; ModuleID = '/home/carl/AnghaBench/radare2/libr/anal/p/extr_anal_i8080.c_i8080_op.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/anal/p/extr_anal_i8080.c_i8080_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i8*, i32, i32 }

@R_ANAL_OP_TYPE_UNK = common dso_local global i8* null, align 8
@R_ANAL_OP_TYPE_NOP = common dso_local global i8* null, align 8
@R_ANAL_OP_TYPE_ADD = common dso_local global i8* null, align 8
@R_ANAL_OP_TYPE_SUB = common dso_local global i8* null, align 8
@R_ANAL_OP_TYPE_CRET = common dso_local global i8* null, align 8
@R_ANAL_OP_TYPE_RET = common dso_local global i8* null, align 8
@R_ANAL_OP_TYPE_PUSH = common dso_local global i8* null, align 8
@R_ANAL_OP_TYPE_POP = common dso_local global i8* null, align 8
@R_ANAL_OP_TYPE_TRAP = common dso_local global i8* null, align 8
@R_ANAL_OP_TYPE_JMP = common dso_local global i8* null, align 8
@R_ANAL_OP_TYPE_CALL = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_4__*, i32, i32*, i32, i32)* @i8080_op to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i8080_op(i32* %0, %struct.TYPE_4__* %1, i32 %2, i32* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [32 x i8], align 16
  %14 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %15 = load i32*, i32** %10, align 8
  %16 = getelementptr inbounds [32 x i8], [32 x i8]* %13, i64 0, i64 0
  %17 = load i32, i32* %11, align 4
  %18 = call i32 @i8080_disasm(i32* %15, i8* %16, i32 %17)
  store i32 %18, i32* %14, align 4
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %20 = call i32 @memset(%struct.TYPE_4__* %19, i8 signext 0, i32 24)
  %21 = load i32, i32* %9, align 4
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 4
  store i32 %21, i32* %23, align 4
  %24 = load i8*, i8** @R_ANAL_OP_TYPE_UNK, align 8
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 2
  store i8* %24, i8** %26, align 8
  %27 = load i32*, i32** %10, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 0
  %29 = load i32, i32* %28, align 4
  switch i32 %29, label %166 [
    i32 0, label %30
    i32 3, label %34
    i32 4, label %34
    i32 12, label %34
    i32 19, label %34
    i32 20, label %34
    i32 28, label %34
    i32 35, label %34
    i32 36, label %34
    i32 44, label %34
    i32 51, label %34
    i32 52, label %34
    i32 60, label %34
    i32 9, label %38
    i32 25, label %38
    i32 41, label %38
    i32 57, label %38
    i32 128, label %38
    i32 129, label %38
    i32 130, label %38
    i32 131, label %38
    i32 132, label %38
    i32 133, label %38
    i32 134, label %38
    i32 135, label %38
    i32 198, label %38
    i32 144, label %42
    i32 145, label %42
    i32 146, label %42
    i32 147, label %42
    i32 148, label %42
    i32 149, label %42
    i32 150, label %42
    i32 151, label %42
    i32 214, label %42
    i32 192, label %46
    i32 200, label %46
    i32 208, label %46
    i32 216, label %46
    i32 224, label %46
    i32 232, label %46
    i32 240, label %46
    i32 248, label %46
    i32 201, label %50
    i32 5, label %54
    i32 11, label %54
    i32 13, label %54
    i32 21, label %54
    i32 27, label %54
    i32 29, label %54
    i32 37, label %54
    i32 43, label %54
    i32 45, label %54
    i32 53, label %54
    i32 59, label %54
    i32 61, label %54
    i32 197, label %58
    i32 213, label %58
    i32 229, label %58
    i32 245, label %58
    i32 193, label %62
    i32 209, label %62
    i32 225, label %62
    i32 241, label %62
    i32 64, label %66
    i32 73, label %66
    i32 82, label %66
    i32 91, label %66
    i32 100, label %66
    i32 109, label %66
    i32 118, label %66
    i32 127, label %66
    i32 16, label %70
    i32 24, label %70
    i32 32, label %70
    i32 40, label %70
    i32 48, label %70
    i32 56, label %70
    i32 194, label %70
    i32 195, label %70
    i32 202, label %70
    i32 210, label %70
    i32 218, label %70
    i32 226, label %70
    i32 233, label %70
    i32 234, label %70
    i32 242, label %70
    i32 250, label %70
    i32 196, label %74
    i32 204, label %74
    i32 205, label %74
    i32 212, label %74
    i32 220, label %74
    i32 221, label %74
    i32 228, label %74
    i32 236, label %74
    i32 237, label %74
    i32 244, label %74
    i32 252, label %74
    i32 253, label %74
    i32 199, label %78
    i32 207, label %89
    i32 215, label %100
    i32 223, label %111
    i32 231, label %122
    i32 239, label %133
    i32 247, label %144
    i32 255, label %155
  ]

30:                                               ; preds = %6
  %31 = load i8*, i8** @R_ANAL_OP_TYPE_NOP, align 8
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 2
  store i8* %31, i8** %33, align 8
  br label %166

34:                                               ; preds = %6, %6, %6, %6, %6, %6, %6, %6, %6, %6, %6, %6
  %35 = load i8*, i8** @R_ANAL_OP_TYPE_ADD, align 8
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 2
  store i8* %35, i8** %37, align 8
  br label %166

38:                                               ; preds = %6, %6, %6, %6, %6, %6, %6, %6, %6, %6, %6, %6, %6
  %39 = load i8*, i8** @R_ANAL_OP_TYPE_ADD, align 8
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 2
  store i8* %39, i8** %41, align 8
  br label %166

42:                                               ; preds = %6, %6, %6, %6, %6, %6, %6, %6, %6
  %43 = load i8*, i8** @R_ANAL_OP_TYPE_SUB, align 8
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 2
  store i8* %43, i8** %45, align 8
  br label %166

46:                                               ; preds = %6, %6, %6, %6, %6, %6, %6, %6
  %47 = load i8*, i8** @R_ANAL_OP_TYPE_CRET, align 8
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 2
  store i8* %47, i8** %49, align 8
  br label %166

50:                                               ; preds = %6
  %51 = load i8*, i8** @R_ANAL_OP_TYPE_RET, align 8
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 2
  store i8* %51, i8** %53, align 8
  br label %166

54:                                               ; preds = %6, %6, %6, %6, %6, %6, %6, %6, %6, %6, %6, %6
  %55 = load i8*, i8** @R_ANAL_OP_TYPE_SUB, align 8
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 2
  store i8* %55, i8** %57, align 8
  br label %166

58:                                               ; preds = %6, %6, %6, %6
  %59 = load i8*, i8** @R_ANAL_OP_TYPE_PUSH, align 8
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 2
  store i8* %59, i8** %61, align 8
  br label %166

62:                                               ; preds = %6, %6, %6, %6
  %63 = load i8*, i8** @R_ANAL_OP_TYPE_POP, align 8
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 2
  store i8* %63, i8** %65, align 8
  br label %166

66:                                               ; preds = %6, %6, %6, %6, %6, %6, %6, %6
  %67 = load i8*, i8** @R_ANAL_OP_TYPE_TRAP, align 8
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 2
  store i8* %67, i8** %69, align 8
  br label %166

70:                                               ; preds = %6, %6, %6, %6, %6, %6, %6, %6, %6, %6, %6, %6, %6, %6, %6, %6
  %71 = load i8*, i8** @R_ANAL_OP_TYPE_JMP, align 8
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 2
  store i8* %71, i8** %73, align 8
  br label %166

74:                                               ; preds = %6, %6, %6, %6, %6, %6, %6, %6, %6, %6, %6, %6
  %75 = load i8*, i8** @R_ANAL_OP_TYPE_CALL, align 8
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 2
  store i8* %75, i8** %77, align 8
  br label %166

78:                                               ; preds = %6
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  store i32 0, i32* %80, align 8
  %81 = load i32, i32* %9, align 4
  %82 = load i32, i32* %14, align 4
  %83 = add nsw i32 %81, %82
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 3
  store i32 %83, i32* %85, align 8
  %86 = load i8*, i8** @R_ANAL_OP_TYPE_JMP, align 8
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 2
  store i8* %86, i8** %88, align 8
  br label %166

89:                                               ; preds = %6
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 0
  store i32 8, i32* %91, align 8
  %92 = load i32, i32* %9, align 4
  %93 = load i32, i32* %14, align 4
  %94 = add nsw i32 %92, %93
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 3
  store i32 %94, i32* %96, align 8
  %97 = load i8*, i8** @R_ANAL_OP_TYPE_JMP, align 8
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 2
  store i8* %97, i8** %99, align 8
  br label %166

100:                                              ; preds = %6
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 0
  store i32 16, i32* %102, align 8
  %103 = load i32, i32* %9, align 4
  %104 = load i32, i32* %14, align 4
  %105 = add nsw i32 %103, %104
  %106 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 3
  store i32 %105, i32* %107, align 8
  %108 = load i8*, i8** @R_ANAL_OP_TYPE_JMP, align 8
  %109 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 2
  store i8* %108, i8** %110, align 8
  br label %166

111:                                              ; preds = %6
  %112 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 0
  store i32 24, i32* %113, align 8
  %114 = load i32, i32* %9, align 4
  %115 = load i32, i32* %14, align 4
  %116 = add nsw i32 %114, %115
  %117 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 3
  store i32 %116, i32* %118, align 8
  %119 = load i8*, i8** @R_ANAL_OP_TYPE_JMP, align 8
  %120 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 2
  store i8* %119, i8** %121, align 8
  br label %166

122:                                              ; preds = %6
  %123 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 0
  store i32 32, i32* %124, align 8
  %125 = load i32, i32* %9, align 4
  %126 = load i32, i32* %14, align 4
  %127 = add nsw i32 %125, %126
  %128 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 3
  store i32 %127, i32* %129, align 8
  %130 = load i8*, i8** @R_ANAL_OP_TYPE_JMP, align 8
  %131 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 2
  store i8* %130, i8** %132, align 8
  br label %166

133:                                              ; preds = %6
  %134 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i32 0, i32 0
  store i32 40, i32* %135, align 8
  %136 = load i32, i32* %9, align 4
  %137 = load i32, i32* %14, align 4
  %138 = add nsw i32 %136, %137
  %139 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %140 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %139, i32 0, i32 3
  store i32 %138, i32* %140, align 8
  %141 = load i8*, i8** @R_ANAL_OP_TYPE_JMP, align 8
  %142 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %143 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %142, i32 0, i32 2
  store i8* %141, i8** %143, align 8
  br label %166

144:                                              ; preds = %6
  %145 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %146 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %145, i32 0, i32 0
  store i32 48, i32* %146, align 8
  %147 = load i32, i32* %9, align 4
  %148 = load i32, i32* %14, align 4
  %149 = add nsw i32 %147, %148
  %150 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %151 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %150, i32 0, i32 3
  store i32 %149, i32* %151, align 8
  %152 = load i8*, i8** @R_ANAL_OP_TYPE_JMP, align 8
  %153 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %154 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %153, i32 0, i32 2
  store i8* %152, i8** %154, align 8
  br label %166

155:                                              ; preds = %6
  %156 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %157 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %156, i32 0, i32 0
  store i32 56, i32* %157, align 8
  %158 = load i32, i32* %9, align 4
  %159 = load i32, i32* %14, align 4
  %160 = add nsw i32 %158, %159
  %161 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %162 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %161, i32 0, i32 3
  store i32 %160, i32* %162, align 8
  %163 = load i8*, i8** @R_ANAL_OP_TYPE_JMP, align 8
  %164 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %165 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %164, i32 0, i32 2
  store i8* %163, i8** %165, align 8
  br label %166

166:                                              ; preds = %6, %155, %144, %133, %122, %111, %100, %89, %78, %74, %70, %66, %62, %58, %54, %50, %46, %42, %38, %34, %30
  %167 = load i32, i32* %14, align 4
  %168 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %169 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %168, i32 0, i32 1
  store i32 %167, i32* %169, align 4
  ret i32 %167
}

declare dso_local i32 @i8080_disasm(i32*, i8*, i32) #1

declare dso_local i32 @memset(%struct.TYPE_4__*, i8 signext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
