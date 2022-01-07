; ModuleID = '/home/carl/AnghaBench/mpv/video/filter/extr_vf_format.c_set_params.c'
source_filename = "/home/carl/AnghaBench/mpv/video/filter/extr_vf_format.c_set_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vf_format_opts = type { i32, double, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.mp_image_params = type { i64, i64, i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, double, i64, i64, i64, i64 }
%struct.TYPE_5__ = type { i64, i64 }

@MP_CSP_LIGHT_AUTO = common dso_local global i64 0, align 8
@INT_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vf_format_opts*, %struct.mp_image_params*)* @set_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_params(%struct.vf_format_opts* %0, %struct.mp_image_params* %1) #0 {
  %3 = alloca %struct.vf_format_opts*, align 8
  %4 = alloca %struct.mp_image_params*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_5__, align 8
  %7 = alloca %struct.TYPE_5__, align 8
  store %struct.vf_format_opts* %0, %struct.vf_format_opts** %3, align 8
  store %struct.mp_image_params* %1, %struct.mp_image_params** %4, align 8
  %8 = load %struct.vf_format_opts*, %struct.vf_format_opts** %3, align 8
  %9 = getelementptr inbounds %struct.vf_format_opts, %struct.vf_format_opts* %8, i32 0, i32 11
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %19

12:                                               ; preds = %2
  %13 = load %struct.vf_format_opts*, %struct.vf_format_opts** %3, align 8
  %14 = getelementptr inbounds %struct.vf_format_opts, %struct.vf_format_opts* %13, i32 0, i32 11
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.mp_image_params*, %struct.mp_image_params** %4, align 8
  %17 = getelementptr inbounds %struct.mp_image_params, %struct.mp_image_params* %16, i32 0, i32 3
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 5
  store i64 %15, i64* %18, align 8
  br label %19

19:                                               ; preds = %12, %2
  %20 = load %struct.vf_format_opts*, %struct.vf_format_opts** %3, align 8
  %21 = getelementptr inbounds %struct.vf_format_opts, %struct.vf_format_opts* %20, i32 0, i32 10
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %19
  %25 = load %struct.vf_format_opts*, %struct.vf_format_opts** %3, align 8
  %26 = getelementptr inbounds %struct.vf_format_opts, %struct.vf_format_opts* %25, i32 0, i32 10
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.mp_image_params*, %struct.mp_image_params** %4, align 8
  %29 = getelementptr inbounds %struct.mp_image_params, %struct.mp_image_params* %28, i32 0, i32 3
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 4
  store i64 %27, i64* %30, align 8
  br label %31

31:                                               ; preds = %24, %19
  %32 = load %struct.vf_format_opts*, %struct.vf_format_opts** %3, align 8
  %33 = getelementptr inbounds %struct.vf_format_opts, %struct.vf_format_opts* %32, i32 0, i32 9
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %31
  %37 = load %struct.vf_format_opts*, %struct.vf_format_opts** %3, align 8
  %38 = getelementptr inbounds %struct.vf_format_opts, %struct.vf_format_opts* %37, i32 0, i32 9
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.mp_image_params*, %struct.mp_image_params** %4, align 8
  %41 = getelementptr inbounds %struct.mp_image_params, %struct.mp_image_params* %40, i32 0, i32 3
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 3
  store i64 %39, i64* %42, align 8
  br label %43

43:                                               ; preds = %36, %31
  %44 = load %struct.vf_format_opts*, %struct.vf_format_opts** %3, align 8
  %45 = getelementptr inbounds %struct.vf_format_opts, %struct.vf_format_opts* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %73

48:                                               ; preds = %43
  %49 = load %struct.vf_format_opts*, %struct.vf_format_opts** %3, align 8
  %50 = getelementptr inbounds %struct.vf_format_opts, %struct.vf_format_opts* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  store i32 %51, i32* %5, align 4
  %52 = load %struct.vf_format_opts*, %struct.vf_format_opts** %3, align 8
  %53 = getelementptr inbounds %struct.vf_format_opts, %struct.vf_format_opts* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.mp_image_params*, %struct.mp_image_params** %4, align 8
  %56 = getelementptr inbounds %struct.mp_image_params, %struct.mp_image_params* %55, i32 0, i32 3
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  store i32 %54, i32* %57, align 8
  %58 = load i32, i32* %5, align 4
  %59 = load %struct.mp_image_params*, %struct.mp_image_params** %4, align 8
  %60 = getelementptr inbounds %struct.mp_image_params, %struct.mp_image_params* %59, i32 0, i32 3
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = icmp ne i32 %58, %62
  br i1 %63, label %64, label %72

