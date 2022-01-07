; ModuleID = '/home/carl/AnghaBench/netdata/collectors/statsd.plugin/extr_statsd.c_check_if_metric_is_for_app.c'
source_filename = "/home/carl/AnghaBench/netdata/collectors/statsd.plugin/extr_statsd.c_check_if_metric_is_for_app.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32, i64, %struct.TYPE_15__*, i32, i32, %struct.TYPE_16__* }
%struct.TYPE_15__ = type { %struct.TYPE_14__*, %struct.TYPE_15__* }
%struct.TYPE_14__ = type { i32, i8*, i64, i32, i32, i32, i32, i32, i32, %struct.TYPE_14__* }
%struct.TYPE_13__ = type { i8*, i32, i64 }

@statsd = common dso_local global %struct.TYPE_17__ zeroinitializer, align 8
@D_STATSD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"metric '%s' matches app '%s'\00", align 1
@STATSD_METRIC_OPTION_PRIVATE_CHART_ENABLED = common dso_local global i32 0, align 4
@STATSD_METRIC_OPTION_SHOW_GAPS_WHEN_NOT_COLLECTED = common dso_local global i32 0, align 4
@STATSD_METRIC_OPTION_PRIVATE_CHART_CHECKED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_13__*)* @check_if_metric_is_for_app to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_if_metric_is_for_app(i32* %0, %struct.TYPE_13__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %4, align 8
  %14 = load i32*, i32** %3, align 8
  %15 = load %struct.TYPE_16__*, %struct.TYPE_16__** getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @statsd, i32 0, i32 0), align 8
  store %struct.TYPE_16__* %15, %struct.TYPE_16__** %5, align 8
  br label %16

16:                                               ; preds = %236, %2
  %17 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %18 = icmp ne %struct.TYPE_16__* %17, null
  br i1 %18, label %19, label %240

