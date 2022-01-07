; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/arch/msp430/extr_msp430_disas.c_decode_jmp.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/arch/msp430/extr_msp430_disas.c_decode_jmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msp430_cmd = type { i32, i64, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@jmp_instrs = common dso_local global i8** null, align 8
@.str.1 = private unnamed_addr constant [10 x i8] c"$%c0x%04x\00", align 1
@MSP430_JUMP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.msp430_cmd*)* @decode_jmp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @decode_jmp(i32 %0, %struct.msp430_cmd* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.msp430_cmd*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.msp430_cmd* %1, %struct.msp430_cmd** %4, align 8
  %6 = load %struct.msp430_cmd*, %struct.msp430_cmd** %4, align 8
  %7 = getelementptr inbounds %struct.msp430_cmd, %struct.msp430_cmd* %6, i32 0, i32 5
  %8 = load i32, i32* %7, align 4
  %9 = load i8**, i8*** @jmp_instrs, align 8
  %10 = load i32, i32* %3, align 4
  %11 = call i64 @get_jmp_cond(i32 %10)
  %12 = getelementptr inbounds i8*, i8** %9, i64 %11
  %13 = load i8*, i8** %12, align 8
  %14 = call i32 (i32, i32, i8*, ...) @snprintf(i32 %8, i32 4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %13)
  %15 = load i32, i32* %3, align 4
  %16 = and i32 %15, 1023
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = icmp sge i32 %17, 768
  br i1 %18, label %19, label %24

19:                                               ; preds = %2
  %20 = load i32, i32* %5, align 4
  %21 = or i32 65024, %20
  %22 = mul nsw i32 %21, 2
  %23 = add nsw i32 %22, 2
  br label %29

24:                                               ; preds = %2
  %25 = load i32, i32* %5, align 4
  %26 = and i32 %25, 511
  %27 = mul nsw i32 %26, 2
  %28 = add nsw i32 %27, 2
  br label %29

29:                                               ; preds = %24, %19
  %30 = phi i32 [ %23, %19 ], [ %28, %24 ]
  %31 = load %struct.msp430_cmd*, %struct.msp430_cmd** %4, align 8
  %32 = getelementptr inbounds %struct.msp430_cmd, %struct.msp430_cmd* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 8
  %33 = load %struct.msp430_cmd*, %struct.msp430_cmd** %4, align 8
  %34 = getelementptr inbounds %struct.msp430_cmd, %struct.msp430_cmd* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* %5, align 4
  %37 = icmp sge i32 %36, 768
  %38 = zext i1 %37 to i64
  %39 = select i1 %37, i32 45, i32 43
  %40 = load i32, i32* %5, align 4
  %41 = icmp sge i32 %40, 768
  br i1 %41, label %42, label %48

42:                                               ; preds = %29
  %43 = load i32, i32* %5, align 4
  %44 = and i32 %43, 511
  %45 = mul nsw i32 %44, 2
  %46 = add nsw i32 %45, 2
  %47 = sub nsw i32 1024, %46
  br label %53

48:                                               ; preds = %29
  %49 = load i32, i32* %5, align 4
  %50 = and i32 %49, 511
  %51 = mul nsw i32 %50, 2
  %52 = add nsw i32 %51, 2
  br label %53

53:                                               ; preds = %48, %42
  %54 = phi i32 [ %47, %42 ], [ %52, %48 ]
  %55 = call i32 (i32, i32, i8*, ...) @snprintf(i32 %35, i32 4, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %39, i32 %54)
  %56 = load i32, i32* %3, align 4
  %57 = call i64 @get_jmp_cond(i32 %56)
  %58 = load %struct.msp430_cmd*, %struct.msp430_cmd** %4, align 8
  %59 = getelementptr inbounds %struct.msp430_cmd, %struct.msp430_cmd* %58, i32 0, i32 1
  store i64 %57, i64* %59, align 8
  %60 = load i32, i32* %3, align 4
  %61 = call i32 @get_jmp_opcode(i32 %60)
  %62 = load %struct.msp430_cmd*, %struct.msp430_cmd** %4, align 8
  %63 = getelementptr inbounds %struct.msp430_cmd, %struct.msp430_cmd* %62, i32 0, i32 3
  store i32 %61, i32* %63, align 4
  %64 = load i32, i32* @MSP430_JUMP, align 4
  %65 = load %struct.msp430_cmd*, %struct.msp430_cmd** %4, align 8
  %66 = getelementptr inbounds %struct.msp430_cmd, %struct.msp430_cmd* %65, i32 0, i32 2
  store i32 %64, i32* %66, align 8
  ret void
}

declare dso_local i32 @snprintf(i32, i32, i8*, ...) #1

declare dso_local i64 @get_jmp_cond(i32) #1

declare dso_local i32 @get_jmp_opcode(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
