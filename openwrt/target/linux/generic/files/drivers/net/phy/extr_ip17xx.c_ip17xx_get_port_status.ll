; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/generic/files/drivers/net/phy/extr_ip17xx.c_ip17xx_get_port_status.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/generic/files/drivers/net/phy/extr_ip17xx.c_ip17xx_get_port_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.switch_dev = type { i32 }
%struct.switch_attr = type { i32 }
%struct.switch_val = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i8* }
%struct.ip17xx_state = type { i8*, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"up, 100 Mbps, cpu port\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"up, %d Mbps, %s duplex\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"full\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"half\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"down\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c", auto-negotiate\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c" (in progress)\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c", fixed speed (%d)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.switch_dev*, %struct.switch_attr*, %struct.switch_val*)* @ip17xx_get_port_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ip17xx_get_port_status(%struct.switch_dev* %0, %struct.switch_attr* %1, %struct.switch_val* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.switch_dev*, align 8
  %6 = alloca %struct.switch_attr*, align 8
  %7 = alloca %struct.switch_val*, align 8
  %8 = alloca %struct.ip17xx_state*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  store %struct.switch_dev* %0, %struct.switch_dev** %5, align 8
  store %struct.switch_attr* %1, %struct.switch_attr** %6, align 8
  store %struct.switch_val* %2, %struct.switch_val** %7, align 8
  %15 = load %struct.switch_dev*, %struct.switch_dev** %5, align 8
  %16 = call %struct.ip17xx_state* @get_state(%struct.switch_dev* %15)
  store %struct.ip17xx_state* %16, %struct.ip17xx_state** %8, align 8
  %17 = load %struct.switch_val*, %struct.switch_val** %7, align 8
  %18 = getelementptr inbounds %struct.switch_val, %struct.switch_val* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %12, align 4
  %20 = load %struct.ip17xx_state*, %struct.ip17xx_state** %8, align 8
  %21 = getelementptr inbounds %struct.ip17xx_state, %struct.ip17xx_state* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  store i8* %22, i8** %14, align 8
  %23 = load i32, i32* %12, align 4
  %24 = load %struct.ip17xx_state*, %struct.ip17xx_state** %8, align 8
  %25 = getelementptr inbounds %struct.ip17xx_state, %struct.ip17xx_state* %24, i32 0, i32 1
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp eq i32 %23, %28
  br i1 %29, label %30, label %37

30:                                               ; preds = %3
  %31 = load i8*, i8** %14, align 8
  %32 = call i32 (i8*, i8*, ...) @sprintf(i8* %31, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %33 = load i8*, i8** %14, align 8
  %34 = load %struct.switch_val*, %struct.switch_val** %7, align 8
  %35 = getelementptr inbounds %struct.switch_val, %struct.switch_val* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  store i8* %33, i8** %36, align 8
  store i32 0, i32* %4, align 4
  br label %136

37:                                               ; preds = %3
  %38 = load i32, i32* %12, align 4
  %39 = load %struct.switch_dev*, %struct.switch_dev** %5, align 8
  %40 = getelementptr inbounds %struct.switch_dev, %struct.switch_dev* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = icmp sge i32 %38, %41
  br i1 %42, label %46, label %43

43:                                               ; preds = %37
  %44 = load i32, i32* %12, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %43, %37
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %4, align 4
  br label %136

49:                                               ; preds = %43
  %50 = load %struct.ip17xx_state*, %struct.ip17xx_state** %8, align 8
  %51 = load i32, i32* %12, align 4
  %52 = call i32 @ip_phy_read(%struct.ip17xx_state* %50, i32 %51, i32 0)
  store i32 %52, i32* %9, align 4
  %53 = load %struct.ip17xx_state*, %struct.ip17xx_state** %8, align 8
  %54 = load i32, i32* %12, align 4
  %55 = call i32 @ip_phy_read(%struct.ip17xx_state* %53, i32 %54, i32 1)
  store i32 %55, i32* %11, align 4
  %56 = load %struct.ip17xx_state*, %struct.ip17xx_state** %8, align 8
  %57 = load i32, i32* %12, align 4
  %58 = call i32 @ip_phy_read(%struct.ip17xx_state* %56, i32 %57, i32 18)
  store i32 %58, i32* %10, align 4
  %59 = load i32, i32* %9, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %67, label %61

61:                                               ; preds = %49
  %62 = load i32, i32* %11, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %67, label %64

64:                                               ; preds = %61
  %65 = load i32, i32* %10, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %64, %61, %49
  %68 = load i32, i32* @EIO, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %4, align 4
  br label %136

70:                                               ; preds = %64
  %71 = load i32, i32* %11, align 4
  %72 = and i32 %71, 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %87

74:                                               ; preds = %70
  %75 = load i8*, i8** %14, align 8
  %76 = load i32, i32* %10, align 4
  %77 = and i32 %76, 2048
  %78 = icmp ne i32 %77, 0
  %79 = zext i1 %78 to i64
  %80 = select i1 %78, i32 100, i32 10
  %81 = load i32, i32* %10, align 4
  %82 = and i32 %81, 1024
  %83 = icmp ne i32 %82, 0
  %84 = zext i1 %83 to i64
  %85 = select i1 %83, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0)
  %86 = call i32 (i8*, i8*, ...) @sprintf(i8* %75, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %80, i8* %85)
  store i32 %86, i32* %13, align 4
  br label %90

87:                                               ; preds = %70
  %88 = load i8*, i8** %14, align 8
  %89 = call i32 (i8*, i8*, ...) @sprintf(i8* %88, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  store i32 %89, i32* %13, align 4
  br label %90

90:                                               ; preds = %87, %74
  %91 = load i32, i32* %9, align 4
  %92 = and i32 %91, 4096
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %114

94:                                               ; preds = %90
  %95 = load i8*, i8** %14, align 8
  %96 = load i32, i32* %13, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i8, i8* %95, i64 %97
  %99 = call i32 (i8*, i8*, ...) @sprintf(i8* %98, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0))
  %100 = load i32, i32* %13, align 4
  %101 = add nsw i32 %100, %99
  store i32 %101, i32* %13, align 4
  %102 = load i32, i32* %11, align 4
  %103 = and i32 %102, 32
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %113, label %105

105:                                              ; preds = %94
  %106 = load i8*, i8** %14, align 8
  %107 = load i32, i32* %13, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i8, i8* %106, i64 %108
  %110 = call i32 (i8*, i8*, ...) @sprintf(i8* %109, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0))
  %111 = load i32, i32* %13, align 4
  %112 = add nsw i32 %111, %110
  store i32 %112, i32* %13, align 4
  br label %113

