; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/parser/extr_parse_oper.c_left_oper.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/parser/extr_parse_oper.c_left_oper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32*, %struct.TYPE_4__* }

@FUNCDETAIL_NOTFOUND = common dso_local global i32 0, align 4
@InvalidOid = common dso_local global i32 0, align 4
@OPEROID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @left_oper(i32* %0, i32* %1, i32 %2, i32 %3, i32 %4) #0 {
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
  %17 = alloca %struct.TYPE_4__*, align 8
  %18 = alloca %struct.TYPE_4__*, align 8
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %19 = load i32, i32* @FUNCDETAIL_NOTFOUND, align 4
  store i32 %19, i32* %15, align 4
  store i32* null, i32** %16, align 8
  %20 = load i32*, i32** %7, align 8
  %21 = load i32*, i32** %8, align 8
  %22 = load i32, i32* @InvalidOid, align 4
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* %11, align 4
  %25 = call i32 @make_oper_cache_key(i32* %20, i32* %13, i32* %21, i32 %22, i32 %23, i32 %24)
  store i32 %25, i32* %14, align 4
  %26 = load i32, i32* %14, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %46

28:                                               ; preds = %5
  %29 = call i32 @find_oper_cache_entry(i32* %13)
  store i32 %29, i32* %12, align 4
  %30 = load i32, i32* %12, align 4
  %31 = call i64 @OidIsValid(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %45

33:                                               ; preds = %28
  %34 = load i32, i32* @OPEROID, align 4
  %35 = load i32, i32* %12, align 4
  %36 = call i32 @ObjectIdGetDatum(i32 %35)
  %37 = call i32* @SearchSysCache1(i32 %34, i32 %36)
  store i32* %37, i32** %16, align 8
  %38 = load i32*, i32** %16, align 8
  %39 = call i64 @HeapTupleIsValid(i32* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %33
  %42 = load i32*, i32** %16, align 8
  %43 = ptrtoint i32* %42 to i32
  store i32 %43, i32* %6, align 4
  br label %117

44:                                               ; preds = %33
  br label %45

45:                                               ; preds = %44, %28
  br label %46

46:                                               ; preds = %45, %5
  %47 = load i32*, i32** %8, align 8
  %48 = load i32, i32* @InvalidOid, align 4
  %49 = load i32, i32* %9, align 4
  %50 = call i32 @OpernameGetOprid(i32* %47, i32 %48, i32 %49)
  store i32 %50, i32* %12, align 4
  %51 = load i32, i32* %12, align 4
  %52 = call i64 @OidIsValid(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %82, label %54

54:                                               ; preds = %46
  %55 = load i32*, i32** %8, align 8
  %56 = call %struct.TYPE_4__* @OpernameGetCandidates(i32* %55, i8 signext 108, i32 0)
  store %struct.TYPE_4__* %56, %struct.TYPE_4__** %17, align 8
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %58 = icmp ne %struct.TYPE_4__* %57, null
  br i1 %58, label %59, label %81

59:                                               ; preds = %54
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  store %struct.TYPE_4__* %60, %struct.TYPE_4__** %18, align 8
  br label %61

61:                                               ; preds = %74, %59
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %63 = icmp ne %struct.TYPE_4__* %62, null
  br i1 %63, label %64, label %78

64:                                               ; preds = %61
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 1
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 0
  store i32 %69, i32* %73, align 4
  br label %74

74:                                               ; preds = %64
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 1
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %76, align 8
  store %struct.TYPE_4__* %77, %struct.TYPE_4__** %18, align 8
  br label %61

78:                                               ; preds = %61
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %80 = call i32 @oper_select_candidate(i32 1, i32* %9, %struct.TYPE_4__* %79, i32* %12)
  store i32 %80, i32* %15, align 4
  br label %81

81:                                               ; preds = %78, %54
  br label %82

82:                                               ; preds = %81, %46
  %83 = load i32, i32* %12, align 4
  %84 = call i64 @OidIsValid(i32 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %91

86:                                               ; preds = %82
  %87 = load i32, i32* @OPEROID, align 4
  %88 = load i32, i32* %12, align 4
  %89 = call i32 @ObjectIdGetDatum(i32 %88)
  %90 = call i32* @SearchSysCache1(i32 %87, i32 %89)
  store i32* %90, i32** %16, align 8
  br label %91

91:                                               ; preds = %86, %82
  %92 = load i32*, i32** %16, align 8
  %93 = call i64 @HeapTupleIsValid(i32* %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %102

95:                                               ; preds = %91
  %96 = load i32, i32* %14, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %95
  %99 = load i32, i32* %12, align 4
  %100 = call i32 @make_oper_cache_entry(i32* %13, i32 %99)
  br label %101

101:                                              ; preds = %98, %95
  br label %114

102:                                              ; preds = %91
  %103 = load i32, i32* %10, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %113, label %105

105:                                              ; preds = %102
  %106 = load i32*, i32** %7, align 8
  %107 = load i32*, i32** %8, align 8
  %108 = load i32, i32* @InvalidOid, align 4
  %109 = load i32, i32* %9, align 4
  %110 = load i32, i32* %15, align 4
  %111 = load i32, i32* %11, align 4
  %112 = call i32 @op_error(i32* %106, i32* %107, i8 signext 108, i32 %108, i32 %109, i32 %110, i32 %111)
  br label %113

113:                                              ; preds = %105, %102
  br label %114

114:                                              ; preds = %113, %101
  %115 = load i32*, i32** %16, align 8
  %116 = ptrtoint i32* %115 to i32
  store i32 %116, i32* %6, align 4
  br label %117

117:                                              ; preds = %114, %41
  %118 = load i32, i32* %6, align 4
  ret i32 %118
}

declare dso_local i32 @make_oper_cache_key(i32*, i32*, i32*, i32, i32, i32) #1

declare dso_local i32 @find_oper_cache_entry(i32*) #1

declare dso_local i64 @OidIsValid(i32) #1

declare dso_local i32* @SearchSysCache1(i32, i32) #1

declare dso_local i32 @ObjectIdGetDatum(i32) #1

declare dso_local i64 @HeapTupleIsValid(i32*) #1

declare dso_local i32 @OpernameGetOprid(i32*, i32, i32) #1

declare dso_local %struct.TYPE_4__* @OpernameGetCandidates(i32*, i8 signext, i32) #1

declare dso_local i32 @oper_select_candidate(i32, i32*, %struct.TYPE_4__*, i32*) #1

declare dso_local i32 @make_oper_cache_entry(i32*, i32) #1

declare dso_local i32 @op_error(i32*, i32*, i8 signext, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
