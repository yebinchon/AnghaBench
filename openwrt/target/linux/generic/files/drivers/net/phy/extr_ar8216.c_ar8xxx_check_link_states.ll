; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/generic/files/drivers/net/phy/extr_ar8216.c_ar8xxx_check_link_states.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/generic/files/drivers/net/phy/extr_ar8216.c_ar8xxx_check_link_states.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ar8xxx_priv = type { i32*, i32, %struct.TYPE_8__*, %struct.TYPE_6__*, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 (%struct.ar8xxx_priv*, i32)*, i32 (%struct.ar8xxx_priv*, i32)* }
%struct.TYPE_5__ = type { i32 }

@AR8216_PORT_STATUS_LINK_UP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"Port %d is %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"up\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"down\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ar8xxx_priv*)* @ar8xxx_check_link_states to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ar8xxx_check_link_states(%struct.ar8xxx_priv* %0) #0 {
  %2 = alloca %struct.ar8xxx_priv*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ar8xxx_priv* %0, %struct.ar8xxx_priv** %2, align 8
  store i32 0, i32* %4, align 4
  %7 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %2, align 8
  %8 = getelementptr inbounds %struct.ar8xxx_priv, %struct.ar8xxx_priv* %7, i32 0, i32 1
  %9 = call i32 @mutex_lock(i32* %8)
  store i32 0, i32* %6, align 4
  br label %10

10:                                               ; preds = %74, %1
  %11 = load i32, i32* %6, align 4
  %12 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %2, align 8
  %13 = getelementptr inbounds %struct.ar8xxx_priv, %struct.ar8xxx_priv* %12, i32 0, i32 4
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp slt i32 %11, %15
  br i1 %16, label %17, label %77

17:                                               ; preds = %10
  %18 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %2, align 8
  %19 = getelementptr inbounds %struct.ar8xxx_priv, %struct.ar8xxx_priv* %18, i32 0, i32 3
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i32 (%struct.ar8xxx_priv*, i32)*, i32 (%struct.ar8xxx_priv*, i32)** %21, align 8
  %23 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %2, align 8
  %24 = load i32, i32* %6, align 4
  %25 = call i32 %22(%struct.ar8xxx_priv* %23, i32 %24)
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* @AR8216_PORT_STATUS_LINK_UP, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  %30 = xor i1 %29, true
  %31 = xor i1 %30, true
  %32 = zext i1 %31 to i32
  store i32 %32, i32* %3, align 4
  %33 = load i32, i32* %3, align 4
  %34 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %2, align 8
  %35 = getelementptr inbounds %struct.ar8xxx_priv, %struct.ar8xxx_priv* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* %6, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = icmp eq i32 %33, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %17
  br label %74

43:                                               ; preds = %17
  %44 = load i32, i32* %3, align 4
  %45 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %2, align 8
  %46 = getelementptr inbounds %struct.ar8xxx_priv, %struct.ar8xxx_priv* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = load i32, i32* %6, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  store i32 %44, i32* %50, align 4
  store i32 1, i32* %4, align 4
  %51 = load i32, i32* %3, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %62, label %53

53:                                               ; preds = %43
  %54 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %2, align 8
  %55 = getelementptr inbounds %struct.ar8xxx_priv, %struct.ar8xxx_priv* %54, i32 0, i32 3
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 1
  %58 = load i32 (%struct.ar8xxx_priv*, i32)*, i32 (%struct.ar8xxx_priv*, i32)** %57, align 8
  %59 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %2, align 8
  %60 = load i32, i32* %6, align 4
  %61 = call i32 %58(%struct.ar8xxx_priv* %59, i32 %60)
  br label %62

62:                                               ; preds = %53, %43
  %63 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %2, align 8
  %64 = getelementptr inbounds %struct.ar8xxx_priv, %struct.ar8xxx_priv* %63, i32 0, i32 2
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 0
  %68 = load i32, i32* %6, align 4
  %69 = load i32, i32* %3, align 4
  %70 = icmp ne i32 %69, 0
  %71 = zext i1 %70 to i64
  %72 = select i1 %70, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)
  %73 = call i32 @dev_info(i32* %67, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %68, i8* %72)
  br label %74

74:                                               ; preds = %62, %42
  %75 = load i32, i32* %6, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %6, align 4
  br label %10

77:                                               ; preds = %10
  %78 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %2, align 8
  %79 = getelementptr inbounds %struct.ar8xxx_priv, %struct.ar8xxx_priv* %78, i32 0, i32 1
  %80 = call i32 @mutex_unlock(i32* %79)
  %81 = load i32, i32* %4, align 4
  ret i32 %81
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @dev_info(i32*, i8*, i32, i8*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
