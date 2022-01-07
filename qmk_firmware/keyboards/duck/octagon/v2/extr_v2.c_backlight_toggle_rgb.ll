; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/duck/octagon/v2/extr_v2.c_backlight_toggle_rgb.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/duck/octagon/v2/extr_v2.c_backlight_toggle_rgb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32 }

@backlight_rgb_r = common dso_local global i32 0, align 4
@backlight_rgb_g = common dso_local global i32 0, align 4
@backlight_rgb_b = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @backlight_toggle_rgb(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca [17 x [3 x %struct.TYPE_3__]], align 16
  %4 = alloca [17 x [3 x %struct.TYPE_3__]], align 16
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %283

7:                                                ; preds = %1
  %8 = getelementptr inbounds [17 x [3 x %struct.TYPE_3__]], [17 x [3 x %struct.TYPE_3__]]* %3, i64 0, i64 0
  %9 = getelementptr inbounds [3 x %struct.TYPE_3__], [3 x %struct.TYPE_3__]* %8, i64 0, i64 0
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32, i32* @backlight_rgb_r, align 4
  store i32 %11, i32* %10, align 4
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 1
  %13 = load i32, i32* @backlight_rgb_g, align 4
  store i32 %13, i32* %12, align 4
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 2
  %15 = load i32, i32* @backlight_rgb_b, align 4
  store i32 %15, i32* %14, align 4
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i64 1
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i64 3
  br label %18

18:                                               ; preds = %18, %7
  %19 = phi %struct.TYPE_3__* [ %16, %7 ], [ %21, %18 ]
  %20 = bitcast %struct.TYPE_3__* %19 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %20, i8 0, i64 12, i1 false)
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i64 1
  %22 = icmp eq %struct.TYPE_3__* %21, %17
  br i1 %22, label %23, label %18

23:                                               ; preds = %18
  %24 = getelementptr inbounds [3 x %struct.TYPE_3__], [3 x %struct.TYPE_3__]* %8, i64 1
  %25 = getelementptr inbounds [3 x %struct.TYPE_3__], [3 x %struct.TYPE_3__]* %24, i64 0, i64 0
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* @backlight_rgb_r, align 4
  store i32 %27, i32* %26, align 4
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 1
  %29 = load i32, i32* @backlight_rgb_g, align 4
  store i32 %29, i32* %28, align 4
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 2
  %31 = load i32, i32* @backlight_rgb_b, align 4
  store i32 %31, i32* %30, align 4
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i64 1
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i64 3
  br label %34

34:                                               ; preds = %34, %23
  %35 = phi %struct.TYPE_3__* [ %32, %23 ], [ %37, %34 ]
  %36 = bitcast %struct.TYPE_3__* %35 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %36, i8 0, i64 12, i1 false)
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i64 1
  %38 = icmp eq %struct.TYPE_3__* %37, %33
  br i1 %38, label %39, label %34

39:                                               ; preds = %34
  %40 = getelementptr inbounds [3 x %struct.TYPE_3__], [3 x %struct.TYPE_3__]* %24, i64 1
  %41 = getelementptr inbounds [3 x %struct.TYPE_3__], [3 x %struct.TYPE_3__]* %40, i64 0, i64 0
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i32, i32* @backlight_rgb_r, align 4
  store i32 %43, i32* %42, align 4
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 1
  %45 = load i32, i32* @backlight_rgb_g, align 4
  store i32 %45, i32* %44, align 4
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 2
  %47 = load i32, i32* @backlight_rgb_b, align 4
  store i32 %47, i32* %46, align 4
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i64 1
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i64 3
  br label %50

50:                                               ; preds = %50, %39
  %51 = phi %struct.TYPE_3__* [ %48, %39 ], [ %53, %50 ]
  %52 = bitcast %struct.TYPE_3__* %51 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %52, i8 0, i64 12, i1 false)
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i64 1
  %54 = icmp eq %struct.TYPE_3__* %53, %49
  br i1 %54, label %55, label %50

55:                                               ; preds = %50
  %56 = getelementptr inbounds [3 x %struct.TYPE_3__], [3 x %struct.TYPE_3__]* %40, i64 1
  %57 = getelementptr inbounds [3 x %struct.TYPE_3__], [3 x %struct.TYPE_3__]* %56, i64 0, i64 0
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = load i32, i32* @backlight_rgb_r, align 4
  store i32 %59, i32* %58, align 4
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 1
  %61 = load i32, i32* @backlight_rgb_g, align 4
  store i32 %61, i32* %60, align 4
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 2
  %63 = load i32, i32* @backlight_rgb_b, align 4
  store i32 %63, i32* %62, align 4
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i64 1
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i64 3
  br label %66

