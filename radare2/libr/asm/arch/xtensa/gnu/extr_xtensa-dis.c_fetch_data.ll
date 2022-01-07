; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/arch/xtensa/gnu/extr_xtensa-dis.c_fetch_data.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/arch/xtensa/gnu/extr_xtensa-dis.c_fetch_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.disassemble_info = type { i32 (i32, i32, i32, %struct.disassemble_info*)*, i32 (i32, i32, %struct.disassemble_info*)*, i64 }
%struct.dis_private = type { i32, i32 }

@xtensa_default_isa = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.disassemble_info*, i32)* @fetch_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fetch_data(%struct.disassemble_info* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.disassemble_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.dis_private*, align 8
  %9 = alloca i32, align 4
  store %struct.disassemble_info* %0, %struct.disassemble_info** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %7, align 4
  %10 = load %struct.disassemble_info*, %struct.disassemble_info** %4, align 8
  %11 = getelementptr inbounds %struct.disassemble_info, %struct.disassemble_info* %10, i32 0, i32 2
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.dis_private*
  store %struct.dis_private* %13, %struct.dis_private** %8, align 8
  %14 = load i32, i32* @xtensa_default_isa, align 4
  %15 = call i32 @xtensa_isa_maxlength(i32 %14)
  store i32 %15, i32* %9, align 4
  %16 = load %struct.dis_private*, %struct.dis_private** %8, align 8
  %17 = getelementptr inbounds %struct.dis_private, %struct.dis_private* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %9, align 4
  %20 = call i32 @memset(i32 %18, i32 0, i32 %19)
  %21 = load i32, i32* %9, align 4
  store i32 %21, i32* %6, align 4
  br label %22

22:                                               ; preds = %41, %2
  %23 = load i32, i32* %6, align 4
  %24 = icmp sgt i32 %23, 0
  br i1 %24, label %25, label %44

25:                                               ; preds = %22
  %26 = load %struct.disassemble_info*, %struct.disassemble_info** %4, align 8
  %27 = getelementptr inbounds %struct.disassemble_info, %struct.disassemble_info* %26, i32 0, i32 0
  %28 = load i32 (i32, i32, i32, %struct.disassemble_info*)*, i32 (i32, i32, i32, %struct.disassemble_info*)** %27, align 8
  %29 = load i32, i32* %5, align 4
  %30 = load %struct.dis_private*, %struct.dis_private** %8, align 8
  %31 = getelementptr inbounds %struct.dis_private, %struct.dis_private* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %6, align 4
  %34 = load %struct.disassemble_info*, %struct.disassemble_info** %4, align 8
  %35 = call i32 %28(i32 %29, i32 %32, i32 %33, %struct.disassemble_info* %34)
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %7, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %25
  %39 = load i32, i32* %6, align 4
  store i32 %39, i32* %3, align 4
  br label %56

40:                                               ; preds = %25
  br label %41

41:                                               ; preds = %40
  %42 = load i32, i32* %6, align 4
  %43 = add nsw i32 %42, -1
  store i32 %43, i32* %6, align 4
  br label %22

44:                                               ; preds = %22
  %45 = load %struct.disassemble_info*, %struct.disassemble_info** %4, align 8
  %46 = getelementptr inbounds %struct.disassemble_info, %struct.disassemble_info* %45, i32 0, i32 1
  %47 = load i32 (i32, i32, %struct.disassemble_info*)*, i32 (i32, i32, %struct.disassemble_info*)** %46, align 8
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* %5, align 4
  %50 = load %struct.disassemble_info*, %struct.disassemble_info** %4, align 8
  %51 = call i32 %47(i32 %48, i32 %49, %struct.disassemble_info* %50)
  %52 = load %struct.dis_private*, %struct.dis_private** %8, align 8
  %53 = getelementptr inbounds %struct.dis_private, %struct.dis_private* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @OPCODES_SIGLONGJMP(i32 %54, i32 1)
  store i32 -1, i32* %3, align 4
  br label %56

56:                                               ; preds = %44, %38
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local i32 @xtensa_isa_maxlength(i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @OPCODES_SIGLONGJMP(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
