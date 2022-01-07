; ModuleID = '/home/carl/AnghaBench/mpv/video/out/extr_drm_common.c_setup_crtc.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/extr_drm_common.c_setup_crtc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kms = type { i64, %struct.TYPE_9__*, %struct.TYPE_7__*, i32 }
%struct.TYPE_9__ = type { i64, i64, i32 }
%struct.TYPE_7__ = type { i64, i64, i32, i32* }
%struct.TYPE_8__ = type { i32, i32, i64*, i32* }

@.str = private unnamed_addr constant [35 x i8] c"Cannot retrieve encoder %u:%u: %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"Connector %u currently connected to encoder %u\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"Connector %u has no suitable CRTC\0A\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"Selected Encoder %u with CRTC %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kms*, %struct.TYPE_8__*)* @setup_crtc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setup_crtc(%struct.kms* %0, %struct.TYPE_8__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kms*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca i32, align 4
  store %struct.kms* %0, %struct.kms** %4, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %5, align 8
  store i32 0, i32* %6, align 4
  br label %11

11:                                               ; preds = %83, %2
  %12 = load i32, i32* %6, align 4
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp ult i32 %12, %15
  br i1 %16, label %17, label %86

17:                                               ; preds = %11
  %18 = load %struct.kms*, %struct.kms** %4, align 8
  %19 = getelementptr inbounds %struct.kms, %struct.kms* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 3
  %23 = load i32*, i32** %22, align 8
  %24 = load i32, i32* %6, align 4
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = call %struct.TYPE_9__* @drmModeGetEncoder(i32 %20, i32 %27)
  store %struct.TYPE_9__* %28, %struct.TYPE_9__** %7, align 8
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %30 = icmp ne %struct.TYPE_9__* %29, null
  br i1 %30, label %44, label %31

31:                                               ; preds = %17
  %32 = load %struct.kms*, %struct.kms** %4, align 8
  %33 = load i32, i32* %6, align 4
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 3
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* %6, align 4
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @errno, align 4
  %42 = call i32 @mp_strerror(i32 %41)
  %43 = call i32 @MP_WARN(%struct.kms* %32, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %33, i32 %40, i32 %42)
  br label %83

44:                                               ; preds = %17
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.kms*, %struct.kms** %4, align 8
  %49 = getelementptr inbounds %struct.kms, %struct.kms* %48, i32 0, i32 2
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp eq i64 %47, %52
  br i1 %53, label %54, label %80

54:                                               ; preds = %44
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %80

59:                                               ; preds = %54
  %60 = load %struct.kms*, %struct.kms** %4, align 8
  %61 = load %struct.kms*, %struct.kms** %4, align 8
  %62 = getelementptr inbounds %struct.kms, %struct.kms* %61, i32 0, i32 2
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.kms*, %struct.kms** %4, align 8
  %67 = getelementptr inbounds %struct.kms, %struct.kms* %66, i32 0, i32 2
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = call i32 @MP_VERBOSE(%struct.kms* %60, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i64 %65, i64 %70)
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %73 = load %struct.kms*, %struct.kms** %4, align 8
  %74 = getelementptr inbounds %struct.kms, %struct.kms* %73, i32 0, i32 1
  store %struct.TYPE_9__* %72, %struct.TYPE_9__** %74, align 8
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.kms*, %struct.kms** %4, align 8
  %79 = getelementptr inbounds %struct.kms, %struct.kms* %78, i32 0, i32 0
  store i64 %77, i64* %79, align 8
  br label %172

80:                                               ; preds = %54, %44
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %82 = call i32 @drmModeFreeEncoder(%struct.TYPE_9__* %81)
  br label %83

83:                                               ; preds = %80, %31
  %84 = load i32, i32* %6, align 4
  %85 = add i32 %84, 1
  store i32 %85, i32* %6, align 4
  br label %11

86:                                               ; preds = %11
  store i32 0, i32* %8, align 4
  br label %87

87:                                               ; preds = %161, %86
  %88 = load i32, i32* %8, align 4
  %89 = load %struct.kms*, %struct.kms** %4, align 8
  %90 = getelementptr inbounds %struct.kms, %struct.kms* %89, i32 0, i32 2
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = icmp ult i32 %88, %93
  br i1 %94, label %95, label %164

95:                                               ; preds = %87
  %96 = load %struct.kms*, %struct.kms** %4, align 8
  %97 = getelementptr inbounds %struct.kms, %struct.kms* %96, i32 0, i32 3
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.kms*, %struct.kms** %4, align 8
  %100 = getelementptr inbounds %struct.kms, %struct.kms* %99, i32 0, i32 2
  %101 = load %struct.TYPE_7__*, %struct.TYPE_7__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 3
  %103 = load i32*, i32** %102, align 8
  %104 = load i32, i32* %8, align 4
  %105 = zext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %103, i64 %105
  %107 = load i32, i32* %106, align 4
  %108 = call %struct.TYPE_9__* @drmModeGetEncoder(i32 %98, i32 %107)
  store %struct.TYPE_9__* %108, %struct.TYPE_9__** %9, align 8
  %109 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %110 = icmp ne %struct.TYPE_9__* %109, null
  br i1 %110, label %126, label %111

111:                                              ; preds = %95
  %112 = load %struct.kms*, %struct.kms** %4, align 8
  %113 = load i32, i32* %8, align 4
  %114 = load %struct.kms*, %struct.kms** %4, align 8
  %115 = getelementptr inbounds %struct.kms, %struct.kms* %114, i32 0, i32 2
  %116 = load %struct.TYPE_7__*, %struct.TYPE_7__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i32 0, i32 3
  %118 = load i32*, i32** %117, align 8
  %119 = load i32, i32* %8, align 4
  %120 = zext i32 %119 to i64
  %121 = getelementptr inbounds i32, i32* %118, i64 %120
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* @errno, align 4
  %124 = call i32 @mp_strerror(i32 %123)
  %125 = call i32 @MP_WARN(%struct.kms* %112, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %113, i32 %122, i32 %124)
  br label %161

126:                                              ; preds = %95
  store i32 0, i32* %10, align 4
  br label %127

127:                                              ; preds = %155, %126
  %128 = load i32, i32* %10, align 4
  %129 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %130 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = icmp ult i32 %128, %131
  br i1 %132, label %133, label %158

133:                                              ; preds = %127
  %134 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %135 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 8
  %137 = load i32, i32* %10, align 4
  %138 = shl i32 1, %137
  %139 = and i32 %136, %138
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %142, label %141

141:                                              ; preds = %133
  br label %155

142:                                              ; preds = %133
  %143 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %144 = load %struct.kms*, %struct.kms** %4, align 8
  %145 = getelementptr inbounds %struct.kms, %struct.kms* %144, i32 0, i32 1
  store %struct.TYPE_9__* %143, %struct.TYPE_9__** %145, align 8
  %146 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %147 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %146, i32 0, i32 2
  %148 = load i64*, i64** %147, align 8
  %149 = load i32, i32* %10, align 4
  %150 = zext i32 %149 to i64
  %151 = getelementptr inbounds i64, i64* %148, i64 %150
  %152 = load i64, i64* %151, align 8
  %153 = load %struct.kms*, %struct.kms** %4, align 8
  %154 = getelementptr inbounds %struct.kms, %struct.kms* %153, i32 0, i32 0
  store i64 %152, i64* %154, align 8
  br label %172

155:                                              ; preds = %141
  %156 = load i32, i32* %10, align 4
  %157 = add i32 %156, 1
  store i32 %157, i32* %10, align 4
  br label %127

158:                                              ; preds = %127
  %159 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %160 = call i32 @drmModeFreeEncoder(%struct.TYPE_9__* %159)
  br label %161

161:                                              ; preds = %158, %111
  %162 = load i32, i32* %8, align 4
  %163 = add i32 %162, 1
  store i32 %163, i32* %8, align 4
  br label %87

164:                                              ; preds = %87
  %165 = load %struct.kms*, %struct.kms** %4, align 8
  %166 = load %struct.kms*, %struct.kms** %4, align 8
  %167 = getelementptr inbounds %struct.kms, %struct.kms* %166, i32 0, i32 2
  %168 = load %struct.TYPE_7__*, %struct.TYPE_7__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %168, i32 0, i32 1
  %170 = load i64, i64* %169, align 8
  %171 = call i32 @MP_ERR(%struct.kms* %165, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i64 %170)
  store i32 0, i32* %3, align 4
  br label %183

172:                                              ; preds = %142, %59
  %173 = load %struct.kms*, %struct.kms** %4, align 8
  %174 = load %struct.kms*, %struct.kms** %4, align 8
  %175 = getelementptr inbounds %struct.kms, %struct.kms* %174, i32 0, i32 1
  %176 = load %struct.TYPE_9__*, %struct.TYPE_9__** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %176, i32 0, i32 0
  %178 = load i64, i64* %177, align 8
  %179 = load %struct.kms*, %struct.kms** %4, align 8
  %180 = getelementptr inbounds %struct.kms, %struct.kms* %179, i32 0, i32 0
  %181 = load i64, i64* %180, align 8
  %182 = call i32 @MP_VERBOSE(%struct.kms* %173, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i64 %178, i64 %181)
  store i32 1, i32* %3, align 4
  br label %183

183:                                              ; preds = %172, %164
  %184 = load i32, i32* %3, align 4
  ret i32 %184
}

declare dso_local %struct.TYPE_9__* @drmModeGetEncoder(i32, i32) #1

declare dso_local i32 @MP_WARN(%struct.kms*, i8*, i32, i32, i32) #1

declare dso_local i32 @mp_strerror(i32) #1

declare dso_local i32 @MP_VERBOSE(%struct.kms*, i8*, i64, i64) #1

declare dso_local i32 @drmModeFreeEncoder(%struct.TYPE_9__*) #1

declare dso_local i32 @MP_ERR(%struct.kms*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