66:                                               ; preds = %66, %55
  %67 = phi %struct.TYPE_3__* [ %64, %55 ], [ %69, %66 ]
  %68 = bitcast %struct.TYPE_3__* %67 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %68, i8 0, i64 12, i1 false)
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i64 1
  %70 = icmp eq %struct.TYPE_3__* %69, %65
  br i1 %70, label %71, label %66

71:                                               ; preds = %66
  %72 = getelementptr inbounds [3 x %struct.TYPE_3__], [3 x %struct.TYPE_3__]* %56, i64 1
  %73 = getelementptr inbounds [3 x %struct.TYPE_3__], [3 x %struct.TYPE_3__]* %72, i64 0, i64 0
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 0
  %75 = load i32, i32* @backlight_rgb_r, align 4
  store i32 %75, i32* %74, align 4
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 1
  %77 = load i32, i32* @backlight_rgb_g, align 4
  store i32 %77, i32* %76, align 4
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 2
  %79 = load i32, i32* @backlight_rgb_b, align 4
  store i32 %79, i32* %78, align 4
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i64 1
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i64 3
  br label %82

82:                                               ; preds = %82, %71
  %83 = phi %struct.TYPE_3__* [ %80, %71 ], [ %85, %82 ]
  %84 = bitcast %struct.TYPE_3__* %83 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %84, i8 0, i64 12, i1 false)
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i64 1
  %86 = icmp eq %struct.TYPE_3__* %85, %81
  br i1 %86, label %87, label %82

87:                                               ; preds = %82
  %88 = getelementptr inbounds [3 x %struct.TYPE_3__], [3 x %struct.TYPE_3__]* %72, i64 1
  %89 = getelementptr inbounds [3 x %struct.TYPE_3__], [3 x %struct.TYPE_3__]* %88, i64 0, i64 0
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 0
  %91 = load i32, i32* @backlight_rgb_r, align 4
  store i32 %91, i32* %90, align 4
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 1
  %93 = load i32, i32* @backlight_rgb_g, align 4
  store i32 %93, i32* %92, align 4
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 2
  %95 = load i32, i32* @backlight_rgb_b, align 4
  store i32 %95, i32* %94, align 4
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i64 1
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i64 3
  br label %98

98:                                               ; preds = %98, %87
  %99 = phi %struct.TYPE_3__* [ %96, %87 ], [ %101, %98 ]
  %100 = bitcast %struct.TYPE_3__* %99 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %100, i8 0, i64 12, i1 false)
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i64 1
  %102 = icmp eq %struct.TYPE_3__* %101, %97
  br i1 %102, label %103, label %98

103:                                              ; preds = %98
  %104 = getelementptr inbounds [3 x %struct.TYPE_3__], [3 x %struct.TYPE_3__]* %88, i64 1
  %105 = getelementptr inbounds [3 x %struct.TYPE_3__], [3 x %struct.TYPE_3__]* %104, i64 0, i64 0
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 0
  %107 = load i32, i32* @backlight_rgb_r, align 4
  store i32 %107, i32* %106, align 4
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 1
  %109 = load i32, i32* @backlight_rgb_g, align 4
  store i32 %109, i32* %108, align 4
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 2
  %111 = load i32, i32* @backlight_rgb_b, align 4
  store i32 %111, i32* %110, align 4
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i64 1
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i64 3
  br label %114

114:                                              ; preds = %114, %103
  %115 = phi %struct.TYPE_3__* [ %112, %103 ], [ %117, %114 ]
  %116 = bitcast %struct.TYPE_3__* %115 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %116, i8 0, i64 12, i1 false)
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i64 1
  %118 = icmp eq %struct.TYPE_3__* %117, %113
  br i1 %118, label %119, label %114

119:                                              ; preds = %114
  %120 = getelementptr inbounds [3 x %struct.TYPE_3__], [3 x %struct.TYPE_3__]* %104, i64 1
  %121 = getelementptr inbounds [3 x %struct.TYPE_3__], [3 x %struct.TYPE_3__]* %120, i64 0, i64 0
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i32 0, i32 0
  %123 = load i32, i32* @backlight_rgb_r, align 4
  store i32 %123, i32* %122, align 4
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i32 0, i32 1
  %125 = load i32, i32* @backlight_rgb_g, align 4
  store i32 %125, i32* %124, align 4
  %126 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i32 0, i32 2
  %127 = load i32, i32* @backlight_rgb_b, align 4
  store i32 %127, i32* %126, align 4
  %128 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i64 1
  %129 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i64 3
  br label %130

