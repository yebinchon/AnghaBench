; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/generic/files/drivers/net/phy/extr_ar8216.c_ar8xxx_sw_get_port_stats.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/generic/files/drivers/net/phy/extr_ar8216.c_ar8xxx_sw_get_port_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.switch_dev = type { i32 }
%struct.switch_port_stats = type { i8*, i8* }
%struct.ar8xxx_priv = type { i8**, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64, i64, i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ar8xxx_sw_get_port_stats(%struct.switch_dev* %0, i32 %1, %struct.switch_port_stats* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.switch_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.switch_port_stats*, align 8
  %8 = alloca %struct.ar8xxx_priv*, align 8
  %9 = alloca i8**, align 8
  store %struct.switch_dev* %0, %struct.switch_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.switch_port_stats* %2, %struct.switch_port_stats** %7, align 8
  %10 = load %struct.switch_dev*, %struct.switch_dev** %5, align 8
  %11 = call %struct.ar8xxx_priv* @swdev_to_ar8xxx(%struct.switch_dev* %10)
  store %struct.ar8xxx_priv* %11, %struct.ar8xxx_priv** %8, align 8
  %12 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %8, align 8
  %13 = call i32 @ar8xxx_has_mib_counters(%struct.ar8xxx_priv* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %3
  %16 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %8, align 8
  %17 = getelementptr inbounds %struct.ar8xxx_priv, %struct.ar8xxx_priv* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %15, %3
  %21 = load i32, i32* @EOPNOTSUPP, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %88

23:                                               ; preds = %15
  %24 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %8, align 8
  %25 = getelementptr inbounds %struct.ar8xxx_priv, %struct.ar8xxx_priv* %24, i32 0, i32 2
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %40, label %30

30:                                               ; preds = %23
  %31 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %8, align 8
  %32 = getelementptr inbounds %struct.ar8xxx_priv, %struct.ar8xxx_priv* %31, i32 0, i32 2
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %30
  %38 = load i32, i32* @EOPNOTSUPP, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %4, align 4
  br label %88

40:                                               ; preds = %30, %23
  %41 = load i32, i32* %6, align 4
  %42 = load %struct.switch_dev*, %struct.switch_dev** %5, align 8
  %43 = getelementptr inbounds %struct.switch_dev, %struct.switch_dev* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = icmp sge i32 %41, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %40
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %4, align 4
  br label %88

49:                                               ; preds = %40
  %50 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %8, align 8
  %51 = getelementptr inbounds %struct.ar8xxx_priv, %struct.ar8xxx_priv* %50, i32 0, i32 1
  %52 = call i32 @mutex_lock(i32* %51)
  %53 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %8, align 8
  %54 = getelementptr inbounds %struct.ar8xxx_priv, %struct.ar8xxx_priv* %53, i32 0, i32 0
  %55 = load i8**, i8*** %54, align 8
  %56 = load i32, i32* %6, align 4
  %57 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %8, align 8
  %58 = getelementptr inbounds %struct.ar8xxx_priv, %struct.ar8xxx_priv* %57, i32 0, i32 2
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = mul nsw i32 %56, %61
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i8*, i8** %55, i64 %63
  store i8** %64, i8*** %9, align 8
  %65 = load i8**, i8*** %9, align 8
  %66 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %8, align 8
  %67 = getelementptr inbounds %struct.ar8xxx_priv, %struct.ar8xxx_priv* %66, i32 0, i32 2
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = getelementptr inbounds i8*, i8** %65, i64 %70
  %72 = load i8*, i8** %71, align 8
  %73 = load %struct.switch_port_stats*, %struct.switch_port_stats** %7, align 8
  %74 = getelementptr inbounds %struct.switch_port_stats, %struct.switch_port_stats* %73, i32 0, i32 1
  store i8* %72, i8** %74, align 8
  %75 = load i8**, i8*** %9, align 8
  %76 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %8, align 8
  %77 = getelementptr inbounds %struct.ar8xxx_priv, %struct.ar8xxx_priv* %76, i32 0, i32 2
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = getelementptr inbounds i8*, i8** %75, i64 %80
  %82 = load i8*, i8** %81, align 8
  %83 = load %struct.switch_port_stats*, %struct.switch_port_stats** %7, align 8
  %84 = getelementptr inbounds %struct.switch_port_stats, %struct.switch_port_stats* %83, i32 0, i32 0
  store i8* %82, i8** %84, align 8
  %85 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %8, align 8
  %86 = getelementptr inbounds %struct.ar8xxx_priv, %struct.ar8xxx_priv* %85, i32 0, i32 1
  %87 = call i32 @mutex_unlock(i32* %86)
  store i32 0, i32* %4, align 4
  br label %88

88:                                               ; preds = %49, %46, %37, %20
  %89 = load i32, i32* %4, align 4
  ret i32 %89
}

declare dso_local %struct.ar8xxx_priv* @swdev_to_ar8xxx(%struct.switch_dev*) #1

declare dso_local i32 @ar8xxx_has_mib_counters(%struct.ar8xxx_priv*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
