; ModuleID = '/home/carl/AnghaBench/netdata/libnetdata/health/extr_health.c_health_silencers_addparam.c'
source_filename = "/home/carl/AnghaBench/netdata/libnetdata/health/extr_health.c_health_silencers_addparam.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }

@health_silencers_addparam.hash_alarm = internal global i64 0, align 8
@health_silencers_addparam.hash_template = internal global i64 0, align 8
@health_silencers_addparam.hash_chart = internal global i64 0, align 8
@health_silencers_addparam.hash_context = internal global i64 0, align 8
@health_silencers_addparam.hash_host = internal global i64 0, align 8
@health_silencers_addparam.hash_families = internal global i64 0, align 8
@HEALTH_ALARM_KEY = common dso_local global i8* null, align 8
@HEALTH_TEMPLATE_KEY = common dso_local global i8* null, align 8
@HEALTH_CHART_KEY = common dso_local global i8* null, align 8
@HEALTH_CONTEXT_KEY = common dso_local global i8* null, align 8
@HEALTH_HOST_KEY = common dso_local global i8* null, align 8
@HEALTH_FAMILIES_KEY = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [37 x i8] c"Cannot add a new silencer to Netdata\00", align 1
@SIMPLE_PATTERN_EXACT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_5__* @health_silencers_addparam(%struct.TYPE_5__* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load i64, i64* @health_silencers_addparam.hash_alarm, align 8
  %10 = icmp ne i64 %9, 0
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i32
  %13 = call i64 @unlikely(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %28

15:                                               ; preds = %3
  %16 = load i8*, i8** @HEALTH_ALARM_KEY, align 8
  %17 = call i64 @simple_uhash(i8* %16)
  store i64 %17, i64* @health_silencers_addparam.hash_alarm, align 8
  %18 = load i8*, i8** @HEALTH_TEMPLATE_KEY, align 8
  %19 = call i64 @simple_uhash(i8* %18)
  store i64 %19, i64* @health_silencers_addparam.hash_template, align 8
  %20 = load i8*, i8** @HEALTH_CHART_KEY, align 8
  %21 = call i64 @simple_uhash(i8* %20)
  store i64 %21, i64* @health_silencers_addparam.hash_chart, align 8
  %22 = load i8*, i8** @HEALTH_CONTEXT_KEY, align 8
  %23 = call i64 @simple_uhash(i8* %22)
  store i64 %23, i64* @health_silencers_addparam.hash_context, align 8
  %24 = load i8*, i8** @HEALTH_HOST_KEY, align 8
  %25 = call i64 @simple_uhash(i8* %24)
  store i64 %25, i64* @health_silencers_addparam.hash_host, align 8
  %26 = load i8*, i8** @HEALTH_FAMILIES_KEY, align 8
  %27 = call i64 @simple_uhash(i8* %26)
  store i64 %27, i64* @health_silencers_addparam.hash_families, align 8
  br label %28

28:                                               ; preds = %15, %3
  %29 = load i8*, i8** %6, align 8
  %30 = call i64 @simple_uhash(i8* %29)
  store i64 %30, i64* %8, align 8
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %32 = icmp eq %struct.TYPE_5__* %31, null
  %33 = zext i1 %32 to i32
  %34 = call i64 @unlikely(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %98

36:                                               ; preds = %28
  %37 = load i64, i64* %8, align 8
  %38 = load i64, i64* @health_silencers_addparam.hash_alarm, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %45

40:                                               ; preds = %36
  %41 = load i8*, i8** %6, align 8
  %42 = load i8*, i8** @HEALTH_ALARM_KEY, align 8
  %43 = call i32 @strcasecmp(i8* %41, i8* %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %90

45:                                               ; preds = %40, %36
  %46 = load i64, i64* %8, align 8
  %47 = load i64, i64* @health_silencers_addparam.hash_template, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %54

49:                                               ; preds = %45
  %50 = load i8*, i8** %6, align 8
  %51 = load i8*, i8** @HEALTH_TEMPLATE_KEY, align 8
  %52 = call i32 @strcasecmp(i8* %50, i8* %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %90

54:                                               ; preds = %49, %45
  %55 = load i64, i64* %8, align 8
  %56 = load i64, i64* @health_silencers_addparam.hash_chart, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %63

58:                                               ; preds = %54
  %59 = load i8*, i8** %6, align 8
  %60 = load i8*, i8** @HEALTH_CHART_KEY, align 8
  %61 = call i32 @strcasecmp(i8* %59, i8* %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %90

63:                                               ; preds = %58, %54
  %64 = load i64, i64* %8, align 8
  %65 = load i64, i64* @health_silencers_addparam.hash_context, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %72

67:                                               ; preds = %63
  %68 = load i8*, i8** %6, align 8
  %69 = load i8*, i8** @HEALTH_CONTEXT_KEY, align 8
  %70 = call i32 @strcasecmp(i8* %68, i8* %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %90

72:                                               ; preds = %67, %63
  %73 = load i64, i64* %8, align 8
  %74 = load i64, i64* @health_silencers_addparam.hash_host, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %81

76:                                               ; preds = %72
  %77 = load i8*, i8** %6, align 8
  %78 = load i8*, i8** @HEALTH_HOST_KEY, align 8
  %79 = call i32 @strcasecmp(i8* %77, i8* %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %90

81:                                               ; preds = %76, %72
  %82 = load i64, i64* %8, align 8
  %83 = load i64, i64* @health_silencers_addparam.hash_families, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %85, label %97

85:                                               ; preds = %81
  %86 = load i8*, i8** %6, align 8
  %87 = load i8*, i8** @HEALTH_FAMILIES_KEY, align 8
  %88 = call i32 @strcasecmp(i8* %86, i8* %87)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %97, label %90

90:                                               ; preds = %85, %76, %67, %58, %49, %40
  %91 = call %struct.TYPE_5__* (...) @create_silencer()
  store %struct.TYPE_5__* %91, %struct.TYPE_5__** %5, align 8
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %93 = icmp ne %struct.TYPE_5__* %92, null
  br i1 %93, label %96, label %94

94:                                               ; preds = %90
  %95 = call i32 @error(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %4, align 8
  br label %209

96:                                               ; preds = %90
  br label %97

97:                                               ; preds = %96, %85, %81
  br label %98

98:                                               ; preds = %97, %28
  %99 = load i64, i64* %8, align 8
  %100 = load i64, i64* @health_silencers_addparam.hash_alarm, align 8
  %101 = icmp eq i64 %99, %100
  br i1 %101, label %102, label %119

102:                                              ; preds = %98
  %103 = load i8*, i8** %6, align 8
  %104 = load i8*, i8** @HEALTH_ALARM_KEY, align 8
  %105 = call i32 @strcasecmp(i8* %103, i8* %104)
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %119, label %107

107:                                              ; preds = %102
  %108 = load i8*, i8** %7, align 8
  %109 = call i8* @strdupz(i8* %108)
  %110 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 8
  store i8* %109, i8** %111, align 8
  %112 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %112, i32 0, i32 8
  %114 = load i8*, i8** %113, align 8
  %115 = load i32, i32* @SIMPLE_PATTERN_EXACT, align 4
  %116 = call i8* @simple_pattern_create(i8* %114, i32* null, i32 %115)
  %117 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 9
  store i8* %116, i8** %118, align 8
  br label %207

119:                                              ; preds = %102, %98
  %120 = load i64, i64* %8, align 8
  %121 = load i64, i64* @health_silencers_addparam.hash_chart, align 8
  %122 = icmp eq i64 %120, %121
  br i1 %122, label %123, label %140

123:                                              ; preds = %119
  %124 = load i8*, i8** %6, align 8
  %125 = load i8*, i8** @HEALTH_CHART_KEY, align 8
  %126 = call i32 @strcasecmp(i8* %124, i8* %125)
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %140, label %128

128:                                              ; preds = %123
  %129 = load i8*, i8** %7, align 8
  %130 = call i8* @strdupz(i8* %129)
  %131 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %132 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %131, i32 0, i32 6
  store i8* %130, i8** %132, align 8
  %133 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %134 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %133, i32 0, i32 6
  %135 = load i8*, i8** %134, align 8
  %136 = load i32, i32* @SIMPLE_PATTERN_EXACT, align 4
  %137 = call i8* @simple_pattern_create(i8* %135, i32* null, i32 %136)
  %138 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %139 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %138, i32 0, i32 7
  store i8* %137, i8** %139, align 8
  br label %206

140:                                              ; preds = %123, %119
  %141 = load i64, i64* %8, align 8
  %142 = load i64, i64* @health_silencers_addparam.hash_context, align 8
  %143 = icmp eq i64 %141, %142
  br i1 %143, label %144, label %161

144:                                              ; preds = %140
  %145 = load i8*, i8** %6, align 8
  %146 = load i8*, i8** @HEALTH_CONTEXT_KEY, align 8
  %147 = call i32 @strcasecmp(i8* %145, i8* %146)
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %161, label %149

149:                                              ; preds = %144
  %150 = load i8*, i8** %7, align 8
  %151 = call i8* @strdupz(i8* %150)
  %152 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %153 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %152, i32 0, i32 4
  store i8* %151, i8** %153, align 8
  %154 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %155 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %154, i32 0, i32 4
  %156 = load i8*, i8** %155, align 8
  %157 = load i32, i32* @SIMPLE_PATTERN_EXACT, align 4
  %158 = call i8* @simple_pattern_create(i8* %156, i32* null, i32 %157)
  %159 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %160 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %159, i32 0, i32 5
  store i8* %158, i8** %160, align 8
  br label %205

161:                                              ; preds = %144, %140
  %162 = load i64, i64* %8, align 8
  %163 = load i64, i64* @health_silencers_addparam.hash_host, align 8
  %164 = icmp eq i64 %162, %163
  br i1 %164, label %165, label %182

165:                                              ; preds = %161
  %166 = load i8*, i8** %6, align 8
  %167 = load i8*, i8** @HEALTH_HOST_KEY, align 8
  %168 = call i32 @strcasecmp(i8* %166, i8* %167)
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %182, label %170

170:                                              ; preds = %165
  %171 = load i8*, i8** %7, align 8
  %172 = call i8* @strdupz(i8* %171)
  %173 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %174 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %173, i32 0, i32 2
  store i8* %172, i8** %174, align 8
  %175 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %176 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %175, i32 0, i32 2
  %177 = load i8*, i8** %176, align 8
  %178 = load i32, i32* @SIMPLE_PATTERN_EXACT, align 4
  %179 = call i8* @simple_pattern_create(i8* %177, i32* null, i32 %178)
  %180 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %181 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %180, i32 0, i32 3
  store i8* %179, i8** %181, align 8
  br label %204

182:                                              ; preds = %165, %161
  %183 = load i64, i64* %8, align 8
  %184 = load i64, i64* @health_silencers_addparam.hash_families, align 8
  %185 = icmp eq i64 %183, %184
  br i1 %185, label %186, label %203

186:                                              ; preds = %182
  %187 = load i8*, i8** %6, align 8
  %188 = load i8*, i8** @HEALTH_FAMILIES_KEY, align 8
  %189 = call i32 @strcasecmp(i8* %187, i8* %188)
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %203, label %191

191:                                              ; preds = %186
  %192 = load i8*, i8** %7, align 8
  %193 = call i8* @strdupz(i8* %192)
  %194 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %195 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %194, i32 0, i32 0
  store i8* %193, i8** %195, align 8
  %196 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %197 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %196, i32 0, i32 0
  %198 = load i8*, i8** %197, align 8
  %199 = load i32, i32* @SIMPLE_PATTERN_EXACT, align 4
  %200 = call i8* @simple_pattern_create(i8* %198, i32* null, i32 %199)
  %201 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %202 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %201, i32 0, i32 1
  store i8* %200, i8** %202, align 8
  br label %203

203:                                              ; preds = %191, %186, %182
  br label %204

204:                                              ; preds = %203, %170
  br label %205

205:                                              ; preds = %204, %149
  br label %206

206:                                              ; preds = %205, %128
  br label %207

207:                                              ; preds = %206, %107
  %208 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  store %struct.TYPE_5__* %208, %struct.TYPE_5__** %4, align 8
  br label %209

209:                                              ; preds = %207, %94
  %210 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  ret %struct.TYPE_5__* %210
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @simple_uhash(i8*) #1

declare dso_local i32 @strcasecmp(i8*, i8*) #1

declare dso_local %struct.TYPE_5__* @create_silencer(...) #1

declare dso_local i32 @error(i8*) #1

declare dso_local i8* @strdupz(i8*) #1

declare dso_local i8* @simple_pattern_create(i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
