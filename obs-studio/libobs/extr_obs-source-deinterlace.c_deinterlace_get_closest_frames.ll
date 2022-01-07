; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-source-deinterlace.c_deinterlace_get_closest_frames.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-source-deinterlace.c_deinterlace_get_closest_frames.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_11__ = type { i32, i32, i32, %struct.TYPE_9__*, i8*, %struct.TYPE_9__*, %struct.TYPE_13__, i64 }
%struct.TYPE_9__ = type { i32, i64 }
%struct.TYPE_13__ = type { %struct.TYPE_9__**, i32 }
%struct.video_output_info = type { i64, i64 }

@TWOX_TOLERANCE = common dso_local global i32 0, align 4
@TS_JUMP_THRESHOLD = common dso_local global i32 0, align 4
@obs = common dso_local global %struct.TYPE_12__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_11__*, i32)* @deinterlace_get_closest_frames to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @deinterlace_get_closest_frames(%struct.TYPE_11__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.video_output_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 7
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %49

15:                                               ; preds = %2
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %49

20:                                               ; preds = %15
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = add nsw i32 %23, %26
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 4
  %30 = load i8*, i8** %29, align 8
  %31 = ptrtoint i8* %30 to i32
  %32 = mul nsw i32 %31, 2
  %33 = add nsw i32 %27, %32
  %34 = load i32, i32* @TWOX_TOLERANCE, align 4
  %35 = sub nsw i32 %33, %34
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* %7, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %48

39:                                               ; preds = %20
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* %4, align 4
  %42 = sub nsw i32 %40, %41
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* @TS_JUMP_THRESHOLD, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %39
  br label %213

47:                                               ; preds = %39
  br label %48

48:                                               ; preds = %47, %20
  br label %49

49:                                               ; preds = %48, %15, %2
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 6
  %52 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %49
  br label %213

56:                                               ; preds = %49
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** @obs, align 8
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call %struct.video_output_info* @video_output_get_info(i32 %60)
  store %struct.video_output_info* %61, %struct.video_output_info** %5, align 8
  %62 = load %struct.video_output_info*, %struct.video_output_info** %5, align 8
  %63 = getelementptr inbounds %struct.video_output_info, %struct.video_output_info* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = trunc i64 %64 to i32
  %66 = sext i32 %65 to i64
  %67 = mul i64 %66, 500000000
  %68 = load %struct.video_output_info*, %struct.video_output_info** %5, align 8
  %69 = getelementptr inbounds %struct.video_output_info, %struct.video_output_info* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = trunc i64 %70 to i32
  %72 = sext i32 %71 to i64
  %73 = udiv i64 %67, %72
  %74 = trunc i64 %73 to i32
  store i32 %74, i32* %6, align 4
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %76 = call i64 @first_frame(%struct.TYPE_11__* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %83, label %78

78:                                               ; preds = %56
  %79 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %80 = load i32, i32* %4, align 4
  %81 = call i64 @ready_deinterlace_frames(%struct.TYPE_11__* %79, i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %213

83:                                               ; preds = %78, %56
  %84 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %84, i32 0, i32 5
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %85, align 8
  %86 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %86, i32 0, i32 6
  %88 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %87, i32 0, i32 0
  %89 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %89, i64 0
  %91 = load %struct.TYPE_9__*, %struct.TYPE_9__** %90, align 8
  %92 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %93 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %92, i32 0, i32 3
  store %struct.TYPE_9__* %91, %struct.TYPE_9__** %93, align 8
  %94 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %95 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %94, i32 0, i32 6
  %96 = bitcast %struct.TYPE_13__* %95 to { %struct.TYPE_9__**, i32 }*
  %97 = getelementptr inbounds { %struct.TYPE_9__**, i32 }, { %struct.TYPE_9__**, i32 }* %96, i32 0, i32 0
  %98 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %97, align 8
  %99 = getelementptr inbounds { %struct.TYPE_9__**, i32 }, { %struct.TYPE_9__**, i32 }* %96, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  %101 = call i32 @da_erase(%struct.TYPE_9__** %98, i32 %100, i32 0)
  %102 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %103 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %102, i32 0, i32 3
  %104 = load %struct.TYPE_9__*, %struct.TYPE_9__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %146

108:                                              ; preds = %83
  %109 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %110 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %109, i32 0, i32 3
  %111 = load %struct.TYPE_9__*, %struct.TYPE_9__** %110, align 8
  %112 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %113 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %112, i32 0, i32 5
  store %struct.TYPE_9__* %111, %struct.TYPE_9__** %113, align 8
  %114 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %115 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %114, i32 0, i32 6
  %116 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %115, i32 0, i32 0
  %117 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %117, i64 0
  %119 = load %struct.TYPE_9__*, %struct.TYPE_9__** %118, align 8
  %120 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %121 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %120, i32 0, i32 3
  store %struct.TYPE_9__* %119, %struct.TYPE_9__** %121, align 8
  %122 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %123 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %122, i32 0, i32 6
  %124 = bitcast %struct.TYPE_13__* %123 to { %struct.TYPE_9__**, i32 }*
  %125 = getelementptr inbounds { %struct.TYPE_9__**, i32 }, { %struct.TYPE_9__**, i32 }* %124, i32 0, i32 0
  %126 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %125, align 8
  %127 = getelementptr inbounds { %struct.TYPE_9__**, i32 }, { %struct.TYPE_9__**, i32 }* %124, i32 0, i32 1
  %128 = load i32, i32* %127, align 8
  %129 = call i32 @da_erase(%struct.TYPE_9__** %126, i32 %128, i32 0)
  %130 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %131 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %130, i32 0, i32 3
  %132 = load %struct.TYPE_9__*, %struct.TYPE_9__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %136 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %135, i32 0, i32 5
  %137 = load %struct.TYPE_9__*, %struct.TYPE_9__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = sub nsw i32 %134, %139
  %141 = sdiv i32 %140, 2
  %142 = sext i32 %141 to i64
  %143 = inttoptr i64 %142 to i8*
  %144 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %145 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %144, i32 0, i32 4
  store i8* %143, i8** %145, align 8
  br label %161

146:                                              ; preds = %83
  %147 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %148 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %147, i32 0, i32 3
  %149 = load %struct.TYPE_9__*, %struct.TYPE_9__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %153 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = sub nsw i32 %151, %154
  %156 = sdiv i32 %155, 2
  %157 = sext i32 %156 to i64
  %158 = inttoptr i64 %157 to i8*
  %159 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %160 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %159, i32 0, i32 4
  store i8* %158, i8** %160, align 8
  br label %161

161:                                              ; preds = %146, %108
  %162 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %163 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %162, i32 0, i32 2
  %164 = load i32, i32* %163, align 8
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %174, label %166

166:                                              ; preds = %161
  %167 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %168 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %167, i32 0, i32 3
  %169 = load %struct.TYPE_9__*, %struct.TYPE_9__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %173 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %172, i32 0, i32 2
  store i32 %171, i32* %173, align 8
  br label %174

174:                                              ; preds = %166, %161
  %175 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %176 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %175, i32 0, i32 3
  %177 = load %struct.TYPE_9__*, %struct.TYPE_9__** %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  %180 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %181 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %180, i32 0, i32 1
  store i32 %179, i32* %181, align 4
  %182 = load %struct.TYPE_12__*, %struct.TYPE_12__** @obs, align 8
  %183 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %182, i32 0, i32 0
  %184 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 4
  %186 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %187 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 4
  %189 = sub nsw i32 %185, %188
  store i32 %189, i32* %9, align 4
  %190 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %191 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 8
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %198, label %194

194:                                              ; preds = %174
  %195 = load i32, i32* %9, align 4
  %196 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %197 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %196, i32 0, i32 0
  store i32 %195, i32* %197, align 8
  br label %212

198:                                              ; preds = %174
  %199 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %200 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 8
  %202 = load i32, i32* %9, align 4
  %203 = call i32 @uint64_diff(i32 %201, i32 %202)
  store i32 %203, i32* %10, align 4
  %204 = load i32, i32* %10, align 4
  %205 = load i32, i32* %6, align 4
  %206 = icmp sgt i32 %204, %205
  br i1 %206, label %207, label %211

207:                                              ; preds = %198
  %208 = load i32, i32* %9, align 4
  %209 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %210 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %209, i32 0, i32 0
  store i32 %208, i32* %210, align 8
  br label %211

211:                                              ; preds = %207, %198
  br label %212

212:                                              ; preds = %211, %194
  br label %213

213:                                              ; preds = %46, %55, %212, %78
  ret void
}

declare dso_local %struct.video_output_info* @video_output_get_info(i32) #1

declare dso_local i64 @first_frame(%struct.TYPE_11__*) #1

declare dso_local i64 @ready_deinterlace_frames(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @da_erase(%struct.TYPE_9__**, i32, i32) #1

declare dso_local i32 @uint64_diff(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
