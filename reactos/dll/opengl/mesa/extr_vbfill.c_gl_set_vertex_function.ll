; ModuleID = '/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_vbfill.c_gl_set_vertex_function.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_vbfill.c_gl_set_vertex_function.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i64, %struct.TYPE_14__, %struct.TYPE_13__, i32, %struct.TYPE_12__, %struct.TYPE_11__*, %struct.TYPE_10__, i64, %struct.TYPE_9__* }
%struct.TYPE_14__ = type { i8*, i32, i8*, i8* }
%struct.TYPE_13__ = type { i8*, i32, i8*, i8* }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_9__ = type { i64 }

@GL_FEEDBACK = common dso_local global i64 0, align 8
@vertex4f_feedback = common dso_local global i32 0, align 4
@vertex3f_feedback = common dso_local global i8* null, align 8
@vertex2f_feedback = common dso_local global i8* null, align 8
@vertex3fv_feedback = common dso_local global i8* null, align 8
@vertex4 = common dso_local global i32 0, align 4
@vertex2f_normal_color_tex2 = common dso_local global i8* null, align 8
@vertex3f_normal_color_tex2 = common dso_local global i8* null, align 8
@vertex3fv_normal_color_tex2 = common dso_local global i8* null, align 8
@vertex2f_normal_color_tex4 = common dso_local global i8* null, align 8
@vertex3f_normal_color_tex4 = common dso_local global i8* null, align 8
@vertex3fv_normal_color_tex4 = common dso_local global i8* null, align 8
@vertex2f_normal = common dso_local global i8* null, align 8
@vertex3f_normal = common dso_local global i8* null, align 8
@vertex3fv_normal = common dso_local global i8* null, align 8
@vertex2f_color_tex2 = common dso_local global i8* null, align 8
@vertex3f_color_tex2 = common dso_local global i8* null, align 8
@vertex3fv_color_tex2 = common dso_local global i8* null, align 8
@vertex2f_color_tex4 = common dso_local global i8* null, align 8
@vertex3f_color_tex4 = common dso_local global i8* null, align 8
@vertex3fv_color_tex4 = common dso_local global i8* null, align 8
@vertex2f_color = common dso_local global i8* null, align 8
@vertex3f_color = common dso_local global i8* null, align 8
@vertex3fv_color = common dso_local global i8* null, align 8
@vertex2f_index = common dso_local global i8* null, align 8
@vertex3f_index = common dso_local global i8* null, align 8
@vertex3fv_index = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gl_set_vertex_function(%struct.TYPE_15__* %0) #0 {
  %2 = alloca %struct.TYPE_15__*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %2, align 8
  %3 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %4 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @GL_FEEDBACK, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %8, label %25

8:                                                ; preds = %1
  %9 = load i32, i32* @vertex4f_feedback, align 4
  %10 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %11, i32 0, i32 1
  store i32 %9, i32* %12, align 8
  %13 = load i8*, i8** @vertex3f_feedback, align 8
  %14 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %15, i32 0, i32 2
  store i8* %13, i8** %16, align 8
  %17 = load i8*, i8** @vertex2f_feedback, align 8
  %18 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i32 0, i32 3
  store i8* %17, i8** %20, align 8
  %21 = load i8*, i8** @vertex3fv_feedback, align 8
  %22 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %23, i32 0, i32 0
  store i8* %21, i8** %24, align 8
  br label %184

25:                                               ; preds = %1
  %26 = load i32, i32* @vertex4, align 4
  %27 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %28, i32 0, i32 1
  store i32 %26, i32* %29, align 8
  %30 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %30, i32 0, i32 8
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %150

36:                                               ; preds = %25
  %37 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %38 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %37, i32 0, i32 7
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %95

41:                                               ; preds = %36
  %42 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %43 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %42, i32 0, i32 6
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %81

47:                                               ; preds = %41
  %48 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %49 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %48, i32 0, i32 5
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = icmp eq i32 %52, 2
  br i1 %53, label %54, label %67

54:                                               ; preds = %47
  %55 = load i8*, i8** @vertex2f_normal_color_tex2, align 8
  %56 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %57 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %57, i32 0, i32 3
  store i8* %55, i8** %58, align 8
  %59 = load i8*, i8** @vertex3f_normal_color_tex2, align 8
  %60 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %61 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %61, i32 0, i32 2
  store i8* %59, i8** %62, align 8
  %63 = load i8*, i8** @vertex3fv_normal_color_tex2, align 8
  %64 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %65 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %65, i32 0, i32 0
  store i8* %63, i8** %66, align 8
  br label %80

67:                                               ; preds = %47
  %68 = load i8*, i8** @vertex2f_normal_color_tex4, align 8
  %69 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %70 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %70, i32 0, i32 3
  store i8* %68, i8** %71, align 8
  %72 = load i8*, i8** @vertex3f_normal_color_tex4, align 8
  %73 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %74 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %74, i32 0, i32 2
  store i8* %72, i8** %75, align 8
  %76 = load i8*, i8** @vertex3fv_normal_color_tex4, align 8
  %77 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %78 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %78, i32 0, i32 0
  store i8* %76, i8** %79, align 8
  br label %80

80:                                               ; preds = %67, %54
  br label %94

81:                                               ; preds = %41
  %82 = load i8*, i8** @vertex2f_normal, align 8
  %83 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %84 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %84, i32 0, i32 3
  store i8* %82, i8** %85, align 8
  %86 = load i8*, i8** @vertex3f_normal, align 8
  %87 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %88 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %88, i32 0, i32 2
  store i8* %86, i8** %89, align 8
  %90 = load i8*, i8** @vertex3fv_normal, align 8
  %91 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %92 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %92, i32 0, i32 0
  store i8* %90, i8** %93, align 8
  br label %94

