; ModuleID = '/home/carl/AnghaBench/linux/tools/vm/extr_page-types.c_expand_overloaded_flags.c'
source_filename = "/home/carl/AnghaBench/linux/tools/vm/extr_page-types.c_expand_overloaded_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SLAB = common dso_local global i32 0, align 4
@PRIVATE = common dso_local global i32 0, align 4
@SLOB_FREE = common dso_local global i32 0, align 4
@ACTIVE = common dso_local global i32 0, align 4
@SLUB_FROZEN = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@SLUB_DEBUG = common dso_local global i32 0, align 4
@RECLAIM = common dso_local global i32 0, align 4
@WRITEBACK = common dso_local global i32 0, align 4
@READAHEAD = common dso_local global i32 0, align 4
@PM_SOFT_DIRTY = common dso_local global i32 0, align 4
@SOFTDIRTY = common dso_local global i32 0, align 4
@PM_FILE = common dso_local global i32 0, align 4
@FILE = common dso_local global i32 0, align 4
@PM_SWAP = common dso_local global i32 0, align 4
@SWAP = common dso_local global i32 0, align 4
@PM_MMAP_EXCLUSIVE = common dso_local global i32 0, align 4
@MMAP_EXCLUSIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @expand_overloaded_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @expand_overloaded_flags(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* @SLAB, align 4
  %7 = call i32 @BIT(i32 %6)
  %8 = and i32 %5, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %53

10:                                               ; preds = %2
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* @PRIVATE, align 4
  %13 = call i32 @BIT(i32 %12)
  %14 = and i32 %11, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %24

16:                                               ; preds = %10
  %17 = load i32, i32* @PRIVATE, align 4
  %18 = call i32 @BIT(i32 %17)
  %19 = load i32, i32* @SLOB_FREE, align 4
  %20 = call i32 @BIT(i32 %19)
  %21 = or i32 %18, %20
  %22 = load i32, i32* %3, align 4
  %23 = xor i32 %22, %21
  store i32 %23, i32* %3, align 4
  br label %24

24:                                               ; preds = %16, %10
  %25 = load i32, i32* %3, align 4
  %26 = load i32, i32* @ACTIVE, align 4
  %27 = call i32 @BIT(i32 %26)
  %28 = and i32 %25, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %38

30:                                               ; preds = %24
  %31 = load i32, i32* @ACTIVE, align 4
  %32 = call i32 @BIT(i32 %31)
  %33 = load i32, i32* @SLUB_FROZEN, align 4
  %34 = call i32 @BIT(i32 %33)
  %35 = or i32 %32, %34
  %36 = load i32, i32* %3, align 4
  %37 = xor i32 %36, %35
  store i32 %37, i32* %3, align 4
  br label %38

38:                                               ; preds = %30, %24
  %39 = load i32, i32* %3, align 4
  %40 = load i32, i32* @ERROR, align 4
  %41 = call i32 @BIT(i32 %40)
  %42 = and i32 %39, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %52

44:                                               ; preds = %38
  %45 = load i32, i32* @ERROR, align 4
  %46 = call i32 @BIT(i32 %45)
  %47 = load i32, i32* @SLUB_DEBUG, align 4
  %48 = call i32 @BIT(i32 %47)
  %49 = or i32 %46, %48
  %50 = load i32, i32* %3, align 4
  %51 = xor i32 %50, %49
  store i32 %51, i32* %3, align 4
  br label %52

52:                                               ; preds = %44, %38
  br label %53

53:                                               ; preds = %52, %2
  %54 = load i32, i32* %3, align 4
  %55 = load i32, i32* @RECLAIM, align 4
  %56 = call i32 @BIT(i32 %55)
  %57 = load i32, i32* @WRITEBACK, align 4
  %58 = call i32 @BIT(i32 %57)
  %59 = or i32 %56, %58
  %60 = and i32 %54, %59
  %61 = load i32, i32* @RECLAIM, align 4
  %62 = call i32 @BIT(i32 %61)
  %63 = icmp eq i32 %60, %62
  br i1 %63, label %64, label %72

64:                                               ; preds = %53
  %65 = load i32, i32* @RECLAIM, align 4
  %66 = call i32 @BIT(i32 %65)
  %67 = load i32, i32* @READAHEAD, align 4
  %68 = call i32 @BIT(i32 %67)
  %69 = or i32 %66, %68
  %70 = load i32, i32* %3, align 4
  %71 = xor i32 %70, %69
  store i32 %71, i32* %3, align 4
  br label %72

72:                                               ; preds = %64, %53
  %73 = load i32, i32* %4, align 4
  %74 = load i32, i32* @PM_SOFT_DIRTY, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %82

77:                                               ; preds = %72
  %78 = load i32, i32* @SOFTDIRTY, align 4
  %79 = call i32 @BIT(i32 %78)
  %80 = load i32, i32* %3, align 4
  %81 = or i32 %80, %79
  store i32 %81, i32* %3, align 4
  br label %82

82:                                               ; preds = %77, %72
  %83 = load i32, i32* %4, align 4
  %84 = load i32, i32* @PM_FILE, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %92

87:                                               ; preds = %82
  %88 = load i32, i32* @FILE, align 4
  %89 = call i32 @BIT(i32 %88)
  %90 = load i32, i32* %3, align 4
  %91 = or i32 %90, %89
  store i32 %91, i32* %3, align 4
  br label %92

92:                                               ; preds = %87, %82
  %93 = load i32, i32* %4, align 4
  %94 = load i32, i32* @PM_SWAP, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %102

97:                                               ; preds = %92
  %98 = load i32, i32* @SWAP, align 4
  %99 = call i32 @BIT(i32 %98)
  %100 = load i32, i32* %3, align 4
  %101 = or i32 %100, %99
  store i32 %101, i32* %3, align 4
  br label %102

102:                                              ; preds = %97, %92
  %103 = load i32, i32* %4, align 4
  %104 = load i32, i32* @PM_MMAP_EXCLUSIVE, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %112

107:                                              ; preds = %102
  %108 = load i32, i32* @MMAP_EXCLUSIVE, align 4
  %109 = call i32 @BIT(i32 %108)
  %110 = load i32, i32* %3, align 4
  %111 = or i32 %110, %109
  store i32 %111, i32* %3, align 4
  br label %112

112:                                              ; preds = %107, %102
  %113 = load i32, i32* %3, align 4
  ret i32 %113
}

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
