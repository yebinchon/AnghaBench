; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_rangetypes_gist.c_common_entry_cmp.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_rangetypes_gist.c_common_entry_cmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { double }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @common_entry_cmp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @common_entry_cmp(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.TYPE_2__*
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load double, double* %10, align 8
  store double %11, double* %6, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = bitcast i8* %12 to %struct.TYPE_2__*
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load double, double* %14, align 8
  store double %15, double* %7, align 8
  %16 = load double, double* %6, align 8
  %17 = load double, double* %7, align 8
  %18 = fcmp olt double %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %26

20:                                               ; preds = %2
  %21 = load double, double* %6, align 8
  %22 = load double, double* %7, align 8
  %23 = fcmp ogt double %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %20
  store i32 1, i32* %3, align 4
  br label %26

25:                                               ; preds = %20
  store i32 0, i32* %3, align 4
  br label %26

26:                                               ; preds = %25, %24, %19
  %27 = load i32, i32* %3, align 4
  ret i32 %27
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
