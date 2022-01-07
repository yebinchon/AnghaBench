; ModuleID = '/home/carl/AnghaBench/postgres/contrib/test_decoding/extr_test_decoding.c_tuple_to_stringinfo.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/test_decoding/extr_test_decoding.c_tuple_to_stringinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i64, i32, i32, i64 }

@.str = private unnamed_addr constant [5 x i8] c"null\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"unchanged-toast-datum\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.TYPE_7__*, i32, i32)* @tuple_to_stringinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tuple_to_stringinfo(i32 %0, %struct.TYPE_7__* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_8__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %17

17:                                               ; preds = %113, %4
  %18 = load i32, i32* %9, align 4
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp slt i32 %18, %21
  br i1 %22, label %23, label %116

23:                                               ; preds = %17
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %25 = load i32, i32* %9, align 4
  %26 = call %struct.TYPE_8__* @TupleDescAttr(%struct.TYPE_7__* %24, i32 %25)
  store %struct.TYPE_8__* %26, %struct.TYPE_8__** %10, align 8
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 3
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %23
  br label %113

32:                                               ; preds = %23
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp slt i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %32
  br label %113

38:                                               ; preds = %32
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %11, align 4
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* %9, align 4
  %44 = add nsw i32 %43, 1
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %46 = call i32 @heap_getattr(i32 %42, i32 %44, %struct.TYPE_7__* %45, i32* %15)
  store i32 %46, i32* %14, align 4
  %47 = load i32, i32* %15, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %38
  %50 = load i32, i32* %8, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %49
  br label %113

53:                                               ; preds = %49, %38
  %54 = load i32, i32* %5, align 4
  %55 = call i32 @appendStringInfoChar(i32 %54, i8 signext 32)
  %56 = load i32, i32* %5, align 4
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @NameStr(i32 %59)
  %61 = call i8* @quote_identifier(i32 %60)
  %62 = call i32 @appendStringInfoString(i32 %56, i8* %61)
  %63 = load i32, i32* %5, align 4
  %64 = call i32 @appendStringInfoChar(i32 %63, i8 signext 91)
  %65 = load i32, i32* %5, align 4
  %66 = load i32, i32* %11, align 4
  %67 = call i8* @format_type_be(i32 %66)
  %68 = call i32 @appendStringInfoString(i32 %65, i8* %67)
  %69 = load i32, i32* %5, align 4
  %70 = call i32 @appendStringInfoChar(i32 %69, i8 signext 93)
  %71 = load i32, i32* %11, align 4
  %72 = call i32 @getTypeOutputInfo(i32 %71, i32* %12, i32* %13)
  %73 = load i32, i32* %5, align 4
  %74 = call i32 @appendStringInfoChar(i32 %73, i8 signext 58)
  %75 = load i32, i32* %15, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %53
  %78 = load i32, i32* %5, align 4
  %79 = call i32 @appendStringInfoString(i32 %78, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  br label %112

80:                                               ; preds = %53
  %81 = load i32, i32* %13, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %90

83:                                               ; preds = %80
  %84 = load i32, i32* %14, align 4
  %85 = call i64 @VARATT_IS_EXTERNAL_ONDISK(i32 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %83
  %88 = load i32, i32* %5, align 4
  %89 = call i32 @appendStringInfoString(i32 %88, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  br label %111

90:                                               ; preds = %83, %80
  %91 = load i32, i32* %13, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %100, label %93

93:                                               ; preds = %90
  %94 = load i32, i32* %5, align 4
  %95 = load i32, i32* %11, align 4
  %96 = load i32, i32* %12, align 4
  %97 = load i32, i32* %14, align 4
  %98 = call i32 @OidOutputFunctionCall(i32 %96, i32 %97)
  %99 = call i32 @print_literal(i32 %94, i32 %95, i32 %98)
  br label %110

100:                                              ; preds = %90
  %101 = load i32, i32* %14, align 4
  %102 = call i32 @PG_DETOAST_DATUM(i32 %101)
  %103 = call i32 @PointerGetDatum(i32 %102)
  store i32 %103, i32* %16, align 4
  %104 = load i32, i32* %5, align 4
  %105 = load i32, i32* %11, align 4
  %106 = load i32, i32* %12, align 4
  %107 = load i32, i32* %16, align 4
  %108 = call i32 @OidOutputFunctionCall(i32 %106, i32 %107)
  %109 = call i32 @print_literal(i32 %104, i32 %105, i32 %108)
  br label %110

110:                                              ; preds = %100, %93
  br label %111

111:                                              ; preds = %110, %87
  br label %112

112:                                              ; preds = %111, %77
  br label %113

113:                                              ; preds = %112, %52, %37, %31
  %114 = load i32, i32* %9, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %9, align 4
  br label %17

116:                                              ; preds = %17
  ret void
}

declare dso_local %struct.TYPE_8__* @TupleDescAttr(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @heap_getattr(i32, i32, %struct.TYPE_7__*, i32*) #1

declare dso_local i32 @appendStringInfoChar(i32, i8 signext) #1

declare dso_local i32 @appendStringInfoString(i32, i8*) #1

declare dso_local i8* @quote_identifier(i32) #1

declare dso_local i32 @NameStr(i32) #1

declare dso_local i8* @format_type_be(i32) #1

declare dso_local i32 @getTypeOutputInfo(i32, i32*, i32*) #1

declare dso_local i64 @VARATT_IS_EXTERNAL_ONDISK(i32) #1

declare dso_local i32 @print_literal(i32, i32, i32) #1

declare dso_local i32 @OidOutputFunctionCall(i32, i32) #1

declare dso_local i32 @PointerGetDatum(i32) #1

declare dso_local i32 @PG_DETOAST_DATUM(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
