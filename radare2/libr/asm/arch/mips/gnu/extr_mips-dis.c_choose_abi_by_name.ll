; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/arch/mips/gnu/extr_mips-dis.c_choose_abi_by_name.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/arch/mips/gnu/extr_mips-dis.c_choose_abi_by_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mips_abi_choice = type { i32 }

@mips_abi_choices = common dso_local global %struct.mips_abi_choice* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mips_abi_choice* (i8*, i32)* @choose_abi_by_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mips_abi_choice* @choose_abi_by_name(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mips_abi_choice*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %6, align 4
  store %struct.mips_abi_choice* null, %struct.mips_abi_choice** %5, align 8
  br label %7

7:                                                ; preds = %45, %2
  %8 = load i32, i32* %6, align 4
  %9 = load %struct.mips_abi_choice*, %struct.mips_abi_choice** @mips_abi_choices, align 8
  %10 = call i32 @ARRAY_SIZE(%struct.mips_abi_choice* %9)
  %11 = icmp ult i32 %8, %10
  br i1 %11, label %12, label %16

12:                                               ; preds = %7
  %13 = load %struct.mips_abi_choice*, %struct.mips_abi_choice** %5, align 8
  %14 = icmp ne %struct.mips_abi_choice* %13, null
  %15 = xor i1 %14, true
  br label %16

16:                                               ; preds = %12, %7
  %17 = phi i1 [ false, %7 ], [ %15, %12 ]
  br i1 %17, label %18, label %48

18:                                               ; preds = %16
  %19 = load %struct.mips_abi_choice*, %struct.mips_abi_choice** @mips_abi_choices, align 8
  %20 = load i32, i32* %6, align 4
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds %struct.mips_abi_choice, %struct.mips_abi_choice* %19, i64 %21
  %23 = getelementptr inbounds %struct.mips_abi_choice, %struct.mips_abi_choice* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i8*, i8** %3, align 8
  %26 = load i32, i32* %4, align 4
  %27 = call i64 @strncmp(i32 %24, i8* %25, i32 %26)
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %44

29:                                               ; preds = %18
  %30 = load %struct.mips_abi_choice*, %struct.mips_abi_choice** @mips_abi_choices, align 8
  %31 = load i32, i32* %6, align 4
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds %struct.mips_abi_choice, %struct.mips_abi_choice* %30, i64 %32
  %34 = getelementptr inbounds %struct.mips_abi_choice, %struct.mips_abi_choice* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @strlen(i32 %35)
  %37 = load i32, i32* %4, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %44

39:                                               ; preds = %29
  %40 = load %struct.mips_abi_choice*, %struct.mips_abi_choice** @mips_abi_choices, align 8
  %41 = load i32, i32* %6, align 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds %struct.mips_abi_choice, %struct.mips_abi_choice* %40, i64 %42
  store %struct.mips_abi_choice* %43, %struct.mips_abi_choice** %5, align 8
  br label %44

44:                                               ; preds = %39, %29, %18
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %6, align 4
  %47 = add i32 %46, 1
  store i32 %47, i32* %6, align 4
  br label %7

48:                                               ; preds = %16
  %49 = load %struct.mips_abi_choice*, %struct.mips_abi_choice** %5, align 8
  ret %struct.mips_abi_choice* %49
}

declare dso_local i32 @ARRAY_SIZE(%struct.mips_abi_choice*) #1

declare dso_local i64 @strncmp(i32, i8*, i32) #1

declare dso_local i32 @strlen(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
