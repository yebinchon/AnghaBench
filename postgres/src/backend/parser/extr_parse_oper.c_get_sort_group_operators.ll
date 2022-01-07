; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/parser/extr_parse_oper.c_get_sort_group_operators.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/parser/extr_parse_oper.c_get_sort_group_operators.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32 }

@TYPECACHE_LT_OPR = common dso_local global i32 0, align 4
@TYPECACHE_EQ_OPR = common dso_local global i32 0, align 4
@TYPECACHE_GT_OPR = common dso_local global i32 0, align 4
@TYPECACHE_HASH_PROC = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_UNDEFINED_FUNCTION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"could not identify an ordering operator for type %s\00", align 1
@.str.1 = private unnamed_addr constant [55 x i8] c"Use an explicit ordering operator or modify the query.\00", align 1
@.str.2 = private unnamed_addr constant [52 x i8] c"could not identify an equality operator for type %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @get_sort_group_operators(i32 %0, i32 %1, i32 %2, i32 %3, i32* %4, i32* %5, i32* %6, i32* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca %struct.TYPE_3__*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store i32 %0, i32* %9, align 4
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32* %4, i32** %13, align 8
  store i32* %5, i32** %14, align 8
  store i32* %6, i32** %15, align 8
  store i32* %7, i32** %16, align 8
  %23 = load i32*, i32** %16, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %25, label %33

25:                                               ; preds = %8
  %26 = load i32, i32* @TYPECACHE_LT_OPR, align 4
  %27 = load i32, i32* @TYPECACHE_EQ_OPR, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @TYPECACHE_GT_OPR, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @TYPECACHE_HASH_PROC, align 4
  %32 = or i32 %30, %31
  store i32 %32, i32* %18, align 4
  br label %39

33:                                               ; preds = %8
  %34 = load i32, i32* @TYPECACHE_LT_OPR, align 4
  %35 = load i32, i32* @TYPECACHE_EQ_OPR, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* @TYPECACHE_GT_OPR, align 4
  %38 = or i32 %36, %37
  store i32 %38, i32* %18, align 4
  br label %39

39:                                               ; preds = %33, %25
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* %18, align 4
  %42 = call %struct.TYPE_3__* @lookup_type_cache(i32 %40, i32 %41)
  store %struct.TYPE_3__* %42, %struct.TYPE_3__** %17, align 8
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %19, align 4
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %20, align 4
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %21, align 4
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @OidIsValid(i32 %54)
  store i32 %55, i32* %22, align 4
  %56 = load i32, i32* %10, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %39
  %59 = load i32, i32* %19, align 4
  %60 = call i32 @OidIsValid(i32 %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %69

62:                                               ; preds = %58, %39
  %63 = load i32, i32* %12, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %78

65:                                               ; preds = %62
  %66 = load i32, i32* %21, align 4
  %67 = call i32 @OidIsValid(i32 %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %78, label %69

69:                                               ; preds = %65, %58
  %70 = load i32, i32* @ERROR, align 4
  %71 = load i32, i32* @ERRCODE_UNDEFINED_FUNCTION, align 4
  %72 = call i32 @errcode(i32 %71)
  %73 = load i32, i32* %9, align 4
  %74 = call i32 @format_type_be(i32 %73)
  %75 = call i32 @errmsg(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %74)
  %76 = call i32 @errhint(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0))
  %77 = call i32 @ereport(i32 %70, i32 %76)
  br label %78

78:                                               ; preds = %69, %65, %62
  %79 = load i32, i32* %11, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %93

81:                                               ; preds = %78
  %82 = load i32, i32* %20, align 4
  %83 = call i32 @OidIsValid(i32 %82)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %93, label %85

85:                                               ; preds = %81
  %86 = load i32, i32* @ERROR, align 4
  %87 = load i32, i32* @ERRCODE_UNDEFINED_FUNCTION, align 4
  %88 = call i32 @errcode(i32 %87)
  %89 = load i32, i32* %9, align 4
  %90 = call i32 @format_type_be(i32 %89)
  %91 = call i32 @errmsg(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0), i32 %90)
  %92 = call i32 @ereport(i32 %86, i32 %91)
  br label %93

93:                                               ; preds = %85, %81, %78
  %94 = load i32*, i32** %13, align 8
  %95 = icmp ne i32* %94, null
  br i1 %95, label %96, label %99

96:                                               ; preds = %93
  %97 = load i32, i32* %19, align 4
  %98 = load i32*, i32** %13, align 8
  store i32 %97, i32* %98, align 4
  br label %99

99:                                               ; preds = %96, %93
  %100 = load i32*, i32** %14, align 8
  %101 = icmp ne i32* %100, null
  br i1 %101, label %102, label %105

102:                                              ; preds = %99
  %103 = load i32, i32* %20, align 4
  %104 = load i32*, i32** %14, align 8
  store i32 %103, i32* %104, align 4
  br label %105

105:                                              ; preds = %102, %99
  %106 = load i32*, i32** %15, align 8
  %107 = icmp ne i32* %106, null
  br i1 %107, label %108, label %111

108:                                              ; preds = %105
  %109 = load i32, i32* %21, align 4
  %110 = load i32*, i32** %15, align 8
  store i32 %109, i32* %110, align 4
  br label %111

111:                                              ; preds = %108, %105
  %112 = load i32*, i32** %16, align 8
  %113 = icmp ne i32* %112, null
  br i1 %113, label %114, label %117

114:                                              ; preds = %111
  %115 = load i32, i32* %22, align 4
  %116 = load i32*, i32** %16, align 8
  store i32 %115, i32* %116, align 4
  br label %117

117:                                              ; preds = %114, %111
  ret void
}

declare dso_local %struct.TYPE_3__* @lookup_type_cache(i32, i32) #1

declare dso_local i32 @OidIsValid(i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i32) #1

declare dso_local i32 @format_type_be(i32) #1

declare dso_local i32 @errhint(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
