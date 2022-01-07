; ModuleID = '/home/carl/AnghaBench/php-src/ext/opcache/jit/libudis86/extr_udis86.c_ud_opr_is_gpr.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/opcache/jit/libudis86/extr_udis86.c_ud_opr_is_gpr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ud_operand = type { i64, i64 }

@UD_OP_REG = common dso_local global i64 0, align 8
@UD_R_AL = common dso_local global i64 0, align 8
@UD_R_R15 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ud_opr_is_gpr(%struct.ud_operand* %0) #0 {
  %2 = alloca %struct.ud_operand*, align 8
  store %struct.ud_operand* %0, %struct.ud_operand** %2, align 8
  %3 = load %struct.ud_operand*, %struct.ud_operand** %2, align 8
  %4 = getelementptr inbounds %struct.ud_operand, %struct.ud_operand* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @UD_OP_REG, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %8, label %20

8:                                                ; preds = %1
  %9 = load %struct.ud_operand*, %struct.ud_operand** %2, align 8
  %10 = getelementptr inbounds %struct.ud_operand, %struct.ud_operand* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @UD_R_AL, align 8
  %13 = icmp sge i64 %11, %12
  br i1 %13, label %14, label %20

14:                                               ; preds = %8
  %15 = load %struct.ud_operand*, %struct.ud_operand** %2, align 8
  %16 = getelementptr inbounds %struct.ud_operand, %struct.ud_operand* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @UD_R_R15, align 8
  %19 = icmp sle i64 %17, %18
  br label %20

20:                                               ; preds = %14, %8, %1
  %21 = phi i1 [ false, %8 ], [ false, %1 ], [ %19, %14 ]
  %22 = zext i1 %21 to i32
  ret i32 %22
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
