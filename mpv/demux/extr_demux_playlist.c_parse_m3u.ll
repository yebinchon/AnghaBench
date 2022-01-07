; ModuleID = '/home/carl/AnghaBench/mpv/demux/extr_demux_playlist.c_parse_m3u.c'
source_filename = "/home/carl/AnghaBench/mpv/demux/extr_demux_playlist.c_parse_m3u.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pl_parser = type { i64, i8*, i32, i64, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i8*, i32, i32 }
%struct.playlist_entry = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"#EXTM3U\00", align 1
@DEMUX_CHECK_UNSAFE = common dso_local global i64 0, align 8
@PROBE_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"m3u\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"m3u8\00", align 1
@__const.parse_m3u.exts = private unnamed_addr constant [3 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i8* null], align 16
@.str.3 = private unnamed_addr constant [9 x i8] c"#EXTINF:\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"#EXT-X-\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"hls\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"#\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pl_parser*)* @parse_m3u to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_m3u(%struct.pl_parser* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pl_parser*, align 8
  %4 = alloca %struct.TYPE_12__, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_12__, align 8
  %10 = alloca [3 x i8*], align 16
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca %struct.TYPE_12__, align 8
  %15 = alloca %struct.TYPE_12__, align 8
  %16 = alloca i8*, align 8
  %17 = alloca %struct.playlist_entry*, align 8
  %18 = alloca %struct.TYPE_12__, align 8
  store %struct.pl_parser* %0, %struct.pl_parser** %3, align 8
  %19 = load %struct.pl_parser*, %struct.pl_parser** %3, align 8
  %20 = call i32 @pl_get_line(%struct.pl_parser* %19)
  %21 = call { i8*, i64 } @bstr_strip(i32 %20)
  %22 = bitcast %struct.TYPE_12__* %4 to { i8*, i64 }*
  %23 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %22, i32 0, i32 0
  %24 = extractvalue { i8*, i64 } %21, 0
  store i8* %24, i8** %23, align 8
  %25 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %22, i32 0, i32 1
  %26 = extractvalue { i8*, i64 } %21, 1
  store i64 %26, i64* %25, align 8
  %27 = load %struct.pl_parser*, %struct.pl_parser** %3, align 8
  %28 = getelementptr inbounds %struct.pl_parser, %struct.pl_parser* %27, i32 0, i32 3
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %107

31:                                               ; preds = %1
  %32 = bitcast %struct.TYPE_12__* %4 to { i8*, i64 }*
  %33 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  %35 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %32, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = call i32 @bstr_equals0(i8* %34, i64 %36, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %107, label %39

39:                                               ; preds = %31
  %40 = load %struct.pl_parser*, %struct.pl_parser** %3, align 8
  %41 = getelementptr inbounds %struct.pl_parser, %struct.pl_parser* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @DEMUX_CHECK_UNSAFE, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %106

45:                                               ; preds = %39
  %46 = load %struct.pl_parser*, %struct.pl_parser** %3, align 8
  %47 = getelementptr inbounds %struct.pl_parser, %struct.pl_parser* %46, i32 0, i32 4
  %48 = load %struct.TYPE_13__*, %struct.TYPE_13__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i8* @mp_splitext(i32 %50, i32* null)
  store i8* %51, i8** %5, align 8
  %52 = load i32, i32* @PROBE_SIZE, align 4
  %53 = zext i32 %52 to i64
  %54 = call i8* @llvm.stacksave()
  store i8* %54, i8** %6, align 8
  %55 = alloca i8, i64 %53, align 16
  store i64 %53, i64* %7, align 8
  %56 = load %struct.pl_parser*, %struct.pl_parser** %3, align 8
  %57 = getelementptr inbounds %struct.pl_parser, %struct.pl_parser* %56, i32 0, i32 4
  %58 = load %struct.TYPE_13__*, %struct.TYPE_13__** %57, align 8
  %59 = trunc i64 %53 to i32
  %60 = call i32 @stream_read_peek(%struct.TYPE_13__* %58, i8* %55, i32 %59)
  store i32 %60, i32* %8, align 4
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 0
  store i8* %55, i8** %61, align 8
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 1
  %63 = load i32, i32* %8, align 4
  store i32 %63, i32* %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 2
  store i32 0, i32* %64, align 4
  %65 = load i8*, i8** %5, align 8
  %66 = icmp ne i8* %65, null
  br i1 %66, label %67, label %101

67:                                               ; preds = %45
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = icmp sgt i32 %69, 10
  br i1 %70, label %71, label %101

71:                                               ; preds = %67
  %72 = bitcast %struct.TYPE_12__* %9 to { i8*, i64 }*
  %73 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %72, i32 0, i32 0
  %74 = load i8*, i8** %73, align 8
  %75 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %72, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = call i64 @maybe_text(i8* %74, i64 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %101

79:                                               ; preds = %71
  %80 = bitcast [3 x i8*]* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %80, i8* align 16 bitcast ([3 x i8*]* @__const.parse_m3u.exts to i8*), i64 24, i1 false)
  store i32 0, i32* %11, align 4
  br label %81

81:                                               ; preds = %97, %79
  %82 = load i32, i32* %11, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds [3 x i8*], [3 x i8*]* %10, i64 0, i64 %83
  %85 = load i8*, i8** %84, align 8
  %86 = icmp ne i8* %85, null
  br i1 %86, label %87, label %100

87:                                               ; preds = %81
  %88 = load i8*, i8** %5, align 8
  %89 = load i32, i32* %11, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds [3 x i8*], [3 x i8*]* %10, i64 0, i64 %90
  %92 = load i8*, i8** %91, align 8
  %93 = call i64 @strcasecmp(i8* %88, i8* %92)
  %94 = icmp eq i64 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %87
  store i32 5, i32* %12, align 4
  br label %102

96:                                               ; preds = %87
  br label %97

97:                                               ; preds = %96
  %98 = load i32, i32* %11, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %11, align 4
  br label %81

100:                                              ; preds = %81
  br label %101

101:                                              ; preds = %100, %71, %67, %45
  store i32 0, i32* %12, align 4
  br label %102

102:                                              ; preds = %95, %101
  %103 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %103)
  %104 = load i32, i32* %12, align 4
  switch i32 %104, label %213 [
    i32 0, label %105
    i32 5, label %108
  ]

