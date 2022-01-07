; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_command.c_property_switch_track.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_command.c_property_switch_track.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.m_property = type { i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__*, i32, %struct.track*** }
%struct.TYPE_10__ = type { i32** }
%struct.track = type { i32, i8*, i32 }
%struct.m_property_switch_arg = type { i32 }

@M_PROPERTY_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"(%d) %s (\22%s\22)\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"(%d) %s\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"auto\00", align 1
@FLAG_MARK_SELECTION = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [16 x i8] c"Track switched:\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.m_property*, i32, i8*, %struct.TYPE_11__*, i32, i32)* @property_switch_track to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @property_switch_track(%struct.m_property* %0, i32 %1, i8* %2, %struct.TYPE_11__* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.m_property*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.TYPE_11__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.track*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca %struct.m_property_switch_arg*, align 8
  store %struct.m_property* %0, %struct.m_property** %8, align 8
  store i32 %1, i32* %9, align 4
  store i8* %2, i8** %10, align 8
  store %struct.TYPE_11__* %3, %struct.TYPE_11__** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 2
  %20 = load %struct.track***, %struct.track**** %19, align 8
  %21 = load i32, i32* %12, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.track**, %struct.track*** %20, i64 %22
  %24 = load %struct.track**, %struct.track*** %23, align 8
  %25 = load i32, i32* %13, align 4
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds %struct.track*, %struct.track** %24, i64 %26
  %28 = load %struct.track*, %struct.track** %27, align 8
  store %struct.track* %28, %struct.track** %14, align 8
  %29 = load i32, i32* %9, align 4
  switch i32 %29, label %241 [
    i32 131, label %30
    i32 130, label %65
    i32 128, label %128
    i32 129, label %201
  ]

30:                                               ; preds = %6
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %47

35:                                               ; preds = %30
  %36 = load %struct.track*, %struct.track** %14, align 8
  %37 = icmp ne %struct.track* %36, null
  br i1 %37, label %38, label %42

38:                                               ; preds = %35
  %39 = load %struct.track*, %struct.track** %14, align 8
  %40 = getelementptr inbounds %struct.track, %struct.track* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  br label %43

42:                                               ; preds = %35
  br label %43

43:                                               ; preds = %42, %38
  %44 = phi i32 [ %41, %38 ], [ -2, %42 ]
  %45 = load i8*, i8** %10, align 8
  %46 = bitcast i8* %45 to i32*
  store i32 %44, i32* %46, align 4
  br label %63

47:                                               ; preds = %30
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 0
  %52 = load i32**, i32*** %51, align 8
  %53 = load i32, i32* %12, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32*, i32** %52, i64 %54
  %56 = load i32*, i32** %55, align 8
  %57 = load i32, i32* %13, align 4
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = load i8*, i8** %10, align 8
  %62 = bitcast i8* %61 to i32*
  store i32 %60, i32* %62, align 4
  br label %63

63:                                               ; preds = %47, %43
  %64 = load i32, i32* @M_PROPERTY_OK, align 4
  store i32 %64, i32* %7, align 4
  br label %247

65:                                               ; preds = %6
  %66 = load %struct.track*, %struct.track** %14, align 8
  %67 = icmp ne %struct.track* %66, null
  br i1 %67, label %68, label %100

68:                                               ; preds = %65
  %69 = load %struct.track*, %struct.track** %14, align 8
  %70 = getelementptr inbounds %struct.track, %struct.track* %69, i32 0, i32 1
  %71 = load i8*, i8** %70, align 8
  store i8* %71, i8** %15, align 8
  %72 = load i8*, i8** %15, align 8
  %73 = icmp ne i8* %72, null
  br i1 %73, label %75, label %74

74:                                               ; preds = %68
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %15, align 8
  br label %75

75:                                               ; preds = %74, %68
  %76 = load %struct.track*, %struct.track** %14, align 8
  %77 = getelementptr inbounds %struct.track, %struct.track* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %91

80:                                               ; preds = %75
  %81 = load %struct.track*, %struct.track** %14, align 8
  %82 = getelementptr inbounds %struct.track, %struct.track* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load i8*, i8** %15, align 8
  %85 = load %struct.track*, %struct.track** %14, align 8
  %86 = getelementptr inbounds %struct.track, %struct.track* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = call i8* (i32*, i8*, i32, i8*, ...) @talloc_asprintf(i32* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %83, i8* %84, i32 %87)
  %89 = load i8*, i8** %10, align 8
  %90 = bitcast i8* %89 to i8**
  store i8* %88, i8** %90, align 8
  br label %99

