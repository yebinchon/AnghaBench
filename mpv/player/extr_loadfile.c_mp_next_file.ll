; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_loadfile.c_mp_next_file.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_loadfile.c_mp_next_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.playlist_entry = type { i32, %struct.playlist_entry*, %struct.playlist_entry*, i64 }
%struct.MPContext = type { %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { %struct.playlist_entry*, %struct.playlist_entry* }
%struct.TYPE_4__ = type { i32, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.playlist_entry* @mp_next_file(%struct.MPContext* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.MPContext*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.playlist_entry*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.playlist_entry*, align 8
  store %struct.MPContext* %0, %struct.MPContext** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = load %struct.MPContext*, %struct.MPContext** %5, align 8
  %14 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %13, i32 0, i32 0
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %16 = load i32, i32* %6, align 4
  %17 = call %struct.playlist_entry* @playlist_get_next(%struct.TYPE_5__* %15, i32 %16)
  store %struct.playlist_entry* %17, %struct.playlist_entry** %9, align 8
  %18 = load %struct.playlist_entry*, %struct.playlist_entry** %9, align 8
  %19 = icmp ne %struct.playlist_entry* %18, null
  br i1 %19, label %20, label %58

20:                                               ; preds = %4
  %21 = load i32, i32* %6, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %58

23:                                               ; preds = %20
  %24 = load i32, i32* %7, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %58, label %26

26:                                               ; preds = %23
  br label %27

27:                                               ; preds = %37, %26
  %28 = load %struct.playlist_entry*, %struct.playlist_entry** %9, align 8
  %29 = icmp ne %struct.playlist_entry* %28, null
  br i1 %29, label %30, label %35

30:                                               ; preds = %27
  %31 = load %struct.playlist_entry*, %struct.playlist_entry** %9, align 8
  %32 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %31, i32 0, i32 3
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br label %35

35:                                               ; preds = %30, %27
  %36 = phi i1 [ false, %27 ], [ %34, %30 ]
  br i1 %36, label %37, label %41

37:                                               ; preds = %35
  %38 = load %struct.playlist_entry*, %struct.playlist_entry** %9, align 8
  %39 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %38, i32 0, i32 2
  %40 = load %struct.playlist_entry*, %struct.playlist_entry** %39, align 8
  store %struct.playlist_entry* %40, %struct.playlist_entry** %9, align 8
  br label %27

41:                                               ; preds = %35
  %42 = load %struct.playlist_entry*, %struct.playlist_entry** %9, align 8
  %43 = icmp ne %struct.playlist_entry* %42, null
  br i1 %43, label %57, label %44

44:                                               ; preds = %41
  %45 = load %struct.MPContext*, %struct.MPContext** %5, align 8
  %46 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %45, i32 0, i32 1
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = icmp eq i32 %49, 1
  br i1 %50, label %51, label %57

51:                                               ; preds = %44
  %52 = load %struct.MPContext*, %struct.MPContext** %5, align 8
  %53 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %52, i32 0, i32 0
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = load %struct.playlist_entry*, %struct.playlist_entry** %55, align 8
  store %struct.playlist_entry* %56, %struct.playlist_entry** %9, align 8
  br label %57

57:                                               ; preds = %51, %44, %41
  br label %58

58:                                               ; preds = %57, %23, %20, %4
  %59 = load %struct.playlist_entry*, %struct.playlist_entry** %9, align 8
  %60 = icmp ne %struct.playlist_entry* %59, null
  br i1 %60, label %177, label %61

61:                                               ; preds = %58
  %62 = load %struct.MPContext*, %struct.MPContext** %5, align 8
  %63 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %62, i32 0, i32 1
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = icmp ne i32 %66, 1
  br i1 %67, label %68, label %177

68:                                               ; preds = %61
  %69 = load i32, i32* %6, align 4
  %70 = icmp sgt i32 %69, 0
  br i1 %70, label %71, label %106

71:                                               ; preds = %68
  %72 = load %struct.MPContext*, %struct.MPContext** %5, align 8
  %73 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %72, i32 0, i32 1
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %83

78:                                               ; preds = %71
  %79 = load %struct.MPContext*, %struct.MPContext** %5, align 8
  %80 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %79, i32 0, i32 0
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %80, align 8
  %82 = call i32 @playlist_shuffle(%struct.TYPE_5__* %81)
  br label %83

83:                                               ; preds = %78, %71
  %84 = load %struct.MPContext*, %struct.MPContext** %5, align 8
  %85 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %84, i32 0, i32 0
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 0
  %88 = load %struct.playlist_entry*, %struct.playlist_entry** %87, align 8
  store %struct.playlist_entry* %88, %struct.playlist_entry** %9, align 8
  %89 = load %struct.playlist_entry*, %struct.playlist_entry** %9, align 8
  %90 = icmp ne %struct.playlist_entry* %89, null
  br i1 %90, label %91, label %105

91:                                               ; preds = %83
  %92 = load %struct.MPContext*, %struct.MPContext** %5, align 8
  %93 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %92, i32 0, i32 1
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = icmp sgt i32 %96, 1
  br i1 %97, label %98, label %105

98:                                               ; preds = %91
  %99 = load %struct.MPContext*, %struct.MPContext** %5, align 8
  %100 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %99, i32 0, i32 1
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = add nsw i32 %103, -1
  store i32 %104, i32* %102, align 8
  br label %105

105:                                              ; preds = %98, %91, %83
  br label %127

106:                                              ; preds = %68
  %107 = load %struct.MPContext*, %struct.MPContext** %5, align 8
  %108 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %107, i32 0, i32 0
  %109 = load %struct.TYPE_5__*, %struct.TYPE_5__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 1
  %111 = load %struct.playlist_entry*, %struct.playlist_entry** %110, align 8
  store %struct.playlist_entry* %111, %struct.playlist_entry** %9, align 8
  br label %112

112:                                              ; preds = %122, %106
  %113 = load %struct.playlist_entry*, %struct.playlist_entry** %9, align 8
  %114 = icmp ne %struct.playlist_entry* %113, null
  br i1 %114, label %115, label %120

115:                                              ; preds = %112
  %116 = load %struct.playlist_entry*, %struct.playlist_entry** %9, align 8
  %117 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %116, i32 0, i32 3
  %118 = load i64, i64* %117, align 8
  %119 = icmp ne i64 %118, 0
  br label %120

120:                                              ; preds = %115, %112
  %121 = phi i1 [ false, %112 ], [ %119, %115 ]
  br i1 %121, label %122, label %126

122:                                              ; preds = %120
  %123 = load %struct.playlist_entry*, %struct.playlist_entry** %9, align 8
  %124 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %123, i32 0, i32 2
  %125 = load %struct.playlist_entry*, %struct.playlist_entry** %124, align 8
  store %struct.playlist_entry* %125, %struct.playlist_entry** %9, align 8
  br label %112

126:                                              ; preds = %120
  br label %127

127:                                              ; preds = %126, %105
  %128 = load %struct.MPContext*, %struct.MPContext** %5, align 8
  %129 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %128, i32 0, i32 1
  %130 = load %struct.TYPE_4__*, %struct.TYPE_4__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = icmp eq i32 %132, -2
  %134 = zext i1 %133 to i32
  store i32 %134, i32* %10, align 4
  %135 = load i32, i32* %7, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %176, label %137

137:                                              ; preds = %127
  %138 = load %struct.playlist_entry*, %struct.playlist_entry** %9, align 8
  %139 = icmp ne %struct.playlist_entry* %138, null
  br i1 %139, label %140, label %176

140:                                              ; preds = %137
  %141 = load %struct.playlist_entry*, %struct.playlist_entry** %9, align 8
  %142 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %176

145:                                              ; preds = %140
  %146 = load i32, i32* %10, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %176, label %148

148:                                              ; preds = %145
  store i32 1, i32* %11, align 4
  %149 = load %struct.MPContext*, %struct.MPContext** %5, align 8
  %150 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %149, i32 0, i32 0
  %151 = load %struct.TYPE_5__*, %struct.TYPE_5__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %151, i32 0, i32 0
  %153 = load %struct.playlist_entry*, %struct.playlist_entry** %152, align 8
  store %struct.playlist_entry* %153, %struct.playlist_entry** %12, align 8
  br label %154

154:                                              ; preds = %167, %148
  %155 = load %struct.playlist_entry*, %struct.playlist_entry** %12, align 8
  %156 = icmp ne %struct.playlist_entry* %155, null
  br i1 %156, label %157, label %171

157:                                              ; preds = %154
  %158 = load %struct.playlist_entry*, %struct.playlist_entry** %12, align 8
  %159 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = load i32, i32* %11, align 4
  %162 = and i32 %161, %160
  store i32 %162, i32* %11, align 4
  %163 = load i32, i32* %11, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %166, label %165

165:                                              ; preds = %157
  br label %171

166:                                              ; preds = %157
  br label %167

167:                                              ; preds = %166
  %168 = load %struct.playlist_entry*, %struct.playlist_entry** %12, align 8
  %169 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %168, i32 0, i32 1
  %170 = load %struct.playlist_entry*, %struct.playlist_entry** %169, align 8
  store %struct.playlist_entry* %170, %struct.playlist_entry** %12, align 8
  br label %154

171:                                              ; preds = %165, %154
  %172 = load i32, i32* %11, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %175

174:                                              ; preds = %171
  store %struct.playlist_entry* null, %struct.playlist_entry** %9, align 8
  br label %175

175:                                              ; preds = %174, %171
  br label %176

176:                                              ; preds = %175, %145, %140, %137, %127
  br label %177

177:                                              ; preds = %176, %61, %58
  %178 = load %struct.playlist_entry*, %struct.playlist_entry** %9, align 8
  ret %struct.playlist_entry* %178
}

declare dso_local %struct.playlist_entry* @playlist_get_next(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @playlist_shuffle(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
