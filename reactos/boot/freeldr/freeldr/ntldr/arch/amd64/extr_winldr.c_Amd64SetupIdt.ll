; ModuleID = '/home/carl/AnghaBench/reactos/boot/freeldr/freeldr/ntldr/arch/amd64/extr_winldr.c_Amd64SetupIdt.c'
source_filename = "/home/carl/AnghaBench/reactos/boot/freeldr/freeldr/ntldr/arch/amd64/extr_winldr.c_Amd64SetupIdt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [29 x i8] c"Amd64SetupIdt(IdtBase = %p)\0A\00", align 1
@NUM_IDT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"Leave Amd64SetupIdt()\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @Amd64SetupIdt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Amd64SetupIdt(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_2__, align 4
  %5 = alloca %struct.TYPE_2__, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %7)
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %10 = call i32 @__sidt(i32* %9)
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = add nsw i32 %12, 1
  %14 = load i32, i32* @NUM_IDT, align 4
  %15 = sext i32 %14 to i64
  %16 = mul i64 %15, 4
  %17 = trunc i64 %16 to i32
  %18 = call i32 @min(i32 %13, i32 %17)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %3, align 4
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 1
  store i32 %19, i32* %20, align 4
  %21 = load i32, i32* @NUM_IDT, align 4
  %22 = sext i32 %21 to i64
  %23 = mul i64 %22, 4
  %24 = sub i64 %23, 1
  %25 = trunc i64 %24 to i32
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 0
  store i32 %25, i32* %26, align 4
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 0
  %28 = call i32 @__lidt(i32* %27)
  %29 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

declare dso_local i32 @TRACE(i8*, ...) #1

declare dso_local i32 @__sidt(i32*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @__lidt(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
