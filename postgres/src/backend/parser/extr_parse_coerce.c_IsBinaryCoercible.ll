; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/parser/extr_parse_coerce.c_IsBinaryCoercible.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/parser/extr_parse_coerce.c_IsBinaryCoercible.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64 }

@ANYOID = common dso_local global i64 0, align 8
@ANYELEMENTOID = common dso_local global i64 0, align 8
@ANYARRAYOID = common dso_local global i64 0, align 8
@ANYNONARRAYOID = common dso_local global i64 0, align 8
@ANYENUMOID = common dso_local global i64 0, align 8
@ANYRANGEOID = common dso_local global i64 0, align 8
@RECORDOID = common dso_local global i64 0, align 8
@RECORDARRAYOID = common dso_local global i64 0, align 8
@CASTSOURCETARGET = common dso_local global i32 0, align 4
@COERCION_METHOD_BINARY = common dso_local global i64 0, align 8
@COERCION_CODE_IMPLICIT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @IsBinaryCoercible(i64 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_2__*, align 8
  %8 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load i64, i64* %4, align 8
  %10 = load i64, i64* %5, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %126

13:                                               ; preds = %2
  %14 = load i64, i64* %5, align 8
  %15 = load i64, i64* @ANYOID, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %21, label %17

17:                                               ; preds = %13
  %18 = load i64, i64* %5, align 8
  %19 = load i64, i64* @ANYELEMENTOID, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %17, %13
  store i32 1, i32* %3, align 4
  br label %126

22:                                               ; preds = %17
  %23 = load i64, i64* %4, align 8
  %24 = call i64 @OidIsValid(i64 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %22
  %27 = load i64, i64* %4, align 8
  %28 = call i64 @getBaseType(i64 %27)
  store i64 %28, i64* %4, align 8
  br label %29

29:                                               ; preds = %26, %22
  %30 = load i64, i64* %4, align 8
  %31 = load i64, i64* %5, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %29
  store i32 1, i32* %3, align 4
  br label %126

34:                                               ; preds = %29
  %35 = load i64, i64* %5, align 8
  %36 = load i64, i64* @ANYARRAYOID, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %44

38:                                               ; preds = %34
  %39 = load i64, i64* %4, align 8
  %40 = call i64 @type_is_array(i64 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %38
  store i32 1, i32* %3, align 4
  br label %126

43:                                               ; preds = %38
  br label %44

44:                                               ; preds = %43, %34
  %45 = load i64, i64* %5, align 8
  %46 = load i64, i64* @ANYNONARRAYOID, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %54

48:                                               ; preds = %44
  %49 = load i64, i64* %4, align 8
  %50 = call i64 @type_is_array(i64 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %48
  store i32 1, i32* %3, align 4
  br label %126

53:                                               ; preds = %48
  br label %54

54:                                               ; preds = %53, %44
  %55 = load i64, i64* %5, align 8
  %56 = load i64, i64* @ANYENUMOID, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %64

58:                                               ; preds = %54
  %59 = load i64, i64* %4, align 8
  %60 = call i64 @type_is_enum(i64 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %58
  store i32 1, i32* %3, align 4
  br label %126

63:                                               ; preds = %58
  br label %64

64:                                               ; preds = %63, %54
  %65 = load i64, i64* %5, align 8
  %66 = load i64, i64* @ANYRANGEOID, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %74

68:                                               ; preds = %64
  %69 = load i64, i64* %4, align 8
  %70 = call i64 @type_is_range(i64 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %68
  store i32 1, i32* %3, align 4
  br label %126

73:                                               ; preds = %68
  br label %74

74:                                               ; preds = %73, %64
  %75 = load i64, i64* %5, align 8
  %76 = load i64, i64* @RECORDOID, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %84

78:                                               ; preds = %74
  %79 = load i64, i64* %4, align 8
  %80 = call i64 @ISCOMPLEX(i64 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %78
  store i32 1, i32* %3, align 4
  br label %126

83:                                               ; preds = %78
  br label %84

84:                                               ; preds = %83, %74
  %85 = load i64, i64* %5, align 8
  %86 = load i64, i64* @RECORDARRAYOID, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %94

88:                                               ; preds = %84
  %89 = load i64, i64* %4, align 8
  %90 = call i64 @is_complex_array(i64 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %88
  store i32 1, i32* %3, align 4
  br label %126

93:                                               ; preds = %88
  br label %94

94:                                               ; preds = %93, %84
  %95 = load i32, i32* @CASTSOURCETARGET, align 4
  %96 = load i64, i64* %4, align 8
  %97 = call i32 @ObjectIdGetDatum(i64 %96)
  %98 = load i64, i64* %5, align 8
  %99 = call i32 @ObjectIdGetDatum(i64 %98)
  %100 = call i32 @SearchSysCache2(i32 %95, i32 %97, i32 %99)
  store i32 %100, i32* %6, align 4
  %101 = load i32, i32* %6, align 4
  %102 = call i32 @HeapTupleIsValid(i32 %101)
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %105, label %104

104:                                              ; preds = %94
  store i32 0, i32* %3, align 4
  br label %126

105:                                              ; preds = %94
  %106 = load i32, i32* %6, align 4
  %107 = call i64 @GETSTRUCT(i32 %106)
  %108 = inttoptr i64 %107 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %108, %struct.TYPE_2__** %7, align 8
  %109 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* @COERCION_METHOD_BINARY, align 8
  %113 = icmp eq i64 %111, %112
  br i1 %113, label %114, label %120

114:                                              ; preds = %105
  %115 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = load i64, i64* @COERCION_CODE_IMPLICIT, align 8
  %119 = icmp eq i64 %117, %118
  br label %120

120:                                              ; preds = %114, %105
  %121 = phi i1 [ false, %105 ], [ %119, %114 ]
  %122 = zext i1 %121 to i32
  store i32 %122, i32* %8, align 4
  %123 = load i32, i32* %6, align 4
  %124 = call i32 @ReleaseSysCache(i32 %123)
  %125 = load i32, i32* %8, align 4
  store i32 %125, i32* %3, align 4
  br label %126

126:                                              ; preds = %120, %104, %92, %82, %72, %62, %52, %42, %33, %21, %12
  %127 = load i32, i32* %3, align 4
  ret i32 %127
}

declare dso_local i64 @OidIsValid(i64) #1

declare dso_local i64 @getBaseType(i64) #1

declare dso_local i64 @type_is_array(i64) #1

declare dso_local i64 @type_is_enum(i64) #1

declare dso_local i64 @type_is_range(i64) #1

declare dso_local i64 @ISCOMPLEX(i64) #1

declare dso_local i64 @is_complex_array(i64) #1

declare dso_local i32 @SearchSysCache2(i32, i32, i32) #1

declare dso_local i32 @ObjectIdGetDatum(i64) #1

declare dso_local i32 @HeapTupleIsValid(i32) #1

declare dso_local i64 @GETSTRUCT(i32) #1

declare dso_local i32 @ReleaseSysCache(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
