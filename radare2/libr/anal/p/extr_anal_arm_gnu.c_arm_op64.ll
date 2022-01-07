; ModuleID = '/home/carl/AnghaBench/radare2/libr/anal/p/extr_anal_arm_gnu.c_arm_op64.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/anal/p/extr_anal_arm_gnu.c_arm_op64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i8*, i32 }

@R_ANAL_OP_TYPE_NULL = common dso_local global i32 0, align 4
@R_ANAL_OP_TYPE_RET = common dso_local global i32 0, align 4
@R_ANAL_OP_TYPE_CMP = common dso_local global i32 0, align 4
@R_ANAL_OP_TYPE_LOAD = common dso_local global i32 0, align 4
@R_ANAL_OP_TYPE_CALL = common dso_local global i32 0, align 4
@R_ANAL_OP_TYPE_CJMP = common dso_local global i32 0, align 4
@R_ANAL_OP_TYPE_JMP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_5__*, i32, i32*, i32)* @arm_op64 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arm_op64(i32* %0, %struct.TYPE_5__* %1, i32 %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %14 = call i32 @memset(%struct.TYPE_5__* %13, i32 0, i32 24)
  %15 = load i32*, i32** %10, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 3
  %17 = load i32, i32* %16, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %5
  store i32 -1, i32* %6, align 4
  br label %120

20:                                               ; preds = %5
  %21 = load i32*, i32** %7, align 8
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %23 = load i32*, i32** %10, align 8
  %24 = load i32, i32* %11, align 4
  %25 = call i32 @hackyArmAnal(i32* %21, %struct.TYPE_5__* %22, i32* %23, i32 %24)
  store i32 %25, i32* %12, align 4
  %26 = load i32, i32* %12, align 4
  %27 = icmp sgt i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %20
  %29 = load i32, i32* %12, align 4
  store i32 %29, i32* %6, align 4
  br label %120

30:                                               ; preds = %20
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  store i32 4, i32* %32, align 8
  %33 = load i32, i32* @R_ANAL_OP_TYPE_NULL, align 4
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 3
  store i32 %33, i32* %35, align 8
  %36 = load i32*, i32** %10, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp eq i32 %38, 192
  br i1 %39, label %40, label %49

40:                                               ; preds = %30
  %41 = load i32*, i32** %10, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 3
  %43 = load i32, i32* %42, align 4
  %44 = icmp eq i32 %43, 214
  br i1 %44, label %45, label %49

45:                                               ; preds = %40
  %46 = load i32, i32* @R_ANAL_OP_TYPE_RET, align 4
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 3
  store i32 %46, i32* %48, align 8
  br label %49

49:                                               ; preds = %45, %40, %30
  %50 = load i32*, i32** %10, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 3
  %52 = load i32, i32* %51, align 4
  switch i32 %52, label %116 [
    i32 113, label %53
    i32 235, label %53
    i32 184, label %57
    i32 185, label %57
    i32 248, label %57
    i32 169, label %57
    i32 249, label %57
    i32 145, label %61
    i32 82, label %61
    i32 148, label %61
    i32 151, label %61
    i32 84, label %74
    i32 23, label %103
    i32 20, label %103
  ]

53:                                               ; preds = %49, %49
  %54 = load i32, i32* @R_ANAL_OP_TYPE_CMP, align 4
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 3
  store i32 %54, i32* %56, align 8
  br label %116

57:                                               ; preds = %49, %49, %49, %49, %49
  %58 = load i32, i32* @R_ANAL_OP_TYPE_LOAD, align 4
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 3
  store i32 %58, i32* %60, align 8
  br label %116

61:                                               ; preds = %49, %49, %49, %49
  %62 = load i32, i32* @R_ANAL_OP_TYPE_CALL, align 4
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 3
  store i32 %62, i32* %64, align 8
  %65 = load i32, i32* %9, align 4
  %66 = load i32*, i32** %10, align 8
  %67 = call i8* @getaddr(i32 %65, i32* %66)
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 2
  store i8* %67, i8** %69, align 8
  %70 = load i32, i32* %9, align 4
  %71 = add nsw i32 %70, 4
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 1
  store i32 %71, i32* %73, align 4
  br label %116

74:                                               ; preds = %49
  %75 = load i32, i32* @R_ANAL_OP_TYPE_CJMP, align 4
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 3
  store i32 %75, i32* %77, align 8
  %78 = load i32, i32* %9, align 4
  %79 = load i32*, i32** %10, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 0
  %81 = load i32, i32* %80, align 4
  %82 = ashr i32 %81, 4
  %83 = load i32*, i32** %10, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 1
  %85 = load i32, i32* %84, align 4
  %86 = shl i32 %85, 8
  %87 = or i32 %82, %86
  %88 = load i32*, i32** %10, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 2
  %90 = load i32, i32* %89, align 4
  %91 = shl i32 %90, 16
  %92 = or i32 %87, %91
  %93 = mul nsw i32 4, %92
  %94 = add nsw i32 %78, %93
  %95 = sext i32 %94 to i64
  %96 = inttoptr i64 %95 to i8*
  %97 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 2
  store i8* %96, i8** %98, align 8
  %99 = load i32, i32* %9, align 4
  %100 = add nsw i32 %99, 4
  %101 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 1
  store i32 %100, i32* %102, align 4
  br label %116

103:                                              ; preds = %49, %49
  %104 = load i32, i32* @R_ANAL_OP_TYPE_JMP, align 4
  %105 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 3
  store i32 %104, i32* %106, align 8
  %107 = load i32, i32* %9, align 4
  %108 = load i32*, i32** %10, align 8
  %109 = call i8* @getaddr(i32 %107, i32* %108)
  %110 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 2
  store i8* %109, i8** %111, align 8
  %112 = load i32, i32* %9, align 4
  %113 = add nsw i32 %112, 4
  %114 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i32 0, i32 1
  store i32 %113, i32* %115, align 4
  br label %116

116:                                              ; preds = %49, %103, %74, %61, %57, %53
  %117 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  store i32 %119, i32* %6, align 4
  br label %120

120:                                              ; preds = %116, %28, %19
  %121 = load i32, i32* %6, align 4
  ret i32 %121
}

declare dso_local i32 @memset(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @hackyArmAnal(i32*, %struct.TYPE_5__*, i32*, i32) #1

declare dso_local i8* @getaddr(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
