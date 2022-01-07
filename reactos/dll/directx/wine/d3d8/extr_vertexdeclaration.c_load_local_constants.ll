; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3d8/extr_vertexdeclaration.c_load_local_constants.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3d8/extr_vertexdeclaration.c_load_local_constants.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_shader = type { i32 }

@D3DVSD_TOKENTYPEMASK = common dso_local global i32 0, align 4
@D3DVSD_TOKENTYPESHIFT = common dso_local global i32 0, align 4
@D3DVSD_TOKEN_CONSTMEM = common dso_local global i32 0, align 4
@D3DVSD_CONSTCOUNTMASK = common dso_local global i32 0, align 4
@D3DVSD_CONSTCOUNTSHIFT = common dso_local global i32 0, align 4
@D3DVSD_CONSTADDRESSMASK = common dso_local global i32 0, align 4
@D3DVSD_CONSTADDRESSSHIFT = common dso_local global i32 0, align 4
@d3d8 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"c[%u] = (%8f, %8f, %8f, %8f)\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"Failed setting shader constants\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @load_local_constants(i32* %0, %struct.wined3d_shader* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.wined3d_shader*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store %struct.wined3d_shader* %1, %struct.wined3d_shader** %4, align 8
  %10 = load i32*, i32** %3, align 8
  store i32* %10, i32** %5, align 8
  br label %11

11:                                               ; preds = %99, %2
  %12 = load i32*, i32** %5, align 8
  %13 = load i32, i32* %12, align 4
  %14 = call i32 (...) @D3DVSD_END()
  %15 = icmp ne i32 %13, %14
  br i1 %15, label %16, label %105

16:                                               ; preds = %11
  %17 = load i32*, i32** %5, align 8
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @D3DVSD_TOKENTYPEMASK, align 4
  %20 = and i32 %18, %19
  %21 = load i32, i32* @D3DVSD_TOKENTYPESHIFT, align 4
  %22 = ashr i32 %20, %21
  %23 = load i32, i32* @D3DVSD_TOKEN_CONSTMEM, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %99

25:                                               ; preds = %16
  %26 = load i32*, i32** %5, align 8
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @D3DVSD_CONSTCOUNTMASK, align 4
  %29 = and i32 %27, %28
  %30 = load i32, i32* @D3DVSD_CONSTCOUNTSHIFT, align 4
  %31 = ashr i32 %29, %30
  store i32 %31, i32* %6, align 4
  %32 = load i32*, i32** %5, align 8
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @D3DVSD_CONSTADDRESSMASK, align 4
  %35 = and i32 %33, %34
  %36 = load i32, i32* @D3DVSD_CONSTADDRESSSHIFT, align 4
  %37 = ashr i32 %35, %36
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* @d3d8, align 4
  %39 = call i64 @TRACE_ON(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %85

41:                                               ; preds = %25
  store i32 0, i32* %9, align 4
  br label %42

42:                                               ; preds = %81, %41
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* %6, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %84

46:                                               ; preds = %42
  %47 = load i32, i32* %7, align 4
  %48 = load i32*, i32** %5, align 8
  %49 = load i32, i32* %9, align 4
  %50 = mul nsw i32 %49, 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %48, i64 %51
  %53 = getelementptr inbounds i32, i32* %52, i64 1
  %54 = bitcast i32* %53 to float*
  %55 = load float, float* %54, align 4
  %56 = load i32*, i32** %5, align 8
  %57 = load i32, i32* %9, align 4
  %58 = mul nsw i32 %57, 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %56, i64 %59
  %61 = getelementptr inbounds i32, i32* %60, i64 2
  %62 = bitcast i32* %61 to float*
  %63 = load float, float* %62, align 4
  %64 = load i32*, i32** %5, align 8
  %65 = load i32, i32* %9, align 4
  %66 = mul nsw i32 %65, 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %64, i64 %67
  %69 = getelementptr inbounds i32, i32* %68, i64 3
  %70 = bitcast i32* %69 to float*
  %71 = load float, float* %70, align 4
  %72 = load i32*, i32** %5, align 8
  %73 = load i32, i32* %9, align 4
  %74 = mul nsw i32 %73, 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %72, i64 %75
  %77 = getelementptr inbounds i32, i32* %76, i64 4
  %78 = bitcast i32* %77 to float*
  %79 = load float, float* %78, align 4
  %80 = call i32 @TRACE(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %47, float %55, float %63, float %71, float %79)
  br label %81

81:                                               ; preds = %46
  %82 = load i32, i32* %9, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %9, align 4
  br label %42

84:                                               ; preds = %42
  br label %85

85:                                               ; preds = %84, %25
  %86 = load %struct.wined3d_shader*, %struct.wined3d_shader** %4, align 8
  %87 = load i32, i32* %7, align 4
  %88 = load i32*, i32** %5, align 8
  %89 = bitcast i32* %88 to float*
  %90 = getelementptr inbounds float, float* %89, i64 1
  %91 = load i32, i32* %6, align 4
  %92 = call i32 @wined3d_shader_set_local_constants_float(%struct.wined3d_shader* %86, i32 %87, float* %90, i32 %91)
  store i32 %92, i32* %8, align 4
  %93 = load i32, i32* %8, align 4
  %94 = call i64 @FAILED(i32 %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %85
  %97 = call i32 @ERR(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  br label %98

98:                                               ; preds = %96, %85
  br label %99

99:                                               ; preds = %98, %16
  %100 = load i32*, i32** %5, align 8
  %101 = call i32 @parse_token(i32* %100)
  %102 = load i32*, i32** %5, align 8
  %103 = sext i32 %101 to i64
  %104 = getelementptr inbounds i32, i32* %102, i64 %103
  store i32* %104, i32** %5, align 8
  br label %11

105:                                              ; preds = %11
  ret void
}

declare dso_local i32 @D3DVSD_END(...) #1

declare dso_local i64 @TRACE_ON(i32) #1

declare dso_local i32 @TRACE(i8*, i32, float, float, float, float) #1

declare dso_local i32 @wined3d_shader_set_local_constants_float(%struct.wined3d_shader*, i32, float*, i32) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @ERR(i8*) #1

declare dso_local i32 @parse_token(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
