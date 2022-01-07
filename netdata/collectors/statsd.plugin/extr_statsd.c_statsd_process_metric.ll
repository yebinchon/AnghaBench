; ModuleID = '/home/carl/AnghaBench/netdata/collectors/statsd.plugin/extr_statsd.c_statsd_process_metric.c'
source_filename = "/home/carl/AnghaBench/netdata/collectors/statsd.plugin/extr_statsd.c_statsd_process_metric.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32 }

@D_STATSD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [73 x i8] c"STATSD: raw metric '%s', value '%s', type '%s', sampling '%s', tags '%s'\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"(null)\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"m\00", align 1
@statsd = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@STATSD_METRIC_TYPE_GAUGE = common dso_local global i32 0, align 4
@STATSD_METRIC_TYPE_COUNTER = common dso_local global i32 0, align 4
@STATSD_METRIC_TYPE_METER = common dso_local global i32 0, align 4
@STATSD_METRIC_TYPE_HISTOGRAM = common dso_local global i32 0, align 4
@STATSD_METRIC_TYPE_SET = common dso_local global i32 0, align 4
@STATSD_METRIC_TYPE_TIMER = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [74 x i8] c"STATSD: metric '%s' with value '%s' is sent with unknown metric type '%s'\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i8*, i8*, i8*)* @statsd_process_metric to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @statsd_process_metric(i8* %0, i8* %1, i8* %2, i8* %3, i8* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8, align 1
  %12 = alloca i8, align 1
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i8* %4, i8** %10, align 8
  %13 = load i8*, i8** %10, align 8
  %14 = load i32, i32* @D_STATSD, align 4
  %15 = load i8*, i8** %6, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %5
  %18 = load i8*, i8** %6, align 8
  br label %20

19:                                               ; preds = %5
  br label %20

20:                                               ; preds = %19, %17
  %21 = phi i8* [ %18, %17 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), %19 ]
  %22 = load i8*, i8** %7, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = load i8*, i8** %7, align 8
  br label %27

26:                                               ; preds = %20
  br label %27

27:                                               ; preds = %26, %24
  %28 = phi i8* [ %25, %24 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), %26 ]
  %29 = load i8*, i8** %8, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = load i8*, i8** %8, align 8
  br label %34

33:                                               ; preds = %27
  br label %34

34:                                               ; preds = %33, %31
  %35 = phi i8* [ %32, %31 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), %33 ]
  %36 = load i8*, i8** %9, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %38, label %40

38:                                               ; preds = %34
  %39 = load i8*, i8** %9, align 8
  br label %41

40:                                               ; preds = %34
  br label %41

41:                                               ; preds = %40, %38
  %42 = phi i8* [ %39, %38 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), %40 ]
  %43 = load i8*, i8** %10, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %45, label %47

45:                                               ; preds = %41
  %46 = load i8*, i8** %10, align 8
  br label %48

47:                                               ; preds = %41
  br label %48

48:                                               ; preds = %47, %45
  %49 = phi i8* [ %46, %45 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), %47 ]
  %50 = call i32 @debug(i32 %14, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str, i64 0, i64 0), i8* %21, i8* %28, i8* %35, i8* %42, i8* %49)
  %51 = load i8*, i8** %6, align 8
  %52 = icmp ne i8* %51, null
  br i1 %52, label %53, label %58

53:                                               ; preds = %48
  %54 = load i8*, i8** %6, align 8
  %55 = load i8, i8* %54, align 1
  %56 = icmp ne i8 %55, 0
  %57 = xor i1 %56, true
  br label %58

