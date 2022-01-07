; ModuleID = '/home/carl/AnghaBench/reactos/dll/opengl/glu32/src/libutil/extr_mipmap.c_closestFit.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/opengl/glu32/src/libutil/extr_mipmap.c_closestFit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GL_VERSION = common dso_local global i32 0, align 4
@GL_TEXTURE_2D = common dso_local global i64 0, align 8
@GL_PROXY_TEXTURE_2D = common dso_local global i64 0, align 8
@GL_TEXTURE_1D = common dso_local global i64 0, align 8
@GL_PROXY_TEXTURE_1D = common dso_local global i64 0, align 8
@GL_TEXTURE_WIDTH = common dso_local global i32 0, align 4
@GL_MAX_TEXTURE_SIZE = common dso_local global i32 0, align 4
@GL_PROXY_TEXTURE_CUBE_MAP_ARB = common dso_local global i64 0, align 8
@GL_TEXTURE_CUBE_MAP_NEGATIVE_X_ARB = common dso_local global i64 0, align 8
@GL_TEXTURE_CUBE_MAP_NEGATIVE_Y_ARB = common dso_local global i64 0, align 8
@GL_TEXTURE_CUBE_MAP_NEGATIVE_Z_ARB = common dso_local global i64 0, align 8
@GL_TEXTURE_CUBE_MAP_POSITIVE_X_ARB = common dso_local global i64 0, align 8
@GL_TEXTURE_CUBE_MAP_POSITIVE_Y_ARB = common dso_local global i64 0, align 8
@GL_TEXTURE_CUBE_MAP_POSITIVE_Z_ARB = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i64, i64, i64, i64, i64, i64*, i64*)* @closestFit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @closestFit(i64 %0, i64 %1, i64 %2, i64 %3, i64 %4, i64 %5, i64* %6, i64* %7) #0 {
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64*, align 8
  %16 = alloca i64*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  store i64 %0, i64* %9, align 8
  store i64 %1, i64* %10, align 8
  store i64 %2, i64* %11, align 8
  store i64 %3, i64* %12, align 8
  store i64 %4, i64* %13, align 8
  store i64 %5, i64* %14, align 8
  store i64* %6, i64** %15, align 8
  store i64* %7, i64** %16, align 8
  %24 = load i32, i32* @GL_VERSION, align 4
  %25 = call i64 @glGetString(i32 %24)
  %26 = inttoptr i64 %25 to i8*
  %27 = call double @strtod(i8* %26, i32* null)
  %28 = fcmp oge double %27, 1.100000e+00
  br i1 %28, label %29, label %121

29:                                               ; preds = %8
  %30 = load i64, i64* %10, align 8
  %31 = call i64 @nearestPower(i64 %30)
  store i64 %31, i64* %17, align 8
  %32 = load i64, i64* %11, align 8
  %33 = call i64 @nearestPower(i64 %32)
  store i64 %33, i64* %18, align 8
  br label %34

34:                                               ; preds = %113, %29
  %35 = load i64, i64* %17, align 8
  %36 = icmp sgt i64 %35, 1
  br i1 %36, label %37, label %40

37:                                               ; preds = %34
  %38 = load i64, i64* %17, align 8
  %39 = ashr i64 %38, 1
  br label %42

40:                                               ; preds = %34
  %41 = load i64, i64* %17, align 8
  br label %42

42:                                               ; preds = %40, %37
  %43 = phi i64 [ %39, %37 ], [ %41, %40 ]
  store i64 %43, i64* %20, align 8
  %44 = load i64, i64* %18, align 8
  %45 = icmp sgt i64 %44, 1
  br i1 %45, label %46, label %49

46:                                               ; preds = %42
  %47 = load i64, i64* %18, align 8
  %48 = ashr i64 %47, 1
  br label %51

49:                                               ; preds = %42
  %50 = load i64, i64* %18, align 8
  br label %51

51:                                               ; preds = %49, %46
  %52 = phi i64 [ %48, %46 ], [ %50, %49 ]
  store i64 %52, i64* %21, align 8
  %53 = load i64, i64* %20, align 8
  %54 = icmp sgt i64 %53, 0
  %55 = zext i1 %54 to i32
  %56 = call i32 @assert(i32 %55)
  %57 = load i64, i64* %21, align 8
  %58 = icmp sgt i64 %57, 0
  %59 = zext i1 %58 to i32
  %60 = call i32 @assert(i32 %59)
  %61 = load i64, i64* %9, align 8
  %62 = load i64, i64* @GL_TEXTURE_2D, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %68, label %64

64:                                               ; preds = %51
  %65 = load i64, i64* %9, align 8
  %66 = load i64, i64* @GL_PROXY_TEXTURE_2D, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %77

68:                                               ; preds = %64, %51
  %69 = load i64, i64* @GL_PROXY_TEXTURE_2D, align 8
  store i64 %69, i64* %22, align 8
  %70 = load i64, i64* %22, align 8
  %71 = load i64, i64* %12, align 8
  %72 = load i64, i64* %20, align 8
  %73 = load i64, i64* %21, align 8
  %74 = load i64, i64* %13, align 8
  %75 = load i64, i64* %14, align 8
  %76 = call i32 @glTexImage2D(i64 %70, i32 1, i64 %71, i64 %72, i64 %73, i32 0, i64 %74, i64 %75, i32* null)
  br label %96

