; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/generic/files/drivers/net/phy/b53/extr_b53_common.c_b53_port_get_link.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/generic/files/drivers/net/phy/b53/extr_b53_common.c_b53_port_get_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.switch_dev = type { i32 }
%struct.switch_port_link = type { i32, i32, i32, i8* }
%struct.b53_device = type { i32, i32 }

@SWITCH_PORT_SPEED_100 = common dso_local global i8* null, align 8
@SWITCH_PORT_SPEED_1000 = common dso_local global i8* null, align 8
@B53_STAT_PAGE = common dso_local global i32 0, align 4
@B53_LINK_STAT = common dso_local global i32 0, align 4
@B53_SPEED_STAT = common dso_local global i32 0, align 4
@SWITCH_PORT_SPEED_10 = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.switch_dev*, i32, %struct.switch_port_link*)* @b53_port_get_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @b53_port_get_link(%struct.switch_dev* %0, i32 %1, %struct.switch_port_link* %2) #0 {
  %4 = alloca %struct.switch_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.switch_port_link*, align 8
  %7 = alloca %struct.b53_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.switch_dev* %0, %struct.switch_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.switch_port_link* %2, %struct.switch_port_link** %6, align 8
  %12 = load %struct.switch_dev*, %struct.switch_dev** %4, align 8
  %13 = call %struct.b53_device* @sw_to_b53(%struct.switch_dev* %12)
  store %struct.b53_device* %13, %struct.b53_device** %7, align 8
  %14 = load %struct.b53_device*, %struct.b53_device** %7, align 8
  %15 = load i32, i32* %5, align 4
  %16 = call i64 @is_cpu_port(%struct.b53_device* %14, i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %40

18:                                               ; preds = %3
  %19 = load %struct.switch_port_link*, %struct.switch_port_link** %6, align 8
  %20 = getelementptr inbounds %struct.switch_port_link, %struct.switch_port_link* %19, i32 0, i32 0
  store i32 1, i32* %20, align 8
  %21 = load %struct.switch_port_link*, %struct.switch_port_link** %6, align 8
  %22 = getelementptr inbounds %struct.switch_port_link, %struct.switch_port_link* %21, i32 0, i32 1
  store i32 1, i32* %22, align 4
  %23 = load %struct.b53_device*, %struct.b53_device** %7, align 8
  %24 = call i64 @is5325(%struct.b53_device* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %18
  %27 = load %struct.b53_device*, %struct.b53_device** %7, align 8
  %28 = call i64 @is5365(%struct.b53_device* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %26, %18
  %31 = load i8*, i8** @SWITCH_PORT_SPEED_100, align 8
  br label %34

32:                                               ; preds = %26
  %33 = load i8*, i8** @SWITCH_PORT_SPEED_1000, align 8
  br label %34

34:                                               ; preds = %32, %30
  %35 = phi i8* [ %31, %30 ], [ %33, %32 ]
  %36 = load %struct.switch_port_link*, %struct.switch_port_link** %6, align 8
  %37 = getelementptr inbounds %struct.switch_port_link, %struct.switch_port_link* %36, i32 0, i32 3
  store i8* %35, i8** %37, align 8
  %38 = load %struct.switch_port_link*, %struct.switch_port_link** %6, align 8
  %39 = getelementptr inbounds %struct.switch_port_link, %struct.switch_port_link* %38, i32 0, i32 2
  store i32 0, i32* %39, align 8
  br label %121

40:                                               ; preds = %3
  %41 = load %struct.b53_device*, %struct.b53_device** %7, align 8
  %42 = getelementptr inbounds %struct.b53_device, %struct.b53_device* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %5, align 4
  %45 = call i32 @BIT(i32 %44)
  %46 = and i32 %43, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %117

48:                                               ; preds = %40
  %49 = load %struct.b53_device*, %struct.b53_device** %7, align 8
  %50 = load i32, i32* @B53_STAT_PAGE, align 4
  %51 = load i32, i32* @B53_LINK_STAT, align 4
  %52 = call i32 @b53_read16(%struct.b53_device* %49, i32 %50, i32 %51, i32* %9)
  %53 = load %struct.b53_device*, %struct.b53_device** %7, align 8
  %54 = load i32, i32* @B53_STAT_PAGE, align 4
  %55 = load %struct.b53_device*, %struct.b53_device** %7, align 8
  %56 = getelementptr inbounds %struct.b53_device, %struct.b53_device* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @b53_read16(%struct.b53_device* %53, i32 %54, i32 %57, i32* %10)
  %59 = load i32, i32* %9, align 4
  %60 = load i32, i32* %5, align 4
  %61 = ashr i32 %59, %60
  %62 = and i32 %61, 1
  store i32 %62, i32* %9, align 4
  %63 = load i32, i32* %10, align 4
  %64 = load i32, i32* %5, align 4
  %65 = ashr i32 %63, %64
  %66 = and i32 %65, 1
  store i32 %66, i32* %10, align 4
  %67 = load %struct.b53_device*, %struct.b53_device** %7, align 8
  %68 = call i64 @is5325(%struct.b53_device* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %74, label %70

70:                                               ; preds = %48
  %71 = load %struct.b53_device*, %struct.b53_device** %7, align 8
  %72 = call i64 @is5365(%struct.b53_device* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %82

74:                                               ; preds = %70, %48
  %75 = load %struct.b53_device*, %struct.b53_device** %7, align 8
  %76 = load i32, i32* @B53_STAT_PAGE, align 4
  %77 = load i32, i32* @B53_SPEED_STAT, align 4
  %78 = call i32 @b53_read16(%struct.b53_device* %75, i32 %76, i32 %77, i32* %11)
  %79 = load i32, i32* %11, align 4
  %80 = load i32, i32* %5, align 4
  %81 = call i32 @SPEED_PORT_FE(i32 %79, i32 %80)
  store i32 %81, i32* %8, align 4
  br label %90

82:                                               ; preds = %70
  %83 = load %struct.b53_device*, %struct.b53_device** %7, align 8
  %84 = load i32, i32* @B53_STAT_PAGE, align 4
  %85 = load i32, i32* @B53_SPEED_STAT, align 4
  %86 = call i32 @b53_read32(%struct.b53_device* %83, i32 %84, i32 %85, i32* %8)
  %87 = load i32, i32* %8, align 4
  %88 = load i32, i32* %5, align 4
  %89 = call i32 @SPEED_PORT_GE(i32 %87, i32 %88)
  store i32 %89, i32* %8, align 4
  br label %90

90:                                               ; preds = %82, %74
  %91 = load i32, i32* %9, align 4
  %92 = load %struct.switch_port_link*, %struct.switch_port_link** %6, align 8
  %93 = getelementptr inbounds %struct.switch_port_link, %struct.switch_port_link* %92, i32 0, i32 0
  store i32 %91, i32* %93, align 8
  %94 = load i32, i32* %9, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %114

96:                                               ; preds = %90
  %97 = load i32, i32* %10, align 4
  %98 = load %struct.switch_port_link*, %struct.switch_port_link** %6, align 8
  %99 = getelementptr inbounds %struct.switch_port_link, %struct.switch_port_link* %98, i32 0, i32 1
  store i32 %97, i32* %99, align 4
  %100 = load i32, i32* %8, align 4
  switch i32 %100, label %113 [
    i32 128, label %101
    i32 129, label %105
    i32 130, label %109
  ]

101:                                              ; preds = %96
  %102 = load i8*, i8** @SWITCH_PORT_SPEED_10, align 8
  %103 = load %struct.switch_port_link*, %struct.switch_port_link** %6, align 8
  %104 = getelementptr inbounds %struct.switch_port_link, %struct.switch_port_link* %103, i32 0, i32 3
  store i8* %102, i8** %104, align 8
  br label %113

105:                                              ; preds = %96
  %106 = load i8*, i8** @SWITCH_PORT_SPEED_100, align 8
  %107 = load %struct.switch_port_link*, %struct.switch_port_link** %6, align 8
  %108 = getelementptr inbounds %struct.switch_port_link, %struct.switch_port_link* %107, i32 0, i32 3
  store i8* %106, i8** %108, align 8
  br label %113

109:                                              ; preds = %96
  %110 = load i8*, i8** @SWITCH_PORT_SPEED_1000, align 8
  %111 = load %struct.switch_port_link*, %struct.switch_port_link** %6, align 8
  %112 = getelementptr inbounds %struct.switch_port_link, %struct.switch_port_link* %111, i32 0, i32 3
  store i8* %110, i8** %112, align 8
  br label %113

113:                                              ; preds = %96, %109, %105, %101
  br label %114

114:                                              ; preds = %113, %90
  %115 = load %struct.switch_port_link*, %struct.switch_port_link** %6, align 8
  %116 = getelementptr inbounds %struct.switch_port_link, %struct.switch_port_link* %115, i32 0, i32 2
  store i32 1, i32* %116, align 8
  br label %120

117:                                              ; preds = %40
  %118 = load %struct.switch_port_link*, %struct.switch_port_link** %6, align 8
  %119 = getelementptr inbounds %struct.switch_port_link, %struct.switch_port_link* %118, i32 0, i32 0
  store i32 0, i32* %119, align 8
  br label %120

120:                                              ; preds = %117, %114
  br label %121

121:                                              ; preds = %120, %34
  ret i32 0
}

declare dso_local %struct.b53_device* @sw_to_b53(%struct.switch_dev*) #1

declare dso_local i64 @is_cpu_port(%struct.b53_device*, i32) #1

declare dso_local i64 @is5325(%struct.b53_device*) #1

declare dso_local i64 @is5365(%struct.b53_device*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @b53_read16(%struct.b53_device*, i32, i32, i32*) #1

declare dso_local i32 @SPEED_PORT_FE(i32, i32) #1

declare dso_local i32 @b53_read32(%struct.b53_device*, i32, i32, i32*) #1

declare dso_local i32 @SPEED_PORT_GE(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
