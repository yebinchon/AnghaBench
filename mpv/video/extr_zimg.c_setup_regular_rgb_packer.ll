; ModuleID = '/home/carl/AnghaBench/mpv/video/extr_zimg.c_setup_regular_rgb_packer.c'
source_filename = "/home/carl/AnghaBench/mpv/video/extr_zimg.c_setup_regular_rgb_packer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regular_repacker = type { void (i8*, i8**, i32, i32)*, void (i8*, i8**, i32, i32)*, i32, i32, i32, i32 }
%struct.mp_zimg_repack = type { i32, void (i8*, i8**, i32, i32)*, i32*, i32, i64 }
%struct.mp_regular_imgfmt = type { i32, i32, i64, %struct.mp_regular_imgfmt_plane*, i64 }
%struct.mp_regular_imgfmt_plane = type { i32, i32* }

@regular_repackers = common dso_local global %struct.regular_repacker* null, align 8
@packed_repack = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mp_zimg_repack*)* @setup_regular_rgb_packer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setup_regular_rgb_packer(%struct.mp_zimg_repack* %0) #0 {
  %2 = alloca %struct.mp_zimg_repack*, align 8
  %3 = alloca %struct.mp_regular_imgfmt, align 8
  %4 = alloca %struct.mp_regular_imgfmt_plane*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.mp_regular_imgfmt, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.regular_repacker*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca void (i8*, i8**, i32, i32)*, align 8
  %15 = alloca i32, align 4
  store %struct.mp_zimg_repack* %0, %struct.mp_zimg_repack** %2, align 8
  %16 = load %struct.mp_zimg_repack*, %struct.mp_zimg_repack** %2, align 8
  %17 = getelementptr inbounds %struct.mp_zimg_repack, %struct.mp_zimg_repack* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @mp_get_regular_imgfmt(%struct.mp_regular_imgfmt* %3, i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %1
  br label %231

22:                                               ; preds = %1
  %23 = getelementptr inbounds %struct.mp_regular_imgfmt, %struct.mp_regular_imgfmt* %3, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 1
  br i1 %25, label %33, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.mp_regular_imgfmt, %struct.mp_regular_imgfmt* %3, i32 0, i32 3
  %28 = load %struct.mp_regular_imgfmt_plane*, %struct.mp_regular_imgfmt_plane** %27, align 8
  %29 = getelementptr inbounds %struct.mp_regular_imgfmt_plane, %struct.mp_regular_imgfmt_plane* %28, i64 0
  %30 = getelementptr inbounds %struct.mp_regular_imgfmt_plane, %struct.mp_regular_imgfmt_plane* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp slt i32 %31, 3
  br i1 %32, label %33, label %34

33:                                               ; preds = %26, %22
  br label %231

34:                                               ; preds = %26
  %35 = getelementptr inbounds %struct.mp_regular_imgfmt, %struct.mp_regular_imgfmt* %3, i32 0, i32 3
  %36 = load %struct.mp_regular_imgfmt_plane*, %struct.mp_regular_imgfmt_plane** %35, align 8
  %37 = getelementptr inbounds %struct.mp_regular_imgfmt_plane, %struct.mp_regular_imgfmt_plane* %36, i64 0
  store %struct.mp_regular_imgfmt_plane* %37, %struct.mp_regular_imgfmt_plane** %4, align 8
  store i32 0, i32* %5, align 4
  br label %38

38:                                               ; preds = %55, %34
  %39 = load i32, i32* %5, align 4
  %40 = load %struct.mp_regular_imgfmt_plane*, %struct.mp_regular_imgfmt_plane** %4, align 8
  %41 = getelementptr inbounds %struct.mp_regular_imgfmt_plane, %struct.mp_regular_imgfmt_plane* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp slt i32 %39, %42
  br i1 %43, label %44, label %58

44:                                               ; preds = %38
  %45 = load %struct.mp_regular_imgfmt_plane*, %struct.mp_regular_imgfmt_plane** %4, align 8
  %46 = getelementptr inbounds %struct.mp_regular_imgfmt_plane, %struct.mp_regular_imgfmt_plane* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = load i32, i32* %5, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = icmp sge i32 %51, 4
  br i1 %52, label %53, label %54

53:                                               ; preds = %44
  br label %231

54:                                               ; preds = %44
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %5, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %5, align 4
  br label %38

58:                                               ; preds = %38
  %59 = load %struct.mp_regular_imgfmt_plane*, %struct.mp_regular_imgfmt_plane** %4, align 8
  %60 = getelementptr inbounds %struct.mp_regular_imgfmt_plane, %struct.mp_regular_imgfmt_plane* %59, i32 0, i32 1
  %61 = load i32*, i32** %60, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 0
  %63 = load i32, i32* %62, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %73

65:                                               ; preds = %58
  %66 = load %struct.mp_regular_imgfmt_plane*, %struct.mp_regular_imgfmt_plane** %4, align 8
  %67 = getelementptr inbounds %struct.mp_regular_imgfmt_plane, %struct.mp_regular_imgfmt_plane* %66, i32 0, i32 1
  %68 = load i32*, i32** %67, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 3
  %70 = load i32, i32* %69, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %65
  br label %231

73:                                               ; preds = %65, %58
  %74 = getelementptr inbounds %struct.mp_regular_imgfmt, %struct.mp_regular_imgfmt* %3, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = mul nsw i32 %75, 8
  %77 = getelementptr inbounds %struct.mp_regular_imgfmt, %struct.mp_regular_imgfmt* %3, i32 0, i32 2
  %78 = load i64, i64* %77, align 8
  %79 = call i32 @MPMIN(i32 0, i64 %78)
  %80 = add nsw i32 %76, %79
  store i32 %80, i32* %6, align 4
  %81 = bitcast %struct.mp_regular_imgfmt* %7 to i8*
  %82 = bitcast %struct.mp_regular_imgfmt* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %81, i8* align 8 %82, i64 32, i1 false)
  %83 = getelementptr inbounds %struct.mp_regular_imgfmt, %struct.mp_regular_imgfmt* %7, i32 0, i32 4
  store i64 0, i64* %83, align 8
  %84 = getelementptr inbounds %struct.mp_regular_imgfmt, %struct.mp_regular_imgfmt* %7, i32 0, i32 2
  %85 = load i64, i64* %84, align 8
  %86 = icmp sgt i64 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %73
  %88 = getelementptr inbounds %struct.mp_regular_imgfmt, %struct.mp_regular_imgfmt* %7, i32 0, i32 2
  store i64 0, i64* %88, align 8
  br label %89

