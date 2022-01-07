; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_command.c_cmd_track_add.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_command.c_cmd_track_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_cmd_ctx = type { i32, %struct.TYPE_8__*, %struct.TYPE_5__*, i64, %struct.MPContext* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i8* }
%struct.TYPE_5__ = type { i32 }
%struct.MPContext = type { i32, i64, %struct.TYPE_6__*, %struct.track**, i64 }
%struct.TYPE_6__ = type { i32** }
%struct.track = type { i64, i32, i8*, i8*, i32 }

@FLAG_MARK_SELECTION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"Track switched:\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"Track added:\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @cmd_track_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cmd_track_add(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.mp_cmd_ctx*, align 8
  %4 = alloca %struct.MPContext*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.track*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.track*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %12 = load i8*, i8** %2, align 8
  %13 = bitcast i8* %12 to %struct.mp_cmd_ctx*
  store %struct.mp_cmd_ctx* %13, %struct.mp_cmd_ctx** %3, align 8
  %14 = load %struct.mp_cmd_ctx*, %struct.mp_cmd_ctx** %3, align 8
  %15 = getelementptr inbounds %struct.mp_cmd_ctx, %struct.mp_cmd_ctx* %14, i32 0, i32 4
  %16 = load %struct.MPContext*, %struct.MPContext** %15, align 8
  store %struct.MPContext* %16, %struct.MPContext** %4, align 8
  %17 = load %struct.mp_cmd_ctx*, %struct.mp_cmd_ctx** %3, align 8
  %18 = getelementptr inbounds %struct.mp_cmd_ctx, %struct.mp_cmd_ctx* %17, i32 0, i32 3
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to i32*
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %5, align 4
  %22 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %23 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %22, i32 0, i32 4
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %1
  %27 = load %struct.mp_cmd_ctx*, %struct.mp_cmd_ctx** %3, align 8
  %28 = getelementptr inbounds %struct.mp_cmd_ctx, %struct.mp_cmd_ctx* %27, i32 0, i32 0
  store i32 0, i32* %28, align 8
  br label %221

29:                                               ; preds = %1
  %30 = load %struct.mp_cmd_ctx*, %struct.mp_cmd_ctx** %3, align 8
  %31 = getelementptr inbounds %struct.mp_cmd_ctx, %struct.mp_cmd_ctx* %30, i32 0, i32 1
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i64 1
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp eq i32 %36, 2
  br i1 %37, label %38, label %83

38:                                               ; preds = %29
  %39 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %40 = load i32, i32* %5, align 4
  %41 = load %struct.mp_cmd_ctx*, %struct.mp_cmd_ctx** %3, align 8
  %42 = getelementptr inbounds %struct.mp_cmd_ctx, %struct.mp_cmd_ctx* %41, i32 0, i32 1
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i64 0
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 1
  %47 = load i8*, i8** %46, align 8
  %48 = call %struct.track* @find_track_with_url(%struct.MPContext* %39, i32 %40, i8* %47)
  store %struct.track* %48, %struct.track** %6, align 8
  %49 = load %struct.track*, %struct.track** %6, align 8
  %50 = icmp ne %struct.track* %49, null
  br i1 %50, label %51, label %82

51:                                               ; preds = %38
  %52 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %53 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %66

56:                                               ; preds = %51
  %57 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %58 = load %struct.track*, %struct.track** %6, align 8
  %59 = getelementptr inbounds %struct.track, %struct.track* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.track*, %struct.track** %6, align 8
  %62 = load i32, i32* @FLAG_MARK_SELECTION, align 4
  %63 = call i32 @mp_switch_track(%struct.MPContext* %57, i64 %60, %struct.track* %61, i32 %62)
  %64 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %65 = call i32 @print_track_list(%struct.MPContext* %64, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  br label %81

66:                                               ; preds = %51
  %67 = load %struct.track*, %struct.track** %6, align 8
  %68 = getelementptr inbounds %struct.track, %struct.track* %67, i32 0, i32 4
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %71 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %70, i32 0, i32 2
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  %74 = load i32**, i32*** %73, align 8
  %75 = getelementptr inbounds i32*, i32** %74, i64 0
  %76 = load i32*, i32** %75, align 8
  %77 = load %struct.track*, %struct.track** %6, align 8
  %78 = getelementptr inbounds %struct.track, %struct.track* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = getelementptr inbounds i32, i32* %76, i64 %79
  store i32 %69, i32* %80, align 4
  br label %81

81:                                               ; preds = %66, %56
  br label %221

82:                                               ; preds = %38
  br label %83

83:                                               ; preds = %82, %29
  %84 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %85 = load %struct.mp_cmd_ctx*, %struct.mp_cmd_ctx** %3, align 8
  %86 = getelementptr inbounds %struct.mp_cmd_ctx, %struct.mp_cmd_ctx* %85, i32 0, i32 1
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i64 0
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 1
  %91 = load i8*, i8** %90, align 8
  %92 = load i32, i32* %5, align 4
  %93 = load %struct.mp_cmd_ctx*, %struct.mp_cmd_ctx** %3, align 8
  %94 = getelementptr inbounds %struct.mp_cmd_ctx, %struct.mp_cmd_ctx* %93, i32 0, i32 2
  %95 = load %struct.TYPE_5__*, %struct.TYPE_5__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @mp_add_external_file(%struct.MPContext* %84, i8* %91, i32 %92, i32 %97)
  store i32 %98, i32* %7, align 4
  %99 = load i32, i32* %7, align 4
  %100 = icmp slt i32 %99, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %83
  %102 = load %struct.mp_cmd_ctx*, %struct.mp_cmd_ctx** %3, align 8
  %103 = getelementptr inbounds %struct.mp_cmd_ctx, %struct.mp_cmd_ctx* %102, i32 0, i32 0
  store i32 0, i32* %103, align 8
  br label %221

104:                                              ; preds = %83
  %105 = load i32, i32* %7, align 4
  store i32 %105, i32* %8, align 4
  br label %106

106:                                              ; preds = %210, %104
  %107 = load i32, i32* %8, align 4
  %108 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %109 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = icmp slt i32 %107, %110
  br i1 %111, label %112, label %213

112:                                              ; preds = %106
  %113 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %114 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %113, i32 0, i32 3
  %115 = load %struct.track**, %struct.track*** %114, align 8
  %116 = load i32, i32* %8, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.track*, %struct.track** %115, i64 %117
  %119 = load %struct.track*, %struct.track** %118, align 8
  store %struct.track* %119, %struct.track** %9, align 8
  %120 = load %struct.mp_cmd_ctx*, %struct.mp_cmd_ctx** %3, align 8
  %121 = getelementptr inbounds %struct.mp_cmd_ctx, %struct.mp_cmd_ctx* %120, i32 0, i32 1
  %122 = load %struct.TYPE_8__*, %struct.TYPE_8__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i64 1
  %124 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = icmp eq i32 %126, 1
  br i1 %127, label %128, label %131

128:                                              ; preds = %112
  %129 = load %struct.track*, %struct.track** %9, align 8
  %130 = getelementptr inbounds %struct.track, %struct.track* %129, i32 0, i32 1
  store i32 1, i32* %130, align 8
  br label %165

131:                                              ; preds = %112
  %132 = load i32, i32* %8, align 4
  %133 = load i32, i32* %7, align 4
  %134 = icmp eq i32 %132, %133
  br i1 %134, label %135, label %164

135:                                              ; preds = %131
  %136 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %137 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %136, i32 0, i32 1
  %138 = load i64, i64* %137, align 8
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %148

140:                                              ; preds = %135
  %141 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %142 = load %struct.track*, %struct.track** %9, align 8
  %143 = getelementptr inbounds %struct.track, %struct.track* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = load %struct.track*, %struct.track** %9, align 8
  %146 = load i32, i32* @FLAG_MARK_SELECTION, align 4
  %147 = call i32 @mp_switch_track(%struct.MPContext* %141, i64 %144, %struct.track* %145, i32 %146)
  br label %163

148:                                              ; preds = %135
  %149 = load %struct.track*, %struct.track** %9, align 8
  %150 = getelementptr inbounds %struct.track, %struct.track* %149, i32 0, i32 4
  %151 = load i32, i32* %150, align 8
  %152 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %153 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %152, i32 0, i32 2
  %154 = load %struct.TYPE_6__*, %struct.TYPE_6__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %154, i32 0, i32 0
  %156 = load i32**, i32*** %155, align 8
  %157 = getelementptr inbounds i32*, i32** %156, i64 0
  %158 = load i32*, i32** %157, align 8
  %159 = load %struct.track*, %struct.track** %9, align 8
  %160 = getelementptr inbounds %struct.track, %struct.track* %159, i32 0, i32 0
  %161 = load i64, i64* %160, align 8
  %162 = getelementptr inbounds i32, i32* %158, i64 %161
  store i32 %151, i32* %162, align 4
  br label %163

163:                                              ; preds = %148, %140
  br label %164

164:                                              ; preds = %163, %131
  br label %165

165:                                              ; preds = %164, %128
  %166 = load %struct.mp_cmd_ctx*, %struct.mp_cmd_ctx** %3, align 8
  %167 = getelementptr inbounds %struct.mp_cmd_ctx, %struct.mp_cmd_ctx* %166, i32 0, i32 1
  %168 = load %struct.TYPE_8__*, %struct.TYPE_8__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %168, i64 2
  %170 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %170, i32 0, i32 1
  %172 = load i8*, i8** %171, align 8
  store i8* %172, i8** %10, align 8
  %173 = load i8*, i8** %10, align 8
  %174 = icmp ne i8* %173, null
  br i1 %174, label %175, label %187

175:                                              ; preds = %165
  %176 = load i8*, i8** %10, align 8
  %177 = getelementptr inbounds i8, i8* %176, i64 0
  %178 = load i8, i8* %177, align 1
  %179 = sext i8 %178 to i32
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %187

181:                                              ; preds = %175
  %182 = load %struct.track*, %struct.track** %9, align 8
  %183 = load i8*, i8** %10, align 8
  %184 = call i8* @talloc_strdup(%struct.track* %182, i8* %183)
  %185 = load %struct.track*, %struct.track** %9, align 8
  %186 = getelementptr inbounds %struct.track, %struct.track* %185, i32 0, i32 3
  store i8* %184, i8** %186, align 8
  br label %187

187:                                              ; preds = %181, %175, %165
  %188 = load %struct.mp_cmd_ctx*, %struct.mp_cmd_ctx** %3, align 8
  %189 = getelementptr inbounds %struct.mp_cmd_ctx, %struct.mp_cmd_ctx* %188, i32 0, i32 1
  %190 = load %struct.TYPE_8__*, %struct.TYPE_8__** %189, align 8
  %191 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %190, i64 3
  %192 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %191, i32 0, i32 0
  %193 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %192, i32 0, i32 1
  %194 = load i8*, i8** %193, align 8
  store i8* %194, i8** %11, align 8
  %195 = load i8*, i8** %11, align 8
  %196 = icmp ne i8* %195, null
  br i1 %196, label %197, label %209

197:                                              ; preds = %187
  %198 = load i8*, i8** %11, align 8
  %199 = getelementptr inbounds i8, i8* %198, i64 0
  %200 = load i8, i8* %199, align 1
  %201 = sext i8 %200 to i32
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %209

203:                                              ; preds = %197
  %204 = load %struct.track*, %struct.track** %9, align 8
  %205 = load i8*, i8** %11, align 8
  %206 = call i8* @talloc_strdup(%struct.track* %204, i8* %205)
  %207 = load %struct.track*, %struct.track** %9, align 8
  %208 = getelementptr inbounds %struct.track, %struct.track* %207, i32 0, i32 2
  store i8* %206, i8** %208, align 8
  br label %209

209:                                              ; preds = %203, %197, %187
  br label %210

210:                                              ; preds = %209
  %211 = load i32, i32* %8, align 4
  %212 = add nsw i32 %211, 1
  store i32 %212, i32* %8, align 4
  br label %106

213:                                              ; preds = %106
  %214 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %215 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %214, i32 0, i32 1
  %216 = load i64, i64* %215, align 8
  %217 = icmp ne i64 %216, 0
  br i1 %217, label %218, label %221

218:                                              ; preds = %213
  %219 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %220 = call i32 @print_track_list(%struct.MPContext* %219, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  br label %221

221:                                              ; preds = %26, %81, %101, %218, %213
  ret void
}

declare dso_local %struct.track* @find_track_with_url(%struct.MPContext*, i32, i8*) #1

declare dso_local i32 @mp_switch_track(%struct.MPContext*, i64, %struct.track*, i32) #1

declare dso_local i32 @print_track_list(%struct.MPContext*, i8*) #1

declare dso_local i32 @mp_add_external_file(%struct.MPContext*, i8*, i32, i32) #1

declare dso_local i8* @talloc_strdup(%struct.track*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
