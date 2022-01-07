; ModuleID = '/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_pixel.c_gl_unpack_pixels.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_pixel.c_gl_unpack_pixels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i64 }

@GL_INVALID_ENUM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"internal error in gl_unpack(type)\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"gl_unpack_pixels(format)\00", align 1
@GL_BITMAP = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @gl_unpack_pixels(%struct.TYPE_5__* %0, i64 %1, i64 %2, i64 %3, i64 %4, i32* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i32*, align 8
  %26 = alloca i32*, align 8
  %27 = alloca i32*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %8, align 8
  store i64 %1, i64* %9, align 8
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i64 %4, i64* %12, align 8
  store i32* %5, i32** %13, align 8
  %28 = load i64, i64* %12, align 8
  %29 = call i64 @gl_sizeof_type(i64 %28)
  store i64 %29, i64* %14, align 8
  %30 = load i64, i64* %14, align 8
  %31 = icmp slt i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %6
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %34 = load i32, i32* @GL_INVALID_ENUM, align 4
  %35 = call i32 @gl_error(%struct.TYPE_5__* %33, i32 %34, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  store i32* null, i32** %7, align 8
  br label %182

36:                                               ; preds = %6
  %37 = load i64, i64* %11, align 8
  %38 = call i64 @gl_components_in_format(i64 %37)
  store i64 %38, i64* %15, align 8
  %39 = load i64, i64* %15, align 8
  %40 = icmp slt i64 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %36
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %43 = load i32, i32* @GL_INVALID_ENUM, align 4
  %44 = call i32 @gl_error(%struct.TYPE_5__* %42, i32 %43, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  store i32* null, i32** %7, align 8
  br label %182

45:                                               ; preds = %36
  %46 = load i64, i64* %12, align 8
  %47 = load i64, i64* @GL_BITMAP, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %106

49:                                               ; preds = %45
  %50 = load i64, i64* %9, align 8
  %51 = load i64, i64* %10, align 8
  %52 = mul nsw i64 %50, %51
  %53 = call i64 @CEILING(i64 %52, i32 8)
  store i64 %53, i64* %16, align 8
  %54 = load i64, i64* %16, align 8
  %55 = call i64 @malloc(i64 %54)
  %56 = inttoptr i64 %55 to i32*
  store i32* %56, i32** %19, align 8
  %57 = load i32*, i32** %19, align 8
  %58 = icmp ne i32* %57, null
  br i1 %58, label %60, label %59

59:                                               ; preds = %49
  store i32* null, i32** %7, align 8
  br label %182

60:                                               ; preds = %49
  %61 = load i64, i64* %9, align 8
  %62 = call i64 @CEILING(i64 %61, i32 8)
  store i64 %62, i64* %18, align 8
  %63 = load i32*, i32** %19, align 8
  store i32* %63, i32** %20, align 8
  store i64 0, i64* %17, align 8
  br label %64

64:                                               ; preds = %91, %60
  %65 = load i64, i64* %17, align 8
  %66 = load i64, i64* %10, align 8
  %67 = icmp slt i64 %65, %66
  br i1 %67, label %68, label %94

68:                                               ; preds = %64
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 0
  %71 = load i32*, i32** %13, align 8
  %72 = load i64, i64* %9, align 8
  %73 = load i64, i64* %10, align 8
  %74 = load i64, i64* %11, align 8
  %75 = load i64, i64* %12, align 8
  %76 = load i64, i64* %17, align 8
  %77 = call i32* @gl_pixel_addr_in_image(%struct.TYPE_6__* %70, i32* %71, i64 %72, i64 %73, i64 %74, i64 %75, i64 %76)
  store i32* %77, i32** %21, align 8
  %78 = load i32*, i32** %21, align 8
  %79 = icmp ne i32* %78, null
  br i1 %79, label %83, label %80

80:                                               ; preds = %68
  %81 = load i32*, i32** %19, align 8
  %82 = call i32 @free(i32* %81)
  store i32* null, i32** %7, align 8
  br label %182

83:                                               ; preds = %68
  %84 = load i32*, i32** %20, align 8
  %85 = load i32*, i32** %21, align 8
  %86 = load i64, i64* %18, align 8
  %87 = call i32 @MEMCPY(i32* %84, i32* %85, i64 %86)
  %88 = load i64, i64* %18, align 8
  %89 = load i32*, i32** %20, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 %88
  store i32* %90, i32** %20, align 8
  br label %91

91:                                               ; preds = %83
  %92 = load i64, i64* %17, align 8
  %93 = add nsw i64 %92, 1
  store i64 %93, i64* %17, align 8
  br label %64

94:                                               ; preds = %64
  %95 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %104

100:                                              ; preds = %94
  %101 = load i32*, i32** %19, align 8
  %102 = load i64, i64* %16, align 8
  %103 = call i32 @gl_flip_bytes(i32* %101, i64 %102)
  br label %104

104:                                              ; preds = %100, %94
  %105 = load i32*, i32** %19, align 8
  store i32* %105, i32** %7, align 8
  br label %182

106:                                              ; preds = %45
  %107 = load i64, i64* %9, align 8
  %108 = load i64, i64* %15, align 8
  %109 = mul nsw i64 %107, %108
  %110 = load i64, i64* %14, align 8
  %111 = mul nsw i64 %109, %110
  store i64 %111, i64* %22, align 8
  %112 = load i64, i64* %10, align 8
  %113 = load i64, i64* %22, align 8
  %114 = mul nsw i64 %112, %113
  store i64 %114, i64* %23, align 8
  %115 = load i64, i64* %23, align 8
  %116 = call i64 @malloc(i64 %115)
  %117 = inttoptr i64 %116 to i32*
  store i32* %117, i32** %25, align 8
  %118 = load i32*, i32** %25, align 8
  %119 = icmp ne i32* %118, null
  br i1 %119, label %121, label %120

120:                                              ; preds = %106
  store i32* null, i32** %7, align 8
  br label %182

121:                                              ; preds = %106
  %122 = load i32*, i32** %25, align 8
  store i32* %122, i32** %26, align 8
  store i64 0, i64* %24, align 8
  br label %123

123:                                              ; preds = %150, %121
  %124 = load i64, i64* %24, align 8
  %125 = load i64, i64* %10, align 8
  %126 = icmp slt i64 %124, %125
  br i1 %126, label %127, label %153

127:                                              ; preds = %123
  %128 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %129 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %128, i32 0, i32 0
  %130 = load i32*, i32** %13, align 8
  %131 = load i64, i64* %9, align 8
  %132 = load i64, i64* %10, align 8
  %133 = load i64, i64* %11, align 8
  %134 = load i64, i64* %12, align 8
  %135 = load i64, i64* %24, align 8
  %136 = call i32* @gl_pixel_addr_in_image(%struct.TYPE_6__* %129, i32* %130, i64 %131, i64 %132, i64 %133, i64 %134, i64 %135)
  store i32* %136, i32** %27, align 8
  %137 = load i32*, i32** %27, align 8
  %138 = icmp ne i32* %137, null
  br i1 %138, label %142, label %139

139:                                              ; preds = %127
  %140 = load i32*, i32** %25, align 8
  %141 = call i32 @free(i32* %140)
  store i32* null, i32** %7, align 8
  br label %182

142:                                              ; preds = %127
  %143 = load i32*, i32** %26, align 8
  %144 = load i32*, i32** %27, align 8
  %145 = load i64, i64* %22, align 8
  %146 = call i32 @MEMCPY(i32* %143, i32* %144, i64 %145)
  %147 = load i64, i64* %22, align 8
  %148 = load i32*, i32** %26, align 8
  %149 = getelementptr inbounds i32, i32* %148, i64 %147
  store i32* %149, i32** %26, align 8
  br label %150

150:                                              ; preds = %142
  %151 = load i64, i64* %24, align 8
  %152 = add nsw i64 %151, 1
  store i64 %152, i64* %24, align 8
  br label %123

153:                                              ; preds = %123
  %154 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %155 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %155, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %180

159:                                              ; preds = %153
  %160 = load i64, i64* %14, align 8
  %161 = icmp sgt i64 %160, 1
  br i1 %161, label %162, label %180

162:                                              ; preds = %159
  %163 = load i64, i64* %14, align 8
  %164 = icmp eq i64 %163, 2
  br i1 %164, label %165, label %170

165:                                              ; preds = %162
  %166 = load i32*, i32** %25, align 8
  %167 = load i64, i64* %23, align 8
  %168 = sdiv i64 %167, 2
  %169 = call i32 @gl_swap2(i32* %166, i64 %168)
  br label %179

170:                                              ; preds = %162
  %171 = load i64, i64* %14, align 8
  %172 = icmp eq i64 %171, 4
  br i1 %172, label %173, label %178

173:                                              ; preds = %170
  %174 = load i32*, i32** %25, align 8
  %175 = load i64, i64* %23, align 8
  %176 = sdiv i64 %175, 4
  %177 = call i32 @gl_swap4(i32* %174, i64 %176)
  br label %178

178:                                              ; preds = %173, %170
  br label %179

179:                                              ; preds = %178, %165
  br label %180

180:                                              ; preds = %179, %159, %153
  %181 = load i32*, i32** %25, align 8
  store i32* %181, i32** %7, align 8
  br label %182

182:                                              ; preds = %180, %139, %120, %104, %80, %59, %41, %32
  %183 = load i32*, i32** %7, align 8
  ret i32* %183
}

declare dso_local i64 @gl_sizeof_type(i64) #1

declare dso_local i32 @gl_error(%struct.TYPE_5__*, i32, i8*) #1

declare dso_local i64 @gl_components_in_format(i64) #1

declare dso_local i64 @CEILING(i64, i32) #1

declare dso_local i64 @malloc(i64) #1

declare dso_local i32* @gl_pixel_addr_in_image(%struct.TYPE_6__*, i32*, i64, i64, i64, i64, i64) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32 @MEMCPY(i32*, i32*, i64) #1

declare dso_local i32 @gl_flip_bytes(i32*, i64) #1

declare dso_local i32 @gl_swap2(i32*, i64) #1

declare dso_local i32 @gl_swap4(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
