; ModuleID = '/home/carl/AnghaBench/postgres/contrib/intarray/extr__int_selfuncs.c_int_query_opr_selec.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/intarray/extr__int_selfuncs.c_int_query_opr_selec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32, i32 }

@VAL = common dso_local global i64 0, align 8
@DEFAULT_EQ_SEL = common dso_local global i32 0, align 4
@compare_val_int4 = common dso_local global i32 0, align 4
@OPR = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"unrecognized operator: %d\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"unrecognized int query item type: %u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32*, i32*, i32, i32)* @int_query_opr_selec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @int_query_opr_selec(%struct.TYPE_3__* %0, i32* %1, i32* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %16 = call i32 (...) @check_stack_depth()
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @VAL, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %53

22:                                               ; preds = %5
  %23 = load i32*, i32** %8, align 8
  %24 = icmp eq i32* %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %22
  %26 = load i32, i32* @DEFAULT_EQ_SEL, align 4
  store i32 %26, i32* %6, align 4
  br label %128

27:                                               ; preds = %22
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 1
  %30 = load i32*, i32** %8, align 8
  %31 = load i32, i32* %10, align 4
  %32 = load i32, i32* @compare_val_int4, align 4
  %33 = call i64 @bsearch(i32* %29, i32* %30, i32 %31, i32 4, i32 %32)
  %34 = inttoptr i64 %33 to i32*
  store i32* %34, i32** %13, align 8
  %35 = load i32*, i32** %13, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %37, label %47

37:                                               ; preds = %27
  %38 = load i32*, i32** %9, align 8
  %39 = load i32*, i32** %13, align 8
  %40 = load i32*, i32** %8, align 8
  %41 = ptrtoint i32* %39 to i64
  %42 = ptrtoint i32* %40 to i64
  %43 = sub i64 %41, %42
  %44 = sdiv exact i64 %43, 4
  %45 = getelementptr inbounds i32, i32* %38, i64 %44
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %12, align 4
  br label %52

47:                                               ; preds = %27
  %48 = load i32, i32* @DEFAULT_EQ_SEL, align 4
  %49 = load i32, i32* %11, align 4
  %50 = sdiv i32 %49, 2
  %51 = call i32 @Min(i32 %48, i32 %50)
  store i32 %51, i32* %12, align 4
  br label %52

52:                                               ; preds = %47, %37
  br label %124

53:                                               ; preds = %5
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @OPR, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %117

59:                                               ; preds = %53
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i64 -1
  %62 = load i32*, i32** %8, align 8
  %63 = load i32*, i32** %9, align 8
  %64 = load i32, i32* %10, align 4
  %65 = load i32, i32* %11, align 4
  %66 = call i32 @int_query_opr_selec(%struct.TYPE_3__* %61, i32* %62, i32* %63, i32 %64, i32 %65)
  store i32 %66, i32* %14, align 4
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  switch i32 %69, label %109 [
    i32 33, label %70
    i32 38, label %75
    i32 124, label %90
  ]

70:                                               ; preds = %59
  %71 = load i32, i32* %14, align 4
  %72 = sitofp i32 %71 to double
  %73 = fsub double 1.000000e+00, %72
  %74 = fptosi double %73 to i32
  store i32 %74, i32* %12, align 4
  br label %116

75:                                               ; preds = %59
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i64 %80
  %82 = load i32*, i32** %8, align 8
  %83 = load i32*, i32** %9, align 8
  %84 = load i32, i32* %10, align 4
  %85 = load i32, i32* %11, align 4
  %86 = call i32 @int_query_opr_selec(%struct.TYPE_3__* %81, i32* %82, i32* %83, i32 %84, i32 %85)
  store i32 %86, i32* %15, align 4
  %87 = load i32, i32* %14, align 4
  %88 = load i32, i32* %15, align 4
  %89 = mul nsw i32 %87, %88
  store i32 %89, i32* %12, align 4
  br label %116

90:                                               ; preds = %59
  %91 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %92 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i64 %95
  %97 = load i32*, i32** %8, align 8
  %98 = load i32*, i32** %9, align 8
  %99 = load i32, i32* %10, align 4
  %100 = load i32, i32* %11, align 4
  %101 = call i32 @int_query_opr_selec(%struct.TYPE_3__* %96, i32* %97, i32* %98, i32 %99, i32 %100)
  store i32 %101, i32* %15, align 4
  %102 = load i32, i32* %14, align 4
  %103 = load i32, i32* %15, align 4
  %104 = add nsw i32 %102, %103
  %105 = load i32, i32* %14, align 4
  %106 = load i32, i32* %15, align 4
  %107 = mul nsw i32 %105, %106
  %108 = sub nsw i32 %104, %107
  store i32 %108, i32* %12, align 4
  br label %116

109:                                              ; preds = %59
  %110 = load i32, i32* @ERROR, align 4
  %111 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 8
  %114 = sext i32 %113 to i64
  %115 = call i32 @elog(i32 %110, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i64 %114)
  store i32 0, i32* %12, align 4
  br label %116

116:                                              ; preds = %109, %90, %75, %70
  br label %123

117:                                              ; preds = %53
  %118 = load i32, i32* @ERROR, align 4
  %119 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %120 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = call i32 @elog(i32 %118, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i64 %121)
  store i32 0, i32* %12, align 4
  br label %123

123:                                              ; preds = %117, %116
  br label %124

124:                                              ; preds = %123, %52
  %125 = load i32, i32* %12, align 4
  %126 = call i32 @CLAMP_PROBABILITY(i32 %125)
  %127 = load i32, i32* %12, align 4
  store i32 %127, i32* %6, align 4
  br label %128

128:                                              ; preds = %124, %25
  %129 = load i32, i32* %6, align 4
  ret i32 %129
}

declare dso_local i32 @check_stack_depth(...) #1

declare dso_local i64 @bsearch(i32*, i32*, i32, i32, i32) #1

declare dso_local i32 @Min(i32, i32) #1

declare dso_local i32 @elog(i32, i8*, i64) #1

declare dso_local i32 @CLAMP_PROBABILITY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
