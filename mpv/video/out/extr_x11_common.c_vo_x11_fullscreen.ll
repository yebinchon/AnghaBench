; ModuleID = '/home/carl/AnghaBench/mpv/video/out/extr_x11_common.c_vo_x11_fullscreen.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/extr_x11_common.c_vo_x11_fullscreen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vo = type { %struct.vo_x11_state*, %struct.mp_vo_opts* }
%struct.vo_x11_state = type { i64, i32, i32, i32, i32, i32, %struct.mp_rect, %struct.mp_rect, %struct.mp_rect, i64 }
%struct.mp_rect = type { i64, i64, i64, i64 }
%struct.mp_vo_opts = type { i64, i64, i64 }

@vo_wm_FULLSCREEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"_NET_WM_STATE_FULLSCREEN\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"avoiding triggering old-style fullscreen\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vo*)* @vo_x11_fullscreen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vo_x11_fullscreen(%struct.vo* %0) #0 {
  %2 = alloca %struct.vo*, align 8
  %3 = alloca %struct.mp_vo_opts*, align 8
  %4 = alloca %struct.vo_x11_state*, align 8
  %5 = alloca %struct.mp_rect, align 8
  store %struct.vo* %0, %struct.vo** %2, align 8
  %6 = load %struct.vo*, %struct.vo** %2, align 8
  %7 = getelementptr inbounds %struct.vo, %struct.vo* %6, i32 0, i32 1
  %8 = load %struct.mp_vo_opts*, %struct.mp_vo_opts** %7, align 8
  store %struct.mp_vo_opts* %8, %struct.mp_vo_opts** %3, align 8
  %9 = load %struct.vo*, %struct.vo** %2, align 8
  %10 = getelementptr inbounds %struct.vo, %struct.vo* %9, i32 0, i32 0
  %11 = load %struct.vo_x11_state*, %struct.vo_x11_state** %10, align 8
  store %struct.vo_x11_state* %11, %struct.vo_x11_state** %4, align 8
  %12 = load %struct.mp_vo_opts*, %struct.mp_vo_opts** %3, align 8
  %13 = getelementptr inbounds %struct.mp_vo_opts, %struct.mp_vo_opts* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.vo_x11_state*, %struct.vo_x11_state** %4, align 8
  %16 = getelementptr inbounds %struct.vo_x11_state, %struct.vo_x11_state* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp eq i64 %14, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  br label %207

20:                                               ; preds = %1
  %21 = load %struct.mp_vo_opts*, %struct.mp_vo_opts** %3, align 8
  %22 = getelementptr inbounds %struct.mp_vo_opts, %struct.mp_vo_opts* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.vo_x11_state*, %struct.vo_x11_state** %4, align 8
  %25 = getelementptr inbounds %struct.vo_x11_state, %struct.vo_x11_state* %24, i32 0, i32 0
  store i64 %23, i64* %25, align 8
  %26 = load %struct.vo_x11_state*, %struct.vo_x11_state** %4, align 8
  %27 = getelementptr inbounds %struct.vo_x11_state, %struct.vo_x11_state* %26, i32 0, i32 9
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %35, label %30

30:                                               ; preds = %20
  %31 = load %struct.vo_x11_state*, %struct.vo_x11_state** %4, align 8
  %32 = getelementptr inbounds %struct.vo_x11_state, %struct.vo_x11_state* %31, i32 0, i32 5
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %30, %20
  br label %207

36:                                               ; preds = %30
  %37 = load %struct.vo_x11_state*, %struct.vo_x11_state** %4, align 8
  %38 = getelementptr inbounds %struct.vo_x11_state, %struct.vo_x11_state* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %50

41:                                               ; preds = %36
  %42 = load %struct.vo*, %struct.vo** %2, align 8
  %43 = call i32 @vo_x11_update_geometry(%struct.vo* %42)
  %44 = load %struct.vo_x11_state*, %struct.vo_x11_state** %4, align 8
  %45 = getelementptr inbounds %struct.vo_x11_state, %struct.vo_x11_state* %44, i32 0, i32 7
  %46 = load %struct.vo_x11_state*, %struct.vo_x11_state** %4, align 8
  %47 = getelementptr inbounds %struct.vo_x11_state, %struct.vo_x11_state* %46, i32 0, i32 8
  %48 = bitcast %struct.mp_rect* %45 to i8*
  %49 = bitcast %struct.mp_rect* %47 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %48, i8* align 8 %49, i64 32, i1 false)
  br label %50

