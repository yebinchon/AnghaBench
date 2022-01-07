; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/tsearch/extr_ts_selfuncs.c_mcelem_tsquery_selec.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/tsearch/extr_ts_selfuncs.c_mcelem_tsquery_selec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, i32, i32*, i32)* @mcelem_tsquery_selec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mcelem_tsquery_selec(i32 %0, i32* %1, i32 %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_4__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  %16 = load i32, i32* %11, align 4
  %17 = load i32, i32* %9, align 4
  %18 = add nsw i32 %17, 2
  %19 = icmp ne i32 %16, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %5
  %21 = load i32, i32* %7, align 4
  %22 = call i32 @tsquery_opr_selec_no_stats(i32 %21)
  store i32 %22, i32* %6, align 4
  br label %98

23:                                               ; preds = %5
  %24 = load i32, i32* %9, align 4
  %25 = sext i32 %24 to i64
  %26 = mul i64 16, %25
  %27 = trunc i64 %26 to i32
  %28 = call i64 @palloc(i32 %27)
  %29 = inttoptr i64 %28 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %29, %struct.TYPE_4__** %13, align 8
  store i32 0, i32* %15, align 4
  br label %30

30:                                               ; preds = %77, %23
  %31 = load i32, i32* %15, align 4
  %32 = load i32, i32* %9, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %80

34:                                               ; preds = %30
  %35 = load i32*, i32** %8, align 8
  %36 = load i32, i32* %15, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @VARATT_IS_COMPRESSED(i32 %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %51, label %42

42:                                               ; preds = %34
  %43 = load i32*, i32** %8, align 8
  %44 = load i32, i32* %15, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @VARATT_IS_EXTERNAL(i32 %47)
  %49 = icmp ne i32 %48, 0
  %50 = xor i1 %49, true
  br label %51

51:                                               ; preds = %42, %34
  %52 = phi i1 [ false, %34 ], [ %50, %42 ]
  %53 = zext i1 %52 to i32
  %54 = call i32 @Assert(i32 %53)
  %55 = load i32*, i32** %8, align 8
  %56 = load i32, i32* %15, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = call i64 @DatumGetPointer(i32 %59)
  %61 = inttoptr i64 %60 to i32*
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %63 = load i32, i32* %15, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 1
  store i32* %61, i32** %66, align 8
  %67 = load i32*, i32** %10, align 8
  %68 = load i32, i32* %15, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %73 = load i32, i32* %15, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  store i32 %71, i32* %76, align 8
  br label %77

77:                                               ; preds = %51
  %78 = load i32, i32* %15, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %15, align 4
  br label %30

80:                                               ; preds = %30
  %81 = load i32*, i32** %10, align 8
  %82 = load i32, i32* %11, align 4
  %83 = sub nsw i32 %82, 2
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %81, i64 %84
  %86 = load i32, i32* %85, align 4
  store i32 %86, i32* %12, align 4
  %87 = load i32, i32* %7, align 4
  %88 = call i32 @GETQUERY(i32 %87)
  %89 = load i32, i32* %7, align 4
  %90 = call i32 @GETOPERAND(i32 %89)
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %92 = load i32, i32* %9, align 4
  %93 = load i32, i32* %12, align 4
  %94 = call i32 @tsquery_opr_selec(i32 %88, i32 %90, %struct.TYPE_4__* %91, i32 %92, i32 %93)
  store i32 %94, i32* %14, align 4
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %96 = call i32 @pfree(%struct.TYPE_4__* %95)
  %97 = load i32, i32* %14, align 4
  store i32 %97, i32* %6, align 4
  br label %98

98:                                               ; preds = %80, %20
  %99 = load i32, i32* %6, align 4
  ret i32 %99
}

declare dso_local i32 @tsquery_opr_selec_no_stats(i32) #1

declare dso_local i64 @palloc(i32) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @VARATT_IS_COMPRESSED(i32) #1

declare dso_local i32 @VARATT_IS_EXTERNAL(i32) #1

declare dso_local i64 @DatumGetPointer(i32) #1

declare dso_local i32 @tsquery_opr_selec(i32, i32, %struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @GETQUERY(i32) #1

declare dso_local i32 @GETOPERAND(i32) #1

declare dso_local i32 @pfree(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
