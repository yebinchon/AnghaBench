; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/arch/v810/extr_v810_disas.c_v810_decode_command.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/arch/v810/extr_v810_disas.c_v810_decode_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v810_cmd = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @v810_decode_command(i32* %0, i32 %1, %struct.v810_cmd* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.v810_cmd*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.v810_cmd* %2, %struct.v810_cmd** %6, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %10 = load i32*, i32** %4, align 8
  %11 = call i32 @r_read_le16(i32* %10)
  store i32 %11, i32* %8, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp sge i32 %12, 4
  br i1 %13, label %14, label %18

14:                                               ; preds = %3
  %15 = load i32*, i32** %4, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 2
  %17 = call i32 @r_read_le16(i32* %16)
  store i32 %17, i32* %9, align 4
  br label %18

18:                                               ; preds = %14, %3
  %19 = load i32, i32* %8, align 4
  %20 = call i32 @OPCODE(i32 %19)
  switch i32 %20, label %53 [
    i32 156, label %21
    i32 180, label %21
    i32 131, label %21
    i32 172, label %21
    i32 139, label %21
    i32 137, label %21
    i32 162, label %21
    i32 143, label %21
    i32 152, label %21
    i32 170, label %21
    i32 151, label %21
    i32 169, label %21
    i32 149, label %21
    i32 177, label %21
    i32 150, label %21
    i32 129, label %21
    i32 153, label %25
    i32 178, label %25
    i32 140, label %25
    i32 171, label %25
    i32 138, label %25
    i32 136, label %25
    i32 173, label %25
    i32 142, label %25
    i32 130, label %25
    i32 144, label %25
    i32 167, label %25
    i32 158, label %25
    i32 133, label %25
    i32 141, label %25
    i32 155, label %29
    i32 179, label %29
    i32 148, label %29
    i32 176, label %29
    i32 128, label %29
    i32 154, label %29
    i32 161, label %34
    i32 163, label %34
    i32 160, label %39
    i32 159, label %39
    i32 157, label %39
    i32 135, label %39
    i32 134, label %39
    i32 132, label %39
    i32 166, label %39
    i32 165, label %39
    i32 174, label %39
    i32 164, label %39
    i32 147, label %39
    i32 146, label %39
    i32 145, label %39
    i32 175, label %44
    i32 168, label %48
  ]

21:                                               ; preds = %18, %18, %18, %18, %18, %18, %18, %18, %18, %18, %18, %18, %18, %18, %18, %18
  %22 = load i32, i32* %8, align 4
  %23 = load %struct.v810_cmd*, %struct.v810_cmd** %6, align 8
  %24 = call i32 @decode_reg_reg(i32 %22, %struct.v810_cmd* %23)
  store i32 %24, i32* %7, align 4
  br label %64

25:                                               ; preds = %18, %18, %18, %18, %18, %18, %18, %18, %18, %18, %18, %18, %18, %18
  %26 = load i32, i32* %8, align 4
  %27 = load %struct.v810_cmd*, %struct.v810_cmd** %6, align 8
  %28 = call i32 @decode_imm_reg(i32 %26, %struct.v810_cmd* %27)
  store i32 %28, i32* %7, align 4
  br label %64

29:                                               ; preds = %18, %18, %18, %18, %18, %18
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* %9, align 4
  %32 = load %struct.v810_cmd*, %struct.v810_cmd** %6, align 8
  %33 = call i32 @decode_3operands(i32 %30, i32 %31, %struct.v810_cmd* %32)
  store i32 %33, i32* %7, align 4
  br label %64

34:                                               ; preds = %18, %18
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* %9, align 4
  %37 = load %struct.v810_cmd*, %struct.v810_cmd** %6, align 8
  %38 = call i32 @decode_jump(i32 %35, i32 %36, %struct.v810_cmd* %37)
  store i32 %38, i32* %7, align 4
  br label %64

39:                                               ; preds = %18, %18, %18, %18, %18, %18, %18, %18, %18, %18, %18, %18, %18
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* %9, align 4
  %42 = load %struct.v810_cmd*, %struct.v810_cmd** %6, align 8
  %43 = call i32 @decode_load_store(i32 %40, i32 %41, %struct.v810_cmd* %42)
  store i32 %43, i32* %7, align 4
  br label %64

44:                                               ; preds = %18
  %45 = load i32, i32* %8, align 4
  %46 = load %struct.v810_cmd*, %struct.v810_cmd** %6, align 8
  %47 = call i32 @decode_bit_op(i32 %45, %struct.v810_cmd* %46)
  store i32 %47, i32* %7, align 4
  br label %64

48:                                               ; preds = %18
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* %9, align 4
  %51 = load %struct.v810_cmd*, %struct.v810_cmd** %6, align 8
  %52 = call i32 @decode_extended(i32 %49, i32 %50, %struct.v810_cmd* %51)
  store i32 %52, i32* %7, align 4
  br label %64

53:                                               ; preds = %18
  %54 = load i32, i32* %8, align 4
  %55 = call i32 @OPCODE(i32 %54)
  %56 = ashr i32 %55, 3
  %57 = icmp eq i32 %56, 4
  br i1 %57, label %58, label %62

58:                                               ; preds = %53
  %59 = load i32, i32* %8, align 4
  %60 = load %struct.v810_cmd*, %struct.v810_cmd** %6, align 8
  %61 = call i32 @decode_bcond(i32 %59, %struct.v810_cmd* %60)
  store i32 %61, i32* %7, align 4
  br label %63

62:                                               ; preds = %53
  store i32 -1, i32* %7, align 4
  br label %63

63:                                               ; preds = %62, %58
  br label %64

64:                                               ; preds = %63, %48, %44, %39, %34, %29, %25, %21
  %65 = load i32, i32* %7, align 4
  %66 = icmp sgt i32 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %64
  %68 = load i32, i32* %5, align 4
  %69 = load i32, i32* %7, align 4
  %70 = icmp slt i32 %68, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %67
  store i32 -1, i32* %7, align 4
  br label %72

72:                                               ; preds = %71, %67, %64
  %73 = load i32, i32* %7, align 4
  ret i32 %73
}

declare dso_local i32 @r_read_le16(i32*) #1

declare dso_local i32 @OPCODE(i32) #1

declare dso_local i32 @decode_reg_reg(i32, %struct.v810_cmd*) #1

declare dso_local i32 @decode_imm_reg(i32, %struct.v810_cmd*) #1

declare dso_local i32 @decode_3operands(i32, i32, %struct.v810_cmd*) #1

declare dso_local i32 @decode_jump(i32, i32, %struct.v810_cmd*) #1

declare dso_local i32 @decode_load_store(i32, i32, %struct.v810_cmd*) #1

declare dso_local i32 @decode_bit_op(i32, %struct.v810_cmd*) #1

declare dso_local i32 @decode_extended(i32, i32, %struct.v810_cmd*) #1

declare dso_local i32 @decode_bcond(i32, %struct.v810_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