94:                                               ; preds = %81, %80
  br label %149

95:                                               ; preds = %36
  %96 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %97 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %96, i32 0, i32 6
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %135

101:                                              ; preds = %95
  %102 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %103 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %102, i32 0, i32 5
  %104 = load %struct.TYPE_11__*, %struct.TYPE_11__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = icmp eq i32 %106, 2
  br i1 %107, label %108, label %121

108:                                              ; preds = %101
  %109 = load i8*, i8** @vertex2f_color_tex2, align 8
  %110 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %111 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %111, i32 0, i32 3
  store i8* %109, i8** %112, align 8
  %113 = load i8*, i8** @vertex3f_color_tex2, align 8
  %114 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %115 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %115, i32 0, i32 2
  store i8* %113, i8** %116, align 8
  %117 = load i8*, i8** @vertex3fv_color_tex2, align 8
  %118 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %119 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %118, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %119, i32 0, i32 0
  store i8* %117, i8** %120, align 8
  br label %134

121:                                              ; preds = %101
  %122 = load i8*, i8** @vertex2f_color_tex4, align 8
  %123 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %124 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %123, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %124, i32 0, i32 3
  store i8* %122, i8** %125, align 8
  %126 = load i8*, i8** @vertex3f_color_tex4, align 8
  %127 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %128 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %127, i32 0, i32 1
  %129 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %128, i32 0, i32 2
  store i8* %126, i8** %129, align 8
  %130 = load i8*, i8** @vertex3fv_color_tex4, align 8
  %131 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %132 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %131, i32 0, i32 1
  %133 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %132, i32 0, i32 0
  store i8* %130, i8** %133, align 8
  br label %134

134:                                              ; preds = %121, %108
  br label %148

135:                                              ; preds = %95
  %136 = load i8*, i8** @vertex2f_color, align 8
  %137 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %138 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %137, i32 0, i32 1
  %139 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %138, i32 0, i32 3
  store i8* %136, i8** %139, align 8
  %140 = load i8*, i8** @vertex3f_color, align 8
  %141 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %142 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %141, i32 0, i32 1
  %143 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %142, i32 0, i32 2
  store i8* %140, i8** %143, align 8
  %144 = load i8*, i8** @vertex3fv_color, align 8
  %145 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %146 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %145, i32 0, i32 1
  %147 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %146, i32 0, i32 0
  store i8* %144, i8** %147, align 8
  br label %148

148:                                              ; preds = %135, %134
  br label %149

149:                                              ; preds = %148, %94
  br label %183

150:                                              ; preds = %25
  %151 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %152 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %151, i32 0, i32 4
  %153 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %169

156:                                              ; preds = %150
  %157 = load i8*, i8** @vertex2f_normal, align 8
  %158 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %159 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %158, i32 0, i32 1
  %160 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %159, i32 0, i32 3
  store i8* %157, i8** %160, align 8
  %161 = load i8*, i8** @vertex3f_normal, align 8
  %162 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %163 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %162, i32 0, i32 1
  %164 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %163, i32 0, i32 2
  store i8* %161, i8** %164, align 8
  %165 = load i8*, i8** @vertex3fv_normal, align 8
  %166 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %167 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %166, i32 0, i32 1
  %168 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %167, i32 0, i32 0
  store i8* %165, i8** %168, align 8
  br label %182

169:                                              ; preds = %150
  %170 = load i8*, i8** @vertex2f_index, align 8
  %171 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %172 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %171, i32 0, i32 1
  %173 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %172, i32 0, i32 3
  store i8* %170, i8** %173, align 8
  %174 = load i8*, i8** @vertex3f_index, align 8
  %175 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %176 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %175, i32 0, i32 1
  %177 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %176, i32 0, i32 2
  store i8* %174, i8** %177, align 8
  %178 = load i8*, i8** @vertex3fv_index, align 8
  %179 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %180 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %179, i32 0, i32 1
  %181 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %180, i32 0, i32 0
  store i8* %178, i8** %181, align 8
  br label %182

182:                                              ; preds = %169, %156
  br label %183

183:                                              ; preds = %182, %149
  br label %184

184:                                              ; preds = %183, %8
  %185 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %186 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %185, i32 0, i32 3
  %187 = load i32, i32* %186, align 8
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %218, label %189

189:                                              ; preds = %184
  %190 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %191 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %190, i32 0, i32 1
  %192 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %191, i32 0, i32 3
  %193 = load i8*, i8** %192, align 8
  %194 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %195 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %194, i32 0, i32 2
  %196 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %195, i32 0, i32 3
  store i8* %193, i8** %196, align 8
  %197 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %198 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %197, i32 0, i32 1
  %199 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %198, i32 0, i32 2
  %200 = load i8*, i8** %199, align 8
  %201 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %202 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %201, i32 0, i32 2
  %203 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %202, i32 0, i32 2
  store i8* %200, i8** %203, align 8
  %204 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %205 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %204, i32 0, i32 1
  %206 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %205, i32 0, i32 1
  %207 = load i32, i32* %206, align 8
  %208 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %209 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %208, i32 0, i32 2
  %210 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %209, i32 0, i32 1
  store i32 %207, i32* %210, align 8
  %211 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %212 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %211, i32 0, i32 1
  %213 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %212, i32 0, i32 0
  %214 = load i8*, i8** %213, align 8
  %215 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %216 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %215, i32 0, i32 2
  %217 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %216, i32 0, i32 0
  store i8* %214, i8** %217, align 8
  br label %218

218:                                              ; preds = %189, %184
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
