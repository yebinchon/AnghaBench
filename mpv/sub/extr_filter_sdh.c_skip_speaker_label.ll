; ModuleID = '/home/carl/AnghaBench/mpv/sub/extr_filter_sdh.c_skip_speaker_label.c'
source_filename = "/home/carl/AnghaBench/mpv/sub/extr_filter_sdh.c_skip_speaker_label.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sd = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.buffer = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sd*, i8**, %struct.buffer*)* @skip_speaker_label to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @skip_speaker_label(%struct.sd* %0, i8** %1, %struct.buffer* %2) #0 {
  %4 = alloca %struct.sd*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca %struct.buffer*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.sd* %0, %struct.sd** %4, align 8
  store i8** %1, i8*** %5, align 8
  store %struct.buffer* %2, %struct.buffer** %6, align 8
  %10 = load %struct.sd*, %struct.sd** %4, align 8
  %11 = getelementptr inbounds %struct.sd, %struct.sd* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %7, align 4
  %15 = load i8**, i8*** %5, align 8
  %16 = load i8*, i8** %15, align 8
  store i8* %16, i8** %8, align 8
  %17 = load %struct.buffer*, %struct.buffer** %6, align 8
  %18 = getelementptr inbounds %struct.buffer, %struct.buffer* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %9, align 4
  %20 = load %struct.sd*, %struct.sd** %4, align 8
  %21 = load %struct.buffer*, %struct.buffer** %6, align 8
  %22 = call i32 @copy_ass(%struct.sd* %20, i8** %8, %struct.buffer* %21)
  %23 = load i8*, i8** %8, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 0
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp eq i32 %26, 45
  br i1 %27, label %28, label %37

28:                                               ; preds = %3
  %29 = load %struct.sd*, %struct.sd** %4, align 8
  %30 = load %struct.buffer*, %struct.buffer** %6, align 8
  %31 = load i8*, i8** %8, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 0
  %33 = load i8, i8* %32, align 1
  %34 = call i32 @append(%struct.sd* %29, %struct.buffer* %30, i8 signext %33)
  %35 = load i8*, i8** %8, align 8
  %36 = getelementptr inbounds i8, i8* %35, i32 1
  store i8* %36, i8** %8, align 8
  br label %37

37:                                               ; preds = %28, %3
  %38 = load %struct.sd*, %struct.sd** %4, align 8
  %39 = load %struct.buffer*, %struct.buffer** %6, align 8
  %40 = call i32 @copy_ass(%struct.sd* %38, i8** %8, %struct.buffer* %39)
  br label %41

41:                                               ; preds = %47, %37
  %42 = load i8*, i8** %8, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 0
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp eq i32 %45, 32
  br i1 %46, label %47, label %59

47:                                               ; preds = %41
  %48 = load %struct.sd*, %struct.sd** %4, align 8
  %49 = load %struct.buffer*, %struct.buffer** %6, align 8
  %50 = load i8*, i8** %8, align 8
  %51 = getelementptr inbounds i8, i8* %50, i64 0
  %52 = load i8, i8* %51, align 1
  %53 = call i32 @append(%struct.sd* %48, %struct.buffer* %49, i8 signext %52)
  %54 = load i8*, i8** %8, align 8
  %55 = getelementptr inbounds i8, i8* %54, i32 1
  store i8* %55, i8** %8, align 8
  %56 = load %struct.sd*, %struct.sd** %4, align 8
  %57 = load %struct.buffer*, %struct.buffer** %6, align 8
  %58 = call i32 @copy_ass(%struct.sd* %56, i8** %8, %struct.buffer* %57)
  br label %41

59:                                               ; preds = %41
  br label %60

60:                                               ; preds = %163, %59
  %61 = load i8*, i8** %8, align 8
  %62 = load i8, i8* %61, align 1
  %63 = sext i8 %62 to i32
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %60
  %66 = load i8*, i8** %8, align 8
  %67 = getelementptr inbounds i8, i8* %66, i64 0
  %68 = load i8, i8* %67, align 1
  %69 = sext i8 %68 to i32
  %70 = icmp ne i32 %69, 58
  br label %71

71:                                               ; preds = %65, %60
  %72 = phi i1 [ false, %60 ], [ %70, %65 ]
  br i1 %72, label %73, label %164

73:                                               ; preds = %71
  %74 = load i8*, i8** %8, align 8
  %75 = getelementptr inbounds i8, i8* %74, i64 0
  %76 = load i8, i8* %75, align 1
  %77 = sext i8 %76 to i32
  %78 = icmp eq i32 %77, 123
  br i1 %78, label %79, label %83

79:                                               ; preds = %73
  %80 = load %struct.sd*, %struct.sd** %4, align 8
  %81 = load %struct.buffer*, %struct.buffer** %6, align 8
  %82 = call i32 @copy_ass(%struct.sd* %80, i8** %8, %struct.buffer* %81)
  br label %163

