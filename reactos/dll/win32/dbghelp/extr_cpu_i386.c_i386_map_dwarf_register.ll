; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_cpu_i386.c_i386_map_dwarf_register.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_cpu_i386.c_i386_map_dwarf_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CV_REG_EAX = common dso_local global i32 0, align 4
@CV_REG_ECX = common dso_local global i32 0, align 4
@CV_REG_EDX = common dso_local global i32 0, align 4
@CV_REG_EBX = common dso_local global i32 0, align 4
@CV_REG_ESP = common dso_local global i32 0, align 4
@CV_REG_EBP = common dso_local global i32 0, align 4
@CV_REG_ESI = common dso_local global i32 0, align 4
@CV_REG_EDI = common dso_local global i32 0, align 4
@CV_REG_EIP = common dso_local global i32 0, align 4
@CV_REG_EFLAGS = common dso_local global i32 0, align 4
@CV_REG_CS = common dso_local global i32 0, align 4
@CV_REG_SS = common dso_local global i32 0, align 4
@CV_REG_DS = common dso_local global i32 0, align 4
@CV_REG_ES = common dso_local global i32 0, align 4
@CV_REG_FS = common dso_local global i32 0, align 4
@CV_REG_GS = common dso_local global i32 0, align 4
@CV_REG_ST0 = common dso_local global i32 0, align 4
@CV_REG_CTRL = common dso_local global i32 0, align 4
@CV_REG_STAT = common dso_local global i32 0, align 4
@CV_REG_TAG = common dso_local global i32 0, align 4
@CV_REG_FPCS = common dso_local global i32 0, align 4
@CV_REG_FPIP = common dso_local global i32 0, align 4
@CV_REG_FPDS = common dso_local global i32 0, align 4
@CV_REG_FPDO = common dso_local global i32 0, align 4
@CV_REG_XMM0 = common dso_local global i32 0, align 4
@CV_REG_MXCSR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Don't know how to map register %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @i386_map_dwarf_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i386_map_dwarf_register(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %4, align 4
  switch i32 %7, label %71 [
    i32 0, label %8
    i32 1, label %10
    i32 2, label %12
    i32 3, label %14
    i32 4, label %16
    i32 5, label %16
    i32 6, label %25
    i32 7, label %27
    i32 8, label %29
    i32 9, label %31
    i32 10, label %33
    i32 11, label %35
    i32 12, label %37
    i32 13, label %39
    i32 14, label %41
    i32 15, label %43
    i32 16, label %45
    i32 17, label %45
    i32 18, label %45
    i32 19, label %45
    i32 20, label %45
    i32 21, label %45
    i32 22, label %45
    i32 23, label %45
    i32 24, label %50
    i32 25, label %52
    i32 26, label %54
    i32 27, label %56
    i32 28, label %58
    i32 29, label %60
    i32 30, label %62
    i32 32, label %64
    i32 33, label %64
    i32 34, label %64
    i32 35, label %64
    i32 36, label %64
    i32 37, label %64
    i32 38, label %64
    i32 39, label %64
    i32 40, label %69
  ]

8:                                                ; preds = %2
  %9 = load i32, i32* @CV_REG_EAX, align 4
  store i32 %9, i32* %6, align 4
  br label %74

10:                                               ; preds = %2
  %11 = load i32, i32* @CV_REG_ECX, align 4
  store i32 %11, i32* %6, align 4
  br label %74

12:                                               ; preds = %2
  %13 = load i32, i32* @CV_REG_EDX, align 4
  store i32 %13, i32* %6, align 4
  br label %74

14:                                               ; preds = %2
  %15 = load i32, i32* @CV_REG_EBX, align 4
  store i32 %15, i32* %6, align 4
  br label %74

16:                                               ; preds = %2, %2
  %17 = load i32, i32* %4, align 4
  %18 = icmp eq i32 %17, 4
  br i1 %18, label %19, label %21

19:                                               ; preds = %16
  %20 = load i32, i32* @CV_REG_ESP, align 4
  br label %23

21:                                               ; preds = %16
  %22 = load i32, i32* @CV_REG_EBP, align 4
  br label %23

23:                                               ; preds = %21, %19
  %24 = phi i32 [ %20, %19 ], [ %22, %21 ]
  store i32 %24, i32* %6, align 4
  br label %74

