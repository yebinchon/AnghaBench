; ModuleID = '/home/carl/AnghaBench/netdata/health/extr_health_json.c_health_aggregate_alarms.c'
source_filename = "/home/carl/AnghaBench/netdata/health/extr_health_json.c_health_aggregate_alarms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i64, %struct.TYPE_9__*, %struct.TYPE_11__* }
%struct.TYPE_9__ = type { i64, %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c", |\00", align 1
@RRDCALC_STATUS_RAISED = common dso_local global i64 0, align 8
@RRDCALC_STATUS_WARNING = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @health_aggregate_alarms(%struct.TYPE_10__* %0, i32* %1, i32* %2, i64 %3) #0 {
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_11__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i64 %3, i64* %8, align 8
  store i32 0, i32* %10, align 4
  store i8* null, i8** %11, align 8
  store i8* null, i8** %12, align 8
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %14 = call i32 @rrdhost_rdlock(%struct.TYPE_10__* %13)
  %15 = load i32*, i32** %7, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %125

17:                                               ; preds = %4
  %18 = load i32*, i32** %7, align 8
  %19 = call i64 @buffer_tostring(i32* %18)
  %20 = inttoptr i64 %19 to i8*
  store i8* %20, i8** %12, align 8
  br label %21

21:                                               ; preds = %123, %38, %17
  %22 = load i8*, i8** %12, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %32

24:                                               ; preds = %21
  %25 = load i8*, i8** %12, align 8
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %24
  %30 = call i8* @mystrsep(i8** %12, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store i8* %30, i8** %11, align 8
  %31 = icmp ne i8* %30, null
  br label %32

32:                                               ; preds = %29, %24, %21
  %33 = phi i1 [ false, %24 ], [ false, %21 ], [ %31, %29 ]
  br i1 %33, label %34, label %124

34:                                               ; preds = %32
  %35 = load i8*, i8** %11, align 8
  %36 = load i8, i8* %35, align 1
  %37 = icmp ne i8 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %34
  br label %21

39:                                               ; preds = %34
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %41, align 8
  store %struct.TYPE_11__* %42, %struct.TYPE_11__** %9, align 8
  br label %43

43:                                               ; preds = %119, %39
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %45 = icmp ne %struct.TYPE_11__* %44, null
  br i1 %45, label %46, label %123

46:                                               ; preds = %43
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 1
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %48, align 8
  %50 = icmp ne %struct.TYPE_9__* %49, null
  br i1 %50, label %51, label %60

51:                                               ; preds = %46
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 1
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = icmp ne i32 %57, 0
  %59 = xor i1 %58, true
  br label %60

60:                                               ; preds = %51, %46
  %61 = phi i1 [ true, %46 ], [ %59, %51 ]
  %62 = zext i1 %61 to i32
  %63 = call i64 @unlikely(i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %60
  br label %119

66:                                               ; preds = %60
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 1
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %68, align 8
  %70 = icmp ne %struct.TYPE_9__* %69, null
  br i1 %70, label %71, label %110

71:                                               ; preds = %66
  %72 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 1
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i8*, i8** %11, align 8
  %78 = call i64 @simple_hash(i8* %77)
  %79 = icmp eq i64 %76, %78
  br i1 %79, label %80, label %110

80:                                               ; preds = %71
  %81 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %81, i32 0, i32 1
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 4
  %86 = load i8*, i8** %11, align 8
  %87 = call i32 @strcmp(i32 %85, i8* %86)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %110, label %89

89:                                               ; preds = %80
  %90 = load i64, i64* %8, align 8
  %91 = load i64, i64* @RRDCALC_STATUS_RAISED, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %93, label %100

93:                                               ; preds = %89
  %94 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %95 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @RRDCALC_STATUS_WARNING, align 8
  %98 = icmp sge i64 %96, %97
  %99 = zext i1 %98 to i32
  br label %107

100:                                              ; preds = %89
  %101 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %102 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* %8, align 8
  %105 = icmp eq i64 %103, %104
  %106 = zext i1 %105 to i32
  br label %107

107:                                              ; preds = %100, %93
  %108 = phi i32 [ %99, %93 ], [ %106, %100 ]
  %109 = icmp ne i32 %108, 0
  br label %110

110:                                              ; preds = %107, %80, %71, %66
  %111 = phi i1 [ false, %80 ], [ false, %71 ], [ false, %66 ], [ %109, %107 ]
  %112 = zext i1 %111 to i32
  %113 = call i64 @unlikely(i32 %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %118

115:                                              ; preds = %110
  %116 = load i32, i32* %10, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %10, align 4
  br label %118

118:                                              ; preds = %115, %110
  br label %119

119:                                              ; preds = %118, %65
  %120 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %121 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %120, i32 0, i32 2
  %122 = load %struct.TYPE_11__*, %struct.TYPE_11__** %121, align 8
  store %struct.TYPE_11__* %122, %struct.TYPE_11__** %9, align 8
  br label %43

123:                                              ; preds = %43
  br label %21

124:                                              ; preds = %32
  br label %183

125:                                              ; preds = %4
  %126 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %127 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %126, i32 0, i32 0
  %128 = load %struct.TYPE_11__*, %struct.TYPE_11__** %127, align 8
  store %struct.TYPE_11__* %128, %struct.TYPE_11__** %9, align 8
  br label %129

129:                                              ; preds = %178, %125
  %130 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %131 = icmp ne %struct.TYPE_11__* %130, null
  br i1 %131, label %132, label %182

132:                                              ; preds = %129
  %133 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %134 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %133, i32 0, i32 1
  %135 = load %struct.TYPE_9__*, %struct.TYPE_9__** %134, align 8
  %136 = icmp ne %struct.TYPE_9__* %135, null
  br i1 %136, label %137, label %146

137:                                              ; preds = %132
  %138 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %139 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %138, i32 0, i32 1
  %140 = load %struct.TYPE_9__*, %struct.TYPE_9__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %140, i32 0, i32 1
  %142 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = icmp ne i32 %143, 0
  %145 = xor i1 %144, true
  br label %146

146:                                              ; preds = %137, %132
  %147 = phi i1 [ true, %132 ], [ %145, %137 ]
  %148 = zext i1 %147 to i32
  %149 = call i64 @unlikely(i32 %148)
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %152

151:                                              ; preds = %146
  br label %178

152:                                              ; preds = %146
  %153 = load i64, i64* %8, align 8
  %154 = load i64, i64* @RRDCALC_STATUS_RAISED, align 8
  %155 = icmp eq i64 %153, %154
  br i1 %155, label %156, label %163

156:                                              ; preds = %152
  %157 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %158 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %157, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = load i64, i64* @RRDCALC_STATUS_WARNING, align 8
  %161 = icmp sge i64 %159, %160
  %162 = zext i1 %161 to i32
  br label %170

163:                                              ; preds = %152
  %164 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %165 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %164, i32 0, i32 0
  %166 = load i64, i64* %165, align 8
  %167 = load i64, i64* %8, align 8
  %168 = icmp eq i64 %166, %167
  %169 = zext i1 %168 to i32
  br label %170

170:                                              ; preds = %163, %156
  %171 = phi i32 [ %162, %156 ], [ %169, %163 ]
  %172 = call i64 @unlikely(i32 %171)
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %177

174:                                              ; preds = %170
  %175 = load i32, i32* %10, align 4
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* %10, align 4
  br label %177

177:                                              ; preds = %174, %170
  br label %178

178:                                              ; preds = %177, %151
  %179 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %180 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %179, i32 0, i32 2
  %181 = load %struct.TYPE_11__*, %struct.TYPE_11__** %180, align 8
  store %struct.TYPE_11__* %181, %struct.TYPE_11__** %9, align 8
  br label %129

182:                                              ; preds = %129
  br label %183

183:                                              ; preds = %182, %124
  %184 = load i32*, i32** %6, align 8
  %185 = load i32, i32* %10, align 4
  %186 = call i32 @buffer_sprintf(i32* %184, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %185)
  %187 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %188 = call i32 @rrdhost_unlock(%struct.TYPE_10__* %187)
  ret void
}

declare dso_local i32 @rrdhost_rdlock(%struct.TYPE_10__*) #1

declare dso_local i64 @buffer_tostring(i32*) #1

declare dso_local i8* @mystrsep(i8**, i8*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @simple_hash(i8*) #1

declare dso_local i32 @strcmp(i32, i8*) #1

declare dso_local i32 @buffer_sprintf(i32*, i8*, i32) #1

declare dso_local i32 @rrdhost_unlock(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