89:                                               ; preds = %87, %73
  %90 = getelementptr inbounds %struct.mp_regular_imgfmt, %struct.mp_regular_imgfmt* %7, i32 0, i32 0
  store i32 3, i32* %90, align 8
  store i32 0, i32* %8, align 4
  br label %91

91:                                               ; preds = %113, %89
  %92 = load i32, i32* %8, align 4
  %93 = getelementptr inbounds %struct.mp_regular_imgfmt, %struct.mp_regular_imgfmt* %7, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = icmp slt i32 %92, %94
  br i1 %95, label %96, label %116

96:                                               ; preds = %91
  %97 = getelementptr inbounds %struct.mp_regular_imgfmt, %struct.mp_regular_imgfmt* %7, i32 0, i32 3
  %98 = load %struct.mp_regular_imgfmt_plane*, %struct.mp_regular_imgfmt_plane** %97, align 8
  %99 = load i32, i32* %8, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.mp_regular_imgfmt_plane, %struct.mp_regular_imgfmt_plane* %98, i64 %100
  %102 = getelementptr inbounds %struct.mp_regular_imgfmt_plane, %struct.mp_regular_imgfmt_plane* %101, i32 0, i32 0
  store i32 1, i32* %102, align 8
  %103 = load i32, i32* %8, align 4
  %104 = add nsw i32 %103, 1
  %105 = getelementptr inbounds %struct.mp_regular_imgfmt, %struct.mp_regular_imgfmt* %7, i32 0, i32 3
  %106 = load %struct.mp_regular_imgfmt_plane*, %struct.mp_regular_imgfmt_plane** %105, align 8
  %107 = load i32, i32* %8, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.mp_regular_imgfmt_plane, %struct.mp_regular_imgfmt_plane* %106, i64 %108
  %110 = getelementptr inbounds %struct.mp_regular_imgfmt_plane, %struct.mp_regular_imgfmt_plane* %109, i32 0, i32 1
  %111 = load i32*, i32** %110, align 8
  %112 = getelementptr inbounds i32, i32* %111, i64 0
  store i32 %104, i32* %112, align 4
  br label %113

113:                                              ; preds = %96
  %114 = load i32, i32* %8, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %8, align 4
  br label %91

116:                                              ; preds = %91
  %117 = call i32 @mp_find_regular_imgfmt(%struct.mp_regular_imgfmt* %7)
  store i32 %117, i32* %9, align 4
  %118 = load i32, i32* %9, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %121, label %120

120:                                              ; preds = %116
  br label %231

121:                                              ; preds = %116
  store i32 0, i32* %10, align 4
  br label %122

