; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_misc.c_count_nulls.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_misc.c_count_nulls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32*, i32*)* @count_nulls to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @count_nulls(%struct.TYPE_3__* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 0, i32* %8, align 4
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i64 @get_fn_expr_variadic(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %81

21:                                               ; preds = %3
  %22 = call i32 (...) @PG_NARGS()
  %23 = icmp eq i32 %22, 1
  %24 = zext i1 %23 to i32
  %25 = call i32 @Assert(i32 %24)
  %26 = call i64 @PG_ARGISNULL(i32 0)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %21
  store i32 0, i32* %4, align 4
  br label %103

29:                                               ; preds = %21
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @get_fn_expr_argtype(i32 %32, i32 0)
  %34 = call i32 @get_base_element_type(i32 %33)
  %35 = call i32 @OidIsValid(i32 %34)
  %36 = call i32 @Assert(i32 %35)
  %37 = call i32* @PG_GETARG_ARRAYTYPE_P(i32 0)
  store i32* %37, i32** %10, align 8
  %38 = load i32*, i32** %10, align 8
  %39 = call i32 @ARR_NDIM(i32* %38)
  store i32 %39, i32* %11, align 4
  %40 = load i32*, i32** %10, align 8
  %41 = call i32* @ARR_DIMS(i32* %40)
  store i32* %41, i32** %13, align 8
  %42 = load i32, i32* %11, align 4
  %43 = load i32*, i32** %13, align 8
  %44 = call i32 @ArrayGetNItems(i32 %42, i32* %43)
  store i32 %44, i32* %12, align 4
  %45 = load i32*, i32** %10, align 8
  %46 = call i32* @ARR_NULLBITMAP(i32* %45)
  store i32* %46, i32** %14, align 8
  %47 = load i32*, i32** %14, align 8
  %48 = icmp ne i32* %47, null
  br i1 %48, label %49, label %76

49:                                               ; preds = %29
  store i32 1, i32* %15, align 4
  store i32 0, i32* %9, align 4
  br label %50

50:                                               ; preds = %72, %49
  %51 = load i32, i32* %9, align 4
  %52 = load i32, i32* %12, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %75

54:                                               ; preds = %50
  %55 = load i32*, i32** %14, align 8
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %15, align 4
  %58 = and i32 %56, %57
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %54
  %61 = load i32, i32* %8, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %8, align 4
  br label %63

63:                                               ; preds = %60, %54
  %64 = load i32, i32* %15, align 4
  %65 = shl i32 %64, 1
  store i32 %65, i32* %15, align 4
  %66 = load i32, i32* %15, align 4
  %67 = icmp eq i32 %66, 256
  br i1 %67, label %68, label %71

68:                                               ; preds = %63
  %69 = load i32*, i32** %14, align 8
  %70 = getelementptr inbounds i32, i32* %69, i32 1
  store i32* %70, i32** %14, align 8
  store i32 1, i32* %15, align 4
  br label %71

71:                                               ; preds = %68, %63
  br label %72

72:                                               ; preds = %71
  %73 = load i32, i32* %9, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %9, align 4
  br label %50

75:                                               ; preds = %50
  br label %76

76:                                               ; preds = %75, %29
  %77 = load i32, i32* %12, align 4
  %78 = load i32*, i32** %6, align 8
  store i32 %77, i32* %78, align 4
  %79 = load i32, i32* %8, align 4
  %80 = load i32*, i32** %7, align 8
  store i32 %79, i32* %80, align 4
  br label %102

81:                                               ; preds = %3
  store i32 0, i32* %9, align 4
  br label %82

82:                                               ; preds = %94, %81
  %83 = load i32, i32* %9, align 4
  %84 = call i32 (...) @PG_NARGS()
  %85 = icmp slt i32 %83, %84
  br i1 %85, label %86, label %97

86:                                               ; preds = %82
  %87 = load i32, i32* %9, align 4
  %88 = call i64 @PG_ARGISNULL(i32 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %86
  %91 = load i32, i32* %8, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %8, align 4
  br label %93

93:                                               ; preds = %90, %86
  br label %94

94:                                               ; preds = %93
  %95 = load i32, i32* %9, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %9, align 4
  br label %82

97:                                               ; preds = %82
  %98 = call i32 (...) @PG_NARGS()
  %99 = load i32*, i32** %6, align 8
  store i32 %98, i32* %99, align 4
  %100 = load i32, i32* %8, align 4
  %101 = load i32*, i32** %7, align 8
  store i32 %100, i32* %101, align 4
  br label %102

102:                                              ; preds = %97, %76
  store i32 1, i32* %4, align 4
  br label %103

103:                                              ; preds = %102, %28
  %104 = load i32, i32* %4, align 4
  ret i32 %104
}

declare dso_local i64 @get_fn_expr_variadic(i32) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @PG_NARGS(...) #1

declare dso_local i64 @PG_ARGISNULL(i32) #1

declare dso_local i32 @OidIsValid(i32) #1

declare dso_local i32 @get_base_element_type(i32) #1

declare dso_local i32 @get_fn_expr_argtype(i32, i32) #1

declare dso_local i32* @PG_GETARG_ARRAYTYPE_P(i32) #1

declare dso_local i32 @ARR_NDIM(i32*) #1

declare dso_local i32* @ARR_DIMS(i32*) #1

declare dso_local i32 @ArrayGetNItems(i32, i32*) #1

declare dso_local i32* @ARR_NULLBITMAP(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
