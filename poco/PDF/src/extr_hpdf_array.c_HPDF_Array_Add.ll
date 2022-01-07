; ModuleID = '/home/carl/AnghaBench/poco/PDF/src/extr_hpdf_array.c_HPDF_Array_Add.c'
source_filename = "/home/carl/AnghaBench/poco/PDF/src/extr_hpdf_array.c_HPDF_Array_Add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, %struct.TYPE_12__*, i32 }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c" HPDF_Array_Add\0A\00", align 1
@HPDF_OK = common dso_local global i64 0, align 8
@HPDF_INVALID_OBJECT = common dso_local global i64 0, align 8
@HPDF_OTYPE_DIRECT = common dso_local global i32 0, align 4
@HPDF_LIMIT_MAX_ARRAY = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [53 x i8] c" HPDF_Array_Add exceed limitatin of array count(%d)\0A\00", align 1
@HPDF_ARRAY_COUNT_ERR = common dso_local global i64 0, align 8
@HPDF_OTYPE_INDIRECT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @HPDF_Array_Add(%struct.TYPE_11__* %0, i8* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = call i32 @HPDF_PTRACE(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %10 = load i8*, i8** %5, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %27, label %12

12:                                               ; preds = %2
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = call i64 @HPDF_Error_GetCode(i32 %15)
  %17 = load i64, i64* @HPDF_OK, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %25

19:                                               ; preds = %12
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = load i64, i64* @HPDF_INVALID_OBJECT, align 8
  %24 = call i64 @HPDF_SetError(i32 %22, i64 %23, i32 0)
  store i64 %24, i64* %3, align 8
  br label %121

25:                                               ; preds = %12
  %26 = load i64, i64* @HPDF_INVALID_OBJECT, align 8
  store i64 %26, i64* %3, align 8
  br label %121

27:                                               ; preds = %2
  %28 = load i8*, i8** %5, align 8
  %29 = bitcast i8* %28 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %29, %struct.TYPE_10__** %6, align 8
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @HPDF_OTYPE_DIRECT, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %27
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = load i64, i64* @HPDF_INVALID_OBJECT, align 8
  %41 = call i64 @HPDF_SetError(i32 %39, i64 %40, i32 0)
  store i64 %41, i64* %3, align 8
  br label %121

42:                                               ; preds = %27
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 1
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @HPDF_LIMIT_MAX_ARRAY, align 8
  %49 = icmp sge i64 %47, %48
  br i1 %49, label %50, label %64

50:                                               ; preds = %42
  %51 = load i64, i64* @HPDF_LIMIT_MAX_ARRAY, align 8
  %52 = inttoptr i64 %51 to i8*
  %53 = call i32 @HPDF_PTRACE(i8* %52)
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i8*, i8** %5, align 8
  %58 = call i32 @HPDF_Obj_Free(i32 %56, i8* %57)
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = load i64, i64* @HPDF_ARRAY_COUNT_ERR, align 8
  %63 = call i64 @HPDF_SetError(i32 %61, i64 %62, i32 0)
  store i64 %63, i64* %3, align 8
  br label %121

64:                                               ; preds = %42
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @HPDF_OTYPE_INDIRECT, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %98

71:                                               ; preds = %64
  %72 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load i8*, i8** %5, align 8
  %76 = call %struct.TYPE_9__* @HPDF_Proxy_New(i32 %74, i8* %75)
  store %struct.TYPE_9__* %76, %struct.TYPE_9__** %8, align 8
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %78 = icmp ne %struct.TYPE_9__* %77, null
  br i1 %78, label %89, label %79

79:                                               ; preds = %71
  %80 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load i8*, i8** %5, align 8
  %84 = call i32 @HPDF_Obj_Free(i32 %82, i8* %83)
  %85 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = call i64 @HPDF_Error_GetCode(i32 %87)
  store i64 %88, i64* %3, align 8
  br label %121

89:                                               ; preds = %71
  %90 = load i32, i32* @HPDF_OTYPE_DIRECT, align 4
  %91 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = or i32 %94, %90
  store i32 %95, i32* %93, align 4
  %96 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %97 = bitcast %struct.TYPE_9__* %96 to i8*
  store i8* %97, i8** %5, align 8
  br label %104

98:                                               ; preds = %64
  %99 = load i32, i32* @HPDF_OTYPE_DIRECT, align 4
  %100 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = or i32 %102, %99
  store i32 %103, i32* %101, align 4
  br label %104

104:                                              ; preds = %98, %89
  %105 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %106 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %105, i32 0, i32 1
  %107 = load %struct.TYPE_12__*, %struct.TYPE_12__** %106, align 8
  %108 = load i8*, i8** %5, align 8
  %109 = call i64 @HPDF_List_Add(%struct.TYPE_12__* %107, i8* %108)
  store i64 %109, i64* %7, align 8
  %110 = load i64, i64* %7, align 8
  %111 = load i64, i64* @HPDF_OK, align 8
  %112 = icmp ne i64 %110, %111
  br i1 %112, label %113, label %119

113:                                              ; preds = %104
  %114 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %115 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = load i8*, i8** %5, align 8
  %118 = call i32 @HPDF_Obj_Free(i32 %116, i8* %117)
  br label %119

119:                                              ; preds = %113, %104
  %120 = load i64, i64* %7, align 8
  store i64 %120, i64* %3, align 8
  br label %121

121:                                              ; preds = %119, %79, %50, %36, %25, %19
  %122 = load i64, i64* %3, align 8
  ret i64 %122
}

declare dso_local i32 @HPDF_PTRACE(i8*) #1

declare dso_local i64 @HPDF_Error_GetCode(i32) #1

declare dso_local i64 @HPDF_SetError(i32, i64, i32) #1

declare dso_local i32 @HPDF_Obj_Free(i32, i8*) #1

declare dso_local %struct.TYPE_9__* @HPDF_Proxy_New(i32, i8*) #1

declare dso_local i64 @HPDF_List_Add(%struct.TYPE_12__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
