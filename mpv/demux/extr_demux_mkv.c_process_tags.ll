; ModuleID = '/home/carl/AnghaBench/mpv/demux/extr_demux_mkv.c_process_tags.c'
source_filename = "/home/carl/AnghaBench/mpv/demux/extr_demux_mkv.c_process_tags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32, %struct.mp_tags*, %struct.TYPE_9__*, %struct.TYPE_8__*, %struct.mkv_demuxer* }
%struct.mp_tags = type { i32 }
%struct.TYPE_9__ = type { i64, %struct.mp_tags* }
%struct.TYPE_8__ = type { i64, %struct.mp_tags* }
%struct.mkv_demuxer = type { i32, %struct.TYPE_10__**, %struct.ebml_tags* }
%struct.TYPE_10__ = type { i64, %struct.sh_stream* }
%struct.sh_stream = type { %struct.mp_tags* }
%struct.ebml_tags = type { i32, %struct.ebml_tag* }
%struct.ebml_tag = type { i32, %struct.TYPE_12__*, %struct.TYPE_11__ }
%struct.TYPE_12__ = type { i64, i64 }
%struct.TYPE_11__ = type { i64, i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_13__*)* @process_tags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process_tags(%struct.TYPE_13__* %0) #0 {
  %2 = alloca %struct.TYPE_13__*, align 8
  %3 = alloca %struct.mkv_demuxer*, align 8
  %4 = alloca %struct.ebml_tags*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ebml_tag, align 8
  %7 = alloca %struct.mp_tags*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.sh_stream*, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %2, align 8
  %13 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 5
  %15 = load %struct.mkv_demuxer*, %struct.mkv_demuxer** %14, align 8
  store %struct.mkv_demuxer* %15, %struct.mkv_demuxer** %3, align 8
  %16 = load %struct.mkv_demuxer*, %struct.mkv_demuxer** %3, align 8
  %17 = getelementptr inbounds %struct.mkv_demuxer, %struct.mkv_demuxer* %16, i32 0, i32 2
  %18 = load %struct.ebml_tags*, %struct.ebml_tags** %17, align 8
  store %struct.ebml_tags* %18, %struct.ebml_tags** %4, align 8
  %19 = load %struct.ebml_tags*, %struct.ebml_tags** %4, align 8
  %20 = icmp ne %struct.ebml_tags* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %1
  br label %229

22:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  br label %23

23:                                               ; preds = %226, %22
  %24 = load i32, i32* %5, align 4
  %25 = load %struct.ebml_tags*, %struct.ebml_tags** %4, align 8
  %26 = getelementptr inbounds %struct.ebml_tags, %struct.ebml_tags* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp slt i32 %24, %27
  br i1 %28, label %29, label %229

29:                                               ; preds = %23
  %30 = load %struct.ebml_tags*, %struct.ebml_tags** %4, align 8
  %31 = getelementptr inbounds %struct.ebml_tags, %struct.ebml_tags* %30, i32 0, i32 1
  %32 = load %struct.ebml_tag*, %struct.ebml_tag** %31, align 8
  %33 = load i32, i32* %5, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.ebml_tag, %struct.ebml_tag* %32, i64 %34
  %36 = bitcast %struct.ebml_tag* %6 to i8*
  %37 = bitcast %struct.ebml_tag* %35 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %36, i8* align 8 %37, i64 48, i1 false)
  store %struct.mp_tags* null, %struct.mp_tags** %7, align 8
  %38 = getelementptr inbounds %struct.ebml_tag, %struct.ebml_tag* %6, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %76

42:                                               ; preds = %29
  store i32 0, i32* %8, align 4
  br label %43

43:                                               ; preds = %72, %42
  %44 = load i32, i32* %8, align 4
  %45 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %46 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp slt i32 %44, %47
  br i1 %48, label %49, label %75

49:                                               ; preds = %43
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %50, i32 0, i32 4
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %51, align 8
  %53 = load i32, i32* %8, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = getelementptr inbounds %struct.ebml_tag, %struct.ebml_tag* %6, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp eq i64 %57, %60
  br i1 %61, label %62, label %71

62:                                               ; preds = %49
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %64 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %63, i32 0, i32 4
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %64, align 8
  %66 = load i32, i32* %8, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 1
  %70 = load %struct.mp_tags*, %struct.mp_tags** %69, align 8
  store %struct.mp_tags* %70, %struct.mp_tags** %7, align 8
  br label %75

