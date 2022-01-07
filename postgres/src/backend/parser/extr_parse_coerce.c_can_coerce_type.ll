; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/parser/extr_parse_coerce.c_can_coerce_type.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/parser/extr_parse_coerce.c_can_coerce_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ANYOID = common dso_local global i64 0, align 8
@UNKNOWNOID = common dso_local global i64 0, align 8
@COERCION_PATH_NONE = common dso_local global i64 0, align 8
@RECORDOID = common dso_local global i64 0, align 8
@RECORDARRAYOID = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @can_coerce_type(i32 %0, i64* %1, i64* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store i32 %0, i32* %6, align 4
  store i64* %1, i64** %7, align 8
  store i64* %2, i64** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %16

16:                                               ; preds = %98, %4
  %17 = load i32, i32* %11, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %101

20:                                               ; preds = %16
  %21 = load i64*, i64** %7, align 8
  %22 = load i32, i32* %11, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i64, i64* %21, i64 %23
  %25 = load i64, i64* %24, align 8
  store i64 %25, i64* %12, align 8
  %26 = load i64*, i64** %8, align 8
  %27 = load i32, i32* %11, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i64, i64* %26, i64 %28
  %30 = load i64, i64* %29, align 8
  store i64 %30, i64* %13, align 8
  %31 = load i64, i64* %12, align 8
  %32 = load i64, i64* %13, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %20
  br label %98

35:                                               ; preds = %20
  %36 = load i64, i64* %13, align 8
  %37 = load i64, i64* @ANYOID, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %35
  br label %98

40:                                               ; preds = %35
  %41 = load i64, i64* %13, align 8
  %42 = call i64 @IsPolymorphicType(i64 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %40
  store i32 1, i32* %10, align 4
  br label %98

45:                                               ; preds = %40
  %46 = load i64, i64* %12, align 8
  %47 = load i64, i64* @UNKNOWNOID, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %45
  br label %98

50:                                               ; preds = %45
  %51 = load i64, i64* %13, align 8
  %52 = load i64, i64* %12, align 8
  %53 = load i32, i32* %9, align 4
  %54 = call i64 @find_coercion_pathway(i64 %51, i64 %52, i32 %53, i64* %15)
  store i64 %54, i64* %14, align 8
  %55 = load i64, i64* %14, align 8
  %56 = load i64, i64* @COERCION_PATH_NONE, align 8
  %57 = icmp ne i64 %55, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %50
  br label %98

59:                                               ; preds = %50
  %60 = load i64, i64* %12, align 8
  %61 = load i64, i64* @RECORDOID, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %68

63:                                               ; preds = %59
  %64 = load i64, i64* %13, align 8
  %65 = call i64 @ISCOMPLEX(i64 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %63
  br label %98

68:                                               ; preds = %63, %59
  %69 = load i64, i64* %13, align 8
  %70 = load i64, i64* @RECORDOID, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %77

72:                                               ; preds = %68
  %73 = load i64, i64* %12, align 8
  %74 = call i64 @ISCOMPLEX(i64 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %72
  br label %98

77:                                               ; preds = %72, %68
  %78 = load i64, i64* %13, align 8
  %79 = load i64, i64* @RECORDARRAYOID, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %86

81:                                               ; preds = %77
  %82 = load i64, i64* %12, align 8
  %83 = call i64 @is_complex_array(i64 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %81
  br label %98

86:                                               ; preds = %81, %77
  %87 = load i64, i64* %12, align 8
  %88 = load i64, i64* %13, align 8
  %89 = call i64 @typeInheritsFrom(i64 %87, i64 %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %96, label %91

91:                                               ; preds = %86
  %92 = load i64, i64* %12, align 8
  %93 = load i64, i64* %13, align 8
  %94 = call i64 @typeIsOfTypedTable(i64 %92, i64 %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %91, %86
  br label %98

97:                                               ; preds = %91
  store i32 0, i32* %5, align 4
  br label %113

98:                                               ; preds = %96, %85, %76, %67, %58, %49, %44, %39, %34
  %99 = load i32, i32* %11, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %11, align 4
  br label %16

101:                                              ; preds = %16
  %102 = load i32, i32* %10, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %112

104:                                              ; preds = %101
  %105 = load i64*, i64** %7, align 8
  %106 = load i64*, i64** %8, align 8
  %107 = load i32, i32* %6, align 4
  %108 = call i32 @check_generic_type_consistency(i64* %105, i64* %106, i32 %107)
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %111, label %110

110:                                              ; preds = %104
  store i32 0, i32* %5, align 4
  br label %113

111:                                              ; preds = %104
  br label %112

112:                                              ; preds = %111, %101
  store i32 1, i32* %5, align 4
  br label %113

113:                                              ; preds = %112, %110, %97
  %114 = load i32, i32* %5, align 4
  ret i32 %114
}

declare dso_local i64 @IsPolymorphicType(i64) #1

declare dso_local i64 @find_coercion_pathway(i64, i64, i32, i64*) #1

declare dso_local i64 @ISCOMPLEX(i64) #1

declare dso_local i64 @is_complex_array(i64) #1

declare dso_local i64 @typeInheritsFrom(i64, i64) #1

declare dso_local i64 @typeIsOfTypedTable(i64, i64) #1

declare dso_local i32 @check_generic_type_consistency(i64*, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