91:                                               ; preds = %75
  %92 = load %struct.track*, %struct.track** %14, align 8
  %93 = getelementptr inbounds %struct.track, %struct.track* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load i8*, i8** %15, align 8
  %96 = call i8* (i32*, i8*, i32, i8*, ...) @talloc_asprintf(i32* null, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %94, i8* %95)
  %97 = load i8*, i8** %10, align 8
  %98 = bitcast i8* %97 to i8**
  store i8* %96, i8** %98, align 8
  br label %99

99:                                               ; preds = %91, %80
  br label %126

100:                                              ; preds = %65
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8** %16, align 8
  %101 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %102 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 8
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %121, label %105

105:                                              ; preds = %100
  %106 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %107 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %106, i32 0, i32 0
  %108 = load %struct.TYPE_10__*, %struct.TYPE_10__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %108, i32 0, i32 0
  %110 = load i32**, i32*** %109, align 8
  %111 = load i32, i32* %12, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i32*, i32** %110, i64 %112
  %114 = load i32*, i32** %113, align 8
  %115 = load i32, i32* %13, align 4
  %116 = zext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %114, i64 %116
  %118 = load i32, i32* %117, align 4
  %119 = icmp eq i32 %118, -1
  br i1 %119, label %120, label %121

120:                                              ; preds = %105
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8** %16, align 8
  br label %121

121:                                              ; preds = %120, %105, %100
  %122 = load i8*, i8** %16, align 8
  %123 = call i8* @talloc_strdup(i32* null, i8* %122)
  %124 = load i8*, i8** %10, align 8
  %125 = bitcast i8* %124 to i8**
  store i8* %123, i8** %125, align 8
  br label %126

126:                                              ; preds = %121, %99
  %127 = load i32, i32* @M_PROPERTY_OK, align 4
  store i32 %127, i32* %7, align 4
  br label %247

128:                                              ; preds = %6
  %129 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %130 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 8
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %170

133:                                              ; preds = %128
  %134 = load i8*, i8** %10, align 8
  %135 = bitcast i8* %134 to %struct.m_property_switch_arg*
  store %struct.m_property_switch_arg* %135, %struct.m_property_switch_arg** %17, align 8
  br label %136

136:                                              ; preds = %153, %133
  %137 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %138 = load i32, i32* %13, align 4
  %139 = load %struct.m_property_switch_arg*, %struct.m_property_switch_arg** %17, align 8
  %140 = getelementptr inbounds %struct.m_property_switch_arg, %struct.m_property_switch_arg* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = icmp sge i32 %141, 0
  %143 = zext i1 %142 to i64
  %144 = select i1 %142, i32 1, i32 -1
  %145 = load %struct.track*, %struct.track** %14, align 8
  %146 = call %struct.track* @track_next(%struct.TYPE_11__* %137, i32 %138, i32 %144, %struct.track* %145)
  store %struct.track* %146, %struct.track** %14, align 8
  %147 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %148 = load i32, i32* %12, align 4
  %149 = load i32, i32* %13, align 4
  %150 = load %struct.track*, %struct.track** %14, align 8
  %151 = load i32, i32* @FLAG_MARK_SELECTION, align 4
  %152 = call i32 @mp_switch_track_n(%struct.TYPE_11__* %147, i32 %148, i32 %149, %struct.track* %150, i32 %151)
  br label %153

153:                                              ; preds = %136
  %154 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %155 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %154, i32 0, i32 2
  %156 = load %struct.track***, %struct.track**** %155, align 8
  %157 = load i32, i32* %12, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds %struct.track**, %struct.track*** %156, i64 %158
  %160 = load %struct.track**, %struct.track*** %159, align 8
  %161 = load i32, i32* %13, align 4
  %162 = zext i32 %161 to i64
  %163 = getelementptr inbounds %struct.track*, %struct.track** %160, i64 %162
  %164 = load %struct.track*, %struct.track** %163, align 8
  %165 = load %struct.track*, %struct.track** %14, align 8
  %166 = icmp ne %struct.track* %164, %165
  br i1 %166, label %136, label %167

167:                                              ; preds = %153
  %168 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %169 = call i32 @print_track_list(%struct.TYPE_11__* %168, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0))
  br label %199

