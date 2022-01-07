; ModuleID = '/home/carl/AnghaBench/radare2/libr/debug/p/native/windows/extr_windows_debug.c___io_perms_to_prot.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/debug/p/native/windows/extr_windows_debug.c___io_perms_to_prot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@R_PERM_RWX = common dso_local global i32 0, align 4
@PAGE_EXECUTE_READWRITE = common dso_local global i32 0, align 4
@R_PERM_W = common dso_local global i32 0, align 4
@R_PERM_X = common dso_local global i32 0, align 4
@R_PERM_R = common dso_local global i32 0, align 4
@PAGE_EXECUTE_READ = common dso_local global i32 0, align 4
@R_PERM_RW = common dso_local global i32 0, align 4
@PAGE_READWRITE = common dso_local global i32 0, align 4
@PAGE_EXECUTE = common dso_local global i32 0, align 4
@PAGE_READONLY = common dso_local global i32 0, align 4
@PAGE_NOACCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @__io_perms_to_prot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__io_perms_to_prot(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = load i32, i32* @R_PERM_RWX, align 4
  %6 = and i32 %4, %5
  %7 = load i32, i32* @R_PERM_RWX, align 4
  %8 = icmp eq i32 %6, %7
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load i32, i32* @PAGE_EXECUTE_READWRITE, align 4
  store i32 %10, i32* %3, align 4
  br label %72

11:                                               ; preds = %1
  %12 = load i32, i32* %2, align 4
  %13 = load i32, i32* @R_PERM_W, align 4
  %14 = load i32, i32* @R_PERM_X, align 4
  %15 = or i32 %13, %14
  %16 = and i32 %12, %15
  %17 = load i32, i32* @R_PERM_W, align 4
  %18 = load i32, i32* @R_PERM_X, align 4
  %19 = or i32 %17, %18
  %20 = icmp eq i32 %16, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %11
  %22 = load i32, i32* @PAGE_EXECUTE_READWRITE, align 4
  store i32 %22, i32* %3, align 4
  br label %71

23:                                               ; preds = %11
  %24 = load i32, i32* %2, align 4
  %25 = load i32, i32* @R_PERM_R, align 4
  %26 = load i32, i32* @R_PERM_X, align 4
  %27 = or i32 %25, %26
  %28 = and i32 %24, %27
  %29 = load i32, i32* @R_PERM_R, align 4
  %30 = load i32, i32* @R_PERM_X, align 4
  %31 = or i32 %29, %30
  %32 = icmp eq i32 %28, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %23
  %34 = load i32, i32* @PAGE_EXECUTE_READ, align 4
  store i32 %34, i32* %3, align 4
  br label %70

35:                                               ; preds = %23
  %36 = load i32, i32* %2, align 4
  %37 = load i32, i32* @R_PERM_RW, align 4
  %38 = and i32 %36, %37
  %39 = load i32, i32* @R_PERM_RW, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %35
  %42 = load i32, i32* @PAGE_READWRITE, align 4
  store i32 %42, i32* %3, align 4
  br label %69

43:                                               ; preds = %35
  %44 = load i32, i32* %2, align 4
  %45 = load i32, i32* @R_PERM_W, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %43
  %49 = load i32, i32* @PAGE_READWRITE, align 4
  store i32 %49, i32* %3, align 4
  br label %68

50:                                               ; preds = %43
  %51 = load i32, i32* %2, align 4
  %52 = load i32, i32* @R_PERM_X, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %50
  %56 = load i32, i32* @PAGE_EXECUTE, align 4
  store i32 %56, i32* %3, align 4
  br label %67

57:                                               ; preds = %50
  %58 = load i32, i32* %2, align 4
  %59 = load i32, i32* @R_PERM_R, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %57
  %63 = load i32, i32* @PAGE_READONLY, align 4
  store i32 %63, i32* %3, align 4
  br label %66

64:                                               ; preds = %57
  %65 = load i32, i32* @PAGE_NOACCESS, align 4
  store i32 %65, i32* %3, align 4
  br label %66

66:                                               ; preds = %64, %62
  br label %67

67:                                               ; preds = %66, %55
  br label %68

68:                                               ; preds = %67, %48
  br label %69

69:                                               ; preds = %68, %41
  br label %70

70:                                               ; preds = %69, %33
  br label %71

71:                                               ; preds = %70, %21
  br label %72

72:                                               ; preds = %71, %9
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
