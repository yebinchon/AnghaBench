; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/arch/arm/gnu/extr_arm-dis.c_mapping_symbol_for_insn.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/arch/arm/gnu/extr_arm-dis.c_mapping_symbol_for_insn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.disassemble_info = type { i64, i32*, %struct.arm_private_data* }
%struct.arm_private_data = type { i32, i32 }

@FALSE = common dso_local global i64 0, align 8
@MAP_ARM = common dso_local global i32 0, align 4
@bfd_target_elf_flavour = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@MAP_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, %struct.disassemble_info*, i32*)* @mapping_symbol_for_insn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @mapping_symbol_for_insn(i64 %0, %struct.disassemble_info* %1, i32* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.disassemble_info*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.arm_private_data*, align 8
  store i64 %0, i64* %5, align 8
  store %struct.disassemble_info* %1, %struct.disassemble_info** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 0, i32* %10, align 4
  %14 = load i64, i64* @FALSE, align 8
  store i64 %14, i64* %11, align 8
  %15 = load i32, i32* @MAP_ARM, align 4
  store i32 %15, i32* %12, align 4
  %16 = load %struct.disassemble_info*, %struct.disassemble_info** %6, align 8
  %17 = getelementptr inbounds %struct.disassemble_info, %struct.disassemble_info* %16, i32 0, i32 2
  %18 = load %struct.arm_private_data*, %struct.arm_private_data** %17, align 8
  %19 = icmp eq %struct.arm_private_data* %18, null
  br i1 %19, label %33, label %20

20:                                               ; preds = %3
  %21 = load %struct.disassemble_info*, %struct.disassemble_info** %6, align 8
  %22 = getelementptr inbounds %struct.disassemble_info, %struct.disassemble_info* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %33, label %25

25:                                               ; preds = %20
  %26 = load %struct.disassemble_info*, %struct.disassemble_info** %6, align 8
  %27 = getelementptr inbounds %struct.disassemble_info, %struct.disassemble_info* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = load i32, i32* %28, align 4
  %30 = call i64 @bfd_asymbol_flavour(i32 %29)
  %31 = load i64, i64* @bfd_target_elf_flavour, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %25, %20, %3
  %34 = load i64, i64* @FALSE, align 8
  store i64 %34, i64* %4, align 8
  br label %106

35:                                               ; preds = %25
  %36 = load %struct.disassemble_info*, %struct.disassemble_info** %6, align 8
  %37 = getelementptr inbounds %struct.disassemble_info, %struct.disassemble_info* %36, i32 0, i32 2
  %38 = load %struct.arm_private_data*, %struct.arm_private_data** %37, align 8
  store %struct.arm_private_data* %38, %struct.arm_private_data** %13, align 8
  %39 = load i64, i64* %5, align 8
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %35
  store i32 0, i32* %10, align 4
  br label %46

42:                                               ; preds = %35
  %43 = load %struct.arm_private_data*, %struct.arm_private_data** %13, align 8
  %44 = getelementptr inbounds %struct.arm_private_data, %struct.arm_private_data* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %10, align 4
  br label %46

46:                                               ; preds = %42, %41
  %47 = load i32, i32* %10, align 4
  %48 = icmp eq i32 %47, -1
  br i1 %48, label %49, label %50

49:                                               ; preds = %46
  br label %52

50:                                               ; preds = %46
  %51 = load i32, i32* %10, align 4
  br label %52

52:                                               ; preds = %50, %49
  %53 = phi i32 [ 0, %49 ], [ %51, %50 ]
  store i32 %53, i32* %10, align 4
  %54 = load %struct.disassemble_info*, %struct.disassemble_info** %6, align 8
  %55 = getelementptr inbounds %struct.disassemble_info, %struct.disassemble_info* %54, i32 0, i32 1
  %56 = load i32*, i32** %55, align 8
  %57 = load i32, i32* %10, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = call i64 @bfd_asymbol_value(i32 %60)
  store i64 %61, i64* %8, align 8
  %62 = load i64, i64* %5, align 8
  %63 = load i64, i64* %8, align 8
  %64 = icmp sge i64 %62, %63
  br i1 %64, label %65, label %73

65:                                               ; preds = %52
  %66 = load %struct.disassemble_info*, %struct.disassemble_info** %6, align 8
  %67 = load i32, i32* %10, align 4
  %68 = call i64 @get_map_sym_type(%struct.disassemble_info* %66, i32 %67, i32* %12)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %65
  %71 = load i64, i64* @TRUE, align 8
  store i64 %71, i64* %11, align 8
  br label %72

72:                                               ; preds = %70, %65
  br label %91

73:                                               ; preds = %52
  %74 = load i32, i32* %10, align 4
  %75 = sub nsw i32 %74, 1
  store i32 %75, i32* %9, align 4
  br label %76

76:                                               ; preds = %87, %73
  %77 = load i32, i32* %9, align 4
  %78 = icmp sge i32 %77, 0
  br i1 %78, label %79, label %90

79:                                               ; preds = %76
  %80 = load %struct.disassemble_info*, %struct.disassemble_info** %6, align 8
  %81 = load i32, i32* %9, align 4
  %82 = call i64 @get_map_sym_type(%struct.disassemble_info* %80, i32 %81, i32* %12)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %79
  %85 = load i64, i64* @TRUE, align 8
  store i64 %85, i64* %11, align 8
  br label %90

86:                                               ; preds = %79
  br label %87

87:                                               ; preds = %86
  %88 = load i32, i32* %9, align 4
  %89 = add nsw i32 %88, -1
  store i32 %89, i32* %9, align 4
  br label %76

90:                                               ; preds = %84, %76
  br label %91

91:                                               ; preds = %90, %72
  %92 = load i64, i64* %11, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %102, label %94

94:                                               ; preds = %91
  %95 = load %struct.arm_private_data*, %struct.arm_private_data** %13, align 8
  %96 = getelementptr inbounds %struct.arm_private_data, %struct.arm_private_data* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = icmp eq i32 %97, 1
  br i1 %98, label %99, label %102

99:                                               ; preds = %94
  %100 = load i32, i32* @MAP_DATA, align 4
  store i32 %100, i32* %12, align 4
  %101 = load i64, i64* @TRUE, align 8
  store i64 %101, i64* %11, align 8
  br label %102

102:                                              ; preds = %99, %94, %91
  %103 = load i32, i32* %12, align 4
  %104 = load i32*, i32** %7, align 8
  store i32 %103, i32* %104, align 4
  %105 = load i64, i64* %11, align 8
  store i64 %105, i64* %4, align 8
  br label %106

106:                                              ; preds = %102, %33
  %107 = load i64, i64* %4, align 8
  ret i64 %107
}

declare dso_local i64 @bfd_asymbol_flavour(i32) #1

declare dso_local i64 @bfd_asymbol_value(i32) #1

declare dso_local i64 @get_map_sym_type(%struct.disassemble_info*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
