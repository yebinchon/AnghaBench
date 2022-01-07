; ModuleID = '/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_texture.c_sample_lambda_1d.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_texture.c_sample_lambda_1d.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gl_texture_object = type { i64, i32, i32, i32* }

@.str = private unnamed_addr constant [36 x i8] c"Bad min filter in sample_1d_texture\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"Bad mag filter in sample_1d_texture\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gl_texture_object*, i64, i64*, i64*, i64*, i64*, i32*, i32*, i32*, i32*)* @sample_lambda_1d to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sample_lambda_1d(%struct.gl_texture_object* %0, i64 %1, i64* %2, i64* %3, i64* %4, i64* %5, i32* %6, i32* %7, i32* %8, i32* %9) #0 {
  %11 = alloca %struct.gl_texture_object*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i64*, align 8
  %16 = alloca i64*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i64, align 8
  store %struct.gl_texture_object* %0, %struct.gl_texture_object** %11, align 8
  store i64 %1, i64* %12, align 8
  store i64* %2, i64** %13, align 8
  store i64* %3, i64** %14, align 8
  store i64* %4, i64** %15, align 8
  store i64* %5, i64** %16, align 8
  store i32* %6, i32** %17, align 8
  store i32* %7, i32** %18, align 8
  store i32* %8, i32** %19, align 8
  store i32* %9, i32** %20, align 8
  store i64 0, i64* %21, align 8
  br label %22

22:                                               ; preds = %238, %10
  %23 = load i64, i64* %21, align 8
  %24 = load i64, i64* %12, align 8
  %25 = icmp ult i64 %23, %24
  br i1 %25, label %26, label %241

26:                                               ; preds = %22
  %27 = load i64*, i64** %16, align 8
  %28 = load i64, i64* %21, align 8
  %29 = getelementptr inbounds i64, i64* %27, i64 %28
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.gl_texture_object*, %struct.gl_texture_object** %11, align 8
  %32 = getelementptr inbounds %struct.gl_texture_object, %struct.gl_texture_object* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp sgt i64 %30, %33
  br i1 %34, label %35, label %182

35:                                               ; preds = %26
  %36 = load %struct.gl_texture_object*, %struct.gl_texture_object** %11, align 8
  %37 = getelementptr inbounds %struct.gl_texture_object, %struct.gl_texture_object* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  switch i32 %38, label %179 [
    i32 130, label %39
    i32 133, label %63
    i32 128, label %87
    i32 131, label %110
    i32 129, label %133
    i32 132, label %156
  ]

39:                                               ; preds = %35
  %40 = load %struct.gl_texture_object*, %struct.gl_texture_object** %11, align 8
  %41 = load %struct.gl_texture_object*, %struct.gl_texture_object** %11, align 8
  %42 = getelementptr inbounds %struct.gl_texture_object, %struct.gl_texture_object* %41, i32 0, i32 3
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 0
  %45 = load i32, i32* %44, align 4
  %46 = load i64*, i64** %13, align 8
  %47 = load i64, i64* %21, align 8
  %48 = getelementptr inbounds i64, i64* %46, i64 %47
  %49 = load i64, i64* %48, align 8
  %50 = load i32*, i32** %17, align 8
  %51 = load i64, i64* %21, align 8
  %52 = getelementptr inbounds i32, i32* %50, i64 %51
  %53 = load i32*, i32** %18, align 8
  %54 = load i64, i64* %21, align 8
  %55 = getelementptr inbounds i32, i32* %53, i64 %54
  %56 = load i32*, i32** %19, align 8
  %57 = load i64, i64* %21, align 8
  %58 = getelementptr inbounds i32, i32* %56, i64 %57
  %59 = load i32*, i32** %20, align 8
  %60 = load i64, i64* %21, align 8
  %61 = getelementptr inbounds i32, i32* %59, i64 %60
  %62 = call i32 @sample_1d_nearest(%struct.gl_texture_object* %40, i32 %45, i64 %49, i32* %52, i32* %55, i32* %58, i32* %61)
  br label %181

