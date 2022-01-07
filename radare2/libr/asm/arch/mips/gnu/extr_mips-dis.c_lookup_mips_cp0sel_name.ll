; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/arch/mips/gnu/extr_mips-dis.c_lookup_mips_cp0sel_name.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/arch/mips/gnu/extr_mips-dis.c_lookup_mips_cp0sel_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mips_cp0sel_name = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mips_cp0sel_name* (%struct.mips_cp0sel_name*, i32, i32, i32)* @lookup_mips_cp0sel_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mips_cp0sel_name* @lookup_mips_cp0sel_name(%struct.mips_cp0sel_name* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.mips_cp0sel_name*, align 8
  %6 = alloca %struct.mips_cp0sel_name*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.mips_cp0sel_name* %0, %struct.mips_cp0sel_name** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %11

11:                                               ; preds = %39, %4
  %12 = load i32, i32* %10, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp ult i32 %12, %13
  br i1 %14, label %15, label %42

15:                                               ; preds = %11
  %16 = load %struct.mips_cp0sel_name*, %struct.mips_cp0sel_name** %6, align 8
  %17 = load i32, i32* %10, align 4
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds %struct.mips_cp0sel_name, %struct.mips_cp0sel_name* %16, i64 %18
  %20 = getelementptr inbounds %struct.mips_cp0sel_name, %struct.mips_cp0sel_name* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %8, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %38

24:                                               ; preds = %15
  %25 = load %struct.mips_cp0sel_name*, %struct.mips_cp0sel_name** %6, align 8
  %26 = load i32, i32* %10, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds %struct.mips_cp0sel_name, %struct.mips_cp0sel_name* %25, i64 %27
  %29 = getelementptr inbounds %struct.mips_cp0sel_name, %struct.mips_cp0sel_name* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %9, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %38

33:                                               ; preds = %24
  %34 = load %struct.mips_cp0sel_name*, %struct.mips_cp0sel_name** %6, align 8
  %35 = load i32, i32* %10, align 4
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds %struct.mips_cp0sel_name, %struct.mips_cp0sel_name* %34, i64 %36
  store %struct.mips_cp0sel_name* %37, %struct.mips_cp0sel_name** %5, align 8
  br label %43

38:                                               ; preds = %24, %15
  br label %39

39:                                               ; preds = %38
  %40 = load i32, i32* %10, align 4
  %41 = add i32 %40, 1
  store i32 %41, i32* %10, align 4
  br label %11

42:                                               ; preds = %11
  store %struct.mips_cp0sel_name* null, %struct.mips_cp0sel_name** %5, align 8
  br label %43

43:                                               ; preds = %42, %33
  %44 = load %struct.mips_cp0sel_name*, %struct.mips_cp0sel_name** %5, align 8
  ret %struct.mips_cp0sel_name* %44
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