50:                                               ; preds = %41, %36
  %51 = load %struct.vo_x11_state*, %struct.vo_x11_state** %4, align 8
  %52 = getelementptr inbounds %struct.vo_x11_state, %struct.vo_x11_state* %51, i32 0, i32 7
  %53 = bitcast %struct.mp_rect* %5 to i8*
  %54 = bitcast %struct.mp_rect* %52 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %53, i8* align 8 %54, i64 32, i1 false)
  %55 = load %struct.vo_x11_state*, %struct.vo_x11_state** %4, align 8
  %56 = getelementptr inbounds %struct.vo_x11_state, %struct.vo_x11_state* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @vo_wm_FULLSCREEN, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %132

61:                                               ; preds = %50
  %62 = load %struct.vo_x11_state*, %struct.vo_x11_state** %4, align 8
  %63 = load %struct.vo_x11_state*, %struct.vo_x11_state** %4, align 8
  %64 = getelementptr inbounds %struct.vo_x11_state, %struct.vo_x11_state* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = call i32 @x11_set_ewmh_state(%struct.vo_x11_state* %62, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i64 %65)
  %67 = load %struct.vo_x11_state*, %struct.vo_x11_state** %4, align 8
  %68 = getelementptr inbounds %struct.vo_x11_state, %struct.vo_x11_state* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %131, label %71

71:                                               ; preds = %61
  %72 = load %struct.vo_x11_state*, %struct.vo_x11_state** %4, align 8
  %73 = getelementptr inbounds %struct.vo_x11_state, %struct.vo_x11_state* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %81, label %76

76:                                               ; preds = %71
  %77 = load %struct.vo_x11_state*, %struct.vo_x11_state** %4, align 8
  %78 = getelementptr inbounds %struct.vo_x11_state, %struct.vo_x11_state* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 8
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %131

81:                                               ; preds = %76, %71
  %82 = load %struct.vo_x11_state*, %struct.vo_x11_state** %4, align 8
  %83 = getelementptr inbounds %struct.vo_x11_state, %struct.vo_x11_state* %82, i32 0, i32 6
  %84 = getelementptr inbounds %struct.mp_rect, %struct.mp_rect* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = getelementptr inbounds %struct.mp_rect, %struct.mp_rect* %5, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = icmp eq i64 %85, %87
  br i1 %88, label %89, label %122

89:                                               ; preds = %81
  %90 = load %struct.vo_x11_state*, %struct.vo_x11_state** %4, align 8
  %91 = getelementptr inbounds %struct.vo_x11_state, %struct.vo_x11_state* %90, i32 0, i32 6
  %92 = getelementptr inbounds %struct.mp_rect, %struct.mp_rect* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = getelementptr inbounds %struct.mp_rect, %struct.mp_rect* %5, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = icmp eq i64 %93, %95
  br i1 %96, label %97, label %122

97:                                               ; preds = %89
  %98 = load %struct.vo_x11_state*, %struct.vo_x11_state** %4, align 8
  %99 = getelementptr inbounds %struct.vo_x11_state, %struct.vo_x11_state* %98, i32 0, i32 6
  %100 = getelementptr inbounds %struct.mp_rect, %struct.mp_rect* %99, i32 0, i32 2
  %101 = load i64, i64* %100, align 8
  %102 = getelementptr inbounds %struct.mp_rect, %struct.mp_rect* %5, i32 0, i32 2
  %103 = load i64, i64* %102, align 8
  %104 = icmp eq i64 %101, %103
  br i1 %104, label %105, label %122

105:                                              ; preds = %97
  %106 = load %struct.vo_x11_state*, %struct.vo_x11_state** %4, align 8
  %107 = getelementptr inbounds %struct.vo_x11_state, %struct.vo_x11_state* %106, i32 0, i32 6
  %108 = getelementptr inbounds %struct.mp_rect, %struct.mp_rect* %107, i32 0, i32 3
  %109 = load i64, i64* %108, align 8
  %110 = getelementptr inbounds %struct.mp_rect, %struct.mp_rect* %5, i32 0, i32 3
  %111 = load i64, i64* %110, align 8
  %112 = icmp eq i64 %109, %111
  br i1 %112, label %113, label %122

