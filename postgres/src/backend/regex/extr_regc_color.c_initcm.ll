; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/regex/extr_regc_color.c_initcm.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/regex/extr_regc_color.c_initcm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vars = type { i32 }
%struct.colormap = type { i32, i32, i32, i32*, i32*, i64, i32*, i32*, %struct.colordesc*, i64, i64, %struct.colordesc*, i32, %struct.vars*, i32 }
%struct.colordesc = type { i32, i32, i32, i64, i32*, i32 }

@CMMAGIC = common dso_local global i32 0, align 4
@NINLINECDS = common dso_local global i32 0, align 4
@MAX_SIMPLE_CHR = common dso_local global i32 0, align 4
@CHR_MIN = common dso_local global i32 0, align 4
@NOSUB = common dso_local global i32 0, align 4
@REG_ESPACE = common dso_local global i32 0, align 4
@WHITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vars*, %struct.colormap*)* @initcm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @initcm(%struct.vars* %0, %struct.colormap* %1) #0 {
  %3 = alloca %struct.vars*, align 8
  %4 = alloca %struct.colormap*, align 8
  %5 = alloca %struct.colordesc*, align 8
  store %struct.vars* %0, %struct.vars** %3, align 8
  store %struct.colormap* %1, %struct.colormap** %4, align 8
  %6 = load i32, i32* @CMMAGIC, align 4
  %7 = load %struct.colormap*, %struct.colormap** %4, align 8
  %8 = getelementptr inbounds %struct.colormap, %struct.colormap* %7, i32 0, i32 14
  store i32 %6, i32* %8, align 8
  %9 = load %struct.vars*, %struct.vars** %3, align 8
  %10 = load %struct.colormap*, %struct.colormap** %4, align 8
  %11 = getelementptr inbounds %struct.colormap, %struct.colormap* %10, i32 0, i32 13
  store %struct.vars* %9, %struct.vars** %11, align 8
  %12 = load i32, i32* @NINLINECDS, align 4
  %13 = load %struct.colormap*, %struct.colormap** %4, align 8
  %14 = getelementptr inbounds %struct.colormap, %struct.colormap* %13, i32 0, i32 12
  store i32 %12, i32* %14, align 8
  %15 = load %struct.colormap*, %struct.colormap** %4, align 8
  %16 = getelementptr inbounds %struct.colormap, %struct.colormap* %15, i32 0, i32 11
  %17 = load %struct.colordesc*, %struct.colordesc** %16, align 8
  %18 = load %struct.colormap*, %struct.colormap** %4, align 8
  %19 = getelementptr inbounds %struct.colormap, %struct.colormap* %18, i32 0, i32 8
  store %struct.colordesc* %17, %struct.colordesc** %19, align 8
  %20 = load %struct.colormap*, %struct.colormap** %4, align 8
  %21 = getelementptr inbounds %struct.colormap, %struct.colormap* %20, i32 0, i32 10
  store i64 0, i64* %21, align 8
  %22 = load %struct.colormap*, %struct.colormap** %4, align 8
  %23 = getelementptr inbounds %struct.colormap, %struct.colormap* %22, i32 0, i32 9
  store i64 0, i64* %23, align 8
  %24 = load %struct.colormap*, %struct.colormap** %4, align 8
  %25 = getelementptr inbounds %struct.colormap, %struct.colormap* %24, i32 0, i32 8
  %26 = load %struct.colordesc*, %struct.colordesc** %25, align 8
  store %struct.colordesc* %26, %struct.colordesc** %5, align 8
  %27 = load i32, i32* @MAX_SIMPLE_CHR, align 4
  %28 = load i32, i32* @CHR_MIN, align 4
  %29 = sub nsw i32 %27, %28
  %30 = add nsw i32 %29, 1
  %31 = load %struct.colordesc*, %struct.colordesc** %5, align 8
  %32 = getelementptr inbounds %struct.colordesc, %struct.colordesc* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 8
  %33 = load %struct.colordesc*, %struct.colordesc** %5, align 8
  %34 = getelementptr inbounds %struct.colordesc, %struct.colordesc* %33, i32 0, i32 1
  store i32 1, i32* %34, align 4
  %35 = load i32, i32* @NOSUB, align 4
  %36 = load %struct.colordesc*, %struct.colordesc** %5, align 8
  %37 = getelementptr inbounds %struct.colordesc, %struct.colordesc* %36, i32 0, i32 5
  store i32 %35, i32* %37, align 8
  %38 = load %struct.colordesc*, %struct.colordesc** %5, align 8
  %39 = getelementptr inbounds %struct.colordesc, %struct.colordesc* %38, i32 0, i32 4
  store i32* null, i32** %39, align 8
  %40 = load i32, i32* @CHR_MIN, align 4
  %41 = load %struct.colordesc*, %struct.colordesc** %5, align 8
  %42 = getelementptr inbounds %struct.colordesc, %struct.colordesc* %41, i32 0, i32 2
  store i32 %40, i32* %42, align 8
  %43 = load %struct.colordesc*, %struct.colordesc** %5, align 8
  %44 = getelementptr inbounds %struct.colordesc, %struct.colordesc* %43, i32 0, i32 3
  store i64 0, i64* %44, align 8
  %45 = load i32, i32* @MAX_SIMPLE_CHR, align 4
  %46 = load i32, i32* @CHR_MIN, align 4
  %47 = sub nsw i32 %45, %46
  %48 = add nsw i32 %47, 1
  %49 = sext i32 %48 to i64
  %50 = mul i64 %49, 4
  %51 = trunc i64 %50 to i32
  %52 = call i64 @MALLOC(i32 %51)
  %53 = inttoptr i64 %52 to i32*
  %54 = load %struct.colormap*, %struct.colormap** %4, align 8
  %55 = getelementptr inbounds %struct.colormap, %struct.colormap* %54, i32 0, i32 7
  store i32* %53, i32** %55, align 8
  %56 = load %struct.colormap*, %struct.colormap** %4, align 8
  %57 = getelementptr inbounds %struct.colormap, %struct.colormap* %56, i32 0, i32 7
  %58 = load i32*, i32** %57, align 8
  %59 = icmp eq i32* %58, null
  br i1 %59, label %60, label %67

