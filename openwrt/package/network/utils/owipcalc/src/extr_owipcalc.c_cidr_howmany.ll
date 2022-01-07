; ModuleID = '/home/carl/AnghaBench/openwrt/package/network/utils/owipcalc/src/extr_owipcalc.c_cidr_howmany.c'
source_filename = "/home/carl/AnghaBench/openwrt/package/network/utils/owipcalc/src/extr_owipcalc.c_cidr_howmany.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cidr = type { i64 }

@printed = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cidr*, %struct.cidr*)* @cidr_howmany to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cidr_howmany(%struct.cidr* %0, %struct.cidr* %1) #0 {
  %3 = alloca %struct.cidr*, align 8
  %4 = alloca %struct.cidr*, align 8
  store %struct.cidr* %0, %struct.cidr** %3, align 8
  store %struct.cidr* %1, %struct.cidr** %4, align 8
  %5 = load i64, i64* @printed, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %2
  %8 = call i32 (i8*, ...) @qprintf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %9

9:                                                ; preds = %7, %2
  %10 = load %struct.cidr*, %struct.cidr** %4, align 8
  %11 = getelementptr inbounds %struct.cidr, %struct.cidr* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.cidr*, %struct.cidr** %3, align 8
  %14 = getelementptr inbounds %struct.cidr, %struct.cidr* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp slt i64 %12, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %9
  %18 = call i32 (i8*, ...) @qprintf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %30

19:                                               ; preds = %9
  %20 = load %struct.cidr*, %struct.cidr** %4, align 8
  %21 = getelementptr inbounds %struct.cidr, %struct.cidr* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.cidr*, %struct.cidr** %3, align 8
  %24 = getelementptr inbounds %struct.cidr, %struct.cidr* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = sub nsw i64 %22, %25
  %27 = trunc i64 %26 to i32
  %28 = shl i32 1, %27
  %29 = call i32 (i8*, ...) @qprintf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %28)
  br label %30

30:                                               ; preds = %19, %17
  ret i32 1
}

declare dso_local i32 @qprintf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
