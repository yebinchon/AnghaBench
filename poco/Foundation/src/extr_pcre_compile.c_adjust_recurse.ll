; ModuleID = '/home/carl/AnghaBench/poco/Foundation/src/extr_pcre_compile.c_adjust_recurse.c'
source_filename = "/home/carl/AnghaBench/poco/Foundation/src/extr_pcre_compile.c_adjust_recurse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32*, i64, i32* }

@LINK_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32, %struct.TYPE_3__*, i64)* @adjust_recurse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @adjust_recurse(i32* %0, i32 %1, i32 %2, %struct.TYPE_3__* %3, i64 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_3__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.TYPE_3__* %3, %struct.TYPE_3__** %9, align 8
  store i64 %4, i64* %10, align 8
  %14 = load i32*, i32** %6, align 8
  store i32* %14, i32** %13, align 8
  br label %15

15:                                               ; preds = %78, %5
  %16 = load i32*, i32** %13, align 8
  %17 = load i32, i32* %8, align 4
  %18 = call i64 @find_recurse(i32* %16, i32 %17)
  %19 = inttoptr i64 %18 to i32*
  store i32* %19, i32** %13, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %83

21:                                               ; preds = %15
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = inttoptr i64 %24 to i32*
  %26 = load i64, i64* %10, align 8
  %27 = getelementptr inbounds i32, i32* %25, i64 %26
  store i32* %27, i32** %12, align 8
  br label %28

28:                                               ; preds = %49, %21
  %29 = load i32*, i32** %12, align 8
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = icmp ult i32* %29, %32
  br i1 %33, label %34, label %53

34:                                               ; preds = %28
  %35 = load i32*, i32** %12, align 8
  %36 = call i64 @GET(i32* %35, i32 0)
  %37 = trunc i64 %36 to i32
  store i32 %37, i32* %11, align 4
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 2
  %40 = load i32*, i32** %39, align 8
  %41 = load i32, i32* %11, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = load i32*, i32** %13, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 1
  %46 = icmp eq i32* %43, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %34
  br label %53

48:                                               ; preds = %34
  br label %49

49:                                               ; preds = %48
  %50 = load i64, i64* @LINK_SIZE, align 8
  %51 = load i32*, i32** %12, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 %50
  store i32* %52, i32** %12, align 8
  br label %28

53:                                               ; preds = %47, %28
  %54 = load i32*, i32** %12, align 8
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = icmp uge i32* %54, %57
  br i1 %58, label %59, label %78

59:                                               ; preds = %53
  %60 = load i32*, i32** %13, align 8
  %61 = call i64 @GET(i32* %60, i32 1)
  %62 = trunc i64 %61 to i32
  store i32 %62, i32* %11, align 4
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 2
  %65 = load i32*, i32** %64, align 8
  %66 = load i32, i32* %11, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  %69 = load i32*, i32** %6, align 8
  %70 = icmp uge i32* %68, %69
  br i1 %70, label %71, label %77

71:                                               ; preds = %59
  %72 = load i32*, i32** %13, align 8
  %73 = load i32, i32* %11, align 4
  %74 = load i32, i32* %7, align 4
  %75 = add nsw i32 %73, %74
  %76 = call i32 @PUT(i32* %72, i32 1, i32 %75)
  br label %77

77:                                               ; preds = %71, %59
  br label %78

78:                                               ; preds = %77, %53
  %79 = load i64, i64* @LINK_SIZE, align 8
  %80 = add nsw i64 1, %79
  %81 = load i32*, i32** %13, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 %80
  store i32* %82, i32** %13, align 8
  br label %15

83:                                               ; preds = %15
  %84 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = inttoptr i64 %86 to i32*
  %88 = load i64, i64* %10, align 8
  %89 = getelementptr inbounds i32, i32* %87, i64 %88
  store i32* %89, i32** %12, align 8
  br label %90

90:                                               ; preds = %105, %83
  %91 = load i32*, i32** %12, align 8
  %92 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 0
  %94 = load i32*, i32** %93, align 8
  %95 = icmp ult i32* %91, %94
  br i1 %95, label %96, label %109

96:                                               ; preds = %90
  %97 = load i32*, i32** %12, align 8
  %98 = call i64 @GET(i32* %97, i32 0)
  %99 = trunc i64 %98 to i32
  store i32 %99, i32* %11, align 4
  %100 = load i32*, i32** %12, align 8
  %101 = load i32, i32* %11, align 4
  %102 = load i32, i32* %7, align 4
  %103 = add nsw i32 %101, %102
  %104 = call i32 @PUT(i32* %100, i32 0, i32 %103)
  br label %105

105:                                              ; preds = %96
  %106 = load i64, i64* @LINK_SIZE, align 8
  %107 = load i32*, i32** %12, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 %106
  store i32* %108, i32** %12, align 8
  br label %90

109:                                              ; preds = %90
  ret void
}

declare dso_local i64 @find_recurse(i32*, i32) #1

declare dso_local i64 @GET(i32*, i32) #1

declare dso_local i32 @PUT(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
