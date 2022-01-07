; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/arch/arm/aarch64/extr_aarch64-dis.c_aarch64_decode_insn.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/arch/arm/aarch64/extr_aarch64-dis.c_aarch64_decode_insn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }

@ERR_OK = common dso_local global i32 0, align 4
@ERR_UND = common dso_local global i32 0, align 4
@debug_dump = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @aarch64_decode_insn(i32 %0, i32* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_6__*, align 8
  store i32 %0, i32* %6, align 4
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %11 = load i32, i32* %6, align 4
  %12 = call %struct.TYPE_6__* @aarch64_opcode_lookup(i32 %11)
  store %struct.TYPE_6__* %12, %struct.TYPE_6__** %10, align 8
  br label %13

13:                                               ; preds = %26, %4
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %15 = icmp ne %struct.TYPE_6__* %14, null
  br i1 %15, label %16, label %29

16:                                               ; preds = %13
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %18 = load i32, i32* %6, align 4
  %19 = load i32*, i32** %7, align 8
  %20 = load i32, i32* %8, align 4
  %21 = load i32*, i32** %9, align 8
  %22 = call i32 @aarch64_opcode_decode(%struct.TYPE_6__* %17, i32 %18, i32* %19, i32 %20, i32* %21)
  %23 = icmp eq i32 %22, 1
  br i1 %23, label %24, label %26

24:                                               ; preds = %16
  %25 = load i32, i32* @ERR_OK, align 4
  store i32 %25, i32* %5, align 4
  br label %31

26:                                               ; preds = %16
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %28 = call %struct.TYPE_6__* @aarch64_find_next_opcode(%struct.TYPE_6__* %27)
  store %struct.TYPE_6__* %28, %struct.TYPE_6__** %10, align 8
  br label %13

29:                                               ; preds = %13
  %30 = load i32, i32* @ERR_UND, align 4
  store i32 %30, i32* %5, align 4
  br label %31

31:                                               ; preds = %29, %24
  %32 = load i32, i32* %5, align 4
  ret i32 %32
}

declare dso_local %struct.TYPE_6__* @aarch64_opcode_lookup(i32) #1

declare dso_local i32 @aarch64_opcode_decode(%struct.TYPE_6__*, i32, i32*, i32, i32*) #1

declare dso_local %struct.TYPE_6__* @aarch64_find_next_opcode(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