113:                                              ; preds = %105
  %114 = load %struct.vo_x11_state*, %struct.vo_x11_state** %4, align 8
  %115 = call i32 @MP_VERBOSE(%struct.vo_x11_state* %114, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  %116 = getelementptr inbounds %struct.mp_rect, %struct.mp_rect* %5, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = sub nsw i64 %117, 1
  store i64 %118, i64* %116, align 8
  %119 = getelementptr inbounds %struct.mp_rect, %struct.mp_rect* %5, i32 0, i32 3
  %120 = load i64, i64* %119, align 8
  %121 = sub nsw i64 %120, 1
  store i64 %121, i64* %119, align 8
  br label %122

122:                                              ; preds = %113, %105, %97, %89, %81
  %123 = load %struct.vo*, %struct.vo** %2, align 8
  %124 = load %struct.vo_x11_state*, %struct.vo_x11_state** %4, align 8
  %125 = getelementptr inbounds %struct.vo_x11_state, %struct.vo_x11_state* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.vo_x11_state*, %struct.vo_x11_state** %4, align 8
  %128 = getelementptr inbounds %struct.vo_x11_state, %struct.vo_x11_state* %127, i32 0, i32 3
  %129 = load i32, i32* %128, align 8
  %130 = call i32 @vo_x11_move_resize(%struct.vo* %123, i32 %126, i32 %129, %struct.mp_rect* byval(%struct.mp_rect) align 8 %5)
  br label %131

131:                                              ; preds = %122, %76, %61
  br label %200

132:                                              ; preds = %50
  %133 = load %struct.vo_x11_state*, %struct.vo_x11_state** %4, align 8
  %134 = getelementptr inbounds %struct.vo_x11_state, %struct.vo_x11_state* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %144

137:                                              ; preds = %132
  %138 = load %struct.vo*, %struct.vo** %2, align 8
  %139 = call i32 @vo_x11_update_screeninfo(%struct.vo* %138)
  %140 = load %struct.vo_x11_state*, %struct.vo_x11_state** %4, align 8
  %141 = getelementptr inbounds %struct.vo_x11_state, %struct.vo_x11_state* %140, i32 0, i32 6
  %142 = bitcast %struct.mp_rect* %5 to i8*
  %143 = bitcast %struct.mp_rect* %141 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %142, i8* align 8 %143, i64 32, i1 false)
  br label %144

144:                                              ; preds = %137, %132
  %145 = load %struct.vo*, %struct.vo** %2, align 8
  %146 = load %struct.mp_vo_opts*, %struct.mp_vo_opts** %3, align 8
  %147 = getelementptr inbounds %struct.mp_vo_opts, %struct.mp_vo_opts* %146, i32 0, i32 2
  %148 = load i64, i64* %147, align 8
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %156

150:                                              ; preds = %144
  %151 = load %struct.vo_x11_state*, %struct.vo_x11_state** %4, align 8
  %152 = getelementptr inbounds %struct.vo_x11_state, %struct.vo_x11_state* %151, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = icmp ne i64 %153, 0
  %155 = xor i1 %154, true
  br label %156

156:                                              ; preds = %150, %144
  %157 = phi i1 [ false, %144 ], [ %155, %150 ]
  %158 = zext i1 %157 to i32
  %159 = call i32 @vo_x11_decoration(%struct.vo* %145, i32 %158)
  %160 = load %struct.vo*, %struct.vo** %2, align 8
  %161 = call i32 @vo_x11_sizehint(%struct.vo* %160, %struct.mp_rect* byval(%struct.mp_rect) align 8 %5, i32 1)
  %162 = load %struct.vo_x11_state*, %struct.vo_x11_state** %4, align 8
  %163 = getelementptr inbounds %struct.vo_x11_state, %struct.vo_x11_state* %162, i32 0, i32 4
  %164 = load i32, i32* %163, align 4
  %165 = load %struct.vo_x11_state*, %struct.vo_x11_state** %4, align 8
  %166 = getelementptr inbounds %struct.vo_x11_state, %struct.vo_x11_state* %165, i32 0, i32 5
  %167 = load i32, i32* %166, align 8
  %168 = getelementptr inbounds %struct.mp_rect, %struct.mp_rect* %5, i32 0, i32 0
  %169 = load i64, i64* %168, align 8
  %170 = getelementptr inbounds %struct.mp_rect, %struct.mp_rect* %5, i32 0, i32 2
  %171 = load i64, i64* %170, align 8
  %172 = call i32 @RC_W(%struct.mp_rect* byval(%struct.mp_rect) align 8 %5)
  %173 = call i32 @RC_H(%struct.mp_rect* byval(%struct.mp_rect) align 8 %5)
  %174 = call i32 @XMoveResizeWindow(i32 %164, i32 %167, i64 %169, i64 %171, i32 %172, i32 %173)
  %175 = load %struct.vo*, %struct.vo** %2, align 8
  %176 = load %struct.vo_x11_state*, %struct.vo_x11_state** %4, align 8
  %177 = getelementptr inbounds %struct.vo_x11_state, %struct.vo_x11_state* %176, i32 0, i32 0
  %178 = load i64, i64* %177, align 8
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %185, label %180

