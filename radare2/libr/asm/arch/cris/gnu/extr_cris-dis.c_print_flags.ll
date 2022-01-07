; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/arch/cris/gnu/extr_cris-dis.c_print_flags.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/arch/cris/gnu/extr_cris-dis.c_print_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cris_disasm_data = type { i64 }

@print_flags.v8_fnames = internal constant [9 x i8] c"cvznxibm\00", align 1
@print_flags.v32_fnames = internal constant [9 x i8] c"cvznxiup\00", align 1
@cris_dis_v32 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.cris_disasm_data*, i32, i8*)* @print_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @print_flags(%struct.cris_disasm_data* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.cris_disasm_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8, align 1
  %9 = alloca i32, align 4
  store %struct.cris_disasm_data* %0, %struct.cris_disasm_data** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %10 = load %struct.cris_disasm_data*, %struct.cris_disasm_data** %4, align 8
  %11 = getelementptr inbounds %struct.cris_disasm_data, %struct.cris_disasm_data* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @cris_dis_v32, align 8
  %14 = icmp eq i64 %12, %13
  %15 = zext i1 %14 to i64
  %16 = select i1 %14, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @print_flags.v32_fnames, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @print_flags.v8_fnames, i64 0, i64 0)
  store i8* %16, i8** %7, align 8
  %17 = load i32, i32* %5, align 4
  %18 = lshr i32 %17, 8
  %19 = and i32 %18, 240
  %20 = load i32, i32* %5, align 4
  %21 = and i32 %20, 15
  %22 = or i32 %19, %21
  %23 = trunc i32 %22 to i8
  store i8 %23, i8* %8, align 1
  store i32 0, i32* %9, align 4
  br label %24

24:                                               ; preds = %43, %3
  %25 = load i32, i32* %9, align 4
  %26 = icmp slt i32 %25, 8
  br i1 %26, label %27, label %46

27:                                               ; preds = %24
  %28 = load i8, i8* %8, align 1
  %29 = zext i8 %28 to i32
  %30 = load i32, i32* %9, align 4
  %31 = shl i32 1, %30
  %32 = and i32 %29, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %42

34:                                               ; preds = %27
  %35 = load i8*, i8** %7, align 8
  %36 = load i32, i32* %9, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8, i8* %35, i64 %37
  %39 = load i8, i8* %38, align 1
  %40 = load i8*, i8** %6, align 8
  %41 = getelementptr inbounds i8, i8* %40, i32 1
  store i8* %41, i8** %6, align 8
  store i8 %39, i8* %40, align 1
  br label %42

42:                                               ; preds = %34, %27
  br label %43

43:                                               ; preds = %42
  %44 = load i32, i32* %9, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %9, align 4
  br label %24

46:                                               ; preds = %24
  %47 = load i8*, i8** %6, align 8
  ret i8* %47
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
