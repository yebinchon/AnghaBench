; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-output.c_obs_encoded_output_pause.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-output.c_obs_encoded_output_pause.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_9__**, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_10__, i32 }
%struct.TYPE_10__ = type { i32, i8* }

@MAX_AUDIO_MIXES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i32)* @obs_encoded_output_pause to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @obs_encoded_output_pause(%struct.TYPE_8__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  store i32 %1, i32* %4, align 4
  %17 = load i32, i32* @MAX_AUDIO_MIXES, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %6, align 8
  %20 = alloca %struct.TYPE_9__*, i64 %18, align 16
  store i64 %18, i64* %7, align 8
  store i32 0, i32* %9, align 4
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 1
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %22, align 8
  store %struct.TYPE_9__* %23, %struct.TYPE_9__** %5, align 8
  store i64 0, i64* %10, align 8
  br label %24

24:                                               ; preds = %38, %2
  %25 = load i64, i64* %10, align 8
  %26 = load i32, i32* @MAX_AUDIO_MIXES, align 4
  %27 = sext i32 %26 to i64
  %28 = icmp ult i64 %25, %27
  br i1 %28, label %29, label %41

29:                                               ; preds = %24
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %31, align 8
  %33 = load i64, i64* %10, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %32, i64 %33
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %34, align 8
  %36 = load i64, i64* %10, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %20, i64 %36
  store %struct.TYPE_9__* %35, %struct.TYPE_9__** %37, align 8
  br label %38

38:                                               ; preds = %29
  %39 = load i64, i64* %10, align 8
  %40 = add i64 %39, 1
  store i64 %40, i64* %10, align 8
  br label %24

41:                                               ; preds = %24
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 0
  %45 = call i32 @pthread_mutex_lock(i32* %44)
  store i64 0, i64* %11, align 8
  br label %46

46:                                               ; preds = %64, %41
  %47 = load i64, i64* %11, align 8
  %48 = load i32, i32* @MAX_AUDIO_MIXES, align 4
  %49 = sext i32 %48 to i64
  %50 = icmp ult i64 %47, %49
  br i1 %50, label %51, label %67

51:                                               ; preds = %46
  %52 = load i64, i64* %11, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %20, i64 %52
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %53, align 8
  %55 = icmp ne %struct.TYPE_9__* %54, null
  br i1 %55, label %56, label %63

56:                                               ; preds = %51
  %57 = load i64, i64* %11, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %20, i64 %57
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 0
  %62 = call i32 @pthread_mutex_lock(i32* %61)
  br label %63

63:                                               ; preds = %56, %51
  br label %64

64:                                               ; preds = %63
  %65 = load i64, i64* %11, align 8
  %66 = add i64 %65, 1
  store i64 %66, i64* %11, align 8
  br label %46

67:                                               ; preds = %46
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 0
  %70 = call i8* @get_closest_v_ts(%struct.TYPE_10__* %69)
  store i8* %70, i8** %8, align 8
  %71 = load i32, i32* %4, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %137

73:                                               ; preds = %67
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 0
  %76 = call i32 @pause_can_start(%struct.TYPE_10__* %75)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %79, label %78

78:                                               ; preds = %73
  br label %202

79:                                               ; preds = %73
  store i64 0, i64* %12, align 8
  br label %80

80:                                               ; preds = %99, %79
  %81 = load i64, i64* %12, align 8
  %82 = load i32, i32* @MAX_AUDIO_MIXES, align 4
  %83 = sext i32 %82 to i64
  %84 = icmp ult i64 %81, %83
  br i1 %84, label %85, label %102

85:                                               ; preds = %80
  %86 = load i64, i64* %12, align 8
  %87 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %20, i64 %86
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %87, align 8
  %89 = icmp ne %struct.TYPE_9__* %88, null
  br i1 %89, label %90, label %98

90:                                               ; preds = %85
  %91 = load i64, i64* %12, align 8
  %92 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %20, i64 %91
  %93 = load %struct.TYPE_9__*, %struct.TYPE_9__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 0
  %95 = call i32 @pause_can_start(%struct.TYPE_10__* %94)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %98, label %97

97:                                               ; preds = %90
  br label %202

98:                                               ; preds = %90, %85
  br label %99

99:                                               ; preds = %98
  %100 = load i64, i64* %12, align 8
  %101 = add i64 %100, 1
  store i64 %101, i64* %12, align 8
  br label %80

102:                                              ; preds = %80
  %103 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i32 0, i32 1
  %105 = call i32 @os_atomic_set_bool(i32* %104, i32 1)
  %106 = load i8*, i8** %8, align 8
  %107 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %108 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %108, i32 0, i32 1
  store i8* %106, i8** %109, align 8
  store i64 0, i64* %13, align 8
  br label %110

110:                                              ; preds = %133, %102
  %111 = load i64, i64* %13, align 8
  %112 = load i32, i32* @MAX_AUDIO_MIXES, align 4
  %113 = sext i32 %112 to i64
  %114 = icmp ult i64 %111, %113
  br i1 %114, label %115, label %136

115:                                              ; preds = %110
  %116 = load i64, i64* %13, align 8
  %117 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %20, i64 %116
  %118 = load %struct.TYPE_9__*, %struct.TYPE_9__** %117, align 8
  %119 = icmp ne %struct.TYPE_9__* %118, null
  br i1 %119, label %120, label %132

120:                                              ; preds = %115
  %121 = load i64, i64* %13, align 8
  %122 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %20, i64 %121
  %123 = load %struct.TYPE_9__*, %struct.TYPE_9__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %123, i32 0, i32 1
  %125 = call i32 @os_atomic_set_bool(i32* %124, i32 1)
  %126 = load i8*, i8** %8, align 8
  %127 = load i64, i64* %13, align 8
  %128 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %20, i64 %127
  %129 = load %struct.TYPE_9__*, %struct.TYPE_9__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %130, i32 0, i32 1
  store i8* %126, i8** %131, align 8
  br label %132

132:                                              ; preds = %120, %115
  br label %133

133:                                              ; preds = %132
  %134 = load i64, i64* %13, align 8
  %135 = add i64 %134, 1
  store i64 %135, i64* %13, align 8
  br label %110

136:                                              ; preds = %110
  br label %201

137:                                              ; preds = %67
  %138 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %139 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %138, i32 0, i32 0
  %140 = call i32 @pause_can_stop(%struct.TYPE_10__* %139)
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %143, label %142

142:                                              ; preds = %137
  br label %202

143:                                              ; preds = %137
  store i64 0, i64* %14, align 8
  br label %144

144:                                              ; preds = %163, %143
  %145 = load i64, i64* %14, align 8
  %146 = load i32, i32* @MAX_AUDIO_MIXES, align 4
  %147 = sext i32 %146 to i64
  %148 = icmp ult i64 %145, %147
  br i1 %148, label %149, label %166

149:                                              ; preds = %144
  %150 = load i64, i64* %14, align 8
  %151 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %20, i64 %150
  %152 = load %struct.TYPE_9__*, %struct.TYPE_9__** %151, align 8
  %153 = icmp ne %struct.TYPE_9__* %152, null
  br i1 %153, label %154, label %162

154:                                              ; preds = %149
  %155 = load i64, i64* %14, align 8
  %156 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %20, i64 %155
  %157 = load %struct.TYPE_9__*, %struct.TYPE_9__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %157, i32 0, i32 0
  %159 = call i32 @pause_can_stop(%struct.TYPE_10__* %158)
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %162, label %161

161:                                              ; preds = %154
  br label %202

162:                                              ; preds = %154, %149
  br label %163

163:                                              ; preds = %162
  %164 = load i64, i64* %14, align 8
  %165 = add i64 %164, 1
  store i64 %165, i64* %14, align 8
  br label %144

166:                                              ; preds = %144
  %167 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %168 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %167, i32 0, i32 1
  %169 = call i32 @os_atomic_set_bool(i32* %168, i32 0)
  %170 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %171 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %170, i32 0, i32 0
  %172 = load i8*, i8** %8, align 8
  %173 = call i32 @end_pause(%struct.TYPE_10__* %171, i8* %172)
  store i64 0, i64* %15, align 8
  br label %174

174:                                              ; preds = %197, %166
  %175 = load i64, i64* %15, align 8
  %176 = load i32, i32* @MAX_AUDIO_MIXES, align 4
  %177 = sext i32 %176 to i64
  %178 = icmp ult i64 %175, %177
  br i1 %178, label %179, label %200

179:                                              ; preds = %174
  %180 = load i64, i64* %15, align 8
  %181 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %20, i64 %180
  %182 = load %struct.TYPE_9__*, %struct.TYPE_9__** %181, align 8
  %183 = icmp ne %struct.TYPE_9__* %182, null
  br i1 %183, label %184, label %196

184:                                              ; preds = %179
  %185 = load i64, i64* %15, align 8
  %186 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %20, i64 %185
  %187 = load %struct.TYPE_9__*, %struct.TYPE_9__** %186, align 8
  %188 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %187, i32 0, i32 1
  %189 = call i32 @os_atomic_set_bool(i32* %188, i32 0)
  %190 = load i64, i64* %15, align 8
  %191 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %20, i64 %190
  %192 = load %struct.TYPE_9__*, %struct.TYPE_9__** %191, align 8
  %193 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %192, i32 0, i32 0
  %194 = load i8*, i8** %8, align 8
  %195 = call i32 @end_pause(%struct.TYPE_10__* %193, i8* %194)
  br label %196

196:                                              ; preds = %184, %179
  br label %197

197:                                              ; preds = %196
  %198 = load i64, i64* %15, align 8
  %199 = add i64 %198, 1
  store i64 %199, i64* %15, align 8
  br label %174

200:                                              ; preds = %174
  br label %201

201:                                              ; preds = %200, %136
  store i32 1, i32* %9, align 4
  br label %202

202:                                              ; preds = %201, %161, %142, %97, %78
  %203 = load i32, i32* @MAX_AUDIO_MIXES, align 4
  %204 = sext i32 %203 to i64
  store i64 %204, i64* %16, align 8
  br label %205

205:                                              ; preds = %223, %202
  %206 = load i64, i64* %16, align 8
  %207 = icmp ugt i64 %206, 0
  br i1 %207, label %208, label %226

208:                                              ; preds = %205
  %209 = load i64, i64* %16, align 8
  %210 = sub i64 %209, 1
  %211 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %20, i64 %210
  %212 = load %struct.TYPE_9__*, %struct.TYPE_9__** %211, align 8
  %213 = icmp ne %struct.TYPE_9__* %212, null
  br i1 %213, label %214, label %222

214:                                              ; preds = %208
  %215 = load i64, i64* %16, align 8
  %216 = sub i64 %215, 1
  %217 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %20, i64 %216
  %218 = load %struct.TYPE_9__*, %struct.TYPE_9__** %217, align 8
  %219 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %218, i32 0, i32 0
  %220 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %219, i32 0, i32 0
  %221 = call i32 @pthread_mutex_unlock(i32* %220)
  br label %222

222:                                              ; preds = %214, %208
  br label %223

223:                                              ; preds = %222
  %224 = load i64, i64* %16, align 8
  %225 = add i64 %224, -1
  store i64 %225, i64* %16, align 8
  br label %205

226:                                              ; preds = %205
  %227 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %228 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %227, i32 0, i32 0
  %229 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %228, i32 0, i32 0
  %230 = call i32 @pthread_mutex_unlock(i32* %229)
  %231 = load i32, i32* %9, align 4
  %232 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %232)
  ret i32 %231
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @pthread_mutex_lock(i32*) #2

declare dso_local i8* @get_closest_v_ts(%struct.TYPE_10__*) #2

declare dso_local i32 @pause_can_start(%struct.TYPE_10__*) #2

declare dso_local i32 @os_atomic_set_bool(i32*, i32) #2

declare dso_local i32 @pause_can_stop(%struct.TYPE_10__*) #2

declare dso_local i32 @end_pause(%struct.TYPE_10__*, i8*) #2

declare dso_local i32 @pthread_mutex_unlock(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
