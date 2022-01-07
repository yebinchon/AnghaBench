; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/generic/files/drivers/net/phy/extr_ar8216.c_ar8xxx_mib_fetch_port_stat.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/generic/files/drivers/net/phy/extr_ar8216.c_ar8xxx_mib_fetch_port_stat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ar8xxx_priv = type { i32*, i64, %struct.TYPE_4__*, i32, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32, i32, %struct.ar8xxx_mib_desc* }
%struct.ar8xxx_mib_desc = type { i64, i32, i64 }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ar8xxx_priv*, i32, i32)* @ar8xxx_mib_fetch_port_stat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ar8xxx_mib_fetch_port_stat(%struct.ar8xxx_priv* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ar8xxx_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ar8xxx_mib_desc*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ar8xxx_priv* %0, %struct.ar8xxx_priv** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %13 = load i32, i32* %5, align 4
  %14 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %4, align 8
  %15 = getelementptr inbounds %struct.ar8xxx_priv, %struct.ar8xxx_priv* %14, i32 0, i32 4
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp sge i32 %13, %17
  %19 = zext i1 %18 to i32
  %20 = call i32 @WARN_ON(i32 %19)
  %21 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %4, align 8
  %22 = getelementptr inbounds %struct.ar8xxx_priv, %struct.ar8xxx_priv* %21, i32 0, i32 3
  %23 = call i32 @lockdep_assert_held(i32* %22)
  %24 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %4, align 8
  %25 = getelementptr inbounds %struct.ar8xxx_priv, %struct.ar8xxx_priv* %24, i32 0, i32 2
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %4, align 8
  %30 = getelementptr inbounds %struct.ar8xxx_priv, %struct.ar8xxx_priv* %29, i32 0, i32 2
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %5, align 4
  %35 = mul nsw i32 %33, %34
  %36 = add nsw i32 %28, %35
  store i32 %36, i32* %7, align 4
  %37 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %4, align 8
  %38 = getelementptr inbounds %struct.ar8xxx_priv, %struct.ar8xxx_priv* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* %5, align 4
  %41 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %4, align 8
  %42 = getelementptr inbounds %struct.ar8xxx_priv, %struct.ar8xxx_priv* %41, i32 0, i32 2
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = mul nsw i32 %40, %45
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %39, i64 %47
  store i32* %48, i32** %8, align 8
  store i32 0, i32* %9, align 4
  br label %49

49:                                               ; preds = %119, %3
  %50 = load i32, i32* %9, align 4
  %51 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %4, align 8
  %52 = getelementptr inbounds %struct.ar8xxx_priv, %struct.ar8xxx_priv* %51, i32 0, i32 2
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = icmp slt i32 %50, %55
  br i1 %56, label %57, label %122

57:                                               ; preds = %49
  %58 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %4, align 8
  %59 = getelementptr inbounds %struct.ar8xxx_priv, %struct.ar8xxx_priv* %58, i32 0, i32 2
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 3
  %62 = load %struct.ar8xxx_mib_desc*, %struct.ar8xxx_mib_desc** %61, align 8
  %63 = load i32, i32* %9, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.ar8xxx_mib_desc, %struct.ar8xxx_mib_desc* %62, i64 %64
  store %struct.ar8xxx_mib_desc* %65, %struct.ar8xxx_mib_desc** %10, align 8
  %66 = load %struct.ar8xxx_mib_desc*, %struct.ar8xxx_mib_desc** %10, align 8
  %67 = getelementptr inbounds %struct.ar8xxx_mib_desc, %struct.ar8xxx_mib_desc* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %4, align 8
  %70 = getelementptr inbounds %struct.ar8xxx_priv, %struct.ar8xxx_priv* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = icmp sgt i64 %68, %71
  br i1 %72, label %73, label %74

73:                                               ; preds = %57
  br label %119

74:                                               ; preds = %57
  %75 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %4, align 8
  %76 = load i32, i32* %7, align 4
  %77 = zext i32 %76 to i64
  %78 = load %struct.ar8xxx_mib_desc*, %struct.ar8xxx_mib_desc** %10, align 8
  %79 = getelementptr inbounds %struct.ar8xxx_mib_desc, %struct.ar8xxx_mib_desc* %78, i32 0, i32 2
  %80 = load i64, i64* %79, align 8
  %81 = add nsw i64 %77, %80
  %82 = call i32 @ar8xxx_read(%struct.ar8xxx_priv* %75, i64 %81)
  store i32 %82, i32* %11, align 4
  %83 = load %struct.ar8xxx_mib_desc*, %struct.ar8xxx_mib_desc** %10, align 8
  %84 = getelementptr inbounds %struct.ar8xxx_mib_desc, %struct.ar8xxx_mib_desc* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = icmp eq i32 %85, 2
  br i1 %86, label %87, label %101

87:                                               ; preds = %74
  %88 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %4, align 8
  %89 = load i32, i32* %7, align 4
  %90 = zext i32 %89 to i64
  %91 = load %struct.ar8xxx_mib_desc*, %struct.ar8xxx_mib_desc** %10, align 8
  %92 = getelementptr inbounds %struct.ar8xxx_mib_desc, %struct.ar8xxx_mib_desc* %91, i32 0, i32 2
  %93 = load i64, i64* %92, align 8
  %94 = add nsw i64 %90, %93
  %95 = add nsw i64 %94, 4
  %96 = call i32 @ar8xxx_read(%struct.ar8xxx_priv* %88, i64 %95)
  store i32 %96, i32* %12, align 4
  %97 = load i32, i32* %12, align 4
  %98 = shl i32 %97, 32
  %99 = load i32, i32* %11, align 4
  %100 = or i32 %99, %98
  store i32 %100, i32* %11, align 4
  br label %101

101:                                              ; preds = %87, %74
  %102 = load i32, i32* %6, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %109

104:                                              ; preds = %101
  %105 = load i32*, i32** %8, align 8
  %106 = load i32, i32* %9, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %105, i64 %107
  store i32 0, i32* %108, align 4
  br label %117

109:                                              ; preds = %101
  %110 = load i32, i32* %11, align 4
  %111 = load i32*, i32** %8, align 8
  %112 = load i32, i32* %9, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i32, i32* %111, i64 %113
  %115 = load i32, i32* %114, align 4
  %116 = add nsw i32 %115, %110
  store i32 %116, i32* %114, align 4
  br label %117

117:                                              ; preds = %109, %104
  %118 = call i32 (...) @cond_resched()
  br label %119

119:                                              ; preds = %117, %73
  %120 = load i32, i32* %9, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %9, align 4
  br label %49

122:                                              ; preds = %49
  ret void
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @ar8xxx_read(%struct.ar8xxx_priv*, i64) #1

declare dso_local i32 @cond_resched(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
