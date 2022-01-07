; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_jsonb.c_jsonb_categorize_type.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_jsonb.c_jsonb_categorize_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@InvalidOid = common dso_local global i32 0, align 4
@JSONBTYPE_BOOL = common dso_local global i32 0, align 4
@JSONBTYPE_NUMERIC = common dso_local global i32 0, align 4
@JSONBTYPE_DATE = common dso_local global i32 0, align 4
@JSONBTYPE_TIMESTAMP = common dso_local global i32 0, align 4
@JSONBTYPE_TIMESTAMPTZ = common dso_local global i32 0, align 4
@JSONBTYPE_JSONB = common dso_local global i32 0, align 4
@JSONBTYPE_JSON = common dso_local global i32 0, align 4
@ANYARRAYOID = common dso_local global i32 0, align 4
@RECORDARRAYOID = common dso_local global i32 0, align 4
@JSONBTYPE_ARRAY = common dso_local global i32 0, align 4
@JSONBTYPE_COMPOSITE = common dso_local global i32 0, align 4
@JSONBTYPE_OTHER = common dso_local global i32 0, align 4
@FirstNormalObjectId = common dso_local global i32 0, align 4
@COERCION_EXPLICIT = common dso_local global i32 0, align 4
@COERCION_PATH_FUNC = common dso_local global i32 0, align 4
@JSONBTYPE_JSONCAST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32*, i32*)* @jsonb_categorize_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @jsonb_categorize_type(i32 %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @getBaseType(i32 %10)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* @InvalidOid, align 4
  %13 = load i32*, i32** %6, align 8
  store i32 %12, i32* %13, align 4
  %14 = load i32, i32* %4, align 4
  switch i32 %14, label %39 [
    i32 139, label %15
    i32 135, label %18
    i32 134, label %18
    i32 133, label %18
    i32 137, label %18
    i32 136, label %18
    i32 130, label %18
    i32 138, label %24
    i32 129, label %27
    i32 128, label %30
    i32 132, label %33
    i32 131, label %36
  ]

15:                                               ; preds = %3
  %16 = load i32, i32* @JSONBTYPE_BOOL, align 4
  %17 = load i32*, i32** %5, align 8
  store i32 %16, i32* %17, align 4
  br label %96

18:                                               ; preds = %3, %3, %3, %3, %3, %3
  %19 = load i32, i32* %4, align 4
  %20 = load i32*, i32** %6, align 8
  %21 = call i32 @getTypeOutputInfo(i32 %19, i32* %20, i32* %7)
  %22 = load i32, i32* @JSONBTYPE_NUMERIC, align 4
  %23 = load i32*, i32** %5, align 8
  store i32 %22, i32* %23, align 4
  br label %96

24:                                               ; preds = %3
  %25 = load i32, i32* @JSONBTYPE_DATE, align 4
  %26 = load i32*, i32** %5, align 8
  store i32 %25, i32* %26, align 4
  br label %96

27:                                               ; preds = %3
  %28 = load i32, i32* @JSONBTYPE_TIMESTAMP, align 4
  %29 = load i32*, i32** %5, align 8
  store i32 %28, i32* %29, align 4
  br label %96

30:                                               ; preds = %3
  %31 = load i32, i32* @JSONBTYPE_TIMESTAMPTZ, align 4
  %32 = load i32*, i32** %5, align 8
  store i32 %31, i32* %32, align 4
  br label %96

33:                                               ; preds = %3
  %34 = load i32, i32* @JSONBTYPE_JSONB, align 4
  %35 = load i32*, i32** %5, align 8
  store i32 %34, i32* %35, align 4
  br label %96

36:                                               ; preds = %3
  %37 = load i32, i32* @JSONBTYPE_JSON, align 4
  %38 = load i32*, i32** %5, align 8
  store i32 %37, i32* %38, align 4
  br label %96

39:                                               ; preds = %3
  %40 = load i32, i32* %4, align 4
  %41 = call i32 @get_element_type(i32 %40)
  %42 = call i32 @OidIsValid(i32 %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %52, label %44

44:                                               ; preds = %39
  %45 = load i32, i32* %4, align 4
  %46 = load i32, i32* @ANYARRAYOID, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %52, label %48

48:                                               ; preds = %44
  %49 = load i32, i32* %4, align 4
  %50 = load i32, i32* @RECORDARRAYOID, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %48, %44, %39
  %53 = load i32, i32* @JSONBTYPE_ARRAY, align 4
  %54 = load i32*, i32** %5, align 8
  store i32 %53, i32* %54, align 4
  br label %95

55:                                               ; preds = %48
  %56 = load i32, i32* %4, align 4
  %57 = call i32 @type_is_rowtype(i32 %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %55
  %60 = load i32, i32* @JSONBTYPE_COMPOSITE, align 4
  %61 = load i32*, i32** %5, align 8
  store i32 %60, i32* %61, align 4
  br label %94

62:                                               ; preds = %55
  %63 = load i32, i32* @JSONBTYPE_OTHER, align 4
  %64 = load i32*, i32** %5, align 8
  store i32 %63, i32* %64, align 4
  %65 = load i32, i32* %4, align 4
  %66 = load i32, i32* @FirstNormalObjectId, align 4
  %67 = icmp sge i32 %65, %66
  br i1 %67, label %68, label %89

68:                                               ; preds = %62
  %69 = load i32, i32* %4, align 4
  %70 = load i32, i32* @COERCION_EXPLICIT, align 4
  %71 = call i32 @find_coercion_pathway(i32 131, i32 %69, i32 %70, i32* %8)
  store i32 %71, i32* %9, align 4
  %72 = load i32, i32* %9, align 4
  %73 = load i32, i32* @COERCION_PATH_FUNC, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %75, label %84

75:                                               ; preds = %68
  %76 = load i32, i32* %8, align 4
  %77 = call i32 @OidIsValid(i32 %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %84

79:                                               ; preds = %75
  %80 = load i32, i32* @JSONBTYPE_JSONCAST, align 4
  %81 = load i32*, i32** %5, align 8
  store i32 %80, i32* %81, align 4
  %82 = load i32, i32* %8, align 4
  %83 = load i32*, i32** %6, align 8
  store i32 %82, i32* %83, align 4
  br label %88

84:                                               ; preds = %75, %68
  %85 = load i32, i32* %4, align 4
  %86 = load i32*, i32** %6, align 8
  %87 = call i32 @getTypeOutputInfo(i32 %85, i32* %86, i32* %7)
  br label %88

88:                                               ; preds = %84, %79
  br label %93

89:                                               ; preds = %62
  %90 = load i32, i32* %4, align 4
  %91 = load i32*, i32** %6, align 8
  %92 = call i32 @getTypeOutputInfo(i32 %90, i32* %91, i32* %7)
  br label %93

93:                                               ; preds = %89, %88
  br label %96

94:                                               ; preds = %59
  br label %95

95:                                               ; preds = %94, %52
  br label %96

96:                                               ; preds = %95, %93, %36, %33, %30, %27, %24, %18, %15
  ret void
}

declare dso_local i32 @getBaseType(i32) #1

declare dso_local i32 @getTypeOutputInfo(i32, i32*, i32*) #1

declare dso_local i32 @OidIsValid(i32) #1

declare dso_local i32 @get_element_type(i32) #1

declare dso_local i32 @type_is_rowtype(i32) #1

declare dso_local i32 @find_coercion_pathway(i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
