; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/mstsc/extr_orders.c_process_orders.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/mstsc/extr_orders.c_process_orders.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_26__ }
%struct.TYPE_26__ = type { i64, i64, i64, i64 }
%struct.TYPE_24__ = type { i64 }

@g_order_state = common dso_local global %struct.TYPE_25__ zeroinitializer, align 8
@RDP_ORDER_STANDARD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"order parsing failed\0A\00", align 1
@RDP_ORDER_SECONDARY = common dso_local global i32 0, align 4
@RDP_ORDER_CHANGE = common dso_local global i32 0, align 4
@RDP_ORDER_BOUNDS = common dso_local global i32 0, align 4
@RDP_ORDER_LASTBOUNDS = common dso_local global i32 0, align 4
@RDP_ORDER_DELTA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"order %d\0A\00", align 1
@g_next_packet = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @process_orders(%struct.TYPE_24__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_24__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_25__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_24__* %0, %struct.TYPE_24__** %3, align 8
  store i32 %1, i32* %4, align 4
  store %struct.TYPE_25__* @g_order_state, %struct.TYPE_25__** %5, align 8
  store i32 0, i32* %9, align 4
  br label %11

11:                                               ; preds = %218, %2
  %12 = load i32, i32* %9, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %221

15:                                               ; preds = %11
  %16 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %17 = load i32, i32* %7, align 4
  %18 = call i32 @in_uint8(%struct.TYPE_24__* %16, i32 %17)
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* @RDP_ORDER_STANDARD, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %15
  %24 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %221

25:                                               ; preds = %15
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* @RDP_ORDER_SECONDARY, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %25
  %31 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %32 = call i32 @process_secondary_order(%struct.TYPE_24__* %31)
  br label %218

33:                                               ; preds = %25
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* @RDP_ORDER_CHANGE, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %33
  %39 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %40 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @in_uint8(%struct.TYPE_24__* %39, i32 %42)
  br label %44

44:                                               ; preds = %38, %33
  %45 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  switch i32 %47, label %50 [
    i32 128, label %48
    i32 129, label %48
    i32 135, label %49
    i32 136, label %49
    i32 137, label %49
    i32 133, label %49
    i32 138, label %49
  ]

48:                                               ; preds = %44, %44
  store i32 3, i32* %8, align 4
  br label %51

49:                                               ; preds = %44, %44, %44, %44, %44
  store i32 2, i32* %8, align 4
  br label %51

50:                                               ; preds = %44
  store i32 1, i32* %8, align 4
  br label %51

51:                                               ; preds = %50, %49, %48
  %52 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* %8, align 4
  %55 = call i32 @rdp_in_present(%struct.TYPE_24__* %52, i32* %6, i32 %53, i32 %54)
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* @RDP_ORDER_BOUNDS, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %100

60:                                               ; preds = %51
  %61 = load i32, i32* %7, align 4
  %62 = load i32, i32* @RDP_ORDER_LASTBOUNDS, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %70, label %65

65:                                               ; preds = %60
  %66 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %67 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %67, i32 0, i32 15
  %69 = call i32 @rdp_parse_bounds(%struct.TYPE_24__* %66, %struct.TYPE_26__* %68)
  br label %70

70:                                               ; preds = %65, %60
  %71 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %71, i32 0, i32 15
  %73 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %75, i32 0, i32 15
  %77 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %79, i32 0, i32 15
  %81 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %80, i32 0, i32 3
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %83, i32 0, i32 15
  %85 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %84, i32 0, i32 2
  %86 = load i64, i64* %85, align 8
  %87 = sub nsw i64 %82, %86
  %88 = add nsw i64 %87, 1
  %89 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %89, i32 0, i32 15
  %91 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %93, i32 0, i32 15
  %95 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = sub nsw i64 %92, %96
  %98 = add nsw i64 %97, 1
  %99 = call i32 @ui_set_clip(i64 %74, i64 %78, i64 %88, i64 %98)
  br label %100

100:                                              ; preds = %70, %51
  %101 = load i32, i32* %7, align 4
  %102 = load i32, i32* @RDP_ORDER_DELTA, align 4
  %103 = and i32 %101, %102
  store i32 %103, i32* %10, align 4
  %104 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  switch i32 %106, label %205 [
    i32 140, label %107
    i32 135, label %114
    i32 130, label %121
    i32 137, label %128
    i32 131, label %135
    i32 141, label %142
    i32 136, label %149
    i32 128, label %156
    i32 134, label %163
    i32 133, label %170
    i32 132, label %177
    i32 139, label %184
    i32 138, label %191
    i32 129, label %198
  ]

107:                                              ; preds = %100
  %108 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %109 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %110 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %109, i32 0, i32 14
  %111 = load i32, i32* %6, align 4
  %112 = load i32, i32* %10, align 4
  %113 = call i32 @process_destblt(%struct.TYPE_24__* %108, i32* %110, i32 %111, i32 %112)
  br label %210

114:                                              ; preds = %100
  %115 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %116 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %117 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %116, i32 0, i32 13
  %118 = load i32, i32* %6, align 4
  %119 = load i32, i32* %10, align 4
  %120 = call i32 @process_patblt(%struct.TYPE_24__* %115, i32* %117, i32 %118, i32 %119)
  br label %210

121:                                              ; preds = %100
  %122 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %123 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %124 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %123, i32 0, i32 12
  %125 = load i32, i32* %6, align 4
  %126 = load i32, i32* %10, align 4
  %127 = call i32 @process_screenblt(%struct.TYPE_24__* %122, i32* %124, i32 %125, i32 %126)
  br label %210

128:                                              ; preds = %100
  %129 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %130 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %131 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %130, i32 0, i32 11
  %132 = load i32, i32* %6, align 4
  %133 = load i32, i32* %10, align 4
  %134 = call i32 @process_line(%struct.TYPE_24__* %129, i32* %131, i32 %132, i32 %133)
  br label %210

135:                                              ; preds = %100
  %136 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %137 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %138 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %137, i32 0, i32 10
  %139 = load i32, i32* %6, align 4
  %140 = load i32, i32* %10, align 4
  %141 = call i32 @process_rect(%struct.TYPE_24__* %136, i32* %138, i32 %139, i32 %140)
  br label %210

142:                                              ; preds = %100
  %143 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %144 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %145 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %144, i32 0, i32 9
  %146 = load i32, i32* %6, align 4
  %147 = load i32, i32* %10, align 4
  %148 = call i32 @process_desksave(%struct.TYPE_24__* %143, i32* %145, i32 %146, i32 %147)
  br label %210

149:                                              ; preds = %100
  %150 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %151 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %152 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %151, i32 0, i32 8
  %153 = load i32, i32* %6, align 4
  %154 = load i32, i32* %10, align 4
  %155 = call i32 @process_memblt(%struct.TYPE_24__* %150, i32* %152, i32 %153, i32 %154)
  br label %210

156:                                              ; preds = %100
  %157 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %158 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %159 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %158, i32 0, i32 7
  %160 = load i32, i32* %6, align 4
  %161 = load i32, i32* %10, align 4
  %162 = call i32 @process_triblt(%struct.TYPE_24__* %157, i32* %159, i32 %160, i32 %161)
  br label %210

163:                                              ; preds = %100
  %164 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %165 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %166 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %165, i32 0, i32 6
  %167 = load i32, i32* %6, align 4
  %168 = load i32, i32* %10, align 4
  %169 = call i32 @process_polygon(%struct.TYPE_24__* %164, i32* %166, i32 %167, i32 %168)
  br label %210

170:                                              ; preds = %100
  %171 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %172 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %173 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %172, i32 0, i32 5
  %174 = load i32, i32* %6, align 4
  %175 = load i32, i32* %10, align 4
  %176 = call i32 @process_polygon2(%struct.TYPE_24__* %171, i32* %173, i32 %174, i32 %175)
  br label %210

177:                                              ; preds = %100
  %178 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %179 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %180 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %179, i32 0, i32 4
  %181 = load i32, i32* %6, align 4
  %182 = load i32, i32* %10, align 4
  %183 = call i32 @process_polyline(%struct.TYPE_24__* %178, i32* %180, i32 %181, i32 %182)
  br label %210

184:                                              ; preds = %100
  %185 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %186 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %187 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %186, i32 0, i32 3
  %188 = load i32, i32* %6, align 4
  %189 = load i32, i32* %10, align 4
  %190 = call i32 @process_ellipse(%struct.TYPE_24__* %185, i32* %187, i32 %188, i32 %189)
  br label %210

191:                                              ; preds = %100
  %192 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %193 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %194 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %193, i32 0, i32 2
  %195 = load i32, i32* %6, align 4
  %196 = load i32, i32* %10, align 4
  %197 = call i32 @process_ellipse2(%struct.TYPE_24__* %192, i32* %194, i32 %195, i32 %196)
  br label %210

198:                                              ; preds = %100
  %199 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %200 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %201 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %200, i32 0, i32 1
  %202 = load i32, i32* %6, align 4
  %203 = load i32, i32* %10, align 4
  %204 = call i32 @process_text2(%struct.TYPE_24__* %199, i32* %201, i32 %202, i32 %203)
  br label %210

205:                                              ; preds = %100
  %206 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %207 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 8
  %209 = call i32 @unimpl(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %208)
  br label %221

210:                                              ; preds = %198, %191, %184, %177, %170, %163, %156, %149, %142, %135, %128, %121, %114, %107
  %211 = load i32, i32* %7, align 4
  %212 = load i32, i32* @RDP_ORDER_BOUNDS, align 4
  %213 = and i32 %211, %212
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %217

215:                                              ; preds = %210
  %216 = call i32 (...) @ui_reset_clip()
  br label %217

217:                                              ; preds = %215, %210
  br label %218

218:                                              ; preds = %217, %30
  %219 = load i32, i32* %9, align 4
  %220 = add nsw i32 %219, 1
  store i32 %220, i32* %9, align 4
  br label %11

221:                                              ; preds = %205, %23, %11
  ret void
}

