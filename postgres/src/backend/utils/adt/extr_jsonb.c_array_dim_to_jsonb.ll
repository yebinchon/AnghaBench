; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_jsonb.c_array_dim_to_jsonb.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_jsonb.c_array_dim_to_jsonb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i8* }

@WJB_BEGIN_ARRAY = common dso_local global i32 0, align 4
@WJB_END_ARRAY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)* @array_dim_to_jsonb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @array_dim_to_jsonb(%struct.TYPE_4__* %0, i32 %1, i32 %2, i32* %3, i32* %4, i32* %5, i32* %6, i32 %7, i32 %8) #0 {
  %10 = alloca %struct.TYPE_4__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %10, align 8
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i32* %3, i32** %13, align 8
  store i32* %4, i32** %14, align 8
  store i32* %5, i32** %15, align 8
  store i32* %6, i32** %16, align 8
  store i32 %7, i32* %17, align 4
  store i32 %8, i32* %18, align 4
  %20 = load i32, i32* %11, align 4
  %21 = load i32, i32* %12, align 4
  %22 = icmp slt i32 %20, %21
  %23 = zext i1 %22 to i32
  %24 = call i32 @Assert(i32 %23)
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* @WJB_BEGIN_ARRAY, align 4
  %28 = call i8* @pushJsonbValue(i32* %26, i32 %27, i32* null)
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  store i8* %28, i8** %30, align 8
  store i32 1, i32* %19, align 4
  br label %31

31:                                               ; preds = %76, %9
  %32 = load i32, i32* %19, align 4
  %33 = load i32*, i32** %13, align 8
  %34 = load i32, i32* %11, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = icmp sle i32 %32, %37
  br i1 %38, label %39, label %79

39:                                               ; preds = %31
  %40 = load i32, i32* %11, align 4
  %41 = add nsw i32 %40, 1
  %42 = load i32, i32* %12, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %64

44:                                               ; preds = %39
  %45 = load i32*, i32** %14, align 8
  %46 = load i32*, i32** %16, align 8
  %47 = load i32, i32* %46, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %45, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = load i32*, i32** %15, align 8
  %52 = load i32*, i32** %16, align 8
  %53 = load i32, i32* %52, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %51, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %58 = load i32, i32* %17, align 4
  %59 = load i32, i32* %18, align 4
  %60 = call i32 @datum_to_jsonb(i32 %50, i32 %56, %struct.TYPE_4__* %57, i32 %58, i32 %59, i32 0)
  %61 = load i32*, i32** %16, align 8
  %62 = load i32, i32* %61, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %61, align 4
  br label %75

64:                                               ; preds = %39
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %66 = load i32, i32* %11, align 4
  %67 = add nsw i32 %66, 1
  %68 = load i32, i32* %12, align 4
  %69 = load i32*, i32** %13, align 8
  %70 = load i32*, i32** %14, align 8
  %71 = load i32*, i32** %15, align 8
  %72 = load i32*, i32** %16, align 8
  %73 = load i32, i32* %17, align 4
  %74 = load i32, i32* %18, align 4
  call void @array_dim_to_jsonb(%struct.TYPE_4__* %65, i32 %67, i32 %68, i32* %69, i32* %70, i32* %71, i32* %72, i32 %73, i32 %74)
  br label %75

75:                                               ; preds = %64, %44
  br label %76

76:                                               ; preds = %75
  %77 = load i32, i32* %19, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %19, align 4
  br label %31

79:                                               ; preds = %31
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  %82 = load i32, i32* @WJB_END_ARRAY, align 4
  %83 = call i8* @pushJsonbValue(i32* %81, i32 %82, i32* null)
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 1
  store i8* %83, i8** %85, align 8
  ret void
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i8* @pushJsonbValue(i32*, i32, i32*) #1

declare dso_local i32 @datum_to_jsonb(i32, i32, %struct.TYPE_4__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
