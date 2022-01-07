; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/primitives/extr_load_unaligned_zeropad.c_protect_region.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/primitives/extr_load_unaligned_zeropad.c_protect_region.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@mem_region = common dso_local global i64 0, align 8
@page_size = common dso_local global i64 0, align 8
@PROT_NONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"mprotect\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @protect_region to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @protect_region() #0 {
  %1 = alloca i32, align 4
  %2 = load i64, i64* @mem_region, align 8
  %3 = load i64, i64* @page_size, align 8
  %4 = add nsw i64 %2, %3
  %5 = load i64, i64* @page_size, align 8
  %6 = load i32, i32* @PROT_NONE, align 4
  %7 = call i64 @mprotect(i64 %4, i64 %5, i32 %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %0
  %10 = call i32 @perror(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %1, align 4
  br label %12

11:                                               ; preds = %0
  store i32 0, i32* %1, align 4
  br label %12

12:                                               ; preds = %11, %9
  %13 = load i32, i32* %1, align 4
  ret i32 %13
}

declare dso_local i64 @mprotect(i64, i64, i32) #1

declare dso_local i32 @perror(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
