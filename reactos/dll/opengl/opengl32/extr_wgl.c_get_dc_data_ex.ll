; ModuleID = '/home/carl/AnghaBench/reactos/dll/opengl/opengl32/extr_wgl.c_get_dc_data_ex.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/opengl/opengl32/extr_wgl.c_get_dc_data_ex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wgl_dc_data = type { %struct.wgl_dc_data*, i32, i64, %struct.TYPE_4__*, i32*, i64, i32, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32*, i64 (i32, i32, i32, i32*)* }
%struct.TYPE_3__ = type { i64 }
%union.anon = type { i32* }

@OBJ_DC = common dso_local global i64 0, align 8
@WGL_DC_OBJ_DC = common dso_local global i32 0, align 4
@OBJ_MEMDC = common dso_local global i64 0, align 8
@dc_data_cs = common dso_local global i32 0, align 4
@dc_data_list = common dso_local global %struct.wgl_dc_data* null, align 8
@.str = private unnamed_addr constant [35 x i8] c"ICD %S has %u formats for HDC %x.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.wgl_dc_data* (i32, i32, i32, i32*)* @get_dc_data_ex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.wgl_dc_data* @get_dc_data_ex(i32 %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.wgl_dc_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.wgl_dc_data*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca %union.anon, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32* null, i32** %10, align 8
  %15 = load i32, i32* %6, align 4
  %16 = call i64 @GetObjectType(i32 %15)
  store i64 %16, i64* %12, align 8
  store i32 0, i32* %13, align 4
  %17 = load i64, i64* %12, align 8
  %18 = load i64, i64* @OBJ_DC, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %30

20:                                               ; preds = %4
  %21 = load i32, i32* %6, align 4
  %22 = call i32* @WindowFromDC(i32 %21)
  store i32* %22, i32** %10, align 8
  %23 = load i32*, i32** %10, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %20
  store %struct.wgl_dc_data* null, %struct.wgl_dc_data** %5, align 8
  br label %133

26:                                               ; preds = %20
  %27 = load i32*, i32** %10, align 8
  %28 = bitcast %union.anon* %14 to i32**
  store i32* %27, i32** %28, align 8
  %29 = load i32, i32* @WGL_DC_OBJ_DC, align 4
  store i32 %29, i32* %13, align 4
  br label %39

30:                                               ; preds = %4
  %31 = load i64, i64* %12, align 8
  %32 = load i64, i64* @OBJ_MEMDC, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %30
  %35 = load i32, i32* %6, align 4
  %36 = bitcast %union.anon* %14 to i32*
  store i32 %35, i32* %36, align 8
  br label %38

37:                                               ; preds = %30
  store %struct.wgl_dc_data* null, %struct.wgl_dc_data** %5, align 8
  br label %133

38:                                               ; preds = %34
  br label %39

39:                                               ; preds = %38, %26
  %40 = call i32 @EnterCriticalSection(i32* @dc_data_cs)
  %41 = load %struct.wgl_dc_data*, %struct.wgl_dc_data** @dc_data_list, align 8
  store %struct.wgl_dc_data* %41, %struct.wgl_dc_data** %11, align 8
  br label %42

42:                                               ; preds = %56, %39
  %43 = load %struct.wgl_dc_data*, %struct.wgl_dc_data** %11, align 8
  %44 = icmp ne %struct.wgl_dc_data* %43, null
  br i1 %44, label %45, label %60

45:                                               ; preds = %42
  %46 = load %struct.wgl_dc_data*, %struct.wgl_dc_data** %11, align 8
  %47 = getelementptr inbounds %struct.wgl_dc_data, %struct.wgl_dc_data* %46, i32 0, i32 7
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = bitcast %union.anon* %14 to i64*
  %51 = load i64, i64* %50, align 8
  %52 = icmp eq i64 %49, %51
  br i1 %52, label %53, label %56

53:                                               ; preds = %45
  %54 = call i32 @LeaveCriticalSection(i32* @dc_data_cs)
  %55 = load %struct.wgl_dc_data*, %struct.wgl_dc_data** %11, align 8
  store %struct.wgl_dc_data* %55, %struct.wgl_dc_data** %5, align 8
  br label %133

