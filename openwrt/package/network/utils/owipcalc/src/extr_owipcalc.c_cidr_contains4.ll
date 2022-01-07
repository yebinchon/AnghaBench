; ModuleID = '/home/carl/AnghaBench/openwrt/package/network/utils/owipcalc/src/extr_owipcalc.c_cidr_contains4.c'
source_filename = "/home/carl/AnghaBench/openwrt/package/network/utils/owipcalc/src/extr_owipcalc.c_cidr_contains4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cidr = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@printed = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cidr*, %struct.cidr*)* @cidr_contains4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cidr_contains4(%struct.cidr* %0, %struct.cidr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cidr*, align 8
  %5 = alloca %struct.cidr*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.cidr* %0, %struct.cidr** %4, align 8
  store %struct.cidr* %1, %struct.cidr** %5, align 8
  %8 = load %struct.cidr*, %struct.cidr** %4, align 8
  %9 = getelementptr inbounds %struct.cidr, %struct.cidr* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.cidr*, %struct.cidr** %4, align 8
  %14 = getelementptr inbounds %struct.cidr, %struct.cidr* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = sub nsw i32 32, %15
  %17 = shl i32 1, %16
  %18 = sub nsw i32 %17, 1
  %19 = xor i32 %18, -1
  %20 = call i64 @htonl(i32 %19)
  %21 = and i64 %12, %20
  store i64 %21, i64* %6, align 8
  %22 = load %struct.cidr*, %struct.cidr** %5, align 8
  %23 = getelementptr inbounds %struct.cidr, %struct.cidr* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.cidr*, %struct.cidr** %4, align 8
  %28 = getelementptr inbounds %struct.cidr, %struct.cidr* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = sub nsw i32 32, %29
  %31 = shl i32 1, %30
  %32 = sub nsw i32 %31, 1
  %33 = xor i32 %32, -1
  %34 = call i64 @htonl(i32 %33)
  %35 = and i64 %26, %34
  store i64 %35, i64* %7, align 8
  %36 = load i64, i64* @printed, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %2
  %39 = call i32 @qprintf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %40

40:                                               ; preds = %38, %2
  %41 = load %struct.cidr*, %struct.cidr** %5, align 8
  %42 = getelementptr inbounds %struct.cidr, %struct.cidr* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.cidr*, %struct.cidr** %4, align 8
  %45 = getelementptr inbounds %struct.cidr, %struct.cidr* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp sge i32 %43, %46
  br i1 %47, label %48, label %54

48:                                               ; preds = %40
  %49 = load i64, i64* %6, align 8
  %50 = load i64, i64* %7, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %48
  %53 = call i32 @qprintf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %56

54:                                               ; preds = %48, %40
  %55 = call i32 @qprintf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %56

56:                                               ; preds = %54, %52
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local i64 @htonl(i32) #1

declare dso_local i32 @qprintf(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
