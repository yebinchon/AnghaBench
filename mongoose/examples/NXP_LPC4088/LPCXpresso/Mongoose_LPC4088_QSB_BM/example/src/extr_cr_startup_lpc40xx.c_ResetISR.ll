; ModuleID = '/home/carl/AnghaBench/mongoose/examples/NXP_LPC4088/LPCXpresso/Mongoose_LPC4088_QSB_BM/example/src/extr_cr_startup_lpc40xx.c_ResetISR.c'
source_filename = "/home/carl/AnghaBench/mongoose/examples/NXP_LPC4088/LPCXpresso/Mongoose_LPC4088_QSB_BM/example/src/extr_cr_startup_lpc40xx.c_ResetISR.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__data_section_table = common dso_local global i32 0, align 4
@__data_section_table_end = common dso_local global i32 0, align 4
@__bss_section_table_end = common dso_local global i32 0, align 4
@g_pfnVectors = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ResetISR() #0 section ".after_vectors" {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  store i32* @__data_section_table, i32** %4, align 8
  br label %6

6:                                                ; preds = %9, %0
  %7 = load i32*, i32** %4, align 8
  %8 = icmp ult i32* %7, @__data_section_table_end
  br i1 %8, label %9, label %23

9:                                                ; preds = %6
  %10 = load i32*, i32** %4, align 8
  %11 = getelementptr inbounds i32, i32* %10, i32 1
  store i32* %11, i32** %4, align 8
  %12 = load i32, i32* %10, align 4
  store i32 %12, i32* %1, align 4
  %13 = load i32*, i32** %4, align 8
  %14 = getelementptr inbounds i32, i32* %13, i32 1
  store i32* %14, i32** %4, align 8
  %15 = load i32, i32* %13, align 4
  store i32 %15, i32* %2, align 4
  %16 = load i32*, i32** %4, align 8
  %17 = getelementptr inbounds i32, i32* %16, i32 1
  store i32* %17, i32** %4, align 8
  %18 = load i32, i32* %16, align 4
  store i32 %18, i32* %3, align 4
  %19 = load i32, i32* %1, align 4
  %20 = load i32, i32* %2, align 4
  %21 = load i32, i32* %3, align 4
  %22 = call i32 @data_init(i32 %19, i32 %20, i32 %21)
  br label %6

23:                                               ; preds = %6
  br label %24

24:                                               ; preds = %27, %23
  %25 = load i32*, i32** %4, align 8
  %26 = icmp ult i32* %25, @__bss_section_table_end
  br i1 %26, label %27, label %37

27:                                               ; preds = %24
  %28 = load i32*, i32** %4, align 8
  %29 = getelementptr inbounds i32, i32* %28, i32 1
  store i32* %29, i32** %4, align 8
  %30 = load i32, i32* %28, align 4
  store i32 %30, i32* %2, align 4
  %31 = load i32*, i32** %4, align 8
  %32 = getelementptr inbounds i32, i32* %31, i32 1
  store i32* %32, i32** %4, align 8
  %33 = load i32, i32* %31, align 4
  store i32 %33, i32* %3, align 4
  %34 = load i32, i32* %2, align 4
  %35 = load i32, i32* %3, align 4
  %36 = call i32 @bss_init(i32 %34, i32 %35)
  br label %24

37:                                               ; preds = %24
  store i32* inttoptr (i64 3758157064 to i32*), i32** %5, align 8
  %38 = load i64, i64* @g_pfnVectors, align 8
  %39 = inttoptr i64 %38 to i32*
  %40 = icmp ne i32* %39, null
  br i1 %40, label %41, label %45

41:                                               ; preds = %37
  %42 = load i64, i64* @g_pfnVectors, align 8
  %43 = trunc i64 %42 to i32
  %44 = load i32*, i32** %5, align 8
  store i32 %43, i32* %44, align 4
  br label %45

45:                                               ; preds = %41, %37
  %46 = call i32 (...) @main()
  br label %47

47:                                               ; preds = %45, %47
  br label %47
}

declare dso_local i32 @data_init(i32, i32, i32) #1

declare dso_local i32 @bss_init(i32, i32) #1

declare dso_local i32 @main(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
