; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/generic/files/drivers/net/phy/extr_ip17xx.c_ip175c_set_flags.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/generic/files/drivers/net/phy/extr_ip17xx.c_ip175c_set_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip17xx_state = type { i32, %struct.TYPE_2__*, i64, i64 }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ip17xx_state*)* @ip175c_set_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ip175c_set_flags(%struct.ip17xx_state* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ip17xx_state*, align 8
  %4 = alloca i32, align 4
  store %struct.ip17xx_state* %0, %struct.ip17xx_state** %3, align 8
  %5 = load %struct.ip17xx_state*, %struct.ip17xx_state** %3, align 8
  %6 = getelementptr inbounds %struct.ip17xx_state, %struct.ip17xx_state* %5, i32 0, i32 1
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 4
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @REG_SUPP(i32 %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %164

13:                                               ; preds = %1
  %14 = load %struct.ip17xx_state*, %struct.ip17xx_state** %3, align 8
  %15 = load %struct.ip17xx_state*, %struct.ip17xx_state** %3, align 8
  %16 = getelementptr inbounds %struct.ip17xx_state, %struct.ip17xx_state* %15, i32 0, i32 1
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @getPhy(%struct.ip17xx_state* %14, i32 %19)
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %4, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %13
  %24 = load i32, i32* %4, align 4
  store i32 %24, i32* %2, align 4
  br label %164

25:                                               ; preds = %13
  %26 = load %struct.ip17xx_state*, %struct.ip17xx_state** %3, align 8
  %27 = getelementptr inbounds %struct.ip17xx_state, %struct.ip17xx_state* %26, i32 0, i32 1
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp sge i32 %30, 0
  br i1 %31, label %32, label %57

32:                                               ; preds = %25
  %33 = load %struct.ip17xx_state*, %struct.ip17xx_state** %3, align 8
  %34 = getelementptr inbounds %struct.ip17xx_state, %struct.ip17xx_state* %33, i32 0, i32 3
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %46

37:                                               ; preds = %32
  %38 = load %struct.ip17xx_state*, %struct.ip17xx_state** %3, align 8
  %39 = getelementptr inbounds %struct.ip17xx_state, %struct.ip17xx_state* %38, i32 0, i32 1
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = shl i32 1, %42
  %44 = load i32, i32* %4, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %4, align 4
  br label %56

46:                                               ; preds = %32
  %47 = load %struct.ip17xx_state*, %struct.ip17xx_state** %3, align 8
  %48 = getelementptr inbounds %struct.ip17xx_state, %struct.ip17xx_state* %47, i32 0, i32 1
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = shl i32 1, %51
  %53 = xor i32 %52, -1
  %54 = load i32, i32* %4, align 4
  %55 = and i32 %54, %53
  store i32 %55, i32* %4, align 4
  br label %56

56:                                               ; preds = %46, %37
  br label %57

57:                                               ; preds = %56, %25
  %58 = load %struct.ip17xx_state*, %struct.ip17xx_state** %3, align 8
  %59 = getelementptr inbounds %struct.ip17xx_state, %struct.ip17xx_state* %58, i32 0, i32 1
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = icmp sge i32 %62, 0
  br i1 %63, label %64, label %89

64:                                               ; preds = %57
  %65 = load %struct.ip17xx_state*, %struct.ip17xx_state** %3, align 8
  %66 = getelementptr inbounds %struct.ip17xx_state, %struct.ip17xx_state* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %78

69:                                               ; preds = %64
  %70 = load %struct.ip17xx_state*, %struct.ip17xx_state** %3, align 8
  %71 = getelementptr inbounds %struct.ip17xx_state, %struct.ip17xx_state* %70, i32 0, i32 1
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = shl i32 1, %74
  %76 = load i32, i32* %4, align 4
  %77 = or i32 %76, %75
  store i32 %77, i32* %4, align 4
  br label %88

78:                                               ; preds = %64
  %79 = load %struct.ip17xx_state*, %struct.ip17xx_state** %3, align 8
  %80 = getelementptr inbounds %struct.ip17xx_state, %struct.ip17xx_state* %79, i32 0, i32 1
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = shl i32 1, %83
  %85 = xor i32 %84, -1
  %86 = load i32, i32* %4, align 4
  %87 = and i32 %86, %85
  store i32 %87, i32* %4, align 4
  br label %88

88:                                               ; preds = %78, %69
  br label %89

89:                                               ; preds = %88, %57
  %90 = load %struct.ip17xx_state*, %struct.ip17xx_state** %3, align 8
  %91 = getelementptr inbounds %struct.ip17xx_state, %struct.ip17xx_state* %90, i32 0, i32 1
  %92 = load %struct.TYPE_2__*, %struct.TYPE_2__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 4
  %95 = icmp sge i32 %94, 0
  br i1 %95, label %96, label %155

96:                                               ; preds = %89
  %97 = load %struct.ip17xx_state*, %struct.ip17xx_state** %3, align 8
  %98 = getelementptr inbounds %struct.ip17xx_state, %struct.ip17xx_state* %97, i32 0, i32 1
  %99 = load %struct.TYPE_2__*, %struct.TYPE_2__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 4
  %102 = sub nsw i32 %101, 1
  %103 = load %struct.ip17xx_state*, %struct.ip17xx_state** %3, align 8
  %104 = getelementptr inbounds %struct.ip17xx_state, %struct.ip17xx_state* %103, i32 0, i32 1
  %105 = load %struct.TYPE_2__*, %struct.TYPE_2__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 4
  %108 = shl i32 %102, %107
  %109 = xor i32 %108, -1
  %110 = load i32, i32* %4, align 4
  %111 = and i32 %110, %109
  store i32 %111, i32* %4, align 4
  %112 = load %struct.ip17xx_state*, %struct.ip17xx_state** %3, align 8
  %113 = getelementptr inbounds %struct.ip17xx_state, %struct.ip17xx_state* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = load %struct.ip17xx_state*, %struct.ip17xx_state** %3, align 8
  %116 = getelementptr inbounds %struct.ip17xx_state, %struct.ip17xx_state* %115, i32 0, i32 1
  %117 = load %struct.TYPE_2__*, %struct.TYPE_2__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i32 0, i32 3
  %119 = load i32, i32* %118, align 4
  %120 = icmp sgt i32 %114, %119
  br i1 %120, label %121, label %135

121:                                              ; preds = %96
  %122 = load %struct.ip17xx_state*, %struct.ip17xx_state** %3, align 8
  %123 = getelementptr inbounds %struct.ip17xx_state, %struct.ip17xx_state* %122, i32 0, i32 1
  %124 = load %struct.TYPE_2__*, %struct.TYPE_2__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i32 0, i32 3
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.ip17xx_state*, %struct.ip17xx_state** %3, align 8
  %128 = getelementptr inbounds %struct.ip17xx_state, %struct.ip17xx_state* %127, i32 0, i32 1
  %129 = load %struct.TYPE_2__*, %struct.TYPE_2__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 4
  %132 = shl i32 %126, %131
  %133 = load i32, i32* %4, align 4
  %134 = or i32 %133, %132
  store i32 %134, i32* %4, align 4
  br label %154

135:                                              ; preds = %96
  %136 = load %struct.ip17xx_state*, %struct.ip17xx_state** %3, align 8
  %137 = getelementptr inbounds %struct.ip17xx_state, %struct.ip17xx_state* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = icmp sge i32 %138, 1
  br i1 %139, label %140, label %153

140:                                              ; preds = %135
  %141 = load %struct.ip17xx_state*, %struct.ip17xx_state** %3, align 8
  %142 = getelementptr inbounds %struct.ip17xx_state, %struct.ip17xx_state* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = sub nsw i32 %143, 1
  %145 = load %struct.ip17xx_state*, %struct.ip17xx_state** %3, align 8
  %146 = getelementptr inbounds %struct.ip17xx_state, %struct.ip17xx_state* %145, i32 0, i32 1
  %147 = load %struct.TYPE_2__*, %struct.TYPE_2__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 4
  %150 = shl i32 %144, %149
  %151 = load i32, i32* %4, align 4
  %152 = or i32 %151, %150
  store i32 %152, i32* %4, align 4
  br label %153

153:                                              ; preds = %140, %135
  br label %154

154:                                              ; preds = %153, %121
  br label %155

155:                                              ; preds = %154, %89
  %156 = load %struct.ip17xx_state*, %struct.ip17xx_state** %3, align 8
  %157 = load %struct.ip17xx_state*, %struct.ip17xx_state** %3, align 8
  %158 = getelementptr inbounds %struct.ip17xx_state, %struct.ip17xx_state* %157, i32 0, i32 1
  %159 = load %struct.TYPE_2__*, %struct.TYPE_2__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %159, i32 0, i32 4
  %161 = load i32, i32* %160, align 4
  %162 = load i32, i32* %4, align 4
  %163 = call i32 @setPhy(%struct.ip17xx_state* %156, i32 %161, i32 %162)
  store i32 %163, i32* %2, align 4
  br label %164

164:                                              ; preds = %155, %23, %12
  %165 = load i32, i32* %2, align 4
  ret i32 %165
}

declare dso_local i32 @REG_SUPP(i32) #1

declare dso_local i32 @getPhy(%struct.ip17xx_state*, i32) #1

declare dso_local i32 @setPhy(%struct.ip17xx_state*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
