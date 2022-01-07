; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_dwarf.c_loc_compute_frame.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_dwarf.c_loc_compute_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.process = type { i32 }
%struct.module_format = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }
%struct.symt_function = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.location = type { i32, i64 }
%struct.symt = type { i64 }
%struct.symt_hierarchy_point = type { %struct.location }

@SymTagCustom = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c"Searching loclist for %s\0A\00", align 1
@loc_err_out_of_scope = common dso_local global i32 0, align 4
@loc_user = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"Couldn't compute runtime frame location\0A\00", align 1
@loc_err_too_complex = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"Unsupported frame kind %d\0A\00", align 1
@loc_err_internal = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [78 x i8] c"Couldn't find Custom function point, whilst location list offset is searched\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.process*, %struct.module_format*, %struct.symt_function*, i32, %struct.location*)* @loc_compute_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @loc_compute_frame(%struct.process* %0, %struct.module_format* %1, %struct.symt_function* %2, i32 %3, %struct.location* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.process*, align 8
  %8 = alloca %struct.module_format*, align 8
  %9 = alloca %struct.symt_function*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.location*, align 8
  %12 = alloca %struct.symt**, align 8
  %13 = alloca %struct.location*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.process* %0, %struct.process** %7, align 8
  store %struct.module_format* %1, %struct.module_format** %8, align 8
  store %struct.symt_function* %2, %struct.symt_function** %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.location* %4, %struct.location** %11, align 8
  store %struct.symt** null, %struct.symt*** %12, align 8
  store i32 0, i32* %16, align 4
  br label %17

17:                                               ; preds = %97, %5
  %18 = load i32, i32* %16, align 4
  %19 = load %struct.symt_function*, %struct.symt_function** %9, align 8
  %20 = getelementptr inbounds %struct.symt_function, %struct.symt_function* %19, i32 0, i32 1
  %21 = call i32 @vector_length(i32* %20)
  %22 = icmp ult i32 %18, %21
  br i1 %22, label %23, label %100

23:                                               ; preds = %17
  %24 = load %struct.symt_function*, %struct.symt_function** %9, align 8
  %25 = getelementptr inbounds %struct.symt_function, %struct.symt_function* %24, i32 0, i32 1
  %26 = load i32, i32* %16, align 4
  %27 = call %struct.symt** @vector_at(i32* %25, i32 %26)
  store %struct.symt** %27, %struct.symt*** %12, align 8
  %28 = load %struct.symt**, %struct.symt*** %12, align 8
  %29 = load %struct.symt*, %struct.symt** %28, align 8
  %30 = getelementptr inbounds %struct.symt, %struct.symt* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @SymTagCustom, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %96

34:                                               ; preds = %23
  %35 = load %struct.symt**, %struct.symt*** %12, align 8
  %36 = load %struct.symt*, %struct.symt** %35, align 8
  %37 = bitcast %struct.symt* %36 to %struct.symt_hierarchy_point*
  %38 = getelementptr inbounds %struct.symt_hierarchy_point, %struct.symt_hierarchy_point* %37, i32 0, i32 0
  store %struct.location* %38, %struct.location** %13, align 8
  %39 = load %struct.location*, %struct.location** %13, align 8
  %40 = getelementptr inbounds %struct.location, %struct.location* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  switch i32 %41, label %89 [
    i32 128, label %42
    i32 129, label %42
    i32 130, label %47
  ]

42:                                               ; preds = %34, %34
  %43 = load %struct.location*, %struct.location** %11, align 8
  %44 = load %struct.location*, %struct.location** %13, align 8
  %45 = bitcast %struct.location* %43 to i8*
  %46 = bitcast %struct.location* %44 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %45, i8* align 8 %46, i64 16, i1 false)
  br label %95

47:                                               ; preds = %34
  %48 = load %struct.symt_function*, %struct.symt_function** %9, align 8
  %49 = getelementptr inbounds %struct.symt_function, %struct.symt_function* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 (i8*, ...) @WARN(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %51)
  %53 = load %struct.module_format*, %struct.module_format** %8, align 8
  %54 = load %struct.module_format*, %struct.module_format** %8, align 8
  %55 = getelementptr inbounds %struct.module_format, %struct.module_format* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.location*, %struct.location** %13, align 8
  %62 = getelementptr inbounds %struct.location, %struct.location* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = add nsw i64 %60, %63
  %65 = load i32, i32* %10, align 4
  %66 = call i32 @dwarf2_lookup_loclist(%struct.module_format* %53, i64 %64, i32 %65, i32* %14)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %70, label %68

68:                                               ; preds = %47
  %69 = load i32, i32* @loc_err_out_of_scope, align 4
  store i32 %69, i32* %6, align 4
  br label %103

70:                                               ; preds = %47
  %71 = load %struct.location*, %struct.location** %11, align 8
  %72 = load %struct.process*, %struct.process** %7, align 8
  %73 = getelementptr inbounds %struct.process, %struct.process* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @compute_location(i32* %14, %struct.location* %71, i32 %74, i32* null)
  store i32 %75, i32* %15, align 4
  %76 = icmp ult i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %70
  %78 = load i32, i32* %15, align 4
  store i32 %78, i32* %6, align 4
  br label %103

79:                                               ; preds = %70
  %80 = load %struct.location*, %struct.location** %11, align 8
  %81 = getelementptr inbounds %struct.location, %struct.location* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* @loc_user, align 4
  %84 = icmp sge i32 %82, %83
  br i1 %84, label %85, label %88

85:                                               ; preds = %79
  %86 = call i32 (i8*, ...) @WARN(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %87 = load i32, i32* @loc_err_too_complex, align 4
  store i32 %87, i32* %6, align 4
  br label %103

88:                                               ; preds = %79
  br label %95

89:                                               ; preds = %34
  %90 = load %struct.location*, %struct.location** %13, align 8
  %91 = getelementptr inbounds %struct.location, %struct.location* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = call i32 (i8*, ...) @WARN(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %92)
  %94 = load i32, i32* @loc_err_internal, align 4
  store i32 %94, i32* %6, align 4
  br label %103

95:                                               ; preds = %88, %42
  store i32 0, i32* %6, align 4
  br label %103

96:                                               ; preds = %23
  br label %97

97:                                               ; preds = %96
  %98 = load i32, i32* %16, align 4
  %99 = add i32 %98, 1
  store i32 %99, i32* %16, align 4
  br label %17

100:                                              ; preds = %17
  %101 = call i32 (i8*, ...) @WARN(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.3, i64 0, i64 0))
  %102 = load i32, i32* @loc_err_internal, align 4
  store i32 %102, i32* %6, align 4
  br label %103

103:                                              ; preds = %100, %95, %89, %85, %77, %68
  %104 = load i32, i32* %6, align 4
  ret i32 %104
}

declare dso_local i32 @vector_length(i32*) #1

declare dso_local %struct.symt** @vector_at(i32*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @WARN(i8*, ...) #1

declare dso_local i32 @dwarf2_lookup_loclist(%struct.module_format*, i64, i32, i32*) #1

declare dso_local i32 @compute_location(i32*, %struct.location*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