58:                                               ; preds = %53, %48
  %59 = phi i1 [ true, %48 ], [ %57, %53 ]
  %60 = zext i1 %59 to i32
  %61 = call i64 @unlikely(i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %58
  br label %231

64:                                               ; preds = %58
  %65 = load i8*, i8** %8, align 8
  %66 = icmp ne i8* %65, null
  br i1 %66, label %67, label %72

67:                                               ; preds = %64
  %68 = load i8*, i8** %8, align 8
  %69 = load i8, i8* %68, align 1
  %70 = icmp ne i8 %69, 0
  %71 = xor i1 %70, true
  br label %72

72:                                               ; preds = %67, %64
  %73 = phi i1 [ true, %64 ], [ %71, %67 ]
  %74 = zext i1 %73 to i32
  %75 = call i64 @unlikely(i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %72
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8** %8, align 8
  br label %78

78:                                               ; preds = %77, %72
  %79 = load i8*, i8** %8, align 8
  %80 = getelementptr inbounds i8, i8* %79, i64 0
  %81 = load i8, i8* %80, align 1
  store i8 %81, i8* %11, align 1
  %82 = load i8*, i8** %8, align 8
  %83 = getelementptr inbounds i8, i8* %82, i64 1
  %84 = load i8, i8* %83, align 1
  store i8 %84, i8* %12, align 1
  %85 = load i8, i8* %11, align 1
  %86 = sext i8 %85 to i32
  %87 = icmp eq i32 %86, 103
  br i1 %87, label %88, label %92

88:                                               ; preds = %78
  %89 = load i8, i8* %12, align 1
  %90 = sext i8 %89 to i32
  %91 = icmp eq i32 %90, 0
  br label %92

92:                                               ; preds = %88, %78
  %93 = phi i1 [ false, %78 ], [ %91, %88 ]
  %94 = zext i1 %93 to i32
  %95 = call i64 @unlikely(i32 %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %104

97:                                               ; preds = %92
  %98 = load i8*, i8** %6, align 8
  %99 = load i32, i32* @STATSD_METRIC_TYPE_GAUGE, align 4
  %100 = call i32 @statsd_find_or_add_metric(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @statsd, i32 0, i32 6), i8* %98, i32 %99)
  %101 = load i8*, i8** %7, align 8
  %102 = load i8*, i8** %9, align 8
  %103 = call i32 @statsd_process_gauge(i32 %100, i8* %101, i8* %102)
  br label %231

104:                                              ; preds = %92
  %105 = load i8, i8* %11, align 1
  %106 = sext i8 %105 to i32
  %107 = icmp eq i32 %106, 99
  br i1 %107, label %112, label %108

108:                                              ; preds = %104
  %109 = load i8, i8* %11, align 1
  %110 = sext i8 %109 to i32
  %111 = icmp eq i32 %110, 67
  br i1 %111, label %112, label %116

112:                                              ; preds = %108, %104
  %113 = load i8, i8* %12, align 1
  %114 = sext i8 %113 to i32
  %115 = icmp eq i32 %114, 0
  br label %116

116:                                              ; preds = %112, %108
  %117 = phi i1 [ false, %108 ], [ %115, %112 ]
  %118 = zext i1 %117 to i32
  %119 = call i64 @unlikely(i32 %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %128

121:                                              ; preds = %116
  %122 = load i8*, i8** %6, align 8
  %123 = load i32, i32* @STATSD_METRIC_TYPE_COUNTER, align 4
  %124 = call i32 @statsd_find_or_add_metric(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @statsd, i32 0, i32 5), i8* %122, i32 %123)
  %125 = load i8*, i8** %7, align 8
  %126 = load i8*, i8** %9, align 8
  %127 = call i32 @statsd_process_counter(i32 %124, i8* %125, i8* %126)
  br label %230

128:                                              ; preds = %116
  %129 = load i8, i8* %11, align 1
  %130 = sext i8 %129 to i32
  %131 = icmp eq i32 %130, 109
  br i1 %131, label %132, label %136

132:                                              ; preds = %128
  %133 = load i8, i8* %12, align 1
  %134 = sext i8 %133 to i32
  %135 = icmp eq i32 %134, 0
  br label %136

136:                                              ; preds = %132, %128
  %137 = phi i1 [ false, %128 ], [ %135, %132 ]
  %138 = zext i1 %137 to i32
  %139 = call i64 @unlikely(i32 %138)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %148

141:                                              ; preds = %136
  %142 = load i8*, i8** %6, align 8
  %143 = load i32, i32* @STATSD_METRIC_TYPE_METER, align 4
  %144 = call i32 @statsd_find_or_add_metric(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @statsd, i32 0, i32 4), i8* %142, i32 %143)
  %145 = load i8*, i8** %7, align 8
  %146 = load i8*, i8** %9, align 8
  %147 = call i32 @statsd_process_meter(i32 %144, i8* %145, i8* %146)
  br label %229

148:                                              ; preds = %136
  %149 = load i8, i8* %11, align 1
  %150 = sext i8 %149 to i32
  %151 = icmp eq i32 %150, 104
  br i1 %151, label %152, label %156

152:                                              ; preds = %148
  %153 = load i8, i8* %12, align 1
  %154 = sext i8 %153 to i32
  %155 = icmp eq i32 %154, 0
  br label %156

156:                                              ; preds = %152, %148
  %157 = phi i1 [ false, %148 ], [ %155, %152 ]
  %158 = zext i1 %157 to i32
  %159 = call i64 @unlikely(i32 %158)
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %168

161:                                              ; preds = %156
  %162 = load i8*, i8** %6, align 8
  %163 = load i32, i32* @STATSD_METRIC_TYPE_HISTOGRAM, align 4
  %164 = call i32 @statsd_find_or_add_metric(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @statsd, i32 0, i32 3), i8* %162, i32 %163)
  %165 = load i8*, i8** %7, align 8
  %166 = load i8*, i8** %9, align 8
  %167 = call i32 @statsd_process_histogram(i32 %164, i8* %165, i8* %166)
  br label %228

