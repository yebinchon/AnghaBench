; ModuleID = '/home/carl/AnghaBench/mpv/video/out/gpu/extr_ra.c_ra_get_imgfmt_desc.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/gpu/extr_ra.c_ra_get_imgfmt_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ra = type { i32, %struct.TYPE_3__** }
%struct.TYPE_3__ = type { i32, %struct.ra_imgfmt_desc* }
%struct.ra_imgfmt_desc = type { i32, i32, i64, i32, i32, %struct.TYPE_4__**, i32**, i32 }
%struct.TYPE_4__ = type { i64*, i32 }
%struct.mp_regular_imgfmt = type { i32, i32, i64, i32, i32, i32, %struct.mp_regular_imgfmt_plane* }
%struct.mp_regular_imgfmt_plane = type { i32, i32* }

@RA_CTYPE_UNKNOWN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ra_get_imgfmt_desc(%struct.ra* %0, i32 %1, %struct.ra_imgfmt_desc* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ra*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ra_imgfmt_desc*, align 8
  %8 = alloca %struct.ra_imgfmt_desc, align 8
  %9 = alloca %struct.mp_regular_imgfmt, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.mp_regular_imgfmt_plane*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.ra* %0, %struct.ra** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.ra_imgfmt_desc* %2, %struct.ra_imgfmt_desc** %7, align 8
  %15 = bitcast %struct.ra_imgfmt_desc* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %15, i8 0, i64 48, i1 false)
  %16 = load i32, i32* %6, align 4
  %17 = call i64 @mp_get_regular_imgfmt(%struct.mp_regular_imgfmt* %9, i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %146

19:                                               ; preds = %3
  %20 = load i32, i32* @RA_CTYPE_UNKNOWN, align 4
  store i32 %20, i32* %10, align 4
  %21 = getelementptr inbounds %struct.mp_regular_imgfmt, %struct.mp_regular_imgfmt* %9, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = getelementptr inbounds %struct.ra_imgfmt_desc, %struct.ra_imgfmt_desc* %8, i32 0, i32 0
  store i32 %22, i32* %23, align 8
  %24 = getelementptr inbounds %struct.mp_regular_imgfmt, %struct.mp_regular_imgfmt* %9, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = mul nsw i32 %25, 8
  %27 = getelementptr inbounds %struct.ra_imgfmt_desc, %struct.ra_imgfmt_desc* %8, i32 0, i32 1
  store i32 %26, i32* %27, align 4
  %28 = getelementptr inbounds %struct.mp_regular_imgfmt, %struct.mp_regular_imgfmt* %9, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = getelementptr inbounds %struct.ra_imgfmt_desc, %struct.ra_imgfmt_desc* %8, i32 0, i32 2
  store i64 %29, i64* %30, align 8
  store i32 0, i32* %11, align 4
  br label %31

31:                                               ; preds = %136, %19
  %32 = load i32, i32* %11, align 4
  %33 = getelementptr inbounds %struct.mp_regular_imgfmt, %struct.mp_regular_imgfmt* %9, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp slt i32 %32, %34
  br i1 %35, label %36, label %139

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct.mp_regular_imgfmt, %struct.mp_regular_imgfmt* %9, i32 0, i32 6
  %38 = load %struct.mp_regular_imgfmt_plane*, %struct.mp_regular_imgfmt_plane** %37, align 8
  %39 = load i32, i32* %11, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.mp_regular_imgfmt_plane, %struct.mp_regular_imgfmt_plane* %38, i64 %40
  store %struct.mp_regular_imgfmt_plane* %41, %struct.mp_regular_imgfmt_plane** %12, align 8
  %42 = load %struct.ra*, %struct.ra** %5, align 8
  %43 = getelementptr inbounds %struct.mp_regular_imgfmt, %struct.mp_regular_imgfmt* %9, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.mp_regular_imgfmt_plane*, %struct.mp_regular_imgfmt_plane** %12, align 8
  %46 = getelementptr inbounds %struct.mp_regular_imgfmt_plane, %struct.mp_regular_imgfmt_plane* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = getelementptr inbounds %struct.mp_regular_imgfmt, %struct.mp_regular_imgfmt* %9, i32 0, i32 5
  %49 = load i32, i32* %48, align 8
  %50 = call %struct.TYPE_4__* @find_plane_format(%struct.ra* %42, i32 %44, i32 %47, i32 %49)
  %51 = getelementptr inbounds %struct.ra_imgfmt_desc, %struct.ra_imgfmt_desc* %8, i32 0, i32 5
  %52 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %51, align 8
  %53 = load i32, i32* %11, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %52, i64 %54
  store %struct.TYPE_4__* %50, %struct.TYPE_4__** %55, align 8
  %56 = getelementptr inbounds %struct.ra_imgfmt_desc, %struct.ra_imgfmt_desc* %8, i32 0, i32 5
  %57 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %56, align 8
  %58 = load i32, i32* %11, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %57, i64 %59
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %60, align 8
  %62 = icmp ne %struct.TYPE_4__* %61, null
  br i1 %62, label %64, label %63

63:                                               ; preds = %36
  store i32 0, i32* %4, align 4
  br label %189

64:                                               ; preds = %36
  store i32 0, i32* %13, align 4
  br label %65

65:                                               ; preds = %88, %64
  %66 = load i32, i32* %13, align 4
  %67 = load %struct.mp_regular_imgfmt_plane*, %struct.mp_regular_imgfmt_plane** %12, align 8
  %68 = getelementptr inbounds %struct.mp_regular_imgfmt_plane, %struct.mp_regular_imgfmt_plane* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = icmp slt i32 %66, %69
  br i1 %70, label %71, label %91

71:                                               ; preds = %65
  %72 = load %struct.mp_regular_imgfmt_plane*, %struct.mp_regular_imgfmt_plane** %12, align 8
  %73 = getelementptr inbounds %struct.mp_regular_imgfmt_plane, %struct.mp_regular_imgfmt_plane* %72, i32 0, i32 1
  %74 = load i32*, i32** %73, align 8
  %75 = load i32, i32* %13, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = getelementptr inbounds %struct.ra_imgfmt_desc, %struct.ra_imgfmt_desc* %8, i32 0, i32 6
  %80 = load i32**, i32*** %79, align 8
  %81 = load i32, i32* %11, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32*, i32** %80, i64 %82
  %84 = load i32*, i32** %83, align 8
  %85 = load i32, i32* %13, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %84, i64 %86
  store i32 %78, i32* %87, align 4
  br label %88

88:                                               ; preds = %71
  %89 = load i32, i32* %13, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %13, align 4
  br label %65

91:                                               ; preds = %65
  %92 = getelementptr inbounds %struct.ra_imgfmt_desc, %struct.ra_imgfmt_desc* %8, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.ra_imgfmt_desc, %struct.ra_imgfmt_desc* %8, i32 0, i32 5
  %96 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %95, align 8
  %97 = load i32, i32* %11, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %96, i64 %98
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 0
  %102 = load i64*, i64** %101, align 8
  %103 = getelementptr inbounds i64, i64* %102, i64 0
  %104 = load i64, i64* %103, align 8
  %105 = icmp sgt i64 %94, %104
  br i1 %105, label %106, label %111

106:                                              ; preds = %91
  %107 = getelementptr inbounds %struct.ra_imgfmt_desc, %struct.ra_imgfmt_desc* %8, i32 0, i32 2
  %108 = load i64, i64* %107, align 8
  %109 = icmp slt i64 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %106
  store i32 0, i32* %4, align 4
  br label %189

111:                                              ; preds = %106, %91
  %112 = load i32, i32* %10, align 4
  %113 = load i32, i32* @RA_CTYPE_UNKNOWN, align 4
  %114 = icmp ne i32 %112, %113
  br i1 %114, label %115, label %127

115:                                              ; preds = %111
  %116 = load i32, i32* %10, align 4
  %117 = getelementptr inbounds %struct.ra_imgfmt_desc, %struct.ra_imgfmt_desc* %8, i32 0, i32 5
  %118 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %117, align 8
  %119 = load i32, i32* %11, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %118, i64 %120
  %122 = load %struct.TYPE_4__*, %struct.TYPE_4__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 8
  %125 = icmp ne i32 %116, %124
  br i1 %125, label %126, label %127

126:                                              ; preds = %115
  store i32 0, i32* %4, align 4
  br label %189

127:                                              ; preds = %115, %111
  %128 = getelementptr inbounds %struct.ra_imgfmt_desc, %struct.ra_imgfmt_desc* %8, i32 0, i32 5
  %129 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %128, align 8
  %130 = load i32, i32* %11, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %129, i64 %131
  %133 = load %struct.TYPE_4__*, %struct.TYPE_4__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 8
  store i32 %135, i32* %10, align 4
  br label %136

136:                                              ; preds = %127
  %137 = load i32, i32* %11, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %11, align 4
  br label %31

139:                                              ; preds = %31
  %140 = getelementptr inbounds %struct.mp_regular_imgfmt, %struct.mp_regular_imgfmt* %9, i32 0, i32 4
  %141 = load i32, i32* %140, align 4
  %142 = getelementptr inbounds %struct.ra_imgfmt_desc, %struct.ra_imgfmt_desc* %8, i32 0, i32 4
  store i32 %141, i32* %142, align 4
  %143 = getelementptr inbounds %struct.mp_regular_imgfmt, %struct.mp_regular_imgfmt* %9, i32 0, i32 3
  %144 = load i32, i32* %143, align 8
  %145 = getelementptr inbounds %struct.ra_imgfmt_desc, %struct.ra_imgfmt_desc* %8, i32 0, i32 3
  store i32 %144, i32* %145, align 8
  br label %185

146:                                              ; preds = %3
  store i32 0, i32* %14, align 4
  br label %147

147:                                              ; preds = %181, %146
  %148 = load i32, i32* %14, align 4
  %149 = load %struct.ra*, %struct.ra** %5, align 8
  %150 = getelementptr inbounds %struct.ra, %struct.ra* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = icmp slt i32 %148, %151
  br i1 %152, label %153, label %184

153:                                              ; preds = %147
  %154 = load i32, i32* %6, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %180

156:                                              ; preds = %153
  %157 = load %struct.ra*, %struct.ra** %5, align 8
  %158 = getelementptr inbounds %struct.ra, %struct.ra* %157, i32 0, i32 1
  %159 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %158, align 8
  %160 = load i32, i32* %14, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %159, i64 %161
  %163 = load %struct.TYPE_3__*, %struct.TYPE_3__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = load i32, i32* %6, align 4
  %167 = icmp eq i32 %165, %166
  br i1 %167, label %168, label %180

168:                                              ; preds = %156
  %169 = load %struct.ra*, %struct.ra** %5, align 8
  %170 = getelementptr inbounds %struct.ra, %struct.ra* %169, i32 0, i32 1
  %171 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %170, align 8
  %172 = load i32, i32* %14, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %171, i64 %173
  %175 = load %struct.TYPE_3__*, %struct.TYPE_3__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %175, i32 0, i32 1
  %177 = load %struct.ra_imgfmt_desc*, %struct.ra_imgfmt_desc** %176, align 8
  %178 = bitcast %struct.ra_imgfmt_desc* %8 to i8*
  %179 = bitcast %struct.ra_imgfmt_desc* %177 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %178, i8* align 8 %179, i64 48, i1 false)
  br label %185

180:                                              ; preds = %156, %153
  br label %181

181:                                              ; preds = %180
  %182 = load i32, i32* %14, align 4
  %183 = add nsw i32 %182, 1
  store i32 %183, i32* %14, align 4
  br label %147

184:                                              ; preds = %147
  store i32 0, i32* %4, align 4
  br label %189

185:                                              ; preds = %168, %139
  %186 = load %struct.ra_imgfmt_desc*, %struct.ra_imgfmt_desc** %7, align 8
  %187 = bitcast %struct.ra_imgfmt_desc* %186 to i8*
  %188 = bitcast %struct.ra_imgfmt_desc* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %187, i8* align 8 %188, i64 48, i1 false)
  store i32 1, i32* %4, align 4
  br label %189

189:                                              ; preds = %185, %184, %126, %110, %63
  %190 = load i32, i32* %4, align 4
  ret i32 %190
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @mp_get_regular_imgfmt(%struct.mp_regular_imgfmt*, i32) #2

declare dso_local %struct.TYPE_4__* @find_plane_format(%struct.ra*, i32, i32, i32) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