64:                                               ; preds = %48
  %65 = load %struct.mp_image_params*, %struct.mp_image_params** %4, align 8
  %66 = getelementptr inbounds %struct.mp_image_params, %struct.mp_image_params* %65, i32 0, i32 3
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 1
  store double 0.000000e+00, double* %67, align 8
  %68 = load i64, i64* @MP_CSP_LIGHT_AUTO, align 8
  %69 = load %struct.mp_image_params*, %struct.mp_image_params** %4, align 8
  %70 = getelementptr inbounds %struct.mp_image_params, %struct.mp_image_params* %69, i32 0, i32 3
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 2
  store i64 %68, i64* %71, align 8
  br label %72

72:                                               ; preds = %64, %48
  br label %73

73:                                               ; preds = %72, %43
  %74 = load %struct.vf_format_opts*, %struct.vf_format_opts** %3, align 8
  %75 = getelementptr inbounds %struct.vf_format_opts, %struct.vf_format_opts* %74, i32 0, i32 1
  %76 = load double, double* %75, align 8
  %77 = fcmp une double %76, 0.000000e+00
  br i1 %77, label %78, label %85

78:                                               ; preds = %73
  %79 = load %struct.vf_format_opts*, %struct.vf_format_opts** %3, align 8
  %80 = getelementptr inbounds %struct.vf_format_opts, %struct.vf_format_opts* %79, i32 0, i32 1
  %81 = load double, double* %80, align 8
  %82 = load %struct.mp_image_params*, %struct.mp_image_params** %4, align 8
  %83 = getelementptr inbounds %struct.mp_image_params, %struct.mp_image_params* %82, i32 0, i32 3
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 1
  store double %81, double* %84, align 8
  br label %85

85:                                               ; preds = %78, %73
  %86 = load %struct.vf_format_opts*, %struct.vf_format_opts** %3, align 8
  %87 = getelementptr inbounds %struct.vf_format_opts, %struct.vf_format_opts* %86, i32 0, i32 8
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %97

90:                                               ; preds = %85
  %91 = load %struct.vf_format_opts*, %struct.vf_format_opts** %3, align 8
  %92 = getelementptr inbounds %struct.vf_format_opts, %struct.vf_format_opts* %91, i32 0, i32 8
  %93 = load i64, i64* %92, align 8
  %94 = load %struct.mp_image_params*, %struct.mp_image_params** %4, align 8
  %95 = getelementptr inbounds %struct.mp_image_params, %struct.mp_image_params* %94, i32 0, i32 3
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 2
  store i64 %93, i64* %96, align 8
  br label %97

97:                                               ; preds = %90, %85
  %98 = load %struct.vf_format_opts*, %struct.vf_format_opts** %3, align 8
  %99 = getelementptr inbounds %struct.vf_format_opts, %struct.vf_format_opts* %98, i32 0, i32 7
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %108

102:                                              ; preds = %97
  %103 = load %struct.vf_format_opts*, %struct.vf_format_opts** %3, align 8
  %104 = getelementptr inbounds %struct.vf_format_opts, %struct.vf_format_opts* %103, i32 0, i32 7
  %105 = load i64, i64* %104, align 8
  %106 = load %struct.mp_image_params*, %struct.mp_image_params** %4, align 8
  %107 = getelementptr inbounds %struct.mp_image_params, %struct.mp_image_params* %106, i32 0, i32 2
  store i64 %105, i64* %107, align 8
  br label %108

108:                                              ; preds = %102, %97
  %109 = load %struct.vf_format_opts*, %struct.vf_format_opts** %3, align 8
  %110 = getelementptr inbounds %struct.vf_format_opts, %struct.vf_format_opts* %109, i32 0, i32 6
  %111 = load i64, i64* %110, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %119

113:                                              ; preds = %108
  %114 = load %struct.vf_format_opts*, %struct.vf_format_opts** %3, align 8
  %115 = getelementptr inbounds %struct.vf_format_opts, %struct.vf_format_opts* %114, i32 0, i32 6
  %116 = load i64, i64* %115, align 8
  %117 = load %struct.mp_image_params*, %struct.mp_image_params** %4, align 8
  %118 = getelementptr inbounds %struct.mp_image_params, %struct.mp_image_params* %117, i32 0, i32 1
  store i64 %116, i64* %118, align 8
  br label %119

119:                                              ; preds = %113, %108
  %120 = load %struct.vf_format_opts*, %struct.vf_format_opts** %3, align 8
  %121 = getelementptr inbounds %struct.vf_format_opts, %struct.vf_format_opts* %120, i32 0, i32 2
  %122 = load i64, i64* %121, align 8
  %123 = icmp sge i64 %122, 0
  br i1 %123, label %124, label %130

