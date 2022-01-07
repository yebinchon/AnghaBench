; ModuleID = '/home/carl/AnghaBench/poco/PDF/src/extr_hpdf_xref.c_HPDF_Xref_Add.c'
source_filename = "/home/carl/AnghaBench/poco/PDF/src/extr_hpdf_xref.c_HPDF_Xref_Add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_8__ = type { i64, i8*, i64, i32 }
%struct.TYPE_10__ = type { i32, i64 }

@.str = private unnamed_addr constant [16 x i8] c" HPDF_Xref_Add\0A\00", align 1
@HPDF_OK = common dso_local global i64 0, align 8
@HPDF_INVALID_OBJECT = common dso_local global i64 0, align 8
@HPDF_OTYPE_DIRECT = common dso_local global i32 0, align 4
@HPDF_OTYPE_INDIRECT = common dso_local global i32 0, align 4
@HPDF_LIMIT_MAX_XREF_ELEMENT = common dso_local global i32 0, align 4
@HPDF_XREF_COUNT_ERR = common dso_local global i64 0, align 8
@HPDF_IN_USE_ENTRY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @HPDF_Xref_Add(%struct.TYPE_9__* %0, i8* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = call i32 @HPDF_PTRACE(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %9 = load i8*, i8** %5, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %26, label %11

11:                                               ; preds = %2
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call i64 @HPDF_Error_GetCode(i32 %14)
  %16 = load i64, i64* @HPDF_OK, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %24

18:                                               ; preds = %11
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load i64, i64* @HPDF_INVALID_OBJECT, align 8
  %23 = call i64 @HPDF_SetError(i32 %21, i64 %22, i32 0)
  store i64 %23, i64* %3, align 8
  br label %126

24:                                               ; preds = %11
  %25 = load i64, i64* @HPDF_INVALID_OBJECT, align 8
  store i64 %25, i64* %3, align 8
  br label %126

26:                                               ; preds = %2
  %27 = load i8*, i8** %5, align 8
  %28 = bitcast i8* %27 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %28, %struct.TYPE_10__** %7, align 8
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @HPDF_OTYPE_DIRECT, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %42, label %35

35:                                               ; preds = %26
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @HPDF_OTYPE_INDIRECT, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %35, %26
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load i64, i64* @HPDF_INVALID_OBJECT, align 8
  %47 = call i64 @HPDF_SetError(i32 %45, i64 %46, i32 0)
  store i64 %47, i64* %3, align 8
  br label %126

48:                                               ; preds = %35
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 3
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @HPDF_LIMIT_MAX_XREF_ELEMENT, align 4
  %55 = icmp sge i32 %53, %54
  br i1 %55, label %56, label %62

56:                                               ; preds = %48
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load i64, i64* @HPDF_XREF_COUNT_ERR, align 8
  %61 = call i64 @HPDF_SetError(i32 %59, i64 %60, i32 0)
  br label %116

62:                                               ; preds = %48
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = call i64 @HPDF_GetMem(i32 %65, i32 4)
  %67 = inttoptr i64 %66 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %67, %struct.TYPE_8__** %6, align 8
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %69 = icmp eq %struct.TYPE_8__* %68, null
  br i1 %69, label %70, label %71

70:                                               ; preds = %62
  br label %116

71:                                               ; preds = %62
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 3
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** %73, align 8
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %76 = call i64 @HPDF_List_Add(%struct.TYPE_11__* %74, %struct.TYPE_8__* %75)
  %77 = load i64, i64* @HPDF_OK, align 8
  %78 = icmp ne i64 %76, %77
  br i1 %78, label %79, label %85

79:                                               ; preds = %71
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %84 = call i32 @HPDF_FreeMem(i32 %82, %struct.TYPE_8__* %83)
  br label %116

85:                                               ; preds = %71
  %86 = load i32, i32* @HPDF_IN_USE_ENTRY, align 4
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 3
  store i32 %86, i32* %88, align 8
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 2
  store i64 0, i64* %90, align 8
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 0
  store i64 0, i64* %92, align 8
  %93 = load i8*, i8** %5, align 8
  %94 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 1
  store i8* %93, i8** %95, align 8
  %96 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 3
  %101 = load %struct.TYPE_11__*, %struct.TYPE_11__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = add nsw i32 %98, %103
  %105 = sub nsw i32 %104, 1
  %106 = load i32, i32* @HPDF_OTYPE_INDIRECT, align 4
  %107 = add nsw i32 %105, %106
  %108 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %109 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %108, i32 0, i32 0
  store i32 %107, i32* %109, align 8
  %110 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %114 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %113, i32 0, i32 1
  store i64 %112, i64* %114, align 8
  %115 = load i64, i64* @HPDF_OK, align 8
  store i64 %115, i64* %3, align 8
  br label %126

116:                                              ; preds = %79, %70, %56
  %117 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %118 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 8
  %120 = load i8*, i8** %5, align 8
  %121 = call i32 @HPDF_Obj_ForceFree(i32 %119, i8* %120)
  %122 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %123 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = call i64 @HPDF_Error_GetCode(i32 %124)
  store i64 %125, i64* %3, align 8
  br label %126

126:                                              ; preds = %116, %85, %42, %24, %18
  %127 = load i64, i64* %3, align 8
  ret i64 %127
}

declare dso_local i32 @HPDF_PTRACE(i8*) #1

declare dso_local i64 @HPDF_Error_GetCode(i32) #1

declare dso_local i64 @HPDF_SetError(i32, i64, i32) #1

declare dso_local i64 @HPDF_GetMem(i32, i32) #1

declare dso_local i64 @HPDF_List_Add(%struct.TYPE_11__*, %struct.TYPE_8__*) #1

declare dso_local i32 @HPDF_FreeMem(i32, %struct.TYPE_8__*) #1

declare dso_local i32 @HPDF_Obj_ForceFree(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