180:                                              ; preds = %156
  %181 = load %struct.mp_vo_opts*, %struct.mp_vo_opts** %3, align 8
  %182 = getelementptr inbounds %struct.mp_vo_opts, %struct.mp_vo_opts* %181, i32 0, i32 1
  %183 = load i64, i64* %182, align 8
  %184 = icmp ne i64 %183, 0
  br label %185

185:                                              ; preds = %180, %156
  %186 = phi i1 [ true, %156 ], [ %184, %180 ]
  %187 = zext i1 %186 to i32
  %188 = call i32 @vo_x11_setlayer(%struct.vo* %175, i32 %187)
  %189 = load %struct.vo_x11_state*, %struct.vo_x11_state** %4, align 8
  %190 = getelementptr inbounds %struct.vo_x11_state, %struct.vo_x11_state* %189, i32 0, i32 4
  %191 = load i32, i32* %190, align 4
  %192 = load %struct.vo_x11_state*, %struct.vo_x11_state** %4, align 8
  %193 = getelementptr inbounds %struct.vo_x11_state, %struct.vo_x11_state* %192, i32 0, i32 5
  %194 = load i32, i32* %193, align 8
  %195 = call i32 @XRaiseWindow(i32 %191, i32 %194)
  %196 = load %struct.vo_x11_state*, %struct.vo_x11_state** %4, align 8
  %197 = getelementptr inbounds %struct.vo_x11_state, %struct.vo_x11_state* %196, i32 0, i32 4
  %198 = load i32, i32* %197, align 4
  %199 = call i32 @XFlush(i32 %198)
  br label %200

200:                                              ; preds = %185, %131
  %201 = load %struct.vo_x11_state*, %struct.vo_x11_state** %4, align 8
  %202 = getelementptr inbounds %struct.vo_x11_state, %struct.vo_x11_state* %201, i32 0, i32 3
  store i32 0, i32* %202, align 8
  %203 = load %struct.vo_x11_state*, %struct.vo_x11_state** %4, align 8
  %204 = getelementptr inbounds %struct.vo_x11_state, %struct.vo_x11_state* %203, i32 0, i32 2
  store i32 0, i32* %204, align 4
  %205 = load %struct.vo*, %struct.vo** %2, align 8
  %206 = call i32 @vo_x11_update_composition_hint(%struct.vo* %205)
  br label %207

207:                                              ; preds = %200, %35, %19
  ret void
}

declare dso_local i32 @vo_x11_update_geometry(%struct.vo*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @x11_set_ewmh_state(%struct.vo_x11_state*, i8*, i64) #1

declare dso_local i32 @MP_VERBOSE(%struct.vo_x11_state*, i8*) #1

declare dso_local i32 @vo_x11_move_resize(%struct.vo*, i32, i32, %struct.mp_rect* byval(%struct.mp_rect) align 8) #1

declare dso_local i32 @vo_x11_update_screeninfo(%struct.vo*) #1

declare dso_local i32 @vo_x11_decoration(%struct.vo*, i32) #1

declare dso_local i32 @vo_x11_sizehint(%struct.vo*, %struct.mp_rect* byval(%struct.mp_rect) align 8, i32) #1

declare dso_local i32 @XMoveResizeWindow(i32, i32, i64, i64, i32, i32) #1

declare dso_local i32 @RC_W(%struct.mp_rect* byval(%struct.mp_rect) align 8) #1

declare dso_local i32 @RC_H(%struct.mp_rect* byval(%struct.mp_rect) align 8) #1

declare dso_local i32 @vo_x11_setlayer(%struct.vo*, i32) #1

declare dso_local i32 @XRaiseWindow(i32, i32) #1

declare dso_local i32 @XFlush(i32) #1

declare dso_local i32 @vo_x11_update_composition_hint(%struct.vo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