130:                                              ; preds = %130, %119
  %131 = phi %struct.TYPE_3__* [ %128, %119 ], [ %133, %130 ]
  %132 = bitcast %struct.TYPE_3__* %131 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %132, i8 0, i64 12, i1 false)
  %133 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %131, i64 1
  %134 = icmp eq %struct.TYPE_3__* %133, %129
  br i1 %134, label %135, label %130

135:                                              ; preds = %130
  %136 = getelementptr inbounds [3 x %struct.TYPE_3__], [3 x %struct.TYPE_3__]* %120, i64 1
  %137 = getelementptr inbounds [3 x %struct.TYPE_3__], [3 x %struct.TYPE_3__]* %136, i64 0, i64 0
  %138 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %137, i32 0, i32 0
  %139 = load i32, i32* @backlight_rgb_r, align 4
  store i32 %139, i32* %138, align 4
  %140 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %137, i32 0, i32 1
  %141 = load i32, i32* @backlight_rgb_g, align 4
  store i32 %141, i32* %140, align 4
  %142 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %137, i32 0, i32 2
  %143 = load i32, i32* @backlight_rgb_b, align 4
  store i32 %143, i32* %142, align 4
  %144 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %137, i64 1
  %145 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %137, i64 3
  br label %146

146:                                              ; preds = %146, %135
  %147 = phi %struct.TYPE_3__* [ %144, %135 ], [ %149, %146 ]
  %148 = bitcast %struct.TYPE_3__* %147 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %148, i8 0, i64 12, i1 false)
  %149 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %147, i64 1
  %150 = icmp eq %struct.TYPE_3__* %149, %145
  br i1 %150, label %151, label %146

151:                                              ; preds = %146
  %152 = getelementptr inbounds [3 x %struct.TYPE_3__], [3 x %struct.TYPE_3__]* %136, i64 1
  %153 = getelementptr inbounds [3 x %struct.TYPE_3__], [3 x %struct.TYPE_3__]* %152, i64 0, i64 0
  %154 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %153, i32 0, i32 0
  %155 = load i32, i32* @backlight_rgb_r, align 4
  store i32 %155, i32* %154, align 4
  %156 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %153, i32 0, i32 1
  %157 = load i32, i32* @backlight_rgb_g, align 4
  store i32 %157, i32* %156, align 4
  %158 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %153, i32 0, i32 2
  %159 = load i32, i32* @backlight_rgb_b, align 4
  store i32 %159, i32* %158, align 4
  %160 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %153, i64 1
  %161 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %153, i64 3
  br label %162

162:                                              ; preds = %162, %151
  %163 = phi %struct.TYPE_3__* [ %160, %151 ], [ %165, %162 ]
  %164 = bitcast %struct.TYPE_3__* %163 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %164, i8 0, i64 12, i1 false)
  %165 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %163, i64 1
  %166 = icmp eq %struct.TYPE_3__* %165, %161
  br i1 %166, label %167, label %162

167:                                              ; preds = %162
  %168 = getelementptr inbounds [3 x %struct.TYPE_3__], [3 x %struct.TYPE_3__]* %152, i64 1
  %169 = getelementptr inbounds [3 x %struct.TYPE_3__], [3 x %struct.TYPE_3__]* %168, i64 0, i64 0
  %170 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %169, i32 0, i32 0
  %171 = load i32, i32* @backlight_rgb_r, align 4
  store i32 %171, i32* %170, align 4
  %172 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %169, i32 0, i32 1
  %173 = load i32, i32* @backlight_rgb_g, align 4
  store i32 %173, i32* %172, align 4
  %174 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %169, i32 0, i32 2
  %175 = load i32, i32* @backlight_rgb_b, align 4
  store i32 %175, i32* %174, align 4
  %176 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %169, i64 1
  %177 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %169, i64 3
  br label %178

178:                                              ; preds = %178, %167
  %179 = phi %struct.TYPE_3__* [ %176, %167 ], [ %181, %178 ]
  %180 = bitcast %struct.TYPE_3__* %179 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %180, i8 0, i64 12, i1 false)
  %181 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %179, i64 1
  %182 = icmp eq %struct.TYPE_3__* %181, %177
  br i1 %182, label %183, label %178

