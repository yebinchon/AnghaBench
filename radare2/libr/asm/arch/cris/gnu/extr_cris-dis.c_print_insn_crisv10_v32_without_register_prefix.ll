; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/arch/cris/gnu/extr_cris-dis.c_print_insn_crisv10_v32_without_register_prefix.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/arch/cris/gnu/extr_cris-dis.c_print_insn_crisv10_v32_without_register_prefix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@cris_dis_common_v10_v32 = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @print_insn_crisv10_v32_without_register_prefix(i32 %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %5, align 8
  %6 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %16, label %10

10:                                               ; preds = %2
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %12 = load i32, i32* @cris_dis_common_v10_v32, align 4
  %13 = call i32 @cris_parse_disassembler_options(%struct.TYPE_5__* %11, i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %10
  store i32 -1, i32* %3, align 4
  br label %21

16:                                               ; preds = %10, %2
  %17 = load i32, i32* %4, align 4
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %19 = load i32, i32* @FALSE, align 4
  %20 = call i32 @print_insn_cris_generic(i32 %17, %struct.TYPE_5__* %18, i32 %19)
  store i32 %20, i32* %3, align 4
  br label %21

21:                                               ; preds = %16, %15
  %22 = load i32, i32* %3, align 4
  ret i32 %22
}

declare dso_local i32 @cris_parse_disassembler_options(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @print_insn_cris_generic(i32, %struct.TYPE_5__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