122:                                              ; preds = %228, %121
  %123 = load i32, i32* %10, align 4
  %124 = load %struct.regular_repacker*, %struct.regular_repacker** @regular_repackers, align 8
  %125 = call i32 @MP_ARRAY_SIZE(%struct.regular_repacker* %124)
  %126 = icmp slt i32 %123, %125
  br i1 %126, label %127, label %231

127:                                              ; preds = %122
  %128 = load %struct.regular_repacker*, %struct.regular_repacker** @regular_repackers, align 8
  %129 = load i32, i32* %10, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds %struct.regular_repacker, %struct.regular_repacker* %128, i64 %130
  store %struct.regular_repacker* %131, %struct.regular_repacker** %11, align 8
  %132 = load %struct.mp_regular_imgfmt_plane*, %struct.mp_regular_imgfmt_plane** %4, align 8
  %133 = getelementptr inbounds %struct.mp_regular_imgfmt_plane, %struct.mp_regular_imgfmt_plane* %132, i32 0, i32 1
  %134 = load i32*, i32** %133, align 8
  %135 = getelementptr inbounds i32, i32* %134, i64 0
  %136 = load i32, i32* %135, align 4
  %137 = icmp ne i32 %136, 0
  %138 = zext i1 %137 to i64
  %139 = select i1 %137, i32 0, i32 8
  store i32 %139, i32* %12, align 4
  %140 = load %struct.mp_regular_imgfmt_plane*, %struct.mp_regular_imgfmt_plane** %4, align 8
  %141 = getelementptr inbounds %struct.mp_regular_imgfmt_plane, %struct.mp_regular_imgfmt_plane* %140, i32 0, i32 1
  %142 = load i32*, i32** %141, align 8
  %143 = getelementptr inbounds i32, i32* %142, i64 0
  %144 = load i32, i32* %143, align 4
  %145 = icmp ne i32 %144, 0
  %146 = zext i1 %145 to i64
  %147 = select i1 %145, i32 0, i32 1
  store i32 %147, i32* %13, align 4
  %148 = load %struct.mp_zimg_repack*, %struct.mp_zimg_repack** %2, align 8
  %149 = getelementptr inbounds %struct.mp_zimg_repack, %struct.mp_zimg_repack* %148, i32 0, i32 4
  %150 = load i64, i64* %149, align 8
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %156

152:                                              ; preds = %127
  %153 = load %struct.regular_repacker*, %struct.regular_repacker** %11, align 8
  %154 = getelementptr inbounds %struct.regular_repacker, %struct.regular_repacker* %153, i32 0, i32 0
  %155 = load void (i8*, i8**, i32, i32)*, void (i8*, i8**, i32, i32)** %154, align 8
  br label %160

156:                                              ; preds = %127
  %157 = load %struct.regular_repacker*, %struct.regular_repacker** %11, align 8
  %158 = getelementptr inbounds %struct.regular_repacker, %struct.regular_repacker* %157, i32 0, i32 1
  %159 = load void (i8*, i8**, i32, i32)*, void (i8*, i8**, i32, i32)** %158, align 8
  br label %160

160:                                              ; preds = %156, %152
  %161 = phi void (i8*, i8**, i32, i32)* [ %155, %152 ], [ %159, %156 ]
  store void (i8*, i8**, i32, i32)* %161, void (i8*, i8**, i32, i32)** %14, align 8
  %162 = load %struct.regular_repacker*, %struct.regular_repacker** %11, align 8
  %163 = getelementptr inbounds %struct.regular_repacker, %struct.regular_repacker* %162, i32 0, i32 2
  %164 = load i32, i32* %163, align 8
  %165 = getelementptr inbounds %struct.mp_regular_imgfmt, %struct.mp_regular_imgfmt* %3, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  %167 = load %struct.mp_regular_imgfmt_plane*, %struct.mp_regular_imgfmt_plane** %4, align 8
  %168 = getelementptr inbounds %struct.mp_regular_imgfmt_plane, %struct.mp_regular_imgfmt_plane* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = mul nsw i32 %166, %169
  %171 = mul nsw i32 %170, 8
  %172 = icmp ne i32 %164, %171
  br i1 %172, label %193, label %173

173:                                              ; preds = %160
  %174 = load %struct.regular_repacker*, %struct.regular_repacker** %11, align 8
  %175 = getelementptr inbounds %struct.regular_repacker, %struct.regular_repacker* %174, i32 0, i32 3
  %176 = load i32, i32* %175, align 4
  %177 = load i32, i32* %6, align 4
  %178 = icmp ne i32 %176, %177
  br i1 %178, label %193, label %179

