; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-nix.c_fill_keycodes.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-nix.c_fill_keycodes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.obs_core_hotkeys = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.xcb_setup_t = type { i32, i32 }
%struct.TYPE_10__ = type { i64 }

@LOG_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"xcb_get_keyboard_mapping_reply failed\00", align 1
@XK_Super_L = common dso_local global i64 0, align 8
@XK_Super_R = common dso_local global i64 0, align 8
@OBS_KEY_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.obs_core_hotkeys*)* @fill_keycodes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fill_keycodes(%struct.obs_core_hotkeys* %0) #0 {
  %2 = alloca %struct.obs_core_hotkeys*, align 8
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.xcb_setup_t*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.obs_core_hotkeys* %0, %struct.obs_core_hotkeys** %2, align 8
  %17 = load %struct.obs_core_hotkeys*, %struct.obs_core_hotkeys** %2, align 8
  %18 = getelementptr inbounds %struct.obs_core_hotkeys, %struct.obs_core_hotkeys* %17, i32 0, i32 0
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  store %struct.TYPE_11__* %19, %struct.TYPE_11__** %3, align 8
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 6
  %22 = load i32, i32* %21, align 4
  %23 = call i32* @XGetXCBConnection(i32 %22)
  store i32* %23, i32** %4, align 8
  %24 = load i32*, i32** %4, align 8
  %25 = call %struct.xcb_setup_t* @xcb_get_setup(i32* %24)
  store %struct.xcb_setup_t* %25, %struct.xcb_setup_t** %5, align 8
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %8, align 8
  %26 = load %struct.xcb_setup_t*, %struct.xcb_setup_t** %5, align 8
  %27 = getelementptr inbounds %struct.xcb_setup_t, %struct.xcb_setup_t* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %10, align 4
  %29 = load %struct.xcb_setup_t*, %struct.xcb_setup_t** %5, align 8
  %30 = getelementptr inbounds %struct.xcb_setup_t, %struct.xcb_setup_t* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %11, align 4
  %32 = load %struct.xcb_setup_t*, %struct.xcb_setup_t** %5, align 8
  %33 = getelementptr inbounds %struct.xcb_setup_t, %struct.xcb_setup_t* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 4
  %37 = load i32*, i32** %4, align 8
  %38 = load i32, i32* %10, align 4
  %39 = load i32, i32* %11, align 4
  %40 = load i32, i32* %10, align 4
  %41 = sub nsw i32 %39, %40
  %42 = add nsw i32 %41, 1
  %43 = call i32 @xcb_get_keyboard_mapping(i32* %37, i32 %38, i32 %42)
  store i32 %43, i32* %6, align 4
  %44 = load i32*, i32** %4, align 8
  %45 = load i32, i32* %6, align 4
  %46 = call %struct.TYPE_10__* @xcb_get_keyboard_mapping_reply(i32* %44, i32 %45, %struct.TYPE_10__** %8)
  store %struct.TYPE_10__* %46, %struct.TYPE_10__** %7, align 8
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %48 = icmp ne %struct.TYPE_10__* %47, null
  br i1 %48, label %52, label %49

49:                                               ; preds = %1
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %51 = icmp ne %struct.TYPE_10__* %50, null
  br i1 %51, label %55, label %52