71:                                               ; preds = %49
  br label %72

72:                                               ; preds = %71
  %73 = load i32, i32* %8, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %8, align 4
  br label %43

75:                                               ; preds = %62, %43
  br label %176

76:                                               ; preds = %29
  %77 = getelementptr inbounds %struct.ebml_tag, %struct.ebml_tag* %6, i32 0, i32 2
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %115

81:                                               ; preds = %76
  store i32 0, i32* %9, align 4
  br label %82

82:                                               ; preds = %111, %81
  %83 = load i32, i32* %9, align 4
  %84 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %85 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = icmp slt i32 %83, %86
  br i1 %87, label %88, label %114

88:                                               ; preds = %82
  %89 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %90 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %89, i32 0, i32 3
  %91 = load %struct.TYPE_9__*, %struct.TYPE_9__** %90, align 8
  %92 = load i32, i32* %9, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = getelementptr inbounds %struct.ebml_tag, %struct.ebml_tag* %6, i32 0, i32 2
  %98 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = icmp eq i64 %96, %99
  br i1 %100, label %101, label %110

101:                                              ; preds = %88
  %102 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %103 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %102, i32 0, i32 3
  %104 = load %struct.TYPE_9__*, %struct.TYPE_9__** %103, align 8
  %105 = load i32, i32* %9, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %104, i64 %106
  %108 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %107, i32 0, i32 1
  %109 = load %struct.mp_tags*, %struct.mp_tags** %108, align 8
  store %struct.mp_tags* %109, %struct.mp_tags** %7, align 8
  br label %114

110:                                              ; preds = %88
  br label %111

111:                                              ; preds = %110
  %112 = load i32, i32* %9, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %9, align 4
  br label %82

114:                                              ; preds = %101, %82
  br label %175

115:                                              ; preds = %76
  %116 = getelementptr inbounds %struct.ebml_tag, %struct.ebml_tag* %6, i32 0, i32 2
  %117 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %116, i32 0, i32 2
  %118 = load i64, i64* %117, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %163

120:                                              ; preds = %115
  store i32 0, i32* %10, align 4
  br label %121

121:                                              ; preds = %159, %120
  %122 = load i32, i32* %10, align 4
  %123 = load %struct.mkv_demuxer*, %struct.mkv_demuxer** %3, align 8
  %124 = getelementptr inbounds %struct.mkv_demuxer, %struct.mkv_demuxer* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = icmp slt i32 %122, %125
  br i1 %126, label %127, label %162

127:                                              ; preds = %121
  %128 = load %struct.mkv_demuxer*, %struct.mkv_demuxer** %3, align 8
  %129 = getelementptr inbounds %struct.mkv_demuxer, %struct.mkv_demuxer* %128, i32 0, i32 1
  %130 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %129, align 8
  %131 = load i32, i32* %10, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %130, i64 %132
  %134 = load %struct.TYPE_10__*, %struct.TYPE_10__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = getelementptr inbounds %struct.ebml_tag, %struct.ebml_tag* %6, i32 0, i32 2
  %138 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %137, i32 0, i32 2
  %139 = load i64, i64* %138, align 8
  %140 = icmp eq i64 %136, %139
  br i1 %140, label %141, label %158

141:                                              ; preds = %127
  %142 = load %struct.mkv_demuxer*, %struct.mkv_demuxer** %3, align 8
  %143 = getelementptr inbounds %struct.mkv_demuxer, %struct.mkv_demuxer* %142, i32 0, i32 1
  %144 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %143, align 8
  %145 = load i32, i32* %10, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %144, i64 %146
  %148 = load %struct.TYPE_10__*, %struct.TYPE_10__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %148, i32 0, i32 1
  %150 = load %struct.sh_stream*, %struct.sh_stream** %149, align 8
  store %struct.sh_stream* %150, %struct.sh_stream** %11, align 8
  %151 = load %struct.sh_stream*, %struct.sh_stream** %11, align 8
  %152 = icmp ne %struct.sh_stream* %151, null
  br i1 %152, label %153, label %157

153:                                              ; preds = %141
  %154 = load %struct.sh_stream*, %struct.sh_stream** %11, align 8
  %155 = getelementptr inbounds %struct.sh_stream, %struct.sh_stream* %154, i32 0, i32 0
  %156 = load %struct.mp_tags*, %struct.mp_tags** %155, align 8
  store %struct.mp_tags* %156, %struct.mp_tags** %7, align 8
  br label %157

