; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/arch/arc/gnu/extr_arc-opc.c_lookup_register.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/arch/arc/gnu/extr_arc-opc.c_lookup_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arc_ext_operand_value = type { %struct.arc_ext_operand_value*, %struct.arc_operand_value }
%struct.arc_operand_value = type { i32, i64 }

@arc_ext_operands = common dso_local global %struct.arc_ext_operand_value* null, align 8
@REG = common dso_local global i32 0, align 4
@REG_AC = common dso_local global i32 0, align 4
@arc_reg_names = common dso_local global %struct.arc_operand_value* null, align 8
@arc_reg_names_count = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.arc_operand_value* (i32, i64)* @lookup_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.arc_operand_value* @lookup_register(i32 %0, i64 %1) #0 {
  %3 = alloca %struct.arc_operand_value*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.arc_operand_value*, align 8
  %7 = alloca %struct.arc_operand_value*, align 8
  %8 = alloca %struct.arc_ext_operand_value*, align 8
  store i32 %0, i32* %4, align 4
  store i64 %1, i64* %5, align 8
  %9 = load %struct.arc_ext_operand_value*, %struct.arc_ext_operand_value** @arc_ext_operands, align 8
  store %struct.arc_ext_operand_value* %9, %struct.arc_ext_operand_value** %8, align 8
  br label %10

10:                                               ; preds = %30, %2
  %11 = load %struct.arc_ext_operand_value*, %struct.arc_ext_operand_value** %8, align 8
  %12 = icmp ne %struct.arc_ext_operand_value* %11, null
  br i1 %12, label %13, label %34

13:                                               ; preds = %10
  %14 = load %struct.arc_ext_operand_value*, %struct.arc_ext_operand_value** %8, align 8
  %15 = getelementptr inbounds %struct.arc_ext_operand_value, %struct.arc_ext_operand_value* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.arc_operand_value, %struct.arc_operand_value* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* %4, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %30

20:                                               ; preds = %13
  %21 = load %struct.arc_ext_operand_value*, %struct.arc_ext_operand_value** %8, align 8
  %22 = getelementptr inbounds %struct.arc_ext_operand_value, %struct.arc_ext_operand_value* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.arc_operand_value, %struct.arc_operand_value* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* %5, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %20
  %28 = load %struct.arc_ext_operand_value*, %struct.arc_ext_operand_value** %8, align 8
  %29 = getelementptr inbounds %struct.arc_ext_operand_value, %struct.arc_ext_operand_value* %28, i32 0, i32 1
  store %struct.arc_operand_value* %29, %struct.arc_operand_value** %3, align 8
  br label %75

30:                                               ; preds = %20, %13
  %31 = load %struct.arc_ext_operand_value*, %struct.arc_ext_operand_value** %8, align 8
  %32 = getelementptr inbounds %struct.arc_ext_operand_value, %struct.arc_ext_operand_value* %31, i32 0, i32 0
  %33 = load %struct.arc_ext_operand_value*, %struct.arc_ext_operand_value** %32, align 8
  store %struct.arc_ext_operand_value* %33, %struct.arc_ext_operand_value** %8, align 8
  br label %10

34:                                               ; preds = %10
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* @REG, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %42, label %38

38:                                               ; preds = %34
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* @REG_AC, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %46

42:                                               ; preds = %38, %34
  %43 = load %struct.arc_operand_value*, %struct.arc_operand_value** @arc_reg_names, align 8
  %44 = load i64, i64* %5, align 8
  %45 = getelementptr inbounds %struct.arc_operand_value, %struct.arc_operand_value* %43, i64 %44
  store %struct.arc_operand_value* %45, %struct.arc_operand_value** %3, align 8
  br label %75

46:                                               ; preds = %38
  %47 = load %struct.arc_operand_value*, %struct.arc_operand_value** @arc_reg_names, align 8
  store %struct.arc_operand_value* %47, %struct.arc_operand_value** %6, align 8
  %48 = load %struct.arc_operand_value*, %struct.arc_operand_value** @arc_reg_names, align 8
  %49 = load i32, i32* @arc_reg_names_count, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.arc_operand_value, %struct.arc_operand_value* %48, i64 %50
  store %struct.arc_operand_value* %51, %struct.arc_operand_value** %7, align 8
  br label %52

52:                                               ; preds = %71, %46
  %53 = load %struct.arc_operand_value*, %struct.arc_operand_value** %6, align 8
  %54 = load %struct.arc_operand_value*, %struct.arc_operand_value** %7, align 8
  %55 = icmp ult %struct.arc_operand_value* %53, %54
  br i1 %55, label %56, label %74

56:                                               ; preds = %52
  %57 = load i32, i32* %4, align 4
  %58 = load %struct.arc_operand_value*, %struct.arc_operand_value** %6, align 8
  %59 = getelementptr inbounds %struct.arc_operand_value, %struct.arc_operand_value* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = icmp eq i32 %57, %60
  br i1 %61, label %62, label %70

62:                                               ; preds = %56
  %63 = load i64, i64* %5, align 8
  %64 = load %struct.arc_operand_value*, %struct.arc_operand_value** %6, align 8
  %65 = getelementptr inbounds %struct.arc_operand_value, %struct.arc_operand_value* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = icmp eq i64 %63, %66
  br i1 %67, label %68, label %70

68:                                               ; preds = %62
  %69 = load %struct.arc_operand_value*, %struct.arc_operand_value** %6, align 8
  store %struct.arc_operand_value* %69, %struct.arc_operand_value** %3, align 8
  br label %75

70:                                               ; preds = %62, %56
  br label %71

71:                                               ; preds = %70
  %72 = load %struct.arc_operand_value*, %struct.arc_operand_value** %6, align 8
  %73 = getelementptr inbounds %struct.arc_operand_value, %struct.arc_operand_value* %72, i32 1
  store %struct.arc_operand_value* %73, %struct.arc_operand_value** %6, align 8
  br label %52

74:                                               ; preds = %52
  store %struct.arc_operand_value* null, %struct.arc_operand_value** %3, align 8
  br label %75

75:                                               ; preds = %74, %68, %42, %27
  %76 = load %struct.arc_operand_value*, %struct.arc_operand_value** %3, align 8
  ret %struct.arc_operand_value* %76
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
