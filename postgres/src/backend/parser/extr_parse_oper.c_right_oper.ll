; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/parser/extr_parse_oper.c_right_oper.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/parser/extr_parse_oper.c_right_oper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FUNCDETAIL_NOTFOUND = common dso_local global i32 0, align 4
@InvalidOid = common dso_local global i32 0, align 4
@OPEROID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @right_oper(i32* %0, i32* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %18 = load i32, i32* @FUNCDETAIL_NOTFOUND, align 4
  store i32 %18, i32* %15, align 4
  store i32* null, i32** %16, align 8
  %19 = load i32*, i32** %7, align 8
  %20 = load i32*, i32** %8, align 8
  %21 = load i32, i32* %9, align 4
  %22 = load i32, i32* @InvalidOid, align 4
  %23 = load i32, i32* %11, align 4
  %24 = call i32 @make_oper_cache_key(i32* %19, i32* %13, i32* %20, i32 %21, i32 %22, i32 %23)
  store i32 %24, i32* %14, align 4
  %25 = load i32, i32* %14, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %45

27:                                               ; preds = %5
  %28 = call i32 @find_oper_cache_entry(i32* %13)
  store i32 %28, i32* %12, align 4
  %29 = load i32, i32* %12, align 4
  %30 = call i64 @OidIsValid(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %44

32:                                               ; preds = %27
  %33 = load i32, i32* @OPEROID, align 4
  %34 = load i32, i32* %12, align 4
  %35 = call i32 @ObjectIdGetDatum(i32 %34)
  %36 = call i32* @SearchSysCache1(i32 %33, i32 %35)
  store i32* %36, i32** %16, align 8
  %37 = load i32*, i32** %16, align 8
  %38 = call i64 @HeapTupleIsValid(i32* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %32
  %41 = load i32*, i32** %16, align 8
  %42 = ptrtoint i32* %41 to i32
  store i32 %42, i32* %6, align 4
  br label %97

43:                                               ; preds = %32
  br label %44

44:                                               ; preds = %43, %27
  br label %45

45:                                               ; preds = %44, %5
  %46 = load i32*, i32** %8, align 8
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* @InvalidOid, align 4
  %49 = call i32 @OpernameGetOprid(i32* %46, i32 %47, i32 %48)
  store i32 %49, i32* %12, align 4
  %50 = load i32, i32* %12, align 4
  %51 = call i64 @OidIsValid(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %62, label %53

53:                                               ; preds = %45
  %54 = load i32*, i32** %8, align 8
  %55 = call i32* @OpernameGetCandidates(i32* %54, i8 signext 114, i32 0)
  store i32* %55, i32** %17, align 8
  %56 = load i32*, i32** %17, align 8
  %57 = icmp ne i32* %56, null
  br i1 %57, label %58, label %61

58:                                               ; preds = %53
  %59 = load i32*, i32** %17, align 8
  %60 = call i32 @oper_select_candidate(i32 1, i32* %9, i32* %59, i32* %12)
  store i32 %60, i32* %15, align 4
  br label %61

61:                                               ; preds = %58, %53
  br label %62

62:                                               ; preds = %61, %45
  %63 = load i32, i32* %12, align 4
  %64 = call i64 @OidIsValid(i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %62
  %67 = load i32, i32* @OPEROID, align 4
  %68 = load i32, i32* %12, align 4
  %69 = call i32 @ObjectIdGetDatum(i32 %68)
  %70 = call i32* @SearchSysCache1(i32 %67, i32 %69)
  store i32* %70, i32** %16, align 8
  br label %71

71:                                               ; preds = %66, %62
  %72 = load i32*, i32** %16, align 8
  %73 = call i64 @HeapTupleIsValid(i32* %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %82

75:                                               ; preds = %71
  %76 = load i32, i32* %14, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %75
  %79 = load i32, i32* %12, align 4
  %80 = call i32 @make_oper_cache_entry(i32* %13, i32 %79)
  br label %81

81:                                               ; preds = %78, %75
  br label %94

82:                                               ; preds = %71
  %83 = load i32, i32* %10, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %93, label %85

85:                                               ; preds = %82
  %86 = load i32*, i32** %7, align 8
  %87 = load i32*, i32** %8, align 8
  %88 = load i32, i32* %9, align 4
  %89 = load i32, i32* @InvalidOid, align 4
  %90 = load i32, i32* %15, align 4
  %91 = load i32, i32* %11, align 4
  %92 = call i32 @op_error(i32* %86, i32* %87, i8 signext 114, i32 %88, i32 %89, i32 %90, i32 %91)
  br label %93

93:                                               ; preds = %85, %82
  br label %94

94:                                               ; preds = %93, %81
  %95 = load i32*, i32** %16, align 8
  %96 = ptrtoint i32* %95 to i32
  store i32 %96, i32* %6, align 4
  br label %97

97:                                               ; preds = %94, %40
  %98 = load i32, i32* %6, align 4
  ret i32 %98
}

declare dso_local i32 @make_oper_cache_key(i32*, i32*, i32*, i32, i32, i32) #1

declare dso_local i32 @find_oper_cache_entry(i32*) #1

declare dso_local i64 @OidIsValid(i32) #1

declare dso_local i32* @SearchSysCache1(i32, i32) #1

declare dso_local i32 @ObjectIdGetDatum(i32) #1

declare dso_local i64 @HeapTupleIsValid(i32*) #1

declare dso_local i32 @OpernameGetOprid(i32*, i32, i32) #1

declare dso_local i32* @OpernameGetCandidates(i32*, i8 signext, i32) #1

declare dso_local i32 @oper_select_candidate(i32, i32*, i32*, i32*) #1

declare dso_local i32 @make_oper_cache_entry(i32*, i32) #1

declare dso_local i32 @op_error(i32*, i32*, i8 signext, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
