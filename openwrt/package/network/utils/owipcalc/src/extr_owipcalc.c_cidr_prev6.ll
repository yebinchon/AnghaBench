; ModuleID = '/home/carl/AnghaBench/openwrt/package/network/utils/owipcalc/src/extr_owipcalc.c_cidr_prev6.c'
source_filename = "/home/carl/AnghaBench/openwrt/package/network/utils/owipcalc/src/extr_owipcalc.c_cidr_prev6.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cidr = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.in6_addr }
%struct.in6_addr = type { i64* }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"underflow during 'prev'\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cidr*, %struct.cidr*)* @cidr_prev6 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cidr_prev6(%struct.cidr* %0, %struct.cidr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cidr*, align 8
  %5 = alloca %struct.cidr*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.cidr*, align 8
  %10 = alloca %struct.in6_addr*, align 8
  store %struct.cidr* %0, %struct.cidr** %4, align 8
  store %struct.cidr* %1, %struct.cidr** %5, align 8
  store i64 1, i64* %7, align 8
  store i64 0, i64* %8, align 8
  %11 = load %struct.cidr*, %struct.cidr** %4, align 8
  %12 = call %struct.cidr* @cidr_clone(%struct.cidr* %11)
  store %struct.cidr* %12, %struct.cidr** %9, align 8
  %13 = load %struct.cidr*, %struct.cidr** %9, align 8
  %14 = getelementptr inbounds %struct.cidr, %struct.cidr* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  store %struct.in6_addr* %15, %struct.in6_addr** %10, align 8
  %16 = load %struct.cidr*, %struct.cidr** %5, align 8
  %17 = getelementptr inbounds %struct.cidr, %struct.cidr* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %2
  %21 = load i32, i32* @stderr, align 4
  %22 = call i32 @fprintf(i32 %21, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %69

23:                                               ; preds = %2
  %24 = load %struct.cidr*, %struct.cidr** %5, align 8
  %25 = getelementptr inbounds %struct.cidr, %struct.cidr* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = sub nsw i32 %26, 1
  %28 = sdiv i32 %27, 8
  %29 = sext i32 %28 to i64
  store i64 %29, i64* %6, align 8
  br label %30

30:                                               ; preds = %53, %23
  %31 = load %struct.in6_addr*, %struct.in6_addr** %10, align 8
  %32 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %31, i32 0, i32 0
  %33 = load i64*, i64** %32, align 8
  %34 = load i64, i64* %6, align 8
  %35 = getelementptr inbounds i64, i64* %33, i64 %34
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* %7, align 8
  %38 = sub i64 %36, %37
  %39 = icmp ult i64 %38, 0
  %40 = xor i1 %39, true
  %41 = xor i1 %40, true
  %42 = zext i1 %41 to i32
  %43 = sext i32 %42 to i64
  store i64 %43, i64* %8, align 8
  %44 = load i64, i64* %7, align 8
  %45 = load %struct.in6_addr*, %struct.in6_addr** %10, align 8
  %46 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %45, i32 0, i32 0
  %47 = load i64*, i64** %46, align 8
  %48 = load i64, i64* %6, align 8
  %49 = getelementptr inbounds i64, i64* %47, i64 %48
  %50 = load i64, i64* %49, align 8
  %51 = sub i64 %50, %44
  store i64 %51, i64* %49, align 8
  %52 = load i64, i64* %8, align 8
  store i64 %52, i64* %7, align 8
  br label %53

53:                                               ; preds = %30
  %54 = load i64, i64* %6, align 8
  %55 = add i64 %54, -1
  store i64 %55, i64* %6, align 8
  %56 = icmp ugt i64 %54, 0
  br i1 %56, label %30, label %57

57:                                               ; preds = %53
  %58 = load i64, i64* %7, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %57
  %61 = load i32, i32* @stderr, align 4
  %62 = call i32 @fprintf(i32 %61, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %69

63:                                               ; preds = %57
  %64 = load %struct.cidr*, %struct.cidr** %5, align 8
  %65 = getelementptr inbounds %struct.cidr, %struct.cidr* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.cidr*, %struct.cidr** %9, align 8
  %68 = getelementptr inbounds %struct.cidr, %struct.cidr* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 8
  store i32 1, i32* %3, align 4
  br label %69

69:                                               ; preds = %63, %60, %20
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local %struct.cidr* @cidr_clone(%struct.cidr*) #1

declare dso_local i32 @fprintf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