63:                                               ; preds = %35
  %64 = load %struct.gl_texture_object*, %struct.gl_texture_object** %11, align 8
  %65 = load %struct.gl_texture_object*, %struct.gl_texture_object** %11, align 8
  %66 = getelementptr inbounds %struct.gl_texture_object, %struct.gl_texture_object* %65, i32 0, i32 3
  %67 = load i32*, i32** %66, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 0
  %69 = load i32, i32* %68, align 4
  %70 = load i64*, i64** %13, align 8
  %71 = load i64, i64* %21, align 8
  %72 = getelementptr inbounds i64, i64* %70, i64 %71
  %73 = load i64, i64* %72, align 8
  %74 = load i32*, i32** %17, align 8
  %75 = load i64, i64* %21, align 8
  %76 = getelementptr inbounds i32, i32* %74, i64 %75
  %77 = load i32*, i32** %18, align 8
  %78 = load i64, i64* %21, align 8
  %79 = getelementptr inbounds i32, i32* %77, i64 %78
  %80 = load i32*, i32** %19, align 8
  %81 = load i64, i64* %21, align 8
  %82 = getelementptr inbounds i32, i32* %80, i64 %81
  %83 = load i32*, i32** %20, align 8
  %84 = load i64, i64* %21, align 8
  %85 = getelementptr inbounds i32, i32* %83, i64 %84
  %86 = call i32 @sample_1d_linear(%struct.gl_texture_object* %64, i32 %69, i64 %73, i32* %76, i32* %79, i32* %82, i32* %85)
  br label %181

87:                                               ; preds = %35
  %88 = load %struct.gl_texture_object*, %struct.gl_texture_object** %11, align 8
  %89 = load i64*, i64** %16, align 8
  %90 = load i64, i64* %21, align 8
  %91 = getelementptr inbounds i64, i64* %89, i64 %90
  %92 = load i64, i64* %91, align 8
  %93 = load i64*, i64** %13, align 8
  %94 = load i64, i64* %21, align 8
  %95 = getelementptr inbounds i64, i64* %93, i64 %94
  %96 = load i64, i64* %95, align 8
  %97 = load i32*, i32** %17, align 8
  %98 = load i64, i64* %21, align 8
  %99 = getelementptr inbounds i32, i32* %97, i64 %98
  %100 = load i32*, i32** %18, align 8
  %101 = load i64, i64* %21, align 8
  %102 = getelementptr inbounds i32, i32* %100, i64 %101
  %103 = load i32*, i32** %19, align 8
  %104 = load i64, i64* %21, align 8
  %105 = getelementptr inbounds i32, i32* %103, i64 %104
  %106 = load i32*, i32** %20, align 8
  %107 = load i64, i64* %21, align 8
  %108 = getelementptr inbounds i32, i32* %106, i64 %107
  %109 = call i32 @sample_1d_nearest_mipmap_nearest(%struct.gl_texture_object* %88, i64 %92, i64 %96, i32* %99, i32* %102, i32* %105, i32* %108)
  br label %181

110:                                              ; preds = %35
  %111 = load %struct.gl_texture_object*, %struct.gl_texture_object** %11, align 8
  %112 = load i64*, i64** %13, align 8
  %113 = load i64, i64* %21, align 8
  %114 = getelementptr inbounds i64, i64* %112, i64 %113
  %115 = load i64, i64* %114, align 8
  %116 = load i64*, i64** %16, align 8
  %117 = load i64, i64* %21, align 8
  %118 = getelementptr inbounds i64, i64* %116, i64 %117
  %119 = load i64, i64* %118, align 8
  %120 = load i32*, i32** %17, align 8
  %121 = load i64, i64* %21, align 8
  %122 = getelementptr inbounds i32, i32* %120, i64 %121
  %123 = load i32*, i32** %18, align 8
  %124 = load i64, i64* %21, align 8
  %125 = getelementptr inbounds i32, i32* %123, i64 %124
  %126 = load i32*, i32** %19, align 8
  %127 = load i64, i64* %21, align 8
  %128 = getelementptr inbounds i32, i32* %126, i64 %127
  %129 = load i32*, i32** %20, align 8
  %130 = load i64, i64* %21, align 8
  %131 = getelementptr inbounds i32, i32* %129, i64 %130
  %132 = call i32 @sample_1d_linear_mipmap_nearest(%struct.gl_texture_object* %111, i64 %115, i64 %119, i32* %122, i32* %125, i32* %128, i32* %131)
  br label %181

