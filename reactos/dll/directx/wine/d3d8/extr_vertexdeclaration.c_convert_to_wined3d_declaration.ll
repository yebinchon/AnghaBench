; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3d8/extr_vertexdeclaration.c_convert_to_wined3d_declaration.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3d8/extr_vertexdeclaration.c_convert_to_wined3d_declaration.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.wined3d_vertex_element = type { i64, i32, i64, i32, i32, i32, i64, i32, i32 }

@.str = private unnamed_addr constant [62 x i8] c"d3d8_elements %p, d3d8_elements_size %p, wined3d_elements %p\0A\00", align 1
@D3DVSD_TOKENTYPEMASK = common dso_local global i64 0, align 8
@D3DVSD_TOKENTYPESHIFT = common dso_local global i64 0, align 8
@D3DVSD_TOKEN_STREAM = common dso_local global i32 0, align 4
@D3DVSD_STREAMTESSMASK = common dso_local global i64 0, align 8
@D3DVSD_STREAMNUMBERMASK = common dso_local global i64 0, align 8
@D3DVSD_STREAMNUMBERSHIFT = common dso_local global i64 0, align 8
@D3DVSD_TOKEN_STREAMDATA = common dso_local global i32 0, align 4
@D3DVSD_DATALOADTYPEMASK = common dso_local global i64 0, align 8
@D3DVSD_DATATYPEMASK = common dso_local global i64 0, align 8
@D3DVSD_DATATYPESHIFT = common dso_local global i64 0, align 8
@D3DVSD_VERTEXREGMASK = common dso_local global i64 0, align 8
@D3DVSD_VERTEXREGSHIFT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [20 x i8] c"Adding element %d:\0A\00", align 1
@wined3d_format_lookup = common dso_local global i32* null, align 8
@WINED3D_INPUT_PER_VERTEX_DATA = common dso_local global i32 0, align 4
@WINED3D_DECL_METHOD_DEFAULT = common dso_local global i32 0, align 4
@wined3d_usage_lookup = common dso_local global %struct.TYPE_2__* null, align 8
@wined3d_type_sizes = common dso_local global i64* null, align 8
@.str.2 = private unnamed_addr constant [18 x i8] c" 0x%08x SKIP(%u)\0A\00", align 1
@D3DVSD_SKIPCOUNTMASK = common dso_local global i32 0, align 4
@D3DVSD_SKIPCOUNTSHIFT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"More than 127 elements?\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64*, i64*, %struct.wined3d_vertex_element**)* @convert_to_wined3d_declaration to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @convert_to_wined3d_declaration(i64* %0, i64* %1, %struct.wined3d_vertex_element** %2) #0 {
  %4 = alloca i64*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca %struct.wined3d_vertex_element**, align 8
  %7 = alloca %struct.wined3d_vertex_element*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store i64* %0, i64** %4, align 8
  store i64* %1, i64** %5, align 8
  store %struct.wined3d_vertex_element** %2, %struct.wined3d_vertex_element*** %6, align 8
  %15 = load i64*, i64** %4, align 8
  store i64* %15, i64** %8, align 8
  store i32 0, i32* %10, align 4
  store i64 0, i64* %11, align 8
  store i32 0, i32* %12, align 4
  %16 = load i64*, i64** %4, align 8
  %17 = load i64*, i64** %5, align 8
  %18 = load %struct.wined3d_vertex_element**, %struct.wined3d_vertex_element*** %6, align 8
  %19 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0), i64* %16, i64* %17, %struct.wined3d_vertex_element** %18)
  %20 = call %struct.wined3d_vertex_element* @heap_alloc_zero(i32 7168)
  %21 = load %struct.wined3d_vertex_element**, %struct.wined3d_vertex_element*** %6, align 8
  store %struct.wined3d_vertex_element* %20, %struct.wined3d_vertex_element** %21, align 8
  br label %22

22:                                               ; preds = %163, %3
  %23 = call i64 (...) @D3DVSD_END()
  %24 = load i64*, i64** %8, align 8
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %23, %25
  br i1 %26, label %27, label %169

27:                                               ; preds = %22
  %28 = load i64*, i64** %8, align 8
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @D3DVSD_TOKENTYPEMASK, align 8
  %31 = and i64 %29, %30
  %32 = load i64, i64* @D3DVSD_TOKENTYPESHIFT, align 8
  %33 = lshr i64 %31, %32
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* @D3DVSD_TOKEN_STREAM, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %51

38:                                               ; preds = %27
  %39 = load i64*, i64** %8, align 8
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @D3DVSD_STREAMTESSMASK, align 8
  %42 = and i64 %40, %41
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %51, label %44

