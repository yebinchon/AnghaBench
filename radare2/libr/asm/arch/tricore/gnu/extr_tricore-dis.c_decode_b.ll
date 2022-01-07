; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/arch/tricore/gnu/extr_tricore-dis.c_decode_b.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/arch/tricore/gnu/extr_tricore-dis.c_decode_b.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i64*, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32* }

@dec_insn = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @decode_b to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @decode_b() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  store i32 0, i32* %1, align 4
  br label %4

4:                                                ; preds = %35, %0
  %5 = load i32, i32* %1, align 4
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @dec_insn, i32 0, i32 2), align 8
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = icmp slt i32 %5, %8
  br i1 %9, label %10, label %38

10:                                               ; preds = %4
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @dec_insn, i32 0, i32 2), align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 1
  %13 = load i32*, i32** %12, align 8
  %14 = load i32, i32* %1, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i32, i32* %13, i64 %15
  %17 = load i32, i32* %16, align 4
  switch i32 %17, label %34 [
    i32 128, label %18
  ]

18:                                               ; preds = %10
  %19 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @dec_insn, i32 0, i32 0), align 8
  %20 = and i32 %19, -65536
  %21 = lshr i32 %20, 16
  %22 = zext i32 %21 to i64
  store i64 %22, i64* %2, align 8
  %23 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @dec_insn, i32 0, i32 0), align 8
  %24 = and i32 %23, 65280
  %25 = shl i32 %24, 8
  %26 = sext i32 %25 to i64
  store i64 %26, i64* %3, align 8
  %27 = load i64, i64* %2, align 8
  %28 = load i64, i64* %3, align 8
  %29 = or i64 %27, %28
  %30 = load i64*, i64** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @dec_insn, i32 0, i32 1), align 8
  %31 = load i32, i32* %1, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i64, i64* %30, i64 %32
  store i64 %29, i64* %33, align 8
  br label %34

34:                                               ; preds = %10, %18
  br label %35

35:                                               ; preds = %34
  %36 = load i32, i32* %1, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %1, align 4
  br label %4

38:                                               ; preds = %4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