105:                                              ; preds = %102
  br label %106

106:                                              ; preds = %105, %39
  store i32 -1, i32* %2, align 4
  br label %211

107:                                              ; preds = %31, %1
  br label %108

108:                                              ; preds = %107, %102
  %109 = load %struct.pl_parser*, %struct.pl_parser** %3, align 8
  %110 = getelementptr inbounds %struct.pl_parser, %struct.pl_parser* %109, i32 0, i32 3
  %111 = load i64, i64* %110, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %108
  store i32 0, i32* %2, align 4
  br label %211

114:                                              ; preds = %108
  store i8* null, i8** %13, align 8
  br label %115

115:                                              ; preds = %197, %114
  %116 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %4, i32 0, i32 2
  %117 = load i32, i32* %116, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %124, label %119

119:                                              ; preds = %115
  %120 = load %struct.pl_parser*, %struct.pl_parser** %3, align 8
  %121 = call i32 @pl_eof(%struct.pl_parser* %120)
  %122 = icmp ne i32 %121, 0
  %123 = xor i1 %122, true
  br label %124

124:                                              ; preds = %119, %115
  %125 = phi i1 [ true, %115 ], [ %123, %119 ]
  br i1 %125, label %126, label %208

126:                                              ; preds = %124
  %127 = call i64 @bstr_eatstart0(%struct.TYPE_12__* %4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %151

129:                                              ; preds = %126
  %130 = bitcast %struct.TYPE_12__* %4 to { i8*, i64 }*
  %131 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %130, i32 0, i32 0
  %132 = load i8*, i8** %131, align 8
  %133 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %130, i32 0, i32 1
  %134 = load i64, i64* %133, align 8
  %135 = call i64 @bstr_split_tok(i8* %132, i64 %134, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), %struct.TYPE_12__* %14, %struct.TYPE_12__* %15)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %150

137:                                              ; preds = %129
  %138 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 2
  %139 = load i32, i32* %138, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %150

141:                                              ; preds = %137
  %142 = load i8*, i8** %13, align 8
  %143 = call i32 @talloc_free(i8* %142)
  %144 = bitcast %struct.TYPE_12__* %15 to { i8*, i64 }*
  %145 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %144, i32 0, i32 0
  %146 = load i8*, i8** %145, align 8
  %147 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %144, i32 0, i32 1
  %148 = load i64, i64* %147, align 8
  %149 = call i8* @bstrto0(i32* null, i8* %146, i64 %148)
  store i8* %149, i8** %13, align 8
  br label %150

150:                                              ; preds = %141, %137, %129
  br label %197

