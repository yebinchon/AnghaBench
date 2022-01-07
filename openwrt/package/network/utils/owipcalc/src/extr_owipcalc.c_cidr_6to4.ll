; ModuleID = '/home/carl/AnghaBench/openwrt/package/network/utils/owipcalc/src/extr_owipcalc.c_cidr_6to4.c'
source_filename = "/home/carl/AnghaBench/openwrt/package/network/utils/owipcalc/src/extr_owipcalc.c_cidr_6to4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cidr = type { i32, %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32* }
%struct.TYPE_4__ = type { i32 }

@AF_INET6 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cidr*)* @cidr_6to4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cidr_6to4(%struct.cidr* %0) #0 {
  %2 = alloca %struct.cidr*, align 8
  %3 = alloca %struct.cidr*, align 8
  %4 = alloca i32, align 4
  store %struct.cidr* %0, %struct.cidr** %2, align 8
  %5 = load %struct.cidr*, %struct.cidr** %2, align 8
  %6 = call %struct.cidr* @cidr_clone(%struct.cidr* %5)
  store %struct.cidr* %6, %struct.cidr** %3, align 8
  %7 = load %struct.cidr*, %struct.cidr** %2, align 8
  %8 = getelementptr inbounds %struct.cidr, %struct.cidr* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  store i32 %11, i32* %4, align 4
  %12 = load %struct.cidr*, %struct.cidr** %3, align 8
  %13 = getelementptr inbounds %struct.cidr, %struct.cidr* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = call i32 @memset(i32** %15, i32 0, i32 8)
  %17 = load i32, i32* @AF_INET6, align 4
  %18 = load %struct.cidr*, %struct.cidr** %3, align 8
  %19 = getelementptr inbounds %struct.cidr, %struct.cidr* %18, i32 0, i32 2
  store i32 %17, i32* %19, align 8
  %20 = load %struct.cidr*, %struct.cidr** %3, align 8
  %21 = getelementptr inbounds %struct.cidr, %struct.cidr* %20, i32 0, i32 0
  store i32 48, i32* %21, align 8
  %22 = load %struct.cidr*, %struct.cidr** %3, align 8
  %23 = getelementptr inbounds %struct.cidr, %struct.cidr* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 0
  store i32 32, i32* %27, align 4
  %28 = load %struct.cidr*, %struct.cidr** %3, align 8
  %29 = getelementptr inbounds %struct.cidr, %struct.cidr* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 1
  store i32 2, i32* %33, align 4
  %34 = load i32, i32* %4, align 4
  %35 = ashr i32 %34, 24
  %36 = load %struct.cidr*, %struct.cidr** %3, align 8
  %37 = getelementptr inbounds %struct.cidr, %struct.cidr* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 2
  store i32 %35, i32* %41, align 4
  %42 = load i32, i32* %4, align 4
  %43 = ashr i32 %42, 16
  %44 = and i32 %43, 255
  %45 = load %struct.cidr*, %struct.cidr** %3, align 8
  %46 = getelementptr inbounds %struct.cidr, %struct.cidr* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 3
  store i32 %44, i32* %50, align 4
  %51 = load i32, i32* %4, align 4
  %52 = ashr i32 %51, 8
  %53 = and i32 %52, 255
  %54 = load %struct.cidr*, %struct.cidr** %3, align 8
  %55 = getelementptr inbounds %struct.cidr, %struct.cidr* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 4
  store i32 %53, i32* %59, align 4
  %60 = load i32, i32* %4, align 4
  %61 = and i32 %60, 255
  %62 = load %struct.cidr*, %struct.cidr** %3, align 8
  %63 = getelementptr inbounds %struct.cidr, %struct.cidr* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 5
  store i32 %61, i32* %67, align 4
  ret i32 1
}

declare dso_local %struct.cidr* @cidr_clone(%struct.cidr*) #1

declare dso_local i32 @memset(i32**, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
