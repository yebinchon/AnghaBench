; ModuleID = '/home/carl/AnghaBench/meltdown/libkdump/extr_libkdump.c_libkdump_phys_to_virt.c'
source_filename = "/home/carl/AnghaBench/meltdown/libkdump/extr_libkdump.c_libkdump_phys_to_virt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@config = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"phys_to_virt argument is > 64 TB\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @libkdump_phys_to_virt(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %4 = load i64, i64* %3, align 8
  %5 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 0), align 8
  %6 = add i64 %4, %5
  %7 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 0), align 8
  %8 = icmp ult i64 %6, %7
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load i64, i64* %3, align 8
  store i64 %10, i64* %2, align 8
  br label %21

11:                                               ; preds = %1
  %12 = load i64, i64* %3, align 8
  %13 = icmp uge i64 %12, 70368744177664
  br i1 %13, label %14, label %17

14:                                               ; preds = %11
  %15 = load i32, i32* @ERROR, align 4
  %16 = call i32 @debug(i32 %15, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  store i64 -1, i64* %2, align 8
  br label %21

17:                                               ; preds = %11
  %18 = load i64, i64* %3, align 8
  %19 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 0), align 8
  %20 = add i64 %18, %19
  store i64 %20, i64* %2, align 8
  br label %21

21:                                               ; preds = %17, %14, %9
  %22 = load i64, i64* %2, align 8
  ret i64 %22
}

declare dso_local i32 @debug(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
