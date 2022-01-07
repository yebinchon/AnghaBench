; ModuleID = '/home/carl/AnghaBench/openwrt/package/kernel/lantiq/ltq-atm/src/extr_ltq_atm.c_atm_showtime_enter.c'
source_filename = "/home/carl/AnghaBench/openwrt/package/kernel/lantiq/ltq-atm/src/extr_ltq_atm.c_atm_showtime_enter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i64, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.port_cell_info = type { i32, i64* }

@.str = private unnamed_addr constant [18 x i8] c"port_cell is NULL\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"xdata_addr is NULL\00", align 1
@ATM_PORT_NUMBER = common dso_local global i32 0, align 4
@g_atm_priv_data = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@MAX_PVC_NUMBER = common dso_local global i32 0, align 4
@g_xdata_addr = common dso_local global i8* null, align 8
@g_showtime = common dso_local global i32 0, align 4
@ATM_PHY_SIG_FOUND = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [63 x i8] c"enter showtime, cell rate: 0 - %d, 1 - %d, xdata addr: 0x%08x\0A\00", align 1
@UTP_CFG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.port_cell_info*, i8*)* @atm_showtime_enter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atm_showtime_enter(%struct.port_cell_info* %0, i8* %1) #0 {
  %3 = alloca %struct.port_cell_info*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.port_cell_info* %0, %struct.port_cell_info** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load %struct.port_cell_info*, %struct.port_cell_info** %3, align 8
  %9 = icmp ne %struct.port_cell_info* %8, null
  %10 = zext i1 %9 to i32
  %11 = call i32 @ASSERT(i32 %10, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %12 = load i8*, i8** %4, align 8
  %13 = icmp ne i8* %12, null
  %14 = zext i1 %13 to i32
  %15 = call i32 @ASSERT(i32 %14, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %16

16:                                               ; preds = %39, %2
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @ATM_PORT_NUMBER, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %26

20:                                               ; preds = %16
  %21 = load i32, i32* %6, align 4
  %22 = load %struct.port_cell_info*, %struct.port_cell_info** %3, align 8
  %23 = getelementptr inbounds %struct.port_cell_info, %struct.port_cell_info* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp slt i32 %21, %24
  br label %26

26:                                               ; preds = %20, %16
  %27 = phi i1 [ false, %16 ], [ %25, %20 ]
  br i1 %27, label %28, label %42

28:                                               ; preds = %26
  %29 = load %struct.port_cell_info*, %struct.port_cell_info** %3, align 8
  %30 = getelementptr inbounds %struct.port_cell_info, %struct.port_cell_info* %29, i32 0, i32 1
  %31 = load i64*, i64** %30, align 8
  %32 = load i32, i32* %6, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i64, i64* %31, i64 %33
  %35 = load i64, i64* %34, align 8
  %36 = icmp sgt i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %28
  br label %42

38:                                               ; preds = %28
  br label %39

39:                                               ; preds = %38
  %40 = load i32, i32* %6, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %6, align 4
  br label %16

42:                                               ; preds = %37, %26
  store i32 0, i32* %5, align 4
  br label %43

43:                                               ; preds = %87, %42
  %44 = load i32, i32* %5, align 4
  %45 = load i32, i32* @ATM_PORT_NUMBER, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %53

47:                                               ; preds = %43
  %48 = load i32, i32* %5, align 4
  %49 = load %struct.port_cell_info*, %struct.port_cell_info** %3, align 8
  %50 = getelementptr inbounds %struct.port_cell_info, %struct.port_cell_info* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp slt i32 %48, %51
  br label %53

53:                                               ; preds = %47, %43
  %54 = phi i1 [ false, %43 ], [ %52, %47 ]
  br i1 %54, label %55, label %90

55:                                               ; preds = %53
  %56 = load %struct.port_cell_info*, %struct.port_cell_info** %3, align 8
  %57 = getelementptr inbounds %struct.port_cell_info, %struct.port_cell_info* %56, i32 0, i32 1
  %58 = load i64*, i64** %57, align 8
  %59 = load i32, i32* %5, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i64, i64* %58, i64 %60
  %62 = load i64, i64* %61, align 8
  %63 = icmp sgt i64 %62, 0
  br i1 %63, label %64, label %72

64:                                               ; preds = %55
  %65 = load %struct.port_cell_info*, %struct.port_cell_info** %3, align 8
  %66 = getelementptr inbounds %struct.port_cell_info, %struct.port_cell_info* %65, i32 0, i32 1
  %67 = load i64*, i64** %66, align 8
  %68 = load i32, i32* %5, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i64, i64* %67, i64 %69
  %71 = load i64, i64* %70, align 8
  br label %80

72:                                               ; preds = %55
  %73 = load %struct.port_cell_info*, %struct.port_cell_info** %3, align 8
  %74 = getelementptr inbounds %struct.port_cell_info, %struct.port_cell_info* %73, i32 0, i32 1
  %75 = load i64*, i64** %74, align 8
  %76 = load i32, i32* %6, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i64, i64* %75, i64 %77
  %79 = load i64, i64* %78, align 8
  br label %80

80:                                               ; preds = %72, %64
  %81 = phi i64 [ %71, %64 ], [ %79, %72 ]
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @g_atm_priv_data, i32 0, i32 0), align 8
  %83 = load i32, i32* %5, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 0
  store i64 %81, i64* %86, align 8
  br label %87

87:                                               ; preds = %80
  %88 = load i32, i32* %5, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %5, align 4
  br label %43

90:                                               ; preds = %53
  %91 = call i32 (...) @qsb_global_set()
  store i32 0, i32* %5, align 4
  br label %92

92:                                               ; preds = %121, %90
  %93 = load i32, i32* %5, align 4
  %94 = load i32, i32* @MAX_PVC_NUMBER, align 4
  %95 = icmp slt i32 %93, %94
  br i1 %95, label %96, label %124

96:                                               ; preds = %92
  %97 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @g_atm_priv_data, i32 0, i32 1), align 8
  %98 = load i32, i32* %5, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 0
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** %101, align 8
  %103 = icmp ne %struct.TYPE_7__* %102, null
  br i1 %103, label %104, label %120

