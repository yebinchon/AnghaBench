; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs-opengl/extr_gl-vertexbuffer.c_gs_vertexbuffer_flush_internal.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs-opengl/extr_gl-vertexbuffer.c_gs_vertexbuffer_flush_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__, i64, i64, i64, i64, i32, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i64* }
%struct.TYPE_5__ = type { i64 }
%struct.gs_vb_data = type { i64, i32, %struct.gs_tvertarray*, i64, i64, i64, i64 }
%struct.gs_tvertarray = type { i32, i64 }

@LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"vertex buffer is not dynamic\00", align 1
@GL_ARRAY_BUFFER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"gs_vertexbuffer_flush (GL) failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, %struct.gs_vb_data*)* @gs_vertexbuffer_flush_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gs_vertexbuffer_flush_internal(%struct.TYPE_7__* %0, %struct.gs_vb_data* %1) #0 {
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca %struct.gs_vb_data*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.gs_tvertarray*, align 8
  %9 = alloca i64, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  store %struct.gs_vb_data* %1, %struct.gs_vb_data** %4, align 8
  %10 = load %struct.gs_vb_data*, %struct.gs_vb_data** %4, align 8
  %11 = getelementptr inbounds %struct.gs_vb_data, %struct.gs_vb_data* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 6
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ult i64 %12, %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %2
  %20 = load %struct.gs_vb_data*, %struct.gs_vb_data** %4, align 8
  %21 = getelementptr inbounds %struct.gs_vb_data, %struct.gs_vb_data* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  br label %29

23:                                               ; preds = %2
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 6
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  br label %29

