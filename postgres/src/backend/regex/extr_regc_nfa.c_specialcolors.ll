; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/regex/extr_regc_nfa.c_specialcolors.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/regex/extr_regc_nfa.c_specialcolors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfa = type { i64*, i64*, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64*, i64* }

@COLORLESS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfa*)* @specialcolors to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @specialcolors(%struct.nfa* %0) #0 {
  %2 = alloca %struct.nfa*, align 8
  store %struct.nfa* %0, %struct.nfa** %2, align 8
  %3 = load %struct.nfa*, %struct.nfa** %2, align 8
  %4 = getelementptr inbounds %struct.nfa, %struct.nfa* %3, i32 0, i32 2
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %6 = icmp eq %struct.TYPE_2__* %5, null
  br i1 %6, label %7, label %44

7:                                                ; preds = %1
  %8 = load %struct.nfa*, %struct.nfa** %2, align 8
  %9 = getelementptr inbounds %struct.nfa, %struct.nfa* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 8
  %11 = call i8* @pseudocolor(i32 %10)
  %12 = ptrtoint i8* %11 to i64
  %13 = load %struct.nfa*, %struct.nfa** %2, align 8
  %14 = getelementptr inbounds %struct.nfa, %struct.nfa* %13, i32 0, i32 0
  %15 = load i64*, i64** %14, align 8
  %16 = getelementptr inbounds i64, i64* %15, i64 0
  store i64 %12, i64* %16, align 8
  %17 = load %struct.nfa*, %struct.nfa** %2, align 8
  %18 = getelementptr inbounds %struct.nfa, %struct.nfa* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 8
  %20 = call i8* @pseudocolor(i32 %19)
  %21 = ptrtoint i8* %20 to i64
  %22 = load %struct.nfa*, %struct.nfa** %2, align 8
  %23 = getelementptr inbounds %struct.nfa, %struct.nfa* %22, i32 0, i32 0
  %24 = load i64*, i64** %23, align 8
  %25 = getelementptr inbounds i64, i64* %24, i64 1
  store i64 %21, i64* %25, align 8
  %26 = load %struct.nfa*, %struct.nfa** %2, align 8
  %27 = getelementptr inbounds %struct.nfa, %struct.nfa* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 8
  %29 = call i8* @pseudocolor(i32 %28)
  %30 = ptrtoint i8* %29 to i64
  %31 = load %struct.nfa*, %struct.nfa** %2, align 8
  %32 = getelementptr inbounds %struct.nfa, %struct.nfa* %31, i32 0, i32 1
  %33 = load i64*, i64** %32, align 8
  %34 = getelementptr inbounds i64, i64* %33, i64 0
  store i64 %30, i64* %34, align 8
  %35 = load %struct.nfa*, %struct.nfa** %2, align 8
  %36 = getelementptr inbounds %struct.nfa, %struct.nfa* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 8
  %38 = call i8* @pseudocolor(i32 %37)
  %39 = ptrtoint i8* %38 to i64
  %40 = load %struct.nfa*, %struct.nfa** %2, align 8
  %41 = getelementptr inbounds %struct.nfa, %struct.nfa* %40, i32 0, i32 1
  %42 = load i64*, i64** %41, align 8
  %43 = getelementptr inbounds i64, i64* %42, i64 1
  store i64 %39, i64* %43, align 8
  br label %133

