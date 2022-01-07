; ModuleID = '/home/carl/AnghaBench/mimikatz/mimidrv/extr_kkll_m_ssdt.c_kkll_m_ssdt_list.c'
source_filename = "/home/carl/AnghaBench/mimikatz/mimidrv/extr_kkll_m_ssdt.c_kkll_m_ssdt_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32*, i64* }

@.str = private unnamed_addr constant [38 x i32] [i32 75, i32 101, i32 83, i32 101, i32 114, i32 118, i32 105, i32 99, i32 101, i32 68, i32 101, i32 115, i32 99, i32 114, i32 105, i32 112, i32 116, i32 111, i32 114, i32 84, i32 97, i32 98, i32 108, i32 101, i32 32, i32 58, i32 32, i32 48, i32 120, i32 37, i32 112, i32 32, i32 40, i32 37, i32 117, i32 41, i32 10, i32 0], align 4
@KeServiceDescriptorTable = common dso_local global %struct.TYPE_2__* null, align 8
@KiwiOsIndex = common dso_local global i64 0, align 8
@KiwiOsIndex_VISTA = common dso_local global i64 0, align 8
@EX_FAST_REF_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i32] [i32 91, i32 37, i32 53, i32 117, i32 93, i32 32, i32 0], align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kkll_m_ssdt_list(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** @KeServiceDescriptorTable, align 8
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** @KeServiceDescriptorTable, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = call i32 (i32, i8*, ...) @kprintf(i32 %6, i8* bitcast ([38 x i32]* @.str to i8*), %struct.TYPE_2__* %7, i64 %10)
  store i32 %11, i32* %3, align 4
  store i64 0, i64* %4, align 8
  br label %12

12:                                               ; preds = %69, %1
  %13 = load i64, i64* %4, align 8
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** @KeServiceDescriptorTable, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ult i64 %13, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %12
  %19 = load i32, i32* %3, align 4
  %20 = call i64 @NT_SUCCESS(i32 %19)
  %21 = icmp ne i64 %20, 0
  br label %22

22:                                               ; preds = %18, %12
  %23 = phi i1 [ false, %12 ], [ %21, %18 ]
  br i1 %23, label %24, label %72

24:                                               ; preds = %22
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** @KeServiceDescriptorTable, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = ptrtoint i32* %27 to i64
  store i64 %28, i64* %5, align 8
  %29 = load i64, i64* @KiwiOsIndex, align 8
  %30 = load i64, i64* @KiwiOsIndex_VISTA, align 8
  %31 = icmp slt i64 %29, %30
  br i1 %31, label %32, label %45

32:                                               ; preds = %24
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** @KeServiceDescriptorTable, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = load i64, i64* %4, align 8
  %37 = getelementptr inbounds i32, i32* %35, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @EX_FAST_REF_MASK, align 4
  %40 = xor i32 %39, -1
  %41 = and i32 %38, %40
  %42 = sext i32 %41 to i64
  %43 = load i64, i64* %5, align 8
  %44 = add nsw i64 %43, %42
  store i64 %44, i64* %5, align 8
  br label %56

45:                                               ; preds = %24
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** @KeServiceDescriptorTable, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = load i64, i64* %4, align 8
  %50 = getelementptr inbounds i32, i32* %48, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = ashr i32 %51, 4
  %53 = sext i32 %52 to i64
  %54 = load i64, i64* %5, align 8
  %55 = add nsw i64 %54, %53
  store i64 %55, i64* %5, align 8
  br label %56

56:                                               ; preds = %45, %32
  %57 = load i32, i32* %2, align 4
  %58 = load i64, i64* %4, align 8
  %59 = call i32 (i32, i8*, ...) @kprintf(i32 %57, i8* bitcast ([7 x i32]* @.str.1 to i8*), i64 %58)
  store i32 %59, i32* %3, align 4
  %60 = load i32, i32* %3, align 4
  %61 = call i64 @NT_SUCCESS(i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %56
  %64 = load i32, i32* %2, align 4
  %65 = load i64, i64* %5, align 8
  %66 = trunc i64 %65 to i32
  %67 = call i32 @kkll_m_modules_fromAddr(i32 %64, i32 %66)
  store i32 %67, i32* %3, align 4
  br label %68

68:                                               ; preds = %63, %56
  br label %69

69:                                               ; preds = %68
  %70 = load i64, i64* %4, align 8
  %71 = add i64 %70, 1
  store i64 %71, i64* %4, align 8
  br label %12

72:                                               ; preds = %22
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local i32 @kprintf(i32, i8*, ...) #1

declare dso_local i64 @NT_SUCCESS(i32) #1

declare dso_local i32 @kkll_m_modules_fromAddr(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