133:                                              ; preds = %35
  %134 = load %struct.gl_texture_object*, %struct.gl_texture_object** %11, align 8
  %135 = load i64*, i64** %13, align 8
  %136 = load i64, i64* %21, align 8
  %137 = getelementptr inbounds i64, i64* %135, i64 %136
  %138 = load i64, i64* %137, align 8
  %139 = load i64*, i64** %16, align 8
  %140 = load i64, i64* %21, align 8
  %141 = getelementptr inbounds i64, i64* %139, i64 %140
  %142 = load i64, i64* %141, align 8
  %143 = load i32*, i32** %17, align 8
  %144 = load i64, i64* %21, align 8
  %145 = getelementptr inbounds i32, i32* %143, i64 %144
  %146 = load i32*, i32** %18, align 8
  %147 = load i64, i64* %21, align 8
  %148 = getelementptr inbounds i32, i32* %146, i64 %147
  %149 = load i32*, i32** %19, align 8
  %150 = load i64, i64* %21, align 8
  %151 = getelementptr inbounds i32, i32* %149, i64 %150
  %152 = load i32*, i32** %20, align 8
  %153 = load i64, i64* %21, align 8
  %154 = getelementptr inbounds i32, i32* %152, i64 %153
  %155 = call i32 @sample_1d_nearest_mipmap_linear(%struct.gl_texture_object* %134, i64 %138, i64 %142, i32* %145, i32* %148, i32* %151, i32* %154)
  br label %181

156:                                              ; preds = %35
  %157 = load %struct.gl_texture_object*, %struct.gl_texture_object** %11, align 8
  %158 = load i64*, i64** %13, align 8
  %159 = load i64, i64* %21, align 8
  %160 = getelementptr inbounds i64, i64* %158, i64 %159
  %161 = load i64, i64* %160, align 8
  %162 = load i64*, i64** %16, align 8
  %163 = load i64, i64* %21, align 8
  %164 = getelementptr inbounds i64, i64* %162, i64 %163
  %165 = load i64, i64* %164, align 8
  %166 = load i32*, i32** %17, align 8
  %167 = load i64, i64* %21, align 8
  %168 = getelementptr inbounds i32, i32* %166, i64 %167
  %169 = load i32*, i32** %18, align 8
  %170 = load i64, i64* %21, align 8
  %171 = getelementptr inbounds i32, i32* %169, i64 %170
  %172 = load i32*, i32** %19, align 8
  %173 = load i64, i64* %21, align 8
  %174 = getelementptr inbounds i32, i32* %172, i64 %173
  %175 = load i32*, i32** %20, align 8
  %176 = load i64, i64* %21, align 8
  %177 = getelementptr inbounds i32, i32* %175, i64 %176
  %178 = call i32 @sample_1d_linear_mipmap_linear(%struct.gl_texture_object* %157, i64 %161, i64 %165, i32* %168, i32* %171, i32* %174, i32* %177)
  br label %181

