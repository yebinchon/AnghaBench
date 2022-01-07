; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_type.c_symt_add_enum_element.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_type.c_symt_add_enum_element.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.module = type { i32 }
%struct.symt_enum = type { i32, i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64 }
%struct.symt_data = type { %struct.symt, %struct.TYPE_14__, i32, %struct.TYPE_9__*, i32, %struct.TYPE_8__ }
%struct.symt = type { i32 }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_8__ = type { i32*, i32 }

@SymTagEnum = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@SymTagData = common dso_local global i32 0, align 4
@DataIsConstant = common dso_local global i32 0, align 4
@VT_I4 = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @symt_add_enum_element(%struct.module* %0, %struct.symt_enum* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.module*, align 8
  %7 = alloca %struct.symt_enum*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.symt_data*, align 8
  %11 = alloca %struct.symt**, align 8
  store %struct.module* %0, %struct.module** %6, align 8
  store %struct.symt_enum* %1, %struct.symt_enum** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load %struct.symt_enum*, %struct.symt_enum** %7, align 8
  %13 = getelementptr inbounds %struct.symt_enum, %struct.symt_enum* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @SymTagEnum, align 8
  %17 = icmp eq i64 %15, %16
  %18 = zext i1 %17 to i32
  %19 = call i32 @assert(i32 %18)
  %20 = load %struct.module*, %struct.module** %6, align 8
  %21 = getelementptr inbounds %struct.module, %struct.module* %20, i32 0, i32 0
  %22 = call %struct.symt_data* @pool_alloc(i32* %21, i32 48)
  store %struct.symt_data* %22, %struct.symt_data** %10, align 8
  %23 = load %struct.symt_data*, %struct.symt_data** %10, align 8
  %24 = icmp eq %struct.symt_data* %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %4
  %26 = load i32, i32* @FALSE, align 4
  store i32 %26, i32* %5, align 4
  br label %83

27:                                               ; preds = %4
  %28 = load i32, i32* @SymTagData, align 4
  %29 = load %struct.symt_data*, %struct.symt_data** %10, align 8
  %30 = getelementptr inbounds %struct.symt_data, %struct.symt_data* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.symt, %struct.symt* %30, i32 0, i32 0
  store i32 %28, i32* %31, align 8
  %32 = load %struct.module*, %struct.module** %6, align 8
  %33 = getelementptr inbounds %struct.module, %struct.module* %32, i32 0, i32 0
  %34 = load i8*, i8** %8, align 8
  %35 = call i32 @pool_strdup(i32* %33, i8* %34)
  %36 = load %struct.symt_data*, %struct.symt_data** %10, align 8
  %37 = getelementptr inbounds %struct.symt_data, %struct.symt_data* %36, i32 0, i32 5
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 1
  store i32 %35, i32* %38, align 8
  %39 = load %struct.symt_data*, %struct.symt_data** %10, align 8
  %40 = getelementptr inbounds %struct.symt_data, %struct.symt_data* %39, i32 0, i32 5
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  store i32* null, i32** %41, align 8
  %42 = load i32, i32* @DataIsConstant, align 4
  %43 = load %struct.symt_data*, %struct.symt_data** %10, align 8
  %44 = getelementptr inbounds %struct.symt_data, %struct.symt_data* %43, i32 0, i32 4
  store i32 %42, i32* %44, align 8
  %45 = load %struct.symt_enum*, %struct.symt_enum** %7, align 8
  %46 = getelementptr inbounds %struct.symt_enum, %struct.symt_enum* %45, i32 0, i32 2
  %47 = load %struct.symt_data*, %struct.symt_data** %10, align 8
  %48 = getelementptr inbounds %struct.symt_data, %struct.symt_data* %47, i32 0, i32 3
  store %struct.TYPE_9__* %46, %struct.TYPE_9__** %48, align 8
  %49 = load %struct.symt_enum*, %struct.symt_enum** %7, align 8
  %50 = getelementptr inbounds %struct.symt_enum, %struct.symt_enum* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.symt_data*, %struct.symt_data** %10, align 8
  %53 = getelementptr inbounds %struct.symt_data, %struct.symt_data* %52, i32 0, i32 2
  store i32 %51, i32* %53, align 4
  %54 = load i32, i32* @VT_I4, align 4
  %55 = load %struct.symt_data*, %struct.symt_data** %10, align 8
  %56 = getelementptr inbounds %struct.symt_data, %struct.symt_data* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 1
  store i32 %54, i32* %60, align 4
  %61 = load i32, i32* %9, align 4
  %62 = load %struct.symt_data*, %struct.symt_data** %10, align 8
  %63 = getelementptr inbounds %struct.symt_data, %struct.symt_data* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 0
  store i32 %61, i32* %68, align 4
  %69 = load %struct.symt_enum*, %struct.symt_enum** %7, align 8
  %70 = getelementptr inbounds %struct.symt_enum, %struct.symt_enum* %69, i32 0, i32 0
  %71 = load %struct.module*, %struct.module** %6, align 8
  %72 = getelementptr inbounds %struct.module, %struct.module* %71, i32 0, i32 0
  %73 = call %struct.symt** @vector_add(i32* %70, i32* %72)
  store %struct.symt** %73, %struct.symt*** %11, align 8
  %74 = load %struct.symt**, %struct.symt*** %11, align 8
  %75 = icmp ne %struct.symt** %74, null
  br i1 %75, label %78, label %76

76:                                               ; preds = %27
  %77 = load i32, i32* @FALSE, align 4
  store i32 %77, i32* %5, align 4
  br label %83

78:                                               ; preds = %27
  %79 = load %struct.symt_data*, %struct.symt_data** %10, align 8
  %80 = getelementptr inbounds %struct.symt_data, %struct.symt_data* %79, i32 0, i32 0
  %81 = load %struct.symt**, %struct.symt*** %11, align 8
  store %struct.symt* %80, %struct.symt** %81, align 8
  %82 = load i32, i32* @TRUE, align 4
  store i32 %82, i32* %5, align 4
  br label %83

83:                                               ; preds = %78, %76, %25
  %84 = load i32, i32* %5, align 4
  ret i32 %84
}

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.symt_data* @pool_alloc(i32*, i32) #1

declare dso_local i32 @pool_strdup(i32*, i8*) #1

declare dso_local %struct.symt** @vector_add(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
