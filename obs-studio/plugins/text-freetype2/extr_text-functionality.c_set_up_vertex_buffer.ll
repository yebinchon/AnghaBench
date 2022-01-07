; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/text-freetype2/extr_text-functionality.c_set_up_vertex_buffer.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/text-freetype2/extr_text-functionality.c_set_up_vertex_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.ft2_source = type { i64*, i32, i32, i32, i32, i32*, i32, i32 }

@src_glyph = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_up_vertex_buffer(%struct.ft2_source* %0) #0 {
  %2 = alloca %struct.ft2_source*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.ft2_source* %0, %struct.ft2_source** %2, align 8
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %10 = load %struct.ft2_source*, %struct.ft2_source** %2, align 8
  %11 = getelementptr inbounds %struct.ft2_source, %struct.ft2_source* %10, i32 0, i32 0
  %12 = load i64*, i64** %11, align 8
  %13 = icmp ne i64* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  br label %201

15:                                               ; preds = %1
  %16 = load %struct.ft2_source*, %struct.ft2_source** %2, align 8
  %17 = getelementptr inbounds %struct.ft2_source, %struct.ft2_source* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = icmp sge i32 %18, 100
  br i1 %19, label %20, label %26

20:                                               ; preds = %15
  %21 = load %struct.ft2_source*, %struct.ft2_source** %2, align 8
  %22 = getelementptr inbounds %struct.ft2_source, %struct.ft2_source* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.ft2_source*, %struct.ft2_source** %2, align 8
  %25 = getelementptr inbounds %struct.ft2_source, %struct.ft2_source* %24, i32 0, i32 2
  store i32 %23, i32* %25, align 4
  br label %34

26:                                               ; preds = %15
  %27 = load %struct.ft2_source*, %struct.ft2_source** %2, align 8
  %28 = getelementptr inbounds %struct.ft2_source, %struct.ft2_source* %27, i32 0, i32 0
  %29 = load i64*, i64** %28, align 8
  %30 = load %struct.ft2_source*, %struct.ft2_source** %2, align 8
  %31 = call i32 @get_ft2_text_width(i64* %29, %struct.ft2_source* %30)
  %32 = load %struct.ft2_source*, %struct.ft2_source** %2, align 8
  %33 = getelementptr inbounds %struct.ft2_source, %struct.ft2_source* %32, i32 0, i32 2
  store i32 %31, i32* %33, align 4
  br label %34

34:                                               ; preds = %26, %20
  %35 = load %struct.ft2_source*, %struct.ft2_source** %2, align 8
  %36 = getelementptr inbounds %struct.ft2_source, %struct.ft2_source* %35, i32 0, i32 6
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.ft2_source*, %struct.ft2_source** %2, align 8
  %39 = getelementptr inbounds %struct.ft2_source, %struct.ft2_source* %38, i32 0, i32 7
  store i32 %37, i32* %39, align 4
  %40 = call i32 (...) @obs_enter_graphics()
  %41 = load %struct.ft2_source*, %struct.ft2_source** %2, align 8
  %42 = getelementptr inbounds %struct.ft2_source, %struct.ft2_source* %41, i32 0, i32 5
  %43 = load i32*, i32** %42, align 8
  %44 = icmp ne i32* %43, null
  br i1 %44, label %45, label %53

45:                                               ; preds = %34
  %46 = load %struct.ft2_source*, %struct.ft2_source** %2, align 8
  %47 = getelementptr inbounds %struct.ft2_source, %struct.ft2_source* %46, i32 0, i32 5
  %48 = load i32*, i32** %47, align 8
  store i32* %48, i32** %8, align 8
  %49 = load %struct.ft2_source*, %struct.ft2_source** %2, align 8
  %50 = getelementptr inbounds %struct.ft2_source, %struct.ft2_source* %49, i32 0, i32 5
  store i32* null, i32** %50, align 8
  %51 = load i32*, i32** %8, align 8
  %52 = call i32 @gs_vertexbuffer_destroy(i32* %51)
  br label %53

53:                                               ; preds = %45, %34
  %54 = load %struct.ft2_source*, %struct.ft2_source** %2, align 8
  %55 = getelementptr inbounds %struct.ft2_source, %struct.ft2_source* %54, i32 0, i32 0
  %56 = load i64*, i64** %55, align 8
  %57 = load i64, i64* %56, align 8
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %53
  %60 = call i32 (...) @obs_leave_graphics()
  br label %201

