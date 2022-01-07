; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/parser/extr_parse_oper.c_oper.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/parser/extr_parse_oper.c_oper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FUNCDETAIL_NOTFOUND = common dso_local global i32 0, align 4
@OPEROID = common dso_local global i32 0, align 4
@InvalidOid = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @oper(i32* %0, i32* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca [2 x i32], align 4
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %21 = load i32, i32* @FUNCDETAIL_NOTFOUND, align 4
  store i32 %21, i32* %17, align 4
  store i32* null, i32** %18, align 8
  %22 = load i32*, i32** %8, align 8
  %23 = load i32*, i32** %9, align 8
  %24 = load i32, i32* %10, align 4
  %25 = load i32, i32* %11, align 4
  %26 = load i32, i32* %13, align 4
  %27 = call i32 @make_oper_cache_key(i32* %22, i32* %15, i32* %23, i32 %24, i32 %25, i32 %26)
  store i32 %27, i32* %16, align 4
  %28 = load i32, i32* %16, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %48

30:                                               ; preds = %6
  %31 = call i32 @find_oper_cache_entry(i32* %15)
  store i32 %31, i32* %14, align 4
  %32 = load i32, i32* %14, align 4
  %33 = call i64 @OidIsValid(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %47

35:                                               ; preds = %30
  %36 = load i32, i32* @OPEROID, align 4
  %37 = load i32, i32* %14, align 4
  %38 = call i32 @ObjectIdGetDatum(i32 %37)
  %39 = call i32* @SearchSysCache1(i32 %36, i32 %38)
  store i32* %39, i32** %18, align 8
  %40 = load i32*, i32** %18, align 8
  %41 = call i64 @HeapTupleIsValid(i32* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %35
  %44 = load i32*, i32** %18, align 8
  %45 = ptrtoint i32* %44 to i32
  store i32 %45, i32* %7, align 4
  br label %118

46:                                               ; preds = %35
  br label %47

47:                                               ; preds = %46, %30
  br label %48

48:                                               ; preds = %47, %6
  %49 = load i32*, i32** %9, align 8
  %50 = load i32, i32* %10, align 4
  %51 = load i32, i32* %11, align 4
  %52 = call i32 @binary_oper_exact(i32* %49, i32 %50, i32 %51)
  store i32 %52, i32* %14, align 4
  %53 = load i32, i32* %14, align 4
  %54 = call i64 @OidIsValid(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %83, label %56

56:                                               ; preds = %48
  %57 = load i32*, i32** %9, align 8
  %58 = call i32* @OpernameGetCandidates(i32* %57, i8 signext 98, i32 0)
  store i32* %58, i32** %19, align 8
  %59 = load i32*, i32** %19, align 8
  %60 = icmp ne i32* %59, null
  br i1 %60, label %61, label %82

61:                                               ; preds = %56
  %62 = load i32, i32* %11, align 4
  %63 = load i32, i32* @InvalidOid, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %67

65:                                               ; preds = %61
  %66 = load i32, i32* %10, align 4
  store i32 %66, i32* %11, align 4
  br label %74

67:                                               ; preds = %61
  %68 = load i32, i32* %10, align 4
  %69 = load i32, i32* @InvalidOid, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %71, label %73

71:                                               ; preds = %67
  %72 = load i32, i32* %11, align 4
  store i32 %72, i32* %10, align 4
  br label %73

73:                                               ; preds = %71, %67
  br label %74

74:                                               ; preds = %73, %65
  %75 = load i32, i32* %10, align 4
  %76 = getelementptr inbounds [2 x i32], [2 x i32]* %20, i64 0, i64 0
  store i32 %75, i32* %76, align 4
  %77 = load i32, i32* %11, align 4
  %78 = getelementptr inbounds [2 x i32], [2 x i32]* %20, i64 0, i64 1
  store i32 %77, i32* %78, align 4
  %79 = getelementptr inbounds [2 x i32], [2 x i32]* %20, i64 0, i64 0
  %80 = load i32*, i32** %19, align 8
  %81 = call i32 @oper_select_candidate(i32 2, i32* %79, i32* %80, i32* %14)
  store i32 %81, i32* %17, align 4
  br label %82

82:                                               ; preds = %74, %56
  br label %83

83:                                               ; preds = %82, %48
  %84 = load i32, i32* %14, align 4
  %85 = call i64 @OidIsValid(i32 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %92

87:                                               ; preds = %83
  %88 = load i32, i32* @OPEROID, align 4
  %89 = load i32, i32* %14, align 4
  %90 = call i32 @ObjectIdGetDatum(i32 %89)
  %91 = call i32* @SearchSysCache1(i32 %88, i32 %90)
  store i32* %91, i32** %18, align 8
  br label %92

92:                                               ; preds = %87, %83
  %93 = load i32*, i32** %18, align 8
  %94 = call i64 @HeapTupleIsValid(i32* %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %103

96:                                               ; preds = %92
  %97 = load i32, i32* %16, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %96
  %100 = load i32, i32* %14, align 4
  %101 = call i32 @make_oper_cache_entry(i32* %15, i32 %100)
  br label %102

102:                                              ; preds = %99, %96
  br label %115

103:                                              ; preds = %92
  %104 = load i32, i32* %12, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %114, label %106

106:                                              ; preds = %103
  %107 = load i32*, i32** %8, align 8
  %108 = load i32*, i32** %9, align 8
  %109 = load i32, i32* %10, align 4
  %110 = load i32, i32* %11, align 4
  %111 = load i32, i32* %17, align 4
  %112 = load i32, i32* %13, align 4
  %113 = call i32 @op_error(i32* %107, i32* %108, i8 signext 98, i32 %109, i32 %110, i32 %111, i32 %112)
  br label %114

114:                                              ; preds = %106, %103
  br label %115

115:                                              ; preds = %114, %102
  %116 = load i32*, i32** %18, align 8
  %117 = ptrtoint i32* %116 to i32
  store i32 %117, i32* %7, align 4
  br label %118

118:                                              ; preds = %115, %43
  %119 = load i32, i32* %7, align 4
  ret i32 %119
}

declare dso_local i32 @make_oper_cache_key(i32*, i32*, i32*, i32, i32, i32) #1

declare dso_local i32 @find_oper_cache_entry(i32*) #1

declare dso_local i64 @OidIsValid(i32) #1

declare dso_local i32* @SearchSysCache1(i32, i32) #1

declare dso_local i32 @ObjectIdGetDatum(i32) #1

declare dso_local i64 @HeapTupleIsValid(i32*) #1

declare dso_local i32 @binary_oper_exact(i32*, i32, i32) #1

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
