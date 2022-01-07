; ModuleID = '/home/carl/AnghaBench/php-src/ext/opcache/jit/libudis86/extr_udis86.c_ud_insn_opr.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/opcache/jit/libudis86/extr_udis86.c_ud_insn_opr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ud_operand = type { i64 }
%struct.ud = type { %struct.ud_operand* }

@UD_NONE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ud_operand* @ud_insn_opr(%struct.ud* %0, i32 %1) #0 {
  %3 = alloca %struct.ud_operand*, align 8
  %4 = alloca %struct.ud*, align 8
  %5 = alloca i32, align 4
  store %struct.ud* %0, %struct.ud** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = icmp ugt i32 %6, 3
  br i1 %7, label %19, label %8

8:                                                ; preds = %2
  %9 = load %struct.ud*, %struct.ud** %4, align 8
  %10 = getelementptr inbounds %struct.ud, %struct.ud* %9, i32 0, i32 0
  %11 = load %struct.ud_operand*, %struct.ud_operand** %10, align 8
  %12 = load i32, i32* %5, align 4
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds %struct.ud_operand, %struct.ud_operand* %11, i64 %13
  %15 = getelementptr inbounds %struct.ud_operand, %struct.ud_operand* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @UD_NONE, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %8, %2
  store %struct.ud_operand* null, %struct.ud_operand** %3, align 8
  br label %27

20:                                               ; preds = %8
  %21 = load %struct.ud*, %struct.ud** %4, align 8
  %22 = getelementptr inbounds %struct.ud, %struct.ud* %21, i32 0, i32 0
  %23 = load %struct.ud_operand*, %struct.ud_operand** %22, align 8
  %24 = load i32, i32* %5, align 4
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds %struct.ud_operand, %struct.ud_operand* %23, i64 %25
  store %struct.ud_operand* %26, %struct.ud_operand** %3, align 8
  br label %27

27:                                               ; preds = %20, %19
  %28 = load %struct.ud_operand*, %struct.ud_operand** %3, align 8
  ret %struct.ud_operand* %28
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
