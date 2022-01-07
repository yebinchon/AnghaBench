; ModuleID = '/home/carl/AnghaBench/radare2/libr/anal/p/extr_anal_xtensa.c_xtensa_st3n_op.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/anal/p/extr_anal_xtensa.c_xtensa_st3n_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@R_ANAL_OP_TYPE_MOV = common dso_local global i32 0, align 4
@R_ANAL_OP_TYPE_RET = common dso_local global i32 0, align 4
@R_ANAL_OP_TYPE_TRAP = common dso_local global i32 0, align 4
@R_ANAL_OP_TYPE_NOP = common dso_local global i32 0, align 4
@R_ANAL_OP_TYPE_ILL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_4__*, i32, i32*)* @xtensa_st3n_op to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xtensa_st3n_op(i32* %0, %struct.TYPE_4__* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %9 = load i32*, i32** %8, align 8
  %10 = getelementptr inbounds i32, i32* %9, i64 1
  %11 = load i32, i32* %10, align 4
  %12 = ashr i32 %11, 4
  %13 = and i32 %12, 15
  switch i32 %13, label %47 [
    i32 0, label %14
    i32 15, label %18
  ]

14:                                               ; preds = %4
  %15 = load i32, i32* @R_ANAL_OP_TYPE_MOV, align 4
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 4
  br label %53

18:                                               ; preds = %4
  %19 = load i32*, i32** %8, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 0
  %21 = load i32, i32* %20, align 4
  %22 = ashr i32 %21, 4
  %23 = and i32 %22, 15
  switch i32 %23, label %40 [
    i32 0, label %24
    i32 1, label %24
    i32 2, label %28
    i32 3, label %32
    i32 6, label %36
  ]

24:                                               ; preds = %18, %18
  %25 = load i32, i32* @R_ANAL_OP_TYPE_RET, align 4
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 4
  br label %46

28:                                               ; preds = %18
  %29 = load i32, i32* @R_ANAL_OP_TYPE_TRAP, align 4
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 4
  br label %46

32:                                               ; preds = %18
  %33 = load i32, i32* @R_ANAL_OP_TYPE_NOP, align 4
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 4
  br label %46

36:                                               ; preds = %18
  %37 = load i32, i32* @R_ANAL_OP_TYPE_ILL, align 4
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 4
  br label %46

40:                                               ; preds = %18
  %41 = load i32*, i32** %5, align 8
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %43 = load i32, i32* %7, align 4
  %44 = load i32*, i32** %8, align 8
  %45 = call i32 @xtensa_unk_op(i32* %41, %struct.TYPE_4__* %42, i32 %43, i32* %44)
  br label %46

46:                                               ; preds = %40, %36, %32, %28, %24
  br label %53

47:                                               ; preds = %4
  %48 = load i32*, i32** %5, align 8
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %50 = load i32, i32* %7, align 4
  %51 = load i32*, i32** %8, align 8
  %52 = call i32 @xtensa_unk_op(i32* %48, %struct.TYPE_4__* %49, i32 %50, i32* %51)
  br label %53

53:                                               ; preds = %47, %46, %14
  ret void
}

declare dso_local i32 @xtensa_unk_op(i32*, %struct.TYPE_4__*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
