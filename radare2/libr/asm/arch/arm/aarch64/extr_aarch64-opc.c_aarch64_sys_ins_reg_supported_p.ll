; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/arch/arm/aarch64/extr_aarch64-opc.c_aarch64_sys_ins_reg_supported_p.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/arch/arm/aarch64/extr_aarch64-opc.c_aarch64_sys_ins_reg_supported_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64 }

@F_ARCHEXT = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@C7 = common dso_local global i32 0, align 4
@C12 = common dso_local global i32 0, align 4
@AARCH64_FEATURE_V8_2 = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@C9 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @aarch64_sys_ins_reg_supported_p(i32 %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %5, align 8
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* @F_ARCHEXT, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @TRUE, align 4
  store i32 %13, i32* %3, align 4
  br label %54

14:                                               ; preds = %2
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = load i32, i32* @C7, align 4
  %19 = load i32, i32* @C12, align 4
  %20 = call i64 @CPENS(i32 3, i32 %18, i32 %19, i32 1)
  %21 = icmp eq i64 %17, %20
  br i1 %21, label %22, label %29

22:                                               ; preds = %14
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* @AARCH64_FEATURE_V8_2, align 4
  %25 = call i32 @AARCH64_CPU_HAS_FEATURE(i32 %23, i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %22
  %28 = load i32, i32* @FALSE, align 4
  store i32 %28, i32* %3, align 4
  br label %54

29:                                               ; preds = %22, %14
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load i32, i32* @C7, align 4
  %34 = load i32, i32* @C9, align 4
  %35 = call i64 @CPENS(i32 0, i32 %33, i32 %34, i32 0)
  %36 = icmp eq i64 %32, %35
  br i1 %36, label %45, label %37

37:                                               ; preds = %29
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load i32, i32* @C7, align 4
  %42 = load i32, i32* @C9, align 4
  %43 = call i64 @CPENS(i32 0, i32 %41, i32 %42, i32 1)
  %44 = icmp eq i64 %40, %43
  br i1 %44, label %45, label %52

45:                                               ; preds = %37, %29
  %46 = load i32, i32* %4, align 4
  %47 = load i32, i32* @AARCH64_FEATURE_V8_2, align 4
  %48 = call i32 @AARCH64_CPU_HAS_FEATURE(i32 %46, i32 %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %52, label %50

50:                                               ; preds = %45
  %51 = load i32, i32* @FALSE, align 4
  store i32 %51, i32* %3, align 4
  br label %54

52:                                               ; preds = %45, %37
  %53 = load i32, i32* @TRUE, align 4
  store i32 %53, i32* %3, align 4
  br label %54

54:                                               ; preds = %52, %50, %27, %12
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local i64 @CPENS(i32, i32, i32, i32) #1

declare dso_local i32 @AARCH64_CPU_HAS_FEATURE(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