168:                                              ; preds = %156
  %169 = load i8, i8* %11, align 1
  %170 = sext i8 %169 to i32
  %171 = icmp eq i32 %170, 115
  br i1 %171, label %172, label %176

172:                                              ; preds = %168
  %173 = load i8, i8* %12, align 1
  %174 = sext i8 %173 to i32
  %175 = icmp eq i32 %174, 0
  br label %176

176:                                              ; preds = %172, %168
  %177 = phi i1 [ false, %168 ], [ %175, %172 ]
  %178 = zext i1 %177 to i32
  %179 = call i64 @unlikely(i32 %178)
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %187

181:                                              ; preds = %176
  %182 = load i8*, i8** %6, align 8
  %183 = load i32, i32* @STATSD_METRIC_TYPE_SET, align 4
  %184 = call i32 @statsd_find_or_add_metric(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @statsd, i32 0, i32 2), i8* %182, i32 %183)
  %185 = load i8*, i8** %7, align 8
  %186 = call i32 @statsd_process_set(i32 %184, i8* %185)
  br label %227

187:                                              ; preds = %176
  %188 = load i8, i8* %11, align 1
  %189 = sext i8 %188 to i32
  %190 = icmp eq i32 %189, 109
  br i1 %190, label %191, label %201

191:                                              ; preds = %187
  %192 = load i8, i8* %12, align 1
  %193 = sext i8 %192 to i32
  %194 = icmp eq i32 %193, 115
  br i1 %194, label %195, label %201

195:                                              ; preds = %191
  %196 = load i8*, i8** %8, align 8
  %197 = getelementptr inbounds i8, i8* %196, i64 2
  %198 = load i8, i8* %197, align 1
  %199 = sext i8 %198 to i32
  %200 = icmp eq i32 %199, 0
  br label %201

201:                                              ; preds = %195, %191, %187
  %202 = phi i1 [ false, %191 ], [ false, %187 ], [ %200, %195 ]
  %203 = zext i1 %202 to i32
  %204 = call i64 @unlikely(i32 %203)
  %205 = icmp ne i64 %204, 0
  br i1 %205, label %206, label %213

206:                                              ; preds = %201
  %207 = load i8*, i8** %6, align 8
  %208 = load i32, i32* @STATSD_METRIC_TYPE_TIMER, align 4
  %209 = call i32 @statsd_find_or_add_metric(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @statsd, i32 0, i32 1), i8* %207, i32 %208)
  %210 = load i8*, i8** %7, align 8
  %211 = load i8*, i8** %9, align 8
  %212 = call i32 @statsd_process_timer(i32 %209, i8* %210, i8* %211)
  br label %226

213:                                              ; preds = %201
  %214 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @statsd, i32 0, i32 0), align 4
  %215 = add nsw i32 %214, 1
  store i32 %215, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @statsd, i32 0, i32 0), align 4
  %216 = load i8*, i8** %6, align 8
  %217 = load i8*, i8** %7, align 8
  %218 = icmp ne i8* %217, null
  br i1 %218, label %219, label %221

219:                                              ; preds = %213
  %220 = load i8*, i8** %7, align 8
  br label %222

221:                                              ; preds = %213
  br label %222

222:                                              ; preds = %221, %219
  %223 = phi i8* [ %220, %219 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), %221 ]
  %224 = load i8*, i8** %8, align 8
  %225 = call i32 @error(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.3, i64 0, i64 0), i8* %216, i8* %223, i8* %224)
  br label %226

226:                                              ; preds = %222, %206
  br label %227

227:                                              ; preds = %226, %181
  br label %228

228:                                              ; preds = %227, %161
  br label %229

229:                                              ; preds = %228, %141
  br label %230

230:                                              ; preds = %229, %121
  br label %231

231:                                              ; preds = %63, %230, %97
  ret void
}

declare dso_local i32 @debug(i32, i8*, i8*, i8*, i8*, i8*, i8*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @statsd_process_gauge(i32, i8*, i8*) #1

declare dso_local i32 @statsd_find_or_add_metric(i32*, i8*, i32) #1

declare dso_local i32 @statsd_process_counter(i32, i8*, i8*) #1

declare dso_local i32 @statsd_process_meter(i32, i8*, i8*) #1

declare dso_local i32 @statsd_process_histogram(i32, i8*, i8*) #1

declare dso_local i32 @statsd_process_set(i32, i8*) #1

declare dso_local i32 @statsd_process_timer(i32, i8*, i8*) #1

declare dso_local i32 @error(i8*, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