56:                                               ; preds = %45
  %57 = load %struct.wgl_dc_data*, %struct.wgl_dc_data** %11, align 8
  %58 = getelementptr inbounds %struct.wgl_dc_data, %struct.wgl_dc_data* %57, i32 0, i32 0
  %59 = load %struct.wgl_dc_data*, %struct.wgl_dc_data** %58, align 8
  store %struct.wgl_dc_data* %59, %struct.wgl_dc_data** %11, align 8
  br label %42

60:                                               ; preds = %42
  %61 = call i32 (...) @GetProcessHeap()
  %62 = call %struct.wgl_dc_data* @HeapAlloc(i32 %61, i32 0, i32 64)
  store %struct.wgl_dc_data* %62, %struct.wgl_dc_data** %11, align 8
  %63 = load %struct.wgl_dc_data*, %struct.wgl_dc_data** %11, align 8
  %64 = icmp ne %struct.wgl_dc_data* %63, null
  br i1 %64, label %67, label %65

65:                                               ; preds = %60
  %66 = call i32 @LeaveCriticalSection(i32* @dc_data_cs)
  store %struct.wgl_dc_data* null, %struct.wgl_dc_data** %5, align 8
  br label %133

67:                                               ; preds = %60
  %68 = bitcast %union.anon* %14 to i64*
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.wgl_dc_data*, %struct.wgl_dc_data** %11, align 8
  %71 = getelementptr inbounds %struct.wgl_dc_data, %struct.wgl_dc_data* %70, i32 0, i32 7
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 0
  store i64 %69, i64* %72, align 8
  %73 = load i32, i32* %13, align 4
  %74 = load %struct.wgl_dc_data*, %struct.wgl_dc_data** %11, align 8
  %75 = getelementptr inbounds %struct.wgl_dc_data, %struct.wgl_dc_data* %74, i32 0, i32 6
  store i32 %73, i32* %75, align 8
  %76 = load %struct.wgl_dc_data*, %struct.wgl_dc_data** %11, align 8
  %77 = getelementptr inbounds %struct.wgl_dc_data, %struct.wgl_dc_data* %76, i32 0, i32 5
  store i64 0, i64* %77, align 8
  %78 = load %struct.wgl_dc_data*, %struct.wgl_dc_data** %11, align 8
  %79 = getelementptr inbounds %struct.wgl_dc_data, %struct.wgl_dc_data* %78, i32 0, i32 4
  store i32* null, i32** %79, align 8
  %80 = load i32, i32* %6, align 4
  %81 = call %struct.TYPE_4__* @IntGetIcdData(i32 %80)
  %82 = load %struct.wgl_dc_data*, %struct.wgl_dc_data** %11, align 8
  %83 = getelementptr inbounds %struct.wgl_dc_data, %struct.wgl_dc_data* %82, i32 0, i32 3
  store %struct.TYPE_4__* %81, %struct.TYPE_4__** %83, align 8
  %84 = load %struct.wgl_dc_data*, %struct.wgl_dc_data** %11, align 8
  %85 = getelementptr inbounds %struct.wgl_dc_data, %struct.wgl_dc_data* %84, i32 0, i32 3
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %85, align 8
  %87 = icmp ne %struct.TYPE_4__* %86, null
  br i1 %87, label %88, label %101

88:                                               ; preds = %67
  %89 = load %struct.wgl_dc_data*, %struct.wgl_dc_data** %11, align 8
  %90 = getelementptr inbounds %struct.wgl_dc_data, %struct.wgl_dc_data* %89, i32 0, i32 3
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 1
  %93 = load i64 (i32, i32, i32, i32*)*, i64 (i32, i32, i32, i32*)** %92, align 8
  %94 = load i32, i32* %6, align 4
  %95 = load i32, i32* %7, align 4
  %96 = load i32, i32* %8, align 4
  %97 = load i32*, i32** %9, align 8
  %98 = call i64 %93(i32 %94, i32 %95, i32 %96, i32* %97)
  %99 = load %struct.wgl_dc_data*, %struct.wgl_dc_data** %11, align 8
  %100 = getelementptr inbounds %struct.wgl_dc_data, %struct.wgl_dc_data* %99, i32 0, i32 2
  store i64 %98, i64* %100, align 8
  br label %104

