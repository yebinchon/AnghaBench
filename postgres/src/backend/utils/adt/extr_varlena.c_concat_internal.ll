; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_varlena.c_concat_internal.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_varlena.c_concat_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_10__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i32, %struct.TYPE_11__*)* @concat_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @concat_internal(i8* %0, i32 %1, %struct.TYPE_11__* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_10__, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_11__* %2, %struct.TYPE_11__** %7, align 8
  store i32 1, i32* %11, align 4
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %16 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %18 = call i64 @get_fn_expr_variadic(%struct.TYPE_12__* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %46

20:                                               ; preds = %3
  %21 = load i32, i32* %6, align 4
  %22 = call i32 (...) @PG_NARGS()
  %23 = sub nsw i32 %22, 1
  %24 = icmp eq i32 %21, %23
  %25 = zext i1 %24 to i32
  %26 = call i32 @Assert(i32 %25)
  %27 = load i32, i32* %6, align 4
  %28 = call i64 @PG_ARGISNULL(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %20
  store i32* null, i32** %4, align 8
  br label %101

31:                                               ; preds = %20
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %33, align 8
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @get_fn_expr_argtype(%struct.TYPE_12__* %34, i32 %35)
  %37 = call i32 @get_base_element_type(i32 %36)
  %38 = call i32 @OidIsValid(i32 %37)
  %39 = call i32 @Assert(i32 %38)
  %40 = load i32, i32* %6, align 4
  %41 = call i32* @PG_GETARG_ARRAYTYPE_P(i32 %40)
  store i32* %41, i32** %13, align 8
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %43 = load i32*, i32** %13, align 8
  %44 = load i8*, i8** %5, align 8
  %45 = call i32* @array_to_text_internal(%struct.TYPE_11__* %42, i32* %43, i8* %44, i32* null)
  store i32* %45, i32** %4, align 8
  br label %101

46:                                               ; preds = %3
  %47 = call i32 @initStringInfo(%struct.TYPE_10__* %9)
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = inttoptr i64 %52 to i32*
  store i32* %53, i32** %10, align 8
  %54 = load i32*, i32** %10, align 8
  %55 = icmp eq i32* %54, null
  br i1 %55, label %56, label %60

56:                                               ; preds = %46
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %58 = load i32, i32* %6, align 4
  %59 = call i32* @build_concat_foutcache(%struct.TYPE_11__* %57, i32 %58)
  store i32* %59, i32** %10, align 8
  br label %60

60:                                               ; preds = %56, %46
  %61 = load i32, i32* %6, align 4
  store i32 %61, i32* %12, align 4
  br label %62

62:                                               ; preds = %88, %60
  %63 = load i32, i32* %12, align 4
  %64 = call i32 (...) @PG_NARGS()
  %65 = icmp slt i32 %63, %64
  br i1 %65, label %66, label %91

66:                                               ; preds = %62
  %67 = load i32, i32* %12, align 4
  %68 = call i64 @PG_ARGISNULL(i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %87, label %70

70:                                               ; preds = %66
  %71 = load i32, i32* %12, align 4
  %72 = call i32 @PG_GETARG_DATUM(i32 %71)
  store i32 %72, i32* %14, align 4
  %73 = load i32, i32* %11, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %70
  store i32 0, i32* %11, align 4
  br label %79

76:                                               ; preds = %70
  %77 = load i8*, i8** %5, align 8
  %78 = call i32 @appendStringInfoString(%struct.TYPE_10__* %9, i8* %77)
  br label %79

79:                                               ; preds = %76, %75
  %80 = load i32*, i32** %10, align 8
  %81 = load i32, i32* %12, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %80, i64 %82
  %84 = load i32, i32* %14, align 4
  %85 = call i8* @OutputFunctionCall(i32* %83, i32 %84)
  %86 = call i32 @appendStringInfoString(%struct.TYPE_10__* %9, i8* %85)
  br label %87

87:                                               ; preds = %79, %66
  br label %88

88:                                               ; preds = %87
  %89 = load i32, i32* %12, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %12, align 4
  br label %62

91:                                               ; preds = %62
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = call i32* @cstring_to_text_with_len(i32 %93, i32 %95)
  store i32* %96, i32** %8, align 8
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @pfree(i32 %98)
  %100 = load i32*, i32** %8, align 8
  store i32* %100, i32** %4, align 8
  br label %101

101:                                              ; preds = %91, %31, %30
  %102 = load i32*, i32** %4, align 8
  ret i32* %102
}

declare dso_local i64 @get_fn_expr_variadic(%struct.TYPE_12__*) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @PG_NARGS(...) #1

declare dso_local i64 @PG_ARGISNULL(i32) #1

declare dso_local i32 @OidIsValid(i32) #1

declare dso_local i32 @get_base_element_type(i32) #1

declare dso_local i32 @get_fn_expr_argtype(%struct.TYPE_12__*, i32) #1

declare dso_local i32* @PG_GETARG_ARRAYTYPE_P(i32) #1

declare dso_local i32* @array_to_text_internal(%struct.TYPE_11__*, i32*, i8*, i32*) #1

declare dso_local i32 @initStringInfo(%struct.TYPE_10__*) #1

declare dso_local i32* @build_concat_foutcache(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @PG_GETARG_DATUM(i32) #1

declare dso_local i32 @appendStringInfoString(%struct.TYPE_10__*, i8*) #1

declare dso_local i8* @OutputFunctionCall(i32*, i32) #1

declare dso_local i32* @cstring_to_text_with_len(i32, i32) #1

declare dso_local i32 @pfree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