170:                                              ; preds = %128
  %171 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %172 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %171, i32 0, i32 0
  %173 = load %struct.TYPE_10__*, %struct.TYPE_10__** %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %173, i32 0, i32 0
  %175 = load i32**, i32*** %174, align 8
  %176 = load i32, i32* %12, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds i32*, i32** %175, i64 %177
  %179 = load i32*, i32** %178, align 8
  %180 = load i32, i32* %13, align 4
  %181 = zext i32 %180 to i64
  %182 = getelementptr inbounds i32, i32* %179, i64 %181
  %183 = load i32, i32* %182, align 4
  %184 = icmp eq i32 %183, -1
  %185 = zext i1 %184 to i64
  %186 = select i1 %184, i32 -2, i32 -1
  %187 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %188 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %187, i32 0, i32 0
  %189 = load %struct.TYPE_10__*, %struct.TYPE_10__** %188, align 8
  %190 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %189, i32 0, i32 0
  %191 = load i32**, i32*** %190, align 8
  %192 = load i32, i32* %12, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds i32*, i32** %191, i64 %193
  %195 = load i32*, i32** %194, align 8
  %196 = load i32, i32* %13, align 4
  %197 = zext i32 %196 to i64
  %198 = getelementptr inbounds i32, i32* %195, i64 %197
  store i32 %186, i32* %198, align 4
  br label %199

199:                                              ; preds = %170, %167
  %200 = load i32, i32* @M_PROPERTY_OK, align 4
  store i32 %200, i32* %7, align 4
  br label %247

201:                                              ; preds = %6
  %202 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %203 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %202, i32 0, i32 1
  %204 = load i32, i32* %203, align 8
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %223

206:                                              ; preds = %201
  %207 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %208 = load i32, i32* %13, align 4
  %209 = load i8*, i8** %10, align 8
  %210 = bitcast i8* %209 to i32*
  %211 = load i32, i32* %210, align 4
  %212 = call %struct.track* @mp_track_by_tid(%struct.TYPE_11__* %207, i32 %208, i32 %211)
  store %struct.track* %212, %struct.track** %14, align 8
  %213 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %214 = load i32, i32* %12, align 4
  %215 = load i32, i32* %13, align 4
  %216 = load %struct.track*, %struct.track** %14, align 8
  %217 = load i32, i32* @FLAG_MARK_SELECTION, align 4
  %218 = call i32 @mp_switch_track_n(%struct.TYPE_11__* %213, i32 %214, i32 %215, %struct.track* %216, i32 %217)
  %219 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %220 = call i32 @print_track_list(%struct.TYPE_11__* %219, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0))
  %221 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %222 = call i32 @mp_wakeup_core(%struct.TYPE_11__* %221)
  br label %239

223:                                              ; preds = %201
  %224 = load i8*, i8** %10, align 8
  %225 = bitcast i8* %224 to i32*
  %226 = load i32, i32* %225, align 4
  %227 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %228 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %227, i32 0, i32 0
  %229 = load %struct.TYPE_10__*, %struct.TYPE_10__** %228, align 8
  %230 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %229, i32 0, i32 0
  %231 = load i32**, i32*** %230, align 8
  %232 = load i32, i32* %12, align 4
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds i32*, i32** %231, i64 %233
  %235 = load i32*, i32** %234, align 8
  %236 = load i32, i32* %13, align 4
  %237 = zext i32 %236 to i64
  %238 = getelementptr inbounds i32, i32* %235, i64 %237
  store i32 %226, i32* %238, align 4
  br label %239

239:                                              ; preds = %223, %206
  %240 = load i32, i32* @M_PROPERTY_OK, align 4
  store i32 %240, i32* %7, align 4
  br label %247

241:                                              ; preds = %6
  %242 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %243 = load %struct.m_property*, %struct.m_property** %8, align 8
  %244 = load i32, i32* %9, align 4
  %245 = load i8*, i8** %10, align 8
  %246 = call i32 @mp_property_generic_option(%struct.TYPE_11__* %242, %struct.m_property* %243, i32 %244, i8* %245)
  store i32 %246, i32* %7, align 4
  br label %247

247:                                              ; preds = %241, %239, %199, %126, %63
  %248 = load i32, i32* %7, align 4
  ret i32 %248
}

declare dso_local i8* @talloc_asprintf(i32*, i8*, i32, i8*, ...) #1

declare dso_local i8* @talloc_strdup(i32*, i8*) #1

declare dso_local %struct.track* @track_next(%struct.TYPE_11__*, i32, i32, %struct.track*) #1

declare dso_local i32 @mp_switch_track_n(%struct.TYPE_11__*, i32, i32, %struct.track*, i32) #1

declare dso_local i32 @print_track_list(%struct.TYPE_11__*, i8*) #1

declare dso_local %struct.track* @mp_track_by_tid(%struct.TYPE_11__*, i32, i32) #1

declare dso_local i32 @mp_wakeup_core(%struct.TYPE_11__*) #1

declare dso_local i32 @mp_property_generic_option(%struct.TYPE_11__*, %struct.m_property*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