29:                                               ; preds = %23, %19
  %30 = phi i64 [ %22, %19 ], [ %28, %23 ]
  store i64 %30, i64* %6, align 8
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 5
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %29
  %36 = load i32, i32* @LOG_ERROR, align 4
  %37 = call i32 @blog(i32 %36, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %182

38:                                               ; preds = %29
  %39 = load %struct.gs_vb_data*, %struct.gs_vb_data** %4, align 8
  %40 = getelementptr inbounds %struct.gs_vb_data, %struct.gs_vb_data* %39, i32 0, i32 6
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %60

43:                                               ; preds = %38
  %44 = load i32, i32* @GL_ARRAY_BUFFER, align 4
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 4
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.gs_vb_data*, %struct.gs_vb_data** %4, align 8
  %49 = getelementptr inbounds %struct.gs_vb_data, %struct.gs_vb_data* %48, i32 0, i32 6
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.gs_vb_data*, %struct.gs_vb_data** %4, align 8
  %52 = getelementptr inbounds %struct.gs_vb_data, %struct.gs_vb_data* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = sext i32 %53 to i64
  %55 = mul i64 %54, 4
  %56 = call i32 @update_buffer(i32 %44, i64 %47, i64 %50, i64 %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %43
  br label %182

59:                                               ; preds = %43
  br label %60

60:                                               ; preds = %59, %38
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 3
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %87

65:                                               ; preds = %60
  %66 = load %struct.gs_vb_data*, %struct.gs_vb_data** %4, align 8
  %67 = getelementptr inbounds %struct.gs_vb_data, %struct.gs_vb_data* %66, i32 0, i32 5
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %87

70:                                               ; preds = %65
  %71 = load i32, i32* @GL_ARRAY_BUFFER, align 4
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 3
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.gs_vb_data*, %struct.gs_vb_data** %4, align 8
  %76 = getelementptr inbounds %struct.gs_vb_data, %struct.gs_vb_data* %75, i32 0, i32 5
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.gs_vb_data*, %struct.gs_vb_data** %4, align 8
  %79 = getelementptr inbounds %struct.gs_vb_data, %struct.gs_vb_data* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = sext i32 %80 to i64
  %82 = mul i64 %81, 4
  %83 = call i32 @update_buffer(i32 %71, i64 %74, i64 %77, i64 %82)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %86, label %85

85:                                               ; preds = %70
  br label %182

86:                                               ; preds = %70
  br label %87

87:                                               ; preds = %86, %65, %60
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 2
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %114

92:                                               ; preds = %87
  %93 = load %struct.gs_vb_data*, %struct.gs_vb_data** %4, align 8
  %94 = getelementptr inbounds %struct.gs_vb_data, %struct.gs_vb_data* %93, i32 0, i32 4
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %114

97:                                               ; preds = %92
  %98 = load i32, i32* @GL_ARRAY_BUFFER, align 4
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 2
  %101 = load i64, i64* %100, align 8
  %102 = load %struct.gs_vb_data*, %struct.gs_vb_data** %4, align 8
  %103 = getelementptr inbounds %struct.gs_vb_data, %struct.gs_vb_data* %102, i32 0, i32 4
  %104 = load i64, i64* %103, align 8
  %105 = load %struct.gs_vb_data*, %struct.gs_vb_data** %4, align 8
  %106 = getelementptr inbounds %struct.gs_vb_data, %struct.gs_vb_data* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 8
  %108 = sext i32 %107 to i64
  %109 = mul i64 %108, 4
  %110 = call i32 @update_buffer(i32 %98, i64 %101, i64 %104, i64 %109)
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %113, label %112

112:                                              ; preds = %97
  br label %182

113:                                              ; preds = %97
  br label %114

114:                                              ; preds = %113, %92, %87
  %115 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %141

119:                                              ; preds = %114
  %120 = load %struct.gs_vb_data*, %struct.gs_vb_data** %4, align 8
  %121 = getelementptr inbounds %struct.gs_vb_data, %struct.gs_vb_data* %120, i32 0, i32 3
  %122 = load i64, i64* %121, align 8
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %141

124:                                              ; preds = %119
  %125 = load i32, i32* @GL_ARRAY_BUFFER, align 4
  %126 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %127 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %126, i32 0, i32 1
  %128 = load i64, i64* %127, align 8
  %129 = load %struct.gs_vb_data*, %struct.gs_vb_data** %4, align 8
  %130 = getelementptr inbounds %struct.gs_vb_data, %struct.gs_vb_data* %129, i32 0, i32 3
  %131 = load i64, i64* %130, align 8
  %132 = load %struct.gs_vb_data*, %struct.gs_vb_data** %4, align 8
  %133 = getelementptr inbounds %struct.gs_vb_data, %struct.gs_vb_data* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 8
  %135 = sext i32 %134 to i64
  %136 = mul i64 %135, 4
  %137 = call i32 @update_buffer(i32 %125, i64 %128, i64 %131, i64 %136)
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %140, label %139

139:                                              ; preds = %124
  br label %182

140:                                              ; preds = %124
  br label %141

141:                                              ; preds = %140, %119, %114
  store i64 0, i64* %5, align 8
  br label %142

142:                                              ; preds = %178, %141
  %143 = load i64, i64* %5, align 8
  %144 = load i64, i64* %6, align 8
  %145 = icmp ult i64 %143, %144
  br i1 %145, label %146, label %181

146:                                              ; preds = %142
  %147 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %148 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %148, i32 0, i32 0
  %150 = load i64*, i64** %149, align 8
  %151 = load i64, i64* %5, align 8
  %152 = getelementptr inbounds i64, i64* %150, i64 %151
  %153 = load i64, i64* %152, align 8
  store i64 %153, i64* %7, align 8
  %154 = load %struct.gs_vb_data*, %struct.gs_vb_data** %4, align 8
  %155 = getelementptr inbounds %struct.gs_vb_data, %struct.gs_vb_data* %154, i32 0, i32 2
  %156 = load %struct.gs_tvertarray*, %struct.gs_tvertarray** %155, align 8
  %157 = load i64, i64* %5, align 8
  %158 = getelementptr inbounds %struct.gs_tvertarray, %struct.gs_tvertarray* %156, i64 %157
  store %struct.gs_tvertarray* %158, %struct.gs_tvertarray** %8, align 8
  %159 = load %struct.gs_vb_data*, %struct.gs_vb_data** %4, align 8
  %160 = getelementptr inbounds %struct.gs_vb_data, %struct.gs_vb_data* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 8
  %162 = load %struct.gs_tvertarray*, %struct.gs_tvertarray** %8, align 8
  %163 = getelementptr inbounds %struct.gs_tvertarray, %struct.gs_tvertarray* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = mul nsw i32 %161, %164
  %166 = sext i32 %165 to i64
  %167 = mul i64 %166, 4
  store i64 %167, i64* %9, align 8
  %168 = load i32, i32* @GL_ARRAY_BUFFER, align 4
  %169 = load i64, i64* %7, align 8
  %170 = load %struct.gs_tvertarray*, %struct.gs_tvertarray** %8, align 8
  %171 = getelementptr inbounds %struct.gs_tvertarray, %struct.gs_tvertarray* %170, i32 0, i32 1
  %172 = load i64, i64* %171, align 8
  %173 = load i64, i64* %9, align 8
  %174 = call i32 @update_buffer(i32 %168, i64 %169, i64 %172, i64 %173)
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %177, label %176

176:                                              ; preds = %146
  br label %182

177:                                              ; preds = %146
  br label %178

178:                                              ; preds = %177
  %179 = load i64, i64* %5, align 8
  %180 = add i64 %179, 1
  store i64 %180, i64* %5, align 8
  br label %142

181:                                              ; preds = %142
  br label %185

182:                                              ; preds = %176, %139, %112, %85, %58, %35
  %183 = load i32, i32* @LOG_ERROR, align 4
  %184 = call i32 @blog(i32 %183, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  br label %185

185:                                              ; preds = %182, %181
  ret void
}

declare dso_local i32 @blog(i32, i8*) #1

declare dso_local i32 @update_buffer(i32, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