179:                                              ; preds = %35
  %180 = call i32 @gl_problem(i32* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %241

181:                                              ; preds = %156, %133, %110, %87, %63, %39
  br label %237

182:                                              ; preds = %26
  %183 = load %struct.gl_texture_object*, %struct.gl_texture_object** %11, align 8
  %184 = getelementptr inbounds %struct.gl_texture_object, %struct.gl_texture_object* %183, i32 0, i32 2
  %185 = load i32, i32* %184, align 4
  switch i32 %185, label %234 [
    i32 130, label %186
    i32 133, label %210
  ]

186:                                              ; preds = %182
  %187 = load %struct.gl_texture_object*, %struct.gl_texture_object** %11, align 8
  %188 = load %struct.gl_texture_object*, %struct.gl_texture_object** %11, align 8
  %189 = getelementptr inbounds %struct.gl_texture_object, %struct.gl_texture_object* %188, i32 0, i32 3
  %190 = load i32*, i32** %189, align 8
  %191 = getelementptr inbounds i32, i32* %190, i64 0
  %192 = load i32, i32* %191, align 4
  %193 = load i64*, i64** %13, align 8
  %194 = load i64, i64* %21, align 8
  %195 = getelementptr inbounds i64, i64* %193, i64 %194
  %196 = load i64, i64* %195, align 8
  %197 = load i32*, i32** %17, align 8
  %198 = load i64, i64* %21, align 8
  %199 = getelementptr inbounds i32, i32* %197, i64 %198
  %200 = load i32*, i32** %18, align 8
  %201 = load i64, i64* %21, align 8
  %202 = getelementptr inbounds i32, i32* %200, i64 %201
  %203 = load i32*, i32** %19, align 8
  %204 = load i64, i64* %21, align 8
  %205 = getelementptr inbounds i32, i32* %203, i64 %204
  %206 = load i32*, i32** %20, align 8
  %207 = load i64, i64* %21, align 8
  %208 = getelementptr inbounds i32, i32* %206, i64 %207
  %209 = call i32 @sample_1d_nearest(%struct.gl_texture_object* %187, i32 %192, i64 %196, i32* %199, i32* %202, i32* %205, i32* %208)
  br label %236

210:                                              ; preds = %182
  %211 = load %struct.gl_texture_object*, %struct.gl_texture_object** %11, align 8
  %212 = load %struct.gl_texture_object*, %struct.gl_texture_object** %11, align 8
  %213 = getelementptr inbounds %struct.gl_texture_object, %struct.gl_texture_object* %212, i32 0, i32 3
  %214 = load i32*, i32** %213, align 8
  %215 = getelementptr inbounds i32, i32* %214, i64 0
  %216 = load i32, i32* %215, align 4
  %217 = load i64*, i64** %13, align 8
  %218 = load i64, i64* %21, align 8
  %219 = getelementptr inbounds i64, i64* %217, i64 %218
  %220 = load i64, i64* %219, align 8
  %221 = load i32*, i32** %17, align 8
  %222 = load i64, i64* %21, align 8
  %223 = getelementptr inbounds i32, i32* %221, i64 %222
  %224 = load i32*, i32** %18, align 8
  %225 = load i64, i64* %21, align 8
  %226 = getelementptr inbounds i32, i32* %224, i64 %225
  %227 = load i32*, i32** %19, align 8
  %228 = load i64, i64* %21, align 8
  %229 = getelementptr inbounds i32, i32* %227, i64 %228
  %230 = load i32*, i32** %20, align 8
  %231 = load i64, i64* %21, align 8
  %232 = getelementptr inbounds i32, i32* %230, i64 %231
  %233 = call i32 @sample_1d_linear(%struct.gl_texture_object* %211, i32 %216, i64 %220, i32* %223, i32* %226, i32* %229, i32* %232)
  br label %236

234:                                              ; preds = %182
  %235 = call i32 @gl_problem(i32* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  br label %241

236:                                              ; preds = %210, %186
  br label %237

237:                                              ; preds = %236, %181
  br label %238

238:                                              ; preds = %237
  %239 = load i64, i64* %21, align 8
  %240 = add i64 %239, 1
  store i64 %240, i64* %21, align 8
  br label %22

241:                                              ; preds = %179, %234, %22
  ret void
}

declare dso_local i32 @sample_1d_nearest(%struct.gl_texture_object*, i32, i64, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @sample_1d_linear(%struct.gl_texture_object*, i32, i64, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @sample_1d_nearest_mipmap_nearest(%struct.gl_texture_object*, i64, i64, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @sample_1d_linear_mipmap_nearest(%struct.gl_texture_object*, i64, i64, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @sample_1d_nearest_mipmap_linear(%struct.gl_texture_object*, i64, i64, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @sample_1d_linear_mipmap_linear(%struct.gl_texture_object*, i64, i64, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @gl_problem(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
