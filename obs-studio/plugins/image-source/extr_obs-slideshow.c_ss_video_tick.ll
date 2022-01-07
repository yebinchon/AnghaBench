; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/image-source/extr_obs-slideshow.c_ss_video_tick.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/image-source/extr_obs-slideshow.c_ss_video_tick.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.slideshow = type { float, i32, i32, float, i32, i32, %struct.TYPE_2__, i64, i64, i32, i32, i64, i64, i64 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, float)* @ss_video_tick to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ss_video_tick(i8* %0, float %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca float, align 4
  %5 = alloca %struct.slideshow*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store float %1, float* %4, align 4
  %8 = load i8*, i8** %3, align 8
  %9 = bitcast i8* %8 to %struct.slideshow*
  store %struct.slideshow* %9, %struct.slideshow** %5, align 8
  %10 = load %struct.slideshow*, %struct.slideshow** %5, align 8
  %11 = getelementptr inbounds %struct.slideshow, %struct.slideshow* %10, i32 0, i32 10
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %2
  %15 = load %struct.slideshow*, %struct.slideshow** %5, align 8
  %16 = getelementptr inbounds %struct.slideshow, %struct.slideshow* %15, i32 0, i32 0
  %17 = load float, float* %16, align 8
  %18 = fcmp une float %17, 0.000000e+00
  br i1 %18, label %20, label %19

19:                                               ; preds = %14, %2
  br label %191

20:                                               ; preds = %14
  %21 = load %struct.slideshow*, %struct.slideshow** %5, align 8
  %22 = getelementptr inbounds %struct.slideshow, %struct.slideshow* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %48

25:                                               ; preds = %20
  %26 = load %struct.slideshow*, %struct.slideshow** %5, align 8
  %27 = getelementptr inbounds %struct.slideshow, %struct.slideshow* %26, i32 0, i32 7
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %48, label %30

30:                                               ; preds = %25
  %31 = load %struct.slideshow*, %struct.slideshow** %5, align 8
  %32 = getelementptr inbounds %struct.slideshow, %struct.slideshow* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %48

35:                                               ; preds = %30
  %36 = load %struct.slideshow*, %struct.slideshow** %5, align 8
  %37 = getelementptr inbounds %struct.slideshow, %struct.slideshow* %36, i32 0, i32 3
  store float 0.000000e+00, float* %37, align 4
  %38 = load %struct.slideshow*, %struct.slideshow** %5, align 8
  %39 = getelementptr inbounds %struct.slideshow, %struct.slideshow* %38, i32 0, i32 4
  store i32 0, i32* %39, align 8
  %40 = load %struct.slideshow*, %struct.slideshow** %5, align 8
  %41 = call i32 @do_transition(%struct.slideshow* %40, i32 0)
  %42 = load %struct.slideshow*, %struct.slideshow** %5, align 8
  %43 = getelementptr inbounds %struct.slideshow, %struct.slideshow* %42, i32 0, i32 1
  store i32 0, i32* %43, align 4
  %44 = load %struct.slideshow*, %struct.slideshow** %5, align 8
  %45 = getelementptr inbounds %struct.slideshow, %struct.slideshow* %44, i32 0, i32 2
  store i32 0, i32* %45, align 8
  %46 = load %struct.slideshow*, %struct.slideshow** %5, align 8
  %47 = getelementptr inbounds %struct.slideshow, %struct.slideshow* %46, i32 0, i32 5
  store i32 0, i32* %47, align 4
  br label %191

48:                                               ; preds = %30, %25, %20
  %49 = load %struct.slideshow*, %struct.slideshow** %5, align 8
  %50 = getelementptr inbounds %struct.slideshow, %struct.slideshow* %49, i32 0, i32 13
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %68, label %53

53:                                               ; preds = %48
  %54 = load %struct.slideshow*, %struct.slideshow** %5, align 8
  %55 = getelementptr inbounds %struct.slideshow, %struct.slideshow* %54, i32 0, i32 12
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %68, label %58

58:                                               ; preds = %53
  %59 = load %struct.slideshow*, %struct.slideshow** %5, align 8
  %60 = getelementptr inbounds %struct.slideshow, %struct.slideshow* %59, i32 0, i32 5
  %61 = load i32, i32* %60, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %68, label %63

63:                                               ; preds = %58
  %64 = load %struct.slideshow*, %struct.slideshow** %5, align 8
  %65 = getelementptr inbounds %struct.slideshow, %struct.slideshow* %64, i32 0, i32 11
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %63, %58, %53, %48
  br label %191

69:                                               ; preds = %63
  %70 = load %struct.slideshow*, %struct.slideshow** %5, align 8
  %71 = getelementptr inbounds %struct.slideshow, %struct.slideshow* %70, i32 0, i32 6
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %88, label %75

75:                                               ; preds = %69
  %76 = load %struct.slideshow*, %struct.slideshow** %5, align 8
  %77 = getelementptr inbounds %struct.slideshow, %struct.slideshow* %76, i32 0, i32 10
  %78 = load i32, i32* %77, align 4
  %79 = call i32* @obs_transition_get_active_source(i32 %78)
  store i32* %79, i32** %6, align 8
  %80 = load i32*, i32** %6, align 8
  %81 = icmp ne i32* %80, null
  br i1 %81, label %82, label %87

82:                                               ; preds = %75
  %83 = load i32*, i32** %6, align 8
  %84 = call i32 @obs_source_release(i32* %83)
  %85 = load %struct.slideshow*, %struct.slideshow** %5, align 8
  %86 = call i32 @do_transition(%struct.slideshow* %85, i32 1)
  br label %87

87:                                               ; preds = %82, %75
  br label %88

88:                                               ; preds = %87, %69
  %89 = load float, float* %4, align 4
  %90 = load %struct.slideshow*, %struct.slideshow** %5, align 8
  %91 = getelementptr inbounds %struct.slideshow, %struct.slideshow* %90, i32 0, i32 3
  %92 = load float, float* %91, align 4
  %93 = fadd float %92, %89
  store float %93, float* %91, align 4
  %94 = load %struct.slideshow*, %struct.slideshow** %5, align 8
  %95 = getelementptr inbounds %struct.slideshow, %struct.slideshow* %94, i32 0, i32 3
  %96 = load float, float* %95, align 4
  %97 = load %struct.slideshow*, %struct.slideshow** %5, align 8
  %98 = getelementptr inbounds %struct.slideshow, %struct.slideshow* %97, i32 0, i32 0
  %99 = load float, float* %98, align 8
  %100 = fcmp ogt float %96, %99
  br i1 %100, label %101, label %191

101:                                              ; preds = %88
  %102 = load %struct.slideshow*, %struct.slideshow** %5, align 8
  %103 = getelementptr inbounds %struct.slideshow, %struct.slideshow* %102, i32 0, i32 0
  %104 = load float, float* %103, align 8
  %105 = load %struct.slideshow*, %struct.slideshow** %5, align 8
  %106 = getelementptr inbounds %struct.slideshow, %struct.slideshow* %105, i32 0, i32 3
  %107 = load float, float* %106, align 4
  %108 = fsub float %107, %104
  store float %108, float* %106, align 4
  %109 = load %struct.slideshow*, %struct.slideshow** %5, align 8
  %110 = getelementptr inbounds %struct.slideshow, %struct.slideshow* %109, i32 0, i32 9
  %111 = load i32, i32* %110, align 8
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %135, label %113

113:                                              ; preds = %101
  %114 = load %struct.slideshow*, %struct.slideshow** %5, align 8
  %115 = getelementptr inbounds %struct.slideshow, %struct.slideshow* %114, i32 0, i32 4
  %116 = load i32, i32* %115, align 8
  %117 = load %struct.slideshow*, %struct.slideshow** %5, align 8
  %118 = getelementptr inbounds %struct.slideshow, %struct.slideshow* %117, i32 0, i32 6
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = sub nsw i32 %120, 1
  %122 = icmp eq i32 %116, %121
  br i1 %122, label %123, label %135

123:                                              ; preds = %113
  %124 = load %struct.slideshow*, %struct.slideshow** %5, align 8
  %125 = getelementptr inbounds %struct.slideshow, %struct.slideshow* %124, i32 0, i32 8
  %126 = load i64, i64* %125, align 8
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %131

128:                                              ; preds = %123
  %129 = load %struct.slideshow*, %struct.slideshow** %5, align 8
  %130 = call i32 @do_transition(%struct.slideshow* %129, i32 1)
  br label %134

131:                                              ; preds = %123
  %132 = load %struct.slideshow*, %struct.slideshow** %5, align 8
  %133 = call i32 @do_transition(%struct.slideshow* %132, i32 0)
  br label %134

134:                                              ; preds = %131, %128
  br label %191

135:                                              ; preds = %113, %101
  %136 = load %struct.slideshow*, %struct.slideshow** %5, align 8
  %137 = getelementptr inbounds %struct.slideshow, %struct.slideshow* %136, i32 0, i32 7
  %138 = load i64, i64* %137, align 8
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %167

140:                                              ; preds = %135
  %141 = load %struct.slideshow*, %struct.slideshow** %5, align 8
  %142 = getelementptr inbounds %struct.slideshow, %struct.slideshow* %141, i32 0, i32 4
  %143 = load i32, i32* %142, align 8
  %144 = sext i32 %143 to i64
  store i64 %144, i64* %7, align 8
  %145 = load %struct.slideshow*, %struct.slideshow** %5, align 8
  %146 = getelementptr inbounds %struct.slideshow, %struct.slideshow* %145, i32 0, i32 6
  %147 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = icmp sgt i32 %148, 1
  br i1 %149, label %150, label %162

150:                                              ; preds = %140
  br label %151

151:                                              ; preds = %158, %150
  %152 = load i64, i64* %7, align 8
  %153 = load %struct.slideshow*, %struct.slideshow** %5, align 8
  %154 = getelementptr inbounds %struct.slideshow, %struct.slideshow* %153, i32 0, i32 4
  %155 = load i32, i32* %154, align 8
  %156 = sext i32 %155 to i64
  %157 = icmp eq i64 %152, %156
  br i1 %157, label %158, label %161

158:                                              ; preds = %151
  %159 = load %struct.slideshow*, %struct.slideshow** %5, align 8
  %160 = call i64 @random_file(%struct.slideshow* %159)
  store i64 %160, i64* %7, align 8
  br label %151

161:                                              ; preds = %151
  br label %162

162:                                              ; preds = %161, %140
  %163 = load i64, i64* %7, align 8
  %164 = trunc i64 %163 to i32
  %165 = load %struct.slideshow*, %struct.slideshow** %5, align 8
  %166 = getelementptr inbounds %struct.slideshow, %struct.slideshow* %165, i32 0, i32 4
  store i32 %164, i32* %166, align 8
  br label %181

167:                                              ; preds = %135
  %168 = load %struct.slideshow*, %struct.slideshow** %5, align 8
  %169 = getelementptr inbounds %struct.slideshow, %struct.slideshow* %168, i32 0, i32 4
  %170 = load i32, i32* %169, align 8
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %169, align 8
  %172 = load %struct.slideshow*, %struct.slideshow** %5, align 8
  %173 = getelementptr inbounds %struct.slideshow, %struct.slideshow* %172, i32 0, i32 6
  %174 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = icmp sge i32 %171, %175
  br i1 %176, label %177, label %180

177:                                              ; preds = %167
  %178 = load %struct.slideshow*, %struct.slideshow** %5, align 8
  %179 = getelementptr inbounds %struct.slideshow, %struct.slideshow* %178, i32 0, i32 4
  store i32 0, i32* %179, align 8
  br label %180

180:                                              ; preds = %177, %167
  br label %181

181:                                              ; preds = %180, %162
  %182 = load %struct.slideshow*, %struct.slideshow** %5, align 8
  %183 = getelementptr inbounds %struct.slideshow, %struct.slideshow* %182, i32 0, i32 6
  %184 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 8
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %190

187:                                              ; preds = %181
  %188 = load %struct.slideshow*, %struct.slideshow** %5, align 8
  %189 = call i32 @do_transition(%struct.slideshow* %188, i32 0)
  br label %190

190:                                              ; preds = %187, %181
  br label %191

191:                                              ; preds = %19, %35, %68, %134, %190, %88
  ret void
}

declare dso_local i32 @do_transition(%struct.slideshow*, i32) #1

declare dso_local i32* @obs_transition_get_active_source(i32) #1

declare dso_local i32 @obs_source_release(i32*) #1

declare dso_local i64 @random_file(%struct.slideshow*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