61:                                               ; preds = %53
  %62 = load %struct.ft2_source*, %struct.ft2_source** %2, align 8
  %63 = getelementptr inbounds %struct.ft2_source, %struct.ft2_source* %62, i32 0, i32 0
  %64 = load i64*, i64** %63, align 8
  %65 = call i32 @wcslen(i64* %64)
  %66 = mul nsw i32 %65, 6
  %67 = call i32* @create_uv_vbuffer(i32 %66, i32 1)
  %68 = load %struct.ft2_source*, %struct.ft2_source** %2, align 8
  %69 = getelementptr inbounds %struct.ft2_source, %struct.ft2_source* %68, i32 0, i32 5
  store i32* %67, i32** %69, align 8
  %70 = load %struct.ft2_source*, %struct.ft2_source** %2, align 8
  %71 = getelementptr inbounds %struct.ft2_source, %struct.ft2_source* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = icmp sle i32 %72, 100
  br i1 %73, label %74, label %75

74:                                               ; preds = %61
  br label %197

75:                                               ; preds = %61
  %76 = load %struct.ft2_source*, %struct.ft2_source** %2, align 8
  %77 = getelementptr inbounds %struct.ft2_source, %struct.ft2_source* %76, i32 0, i32 4
  %78 = load i32, i32* %77, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %81, label %80

80:                                               ; preds = %75
  br label %197

81:                                               ; preds = %75
  %82 = load %struct.ft2_source*, %struct.ft2_source** %2, align 8
  %83 = getelementptr inbounds %struct.ft2_source, %struct.ft2_source* %82, i32 0, i32 0
  %84 = load i64*, i64** %83, align 8
  %85 = call i32 @wcslen(i64* %84)
  %86 = sext i32 %85 to i64
  store i64 %86, i64* %7, align 8
  store i32 0, i32* %9, align 4
  br label %87

87:                                               ; preds = %193, %81
  %88 = load i32, i32* %9, align 4
  %89 = sext i32 %88 to i64
  %90 = load i64, i64* %7, align 8
  %91 = icmp ule i64 %89, %90
  br i1 %91, label %92, label %196

92:                                               ; preds = %87
  %93 = load i32, i32* %9, align 4
  %94 = load %struct.ft2_source*, %struct.ft2_source** %2, align 8
  %95 = getelementptr inbounds %struct.ft2_source, %struct.ft2_source* %94, i32 0, i32 0
  %96 = load i64*, i64** %95, align 8
  %97 = call i32 @wcslen(i64* %96)
  %98 = icmp eq i32 %93, %97
  br i1 %98, label %99, label %100

99:                                               ; preds = %92
  br label %120

100:                                              ; preds = %92
  %101 = load %struct.ft2_source*, %struct.ft2_source** %2, align 8
  %102 = getelementptr inbounds %struct.ft2_source, %struct.ft2_source* %101, i32 0, i32 0
  %103 = load i64*, i64** %102, align 8
  %104 = load i32, i32* %9, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i64, i64* %103, i64 %105
  %107 = load i64, i64* %106, align 8
  %108 = icmp ne i64 %107, 32
  br i1 %108, label %109, label %119

109:                                              ; preds = %100
  %110 = load %struct.ft2_source*, %struct.ft2_source** %2, align 8
  %111 = getelementptr inbounds %struct.ft2_source, %struct.ft2_source* %110, i32 0, i32 0
  %112 = load i64*, i64** %111, align 8
  %113 = load i32, i32* %9, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i64, i64* %112, i64 %114
  %116 = load i64, i64* %115, align 8
  %117 = icmp ne i64 %116, 10
  br i1 %117, label %118, label %119

118:                                              ; preds = %109
  br label %172

119:                                              ; preds = %109, %100
  br label %120

120:                                              ; preds = %119, %99
  %121 = load i32, i32* %4, align 4
  %122 = load i32, i32* %6, align 4
  %123 = add nsw i32 %121, %122
  %124 = load %struct.ft2_source*, %struct.ft2_source** %2, align 8
  %125 = getelementptr inbounds %struct.ft2_source, %struct.ft2_source* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 8
  %127 = icmp sgt i32 %123, %126
  br i1 %127, label %128, label %139

128:                                              ; preds = %120
  %129 = load i32, i32* %5, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %138

131:                                              ; preds = %128
  %132 = load %struct.ft2_source*, %struct.ft2_source** %2, align 8
  %133 = getelementptr inbounds %struct.ft2_source, %struct.ft2_source* %132, i32 0, i32 0
  %134 = load i64*, i64** %133, align 8
  %135 = load i32, i32* %5, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i64, i64* %134, i64 %136
  store i64 10, i64* %137, align 8
  br label %138

138:                                              ; preds = %131, %128
  store i32 0, i32* %4, align 4
  br label %139

