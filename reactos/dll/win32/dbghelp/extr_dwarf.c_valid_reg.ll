; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_dwarf.c_valid_reg.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_dwarf.c_valid_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NB_FRAME_REGS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [21 x i8] c"unsupported reg %lx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64)* @valid_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @valid_reg(i64 %0) #0 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  %4 = load i64, i64* @NB_FRAME_REGS, align 8
  %5 = icmp sge i64 %3, %4
  br i1 %5, label %6, label %9

6:                                                ; preds = %1
  %7 = load i64, i64* %2, align 8
  %8 = call i32 @FIXME(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i64 %7)
  br label %9

9:                                                ; preds = %6, %1
  %10 = load i64, i64* %2, align 8
  %11 = load i64, i64* @NB_FRAME_REGS, align 8
  %12 = icmp slt i64 %10, %11
  %13 = zext i1 %12 to i32
  ret i32 %13
}

declare dso_local i32 @FIXME(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