52:                                               ; preds = %49, %1
  %53 = load i32, i32* @LOG_WARNING, align 4
  %54 = call i32 @blog(i32 %53, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  br label %160

55:                                               ; preds = %49
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %57 = call i64* @xcb_get_keyboard_mapping_keysyms(%struct.TYPE_10__* %56)
  store i64* %57, i64** %12, align 8
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = trunc i64 %60 to i32
  store i32 %61, i32* %13, align 4
  %62 = load i32, i32* %11, align 4
  %63 = load i32, i32* %10, align 4
  %64 = sub nsw i32 %62, %63
  %65 = add nsw i32 %64, 1
  %66 = load i32, i32* %13, align 4
  %67 = mul nsw i32 %65, %66
  %68 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i32 0, i32 1
  store i32 %67, i32* %69, align 4
  %70 = load i32, i32* %13, align 4
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 2
  store i32 %70, i32* %72, align 4
  %73 = load i64*, i64** %12, align 8
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = sext i32 %76 to i64
  %78 = mul i64 8, %77
  %79 = trunc i64 %78 to i32
  %80 = call i32 @bmemdup(i64* %73, i32 %79)
  %81 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %81, i32 0, i32 5
  store i32 %80, i32* %82, align 4
  %83 = load i32, i32* %10, align 4
  store i32 %83, i32* %9, align 4
  br label %84

84:                                               ; preds = %156, %55
  %85 = load i32, i32* %9, align 4
  %86 = load i32, i32* %11, align 4
  %87 = icmp sle i32 %85, %86
  br i1 %87, label %88, label %159

88:                                               ; preds = %84
  %89 = load i64*, i64** %12, align 8
  %90 = load i32, i32* %9, align 4
  %91 = load i32, i32* %10, align 4
  %92 = sub nsw i32 %90, %91
  %93 = load i32, i32* %13, align 4
  %94 = mul nsw i32 %92, %93
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i64, i64* %89, i64 %95
  store i64* %96, i64** %14, align 8
  store i32 0, i32* %16, align 4
  br label %97

97:                                               ; preds = %152, %88
  %98 = load i32, i32* %16, align 4
  %99 = load i32, i32* %13, align 4
  %100 = icmp slt i32 %98, %99
  br i1 %100, label %101, label %155

101:                                              ; preds = %97
  %102 = load i64*, i64** %14, align 8
  %103 = load i32, i32* %16, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i64, i64* %102, i64 %104
  %106 = load i64, i64* %105, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %109, label %108

108:                                              ; preds = %101
  br label %155

109:                                              ; preds = %101
  %110 = load i64*, i64** %14, align 8
  %111 = load i32, i32* %16, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i64, i64* %110, i64 %112
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* @XK_Super_L, align 8
  %116 = icmp eq i64 %114, %115
  br i1 %116, label %117, label %121

117:                                              ; preds = %109
  %118 = load i32, i32* %9, align 4
  %119 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %120 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %119, i32 0, i32 3
  store i32 %118, i32* %120, align 4
  br label %155

121:                                              ; preds = %109
  %122 = load i64*, i64** %14, align 8
  %123 = load i32, i32* %16, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i64, i64* %122, i64 %124
  %126 = load i64, i64* %125, align 8
  %127 = load i64, i64* @XK_Super_R, align 8
  %128 = icmp eq i64 %126, %127
  br i1 %128, label %129, label %133

129:                                              ; preds = %121
  %130 = load i32, i32* %9, align 4
  %131 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %132 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %131, i32 0, i32 4
  store i32 %130, i32* %132, align 4
  br label %155

133:                                              ; preds = %121
  %134 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %135 = load i64*, i64** %14, align 8
  %136 = load i32, i32* %16, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i64, i64* %135, i64 %137
  %139 = load i64, i64* %138, align 8
  %140 = call i32 @key_from_base_keysym(%struct.TYPE_11__* %134, i64 %139)
  store i32 %140, i32* %15, align 4
  %141 = load i32, i32* %15, align 4
  %142 = load i32, i32* @OBS_KEY_NONE, align 4
  %143 = icmp ne i32 %141, %142
  br i1 %143, label %144, label %149

144:                                              ; preds = %133
  %145 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %146 = load i32, i32* %15, align 4
  %147 = load i32, i32* %9, align 4
  %148 = call i32 @add_key(%struct.TYPE_11__* %145, i32 %146, i32 %147)
  br label %155

149:                                              ; preds = %133
  br label %150

150:                                              ; preds = %149
  br label %151

151:                                              ; preds = %150
  br label %152

152:                                              ; preds = %151
  %153 = load i32, i32* %16, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %16, align 4
  br label %97

155:                                              ; preds = %144, %129, %117, %108, %97
  br label %156

156:                                              ; preds = %155
  %157 = load i32, i32* %9, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %9, align 4
  br label %84

159:                                              ; preds = %84
  br label %160

160:                                              ; preds = %159, %52
  %161 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %162 = call i32 @free(%struct.TYPE_10__* %161)
  %163 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %164 = call i32 @free(%struct.TYPE_10__* %163)
  %165 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %166 = icmp ne %struct.TYPE_10__* %165, null
  br i1 %166, label %170, label %167

167:                                              ; preds = %160
  %168 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %169 = icmp eq %struct.TYPE_10__* %168, null
  br label %170

170:                                              ; preds = %167, %160
  %171 = phi i1 [ true, %160 ], [ %169, %167 ]
  %172 = zext i1 %171 to i32
  ret i32 %172
}

declare dso_local i32* @XGetXCBConnection(i32) #1

declare dso_local %struct.xcb_setup_t* @xcb_get_setup(i32*) #1

declare dso_local i32 @xcb_get_keyboard_mapping(i32*, i32, i32) #1

declare dso_local %struct.TYPE_10__* @xcb_get_keyboard_mapping_reply(i32*, i32, %struct.TYPE_10__**) #1

declare dso_local i32 @blog(i32, i8*) #1

declare dso_local i64* @xcb_get_keyboard_mapping_keysyms(%struct.TYPE_10__*) #1

declare dso_local i32 @bmemdup(i64*, i32) #1

declare dso_local i32 @key_from_base_keysym(%struct.TYPE_11__*, i64) #1

declare dso_local i32 @add_key(%struct.TYPE_11__*, i32, i32) #1

declare dso_local i32 @free(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