declare dso_local i32 @in_uint8(%struct.TYPE_24__*, i32) #1

declare dso_local i32 @error(i8*, ...) #1

declare dso_local i32 @process_secondary_order(%struct.TYPE_24__*) #1

declare dso_local i32 @rdp_in_present(%struct.TYPE_24__*, i32*, i32, i32) #1

declare dso_local i32 @rdp_parse_bounds(%struct.TYPE_24__*, %struct.TYPE_26__*) #1

declare dso_local i32 @ui_set_clip(i64, i64, i64, i64) #1

declare dso_local i32 @process_destblt(%struct.TYPE_24__*, i32*, i32, i32) #1

declare dso_local i32 @process_patblt(%struct.TYPE_24__*, i32*, i32, i32) #1

declare dso_local i32 @process_screenblt(%struct.TYPE_24__*, i32*, i32, i32) #1

declare dso_local i32 @process_line(%struct.TYPE_24__*, i32*, i32, i32) #1

declare dso_local i32 @process_rect(%struct.TYPE_24__*, i32*, i32, i32) #1

declare dso_local i32 @process_desksave(%struct.TYPE_24__*, i32*, i32, i32) #1

declare dso_local i32 @process_memblt(%struct.TYPE_24__*, i32*, i32, i32) #1

declare dso_local i32 @process_triblt(%struct.TYPE_24__*, i32*, i32, i32) #1

declare dso_local i32 @process_polygon(%struct.TYPE_24__*, i32*, i32, i32) #1

declare dso_local i32 @process_polygon2(%struct.TYPE_24__*, i32*, i32, i32) #1

declare dso_local i32 @process_polyline(%struct.TYPE_24__*, i32*, i32, i32) #1

declare dso_local i32 @process_ellipse(%struct.TYPE_24__*, i32*, i32, i32) #1

declare dso_local i32 @process_ellipse2(%struct.TYPE_24__*, i32*, i32, i32) #1

declare dso_local i32 @process_text2(%struct.TYPE_24__*, i32*, i32, i32) #1

declare dso_local i32 @unimpl(i8*, i32) #1

declare dso_local i32 @ui_reset_clip(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