60:                                               ; preds = %2
  %61 = load i32, i32* @REG_ESPACE, align 4
  %62 = call i32 @CERR(i32 %61)
  %63 = load %struct.colormap*, %struct.colormap** %4, align 8
  %64 = getelementptr inbounds %struct.colormap, %struct.colormap* %63, i32 0, i32 4
  store i32* null, i32** %64, align 8
  %65 = load %struct.colormap*, %struct.colormap** %4, align 8
  %66 = getelementptr inbounds %struct.colormap, %struct.colormap* %65, i32 0, i32 3
  store i32* null, i32** %66, align 8
  br label %117

67:                                               ; preds = %2
  %68 = load %struct.colormap*, %struct.colormap** %4, align 8
  %69 = getelementptr inbounds %struct.colormap, %struct.colormap* %68, i32 0, i32 7
  %70 = load i32*, i32** %69, align 8
  %71 = load i32, i32* @WHITE, align 4
  %72 = load i32, i32* @MAX_SIMPLE_CHR, align 4
  %73 = load i32, i32* @CHR_MIN, align 4
  %74 = sub nsw i32 %72, %73
  %75 = add nsw i32 %74, 1
  %76 = sext i32 %75 to i64
  %77 = mul i64 %76, 4
  %78 = trunc i64 %77 to i32
  %79 = call i32 @memset(i32* %70, i32 %71, i32 %78)
  %80 = load %struct.colormap*, %struct.colormap** %4, align 8
  %81 = getelementptr inbounds %struct.colormap, %struct.colormap* %80, i32 0, i32 6
  %82 = load i32*, i32** %81, align 8
  %83 = call i32 @memset(i32* %82, i32 0, i32 8)
  %84 = load %struct.colormap*, %struct.colormap** %4, align 8
  %85 = getelementptr inbounds %struct.colormap, %struct.colormap* %84, i32 0, i32 5
  store i64 0, i64* %85, align 8
  %86 = load %struct.colormap*, %struct.colormap** %4, align 8
  %87 = getelementptr inbounds %struct.colormap, %struct.colormap* %86, i32 0, i32 4
  store i32* null, i32** %87, align 8
  %88 = load %struct.colormap*, %struct.colormap** %4, align 8
  %89 = getelementptr inbounds %struct.colormap, %struct.colormap* %88, i32 0, i32 0
  store i32 4, i32* %89, align 8
  %90 = load %struct.colormap*, %struct.colormap** %4, align 8
  %91 = getelementptr inbounds %struct.colormap, %struct.colormap* %90, i32 0, i32 1
  store i32 1, i32* %91, align 4
  %92 = load %struct.colormap*, %struct.colormap** %4, align 8
  %93 = getelementptr inbounds %struct.colormap, %struct.colormap* %92, i32 0, i32 2
  store i32 1, i32* %93, align 8
  %94 = load %struct.colormap*, %struct.colormap** %4, align 8
  %95 = getelementptr inbounds %struct.colormap, %struct.colormap* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = sext i32 %96 to i64
  %98 = mul i64 %97, 4
  %99 = trunc i64 %98 to i32
  %100 = call i64 @MALLOC(i32 %99)
  %101 = inttoptr i64 %100 to i32*
  %102 = load %struct.colormap*, %struct.colormap** %4, align 8
  %103 = getelementptr inbounds %struct.colormap, %struct.colormap* %102, i32 0, i32 3
  store i32* %101, i32** %103, align 8
  %104 = load %struct.colormap*, %struct.colormap** %4, align 8
  %105 = getelementptr inbounds %struct.colormap, %struct.colormap* %104, i32 0, i32 3
  %106 = load i32*, i32** %105, align 8
  %107 = icmp eq i32* %106, null
  br i1 %107, label %108, label %111

108:                                              ; preds = %67
  %109 = load i32, i32* @REG_ESPACE, align 4
  %110 = call i32 @CERR(i32 %109)
  br label %117

111:                                              ; preds = %67
  %112 = load i32, i32* @WHITE, align 4
  %113 = load %struct.colormap*, %struct.colormap** %4, align 8
  %114 = getelementptr inbounds %struct.colormap, %struct.colormap* %113, i32 0, i32 3
  %115 = load i32*, i32** %114, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 0
  store i32 %112, i32* %116, align 4
  br label %117

117:                                              ; preds = %111, %108, %60
  ret void
}

declare dso_local i64 @MALLOC(i32) #1

declare dso_local i32 @CERR(i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
