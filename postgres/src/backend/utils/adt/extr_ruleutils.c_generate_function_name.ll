; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_ruleutils.c_generate_function_name.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_ruleutils.c_generate_function_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32 }

@PROCOID = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"cache lookup failed for function %u\00", align 1
@EXPR_KIND_GROUP_BY = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"cube\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"rollup\00", align 1
@NIL = common dso_local global i32 0, align 4
@FUNCDETAIL_NOTFOUND = common dso_local global i64 0, align 8
@InvalidOid = common dso_local global i64 0, align 8
@FUNCDETAIL_NORMAL = common dso_local global i64 0, align 8
@FUNCDETAIL_AGGREGATE = common dso_local global i64 0, align 8
@FUNCDETAIL_WINDOWFUNC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i64, i32, i32*, i64*, i32, i32*, i64)* @generate_function_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @generate_function_name(i64 %0, i32 %1, i32* %2, i64* %3, i32 %4, i32* %5, i64 %6) #0 {
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_2__*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i64, align 8
  %27 = alloca i64*, align 8
  %28 = alloca i32, align 4
  store i64 %0, i64* %8, align 8
  store i32 %1, i32* %9, align 4
  store i32* %2, i32** %10, align 8
  store i64* %3, i64** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32* %5, i32** %13, align 8
  store i64 %6, i64* %14, align 8
  store i32 0, i32* %28, align 4
  %29 = load i32, i32* @PROCOID, align 4
  %30 = load i64, i64* %8, align 8
  %31 = call i32 @ObjectIdGetDatum(i64 %30)
  %32 = call i32 @SearchSysCache1(i32 %29, i32 %31)
  store i32 %32, i32* %16, align 4
  %33 = load i32, i32* %16, align 4
  %34 = call i32 @HeapTupleIsValid(i32 %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %7
  %37 = load i32, i32* @ERROR, align 4
  %38 = load i64, i64* %8, align 8
  %39 = call i32 @elog(i32 %37, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i64 %38)
  br label %40

40:                                               ; preds = %36, %7
  %41 = load i32, i32* %16, align 4
  %42 = call i64 @GETSTRUCT(i32 %41)
  %43 = inttoptr i64 %42 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %43, %struct.TYPE_2__** %17, align 8
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = call i8* @NameStr(i32 %46)
  store i8* %47, i8** %18, align 8
  %48 = load i64, i64* %14, align 8
  %49 = load i64, i64* @EXPR_KIND_GROUP_BY, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %61

51:                                               ; preds = %40
  %52 = load i8*, i8** %18, align 8
  %53 = call i64 @strcmp(i8* %52, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %59, label %55

55:                                               ; preds = %51
  %56 = load i8*, i8** %18, align 8
  %57 = call i64 @strcmp(i8* %56, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %55, %51
  store i32 1, i32* %28, align 4
  br label %60

60:                                               ; preds = %59, %55
  br label %61

61:                                               ; preds = %60, %40
  %62 = load i32*, i32** %13, align 8
  %63 = icmp ne i32* %62, null
  br i1 %63, label %64, label %80

64:                                               ; preds = %61
  %65 = load i32, i32* %12, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %73

67:                                               ; preds = %64
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = call i64 @OidIsValid(i32 %70)
  %72 = icmp ne i64 %71, 0
  br label %73

73:                                               ; preds = %67, %64
  %74 = phi i1 [ true, %64 ], [ %72, %67 ]
  %75 = zext i1 %74 to i32
  %76 = call i32 @Assert(i32 %75)
  %77 = load i32, i32* %12, align 4
  store i32 %77, i32* %19, align 4
  %78 = load i32, i32* %19, align 4
  %79 = load i32*, i32** %13, align 8
  store i32 %78, i32* %79, align 4
  br label %86

80:                                               ; preds = %61
  %81 = load i32, i32* %12, align 4
  %82 = icmp ne i32 %81, 0
  %83 = xor i1 %82, true
  %84 = zext i1 %83 to i32
  %85 = call i32 @Assert(i32 %84)
  store i32 0, i32* %19, align 4
  br label %86

86:                                               ; preds = %80, %73
  %87 = load i32, i32* %28, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %102, label %89

89:                                               ; preds = %86
  %90 = load i8*, i8** %18, align 8
  %91 = call i32 @makeString(i8* %90)
  %92 = call i32 @list_make1(i32 %91)
  %93 = load i32, i32* @NIL, align 4
  %94 = load i32*, i32** %10, align 8
  %95 = load i32, i32* %9, align 4
  %96 = load i64*, i64** %11, align 8
  %97 = load i32, i32* %19, align 4
  %98 = icmp ne i32 %97, 0
  %99 = xor i1 %98, true
  %100 = zext i1 %99 to i32
  %101 = call i64 @func_get_detail(i32 %92, i32 %93, i32* %94, i32 %95, i64* %96, i32 %100, i32 1, i64* %22, i64* %23, i32* %24, i32* %25, i64* %26, i64** %27, i32* null)
  store i64 %101, i64* %21, align 8
  br label %105

102:                                              ; preds = %86
  %103 = load i64, i64* @FUNCDETAIL_NOTFOUND, align 8
  store i64 %103, i64* %21, align 8
  %104 = load i64, i64* @InvalidOid, align 8
  store i64 %104, i64* %22, align 8
  br label %105

105:                                              ; preds = %102, %89
  %106 = load i64, i64* %21, align 8
  %107 = load i64, i64* @FUNCDETAIL_NORMAL, align 8
  %108 = icmp eq i64 %106, %107
  br i1 %108, label %117, label %109

109:                                              ; preds = %105
  %110 = load i64, i64* %21, align 8
  %111 = load i64, i64* @FUNCDETAIL_AGGREGATE, align 8
  %112 = icmp eq i64 %110, %111
  br i1 %112, label %117, label %113

113:                                              ; preds = %109
  %114 = load i64, i64* %21, align 8
  %115 = load i64, i64* @FUNCDETAIL_WINDOWFUNC, align 8
  %116 = icmp eq i64 %114, %115
  br i1 %116, label %117, label %122

117:                                              ; preds = %113, %109, %105
  %118 = load i64, i64* %22, align 8
  %119 = load i64, i64* %8, align 8
  %120 = icmp eq i64 %118, %119
  br i1 %120, label %121, label %122

121:                                              ; preds = %117
  store i8* null, i8** %20, align 8
  br label %127

122:                                              ; preds = %117, %113
  %123 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %124 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = call i8* @get_namespace_name(i32 %125)
  store i8* %126, i8** %20, align 8
  br label %127

127:                                              ; preds = %122, %121
  %128 = load i8*, i8** %20, align 8
  %129 = load i8*, i8** %18, align 8
  %130 = call i8* @quote_qualified_identifier(i8* %128, i8* %129)
  store i8* %130, i8** %15, align 8
  %131 = load i32, i32* %16, align 4
  %132 = call i32 @ReleaseSysCache(i32 %131)
  %133 = load i8*, i8** %15, align 8
  ret i8* %133
}

declare dso_local i32 @SearchSysCache1(i32, i32) #1

declare dso_local i32 @ObjectIdGetDatum(i64) #1

declare dso_local i32 @HeapTupleIsValid(i32) #1

declare dso_local i32 @elog(i32, i8*, i64) #1

declare dso_local i64 @GETSTRUCT(i32) #1

declare dso_local i8* @NameStr(i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i64 @OidIsValid(i32) #1

declare dso_local i64 @func_get_detail(i32, i32, i32*, i32, i64*, i32, i32, i64*, i64*, i32*, i32*, i64*, i64**, i32*) #1

declare dso_local i32 @list_make1(i32) #1

declare dso_local i32 @makeString(i8*) #1

declare dso_local i8* @get_namespace_name(i32) #1

declare dso_local i8* @quote_qualified_identifier(i8*, i8*) #1

declare dso_local i32 @ReleaseSysCache(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
