; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_ri_triggers.c_ri_HashCompareOp.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_ri_triggers.c_ri_HashCompareOp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.TYPE_7__, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i8* }
%struct.TYPE_5__ = type { i64, i64 }

@ri_compare_cache = common dso_local global i32 0, align 4
@HASH_ENTER = common dso_local global i32 0, align 4
@TopMemoryContext = common dso_local global i32 0, align 4
@InvalidOid = common dso_local global i8* null, align 8
@COERCION_IMPLICIT = common dso_local global i32 0, align 4
@COERCION_PATH_FUNC = common dso_local global i64 0, align 8
@COERCION_PATH_RELABELTYPE = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"no conversion function from %s to %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_6__* (i64, i64)* @ri_HashCompareOp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_6__* @ri_HashCompareOp(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_5__, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %12 = load i32, i32* @ri_compare_cache, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %2
  %15 = call i32 (...) @ri_InitHashTables()
  br label %16

16:                                               ; preds = %14, %2
  %17 = load i64, i64* %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 1
  store i64 %17, i64* %18, align 8
  %19 = load i64, i64* %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 0
  store i64 %19, i64* %20, align 8
  %21 = load i32, i32* @ri_compare_cache, align 4
  %22 = bitcast %struct.TYPE_5__* %5 to i8*
  %23 = load i32, i32* @HASH_ENTER, align 4
  %24 = call i64 @hash_search(i32 %21, i8* %22, i32 %23, i32* %7)
  %25 = inttoptr i64 %24 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %25, %struct.TYPE_6__** %6, align 8
  %26 = load i32, i32* %7, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %16
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  store i32 0, i32* %30, align 8
  br label %31

31:                                               ; preds = %28, %16
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %100, label %36

36:                                               ; preds = %31
  %37 = load i64, i64* %3, align 8
  %38 = call i64 @get_opcode(i64 %37)
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 2
  %41 = load i32, i32* @TopMemoryContext, align 4
  %42 = call i32 @fmgr_info_cxt(i64 %38, %struct.TYPE_7__* %40, i32 %41)
  %43 = load i64, i64* %3, align 8
  %44 = call i32 @op_input_types(i64 %43, i64* %8, i64* %9)
  %45 = load i64, i64* %8, align 8
  %46 = load i64, i64* %9, align 8
  %47 = icmp eq i64 %45, %46
  %48 = zext i1 %47 to i32
  %49 = call i32 @Assert(i32 %48)
  %50 = load i64, i64* %4, align 8
  %51 = load i64, i64* %8, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %56

53:                                               ; preds = %36
  %54 = load i8*, i8** @InvalidOid, align 8
  %55 = ptrtoint i8* %54 to i64
  store i64 %55, i64* %10, align 8
  br label %82

56:                                               ; preds = %36
  %57 = load i64, i64* %8, align 8
  %58 = load i64, i64* %4, align 8
  %59 = load i32, i32* @COERCION_IMPLICIT, align 4
  %60 = call i64 @find_coercion_pathway(i64 %57, i64 %58, i32 %59, i64* %10)
  store i64 %60, i64* %11, align 8
  %61 = load i64, i64* %11, align 8
  %62 = load i64, i64* @COERCION_PATH_FUNC, align 8
  %63 = icmp ne i64 %61, %62
  br i1 %63, label %64, label %81

64:                                               ; preds = %56
  %65 = load i64, i64* %11, align 8
  %66 = load i64, i64* @COERCION_PATH_RELABELTYPE, align 8
  %67 = icmp ne i64 %65, %66
  br i1 %67, label %68, label %81

68:                                               ; preds = %64
  %69 = load i64, i64* %4, align 8
  %70 = load i64, i64* %8, align 8
  %71 = call i32 @IsBinaryCoercible(i64 %69, i64 %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %80, label %73

73:                                               ; preds = %68
  %74 = load i32, i32* @ERROR, align 4
  %75 = load i64, i64* %4, align 8
  %76 = call i32 @format_type_be(i64 %75)
  %77 = load i64, i64* %8, align 8
  %78 = call i32 @format_type_be(i64 %77)
  %79 = call i32 @elog(i32 %74, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %76, i32 %78)
  br label %80

80:                                               ; preds = %73, %68
  br label %81

81:                                               ; preds = %80, %64, %56
  br label %82

82:                                               ; preds = %81, %53
  %83 = load i64, i64* %10, align 8
  %84 = call i64 @OidIsValid(i64 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %92

86:                                               ; preds = %82
  %87 = load i64, i64* %10, align 8
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 1
  %90 = load i32, i32* @TopMemoryContext, align 4
  %91 = call i32 @fmgr_info_cxt(i64 %87, %struct.TYPE_7__* %89, i32 %90)
  br label %97

92:                                               ; preds = %82
  %93 = load i8*, i8** @InvalidOid, align 8
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 0
  store i8* %93, i8** %96, align 8
  br label %97

97:                                               ; preds = %92, %86
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 0
  store i32 1, i32* %99, align 8
  br label %100

100:                                              ; preds = %97, %31
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  ret %struct.TYPE_6__* %101
}

declare dso_local i32 @ri_InitHashTables(...) #1

declare dso_local i64 @hash_search(i32, i8*, i32, i32*) #1

declare dso_local i32 @fmgr_info_cxt(i64, %struct.TYPE_7__*, i32) #1

declare dso_local i64 @get_opcode(i64) #1

declare dso_local i32 @op_input_types(i64, i64*, i64*) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i64 @find_coercion_pathway(i64, i64, i32, i64*) #1

declare dso_local i32 @IsBinaryCoercible(i64, i64) #1

declare dso_local i32 @elog(i32, i8*, i32, i32) #1

declare dso_local i32 @format_type_be(i64) #1

declare dso_local i64 @OidIsValid(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
