; ModuleID = '/home/carl/AnghaBench/netdata/backends/extr_backends.c_backend_calculate_value_from_stored_data.c'
source_filename = "/home/carl/AnghaBench/netdata/backends/extr_backends.c_backend_calculate_value_from_stored_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_15__ = type { i32, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 (%struct.TYPE_15__*)*, i32 (%struct.TYPE_15__*)*, i32 (%struct.rrddim_query_handle*)*, i32 (%struct.rrddim_query_handle*, i32*)*, i32 (%struct.rrddim_query_handle*)*, i32 (%struct.TYPE_15__*, %struct.rrddim_query_handle*, i32, i32)* }
%struct.rrddim_query_handle = type { i32 }

@D_BACKEND = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [97 x i8] c"BACKEND: %s.%s.%s: aligned timeframe %lu to %lu is outside the chart's database range %lu to %lu\00", align 1
@NAN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [69 x i8] c"BACKEND: %s.%s.%s: no values stored in database for range %lu to %lu\00", align 1
@BACKEND_SOURCE_DATA_SUM = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @backend_calculate_value_from_stored_data(%struct.TYPE_13__* %0, %struct.TYPE_15__* %1, i32 %2, i32 %3, i32 %4, i32* %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_13__*, align 8
  %10 = alloca %struct.TYPE_15__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.TYPE_14__*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.rrddim_query_handle, align 4
  %21 = alloca i32, align 4
  %22 = alloca i64, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %9, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32* %5, i32** %14, align 8
  store i32* %6, i32** %15, align 8
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %27 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %26, i32 0, i32 2
  %28 = load %struct.TYPE_14__*, %struct.TYPE_14__** %27, align 8
  store %struct.TYPE_14__* %28, %struct.TYPE_14__** %16, align 8
  %29 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %30 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %31 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %30, i32 0, i32 1
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 0
  %35 = load i32 (%struct.TYPE_15__*)*, i32 (%struct.TYPE_15__*)** %34, align 8
  %36 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %37 = call i32 %35(%struct.TYPE_15__* %36)
  store i32 %37, i32* %17, align 4
  %38 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %39 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %38, i32 0, i32 1
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 1
  %43 = load i32 (%struct.TYPE_15__*)*, i32 (%struct.TYPE_15__*)** %42, align 8
  %44 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %45 = call i32 %43(%struct.TYPE_15__* %44)
  store i32 %45, i32* %18, align 4
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  store i32 %48, i32* %19, align 4
  %49 = load i32, i32* %19, align 4
  %50 = mul nsw i32 %49, 2
  %51 = load i32, i32* %11, align 4
  %52 = sub nsw i32 %51, %50
  store i32 %52, i32* %11, align 4
  %53 = load i32, i32* %19, align 4
  %54 = mul nsw i32 %53, 2
  %55 = load i32, i32* %12, align 4
  %56 = sub nsw i32 %55, %54
  store i32 %56, i32* %12, align 4
  %57 = load i32, i32* %11, align 4
  %58 = load i32, i32* %11, align 4
  %59 = load i32, i32* %19, align 4
  %60 = srem i32 %58, %59
  %61 = sub nsw i32 %57, %60
  store i32 %61, i32* %11, align 4
  %62 = load i32, i32* %12, align 4
  %63 = load i32, i32* %12, align 4
  %64 = load i32, i32* %19, align 4
  %65 = srem i32 %63, %64
  %66 = sub nsw i32 %62, %65
  store i32 %66, i32* %12, align 4
  %67 = load i32, i32* %19, align 4
  %68 = load i32, i32* %12, align 4
  %69 = sub nsw i32 %68, %67
  store i32 %69, i32* %12, align 4
  %70 = load i32, i32* %11, align 4
  %71 = load i32, i32* %12, align 4
  %72 = icmp sgt i32 %70, %71
  %73 = zext i1 %72 to i32
  %74 = call i64 @unlikely(i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %7
  %77 = load i32, i32* %12, align 4
  store i32 %77, i32* %11, align 4
  br label %78

78:                                               ; preds = %76, %7
  %79 = load i32, i32* %11, align 4
  %80 = load i32, i32* %17, align 4
  %81 = icmp slt i32 %79, %80
  %82 = zext i1 %81 to i32
  %83 = call i64 @unlikely(i32 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %78
  %86 = load i32, i32* %17, align 4
  store i32 %86, i32* %11, align 4
  br label %87

87:                                               ; preds = %85, %78
  %88 = load i32, i32* %12, align 4
  %89 = load i32, i32* %18, align 4
  %90 = icmp sgt i32 %88, %89
  %91 = zext i1 %90 to i32
  %92 = call i64 @unlikely(i32 %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %87
  %95 = load i32, i32* %18, align 4
  store i32 %95, i32* %12, align 4
  br label %96

96:                                               ; preds = %94, %87
  %97 = load i32, i32* %12, align 4
  %98 = load i32, i32* %17, align 4
  %99 = icmp slt i32 %97, %98
  br i1 %99, label %104, label %100

100:                                              ; preds = %96
  %101 = load i32, i32* %11, align 4
  %102 = load i32, i32* %18, align 4
  %103 = icmp sgt i32 %101, %102
  br label %104

104:                                              ; preds = %100, %96
  %105 = phi i1 [ true, %96 ], [ %103, %100 ]
  %106 = zext i1 %105 to i32
  %107 = call i64 @unlikely(i32 %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %130

109:                                              ; preds = %104
  %110 = load i32, i32* @D_BACKEND, align 4
  %111 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %112 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %115 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %118 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = load i32, i32* %11, align 4
  %121 = sext i32 %120 to i64
  %122 = load i32, i32* %12, align 4
  %123 = sext i32 %122 to i64
  %124 = load i32, i32* %17, align 4
  %125 = sext i32 %124 to i64
  %126 = load i32, i32* %18, align 4
  %127 = sext i32 %126 to i64
  %128 = call i32 (i32, i8*, i32, i32, i32, i64, i64, ...) @debug(i32 %110, i8* getelementptr inbounds ([97 x i8], [97 x i8]* @.str, i64 0, i64 0), i32 %113, i32 %116, i32 %119, i64 %121, i64 %123, i64 %125, i64 %127)
  %129 = load i32, i32* @NAN, align 4
  store i32 %129, i32* %8, align 4
  br label %225

130:                                              ; preds = %104
  %131 = load i32, i32* %11, align 4
  %132 = load i32*, i32** %14, align 8
  store i32 %131, i32* %132, align 4
  %133 = load i32, i32* %12, align 4
  %134 = load i32*, i32** %15, align 8
  store i32 %133, i32* %134, align 4
  store i64 0, i64* %22, align 8
  store i32 0, i32* %23, align 4
  %135 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %136 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %135, i32 0, i32 1
  %137 = load %struct.TYPE_12__*, %struct.TYPE_12__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %138, i32 0, i32 5
  %140 = load i32 (%struct.TYPE_15__*, %struct.rrddim_query_handle*, i32, i32)*, i32 (%struct.TYPE_15__*, %struct.rrddim_query_handle*, i32, i32)** %139, align 8
  %141 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %142 = load i32, i32* %11, align 4
  %143 = load i32, i32* %12, align 4
  %144 = call i32 %140(%struct.TYPE_15__* %141, %struct.rrddim_query_handle* %20, i32 %142, i32 %143)
  br label %145

145:                                              ; preds = %171, %170, %130
  %146 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %147 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %146, i32 0, i32 1
  %148 = load %struct.TYPE_12__*, %struct.TYPE_12__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %149, i32 0, i32 4
  %151 = load i32 (%struct.rrddim_query_handle*)*, i32 (%struct.rrddim_query_handle*)** %150, align 8
  %152 = call i32 %151(%struct.rrddim_query_handle* %20)
  %153 = icmp ne i32 %152, 0
  %154 = xor i1 %153, true
  br i1 %154, label %155, label %179

155:                                              ; preds = %145
  %156 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %157 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %156, i32 0, i32 1
  %158 = load %struct.TYPE_12__*, %struct.TYPE_12__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %159, i32 0, i32 3
  %161 = load i32 (%struct.rrddim_query_handle*, i32*)*, i32 (%struct.rrddim_query_handle*, i32*)** %160, align 8
  %162 = call i32 %161(%struct.rrddim_query_handle* %20, i32* %24)
  store i32 %162, i32* %21, align 4
  %163 = load i32, i32* %21, align 4
  %164 = call i32 @does_storage_number_exist(i32 %163)
  %165 = icmp ne i32 %164, 0
  %166 = xor i1 %165, true
  %167 = zext i1 %166 to i32
  %168 = call i64 @unlikely(i32 %167)
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %171

170:                                              ; preds = %155
  br label %145

171:                                              ; preds = %155
  %172 = load i32, i32* %21, align 4
  %173 = call i32 @unpack_storage_number(i32 %172)
  store i32 %173, i32* %25, align 4
  %174 = load i32, i32* %25, align 4
  %175 = load i32, i32* %23, align 4
  %176 = add nsw i32 %175, %174
  store i32 %176, i32* %23, align 4
  %177 = load i64, i64* %22, align 8
  %178 = add i64 %177, 1
  store i64 %178, i64* %22, align 8
  br label %145

179:                                              ; preds = %145
  %180 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %181 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %180, i32 0, i32 1
  %182 = load %struct.TYPE_12__*, %struct.TYPE_12__** %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %182, i32 0, i32 0
  %184 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %183, i32 0, i32 2
  %185 = load i32 (%struct.rrddim_query_handle*)*, i32 (%struct.rrddim_query_handle*)** %184, align 8
  %186 = call i32 %185(%struct.rrddim_query_handle* %20)
  %187 = load i64, i64* %22, align 8
  %188 = icmp ne i64 %187, 0
  %189 = xor i1 %188, true
  %190 = zext i1 %189 to i32
  %191 = call i64 @unlikely(i32 %190)
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %193, label %210

193:                                              ; preds = %179
  %194 = load i32, i32* @D_BACKEND, align 4
  %195 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %196 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 4
  %198 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %199 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %198, i32 0, i32 1
  %200 = load i32, i32* %199, align 4
  %201 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %202 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 8
  %204 = load i32, i32* %11, align 4
  %205 = sext i32 %204 to i64
  %206 = load i32, i32* %12, align 4
  %207 = sext i32 %206 to i64
  %208 = call i32 (i32, i8*, i32, i32, i32, i64, i64, ...) @debug(i32 %194, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.1, i64 0, i64 0), i32 %197, i32 %200, i32 %203, i64 %205, i64 %207)
  %209 = load i32, i32* @NAN, align 4
  store i32 %209, i32* %8, align 4
  br label %225

210:                                              ; preds = %179
  %211 = load i32, i32* %13, align 4
  %212 = call i64 @BACKEND_OPTIONS_DATA_SOURCE(i32 %211)
  %213 = load i64, i64* @BACKEND_SOURCE_DATA_SUM, align 8
  %214 = icmp eq i64 %212, %213
  %215 = zext i1 %214 to i32
  %216 = call i64 @unlikely(i32 %215)
  %217 = icmp ne i64 %216, 0
  br i1 %217, label %218, label %220

218:                                              ; preds = %210
  %219 = load i32, i32* %23, align 4
  store i32 %219, i32* %8, align 4
  br label %225

220:                                              ; preds = %210
  %221 = load i32, i32* %23, align 4
  %222 = load i64, i64* %22, align 8
  %223 = trunc i64 %222 to i32
  %224 = sdiv i32 %221, %223
  store i32 %224, i32* %8, align 4
  br label %225

225:                                              ; preds = %220, %218, %193, %109
  %226 = load i32, i32* %8, align 4
  ret i32 %226
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @debug(i32, i8*, i32, i32, i32, i64, i64, ...) #1

declare dso_local i32 @does_storage_number_exist(i32) #1

declare dso_local i32 @unpack_storage_number(i32) #1

declare dso_local i64 @BACKEND_OPTIONS_DATA_SOURCE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