151:                                              ; preds = %126
  %152 = bitcast %struct.TYPE_12__* %4 to { i8*, i64 }*
  %153 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %152, i32 0, i32 0
  %154 = load i8*, i8** %153, align 8
  %155 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %152, i32 0, i32 1
  %156 = load i64, i64* %155, align 8
  %157 = call i64 @bstr_startswith0(i8* %154, i64 %156, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %162

159:                                              ; preds = %151
  %160 = load %struct.pl_parser*, %struct.pl_parser** %3, align 8
  %161 = getelementptr inbounds %struct.pl_parser, %struct.pl_parser* %160, i32 0, i32 1
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i8** %161, align 8
  br label %196

162:                                              ; preds = %151
  %163 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %4, i32 0, i32 2
  %164 = load i32, i32* %163, align 4
  %165 = icmp sgt i32 %164, 0
  br i1 %165, label %166, label %195

166:                                              ; preds = %162
  %167 = bitcast %struct.TYPE_12__* %4 to { i8*, i64 }*
  %168 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %167, i32 0, i32 0
  %169 = load i8*, i8** %168, align 8
  %170 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %167, i32 0, i32 1
  %171 = load i64, i64* %170, align 8
  %172 = call i64 @bstr_startswith0(i8* %169, i64 %171, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %195, label %174

174:                                              ; preds = %166
  %175 = bitcast %struct.TYPE_12__* %4 to { i8*, i64 }*
  %176 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %175, i32 0, i32 0
  %177 = load i8*, i8** %176, align 8
  %178 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %175, i32 0, i32 1
  %179 = load i64, i64* %178, align 8
  %180 = call i8* @bstrto0(i32* null, i8* %177, i64 %179)
  store i8* %180, i8** %16, align 8
  %181 = load i8*, i8** %16, align 8
  %182 = call %struct.playlist_entry* @playlist_entry_new(i8* %181)
  store %struct.playlist_entry* %182, %struct.playlist_entry** %17, align 8
  %183 = load i8*, i8** %16, align 8
  %184 = call i32 @talloc_free(i8* %183)
  %185 = load %struct.playlist_entry*, %struct.playlist_entry** %17, align 8
  %186 = load i8*, i8** %13, align 8
  %187 = call i32 @talloc_steal(%struct.playlist_entry* %185, i8* %186)
  %188 = load %struct.playlist_entry*, %struct.playlist_entry** %17, align 8
  %189 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %188, i32 0, i32 0
  store i32 %187, i32* %189, align 4
  store i8* null, i8** %13, align 8
  %190 = load %struct.pl_parser*, %struct.pl_parser** %3, align 8
  %191 = getelementptr inbounds %struct.pl_parser, %struct.pl_parser* %190, i32 0, i32 2
  %192 = load i32, i32* %191, align 8
  %193 = load %struct.playlist_entry*, %struct.playlist_entry** %17, align 8
  %194 = call i32 @playlist_add(i32 %192, %struct.playlist_entry* %193)
  br label %195

195:                                              ; preds = %174, %166, %162
  br label %196

196:                                              ; preds = %195, %159
  br label %197

197:                                              ; preds = %196, %150
  %198 = load %struct.pl_parser*, %struct.pl_parser** %3, align 8
  %199 = call i32 @pl_get_line(%struct.pl_parser* %198)
  %200 = call { i8*, i64 } @bstr_strip(i32 %199)
  %201 = bitcast %struct.TYPE_12__* %18 to { i8*, i64 }*
  %202 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %201, i32 0, i32 0
  %203 = extractvalue { i8*, i64 } %200, 0
  store i8* %203, i8** %202, align 8
  %204 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %201, i32 0, i32 1
  %205 = extractvalue { i8*, i64 } %200, 1
  store i64 %205, i64* %204, align 8
  %206 = bitcast %struct.TYPE_12__* %4 to i8*
  %207 = bitcast %struct.TYPE_12__* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %206, i8* align 8 %207, i64 16, i1 false)
  br label %115

208:                                              ; preds = %124
  %209 = load i8*, i8** %13, align 8
  %210 = call i32 @talloc_free(i8* %209)
  store i32 0, i32* %2, align 4
  br label %211

211:                                              ; preds = %208, %113, %106
  %212 = load i32, i32* %2, align 4
  ret i32 %212

213:                                              ; preds = %102
  unreachable
}

declare dso_local { i8*, i64 } @bstr_strip(i32) #1

declare dso_local i32 @pl_get_line(%struct.pl_parser*) #1

declare dso_local i32 @bstr_equals0(i8*, i64, i8*) #1

declare dso_local i8* @mp_splitext(i32, i32*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @stream_read_peek(%struct.TYPE_13__*, i8*, i32) #1

declare dso_local i64 @maybe_text(i8*, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local i64 @strcasecmp(i8*, i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @pl_eof(%struct.pl_parser*) #1

declare dso_local i64 @bstr_eatstart0(%struct.TYPE_12__*, i8*) #1

declare dso_local i64 @bstr_split_tok(i8*, i64, i8*, %struct.TYPE_12__*, %struct.TYPE_12__*) #1

declare dso_local i32 @talloc_free(i8*) #1

declare dso_local i8* @bstrto0(i32*, i8*, i64) #1

declare dso_local i64 @bstr_startswith0(i8*, i64, i8*) #1

declare dso_local %struct.playlist_entry* @playlist_entry_new(i8*) #1

declare dso_local i32 @talloc_steal(%struct.playlist_entry*, i8*) #1

declare dso_local i32 @playlist_add(i32, %struct.playlist_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
