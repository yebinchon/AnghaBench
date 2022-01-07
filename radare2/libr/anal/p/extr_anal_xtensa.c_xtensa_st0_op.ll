; ModuleID = '/home/carl/AnghaBench/radare2/libr/anal/p/extr_anal_xtensa.c_xtensa_st0_op.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/anal/p/extr_anal_xtensa.c_xtensa_st0_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }

@R_ANAL_OP_TYPE_CMOV = common dso_local global i32 0, align 4
@R_ANAL_OP_TYPE_TRAP = common dso_local global i32 0, align 4
@R_ANAL_OP_TYPE_SWI = common dso_local global i32 0, align 4
@R_ANAL_OP_TYPE_MOV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_7__*, i32, i32*)* @xtensa_st0_op to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xtensa_st0_op(i32* %0, %struct.TYPE_7__* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %9 = load i32*, i32** %8, align 8
  %10 = getelementptr inbounds i32, i32* %9, i64 1
  %11 = load i32, i32* %10, align 4
  %12 = ashr i32 %11, 4
  %13 = and i32 %12, 15
  switch i32 %13, label %48 [
    i32 0, label %14
    i32 1, label %20
    i32 2, label %24
    i32 3, label %30
    i32 4, label %36
    i32 5, label %40
    i32 6, label %40
    i32 7, label %40
    i32 8, label %44
    i32 9, label %44
    i32 10, label %44
    i32 11, label %44
  ]

14:                                               ; preds = %4
  %15 = load i32*, i32** %5, align 8
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %17 = load i32, i32* %7, align 4
  %18 = load i32*, i32** %8, align 8
  %19 = call i32 @xtensa_snm0_op(i32* %15, %struct.TYPE_7__* %16, i32 %17, i32* %18)
  br label %54

20:                                               ; preds = %4
  %21 = load i32, i32* @R_ANAL_OP_TYPE_CMOV, align 4
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 4
  br label %54

24:                                               ; preds = %4
  %25 = load i32*, i32** %5, align 8
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %27 = load i32, i32* %7, align 4
  %28 = load i32*, i32** %8, align 8
  %29 = call i32 @xtensa_sync_op(i32* %25, %struct.TYPE_7__* %26, i32 %27, i32* %28)
  br label %54

30:                                               ; preds = %4
  %31 = load i32*, i32** %5, align 8
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %33 = load i32, i32* %7, align 4
  %34 = load i32*, i32** %8, align 8
  %35 = call i32 @xtensa_rfei_op(i32* %31, %struct.TYPE_7__* %32, i32 %33, i32* %34)
  br label %54

36:                                               ; preds = %4
  %37 = load i32, i32* @R_ANAL_OP_TYPE_TRAP, align 4
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 4
  br label %54

40:                                               ; preds = %4, %4, %4
  %41 = load i32, i32* @R_ANAL_OP_TYPE_SWI, align 4
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 4
  br label %54

44:                                               ; preds = %4, %4, %4, %4
  %45 = load i32, i32* @R_ANAL_OP_TYPE_MOV, align 4
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 4
  br label %54

48:                                               ; preds = %4
  %49 = load i32*, i32** %5, align 8
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %51 = load i32, i32* %7, align 4
  %52 = load i32*, i32** %8, align 8
  %53 = call i32 @xtensa_unk_op(i32* %49, %struct.TYPE_7__* %50, i32 %51, i32* %52)
  br label %54

54:                                               ; preds = %48, %44, %40, %36, %30, %24, %20, %14
  ret void
}

declare dso_local i32 @xtensa_snm0_op(i32*, %struct.TYPE_7__*, i32, i32*) #1

declare dso_local i32 @xtensa_sync_op(i32*, %struct.TYPE_7__*, i32, i32*) #1

declare dso_local i32 @xtensa_rfei_op(i32*, %struct.TYPE_7__*, i32, i32*) #1

declare dso_local i32 @xtensa_unk_op(i32*, %struct.TYPE_7__*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
