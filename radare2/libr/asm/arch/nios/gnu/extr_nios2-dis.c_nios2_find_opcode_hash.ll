; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/arch/nios/gnu/extr_nios2-dis.c_nios2_find_opcode_hash.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/arch/nios/gnu/extr_nios2-dis.c_nios2_find_opcode_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.nios2_opcode*, %struct.TYPE_4__* }
%struct.nios2_opcode = type { i64, i64 }

@nios2_hash_init = common dso_local global i32 0, align 4
@nios2_ps_hash = common dso_local global %struct.TYPE_4__** null, align 8
@OP_SH_OP = common dso_local global i64 0, align 8
@OP_MASK_OP = common dso_local global i64 0, align 8
@nios2_hash = common dso_local global %struct.TYPE_4__** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.nios2_opcode* @nios2_find_opcode_hash(i64 %0) #0 {
  %2 = alloca %struct.nios2_opcode*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  store i64 %0, i64* %3, align 8
  %5 = load i32, i32* @nios2_hash_init, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %1
  %8 = call i32 (...) @nios2_init_opcode_hash()
  br label %9

9:                                                ; preds = %7, %1
  %10 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @nios2_ps_hash, align 8
  %11 = load i64, i64* %3, align 8
  %12 = load i64, i64* @OP_SH_OP, align 8
  %13 = lshr i64 %11, %12
  %14 = load i64, i64* @OP_MASK_OP, align 8
  %15 = and i64 %13, %14
  %16 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %10, i64 %15
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  store %struct.TYPE_4__* %17, %struct.TYPE_4__** %4, align 8
  br label %18

18:                                               ; preds = %40, %9
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %20 = icmp ne %struct.TYPE_4__* %19, null
  br i1 %20, label %21, label %44

21:                                               ; preds = %18
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load %struct.nios2_opcode*, %struct.nios2_opcode** %23, align 8
  %25 = getelementptr inbounds %struct.nios2_opcode, %struct.nios2_opcode* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* %3, align 8
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load %struct.nios2_opcode*, %struct.nios2_opcode** %29, align 8
  %31 = getelementptr inbounds %struct.nios2_opcode, %struct.nios2_opcode* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = and i64 %27, %32
  %34 = icmp eq i64 %26, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %21
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load %struct.nios2_opcode*, %struct.nios2_opcode** %37, align 8
  store %struct.nios2_opcode* %38, %struct.nios2_opcode** %2, align 8
  br label %80

39:                                               ; preds = %21
  br label %40

40:                                               ; preds = %39
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 1
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  store %struct.TYPE_4__* %43, %struct.TYPE_4__** %4, align 8
  br label %18

44:                                               ; preds = %18
  %45 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @nios2_hash, align 8
  %46 = load i64, i64* %3, align 8
  %47 = load i64, i64* @OP_SH_OP, align 8
  %48 = lshr i64 %46, %47
  %49 = load i64, i64* @OP_MASK_OP, align 8
  %50 = and i64 %48, %49
  %51 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %45, i64 %50
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  store %struct.TYPE_4__* %52, %struct.TYPE_4__** %4, align 8
  br label %53

53:                                               ; preds = %75, %44
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %55 = icmp ne %struct.TYPE_4__* %54, null
  br i1 %55, label %56, label %79

56:                                               ; preds = %53
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load %struct.nios2_opcode*, %struct.nios2_opcode** %58, align 8
  %60 = getelementptr inbounds %struct.nios2_opcode, %struct.nios2_opcode* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* %3, align 8
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load %struct.nios2_opcode*, %struct.nios2_opcode** %64, align 8
  %66 = getelementptr inbounds %struct.nios2_opcode, %struct.nios2_opcode* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = and i64 %62, %67
  %69 = icmp eq i64 %61, %68
  br i1 %69, label %70, label %74

70:                                               ; preds = %56
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = load %struct.nios2_opcode*, %struct.nios2_opcode** %72, align 8
  store %struct.nios2_opcode* %73, %struct.nios2_opcode** %2, align 8
  br label %80

74:                                               ; preds = %56
  br label %75

75:                                               ; preds = %74
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 1
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %77, align 8
  store %struct.TYPE_4__* %78, %struct.TYPE_4__** %4, align 8
  br label %53

79:                                               ; preds = %53
  store %struct.nios2_opcode* null, %struct.nios2_opcode** %2, align 8
  br label %80

80:                                               ; preds = %79, %70, %35
  %81 = load %struct.nios2_opcode*, %struct.nios2_opcode** %2, align 8
  ret %struct.nios2_opcode* %81
}

declare dso_local i32 @nios2_init_opcode_hash(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