104:                                              ; preds = %96
  %105 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @g_atm_priv_data, i32 0, i32 1), align 8
  %106 = load i32, i32* %5, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i32 0, i32 0
  %110 = load %struct.TYPE_7__*, %struct.TYPE_7__** %109, align 8
  %111 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @g_atm_priv_data, i32 0, i32 1), align 8
  %112 = load i32, i32* %5, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i64 %113
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i32 0, i32 0
  %116 = load %struct.TYPE_7__*, %struct.TYPE_7__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i32 0, i32 0
  %118 = load i32, i32* %5, align 4
  %119 = call i32 @set_qsb(%struct.TYPE_7__* %110, i32* %117, i32 %118)
  br label %120

120:                                              ; preds = %104, %96
  br label %121

121:                                              ; preds = %120
  %122 = load i32, i32* %5, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %5, align 4
  br label %92

124:                                              ; preds = %92
  %125 = load i8*, i8** %4, align 8
  store i8* %125, i8** @g_xdata_addr, align 8
  store i32 1, i32* @g_showtime, align 4
  store i32 0, i32* %7, align 4
  br label %126

126:                                              ; preds = %139, %124
  %127 = load i32, i32* %7, align 4
  %128 = load i32, i32* @ATM_PORT_NUMBER, align 4
  %129 = icmp slt i32 %127, %128
  br i1 %129, label %130, label %142

130:                                              ; preds = %126
  %131 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @g_atm_priv_data, i32 0, i32 0), align 8
  %132 = load i32, i32* %7, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i64 %133
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 8
  %137 = load i32, i32* @ATM_PHY_SIG_FOUND, align 4
  %138 = call i32 @atm_dev_signal_change(i32 %136, i32 %137)
  br label %139

139:                                              ; preds = %130
  %140 = load i32, i32* %7, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %7, align 4
  br label %126

142:                                              ; preds = %126
  %143 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @g_atm_priv_data, i32 0, i32 0), align 8
  %144 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %143, i64 0
  %145 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @g_atm_priv_data, i32 0, i32 0), align 8
  %148 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %147, i64 1
  %149 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = load i8*, i8** @g_xdata_addr, align 8
  %152 = ptrtoint i8* %151 to i32
  %153 = call i32 @printk(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.2, i64 0, i64 0), i64 %146, i64 %150, i32 %152)
  ret i32 0
}

declare dso_local i32 @ASSERT(i32, i8*) #1

declare dso_local i32 @qsb_global_set(...) #1

declare dso_local i32 @set_qsb(%struct.TYPE_7__*, i32*, i32) #1

declare dso_local i32 @atm_dev_signal_change(i32, i32) #1

declare dso_local i32 @printk(i8*, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