183:                                              ; preds = %178
  %184 = getelementptr inbounds [3 x %struct.TYPE_3__], [3 x %struct.TYPE_3__]* %168, i64 1
  %185 = getelementptr inbounds [3 x %struct.TYPE_3__], [3 x %struct.TYPE_3__]* %184, i64 0, i64 0
  %186 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %185, i32 0, i32 0
  %187 = load i32, i32* @backlight_rgb_r, align 4
  store i32 %187, i32* %186, align 4
  %188 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %185, i32 0, i32 1
  %189 = load i32, i32* @backlight_rgb_g, align 4
  store i32 %189, i32* %188, align 4
  %190 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %185, i32 0, i32 2
  %191 = load i32, i32* @backlight_rgb_b, align 4
  store i32 %191, i32* %190, align 4
  %192 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %185, i64 1
  %193 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %185, i64 3
  br label %194

194:                                              ; preds = %194, %183
  %195 = phi %struct.TYPE_3__* [ %192, %183 ], [ %197, %194 ]
  %196 = bitcast %struct.TYPE_3__* %195 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %196, i8 0, i64 12, i1 false)
  %197 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %195, i64 1
  %198 = icmp eq %struct.TYPE_3__* %197, %193
  br i1 %198, label %199, label %194

199:                                              ; preds = %194
  %200 = getelementptr inbounds [3 x %struct.TYPE_3__], [3 x %struct.TYPE_3__]* %184, i64 1
  %201 = getelementptr inbounds [3 x %struct.TYPE_3__], [3 x %struct.TYPE_3__]* %200, i64 0, i64 0
  %202 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %201, i32 0, i32 0
  %203 = load i32, i32* @backlight_rgb_r, align 4
  store i32 %203, i32* %202, align 4
  %204 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %201, i32 0, i32 1
  %205 = load i32, i32* @backlight_rgb_g, align 4
  store i32 %205, i32* %204, align 4
  %206 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %201, i32 0, i32 2
  %207 = load i32, i32* @backlight_rgb_b, align 4
  store i32 %207, i32* %206, align 4
  %208 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %201, i64 1
  %209 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %201, i64 3
  br label %210

210:                                              ; preds = %210, %199
  %211 = phi %struct.TYPE_3__* [ %208, %199 ], [ %213, %210 ]
  %212 = bitcast %struct.TYPE_3__* %211 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %212, i8 0, i64 12, i1 false)
  %213 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %211, i64 1
  %214 = icmp eq %struct.TYPE_3__* %213, %209
  br i1 %214, label %215, label %210

215:                                              ; preds = %210
  %216 = getelementptr inbounds [3 x %struct.TYPE_3__], [3 x %struct.TYPE_3__]* %200, i64 1
  %217 = getelementptr inbounds [3 x %struct.TYPE_3__], [3 x %struct.TYPE_3__]* %216, i64 0, i64 0
  %218 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %217, i32 0, i32 0
  %219 = load i32, i32* @backlight_rgb_r, align 4
  store i32 %219, i32* %218, align 4
  %220 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %217, i32 0, i32 1
  %221 = load i32, i32* @backlight_rgb_g, align 4
  store i32 %221, i32* %220, align 4
  %222 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %217, i32 0, i32 2
  %223 = load i32, i32* @backlight_rgb_b, align 4
  store i32 %223, i32* %222, align 4
  %224 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %217, i64 1
  %225 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %217, i64 3
  br label %226

226:                                              ; preds = %226, %215
  %227 = phi %struct.TYPE_3__* [ %224, %215 ], [ %229, %226 ]
  %228 = bitcast %struct.TYPE_3__* %227 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %228, i8 0, i64 12, i1 false)
  %229 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %227, i64 1
  %230 = icmp eq %struct.TYPE_3__* %229, %225
  br i1 %230, label %231, label %226

231:                                              ; preds = %226
  %232 = getelementptr inbounds [3 x %struct.TYPE_3__], [3 x %struct.TYPE_3__]* %216, i64 1
  %233 = getelementptr inbounds [3 x %struct.TYPE_3__], [3 x %struct.TYPE_3__]* %232, i64 0, i64 0
  %234 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %233, i32 0, i32 0
  %235 = load i32, i32* @backlight_rgb_r, align 4
  store i32 %235, i32* %234, align 4
  %236 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %233, i32 0, i32 1
  %237 = load i32, i32* @backlight_rgb_g, align 4
  store i32 %237, i32* %236, align 4
  %238 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %233, i32 0, i32 2
  %239 = load i32, i32* @backlight_rgb_b, align 4
  store i32 %239, i32* %238, align 4
  %240 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %233, i64 1
  %241 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %233, i64 3
  br label %242