44:                                               ; preds = %1
  %45 = load %struct.nfa*, %struct.nfa** %2, align 8
  %46 = getelementptr inbounds %struct.nfa, %struct.nfa* %45, i32 0, i32 2
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i64*, i64** %48, align 8
  %50 = getelementptr inbounds i64, i64* %49, i64 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @COLORLESS, align 8
  %53 = icmp ne i64 %51, %52
  %54 = zext i1 %53 to i32
  %55 = call i32 @assert(i32 %54)
  %56 = load %struct.nfa*, %struct.nfa** %2, align 8
  %57 = getelementptr inbounds %struct.nfa, %struct.nfa* %56, i32 0, i32 2
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i64*, i64** %59, align 8
  %61 = getelementptr inbounds i64, i64* %60, i64 0
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.nfa*, %struct.nfa** %2, align 8
  %64 = getelementptr inbounds %struct.nfa, %struct.nfa* %63, i32 0, i32 0
  %65 = load i64*, i64** %64, align 8
  %66 = getelementptr inbounds i64, i64* %65, i64 0
  store i64 %62, i64* %66, align 8
  %67 = load %struct.nfa*, %struct.nfa** %2, align 8
  %68 = getelementptr inbounds %struct.nfa, %struct.nfa* %67, i32 0, i32 2
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = load i64*, i64** %70, align 8
  %72 = getelementptr inbounds i64, i64* %71, i64 1
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @COLORLESS, align 8
  %75 = icmp ne i64 %73, %74
  %76 = zext i1 %75 to i32
  %77 = call i32 @assert(i32 %76)
  %78 = load %struct.nfa*, %struct.nfa** %2, align 8
  %79 = getelementptr inbounds %struct.nfa, %struct.nfa* %78, i32 0, i32 2
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  %82 = load i64*, i64** %81, align 8
  %83 = getelementptr inbounds i64, i64* %82, i64 1
  %84 = load i64, i64* %83, align 8
  %85 = load %struct.nfa*, %struct.nfa** %2, align 8
  %86 = getelementptr inbounds %struct.nfa, %struct.nfa* %85, i32 0, i32 0
  %87 = load i64*, i64** %86, align 8
  %88 = getelementptr inbounds i64, i64* %87, i64 1
  store i64 %84, i64* %88, align 8
  %89 = load %struct.nfa*, %struct.nfa** %2, align 8
  %90 = getelementptr inbounds %struct.nfa, %struct.nfa* %89, i32 0, i32 2
  %91 = load %struct.TYPE_2__*, %struct.TYPE_2__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 1
  %93 = load i64*, i64** %92, align 8
  %94 = getelementptr inbounds i64, i64* %93, i64 0
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @COLORLESS, align 8
  %97 = icmp ne i64 %95, %96
  %98 = zext i1 %97 to i32
  %99 = call i32 @assert(i32 %98)
  %100 = load %struct.nfa*, %struct.nfa** %2, align 8
  %101 = getelementptr inbounds %struct.nfa, %struct.nfa* %100, i32 0, i32 2
  %102 = load %struct.TYPE_2__*, %struct.TYPE_2__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 1
  %104 = load i64*, i64** %103, align 8
  %105 = getelementptr inbounds i64, i64* %104, i64 0
  %106 = load i64, i64* %105, align 8
  %107 = load %struct.nfa*, %struct.nfa** %2, align 8
  %108 = getelementptr inbounds %struct.nfa, %struct.nfa* %107, i32 0, i32 1
  %109 = load i64*, i64** %108, align 8
  %110 = getelementptr inbounds i64, i64* %109, i64 0
  store i64 %106, i64* %110, align 8
  %111 = load %struct.nfa*, %struct.nfa** %2, align 8
  %112 = getelementptr inbounds %struct.nfa, %struct.nfa* %111, i32 0, i32 2
  %113 = load %struct.TYPE_2__*, %struct.TYPE_2__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 1
  %115 = load i64*, i64** %114, align 8
  %116 = getelementptr inbounds i64, i64* %115, i64 1
  %117 = load i64, i64* %116, align 8
  %118 = load i64, i64* @COLORLESS, align 8
  %119 = icmp ne i64 %117, %118
  %120 = zext i1 %119 to i32
  %121 = call i32 @assert(i32 %120)
  %122 = load %struct.nfa*, %struct.nfa** %2, align 8
  %123 = getelementptr inbounds %struct.nfa, %struct.nfa* %122, i32 0, i32 2
  %124 = load %struct.TYPE_2__*, %struct.TYPE_2__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i32 0, i32 1
  %126 = load i64*, i64** %125, align 8
  %127 = getelementptr inbounds i64, i64* %126, i64 1
  %128 = load i64, i64* %127, align 8
  %129 = load %struct.nfa*, %struct.nfa** %2, align 8
  %130 = getelementptr inbounds %struct.nfa, %struct.nfa* %129, i32 0, i32 1
  %131 = load i64*, i64** %130, align 8
  %132 = getelementptr inbounds i64, i64* %131, i64 1
  store i64 %128, i64* %132, align 8
  br label %133

133:                                              ; preds = %44, %7
  ret void
}

declare dso_local i8* @pseudocolor(i32) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