44:                                               ; preds = %38
  %45 = load i64*, i64** %8, align 8
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @D3DVSD_STREAMNUMBERMASK, align 8
  %48 = and i64 %46, %47
  %49 = load i64, i64* @D3DVSD_STREAMNUMBERSHIFT, align 8
  %50 = lshr i64 %48, %49
  store i64 %50, i64* %11, align 8
  store i32 0, i32* %12, align 4
  br label %158

51:                                               ; preds = %38, %27
  %52 = load i32, i32* %9, align 4
  %53 = load i32, i32* @D3DVSD_TOKEN_STREAMDATA, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %127

55:                                               ; preds = %51
  %56 = load i64*, i64** %8, align 8
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @D3DVSD_DATALOADTYPEMASK, align 8
  %59 = and i64 %57, %58
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %127, label %61

61:                                               ; preds = %55
  %62 = load i64*, i64** %8, align 8
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @D3DVSD_DATATYPEMASK, align 8
  %65 = and i64 %63, %64
  %66 = load i64, i64* @D3DVSD_DATATYPESHIFT, align 8
  %67 = lshr i64 %65, %66
  store i64 %67, i64* %13, align 8
  %68 = load i64*, i64** %8, align 8
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @D3DVSD_VERTEXREGMASK, align 8
  %71 = and i64 %69, %70
  %72 = load i64, i64* @D3DVSD_VERTEXREGSHIFT, align 8
  %73 = lshr i64 %71, %72
  store i64 %73, i64* %14, align 8
  %74 = load i32, i32* %10, align 4
  %75 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %74)
  %76 = load %struct.wined3d_vertex_element**, %struct.wined3d_vertex_element*** %6, align 8
  %77 = load %struct.wined3d_vertex_element*, %struct.wined3d_vertex_element** %76, align 8
  %78 = load i32, i32* %10, align 4
  %79 = add i32 %78, 1
  store i32 %79, i32* %10, align 4
  %80 = zext i32 %78 to i64
  %81 = getelementptr inbounds %struct.wined3d_vertex_element, %struct.wined3d_vertex_element* %77, i64 %80
  store %struct.wined3d_vertex_element* %81, %struct.wined3d_vertex_element** %7, align 8
  %82 = load i32*, i32** @wined3d_format_lookup, align 8
  %83 = load i64, i64* %13, align 8
  %84 = getelementptr inbounds i32, i32* %82, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.wined3d_vertex_element*, %struct.wined3d_vertex_element** %7, align 8
  %87 = getelementptr inbounds %struct.wined3d_vertex_element, %struct.wined3d_vertex_element* %86, i32 0, i32 8
  store i32 %85, i32* %87, align 4
  %88 = load i64, i64* %11, align 8
  %89 = load %struct.wined3d_vertex_element*, %struct.wined3d_vertex_element** %7, align 8
  %90 = getelementptr inbounds %struct.wined3d_vertex_element, %struct.wined3d_vertex_element* %89, i32 0, i32 0
  store i64 %88, i64* %90, align 8
  %91 = load i32, i32* %12, align 4
  %92 = load %struct.wined3d_vertex_element*, %struct.wined3d_vertex_element** %7, align 8
  %93 = getelementptr inbounds %struct.wined3d_vertex_element, %struct.wined3d_vertex_element* %92, i32 0, i32 1
  store i32 %91, i32* %93, align 8
  %94 = load i64, i64* %14, align 8
  %95 = load %struct.wined3d_vertex_element*, %struct.wined3d_vertex_element** %7, align 8
  %96 = getelementptr inbounds %struct.wined3d_vertex_element, %struct.wined3d_vertex_element* %95, i32 0, i32 2
  store i64 %94, i64* %96, align 8
  %97 = load i32, i32* @WINED3D_INPUT_PER_VERTEX_DATA, align 4
  %98 = load %struct.wined3d_vertex_element*, %struct.wined3d_vertex_element** %7, align 8
  %99 = getelementptr inbounds %struct.wined3d_vertex_element, %struct.wined3d_vertex_element* %98, i32 0, i32 7
  store i32 %97, i32* %99, align 8
  %100 = load %struct.wined3d_vertex_element*, %struct.wined3d_vertex_element** %7, align 8
  %101 = getelementptr inbounds %struct.wined3d_vertex_element, %struct.wined3d_vertex_element* %100, i32 0, i32 6
  store i64 0, i64* %101, align 8
  %102 = load i32, i32* @WINED3D_DECL_METHOD_DEFAULT, align 4
  %103 = load %struct.wined3d_vertex_element*, %struct.wined3d_vertex_element** %7, align 8
  %104 = getelementptr inbounds %struct.wined3d_vertex_element, %struct.wined3d_vertex_element* %103, i32 0, i32 5
  store i32 %102, i32* %104, align 8
  %105 = load %struct.TYPE_2__*, %struct.TYPE_2__** @wined3d_usage_lookup, align 8
  %106 = load i64, i64* %14, align 8
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i64 %106
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.wined3d_vertex_element*, %struct.wined3d_vertex_element** %7, align 8
  %111 = getelementptr inbounds %struct.wined3d_vertex_element, %struct.wined3d_vertex_element* %110, i32 0, i32 4
  store i32 %109, i32* %111, align 4
  %112 = load %struct.TYPE_2__*, %struct.TYPE_2__** @wined3d_usage_lookup, align 8
  %113 = load i64, i64* %14, align 8
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i64 %113
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.wined3d_vertex_element*, %struct.wined3d_vertex_element** %7, align 8
  %118 = getelementptr inbounds %struct.wined3d_vertex_element, %struct.wined3d_vertex_element* %117, i32 0, i32 3
  store i32 %116, i32* %118, align 8
  %119 = load i64*, i64** @wined3d_type_sizes, align 8
  %120 = load i64, i64* %13, align 8
  %121 = getelementptr inbounds i64, i64* %119, i64 %120
  %122 = load i64, i64* %121, align 8
  %123 = load i32, i32* %12, align 4
  %124 = sext i32 %123 to i64
  %125 = add nsw i64 %124, %122
  %126 = trunc i64 %125 to i32
  store i32 %126, i32* %12, align 4
  br label %157

