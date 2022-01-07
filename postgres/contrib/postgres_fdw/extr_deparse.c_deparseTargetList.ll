; ModuleID = '/home/carl/AnghaBench/postgres/contrib/postgres_fdw/extr_deparse.c_deparseTargetList.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/postgres_fdw/extr_deparse.c_deparseTargetList.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { i64 }

@NIL = common dso_local global i32* null, align 8
@FirstLowInvalidHeapAttributeNumber = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c" RETURNING \00", align 1
@SelfItemPointerAttributeNumber = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"ctid\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"NULL\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32*, i32, i32, i32, i32*, i32, i32**)* @deparseTargetList to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @deparseTargetList(i32 %0, i32* %1, i32 %2, i32 %3, i32 %4, i32* %5, i32 %6, i32** %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32**, align 8
  %17 = alloca %struct.TYPE_6__*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.TYPE_7__*, align 8
  store i32 %0, i32* %9, align 4
  store i32* %1, i32** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32* %5, i32** %14, align 8
  store i32 %6, i32* %15, align 4
  store i32** %7, i32*** %16, align 8
  %22 = load i32, i32* %12, align 4
  %23 = call %struct.TYPE_6__* @RelationGetDescr(i32 %22)
  store %struct.TYPE_6__* %23, %struct.TYPE_6__** %17, align 8
  %24 = load i32*, i32** @NIL, align 8
  %25 = load i32**, i32*** %16, align 8
  store i32* %24, i32** %25, align 8
  %26 = load i64, i64* @FirstLowInvalidHeapAttributeNumber, align 8
  %27 = sub nsw i64 0, %26
  %28 = load i32*, i32** %14, align 8
  %29 = call i32 @bms_is_member(i64 %27, i32* %28)
  store i32 %29, i32* %18, align 4
  store i32 1, i32* %19, align 4
  store i32 1, i32* %20, align 4
  br label %30

30:                                               ; preds = %83, %8
  %31 = load i32, i32* %20, align 4
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp sle i32 %31, %34
  br i1 %35, label %36, label %86

36:                                               ; preds = %30
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %38 = load i32, i32* %20, align 4
  %39 = sub nsw i32 %38, 1
  %40 = call %struct.TYPE_7__* @TupleDescAttr(%struct.TYPE_6__* %37, i32 %39)
  store %struct.TYPE_7__* %40, %struct.TYPE_7__** %21, align 8
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %21, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %36
  br label %83

46:                                               ; preds = %36
  %47 = load i32, i32* %18, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %57, label %49

49:                                               ; preds = %46
  %50 = load i32, i32* %20, align 4
  %51 = sext i32 %50 to i64
  %52 = load i64, i64* @FirstLowInvalidHeapAttributeNumber, align 8
  %53 = sub nsw i64 %51, %52
  %54 = load i32*, i32** %14, align 8
  %55 = call i32 @bms_is_member(i64 %53, i32* %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %82

57:                                               ; preds = %49, %46
  %58 = load i32, i32* %19, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %63, label %60

60:                                               ; preds = %57
  %61 = load i32, i32* %9, align 4
  %62 = call i32 @appendStringInfoString(i32 %61, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  br label %70

63:                                               ; preds = %57
  %64 = load i32, i32* %13, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %63
  %67 = load i32, i32* %9, align 4
  %68 = call i32 @appendStringInfoString(i32 %67, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  br label %69

69:                                               ; preds = %66, %63
  br label %70

70:                                               ; preds = %69, %60
  store i32 0, i32* %19, align 4
  %71 = load i32, i32* %9, align 4
  %72 = load i32, i32* %11, align 4
  %73 = load i32, i32* %20, align 4
  %74 = load i32*, i32** %10, align 8
  %75 = load i32, i32* %15, align 4
  %76 = call i32 @deparseColumnRef(i32 %71, i32 %72, i32 %73, i32* %74, i32 %75)
  %77 = load i32**, i32*** %16, align 8
  %78 = load i32*, i32** %77, align 8
  %79 = load i32, i32* %20, align 4
  %80 = call i32* @lappend_int(i32* %78, i32 %79)
  %81 = load i32**, i32*** %16, align 8
  store i32* %80, i32** %81, align 8
  br label %82

82:                                               ; preds = %70, %49
  br label %83

83:                                               ; preds = %82, %45
  %84 = load i32, i32* %20, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %20, align 4
  br label %30

86:                                               ; preds = %30
  %87 = load i32, i32* @SelfItemPointerAttributeNumber, align 4
  %88 = sext i32 %87 to i64
  %89 = load i64, i64* @FirstLowInvalidHeapAttributeNumber, align 8
  %90 = sub nsw i64 %88, %89
  %91 = load i32*, i32** %14, align 8
  %92 = call i32 @bms_is_member(i64 %90, i32* %91)
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %122

94:                                               ; preds = %86
  %95 = load i32, i32* %19, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %100, label %97

97:                                               ; preds = %94
  %98 = load i32, i32* %9, align 4
  %99 = call i32 @appendStringInfoString(i32 %98, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  br label %107

100:                                              ; preds = %94
  %101 = load i32, i32* %13, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %100
  %104 = load i32, i32* %9, align 4
  %105 = call i32 @appendStringInfoString(i32 %104, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  br label %106

106:                                              ; preds = %103, %100
  br label %107

107:                                              ; preds = %106, %97
  store i32 0, i32* %19, align 4
  %108 = load i32, i32* %15, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %114

110:                                              ; preds = %107
  %111 = load i32, i32* %9, align 4
  %112 = load i32, i32* %11, align 4
  %113 = call i32 @ADD_REL_QUALIFIER(i32 %111, i32 %112)
  br label %114

114:                                              ; preds = %110, %107
  %115 = load i32, i32* %9, align 4
  %116 = call i32 @appendStringInfoString(i32 %115, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %117 = load i32**, i32*** %16, align 8
  %118 = load i32*, i32** %117, align 8
  %119 = load i32, i32* @SelfItemPointerAttributeNumber, align 4
  %120 = call i32* @lappend_int(i32* %118, i32 %119)
  %121 = load i32**, i32*** %16, align 8
  store i32* %120, i32** %121, align 8
  br label %122

122:                                              ; preds = %114, %86
  %123 = load i32, i32* %19, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %131

125:                                              ; preds = %122
  %126 = load i32, i32* %13, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %131, label %128

128:                                              ; preds = %125
  %129 = load i32, i32* %9, align 4
  %130 = call i32 @appendStringInfoString(i32 %129, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  br label %131

131:                                              ; preds = %128, %125, %122
  ret void
}

declare dso_local %struct.TYPE_6__* @RelationGetDescr(i32) #1

declare dso_local i32 @bms_is_member(i64, i32*) #1

declare dso_local %struct.TYPE_7__* @TupleDescAttr(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @appendStringInfoString(i32, i8*) #1

declare dso_local i32 @deparseColumnRef(i32, i32, i32, i32*, i32) #1

declare dso_local i32* @lappend_int(i32*, i32) #1

declare dso_local i32 @ADD_REL_QUALIFIER(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
