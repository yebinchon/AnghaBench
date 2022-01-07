; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/win-capture/extr_game-capture.c_game_capture_update.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/win-capture/extr_game-capture.c_game_capture_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.game_capture = type { i32, i32, i32, i32, i32, %struct.game_capture_config, i32, i32, i32, i32 }
%struct.game_capture_config = type { i64, i64, i64, i32, i32, i32, i32, i32, i64 }

@SETTING_CAPTURE_WINDOW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"error acquiring, scale is bad\00", align 1
@CAPTURE_MODE_HOTKEY = common dso_local global i64 0, align 8
@DEFAULT_RETRY_INTERVAL = common dso_local global i32 0, align 4
@CAPTURE_MODE_WINDOW = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32*)* @game_capture_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @game_capture_update(i8* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.game_capture*, align 8
  %6 = alloca %struct.game_capture_config, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i32* %1, i32** %4, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = bitcast i8* %9 to %struct.game_capture*
  store %struct.game_capture* %10, %struct.game_capture** %5, align 8
  store i32 0, i32* %7, align 4
  %11 = load i32*, i32** %4, align 8
  %12 = load i32, i32* @SETTING_CAPTURE_WINDOW, align 4
  %13 = call i8* @obs_data_get_string(i32* %11, i32 %12)
  store i8* %13, i8** %8, align 8
  %14 = load i32*, i32** %4, align 8
  %15 = load i8*, i8** %8, align 8
  %16 = call i32 @get_config(%struct.game_capture_config* %6, i32* %14, i8* %15)
  %17 = load %struct.game_capture*, %struct.game_capture** %5, align 8
  %18 = getelementptr inbounds %struct.game_capture, %struct.game_capture* %17, i32 0, i32 5
  %19 = call i32 @capture_needs_reset(%struct.game_capture_config* %6, %struct.game_capture_config* %18)
  store i32 %19, i32* %7, align 4
  %20 = getelementptr inbounds %struct.game_capture_config, %struct.game_capture_config* %6, i32 0, i32 8
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %35

23:                                               ; preds = %2
  %24 = getelementptr inbounds %struct.game_capture_config, %struct.game_capture_config* %6, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.game_capture_config, %struct.game_capture_config* %6, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %27, %23
  %32 = load %struct.game_capture*, %struct.game_capture** %5, align 8
  %33 = getelementptr inbounds %struct.game_capture, %struct.game_capture* %32, i32 0, i32 0
  store i32 1, i32* %33, align 8
  %34 = call i32 @warn(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %38

35:                                               ; preds = %27, %2
  %36 = load %struct.game_capture*, %struct.game_capture** %5, align 8
  %37 = getelementptr inbounds %struct.game_capture, %struct.game_capture* %36, i32 0, i32 0
  store i32 0, i32* %37, align 8
  br label %38

38:                                               ; preds = %35, %31
  %39 = getelementptr inbounds %struct.game_capture_config, %struct.game_capture_config* %6, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @CAPTURE_MODE_HOTKEY, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %53

43:                                               ; preds = %38
  %44 = load %struct.game_capture*, %struct.game_capture** %5, align 8
  %45 = getelementptr inbounds %struct.game_capture, %struct.game_capture* %44, i32 0, i32 5
  %46 = getelementptr inbounds %struct.game_capture_config, %struct.game_capture_config* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @CAPTURE_MODE_HOTKEY, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %43
  %51 = load %struct.game_capture*, %struct.game_capture** %5, align 8
  %52 = getelementptr inbounds %struct.game_capture, %struct.game_capture* %51, i32 0, i32 1
  store i32 0, i32* %52, align 4
  br label %67

53:                                               ; preds = %43, %38
  %54 = load i8*, i8** %8, align 8
  %55 = icmp ne i8* %54, null
  br i1 %55, label %56, label %62

56:                                               ; preds = %53
  %57 = load i8*, i8** %8, align 8
  %58 = load i8, i8* %57, align 1
  %59 = icmp ne i8 %58, 0
  %60 = xor i1 %59, true
  %61 = xor i1 %60, true
  br label %62

62:                                               ; preds = %56, %53
  %63 = phi i1 [ false, %53 ], [ %61, %56 ]
  %64 = zext i1 %63 to i32
  %65 = load %struct.game_capture*, %struct.game_capture** %5, align 8
  %66 = getelementptr inbounds %struct.game_capture, %struct.game_capture* %65, i32 0, i32 1
  store i32 %64, i32* %66, align 4
  br label %67

67:                                               ; preds = %62, %50
  %68 = load %struct.game_capture*, %struct.game_capture** %5, align 8
  %69 = getelementptr inbounds %struct.game_capture, %struct.game_capture* %68, i32 0, i32 5
  %70 = call i32 @free_config(%struct.game_capture_config* %69)
  %71 = load %struct.game_capture*, %struct.game_capture** %5, align 8
  %72 = getelementptr inbounds %struct.game_capture, %struct.game_capture* %71, i32 0, i32 5
  %73 = bitcast %struct.game_capture_config* %72 to i8*
  %74 = bitcast %struct.game_capture_config* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %73, i8* align 8 %74, i64 56, i1 false)
  %75 = load i32, i32* @DEFAULT_RETRY_INTERVAL, align 4
  %76 = load %struct.game_capture*, %struct.game_capture** %5, align 8
  %77 = getelementptr inbounds %struct.game_capture, %struct.game_capture* %76, i32 0, i32 5
  %78 = getelementptr inbounds %struct.game_capture_config, %struct.game_capture_config* %77, i32 0, i32 7
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @hook_rate_to_float(i32 %79)
  %81 = mul nsw i32 %75, %80
  %82 = load %struct.game_capture*, %struct.game_capture** %5, align 8
  %83 = getelementptr inbounds %struct.game_capture, %struct.game_capture* %82, i32 0, i32 2
  store i32 %81, i32* %83, align 8
  %84 = load %struct.game_capture*, %struct.game_capture** %5, align 8
  %85 = getelementptr inbounds %struct.game_capture, %struct.game_capture* %84, i32 0, i32 3
  store i32 0, i32* %85, align 4
  %86 = load %struct.game_capture*, %struct.game_capture** %5, align 8
  %87 = getelementptr inbounds %struct.game_capture, %struct.game_capture* %86, i32 0, i32 9
  %88 = call i32 @dstr_free(i32* %87)
  %89 = load %struct.game_capture*, %struct.game_capture** %5, align 8
  %90 = getelementptr inbounds %struct.game_capture, %struct.game_capture* %89, i32 0, i32 8
  %91 = call i32 @dstr_free(i32* %90)
  %92 = load %struct.game_capture*, %struct.game_capture** %5, align 8
  %93 = getelementptr inbounds %struct.game_capture, %struct.game_capture* %92, i32 0, i32 7
  %94 = call i32 @dstr_free(i32* %93)
  %95 = getelementptr inbounds %struct.game_capture_config, %struct.game_capture_config* %6, i32 0, i32 2
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @CAPTURE_MODE_WINDOW, align 8
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %99, label %127

99:                                               ; preds = %67
  %100 = load %struct.game_capture*, %struct.game_capture** %5, align 8
  %101 = getelementptr inbounds %struct.game_capture, %struct.game_capture* %100, i32 0, i32 9
  %102 = load %struct.game_capture*, %struct.game_capture** %5, align 8
  %103 = getelementptr inbounds %struct.game_capture, %struct.game_capture* %102, i32 0, i32 5
  %104 = getelementptr inbounds %struct.game_capture_config, %struct.game_capture_config* %103, i32 0, i32 6
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @dstr_copy(i32* %101, i32 %105)
  %107 = load %struct.game_capture*, %struct.game_capture** %5, align 8
  %108 = getelementptr inbounds %struct.game_capture, %struct.game_capture* %107, i32 0, i32 8
  %109 = load %struct.game_capture*, %struct.game_capture** %5, align 8
  %110 = getelementptr inbounds %struct.game_capture, %struct.game_capture* %109, i32 0, i32 5
  %111 = getelementptr inbounds %struct.game_capture_config, %struct.game_capture_config* %110, i32 0, i32 5
  %112 = load i32, i32* %111, align 8
  %113 = call i32 @dstr_copy(i32* %108, i32 %112)
  %114 = load %struct.game_capture*, %struct.game_capture** %5, align 8
  %115 = getelementptr inbounds %struct.game_capture, %struct.game_capture* %114, i32 0, i32 7
  %116 = load %struct.game_capture*, %struct.game_capture** %5, align 8
  %117 = getelementptr inbounds %struct.game_capture, %struct.game_capture* %116, i32 0, i32 5
  %118 = getelementptr inbounds %struct.game_capture_config, %struct.game_capture_config* %117, i32 0, i32 4
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @dstr_copy(i32* %115, i32 %119)
  %121 = load %struct.game_capture*, %struct.game_capture** %5, align 8
  %122 = getelementptr inbounds %struct.game_capture, %struct.game_capture* %121, i32 0, i32 5
  %123 = getelementptr inbounds %struct.game_capture_config, %struct.game_capture_config* %122, i32 0, i32 3
  %124 = load i32, i32* %123, align 8
  %125 = load %struct.game_capture*, %struct.game_capture** %5, align 8
  %126 = getelementptr inbounds %struct.game_capture, %struct.game_capture* %125, i32 0, i32 6
  store i32 %124, i32* %126, align 8
  br label %127

127:                                              ; preds = %99, %67
  %128 = load %struct.game_capture*, %struct.game_capture** %5, align 8
  %129 = getelementptr inbounds %struct.game_capture, %struct.game_capture* %128, i32 0, i32 4
  %130 = load i32, i32* %129, align 8
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %139, label %132

132:                                              ; preds = %127
  %133 = load i32, i32* %7, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %138

135:                                              ; preds = %132
  %136 = load %struct.game_capture*, %struct.game_capture** %5, align 8
  %137 = call i32 @stop_capture(%struct.game_capture* %136)
  br label %138

138:                                              ; preds = %135, %132
  br label %142

139:                                              ; preds = %127
  %140 = load %struct.game_capture*, %struct.game_capture** %5, align 8
  %141 = getelementptr inbounds %struct.game_capture, %struct.game_capture* %140, i32 0, i32 4
  store i32 0, i32* %141, align 8
  br label %142

142:                                              ; preds = %139, %138
  ret void
}

declare dso_local i8* @obs_data_get_string(i32*, i32) #1

declare dso_local i32 @get_config(%struct.game_capture_config*, i32*, i8*) #1

declare dso_local i32 @capture_needs_reset(%struct.game_capture_config*, %struct.game_capture_config*) #1

declare dso_local i32 @warn(i8*) #1

declare dso_local i32 @free_config(%struct.game_capture_config*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @hook_rate_to_float(i32) #1

declare dso_local i32 @dstr_free(i32*) #1

declare dso_local i32 @dstr_copy(i32*, i32) #1

declare dso_local i32 @stop_capture(%struct.game_capture*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
