; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/p/extr_asm_xap.c_disassemble.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/p/extr_asm_xap.c_disassemble.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.r_asm_op_t = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, %struct.r_asm_op_t*, i32*, i32)* @disassemble to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @disassemble(%struct.TYPE_3__* %0, %struct.r_asm_op_t* %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca %struct.r_asm_op_t*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store %struct.r_asm_op_t* %1, %struct.r_asm_op_t** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load %struct.r_asm_op_t*, %struct.r_asm_op_t** %6, align 8
  %11 = getelementptr inbounds %struct.r_asm_op_t, %struct.r_asm_op_t* %10, i32 0, i32 1
  %12 = call i8* @r_strbuf_get(i32* %11)
  store i8* %12, i8** %9, align 8
  %13 = load i8*, i8** %9, align 8
  %14 = load i32*, i32** %7, align 8
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @arch_xap_disasm(i8* %13, i32* %14, i32 %17)
  %19 = load %struct.r_asm_op_t*, %struct.r_asm_op_t** %6, align 8
  %20 = getelementptr inbounds %struct.r_asm_op_t, %struct.r_asm_op_t* %19, i32 0, i32 0
  store i32 2, i32* %20, align 4
  ret i32 2
}

declare dso_local i8* @r_strbuf_get(i32*) #1

declare dso_local i32 @arch_xap_disasm(i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
