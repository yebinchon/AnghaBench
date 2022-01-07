; ModuleID = '/home/carl/AnghaBench/radare2/libr/anal/p/extr_anal_vax.c_vax_op.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/anal/p/extr_anal_vax.c_vax_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i8* }

@R_ANAL_OP_TYPE_UNK = common dso_local global i8* null, align 8
@R_ANAL_OP_TYPE_MOV = common dso_local global i8* null, align 8
@R_ANAL_OP_TYPE_SHL = common dso_local global i8* null, align 8
@R_ANAL_OP_TYPE_ADD = common dso_local global i8* null, align 8
@R_ANAL_OP_TYPE_TRAP = common dso_local global i8* null, align 8
@R_ANAL_OP_TYPE_NOP = common dso_local global i8* null, align 8
@R_ANAL_OP_TYPE_CMP = common dso_local global i8* null, align 8
@R_ANAL_OP_TYPE_XOR = common dso_local global i8* null, align 8
@R_ANAL_OP_TYPE_CJMP = common dso_local global i8* null, align 8
@R_ANAL_OP_TYPE_DIV = common dso_local global i8* null, align 8
@R_ANAL_OP_TYPE_SUB = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_3__*, i32, i32*, i32, i32)* @vax_op to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vax_op(i32* %0, %struct.TYPE_3__* %1, i32 %2, i32* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_3__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32* %3, i32** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  store i32 1, i32* %15, align 8
  %16 = load i32, i32* %12, align 4
  %17 = icmp slt i32 %16, 1
  br i1 %17, label %18, label %19

18:                                               ; preds = %6
  store i32 -1, i32* %7, align 4
  br label %100

19:                                               ; preds = %6
  %20 = load i8*, i8** @R_ANAL_OP_TYPE_UNK, align 8
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 1
  store i8* %20, i8** %22, align 8
  %23 = load i32*, i32** %11, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 0
  %25 = load i32, i32* %24, align 4
  switch i32 %25, label %96 [
    i32 208, label %26
    i32 46, label %26
    i32 120, label %32
    i32 192, label %38
    i32 216, label %38
    i32 0, label %44
    i32 1, label %48
    i32 81, label %52
    i32 115, label %52
    i32 172, label %56
    i32 90, label %62
    i32 17, label %65
    i32 24, label %65
    i32 49, label %71
    i32 233, label %71
    i32 198, label %77
    i32 199, label %77
    i32 214, label %83
    i32 97, label %83
    i32 98, label %89
    i32 255, label %93
  ]

26:                                               ; preds = %19, %19
  %27 = load i8*, i8** @R_ANAL_OP_TYPE_MOV, align 8
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 1
  store i8* %27, i8** %29, align 8
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  store i32 8, i32* %31, align 8
  br label %96

32:                                               ; preds = %19
  %33 = load i8*, i8** @R_ANAL_OP_TYPE_SHL, align 8
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 1
  store i8* %33, i8** %35, align 8
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  store i32 8, i32* %37, align 8
  br label %96

38:                                               ; preds = %19, %19
  %39 = load i8*, i8** @R_ANAL_OP_TYPE_ADD, align 8
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 1
  store i8* %39, i8** %41, align 8
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  store i32 8, i32* %43, align 8
  br label %96

44:                                               ; preds = %19
  %45 = load i8*, i8** @R_ANAL_OP_TYPE_TRAP, align 8
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 1
  store i8* %45, i8** %47, align 8
  br label %96

48:                                               ; preds = %19
  %49 = load i8*, i8** @R_ANAL_OP_TYPE_NOP, align 8
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 1
  store i8* %49, i8** %51, align 8
  br label %96

52:                                               ; preds = %19, %19
  %53 = load i8*, i8** @R_ANAL_OP_TYPE_CMP, align 8
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 1
  store i8* %53, i8** %55, align 8
  br label %96

56:                                               ; preds = %19
  %57 = load i8*, i8** @R_ANAL_OP_TYPE_XOR, align 8
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 1
  store i8* %57, i8** %59, align 8
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  store i32 4, i32* %61, align 8
  br label %96

62:                                               ; preds = %19
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  store i32 2, i32* %64, align 8
  br label %96

65:                                               ; preds = %19, %19
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 0
  store i32 2, i32* %67, align 8
  %68 = load i8*, i8** @R_ANAL_OP_TYPE_CJMP, align 8
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 1
  store i8* %68, i8** %70, align 8
  br label %96

71:                                               ; preds = %19, %19
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 0
  store i32 3, i32* %73, align 8
  %74 = load i8*, i8** @R_ANAL_OP_TYPE_CJMP, align 8
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 1
  store i8* %74, i8** %76, align 8
  br label %96

77:                                               ; preds = %19, %19
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 0
  store i32 8, i32* %79, align 8
  %80 = load i8*, i8** @R_ANAL_OP_TYPE_DIV, align 8
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 1
  store i8* %80, i8** %82, align 8
  br label %96

83:                                               ; preds = %19, %19
  %84 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 0
  store i32 2, i32* %85, align 8
  %86 = load i8*, i8** @R_ANAL_OP_TYPE_ADD, align 8
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 1
  store i8* %86, i8** %88, align 8
  br label %96

89:                                               ; preds = %19
  %90 = load i8*, i8** @R_ANAL_OP_TYPE_SUB, align 8
  %91 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 1
  store i8* %90, i8** %92, align 8
  br label %96

93:                                               ; preds = %19
  %94 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 0
  store i32 2, i32* %95, align 8
  br label %96

96:                                               ; preds = %19, %93, %89, %83, %77, %71, %65, %62, %56, %52, %48, %44, %38, %32, %26
  %97 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  store i32 %99, i32* %7, align 4
  br label %100

100:                                              ; preds = %96, %18
  %101 = load i32, i32* %7, align 4
  ret i32 %101
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
