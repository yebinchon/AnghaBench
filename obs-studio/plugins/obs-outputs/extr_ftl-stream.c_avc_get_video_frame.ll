; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/obs-outputs/extr_ftl-stream.c_avc_get_video_frame.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/obs-outputs/extr_ftl-stream.c_avc_get_video_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ftl_stream = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i8*, i32, i32 }
%struct.encoder_packet = type { i64, i8* }

@.str = private unnamed_addr constant [46 x i8] c"ERROR: cannot continue, nalu buffers are full\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"ERROR: got len of %d but packet only has %d left\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ftl_stream*, %struct.encoder_packet*, i32)* @avc_get_video_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @avc_get_video_frame(%struct.ftl_stream* %0, %struct.encoder_packet* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ftl_stream*, align 8
  %6 = alloca %struct.encoder_packet*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_4__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  store %struct.ftl_stream* %0, %struct.ftl_stream** %5, align 8
  store %struct.encoder_packet* %1, %struct.encoder_packet** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %16 = load %struct.encoder_packet*, %struct.encoder_packet** %6, align 8
  %17 = getelementptr inbounds %struct.encoder_packet, %struct.encoder_packet* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = trunc i64 %18 to i32
  store i32 %19, i32* %9, align 4
  %20 = load %struct.encoder_packet*, %struct.encoder_packet** %6, align 8
  %21 = getelementptr inbounds %struct.encoder_packet, %struct.encoder_packet* %20, i32 0, i32 1
  %22 = load i8*, i8** %21, align 8
  store i8* %22, i8** %11, align 8
  br label %23

23:                                               ; preds = %166, %3
  %24 = load i32, i32* %8, align 4
  %25 = sext i32 %24 to i64
  %26 = load %struct.encoder_packet*, %struct.encoder_packet** %6, align 8
  %27 = getelementptr inbounds %struct.encoder_packet, %struct.encoder_packet* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ult i64 %25, %28
  br i1 %29, label %30, label %171

30:                                               ; preds = %23
  store i64 0, i64* %12, align 8
  %31 = load %struct.ftl_stream*, %struct.ftl_stream** %5, align 8
  %32 = getelementptr inbounds %struct.ftl_stream, %struct.ftl_stream* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* %12, align 8
  %36 = icmp uge i64 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %30
  %38 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %188

39:                                               ; preds = %30
  %40 = load %struct.ftl_stream*, %struct.ftl_stream** %5, align 8
  %41 = getelementptr inbounds %struct.ftl_stream, %struct.ftl_stream* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 1
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = load %struct.ftl_stream*, %struct.ftl_stream** %5, align 8
  %45 = getelementptr inbounds %struct.ftl_stream, %struct.ftl_stream* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i64 %47
  store %struct.TYPE_4__* %48, %struct.TYPE_4__** %10, align 8
  %49 = load i32, i32* %7, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %79

51:                                               ; preds = %39
  %52 = load i32, i32* %8, align 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %51
  %55 = load i8*, i8** %11, align 8
  %56 = getelementptr inbounds i8, i8* %55, i64 6
  store i8* %56, i8** %11, align 8
  %57 = load i32, i32* %8, align 4
  %58 = add nsw i32 %57, 6
  store i32 %58, i32* %8, align 4
  br label %64

59:                                               ; preds = %51
  %60 = load i8*, i8** %11, align 8
  %61 = getelementptr inbounds i8, i8* %60, i64 1
  store i8* %61, i8** %11, align 8
  %62 = load i32, i32* %8, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %8, align 4
  br label %64

64:                                               ; preds = %59, %54
  %65 = load i8*, i8** %11, align 8
  %66 = getelementptr inbounds i8, i8* %65, i64 0
  %67 = load i8, i8* %66, align 1
  %68 = zext i8 %67 to i32
  %69 = shl i32 %68, 8
  %70 = load i8*, i8** %11, align 8
  %71 = getelementptr inbounds i8, i8* %70, i64 1
  %72 = load i8, i8* %71, align 1
  %73 = zext i8 %72 to i32
  %74 = or i32 %69, %73
  store i32 %74, i32* %9, align 4
  %75 = load i8*, i8** %11, align 8
  %76 = getelementptr inbounds i8, i8* %75, i64 2
  store i8* %76, i8** %11, align 8
  %77 = load i32, i32* %8, align 4
  %78 = add nsw i32 %77, 2
  store i32 %78, i32* %8, align 4
  br label %126

79:                                               ; preds = %39
  %80 = load i8*, i8** %11, align 8
  %81 = getelementptr inbounds i8, i8* %80, i64 0
  %82 = load i8, i8* %81, align 1
  %83 = zext i8 %82 to i32
  %84 = shl i32 %83, 24
  %85 = load i8*, i8** %11, align 8
  %86 = getelementptr inbounds i8, i8* %85, i64 1
  %87 = load i8, i8* %86, align 1
  %88 = zext i8 %87 to i32
  %89 = shl i32 %88, 16
  %90 = or i32 %84, %89
  %91 = load i8*, i8** %11, align 8
  %92 = getelementptr inbounds i8, i8* %91, i64 2
  %93 = load i8, i8* %92, align 1
  %94 = zext i8 %93 to i32
  %95 = shl i32 %94, 8
  %96 = or i32 %90, %95
  %97 = load i8*, i8** %11, align 8
  %98 = getelementptr inbounds i8, i8* %97, i64 3
  %99 = load i8, i8* %98, align 1
  %100 = zext i8 %99 to i32
  %101 = or i32 %96, %100
  store i32 %101, i32* %9, align 4
  %102 = load i32, i32* %9, align 4
  %103 = sext i32 %102 to i64
  %104 = load %struct.encoder_packet*, %struct.encoder_packet** %6, align 8
  %105 = getelementptr inbounds %struct.encoder_packet, %struct.encoder_packet* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = load i32, i32* %8, align 4
  %108 = sext i32 %107 to i64
  %109 = sub i64 %106, %108
  %110 = icmp ugt i64 %103, %109
  br i1 %110, label %111, label %121

111:                                              ; preds = %79
  %112 = load i32, i32* %9, align 4
  %113 = load %struct.encoder_packet*, %struct.encoder_packet** %6, align 8
  %114 = getelementptr inbounds %struct.encoder_packet, %struct.encoder_packet* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = load i32, i32* %8, align 4
  %117 = sext i32 %116 to i64
  %118 = sub i64 %115, %117
  %119 = trunc i64 %118 to i32
  %120 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i32 %112, i32 %119)
  br label %121