242:                                              ; preds = %242, %231
  %243 = phi %struct.TYPE_3__* [ %240, %231 ], [ %245, %242 ]
  %244 = bitcast %struct.TYPE_3__* %243 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %244, i8 0, i64 12, i1 false)
  %245 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %243, i64 1
  %246 = icmp eq %struct.TYPE_3__* %245, %241
  br i1 %246, label %247, label %242

247:                                              ; preds = %242
  %248 = getelementptr inbounds [3 x %struct.TYPE_3__], [3 x %struct.TYPE_3__]* %232, i64 1
  %249 = getelementptr inbounds [3 x %struct.TYPE_3__], [3 x %struct.TYPE_3__]* %248, i64 0, i64 0
  %250 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %249, i32 0, i32 0
  %251 = load i32, i32* @backlight_rgb_r, align 4
  store i32 %251, i32* %250, align 4
  %252 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %249, i32 0, i32 1
  %253 = load i32, i32* @backlight_rgb_g, align 4
  store i32 %253, i32* %252, align 4
  %254 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %249, i32 0, i32 2
  %255 = load i32, i32* @backlight_rgb_b, align 4
  store i32 %255, i32* %254, align 4
  %256 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %249, i64 1
  %257 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %249, i64 3
  br label %258

258:                                              ; preds = %258, %247
  %259 = phi %struct.TYPE_3__* [ %256, %247 ], [ %261, %258 ]
  %260 = bitcast %struct.TYPE_3__* %259 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %260, i8 0, i64 12, i1 false)
  %261 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %259, i64 1
  %262 = icmp eq %struct.TYPE_3__* %261, %257
  br i1 %262, label %263, label %258

263:                                              ; preds = %258
  %264 = getelementptr inbounds [3 x %struct.TYPE_3__], [3 x %struct.TYPE_3__]* %248, i64 1
  %265 = getelementptr inbounds [3 x %struct.TYPE_3__], [3 x %struct.TYPE_3__]* %264, i64 0, i64 0
  %266 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %265, i32 0, i32 0
  %267 = load i32, i32* @backlight_rgb_r, align 4
  store i32 %267, i32* %266, align 4
  %268 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %265, i32 0, i32 1
  %269 = load i32, i32* @backlight_rgb_g, align 4
  store i32 %269, i32* %268, align 4
  %270 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %265, i32 0, i32 2
  %271 = load i32, i32* @backlight_rgb_b, align 4
  store i32 %271, i32* %270, align 4
  %272 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %265, i64 1
  %273 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %265, i64 3
  br label %274

274:                                              ; preds = %274, %263
  %275 = phi %struct.TYPE_3__* [ %272, %263 ], [ %277, %274 ]
  %276 = bitcast %struct.TYPE_3__* %275 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %276, i8 0, i64 12, i1 false)
  %277 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %275, i64 1
  %278 = icmp eq %struct.TYPE_3__* %277, %273
  br i1 %278, label %279, label %274

279:                                              ; preds = %274
  %280 = getelementptr inbounds [17 x [3 x %struct.TYPE_3__]], [17 x [3 x %struct.TYPE_3__]]* %3, i64 0, i64 0
  %281 = bitcast [3 x %struct.TYPE_3__]* %280 to %struct.TYPE_3__**
  %282 = call i32 @backlight_set_rgb(%struct.TYPE_3__** %281)
  br label %288

283:                                              ; preds = %1
  %284 = bitcast [17 x [3 x %struct.TYPE_3__]]* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %284, i8 0, i64 612, i1 false)
  %285 = getelementptr inbounds [17 x [3 x %struct.TYPE_3__]], [17 x [3 x %struct.TYPE_3__]]* %4, i64 0, i64 0
  %286 = bitcast [3 x %struct.TYPE_3__]* %285 to %struct.TYPE_3__**
  %287 = call i32 @backlight_set_rgb(%struct.TYPE_3__** %286)
  br label %288

288:                                              ; preds = %283, %279
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @backlight_set_rgb(%struct.TYPE_3__**) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