113:                                              ; preds = %105, %94
  br label %127

114:                                              ; preds = %90
  %115 = load i8*, i8** %14, align 8
  %116 = load i32, i32* %13, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i8, i8* %115, i64 %117
  %119 = load i32, i32* %9, align 4
  %120 = and i32 %119, 8192
  %121 = icmp ne i32 %120, 0
  %122 = zext i1 %121 to i64
  %123 = select i1 %121, i32 100, i32 10
  %124 = call i32 (i8*, i8*, ...) @sprintf(i8* %118, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0), i32 %123)
  %125 = load i32, i32* %13, align 4
  %126 = add nsw i32 %125, %124
  store i32 %126, i32* %13, align 4
  br label %127

127:                                              ; preds = %114, %113
  %128 = load i8*, i8** %14, align 8
  %129 = load i32, i32* %13, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i8, i8* %128, i64 %130
  store i8 0, i8* %131, align 1
  %132 = load i8*, i8** %14, align 8
  %133 = load %struct.switch_val*, %struct.switch_val** %7, align 8
  %134 = getelementptr inbounds %struct.switch_val, %struct.switch_val* %133, i32 0, i32 1
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i32 0, i32 0
  store i8* %132, i8** %135, align 8
  store i32 0, i32* %4, align 4
  br label %136

136:                                              ; preds = %127, %67, %46, %30
  %137 = load i32, i32* %4, align 4
  ret i32 %137
}

declare dso_local %struct.ip17xx_state* @get_state(%struct.switch_dev*) #1

declare dso_local i32 @sprintf(i8*, i8*, ...) #1

declare dso_local i32 @ip_phy_read(%struct.ip17xx_state*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
