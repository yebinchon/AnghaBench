; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_loadfile.c_select_default_track.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_loadfile.c_select_default_track.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.track = type { i32, i32, i64, i64, i32, i32, i32, i32, i64 }
%struct.MPContext = type { i32, %struct.MPOpts*, %struct.track** }
%struct.MPOpts = type { i32**, i8***, i32, i32 }

@STREAM_VIDEO = common dso_local global i32 0, align 4
@STREAM_AUDIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.track* @select_default_track(%struct.MPContext* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.track*, align 8
  %5 = alloca %struct.MPContext*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.MPOpts*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8**, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.track*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.track*, align 8
  store %struct.MPContext* %0, %struct.MPContext** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %15 = load %struct.MPContext*, %struct.MPContext** %5, align 8
  %16 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %15, i32 0, i32 1
  %17 = load %struct.MPOpts*, %struct.MPOpts** %16, align 8
  store %struct.MPOpts* %17, %struct.MPOpts** %8, align 8
  %18 = load %struct.MPOpts*, %struct.MPOpts** %8, align 8
  %19 = getelementptr inbounds %struct.MPOpts, %struct.MPOpts* %18, i32 0, i32 0
  %20 = load i32**, i32*** %19, align 8
  %21 = load i32, i32* %6, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32*, i32** %20, i64 %22
  %24 = load i32*, i32** %23, align 8
  %25 = load i32, i32* %7, align 4
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %9, align 4
  %29 = load %struct.MPOpts*, %struct.MPOpts** %8, align 8
  %30 = getelementptr inbounds %struct.MPOpts, %struct.MPOpts* %29, i32 0, i32 1
  %31 = load i8***, i8**** %30, align 8
  %32 = load i32, i32* %7, align 4
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds i8**, i8*** %31, i64 %33
  %35 = load i8**, i8*** %34, align 8
  store i8** %35, i8*** %10, align 8
  %36 = load i32, i32* %9, align 4
  %37 = icmp eq i32 %36, -2
  br i1 %37, label %38, label %39

38:                                               ; preds = %3
  store %struct.track* null, %struct.track** %4, align 8
  br label %176

39:                                               ; preds = %3
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* @STREAM_VIDEO, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %47, label %43

43:                                               ; preds = %39
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* @STREAM_AUDIO, align 4
  %46 = icmp eq i32 %44, %45
  br label %47

47:                                               ; preds = %43, %39
  %48 = phi i1 [ true, %39 ], [ %46, %43 ]
  %49 = zext i1 %48 to i32
  store i32 %49, i32* %11, align 4
  store %struct.track* null, %struct.track** %12, align 8
  store i32 0, i32* %13, align 4
  br label %50

50:                                               ; preds = %107, %47
  %51 = load i32, i32* %13, align 4
  %52 = load %struct.MPContext*, %struct.MPContext** %5, align 8
  %53 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = icmp slt i32 %51, %54
  br i1 %55, label %56, label %110

56:                                               ; preds = %50
  %57 = load %struct.MPContext*, %struct.MPContext** %5, align 8
  %58 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %57, i32 0, i32 2
  %59 = load %struct.track**, %struct.track*** %58, align 8
  %60 = load i32, i32* %13, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.track*, %struct.track** %59, i64 %61
  %63 = load %struct.track*, %struct.track** %62, align 8
  store %struct.track* %63, %struct.track** %14, align 8
  %64 = load %struct.track*, %struct.track** %14, align 8
  %65 = getelementptr inbounds %struct.track, %struct.track* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* %7, align 4
  %68 = icmp ne i32 %66, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %56
  br label %107

70:                                               ; preds = %56
  %71 = load %struct.track*, %struct.track** %14, align 8
  %72 = getelementptr inbounds %struct.track, %struct.track* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* %9, align 4
  %75 = icmp eq i32 %73, %74
  br i1 %75, label %76, label %78

76:                                               ; preds = %70
  %77 = load %struct.track*, %struct.track** %14, align 8
  store %struct.track* %77, %struct.track** %4, align 8
  br label %176

78:                                               ; preds = %70
  %79 = load %struct.track*, %struct.track** %14, align 8
  %80 = getelementptr inbounds %struct.track, %struct.track* %79, i32 0, i32 8
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %78
  br label %107

84:                                               ; preds = %78
  %85 = load %struct.MPContext*, %struct.MPContext** %5, align 8
  %86 = load i32, i32* %6, align 4
  %87 = load i32, i32* %7, align 4
  %88 = load %struct.track*, %struct.track** %14, align 8
  %89 = call i64 @duplicate_track(%struct.MPContext* %85, i32 %86, i32 %87, %struct.track* %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %84
  br label %107

92:                                               ; preds = %84
  %93 = load %struct.track*, %struct.track** %12, align 8
  %94 = icmp ne %struct.track* %93, null
  br i1 %94, label %95, label %104

95:                                               ; preds = %92
  %96 = load %struct.track*, %struct.track** %14, align 8
  %97 = load %struct.track*, %struct.track** %12, align 8
  %98 = load i8**, i8*** %10, align 8
  %99 = load %struct.MPContext*, %struct.MPContext** %5, align 8
  %100 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %99, i32 0, i32 1
  %101 = load %struct.MPOpts*, %struct.MPOpts** %100, align 8
  %102 = call i64 @compare_track(%struct.track* %96, %struct.track* %97, i8** %98, %struct.MPOpts* %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %95, %92
  %105 = load %struct.track*, %struct.track** %14, align 8
  store %struct.track* %105, %struct.track** %12, align 8
  br label %106

106:                                              ; preds = %104, %95
  br label %107

107:                                              ; preds = %106, %91, %83, %69
  %108 = load i32, i32* %13, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %13, align 4
  br label %50

110:                                              ; preds = %50
  %111 = load %struct.track*, %struct.track** %12, align 8
  %112 = icmp ne %struct.track* %111, null
  br i1 %112, label %113, label %144

113:                                              ; preds = %110
  %114 = load i32, i32* %11, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %144, label %116

116:                                              ; preds = %113
  %117 = load %struct.track*, %struct.track** %12, align 8
  %118 = getelementptr inbounds %struct.track, %struct.track* %117, i32 0, i32 2
  %119 = load i64, i64* %118, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %126

121:                                              ; preds = %116
  %122 = load %struct.track*, %struct.track** %12, align 8
  %123 = getelementptr inbounds %struct.track, %struct.track* %122, i32 0, i32 7
  %124 = load i32, i32* %123, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %144

126:                                              ; preds = %121, %116
  %127 = load i8**, i8*** %10, align 8
  %128 = load %struct.track*, %struct.track** %12, align 8
  %129 = getelementptr inbounds %struct.track, %struct.track* %128, i32 0, i32 6
  %130 = load i32, i32* %129, align 8
  %131 = call i32 @match_lang(i8** %127, i32 %130)
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %144, label %133

133:                                              ; preds = %126
  %134 = load %struct.track*, %struct.track** %12, align 8
  %135 = getelementptr inbounds %struct.track, %struct.track* %134, i32 0, i32 5
  %136 = load i32, i32* %135, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %144, label %138

138:                                              ; preds = %133
  %139 = load %struct.track*, %struct.track** %12, align 8
  %140 = getelementptr inbounds %struct.track, %struct.track* %139, i32 0, i32 4
  %141 = load i32, i32* %140, align 8
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %144, label %143

143:                                              ; preds = %138
  store %struct.track* null, %struct.track** %12, align 8
  br label %144

144:                                              ; preds = %143, %138, %133, %126, %121, %113, %110
  %145 = load %struct.track*, %struct.track** %12, align 8
  %146 = icmp ne %struct.track* %145, null
  br i1 %146, label %147, label %160

147:                                              ; preds = %144
  %148 = load %struct.track*, %struct.track** %12, align 8
  %149 = getelementptr inbounds %struct.track, %struct.track* %148, i32 0, i32 3
  %150 = load i64, i64* %149, align 8
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %160

152:                                              ; preds = %147
  %153 = load %struct.MPContext*, %struct.MPContext** %5, align 8
  %154 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %153, i32 0, i32 1
  %155 = load %struct.MPOpts*, %struct.MPOpts** %154, align 8
  %156 = getelementptr inbounds %struct.MPOpts, %struct.MPOpts* %155, i32 0, i32 3
  %157 = load i32, i32* %156, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %160, label %159

159:                                              ; preds = %152
  store %struct.track* null, %struct.track** %12, align 8
  br label %160

160:                                              ; preds = %159, %152, %147, %144
  %161 = load %struct.track*, %struct.track** %12, align 8
  %162 = icmp ne %struct.track* %161, null
  br i1 %162, label %163, label %174

163:                                              ; preds = %160
  %164 = load %struct.MPOpts*, %struct.MPOpts** %8, align 8
  %165 = getelementptr inbounds %struct.MPOpts, %struct.MPOpts* %164, i32 0, i32 2
  %166 = load i32, i32* %165, align 8
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %174, label %168

168:                                              ; preds = %163
  %169 = load %struct.track*, %struct.track** %12, align 8
  %170 = getelementptr inbounds %struct.track, %struct.track* %169, i32 0, i32 2
  %171 = load i64, i64* %170, align 8
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %174

173:                                              ; preds = %168
  store %struct.track* null, %struct.track** %12, align 8
  br label %174

174:                                              ; preds = %173, %168, %163, %160
  %175 = load %struct.track*, %struct.track** %12, align 8
  store %struct.track* %175, %struct.track** %4, align 8
  br label %176

176:                                              ; preds = %174, %76, %38
  %177 = load %struct.track*, %struct.track** %4, align 8
  ret %struct.track* %177
}

declare dso_local i64 @duplicate_track(%struct.MPContext*, i32, i32, %struct.track*) #1

declare dso_local i64 @compare_track(%struct.track*, %struct.track*, i8**, %struct.MPOpts*) #1

declare dso_local i32 @match_lang(i8**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
