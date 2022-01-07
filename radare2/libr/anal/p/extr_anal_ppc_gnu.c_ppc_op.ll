; ModuleID = '/home/carl/AnghaBench/radare2/libr/anal/p/extr_anal_ppc_gnu.c_ppc_op.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/anal/p/extr_anal_ppc_gnu.c_ppc_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i16, i32, i32, i8*, i32 }

@R_ANAL_OP_TYPE_CMP = common dso_local global i8* null, align 8
@R_ANAL_OP_TYPE_JMP = common dso_local global i8* null, align 8
@R_ANAL_OP_TYPE_CJMP = common dso_local global i8* null, align 8
@R_ANAL_OP_TYPE_RET = common dso_local global i8* null, align 8
@R_ANAL_OP_TYPE_SWI = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_4__*, i32, i32*, i32, i32)* @ppc_op to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ppc_op(i32* %0, %struct.TYPE_4__* %1, i32 %2, i32* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i16, align 2
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %17 = load i32*, i32** %10, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 0
  %19 = load i32, i32* %18, align 4
  %20 = and i32 %19, 248
  %21 = ashr i32 %20, 3
  store i32 %21, i32* %13, align 4
  %22 = load i32*, i32** %10, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 2
  %24 = load i32, i32* %23, align 4
  %25 = shl i32 %24, 8
  %26 = load i32*, i32** %10, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 3
  %28 = load i32, i32* %27, align 4
  %29 = and i32 %28, 252
  %30 = or i32 %25, %29
  %31 = trunc i32 %30 to i16
  store i16 %31, i16* %14, align 2
  %32 = load i32*, i32** %10, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 3
  %34 = load i32, i32* %33, align 4
  %35 = and i32 %34, 2
  store i32 %35, i32* %15, align 4
  %36 = load i32*, i32** %10, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 3
  %38 = load i32, i32* %37, align 4
  %39 = and i32 %38, 1
  store i32 %39, i32* %16, align 4
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %41 = call i32 @memset(%struct.TYPE_4__* %40, i8 signext 0, i32 32)
  %42 = load i32, i32* %9, align 4
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 5
  store i32 %42, i32* %44, align 8
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 4
  store i8* null, i8** %46, align 8
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  store i32 4, i32* %48, align 8
  %49 = load i32, i32* %13, align 4
  switch i32 %49, label %151 [
    i32 11, label %50
    i32 9, label %54
    i32 6, label %87
    i32 8, label %109
    i32 19, label %135
  ]

50:                                               ; preds = %6
  %51 = load i8*, i8** @R_ANAL_OP_TYPE_CMP, align 8
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 4
  store i8* %51, i8** %53, align 8
  br label %151

54:                                               ; preds = %6
  %55 = load i32*, i32** %10, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 0
  %57 = load i32, i32* %56, align 4
  %58 = icmp eq i32 %57, 78
  br i1 %58, label %59, label %60

59:                                               ; preds = %54
  br label %84

60:                                               ; preds = %54
  %61 = load i32, i32* %15, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %60
  %64 = load i16, i16* %14, align 2
  %65 = sext i16 %64 to i32
  br label %71

66:                                               ; preds = %60
  %67 = load i32, i32* %9, align 4
  %68 = load i16, i16* %14, align 2
  %69 = sext i16 %68 to i32
  %70 = add nsw i32 %67, %69
  br label %71

71:                                               ; preds = %66, %63
  %72 = phi i32 [ %65, %63 ], [ %70, %66 ]
  %73 = trunc i32 %72 to i16
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 1
  store i16 %73, i16* %75, align 4
  %76 = load i32, i32* %16, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %83

78:                                               ; preds = %71
  %79 = load i32, i32* %9, align 4
  %80 = add nsw i32 %79, 4
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 3
  store i32 %80, i32* %82, align 4
  br label %83

83:                                               ; preds = %78, %71
  br label %84

84:                                               ; preds = %83, %59
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 2
  store i32 1, i32* %86, align 8
  br label %151

87:                                               ; preds = %6
  %88 = load i8*, i8** @R_ANAL_OP_TYPE_JMP, align 8
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 4
  store i8* %88, i8** %90, align 8
  %91 = load i32, i32* %15, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %87
  %94 = load i16, i16* %14, align 2
  %95 = sext i16 %94 to i32
  br label %102

96:                                               ; preds = %87
  %97 = load i32, i32* %9, align 4
  %98 = load i16, i16* %14, align 2
  %99 = sext i16 %98 to i32
  %100 = add nsw i32 %97, %99
  %101 = add nsw i32 %100, 4
  br label %102

102:                                              ; preds = %96, %93
  %103 = phi i32 [ %95, %93 ], [ %101, %96 ]
  %104 = trunc i32 %103 to i16
  %105 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 1
  store i16 %104, i16* %106, align 4
  %107 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 2
  store i32 1, i32* %108, align 8
  br label %151

109:                                              ; preds = %6
  %110 = load i8*, i8** @R_ANAL_OP_TYPE_CJMP, align 8
  %111 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 4
  store i8* %110, i8** %112, align 8
  %113 = load i32, i32* %15, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %118

115:                                              ; preds = %109
  %116 = load i16, i16* %14, align 2
  %117 = sext i16 %116 to i32
  br label %124

118:                                              ; preds = %109
  %119 = load i32, i32* %9, align 4
  %120 = load i16, i16* %14, align 2
  %121 = sext i16 %120 to i32
  %122 = add nsw i32 %119, %121
  %123 = add nsw i32 %122, 4
  br label %124

124:                                              ; preds = %118, %115
  %125 = phi i32 [ %117, %115 ], [ %123, %118 ]
  %126 = trunc i32 %125 to i16
  %127 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 1
  store i16 %126, i16* %128, align 4
  %129 = load i32, i32* %9, align 4
  %130 = add nsw i32 %129, 4
  %131 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 3
  store i32 %130, i32* %132, align 4
  %133 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 2
  store i32 1, i32* %134, align 8
  br label %151

135:                                              ; preds = %6
  %136 = load i8*, i8** @R_ANAL_OP_TYPE_RET, align 8
  %137 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i32 0, i32 4
  store i8* %136, i8** %138, align 8
  %139 = load i32, i32* %16, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %148

141:                                              ; preds = %135
  %142 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %143 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %142, i32 0, i32 1
  store i16 -1, i16* %143, align 4
  %144 = load i32, i32* %9, align 4
  %145 = add nsw i32 %144, 4
  %146 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %147 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %146, i32 0, i32 3
  store i32 %145, i32* %147, align 4
  br label %148

148:                                              ; preds = %141, %135
  %149 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %150 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %149, i32 0, i32 2
  store i32 1, i32* %150, align 8
  br label %151

151:                                              ; preds = %6, %148, %124, %102, %84, %50
  %152 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %153 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %152, i32 0, i32 0
  store i32 4, i32* %153, align 8
  %154 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %155 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  ret i32 %156
}

declare dso_local i32 @memset(%struct.TYPE_4__*, i8 signext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
