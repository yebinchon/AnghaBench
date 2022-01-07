; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_mesh.c_parse_skin_mesh_info.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_mesh.c_parse_skin_mesh_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32 (%struct.TYPE_14__*)*, i32 (%struct.TYPE_14__*, i32*, i8**)* }
%struct.mesh_data = type { %struct.TYPE_15__*, i32, i32, i32 }
%struct.TYPE_15__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32 (%struct.TYPE_15__*, i32, i32*)*, i32 (%struct.TYPE_15__*, i32, i32, i32*, i32*)*, i32 (%struct.TYPE_15__*, i32, i8*)* }

@.str = private unnamed_addr constant [14 x i8] c"(%p, %p, %u)\0A\00", align 1
@E_FAIL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"truncated data (%ld bytes)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_14__*, %struct.mesh_data*, i32)* @parse_skin_mesh_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_skin_mesh_info(%struct.TYPE_14__* %0, %struct.mesh_data* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca %struct.mesh_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %5, align 8
  store %struct.mesh_data* %1, %struct.mesh_data** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %14 = load %struct.mesh_data*, %struct.mesh_data** %6, align 8
  %15 = load i32, i32* %7, align 4
  %16 = call i32 @TRACE(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), %struct.TYPE_14__* %13, %struct.mesh_data* %14, i32 %15)
  %17 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 1
  %21 = load i32 (%struct.TYPE_14__*, i32*, i8**)*, i32 (%struct.TYPE_14__*, i32*, i8**)** %20, align 8
  %22 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %23 = bitcast i32** %10 to i8**
  %24 = call i32 %21(%struct.TYPE_14__* %22, i32* %9, i8** %23)
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %8, align 4
  %26 = call i64 @FAILED(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %3
  %29 = load i32, i32* %8, align 4
  store i32 %29, i32* %4, align 4
  br label %153

30:                                               ; preds = %3
  %31 = load i32, i32* @E_FAIL, align 4
  store i32 %31, i32* %8, align 4
  %32 = load %struct.mesh_data*, %struct.mesh_data** %6, align 8
  %33 = getelementptr inbounds %struct.mesh_data, %struct.mesh_data* %32, i32 0, i32 0
  %34 = load %struct.TYPE_15__*, %struct.TYPE_15__** %33, align 8
  %35 = icmp ne %struct.TYPE_15__* %34, null
  br i1 %35, label %62, label %36

36:                                               ; preds = %30
  %37 = load i32, i32* %9, align 4
  %38 = sext i32 %37 to i64
  %39 = icmp ult i64 %38, 12
  br i1 %39, label %40, label %43

40:                                               ; preds = %36
  %41 = load i32, i32* %9, align 4
  %42 = call i32 @WARN(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %41)
  br label %144

43:                                               ; preds = %36
  %44 = load i32*, i32** %10, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 8
  store i32* %45, i32** %10, align 8
  %46 = load i32*, i32** %10, align 8
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.mesh_data*, %struct.mesh_data** %6, align 8
  %49 = getelementptr inbounds %struct.mesh_data, %struct.mesh_data* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 8
  %50 = load %struct.mesh_data*, %struct.mesh_data** %6, align 8
  %51 = getelementptr inbounds %struct.mesh_data, %struct.mesh_data* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.mesh_data*, %struct.mesh_data** %6, align 8
  %54 = getelementptr inbounds %struct.mesh_data, %struct.mesh_data* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.mesh_data*, %struct.mesh_data** %6, align 8
  %57 = getelementptr inbounds %struct.mesh_data, %struct.mesh_data* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.mesh_data*, %struct.mesh_data** %6, align 8
  %60 = getelementptr inbounds %struct.mesh_data, %struct.mesh_data* %59, i32 0, i32 0
  %61 = call i32 @D3DXCreateSkinInfoFVF(i32 %52, i32 %55, i32 %58, %struct.TYPE_15__** %60)
  store i32 %61, i32* %8, align 4
  br label %143

62:                                               ; preds = %30
  %63 = load i32*, i32** %10, align 8
  %64 = bitcast i32* %63 to i8**
  %65 = load i8*, i8** %64, align 8
  store i8* %65, i8** %11, align 8
  %66 = load i32*, i32** %10, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 8
  store i32* %67, i32** %10, align 8
  %68 = load i32*, i32** %10, align 8
  %69 = load i32, i32* %68, align 4
  store i32 %69, i32* %12, align 4
  %70 = load i32*, i32** %10, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 4
  store i32* %71, i32** %10, align 8
  %72 = load i32, i32* %9, align 4
  %73 = sext i32 %72 to i64
  %74 = load i32, i32* %12, align 4
  %75 = sext i32 %74 to i64
  %76 = mul i64 %75, 8
  %77 = add i64 12, %76
  %78 = add i64 %77, 64
  %79 = icmp ult i64 %73, %78
  br i1 %79, label %80, label %83

80:                                               ; preds = %62
  %81 = load i32, i32* %9, align 4
  %82 = call i32 @WARN(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %81)
  br label %144

83:                                               ; preds = %62
  %84 = load %struct.mesh_data*, %struct.mesh_data** %6, align 8
  %85 = getelementptr inbounds %struct.mesh_data, %struct.mesh_data* %84, i32 0, i32 0
  %86 = load %struct.TYPE_15__*, %struct.TYPE_15__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %86, i32 0, i32 0
  %88 = load %struct.TYPE_12__*, %struct.TYPE_12__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %88, i32 0, i32 2
  %90 = load i32 (%struct.TYPE_15__*, i32, i8*)*, i32 (%struct.TYPE_15__*, i32, i8*)** %89, align 8
  %91 = load %struct.mesh_data*, %struct.mesh_data** %6, align 8
  %92 = getelementptr inbounds %struct.mesh_data, %struct.mesh_data* %91, i32 0, i32 0
  %93 = load %struct.TYPE_15__*, %struct.TYPE_15__** %92, align 8
  %94 = load i32, i32* %7, align 4
  %95 = load i8*, i8** %11, align 8
  %96 = call i32 %90(%struct.TYPE_15__* %93, i32 %94, i8* %95)
  store i32 %96, i32* %8, align 4
  %97 = load i32, i32* %8, align 4
  %98 = call i64 @SUCCEEDED(i32 %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %120

100:                                              ; preds = %83
  %101 = load %struct.mesh_data*, %struct.mesh_data** %6, align 8
  %102 = getelementptr inbounds %struct.mesh_data, %struct.mesh_data* %101, i32 0, i32 0
  %103 = load %struct.TYPE_15__*, %struct.TYPE_15__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %103, i32 0, i32 0
  %105 = load %struct.TYPE_12__*, %struct.TYPE_12__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %105, i32 0, i32 1
  %107 = load i32 (%struct.TYPE_15__*, i32, i32, i32*, i32*)*, i32 (%struct.TYPE_15__*, i32, i32, i32*, i32*)** %106, align 8
  %108 = load %struct.mesh_data*, %struct.mesh_data** %6, align 8
  %109 = getelementptr inbounds %struct.mesh_data, %struct.mesh_data* %108, i32 0, i32 0
  %110 = load %struct.TYPE_15__*, %struct.TYPE_15__** %109, align 8
  %111 = load i32, i32* %7, align 4
  %112 = load i32, i32* %12, align 4
  %113 = load i32*, i32** %10, align 8
  %114 = load i32*, i32** %10, align 8
  %115 = load i32, i32* %12, align 4
  %116 = sext i32 %115 to i64
  %117 = mul i64 %116, 4
  %118 = getelementptr inbounds i32, i32* %114, i64 %117
  %119 = call i32 %107(%struct.TYPE_15__* %110, i32 %111, i32 %112, i32* %113, i32* %118)
  store i32 %119, i32* %8, align 4
  br label %120

120:                                              ; preds = %100, %83
  %121 = load i32, i32* %8, align 4
  %122 = call i64 @SUCCEEDED(i32 %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %142

124:                                              ; preds = %120
  %125 = load %struct.mesh_data*, %struct.mesh_data** %6, align 8
  %126 = getelementptr inbounds %struct.mesh_data, %struct.mesh_data* %125, i32 0, i32 0
  %127 = load %struct.TYPE_15__*, %struct.TYPE_15__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %127, i32 0, i32 0
  %129 = load %struct.TYPE_12__*, %struct.TYPE_12__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %129, i32 0, i32 0
  %131 = load i32 (%struct.TYPE_15__*, i32, i32*)*, i32 (%struct.TYPE_15__*, i32, i32*)** %130, align 8
  %132 = load %struct.mesh_data*, %struct.mesh_data** %6, align 8
  %133 = getelementptr inbounds %struct.mesh_data, %struct.mesh_data* %132, i32 0, i32 0
  %134 = load %struct.TYPE_15__*, %struct.TYPE_15__** %133, align 8
  %135 = load i32, i32* %7, align 4
  %136 = load i32*, i32** %10, align 8
  %137 = load i32, i32* %12, align 4
  %138 = sext i32 %137 to i64
  %139 = mul i64 %138, 8
  %140 = getelementptr inbounds i32, i32* %136, i64 %139
  %141 = call i32 %131(%struct.TYPE_15__* %134, i32 %135, i32* %140)
  store i32 %141, i32* %8, align 4
  br label %142

142:                                              ; preds = %124, %120
  br label %143

143:                                              ; preds = %142, %43
  br label %144

144:                                              ; preds = %143, %80, %40
  %145 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %146 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %145, i32 0, i32 0
  %147 = load %struct.TYPE_13__*, %struct.TYPE_13__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %147, i32 0, i32 0
  %149 = load i32 (%struct.TYPE_14__*)*, i32 (%struct.TYPE_14__*)** %148, align 8
  %150 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %151 = call i32 %149(%struct.TYPE_14__* %150)
  %152 = load i32, i32* %8, align 4
  store i32 %152, i32* %4, align 4
  br label %153

153:                                              ; preds = %144, %28
  %154 = load i32, i32* %4, align 4
  ret i32 %154
}

declare dso_local i32 @TRACE(i8*, %struct.TYPE_14__*, %struct.mesh_data*, i32) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @WARN(i8*, i32) #1

declare dso_local i32 @D3DXCreateSkinInfoFVF(i32, i32, i32, %struct.TYPE_15__**) #1

declare dso_local i64 @SUCCEEDED(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