139:                                              ; preds = %138, %120
  %140 = load i32, i32* %9, align 4
  %141 = load %struct.ft2_source*, %struct.ft2_source** %2, align 8
  %142 = getelementptr inbounds %struct.ft2_source, %struct.ft2_source* %141, i32 0, i32 0
  %143 = load i64*, i64** %142, align 8
  %144 = call i32 @wcslen(i64* %143)
  %145 = icmp eq i32 %140, %144
  br i1 %145, label %146, label %147

146:                                              ; preds = %139
  br label %192

147:                                              ; preds = %139
  %148 = load i32, i32* %6, align 4
  %149 = load i32, i32* %4, align 4
  %150 = add nsw i32 %149, %148
  store i32 %150, i32* %4, align 4
  store i32 0, i32* %6, align 4
  %151 = load %struct.ft2_source*, %struct.ft2_source** %2, align 8
  %152 = getelementptr inbounds %struct.ft2_source, %struct.ft2_source* %151, i32 0, i32 0
  %153 = load i64*, i64** %152, align 8
  %154 = load i32, i32* %9, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i64, i64* %153, i64 %155
  %157 = load i64, i64* %156, align 8
  %158 = icmp eq i64 %157, 10
  br i1 %158, label %159, label %160

159:                                              ; preds = %147
  store i32 0, i32* %4, align 4
  br label %160

160:                                              ; preds = %159, %147
  %161 = load %struct.ft2_source*, %struct.ft2_source** %2, align 8
  %162 = getelementptr inbounds %struct.ft2_source, %struct.ft2_source* %161, i32 0, i32 0
  %163 = load i64*, i64** %162, align 8
  %164 = load i32, i32* %9, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i64, i64* %163, i64 %165
  %167 = load i64, i64* %166, align 8
  %168 = icmp eq i64 %167, 32
  br i1 %168, label %169, label %171

169:                                              ; preds = %160
  %170 = load i32, i32* %9, align 4
  store i32 %170, i32* %5, align 4
  br label %171

171:                                              ; preds = %169, %160
  br label %172

172:                                              ; preds = %171, %118
  %173 = load %struct.ft2_source*, %struct.ft2_source** %2, align 8
  %174 = getelementptr inbounds %struct.ft2_source, %struct.ft2_source* %173, i32 0, i32 3
  %175 = load i32, i32* %174, align 8
  %176 = load %struct.ft2_source*, %struct.ft2_source** %2, align 8
  %177 = getelementptr inbounds %struct.ft2_source, %struct.ft2_source* %176, i32 0, i32 0
  %178 = load i64*, i64** %177, align 8
  %179 = load i32, i32* %9, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds i64, i64* %178, i64 %180
  %182 = load i64, i64* %181, align 8
  %183 = trunc i64 %182 to i32
  %184 = call i32 @FT_Get_Char_Index(i32 %175, i32 %183)
  store i32 %184, i32* %3, align 4
  %185 = load %struct.TYPE_2__*, %struct.TYPE_2__** @src_glyph, align 8
  %186 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %185, i32 0, i32 0
  %187 = load i64, i64* %186, align 8
  %188 = load i32, i32* %6, align 4
  %189 = sext i32 %188 to i64
  %190 = add nsw i64 %189, %187
  %191 = trunc i64 %190 to i32
  store i32 %191, i32* %6, align 4
  br label %192

192:                                              ; preds = %172, %146
  br label %193

193:                                              ; preds = %192
  %194 = load i32, i32* %9, align 4
  %195 = add nsw i32 %194, 1
  store i32 %195, i32* %9, align 4
  br label %87

196:                                              ; preds = %87
  br label %197

197:                                              ; preds = %196, %80, %74
  %198 = load %struct.ft2_source*, %struct.ft2_source** %2, align 8
  %199 = call i32 @fill_vertex_buffer(%struct.ft2_source* %198)
  %200 = call i32 (...) @obs_leave_graphics()
  br label %201

201:                                              ; preds = %197, %59, %14
  ret void
}

declare dso_local i32 @get_ft2_text_width(i64*, %struct.ft2_source*) #1

declare dso_local i32 @obs_enter_graphics(...) #1

declare dso_local i32 @gs_vertexbuffer_destroy(i32*) #1

declare dso_local i32 @obs_leave_graphics(...) #1

declare dso_local i32* @create_uv_vbuffer(i32, i32) #1

declare dso_local i32 @wcslen(i64*) #1

declare dso_local i32 @FT_Get_Char_Index(i32, i32) #1

declare dso_local i32 @fill_vertex_buffer(%struct.ft2_source*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