25:                                               ; preds = %2
  %26 = load i32, i32* @CV_REG_ESI, align 4
  store i32 %26, i32* %6, align 4
  br label %74

27:                                               ; preds = %2
  %28 = load i32, i32* @CV_REG_EDI, align 4
  store i32 %28, i32* %6, align 4
  br label %74

29:                                               ; preds = %2
  %30 = load i32, i32* @CV_REG_EIP, align 4
  store i32 %30, i32* %6, align 4
  br label %74

31:                                               ; preds = %2
  %32 = load i32, i32* @CV_REG_EFLAGS, align 4
  store i32 %32, i32* %6, align 4
  br label %74

33:                                               ; preds = %2
  %34 = load i32, i32* @CV_REG_CS, align 4
  store i32 %34, i32* %6, align 4
  br label %74

35:                                               ; preds = %2
  %36 = load i32, i32* @CV_REG_SS, align 4
  store i32 %36, i32* %6, align 4
  br label %74

37:                                               ; preds = %2
  %38 = load i32, i32* @CV_REG_DS, align 4
  store i32 %38, i32* %6, align 4
  br label %74

39:                                               ; preds = %2
  %40 = load i32, i32* @CV_REG_ES, align 4
  store i32 %40, i32* %6, align 4
  br label %74

41:                                               ; preds = %2
  %42 = load i32, i32* @CV_REG_FS, align 4
  store i32 %42, i32* %6, align 4
  br label %74

43:                                               ; preds = %2
  %44 = load i32, i32* @CV_REG_GS, align 4
  store i32 %44, i32* %6, align 4
  br label %74

45:                                               ; preds = %2, %2, %2, %2, %2, %2, %2, %2
  %46 = load i32, i32* @CV_REG_ST0, align 4
  %47 = load i32, i32* %4, align 4
  %48 = add i32 %46, %47
  %49 = sub i32 %48, 16
  store i32 %49, i32* %6, align 4
  br label %74

50:                                               ; preds = %2
  %51 = load i32, i32* @CV_REG_CTRL, align 4
  store i32 %51, i32* %6, align 4
  br label %74

52:                                               ; preds = %2
  %53 = load i32, i32* @CV_REG_STAT, align 4
  store i32 %53, i32* %6, align 4
  br label %74

54:                                               ; preds = %2
  %55 = load i32, i32* @CV_REG_TAG, align 4
  store i32 %55, i32* %6, align 4
  br label %74

56:                                               ; preds = %2
  %57 = load i32, i32* @CV_REG_FPCS, align 4
  store i32 %57, i32* %6, align 4
  br label %74

58:                                               ; preds = %2
  %59 = load i32, i32* @CV_REG_FPIP, align 4
  store i32 %59, i32* %6, align 4
  br label %74

60:                                               ; preds = %2
  %61 = load i32, i32* @CV_REG_FPDS, align 4
  store i32 %61, i32* %6, align 4
  br label %74

62:                                               ; preds = %2
  %63 = load i32, i32* @CV_REG_FPDO, align 4
  store i32 %63, i32* %6, align 4
  br label %74

64:                                               ; preds = %2, %2, %2, %2, %2, %2, %2, %2
  %65 = load i32, i32* @CV_REG_XMM0, align 4
  %66 = load i32, i32* %4, align 4
  %67 = add i32 %65, %66
  %68 = sub i32 %67, 32
  store i32 %68, i32* %6, align 4
  br label %74

69:                                               ; preds = %2
  %70 = load i32, i32* @CV_REG_MXCSR, align 4
  store i32 %70, i32* %6, align 4
  br label %74

71:                                               ; preds = %2
  %72 = load i32, i32* %4, align 4
  %73 = call i32 @FIXME(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %72)
  store i32 0, i32* %3, align 4
  br label %76

74:                                               ; preds = %69, %64, %62, %60, %58, %56, %54, %52, %50, %45, %43, %41, %39, %37, %35, %33, %31, %29, %27, %25, %23, %14, %12, %10, %8
  %75 = load i32, i32* %6, align 4
  store i32 %75, i32* %3, align 4
  br label %76

76:                                               ; preds = %74, %71
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

declare dso_local i32 @FIXME(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