124:                                              ; preds = %119
  %125 = load %struct.vf_format_opts*, %struct.vf_format_opts** %3, align 8
  %126 = getelementptr inbounds %struct.vf_format_opts, %struct.vf_format_opts* %125, i32 0, i32 2
  %127 = load i64, i64* %126, align 8
  %128 = load %struct.mp_image_params*, %struct.mp_image_params** %4, align 8
  %129 = getelementptr inbounds %struct.mp_image_params, %struct.mp_image_params* %128, i32 0, i32 0
  store i64 %127, i64* %129, align 8
  br label %130

130:                                              ; preds = %124, %119
  %131 = load %struct.mp_image_params*, %struct.mp_image_params** %4, align 8
  %132 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 1
  %134 = call i32 @mp_image_params_get_dsize(%struct.mp_image_params* %131, i64* %132, i64* %133)
  %135 = load %struct.vf_format_opts*, %struct.vf_format_opts** %3, align 8
  %136 = getelementptr inbounds %struct.vf_format_opts, %struct.vf_format_opts* %135, i32 0, i32 3
  %137 = load i64, i64* %136, align 8
  %138 = icmp sgt i64 %137, 0
  br i1 %138, label %139, label %144

139:                                              ; preds = %130
  %140 = load %struct.vf_format_opts*, %struct.vf_format_opts** %3, align 8
  %141 = getelementptr inbounds %struct.vf_format_opts, %struct.vf_format_opts* %140, i32 0, i32 3
  %142 = load i64, i64* %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  store i64 %142, i64* %143, align 8
  br label %144

144:                                              ; preds = %139, %130
  %145 = load %struct.vf_format_opts*, %struct.vf_format_opts** %3, align 8
  %146 = getelementptr inbounds %struct.vf_format_opts, %struct.vf_format_opts* %145, i32 0, i32 4
  %147 = load i64, i64* %146, align 8
  %148 = icmp sgt i64 %147, 0
  br i1 %148, label %149, label %154

149:                                              ; preds = %144
  %150 = load %struct.vf_format_opts*, %struct.vf_format_opts** %3, align 8
  %151 = getelementptr inbounds %struct.vf_format_opts, %struct.vf_format_opts* %150, i32 0, i32 4
  %152 = load i64, i64* %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 1
  store i64 %152, i64* %153, align 8
  br label %154

154:                                              ; preds = %149, %144
  %155 = load %struct.vf_format_opts*, %struct.vf_format_opts** %3, align 8
  %156 = getelementptr inbounds %struct.vf_format_opts, %struct.vf_format_opts* %155, i32 0, i32 5
  %157 = load i64, i64* %156, align 8
  %158 = icmp sgt i64 %157, 0
  br i1 %158, label %159, label %172

159:                                              ; preds = %154
  %160 = load %struct.vf_format_opts*, %struct.vf_format_opts** %3, align 8
  %161 = getelementptr inbounds %struct.vf_format_opts, %struct.vf_format_opts* %160, i32 0, i32 5
  %162 = load i64, i64* %161, align 8
  %163 = load i32, i32* @INT_MAX, align 4
  %164 = call { i64, i64 } @av_d2q(i64 %162, i32 %163)
  %165 = bitcast %struct.TYPE_5__* %7 to { i64, i64 }*
  %166 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %165, i32 0, i32 0
  %167 = extractvalue { i64, i64 } %164, 0
  store i64 %167, i64* %166, align 8
  %168 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %165, i32 0, i32 1
  %169 = extractvalue { i64, i64 } %164, 1
  store i64 %169, i64* %168, align 8
  %170 = bitcast %struct.TYPE_5__* %6 to i8*
  %171 = bitcast %struct.TYPE_5__* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %170, i8* align 8 %171, i64 16, i1 false)
  br label %172

172:                                              ; preds = %159, %154
  %173 = load %struct.mp_image_params*, %struct.mp_image_params** %4, align 8
  %174 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %175 = load i64, i64* %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 1
  %177 = load i64, i64* %176, align 8
  %178 = call i32 @mp_image_params_set_dsize(%struct.mp_image_params* %173, i64 %175, i64 %177)
  ret void
}

declare dso_local i32 @mp_image_params_get_dsize(%struct.mp_image_params*, i64*, i64*) #1

declare dso_local { i64, i64 } @av_d2q(i64, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @mp_image_params_set_dsize(%struct.mp_image_params*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