157:                                              ; preds = %153, %141
  br label %162

158:                                              ; preds = %127
  br label %159

159:                                              ; preds = %158
  %160 = load i32, i32* %10, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %10, align 4
  br label %121

162:                                              ; preds = %157, %121
  br label %174

163:                                              ; preds = %115
  %164 = getelementptr inbounds %struct.ebml_tag, %struct.ebml_tag* %6, i32 0, i32 2
  %165 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %164, i32 0, i32 3
  %166 = load i64, i64* %165, align 8
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %169

168:                                              ; preds = %163
  br label %173

169:                                              ; preds = %163
  %170 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %171 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %170, i32 0, i32 2
  %172 = load %struct.mp_tags*, %struct.mp_tags** %171, align 8
  store %struct.mp_tags* %172, %struct.mp_tags** %7, align 8
  br label %173

173:                                              ; preds = %169, %168
  br label %174

174:                                              ; preds = %173, %162
  br label %175

175:                                              ; preds = %174, %114
  br label %176

176:                                              ; preds = %175, %75
  %177 = load %struct.mp_tags*, %struct.mp_tags** %7, align 8
  %178 = icmp ne %struct.mp_tags* %177, null
  br i1 %178, label %179, label %225

179:                                              ; preds = %176
  store i32 0, i32* %12, align 4
  br label %180

180:                                              ; preds = %221, %179
  %181 = load i32, i32* %12, align 4
  %182 = getelementptr inbounds %struct.ebml_tag, %struct.ebml_tag* %6, i32 0, i32 0
  %183 = load i32, i32* %182, align 8
  %184 = icmp slt i32 %181, %183
  br i1 %184, label %185, label %224

185:                                              ; preds = %180
  %186 = getelementptr inbounds %struct.ebml_tag, %struct.ebml_tag* %6, i32 0, i32 1
  %187 = load %struct.TYPE_12__*, %struct.TYPE_12__** %186, align 8
  %188 = load i32, i32* %12, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %187, i64 %189
  %191 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %190, i32 0, i32 1
  %192 = load i64, i64* %191, align 8
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %194, label %220

194:                                              ; preds = %185
  %195 = getelementptr inbounds %struct.ebml_tag, %struct.ebml_tag* %6, i32 0, i32 1
  %196 = load %struct.TYPE_12__*, %struct.TYPE_12__** %195, align 8
  %197 = load i32, i32* %12, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %196, i64 %198
  %200 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %199, i32 0, i32 0
  %201 = load i64, i64* %200, align 8
  %202 = icmp ne i64 %201, 0
  br i1 %202, label %203, label %220

203:                                              ; preds = %194
  %204 = load %struct.mp_tags*, %struct.mp_tags** %7, align 8
  %205 = getelementptr inbounds %struct.ebml_tag, %struct.ebml_tag* %6, i32 0, i32 1
  %206 = load %struct.TYPE_12__*, %struct.TYPE_12__** %205, align 8
  %207 = load i32, i32* %12, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %206, i64 %208
  %210 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %209, i32 0, i32 1
  %211 = load i64, i64* %210, align 8
  %212 = getelementptr inbounds %struct.ebml_tag, %struct.ebml_tag* %6, i32 0, i32 1
  %213 = load %struct.TYPE_12__*, %struct.TYPE_12__** %212, align 8
  %214 = load i32, i32* %12, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %213, i64 %215
  %217 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %216, i32 0, i32 0
  %218 = load i64, i64* %217, align 8
  %219 = call i32 @mp_tags_set_str(%struct.mp_tags* %204, i64 %211, i64 %218)
  br label %220

220:                                              ; preds = %203, %194, %185
  br label %221

221:                                              ; preds = %220
  %222 = load i32, i32* %12, align 4
  %223 = add nsw i32 %222, 1
  store i32 %223, i32* %12, align 4
  br label %180

224:                                              ; preds = %180
  br label %225

225:                                              ; preds = %224, %176
  br label %226

226:                                              ; preds = %225
  %227 = load i32, i32* %5, align 4
  %228 = add nsw i32 %227, 1
  store i32 %228, i32* %5, align 4
  br label %23

229:                                              ; preds = %21, %23
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @mp_tags_set_str(%struct.mp_tags*, i64, i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