77:                                               ; preds = %64
  %78 = load i64, i64* %9, align 8
  %79 = load i64, i64* @GL_TEXTURE_1D, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %85, label %81

81:                                               ; preds = %77
  %82 = load i64, i64* %9, align 8
  %83 = load i64, i64* @GL_PROXY_TEXTURE_1D, align 8
  %84 = icmp eq i64 %82, %83
  br label %85

85:                                               ; preds = %81, %77
  %86 = phi i1 [ true, %77 ], [ %84, %81 ]
  %87 = zext i1 %86 to i32
  %88 = call i32 @assert(i32 %87)
  %89 = load i64, i64* @GL_PROXY_TEXTURE_1D, align 8
  store i64 %89, i64* %22, align 8
  %90 = load i64, i64* %22, align 8
  %91 = load i64, i64* %12, align 8
  %92 = load i64, i64* %20, align 8
  %93 = load i64, i64* %13, align 8
  %94 = load i64, i64* %14, align 8
  %95 = call i32 @glTexImage1D(i64 %90, i32 1, i64 %91, i64 %92, i32 0, i64 %93, i64 %94, i32* null)
  br label %96

96:                                               ; preds = %85, %68
  %97 = load i64, i64* %22, align 8
  %98 = load i32, i32* @GL_TEXTURE_WIDTH, align 4
  %99 = call i32 @glGetTexLevelParameteriv(i64 %97, i32 1, i32 %98, i64* %19)
  %100 = load i64, i64* %19, align 8
  %101 = icmp eq i64 %100, 0
  br i1 %101, label %102, label %112

102:                                              ; preds = %96
  %103 = load i64, i64* %17, align 8
  %104 = icmp eq i64 %103, 1
  br i1 %104, label %105, label %109

105:                                              ; preds = %102
  %106 = load i64, i64* %18, align 8
  %107 = icmp eq i64 %106, 1
  br i1 %107, label %108, label %109

108:                                              ; preds = %105
  br label %122

109:                                              ; preds = %105, %102
  %110 = load i64, i64* %20, align 8
  store i64 %110, i64* %17, align 8
  %111 = load i64, i64* %21, align 8
  store i64 %111, i64* %18, align 8
  br label %112

112:                                              ; preds = %109, %96
  br label %113

113:                                              ; preds = %112
  %114 = load i64, i64* %19, align 8
  %115 = icmp eq i64 %114, 0
  br i1 %115, label %34, label %116

116:                                              ; preds = %113
  %117 = load i64, i64* %17, align 8
  %118 = load i64*, i64** %15, align 8
  store i64 %117, i64* %118, align 8
  %119 = load i64, i64* %18, align 8
  %120 = load i64*, i64** %16, align 8
  store i64 %119, i64* %120, align 8
  br label %147

121:                                              ; preds = %8
  br label %122

122:                                              ; preds = %121, %108
  %123 = load i32, i32* @GL_MAX_TEXTURE_SIZE, align 4
  %124 = call i32 @glGetIntegerv(i32 %123, i64* %23)
  %125 = load i64, i64* %10, align 8
  %126 = call i64 @nearestPower(i64 %125)
  %127 = load i64*, i64** %15, align 8
  store i64 %126, i64* %127, align 8
  %128 = load i64*, i64** %15, align 8
  %129 = load i64, i64* %128, align 8
  %130 = load i64, i64* %23, align 8
  %131 = icmp sgt i64 %129, %130
  br i1 %131, label %132, label %135

132:                                              ; preds = %122
  %133 = load i64, i64* %23, align 8
  %134 = load i64*, i64** %15, align 8
  store i64 %133, i64* %134, align 8
  br label %135

135:                                              ; preds = %132, %122
  %136 = load i64, i64* %11, align 8
  %137 = call i64 @nearestPower(i64 %136)
  %138 = load i64*, i64** %16, align 8
  store i64 %137, i64* %138, align 8
  %139 = load i64*, i64** %16, align 8
  %140 = load i64, i64* %139, align 8
  %141 = load i64, i64* %23, align 8
  %142 = icmp sgt i64 %140, %141
  br i1 %142, label %143, label %146

143:                                              ; preds = %135
  %144 = load i64, i64* %23, align 8
  %145 = load i64*, i64** %16, align 8
  store i64 %144, i64* %145, align 8
  br label %146

146:                                              ; preds = %143, %135
  br label %147

147:                                              ; preds = %146, %116
  ret void
}

declare dso_local double @strtod(i8*, i32*) #1

declare dso_local i64 @glGetString(i32) #1

declare dso_local i64 @nearestPower(i64) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @glTexImage2D(i64, i32, i64, i64, i64, i32, i64, i64, i32*) #1

declare dso_local i32 @glTexImage1D(i64, i32, i64, i64, i32, i64, i64, i32*) #1

declare dso_local i32 @glGetTexLevelParameteriv(i64, i32, i32, i64*) #1

declare dso_local i32 @glGetIntegerv(i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