179:                                              ; preds = %173
  %180 = load %struct.regular_repacker*, %struct.regular_repacker** %11, align 8
  %181 = getelementptr inbounds %struct.regular_repacker, %struct.regular_repacker* %180, i32 0, i32 4
  %182 = load i32, i32* %181, align 8
  %183 = icmp ne i32 %182, 3
  br i1 %183, label %193, label %184

184:                                              ; preds = %179
  %185 = load %struct.regular_repacker*, %struct.regular_repacker** %11, align 8
  %186 = getelementptr inbounds %struct.regular_repacker, %struct.regular_repacker* %185, i32 0, i32 5
  %187 = load i32, i32* %186, align 4
  %188 = load i32, i32* %12, align 4
  %189 = icmp ne i32 %187, %188
  br i1 %189, label %193, label %190

190:                                              ; preds = %184
  %191 = load void (i8*, i8**, i32, i32)*, void (i8*, i8**, i32, i32)** %14, align 8
  %192 = icmp ne void (i8*, i8**, i32, i32)* %191, null
  br i1 %192, label %194, label %193

193:                                              ; preds = %190, %184, %179, %173, %160
  br label %228

194:                                              ; preds = %190
  %195 = load i32, i32* @packed_repack, align 4
  %196 = load %struct.mp_zimg_repack*, %struct.mp_zimg_repack** %2, align 8
  %197 = getelementptr inbounds %struct.mp_zimg_repack, %struct.mp_zimg_repack* %196, i32 0, i32 3
  store i32 %195, i32* %197, align 8
  %198 = load void (i8*, i8**, i32, i32)*, void (i8*, i8**, i32, i32)** %14, align 8
  %199 = load %struct.mp_zimg_repack*, %struct.mp_zimg_repack** %2, align 8
  %200 = getelementptr inbounds %struct.mp_zimg_repack, %struct.mp_zimg_repack* %199, i32 0, i32 1
  store void (i8*, i8**, i32, i32)* %198, void (i8*, i8**, i32, i32)** %200, align 8
  %201 = load i32, i32* %9, align 4
  %202 = load %struct.mp_zimg_repack*, %struct.mp_zimg_repack** %2, align 8
  %203 = getelementptr inbounds %struct.mp_zimg_repack, %struct.mp_zimg_repack* %202, i32 0, i32 0
  store i32 %201, i32* %203, align 8
  store i32 0, i32* %15, align 4
  br label %204

204:                                              ; preds = %224, %194
  %205 = load i32, i32* %15, align 4
  %206 = icmp slt i32 %205, 3
  br i1 %206, label %207, label %227

207:                                              ; preds = %204
  %208 = load %struct.mp_regular_imgfmt_plane*, %struct.mp_regular_imgfmt_plane** %4, align 8
  %209 = getelementptr inbounds %struct.mp_regular_imgfmt_plane, %struct.mp_regular_imgfmt_plane* %208, i32 0, i32 1
  %210 = load i32*, i32** %209, align 8
  %211 = load i32, i32* %13, align 4
  %212 = load i32, i32* %15, align 4
  %213 = add nsw i32 %211, %212
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds i32, i32* %210, i64 %214
  %216 = load i32, i32* %215, align 4
  %217 = sub nsw i32 %216, 1
  %218 = load %struct.mp_zimg_repack*, %struct.mp_zimg_repack** %2, align 8
  %219 = getelementptr inbounds %struct.mp_zimg_repack, %struct.mp_zimg_repack* %218, i32 0, i32 2
  %220 = load i32*, i32** %219, align 8
  %221 = load i32, i32* %15, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds i32, i32* %220, i64 %222
  store i32 %217, i32* %223, align 4
  br label %224

224:                                              ; preds = %207
  %225 = load i32, i32* %15, align 4
  %226 = add nsw i32 %225, 1
  store i32 %226, i32* %15, align 4
  br label %204

227:                                              ; preds = %204
  br label %231

228:                                              ; preds = %193
  %229 = load i32, i32* %10, align 4
  %230 = add nsw i32 %229, 1
  store i32 %230, i32* %10, align 4
  br label %122

231:                                              ; preds = %21, %33, %53, %72, %120, %227, %122
  ret void
}

declare dso_local i32 @mp_get_regular_imgfmt(%struct.mp_regular_imgfmt*, i32) #1

declare dso_local i32 @MPMIN(i32, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @mp_find_regular_imgfmt(%struct.mp_regular_imgfmt*) #1

declare dso_local i32 @MP_ARRAY_SIZE(%struct.regular_repacker*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