101:                                              ; preds = %67
  %102 = load %struct.wgl_dc_data*, %struct.wgl_dc_data** %11, align 8
  %103 = getelementptr inbounds %struct.wgl_dc_data, %struct.wgl_dc_data* %102, i32 0, i32 2
  store i64 0, i64* %103, align 8
  br label %104

104:                                              ; preds = %101, %88
  %105 = load %struct.wgl_dc_data*, %struct.wgl_dc_data** %11, align 8
  %106 = getelementptr inbounds %struct.wgl_dc_data, %struct.wgl_dc_data* %105, i32 0, i32 3
  %107 = load %struct.TYPE_4__*, %struct.TYPE_4__** %106, align 8
  %108 = icmp ne %struct.TYPE_4__* %107, null
  br i1 %108, label %109, label %115

109:                                              ; preds = %104
  %110 = load %struct.wgl_dc_data*, %struct.wgl_dc_data** %11, align 8
  %111 = getelementptr inbounds %struct.wgl_dc_data, %struct.wgl_dc_data* %110, i32 0, i32 3
  %112 = load %struct.TYPE_4__*, %struct.TYPE_4__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 0
  %114 = load i32*, i32** %113, align 8
  br label %116

115:                                              ; preds = %104
  br label %116

116:                                              ; preds = %115, %109
  %117 = phi i32* [ %114, %109 ], [ null, %115 ]
  %118 = load %struct.wgl_dc_data*, %struct.wgl_dc_data** %11, align 8
  %119 = getelementptr inbounds %struct.wgl_dc_data, %struct.wgl_dc_data* %118, i32 0, i32 2
  %120 = load i64, i64* %119, align 8
  %121 = load i32, i32* %6, align 4
  %122 = call i32 @TRACE(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32* %117, i64 %120, i32 %121)
  %123 = load i32, i32* %6, align 4
  %124 = call i32 @sw_DescribePixelFormat(i32 %123, i32 0, i32 0, i32* null)
  %125 = load %struct.wgl_dc_data*, %struct.wgl_dc_data** %11, align 8
  %126 = getelementptr inbounds %struct.wgl_dc_data, %struct.wgl_dc_data* %125, i32 0, i32 1
  store i32 %124, i32* %126, align 8
  %127 = load %struct.wgl_dc_data*, %struct.wgl_dc_data** @dc_data_list, align 8
  %128 = load %struct.wgl_dc_data*, %struct.wgl_dc_data** %11, align 8
  %129 = getelementptr inbounds %struct.wgl_dc_data, %struct.wgl_dc_data* %128, i32 0, i32 0
  store %struct.wgl_dc_data* %127, %struct.wgl_dc_data** %129, align 8
  %130 = load %struct.wgl_dc_data*, %struct.wgl_dc_data** %11, align 8
  store %struct.wgl_dc_data* %130, %struct.wgl_dc_data** @dc_data_list, align 8
  %131 = call i32 @LeaveCriticalSection(i32* @dc_data_cs)
  %132 = load %struct.wgl_dc_data*, %struct.wgl_dc_data** %11, align 8
  store %struct.wgl_dc_data* %132, %struct.wgl_dc_data** %5, align 8
  br label %133

133:                                              ; preds = %116, %65, %53, %37, %25
  %134 = load %struct.wgl_dc_data*, %struct.wgl_dc_data** %5, align 8
  ret %struct.wgl_dc_data* %134
}

declare dso_local i64 @GetObjectType(i32) #1

declare dso_local i32* @WindowFromDC(i32) #1

declare dso_local i32 @EnterCriticalSection(i32*) #1

declare dso_local i32 @LeaveCriticalSection(i32*) #1

declare dso_local %struct.wgl_dc_data* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local %struct.TYPE_4__* @IntGetIcdData(i32) #1

declare dso_local i32 @TRACE(i8*, i32*, i64, i32) #1

declare dso_local i32 @sw_DescribePixelFormat(i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