127:                                              ; preds = %55, %51
  %128 = load i32, i32* %9, align 4
  %129 = load i32, i32* @D3DVSD_TOKEN_STREAMDATA, align 4
  %130 = icmp eq i32 %128, %129
  br i1 %130, label %131, label %156

131:                                              ; preds = %127
  %132 = load i64*, i64** %8, align 8
  %133 = load i64, i64* %132, align 8
  %134 = load i64, i64* @D3DVSD_DATALOADTYPEMASK, align 8
  %135 = and i64 %133, %134
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %156

137:                                              ; preds = %131
  %138 = load i32, i32* %9, align 4
  %139 = load i32, i32* %9, align 4
  %140 = load i32, i32* @D3DVSD_SKIPCOUNTMASK, align 4
  %141 = and i32 %139, %140
  %142 = load i32, i32* @D3DVSD_SKIPCOUNTSHIFT, align 4
  %143 = ashr i32 %141, %142
  %144 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 %138, i32 %143)
  %145 = load i32, i32* %9, align 4
  %146 = load i32, i32* @D3DVSD_SKIPCOUNTMASK, align 4
  %147 = and i32 %145, %146
  %148 = load i32, i32* @D3DVSD_SKIPCOUNTSHIFT, align 4
  %149 = ashr i32 %147, %148
  %150 = sext i32 %149 to i64
  %151 = mul i64 8, %150
  %152 = load i32, i32* %12, align 4
  %153 = sext i32 %152 to i64
  %154 = add i64 %153, %151
  %155 = trunc i64 %154 to i32
  store i32 %155, i32* %12, align 4
  br label %156

156:                                              ; preds = %137, %131, %127
  br label %157

157:                                              ; preds = %156, %61
  br label %158

158:                                              ; preds = %157, %44
  %159 = load i32, i32* %10, align 4
  %160 = icmp uge i32 %159, 127
  br i1 %160, label %161, label %163

161:                                              ; preds = %158
  %162 = call i32 @ERR(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  br label %169

163:                                              ; preds = %158
  %164 = load i64*, i64** %8, align 8
  %165 = call i32 @parse_token(i64* %164)
  %166 = load i64*, i64** %8, align 8
  %167 = sext i32 %165 to i64
  %168 = getelementptr inbounds i64, i64* %166, i64 %167
  store i64* %168, i64** %8, align 8
  br label %22

169:                                              ; preds = %161, %22
  %170 = load i64*, i64** %8, align 8
  %171 = getelementptr inbounds i64, i64* %170, i32 1
  store i64* %171, i64** %8, align 8
  %172 = load i64*, i64** %4, align 8
  %173 = ptrtoint i64* %171 to i64
  %174 = ptrtoint i64* %172 to i64
  %175 = sub i64 %173, %174
  %176 = sdiv exact i64 %175, 8
  %177 = mul i64 %176, 8
  %178 = load i64*, i64** %5, align 8
  store i64 %177, i64* %178, align 8
  %179 = load i32, i32* %10, align 4
  ret i32 %179
}

declare dso_local i32 @TRACE(i8*, ...) #1

declare dso_local %struct.wined3d_vertex_element* @heap_alloc_zero(i32) #1

declare dso_local i64 @D3DVSD_END(...) #1

declare dso_local i32 @ERR(i8*) #1

declare dso_local i32 @parse_token(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