19:                                               ; preds = %16
  %20 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %20, i32 0, i32 4
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  %26 = call i32 @simple_pattern_matches(i32 %22, i8* %25)
  %27 = call i64 @unlikely(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %235

29:                                               ; preds = %19
  %30 = load i32, i32* @D_STATSD, align 4
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %31, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  %34 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @debug(i32 %30, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* %33, i32 %36)
  %38 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @STATSD_METRIC_OPTION_PRIVATE_CHART_ENABLED, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %29
  %45 = load i32, i32* @STATSD_METRIC_OPTION_PRIVATE_CHART_ENABLED, align 4
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = or i32 %48, %45
  store i32 %49, i32* %47, align 8
  br label %57

50:                                               ; preds = %29
  %51 = load i32, i32* @STATSD_METRIC_OPTION_PRIVATE_CHART_ENABLED, align 4
  %52 = xor i32 %51, -1
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = and i32 %55, %52
  store i32 %56, i32* %54, align 8
  br label %57

57:                                               ; preds = %50, %44
  %58 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @STATSD_METRIC_OPTION_SHOW_GAPS_WHEN_NOT_COLLECTED, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %57
  %65 = load i32, i32* @STATSD_METRIC_OPTION_SHOW_GAPS_WHEN_NOT_COLLECTED, align 4
  %66 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = or i32 %68, %65
  store i32 %69, i32* %67, align 8
  br label %77

70:                                               ; preds = %57
  %71 = load i32, i32* @STATSD_METRIC_OPTION_SHOW_GAPS_WHEN_NOT_COLLECTED, align 4
  %72 = xor i32 %71, -1
  %73 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = and i32 %75, %72
  store i32 %76, i32* %74, align 8
  br label %77

77:                                               ; preds = %70, %64
  %78 = load i32, i32* @STATSD_METRIC_OPTION_PRIVATE_CHART_CHECKED, align 4
  %79 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = or i32 %81, %78
  store i32 %82, i32* %80, align 8
  %83 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %83, i32 0, i32 2
  %85 = load %struct.TYPE_15__*, %struct.TYPE_15__** %84, align 8
  store %struct.TYPE_15__* %85, %struct.TYPE_15__** %6, align 8
  br label %86

86:                                               ; preds = %230, %77
  %87 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %88 = icmp ne %struct.TYPE_15__* %87, null
  br i1 %88, label %89, label %234

89:                                               ; preds = %86
  %90 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %91 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %90, i32 0, i32 0
  %92 = load %struct.TYPE_14__*, %struct.TYPE_14__** %91, align 8
  store %struct.TYPE_14__* %92, %struct.TYPE_14__** %7, align 8
  br label %93

93:                                               ; preds = %225, %89
  %94 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %95 = icmp ne %struct.TYPE_14__* %94, null
  br i1 %95, label %96, label %229

96:                                               ; preds = %93
  %97 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %98 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = call i64 @unlikely(i32 %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %195

102:                                              ; preds = %96
  %103 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %104 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %103, i32 0, i32 1
  %105 = load i8*, i8** %104, align 8
  %106 = call i64 @strlen(i8* %105)
  store i64 %106, i64* %8, align 8
  %107 = load i64, i64* %8, align 8
  %108 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %108, i32 0, i32 0
  %110 = load i8*, i8** %109, align 8
  %111 = call i64 @strlen(i8* %110)
  %112 = add i64 %107, %111
  %113 = add i64 %112, 1
  store i64 %113, i64* %9, align 8
  %114 = load i64, i64* %9, align 8
  %115 = call i8* @llvm.stacksave()
  store i8* %115, i8** %10, align 8
  %116 = alloca i8, i64 %114, align 16
  store i64 %114, i64* %11, align 8
  %117 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %118 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %117, i32 0, i32 1
  %119 = load i8*, i8** %118, align 8
  %120 = call i32 @strcpy(i8* %116, i8* %119)
  %121 = load i64, i64* %8, align 8
  %122 = getelementptr inbounds i8, i8* %116, i64 %121
  store i8* %122, i8** %12, align 8
  %123 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %124 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %127 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %126, i32 0, i32 0
  %128 = load i8*, i8** %127, align 8
  %129 = load i8*, i8** %12, align 8
  %130 = load i64, i64* %9, align 8
  %131 = load i64, i64* %8, align 8
  %132 = sub i64 %130, %131
  %133 = call i64 @simple_pattern_matches_extract(i32 %125, i8* %128, i8* %129, i64 %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %193

135:                                              ; preds = %102
  store i8* null, i8** %13, align 8
  %136 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %137 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %136, i32 0, i32 1
  %138 = load i64, i64* %137, align 8
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %165

140:                                              ; preds = %135
  %141 = load i8, i8* %116, align 16
  %142 = call i64 @likely(i8 signext %141)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %149

144:                                              ; preds = %140
  %145 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %146 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %145, i32 0, i32 1
  %147 = load i64, i64* %146, align 8
  %148 = call i8* @dictionary_get(i64 %147, i8* %116)
  store i8* %148, i8** %13, align 8
  br label %149

149:                                              ; preds = %144, %140
  %150 = load i8*, i8** %13, align 8
  %151 = icmp ne i8* %150, null
  %152 = xor i1 %151, true
  %153 = zext i1 %152 to i32
  %154 = call i64 @unlikely(i32 %153)
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %164

156:                                              ; preds = %149
  %157 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %158 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %157, i32 0, i32 1
  %159 = load i64, i64* %158, align 8
  %160 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %161 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %160, i32 0, i32 0
  %162 = load i8*, i8** %161, align 8
  %163 = call i8* @dictionary_get(i64 %159, i8* %162)
  store i8* %163, i8** %13, align 8
  br label %164

164:                                              ; preds = %156, %149
  br label %165

165:                                              ; preds = %164, %135
  %166 = load i8*, i8** %13, align 8
  %167 = icmp ne i8* %166, null
  %168 = xor i1 %167, true
  %169 = zext i1 %168 to i32
  %170 = call i64 @unlikely(i32 %169)
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %173

172:                                              ; preds = %165
  store i8* %116, i8** %13, align 8
  br label %173

173:                                              ; preds = %172, %165
  %174 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %175 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %176 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %177 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %176, i32 0, i32 0
  %178 = load i8*, i8** %177, align 8
  %179 = load i8*, i8** %13, align 8
  %180 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %181 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %180, i32 0, i32 8
  %182 = load i32, i32* %181, align 4
  %183 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %184 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %183, i32 0, i32 7
  %185 = load i32, i32* %184, align 8
  %186 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %187 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %186, i32 0, i32 6
  %188 = load i32, i32* %187, align 4
  %189 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %190 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %189, i32 0, i32 5
  %191 = load i32, i32* %190, align 8
  %192 = call i32 @add_dimension_to_app_chart(%struct.TYPE_16__* %174, %struct.TYPE_15__* %175, i8* %178, i8* %179, i32 %182, i32 %185, i32 %188, i32 %191)
  br label %193

193:                                              ; preds = %173, %102
  %194 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %194)
  br label %224

195:                                              ; preds = %96
  %196 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %197 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %196, i32 0, i32 4
  %198 = load i32, i32* %197, align 4
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %223, label %200

200:                                              ; preds = %195
  %201 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %202 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %201, i32 0, i32 2
  %203 = load i64, i64* %202, align 8
  %204 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %205 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %204, i32 0, i32 2
  %206 = load i64, i64* %205, align 8
  %207 = icmp eq i64 %203, %206
  br i1 %207, label %208, label %223

208:                                              ; preds = %200
  %209 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %210 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %209, i32 0, i32 3
  %211 = load i32, i32* %210, align 8
  %212 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %213 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %212, i32 0, i32 0
  %214 = load i8*, i8** %213, align 8
  %215 = call i32 @strcmp(i32 %211, i8* %214)
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %223, label %217

217:                                              ; preds = %208
  %218 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %219 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %220 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %221 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %222 = call i32 @link_metric_to_app_dimension(%struct.TYPE_16__* %218, %struct.TYPE_13__* %219, %struct.TYPE_15__* %220, %struct.TYPE_14__* %221)
  br label %223

223:                                              ; preds = %217, %208, %200, %195
  br label %224

224:                                              ; preds = %223, %193
  br label %225

225:                                              ; preds = %224
  %226 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %227 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %226, i32 0, i32 9
  %228 = load %struct.TYPE_14__*, %struct.TYPE_14__** %227, align 8
  store %struct.TYPE_14__* %228, %struct.TYPE_14__** %7, align 8
  br label %93

229:                                              ; preds = %93
  br label %230

230:                                              ; preds = %229
  %231 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %232 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %231, i32 0, i32 1
  %233 = load %struct.TYPE_15__*, %struct.TYPE_15__** %232, align 8
  store %struct.TYPE_15__* %233, %struct.TYPE_15__** %6, align 8
  br label %86

234:                                              ; preds = %86
  br label %235

235:                                              ; preds = %234, %19
  br label %236

236:                                              ; preds = %235
  %237 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %238 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %237, i32 0, i32 5
  %239 = load %struct.TYPE_16__*, %struct.TYPE_16__** %238, align 8
  store %struct.TYPE_16__* %239, %struct.TYPE_16__** %5, align 8
  br label %16

240:                                              ; preds = %16
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @simple_pattern_matches(i32, i8*) #1

declare dso_local i32 @debug(i32, i8*, i8*, i32) #1

declare dso_local i64 @strlen(i8*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i64 @simple_pattern_matches_extract(i32, i8*, i8*, i64) #1

declare dso_local i64 @likely(i8 signext) #1

declare dso_local i8* @dictionary_get(i64, i8*) #1

declare dso_local i32 @add_dimension_to_app_chart(%struct.TYPE_16__*, %struct.TYPE_15__*, i8*, i8*, i32, i32, i32, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @strcmp(i32, i8*) #1

declare dso_local i32 @link_metric_to_app_dimension(%struct.TYPE_16__*, %struct.TYPE_13__*, %struct.TYPE_15__*, %struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
