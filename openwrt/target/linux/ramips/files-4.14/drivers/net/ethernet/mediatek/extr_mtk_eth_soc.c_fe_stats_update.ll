; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/ramips/files-4.14/drivers/net/ethernet/mediatek/extr_mtk_eth_soc.c_fe_stats_update.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/ramips/files-4.14/drivers/net/ethernet/mediatek/extr_mtk_eth_soc.c_fe_stats_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fe_priv = type { %struct.fe_hw_stats* }
%struct.fe_hw_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@fe_reg_table = common dso_local global i32* null, align 8
@FE_REG_FE_COUNTER_BASE = common dso_local global i64 0, align 8
@CONFIG_SOC_MT7621 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fe_stats_update(%struct.fe_priv* %0) #0 {
  %2 = alloca %struct.fe_priv*, align 8
  %3 = alloca %struct.fe_hw_stats*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.fe_priv* %0, %struct.fe_priv** %2, align 8
  %6 = load %struct.fe_priv*, %struct.fe_priv** %2, align 8
  %7 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %6, i32 0, i32 0
  %8 = load %struct.fe_hw_stats*, %struct.fe_hw_stats** %7, align 8
  store %struct.fe_hw_stats* %8, %struct.fe_hw_stats** %3, align 8
  %9 = load i32*, i32** @fe_reg_table, align 8
  %10 = load i64, i64* @FE_REG_FE_COUNTER_BASE, align 8
  %11 = getelementptr inbounds i32, i32* %9, i64 %10
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %4, align 4
  %13 = load %struct.fe_hw_stats*, %struct.fe_hw_stats** %3, align 8
  %14 = getelementptr inbounds %struct.fe_hw_stats, %struct.fe_hw_stats* %13, i32 0, i32 12
  %15 = call i32 @u64_stats_update_begin(i32* %14)
  %16 = load i32, i32* @CONFIG_SOC_MT7621, align 4
  %17 = call i64 @IS_ENABLED(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %129

19:                                               ; preds = %1
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @fe_r32(i32 %20)
  %22 = load %struct.fe_hw_stats*, %struct.fe_hw_stats** %3, align 8
  %23 = getelementptr inbounds %struct.fe_hw_stats, %struct.fe_hw_stats* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = add nsw i32 %24, %21
  store i32 %25, i32* %23, align 4
  %26 = load i32, i32* %4, align 4
  %27 = add i32 %26, 4
  %28 = call i32 @fe_r32(i32 %27)
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %19
  %32 = load i32, i32* %5, align 4
  %33 = shl i32 %32, 32
  %34 = load %struct.fe_hw_stats*, %struct.fe_hw_stats** %3, align 8
  %35 = getelementptr inbounds %struct.fe_hw_stats, %struct.fe_hw_stats* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = add nsw i32 %36, %33
  store i32 %37, i32* %35, align 4
  br label %38

38:                                               ; preds = %31, %19
  %39 = load i32, i32* %4, align 4
  %40 = add i32 %39, 8
  %41 = call i32 @fe_r32(i32 %40)
  %42 = load %struct.fe_hw_stats*, %struct.fe_hw_stats** %3, align 8
  %43 = getelementptr inbounds %struct.fe_hw_stats, %struct.fe_hw_stats* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = add nsw i32 %44, %41
  store i32 %45, i32* %43, align 4
  %46 = load i32, i32* %4, align 4
  %47 = add i32 %46, 16
  %48 = call i32 @fe_r32(i32 %47)
  %49 = load %struct.fe_hw_stats*, %struct.fe_hw_stats** %3, align 8
  %50 = getelementptr inbounds %struct.fe_hw_stats, %struct.fe_hw_stats* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = add nsw i32 %51, %48
  store i32 %52, i32* %50, align 4
  %53 = load i32, i32* %4, align 4
  %54 = add i32 %53, 20
  %55 = call i32 @fe_r32(i32 %54)
  %56 = load %struct.fe_hw_stats*, %struct.fe_hw_stats** %3, align 8
  %57 = getelementptr inbounds %struct.fe_hw_stats, %struct.fe_hw_stats* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = add nsw i32 %58, %55
  store i32 %59, i32* %57, align 4
  %60 = load i32, i32* %4, align 4
  %61 = add i32 %60, 24
  %62 = call i32 @fe_r32(i32 %61)
  %63 = load %struct.fe_hw_stats*, %struct.fe_hw_stats** %3, align 8
  %64 = getelementptr inbounds %struct.fe_hw_stats, %struct.fe_hw_stats* %63, i32 0, i32 4
  %65 = load i32, i32* %64, align 4
  %66 = add nsw i32 %65, %62
  store i32 %66, i32* %64, align 4
  %67 = load i32, i32* %4, align 4
  %68 = add i32 %67, 28
  %69 = call i32 @fe_r32(i32 %68)
  %70 = load %struct.fe_hw_stats*, %struct.fe_hw_stats** %3, align 8
  %71 = getelementptr inbounds %struct.fe_hw_stats, %struct.fe_hw_stats* %70, i32 0, i32 5
  %72 = load i32, i32* %71, align 4
  %73 = add nsw i32 %72, %69
  store i32 %73, i32* %71, align 4
  %74 = load i32, i32* %4, align 4
  %75 = add i32 %74, 32
  %76 = call i32 @fe_r32(i32 %75)
  %77 = load %struct.fe_hw_stats*, %struct.fe_hw_stats** %3, align 8
  %78 = getelementptr inbounds %struct.fe_hw_stats, %struct.fe_hw_stats* %77, i32 0, i32 6
  %79 = load i32, i32* %78, align 4
  %80 = add nsw i32 %79, %76
  store i32 %80, i32* %78, align 4
  %81 = load i32, i32* %4, align 4
  %82 = add i32 %81, 36
  %83 = call i32 @fe_r32(i32 %82)
  %84 = load %struct.fe_hw_stats*, %struct.fe_hw_stats** %3, align 8
  %85 = getelementptr inbounds %struct.fe_hw_stats, %struct.fe_hw_stats* %84, i32 0, i32 7
  %86 = load i32, i32* %85, align 4
  %87 = add nsw i32 %86, %83
  store i32 %87, i32* %85, align 4
  %88 = load i32, i32* %4, align 4
  %89 = add i32 %88, 40
  %90 = call i32 @fe_r32(i32 %89)
  %91 = load %struct.fe_hw_stats*, %struct.fe_hw_stats** %3, align 8
  %92 = getelementptr inbounds %struct.fe_hw_stats, %struct.fe_hw_stats* %91, i32 0, i32 8
  %93 = load i32, i32* %92, align 4
  %94 = add nsw i32 %93, %90
  store i32 %94, i32* %92, align 4
  %95 = load i32, i32* %4, align 4
  %96 = add i32 %95, 44
  %97 = call i32 @fe_r32(i32 %96)
  %98 = load %struct.fe_hw_stats*, %struct.fe_hw_stats** %3, align 8
  %99 = getelementptr inbounds %struct.fe_hw_stats, %struct.fe_hw_stats* %98, i32 0, i32 9
  %100 = load i32, i32* %99, align 4
  %101 = add nsw i32 %100, %97
  store i32 %101, i32* %99, align 4
  %102 = load i32, i32* %4, align 4
  %103 = add i32 %102, 48
  %104 = call i32 @fe_r32(i32 %103)
  %105 = load %struct.fe_hw_stats*, %struct.fe_hw_stats** %3, align 8
  %106 = getelementptr inbounds %struct.fe_hw_stats, %struct.fe_hw_stats* %105, i32 0, i32 10
  %107 = load i32, i32* %106, align 4
  %108 = add nsw i32 %107, %104
  store i32 %108, i32* %106, align 4
  %109 = load i32, i32* %4, align 4
  %110 = add i32 %109, 52
  %111 = call i32 @fe_r32(i32 %110)
  store i32 %111, i32* %5, align 4
  %112 = load i32, i32* %5, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %121

114:                                              ; preds = %38
  %115 = load i32, i32* %5, align 4
  %116 = shl i32 %115, 32
  %117 = load %struct.fe_hw_stats*, %struct.fe_hw_stats** %3, align 8
  %118 = getelementptr inbounds %struct.fe_hw_stats, %struct.fe_hw_stats* %117, i32 0, i32 10
  %119 = load i32, i32* %118, align 4
  %120 = add nsw i32 %119, %116
  store i32 %120, i32* %118, align 4
  br label %121

121:                                              ; preds = %114, %38
  %122 = load i32, i32* %4, align 4
  %123 = add i32 %122, 56
  %124 = call i32 @fe_r32(i32 %123)
  %125 = load %struct.fe_hw_stats*, %struct.fe_hw_stats** %3, align 8
  %126 = getelementptr inbounds %struct.fe_hw_stats, %struct.fe_hw_stats* %125, i32 0, i32 11
  %127 = load i32, i32* %126, align 4
  %128 = add nsw i32 %127, %124
  store i32 %128, i32* %126, align 4
  br label %213

129:                                              ; preds = %1
  %130 = load i32, i32* %4, align 4
  %131 = call i32 @fe_r32(i32 %130)
  %132 = load %struct.fe_hw_stats*, %struct.fe_hw_stats** %3, align 8
  %133 = getelementptr inbounds %struct.fe_hw_stats, %struct.fe_hw_stats* %132, i32 0, i32 10
  %134 = load i32, i32* %133, align 4
  %135 = add nsw i32 %134, %131
  store i32 %135, i32* %133, align 4
  %136 = load i32, i32* %4, align 4
  %137 = add i32 %136, 4
  %138 = call i32 @fe_r32(i32 %137)
  %139 = load %struct.fe_hw_stats*, %struct.fe_hw_stats** %3, align 8
  %140 = getelementptr inbounds %struct.fe_hw_stats, %struct.fe_hw_stats* %139, i32 0, i32 11
  %141 = load i32, i32* %140, align 4
  %142 = add nsw i32 %141, %138
  store i32 %142, i32* %140, align 4
  %143 = load i32, i32* %4, align 4
  %144 = add i32 %143, 8
  %145 = call i32 @fe_r32(i32 %144)
  %146 = load %struct.fe_hw_stats*, %struct.fe_hw_stats** %3, align 8
  %147 = getelementptr inbounds %struct.fe_hw_stats, %struct.fe_hw_stats* %146, i32 0, i32 8
  %148 = load i32, i32* %147, align 4
  %149 = add nsw i32 %148, %145
  store i32 %149, i32* %147, align 4
  %150 = load i32, i32* %4, align 4
  %151 = add i32 %150, 12
  %152 = call i32 @fe_r32(i32 %151)
  %153 = load %struct.fe_hw_stats*, %struct.fe_hw_stats** %3, align 8
  %154 = getelementptr inbounds %struct.fe_hw_stats, %struct.fe_hw_stats* %153, i32 0, i32 9
  %155 = load i32, i32* %154, align 4
  %156 = add nsw i32 %155, %152
  store i32 %156, i32* %154, align 4
  %157 = load i32, i32* %4, align 4
  %158 = add i32 %157, 32
  %159 = call i32 @fe_r32(i32 %158)
  %160 = load %struct.fe_hw_stats*, %struct.fe_hw_stats** %3, align 8
  %161 = getelementptr inbounds %struct.fe_hw_stats, %struct.fe_hw_stats* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = add nsw i32 %162, %159
  store i32 %163, i32* %161, align 4
  %164 = load i32, i32* %4, align 4
  %165 = add i32 %164, 36
  %166 = call i32 @fe_r32(i32 %165)
  %167 = load %struct.fe_hw_stats*, %struct.fe_hw_stats** %3, align 8
  %168 = getelementptr inbounds %struct.fe_hw_stats, %struct.fe_hw_stats* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 4
  %170 = add nsw i32 %169, %166
  store i32 %170, i32* %168, align 4
  %171 = load i32, i32* %4, align 4
  %172 = add i32 %171, 40
  %173 = call i32 @fe_r32(i32 %172)
  %174 = load %struct.fe_hw_stats*, %struct.fe_hw_stats** %3, align 8
  %175 = getelementptr inbounds %struct.fe_hw_stats, %struct.fe_hw_stats* %174, i32 0, i32 2
  %176 = load i32, i32* %175, align 4
  %177 = add nsw i32 %176, %173
  store i32 %177, i32* %175, align 4
  %178 = load i32, i32* %4, align 4
  %179 = add i32 %178, 44
  %180 = call i32 @fe_r32(i32 %179)
  %181 = load %struct.fe_hw_stats*, %struct.fe_hw_stats** %3, align 8
  %182 = getelementptr inbounds %struct.fe_hw_stats, %struct.fe_hw_stats* %181, i32 0, i32 3
  %183 = load i32, i32* %182, align 4
  %184 = add nsw i32 %183, %180
  store i32 %184, i32* %182, align 4
  %185 = load i32, i32* %4, align 4
  %186 = add i32 %185, 48
  %187 = call i32 @fe_r32(i32 %186)
  %188 = load %struct.fe_hw_stats*, %struct.fe_hw_stats** %3, align 8
  %189 = getelementptr inbounds %struct.fe_hw_stats, %struct.fe_hw_stats* %188, i32 0, i32 4
  %190 = load i32, i32* %189, align 4
  %191 = add nsw i32 %190, %187
  store i32 %191, i32* %189, align 4
  %192 = load i32, i32* %4, align 4
  %193 = add i32 %192, 52
  %194 = call i32 @fe_r32(i32 %193)
  %195 = load %struct.fe_hw_stats*, %struct.fe_hw_stats** %3, align 8
  %196 = getelementptr inbounds %struct.fe_hw_stats, %struct.fe_hw_stats* %195, i32 0, i32 5
  %197 = load i32, i32* %196, align 4
  %198 = add nsw i32 %197, %194
  store i32 %198, i32* %196, align 4
  %199 = load i32, i32* %4, align 4
  %200 = add i32 %199, 56
  %201 = call i32 @fe_r32(i32 %200)
  %202 = load %struct.fe_hw_stats*, %struct.fe_hw_stats** %3, align 8
  %203 = getelementptr inbounds %struct.fe_hw_stats, %struct.fe_hw_stats* %202, i32 0, i32 6
  %204 = load i32, i32* %203, align 4
  %205 = add nsw i32 %204, %201
  store i32 %205, i32* %203, align 4
  %206 = load i32, i32* %4, align 4
  %207 = add i32 %206, 60
  %208 = call i32 @fe_r32(i32 %207)
  %209 = load %struct.fe_hw_stats*, %struct.fe_hw_stats** %3, align 8
  %210 = getelementptr inbounds %struct.fe_hw_stats, %struct.fe_hw_stats* %209, i32 0, i32 7
  %211 = load i32, i32* %210, align 4
  %212 = add nsw i32 %211, %208
  store i32 %212, i32* %210, align 4
  br label %213

213:                                              ; preds = %129, %121
  %214 = load %struct.fe_hw_stats*, %struct.fe_hw_stats** %3, align 8
  %215 = getelementptr inbounds %struct.fe_hw_stats, %struct.fe_hw_stats* %214, i32 0, i32 12
  %216 = call i32 @u64_stats_update_end(i32* %215)
  ret void
}

declare dso_local i32 @u64_stats_update_begin(i32*) #1

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local i32 @fe_r32(i32) #1

declare dso_local i32 @u64_stats_update_end(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
