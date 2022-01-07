; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/arch/msp430/extr_msp430_disas.c_remove_first_operand.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/arch/msp430/extr_msp430_disas.c_remove_first_operand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msp430_cmd = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.msp430_cmd*)* @remove_first_operand to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @remove_first_operand(%struct.msp430_cmd* %0) #0 {
  %2 = alloca %struct.msp430_cmd*, align 8
  store %struct.msp430_cmd* %0, %struct.msp430_cmd** %2, align 8
  %3 = load %struct.msp430_cmd*, %struct.msp430_cmd** %2, align 8
  %4 = getelementptr inbounds %struct.msp430_cmd, %struct.msp430_cmd* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = call i64 @strchr(i32 %5, i8 signext 44)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %25

8:                                                ; preds = %1
  %9 = load %struct.msp430_cmd*, %struct.msp430_cmd** %2, align 8
  %10 = getelementptr inbounds %struct.msp430_cmd, %struct.msp430_cmd* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.msp430_cmd*, %struct.msp430_cmd** %2, align 8
  %13 = getelementptr inbounds %struct.msp430_cmd, %struct.msp430_cmd* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i64 @strchr(i32 %14, i8 signext 44)
  %16 = add nsw i64 %15, 2
  %17 = load %struct.msp430_cmd*, %struct.msp430_cmd** %2, align 8
  %18 = getelementptr inbounds %struct.msp430_cmd, %struct.msp430_cmd* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i64 @strchr(i32 %19, i8 signext 44)
  %21 = add nsw i64 %20, 2
  %22 = call i64 @strlen(i64 %21)
  %23 = add nsw i64 %22, 1
  %24 = call i32 @memmove(i32 %11, i64 %16, i64 %23)
  br label %25

25:                                               ; preds = %8, %1
  ret void
}

declare dso_local i64 @strchr(i32, i8 signext) #1

declare dso_local i32 @memmove(i32, i64, i64) #1

declare dso_local i64 @strlen(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