83:                                               ; preds = %73
  %84 = load i8*, i8** %8, align 8
  %85 = getelementptr inbounds i8, i8* %84, i64 0
  %86 = load i8, i8* %85, align 1
  %87 = call i64 @mp_isalpha(i8 signext %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %104

89:                                               ; preds = %83
  %90 = load i32, i32* %7, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %155, label %92

92:                                               ; preds = %89
  %93 = load i8*, i8** %8, align 8
  %94 = getelementptr inbounds i8, i8* %93, i64 0
  %95 = load i8, i8* %94, align 1
  %96 = call i64 @mp_isupper(i8 signext %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %155, label %98

98:                                               ; preds = %92
  %99 = load i8*, i8** %8, align 8
  %100 = getelementptr inbounds i8, i8* %99, i64 0
  %101 = load i8, i8* %100, align 1
  %102 = sext i8 %101 to i32
  %103 = icmp eq i32 %102, 108
  br i1 %103, label %155, label %104

104:                                              ; preds = %98, %83
  %105 = load i8*, i8** %8, align 8
  %106 = getelementptr inbounds i8, i8* %105, i64 0
  %107 = load i8, i8* %106, align 1
  %108 = call i64 @mp_isdigit(i8 signext %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %155, label %110

110:                                              ; preds = %104
  %111 = load i8*, i8** %8, align 8
  %112 = getelementptr inbounds i8, i8* %111, i64 0
  %113 = load i8, i8* %112, align 1
  %114 = sext i8 %113 to i32
  %115 = icmp eq i32 %114, 32
  br i1 %115, label %155, label %116

116:                                              ; preds = %110
  %117 = load i8*, i8** %8, align 8
  %118 = getelementptr inbounds i8, i8* %117, i64 0
  %119 = load i8, i8* %118, align 1
  %120 = sext i8 %119 to i32
  %121 = icmp eq i32 %120, 39
  br i1 %121, label %155, label %122

122:                                              ; preds = %116
  %123 = load i32, i32* %7, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %137

125:                                              ; preds = %122
  %126 = load i8*, i8** %8, align 8
  %127 = getelementptr inbounds i8, i8* %126, i64 0
  %128 = load i8, i8* %127, align 1
  %129 = sext i8 %128 to i32
  %130 = icmp eq i32 %129, 40
  br i1 %130, label %155, label %131

131:                                              ; preds = %125
  %132 = load i8*, i8** %8, align 8
  %133 = getelementptr inbounds i8, i8* %132, i64 0
  %134 = load i8, i8* %133, align 1
  %135 = sext i8 %134 to i32
  %136 = icmp eq i32 %135, 41
  br i1 %136, label %155, label %137

137:                                              ; preds = %131, %122
  %138 = load i8*, i8** %8, align 8
  %139 = getelementptr inbounds i8, i8* %138, i64 0
  %140 = load i8, i8* %139, align 1
  %141 = sext i8 %140 to i32
  %142 = icmp eq i32 %141, 35
  br i1 %142, label %155, label %143

143:                                              ; preds = %137
  %144 = load i8*, i8** %8, align 8
  %145 = getelementptr inbounds i8, i8* %144, i64 0
  %146 = load i8, i8* %145, align 1
  %147 = sext i8 %146 to i32
  %148 = icmp eq i32 %147, 46
  br i1 %148, label %155, label %149

149:                                              ; preds = %143
  %150 = load i8*, i8** %8, align 8
  %151 = getelementptr inbounds i8, i8* %150, i64 0
  %152 = load i8, i8* %151, align 1
  %153 = sext i8 %152 to i32
  %154 = icmp eq i32 %153, 44
  br i1 %154, label %155, label %158

155:                                              ; preds = %149, %143, %137, %131, %125, %116, %110, %104, %98, %92, %89
  %156 = load i8*, i8** %8, align 8
  %157 = getelementptr inbounds i8, i8* %156, i32 1
  store i8* %157, i8** %8, align 8
  br label %162

158:                                              ; preds = %149
  %159 = load i32, i32* %9, align 4
  %160 = load %struct.buffer*, %struct.buffer** %6, align 8
  %161 = getelementptr inbounds %struct.buffer, %struct.buffer* %160, i32 0, i32 0
  store i32 %159, i32* %161, align 4
  br label %238

162:                                              ; preds = %155
  br label %163

163:                                              ; preds = %162, %79
  br label %60

164:                                              ; preds = %71
  %165 = load i8*, i8** %8, align 8
  %166 = load i8, i8* %165, align 1
  %167 = icmp ne i8 %166, 0
  br i1 %167, label %172, label %168

168:                                              ; preds = %164
  %169 = load i32, i32* %9, align 4
  %170 = load %struct.buffer*, %struct.buffer** %6, align 8
  %171 = getelementptr inbounds %struct.buffer, %struct.buffer* %170, i32 0, i32 0
  store i32 %169, i32* %171, align 4
  br label %238

172:                                              ; preds = %164
  %173 = load i8*, i8** %8, align 8
  %174 = getelementptr inbounds i8, i8* %173, i32 1
  store i8* %174, i8** %8, align 8
  %175 = load %struct.sd*, %struct.sd** %4, align 8
  %176 = load %struct.buffer*, %struct.buffer** %6, align 8
  %177 = call i32 @copy_ass(%struct.sd* %175, i8** %8, %struct.buffer* %176)
  %178 = load i8*, i8** %8, align 8
  %179 = load i8, i8* %178, align 1
  %180 = icmp ne i8 %179, 0
  br i1 %180, label %182, label %181

181:                                              ; preds = %172
  br label %235

182:                                              ; preds = %172
  %183 = load i8*, i8** %8, align 8
  %184 = getelementptr inbounds i8, i8* %183, i64 0
  %185 = load i8, i8* %184, align 1
  %186 = sext i8 %185 to i32
  %187 = icmp eq i32 %186, 92
  br i1 %187, label %188, label %197

188:                                              ; preds = %182
  %189 = load i8*, i8** %8, align 8
  %190 = getelementptr inbounds i8, i8* %189, i64 1
  %191 = load i8, i8* %190, align 1
  %192 = sext i8 %191 to i32
  %193 = icmp eq i32 %192, 78
  br i1 %193, label %194, label %197

194:                                              ; preds = %188
  %195 = load i8*, i8** %8, align 8
  %196 = getelementptr inbounds i8, i8* %195, i64 2
  store i8* %196, i8** %8, align 8
  br label %234

197:                                              ; preds = %188, %182
  %198 = load i8*, i8** %8, align 8
  %199 = getelementptr inbounds i8, i8* %198, i64 0
  %200 = load i8, i8* %199, align 1
  %201 = sext i8 %200 to i32
  %202 = icmp eq i32 %201, 32
  br i1 %202, label %203, label %229

203:                                              ; preds = %197
  br label %204

204:                                              ; preds = %210, %203
  %205 = load i8*, i8** %8, align 8
  %206 = getelementptr inbounds i8, i8* %205, i64 0
  %207 = load i8, i8* %206, align 1
  %208 = sext i8 %207 to i32
  %209 = icmp eq i32 %208, 32
  br i1 %209, label %210, label %213

210:                                              ; preds = %204
  %211 = load i8*, i8** %8, align 8
  %212 = getelementptr inbounds i8, i8* %211, i32 1
  store i8* %212, i8** %8, align 8
  br label %204

213:                                              ; preds = %204
  %214 = load i8*, i8** %8, align 8
  %215 = getelementptr inbounds i8, i8* %214, i64 0
  %216 = load i8, i8* %215, align 1
  %217 = sext i8 %216 to i32
  %218 = icmp eq i32 %217, 92
  br i1 %218, label %219, label %228

219:                                              ; preds = %213
  %220 = load i8*, i8** %8, align 8
  %221 = getelementptr inbounds i8, i8* %220, i64 1
  %222 = load i8, i8* %221, align 1
  %223 = sext i8 %222 to i32
  %224 = icmp eq i32 %223, 78
  br i1 %224, label %225, label %228

225:                                              ; preds = %219
  %226 = load i8*, i8** %8, align 8
  %227 = getelementptr inbounds i8, i8* %226, i64 2
  store i8* %227, i8** %8, align 8
  br label %228

228:                                              ; preds = %225, %219, %213
  br label %233

229:                                              ; preds = %197
  %230 = load i32, i32* %9, align 4
  %231 = load %struct.buffer*, %struct.buffer** %6, align 8
  %232 = getelementptr inbounds %struct.buffer, %struct.buffer* %231, i32 0, i32 0
  store i32 %230, i32* %232, align 4
  br label %238

233:                                              ; preds = %228
  br label %234

234:                                              ; preds = %233, %194
  br label %235

235:                                              ; preds = %234, %181
  %236 = load i8*, i8** %8, align 8
  %237 = load i8**, i8*** %5, align 8
  store i8* %236, i8** %237, align 8
  br label %238

238:                                              ; preds = %235, %229, %168, %158
  ret void
}

declare dso_local i32 @copy_ass(%struct.sd*, i8**, %struct.buffer*) #1

declare dso_local i32 @append(%struct.sd*, %struct.buffer*, i8 signext) #1

declare dso_local i64 @mp_isalpha(i8 signext) #1

declare dso_local i64 @mp_isupper(i8 signext) #1

declare dso_local i64 @mp_isdigit(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