121:                                              ; preds = %111, %79
  %122 = load i32, i32* %8, align 4
  %123 = add nsw i32 %122, 4
  store i32 %123, i32* %8, align 4
  %124 = load i8*, i8** %11, align 8
  %125 = getelementptr inbounds i8, i8* %124, i64 4
  store i8* %125, i8** %11, align 8
  br label %126

126:                                              ; preds = %121, %64
  %127 = load i32, i32* %9, align 4
  %128 = load i32, i32* %8, align 4
  %129 = add nsw i32 %128, %127
  store i32 %129, i32* %8, align 4
  %130 = load i8*, i8** %11, align 8
  %131 = getelementptr inbounds i8, i8* %130, i64 0
  %132 = load i8, i8* %131, align 1
  %133 = zext i8 %132 to i32
  %134 = and i32 %133, 31
  store i32 %134, i32* %13, align 4
  %135 = load i8*, i8** %11, align 8
  %136 = getelementptr inbounds i8, i8* %135, i64 0
  %137 = load i8, i8* %136, align 1
  %138 = zext i8 %137 to i32
  %139 = ashr i32 %138, 5
  %140 = and i32 %139, 3
  store i32 %140, i32* %14, align 4
  %141 = load i32, i32* %13, align 4
  %142 = icmp ne i32 %141, 12
  br i1 %142, label %143, label %149

143:                                              ; preds = %126
  %144 = load i32, i32* %13, align 4
  %145 = icmp ne i32 %144, 6
  br i1 %145, label %146, label %149

146:                                              ; preds = %143
  %147 = load i32, i32* %13, align 4
  %148 = icmp ne i32 %147, 9
  br i1 %148, label %152, label %149

149:                                              ; preds = %146, %143, %126
  %150 = load i32, i32* %14, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %166

152:                                              ; preds = %149, %146
  %153 = load i8*, i8** %11, align 8
  %154 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %155 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %154, i32 0, i32 0
  store i8* %153, i8** %155, align 8
  %156 = load i32, i32* %9, align 4
  %157 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %158 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %157, i32 0, i32 1
  store i32 %156, i32* %158, align 8
  %159 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %160 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %159, i32 0, i32 2
  store i32 0, i32* %160, align 4
  %161 = load %struct.ftl_stream*, %struct.ftl_stream** %5, align 8
  %162 = getelementptr inbounds %struct.ftl_stream, %struct.ftl_stream* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = add i64 %164, 1
  store i64 %165, i64* %163, align 8
  br label %166

166:                                              ; preds = %152, %149
  %167 = load i32, i32* %9, align 4
  %168 = load i8*, i8** %11, align 8
  %169 = sext i32 %167 to i64
  %170 = getelementptr inbounds i8, i8* %168, i64 %169
  store i8* %170, i8** %11, align 8
  br label %23

171:                                              ; preds = %23
  %172 = load i32, i32* %7, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %187, label %174

174:                                              ; preds = %171
  %175 = load %struct.ftl_stream*, %struct.ftl_stream** %5, align 8
  %176 = getelementptr inbounds %struct.ftl_stream, %struct.ftl_stream* %175, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %176, i32 0, i32 0
  %178 = load i64, i64* %177, align 8
  %179 = sub i64 %178, 1
  store i64 %179, i64* %15, align 8
  %180 = load %struct.ftl_stream*, %struct.ftl_stream** %5, align 8
  %181 = getelementptr inbounds %struct.ftl_stream, %struct.ftl_stream* %180, i32 0, i32 0
  %182 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %181, i32 0, i32 1
  %183 = load %struct.TYPE_4__*, %struct.TYPE_4__** %182, align 8
  %184 = load i64, i64* %15, align 8
  %185 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %183, i64 %184
  %186 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %185, i32 0, i32 2
  store i32 1, i32* %186, align 4
  br label %187

187:                                              ; preds = %174, %171
  store i32 0, i32* %4, align 4
  br label %188

188:                                              ; preds = %187, %37
  %189 = load i32, i32* %4, align 4
  ret i32 %189
}

declare dso_local i32 @warn(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
