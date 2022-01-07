; ModuleID = '/home/carl/AnghaBench/micropython/extmod/re1.5/extr_compilecode.c_re1_5_compilecode.c'
source_filename = "/home/carl/AnghaBench/micropython/extmod/re1.5/extr_compilecode.c_re1_5_compilecode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32*, i64, i64, i64 }

@RSplit = common dso_local global i32 0, align 4
@Any = common dso_local global i32 0, align 4
@Jmp = common dso_local global i32 0, align 4
@Save = common dso_local global i8* null, align 8
@Match = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @re1_5_compilecode(%struct.TYPE_4__* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i8*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i8* %1, i8** %5, align 8
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 1
  store i64 0, i64* %7, align 8
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 2
  store i64 0, i64* %9, align 8
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 3
  store i64 0, i64* %11, align 8
  %12 = load i32, i32* @RSplit, align 4
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = add nsw i64 %18, 1
  store i64 %19, i64* %17, align 8
  %20 = getelementptr inbounds i32, i32* %15, i64 %18
  store i32 %12, i32* %20, align 4
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = add nsw i64 %26, 1
  store i64 %27, i64* %25, align 8
  %28 = getelementptr inbounds i32, i32* %23, i64 %26
  store i32 3, i32* %28, align 4
  %29 = load i32, i32* @Any, align 4
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = add nsw i64 %35, 1
  store i64 %36, i64* %34, align 8
  %37 = getelementptr inbounds i32, i32* %32, i64 %35
  store i32 %29, i32* %37, align 4
  %38 = load i32, i32* @Jmp, align 4
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = add nsw i64 %44, 1
  store i64 %45, i64* %43, align 8
  %46 = getelementptr inbounds i32, i32* %41, i64 %44
  store i32 %38, i32* %46, align 4
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = add nsw i64 %52, 1
  store i64 %53, i64* %51, align 8
  %54 = getelementptr inbounds i32, i32* %49, i64 %52
  store i32 -5, i32* %54, align 4
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = add nsw i64 %57, 3
  store i64 %58, i64* %56, align 8
  %59 = load i8*, i8** @Save, align 8
  %60 = ptrtoint i8* %59 to i32
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = add nsw i64 %66, 1
  store i64 %67, i64* %65, align 8
  %68 = getelementptr inbounds i32, i32* %63, i64 %66
  store i32 %60, i32* %68, align 4
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = add nsw i64 %74, 1
  store i64 %75, i64* %73, align 8
  %76 = getelementptr inbounds i32, i32* %71, i64 %74
  store i32 0, i32* %76, align 4
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = add nsw i64 %79, 1
  store i64 %80, i64* %78, align 8
  %81 = load i8*, i8** %5, align 8
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %83 = call i8* @_compilecode(i8* %81, %struct.TYPE_4__* %82, i32 0)
  store i8* %83, i8** %5, align 8
  %84 = load i8*, i8** %5, align 8
  %85 = icmp eq i8* %84, null
  br i1 %85, label %91, label %86

86:                                               ; preds = %2
  %87 = load i8*, i8** %5, align 8
  %88 = load i8, i8* %87, align 1
  %89 = sext i8 %88 to i32
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %86, %2
  store i32 1, i32* %3, align 4
  br label %128

92:                                               ; preds = %86
  %93 = load i8*, i8** @Save, align 8
  %94 = ptrtoint i8* %93 to i32
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 0
  %97 = load i32*, i32** %96, align 8
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 2
  %100 = load i64, i64* %99, align 8
  %101 = add nsw i64 %100, 1
  store i64 %101, i64* %99, align 8
  %102 = getelementptr inbounds i32, i32* %97, i64 %100
  store i32 %94, i32* %102, align 4
  %103 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 0
  %105 = load i32*, i32** %104, align 8
  %106 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 2
  %108 = load i64, i64* %107, align 8
  %109 = add nsw i64 %108, 1
  store i64 %109, i64* %107, align 8
  %110 = getelementptr inbounds i32, i32* %105, i64 %108
  store i32 1, i32* %110, align 4
  %111 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = add nsw i64 %113, 1
  store i64 %114, i64* %112, align 8
  %115 = load i32, i32* @Match, align 4
  %116 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 0
  %118 = load i32*, i32** %117, align 8
  %119 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 2
  %121 = load i64, i64* %120, align 8
  %122 = add nsw i64 %121, 1
  store i64 %122, i64* %120, align 8
  %123 = getelementptr inbounds i32, i32* %118, i64 %121
  store i32 %115, i32* %123, align 4
  %124 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 1
  %126 = load i64, i64* %125, align 8
  %127 = add nsw i64 %126, 1
  store i64 %127, i64* %125, align 8
  store i32 0, i32* %3, align 4
  br label %128

128:                                              ; preds = %92, %91
  %129 = load i32, i32* %3, align 4
  ret i32 %129
}

declare dso_local i8* @_compilecode(i8*, %struct.TYPE_4__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
