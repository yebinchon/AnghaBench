; ModuleID = '/home/carl/AnghaBench/postgres/contrib/pg_trgm/extr_trgm_op.c_generate_wildcard_trgm.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/pg_trgm/extr_trgm_op.c_generate_wildcard_trgm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@TRGMHDRSIZE = common dso_local global i32 0, align 4
@ARRKEY = common dso_local global i32 0, align 4
@LPADDING = common dso_local global i32 0, align 4
@RPADDING = common dso_local global i32 0, align 4
@comp_trgm = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_5__* @generate_wildcard_trgm(i8* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @protect_out_of_mem(i32 %14)
  %16 = load i32, i32* @TRGMHDRSIZE, align 4
  %17 = sext i32 %16 to i64
  %18 = load i32, i32* %5, align 4
  %19 = sdiv i32 %18, 2
  %20 = add nsw i32 %19, 1
  %21 = sext i32 %20 to i64
  %22 = mul i64 4, %21
  %23 = mul i64 %22, 3
  %24 = add i64 %17, %23
  %25 = trunc i64 %24 to i32
  %26 = call i8* @palloc(i32 %25)
  %27 = bitcast i8* %26 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %27, %struct.TYPE_5__** %6, align 8
  %28 = load i32, i32* @ARRKEY, align 4
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 4
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %32 = load i32, i32* @TRGMHDRSIZE, align 4
  %33 = call i32 @SET_VARSIZE(%struct.TYPE_5__* %31, i32 %32)
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* @LPADDING, align 4
  %36 = add nsw i32 %34, %35
  %37 = load i32, i32* @RPADDING, align 4
  %38 = add nsw i32 %36, %37
  %39 = icmp slt i32 %38, 3
  br i1 %39, label %43, label %40

40:                                               ; preds = %2
  %41 = load i32, i32* %5, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %40, %2
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  store %struct.TYPE_5__* %44, %struct.TYPE_5__** %3, align 8
  br label %112

45:                                               ; preds = %40
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %47 = call i32* @GETARR(%struct.TYPE_5__* %46)
  store i32* %47, i32** %9, align 8
  %48 = load i32, i32* %5, align 4
  %49 = add nsw i32 %48, 4
  %50 = sext i32 %49 to i64
  %51 = mul i64 1, %50
  %52 = trunc i64 %51 to i32
  %53 = call i8* @palloc(i32 %52)
  store i8* %53, i8** %7, align 8
  %54 = load i8*, i8** %4, align 8
  store i8* %54, i8** %13, align 8
  br label %55

55:                                               ; preds = %69, %45
  %56 = load i8*, i8** %13, align 8
  %57 = load i32, i32* %5, align 4
  %58 = sext i32 %57 to i64
  %59 = load i8*, i8** %13, align 8
  %60 = load i8*, i8** %4, align 8
  %61 = ptrtoint i8* %59 to i64
  %62 = ptrtoint i8* %60 to i64
  %63 = sub i64 %61, %62
  %64 = sub nsw i64 %58, %63
  %65 = trunc i64 %64 to i32
  %66 = load i8*, i8** %7, align 8
  %67 = call i8* @get_wildcard_part(i8* %56, i32 %65, i8* %66, i32* %12, i32* %11)
  store i8* %67, i8** %13, align 8
  %68 = icmp ne i8* %67, null
  br i1 %68, label %69, label %76

69:                                               ; preds = %55
  %70 = load i8*, i8** %7, align 8
  store i8* %70, i8** %8, align 8
  %71 = load i32*, i32** %9, align 8
  %72 = load i8*, i8** %8, align 8
  %73 = load i32, i32* %12, align 4
  %74 = load i32, i32* %11, align 4
  %75 = call i32* @make_trigrams(i32* %71, i8* %72, i32 %73, i32 %74)
  store i32* %75, i32** %9, align 8
  br label %55

76:                                               ; preds = %55
  %77 = load i8*, i8** %7, align 8
  %78 = call i32 @pfree(i8* %77)
  %79 = load i32*, i32** %9, align 8
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %81 = call i32* @GETARR(%struct.TYPE_5__* %80)
  %82 = ptrtoint i32* %79 to i64
  %83 = ptrtoint i32* %81 to i64
  %84 = sub i64 %82, %83
  %85 = sdiv exact i64 %84, 4
  %86 = trunc i64 %85 to i32
  store i32 %86, i32* %10, align 4
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %76
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  store %struct.TYPE_5__* %89, %struct.TYPE_5__** %3, align 8
  br label %112

90:                                               ; preds = %76
  %91 = load i32, i32* %10, align 4
  %92 = icmp sgt i32 %91, 1
  br i1 %92, label %93, label %105

93:                                               ; preds = %90
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %95 = call i32* @GETARR(%struct.TYPE_5__* %94)
  %96 = bitcast i32* %95 to i8*
  %97 = load i32, i32* %10, align 4
  %98 = load i32, i32* @comp_trgm, align 4
  %99 = call i32 @qsort(i8* %96, i32 %97, i32 4, i32 %98)
  %100 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %101 = call i32* @GETARR(%struct.TYPE_5__* %100)
  %102 = load i32, i32* %10, align 4
  %103 = load i32, i32* @comp_trgm, align 4
  %104 = call i32 @qunique(i32* %101, i32 %102, i32 4, i32 %103)
  store i32 %104, i32* %10, align 4
  br label %105

105:                                              ; preds = %93, %90
  %106 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %107 = load i32, i32* @ARRKEY, align 4
  %108 = load i32, i32* %10, align 4
  %109 = call i32 @CALCGTSIZE(i32 %107, i32 %108)
  %110 = call i32 @SET_VARSIZE(%struct.TYPE_5__* %106, i32 %109)
  %111 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  store %struct.TYPE_5__* %111, %struct.TYPE_5__** %3, align 8
  br label %112

112:                                              ; preds = %105, %88, %43
  %113 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  ret %struct.TYPE_5__* %113
}

declare dso_local i32 @protect_out_of_mem(i32) #1

declare dso_local i8* @palloc(i32) #1

declare dso_local i32 @SET_VARSIZE(%struct.TYPE_5__*, i32) #1

declare dso_local i32* @GETARR(%struct.TYPE_5__*) #1

declare dso_local i8* @get_wildcard_part(i8*, i32, i8*, i32*, i32*) #1

declare dso_local i32* @make_trigrams(i32*, i8*, i32, i32) #1

declare dso_local i32 @pfree(i8*) #1

declare dso_local i32 @qsort(i8*, i32, i32, i32) #1

declare dso_local i32 @qunique(i32*, i32, i32, i32) #1

declare dso_local i32 @CALCGTSIZE(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
