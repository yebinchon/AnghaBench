; ModuleID = '/home/carl/AnghaBench/openwrt/package/utils/fbtest/src/extr_fbtest.c_draw4field.c'
source_filename = "/home/carl/AnghaBench/openwrt/package/utils/fbtest/src/extr_fbtest.c_draw4field.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.colour = type { i32 }
%struct.pixelformat = type { i64 }
%struct.vidsize = type { i32, i32 }
%struct.rect = type { i32, i32, i32, i32, %struct.colour* }

@CLUT4 = common dso_local global i64 0, align 8
@CLUT8 = common dso_local global i64 0, align 8
@colourtable = common dso_local global %struct.colour* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @draw4field(i8* %0, %struct.pixelformat* %1, %struct.vidsize* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.pixelformat*, align 8
  %6 = alloca %struct.vidsize*, align 8
  %7 = alloca %struct.rect, align 8
  %8 = alloca %struct.colour, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.pixelformat* %1, %struct.pixelformat** %5, align 8
  store %struct.vidsize* %2, %struct.vidsize** %6, align 8
  %11 = getelementptr inbounds %struct.colour, %struct.colour* %8, i32 0, i32 0
  store i32 1, i32* %11, align 4
  %12 = load %struct.vidsize*, %struct.vidsize** %6, align 8
  %13 = getelementptr inbounds %struct.vidsize, %struct.vidsize* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %9, align 4
  %15 = load %struct.vidsize*, %struct.vidsize** %6, align 8
  %16 = getelementptr inbounds %struct.vidsize, %struct.vidsize* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %10, align 4
  %18 = load i32, i32* %9, align 4
  %19 = ashr i32 %18, 1
  %20 = getelementptr inbounds %struct.rect, %struct.rect* %7, i32 0, i32 0
  store i32 %19, i32* %20, align 8
  %21 = load i32, i32* %10, align 4
  %22 = ashr i32 %21, 1
  %23 = getelementptr inbounds %struct.rect, %struct.rect* %7, i32 0, i32 1
  store i32 %22, i32* %23, align 4
  %24 = getelementptr inbounds %struct.rect, %struct.rect* %7, i32 0, i32 2
  store i32 0, i32* %24, align 8
  %25 = getelementptr inbounds %struct.rect, %struct.rect* %7, i32 0, i32 3
  store i32 0, i32* %25, align 4
  %26 = load %struct.pixelformat*, %struct.pixelformat** %5, align 8
  %27 = getelementptr inbounds %struct.pixelformat, %struct.pixelformat* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @CLUT4, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %37, label %31

31:                                               ; preds = %3
  %32 = load %struct.pixelformat*, %struct.pixelformat** %5, align 8
  %33 = getelementptr inbounds %struct.pixelformat, %struct.pixelformat* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @CLUT8, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %31, %3
  %38 = getelementptr inbounds %struct.rect, %struct.rect* %7, i32 0, i32 4
  store %struct.colour* %8, %struct.colour** %38, align 8
  br label %43

39:                                               ; preds = %31
  %40 = load %struct.colour*, %struct.colour** @colourtable, align 8
  %41 = getelementptr inbounds %struct.colour, %struct.colour* %40, i64 1
  %42 = getelementptr inbounds %struct.rect, %struct.rect* %7, i32 0, i32 4
  store %struct.colour* %41, %struct.colour** %42, align 8
  br label %43

43:                                               ; preds = %39, %37
  %44 = load i8*, i8** %4, align 8
  %45 = load %struct.pixelformat*, %struct.pixelformat** %5, align 8
  %46 = load %struct.vidsize*, %struct.vidsize** %6, align 8
  %47 = call i32 @drawrect(i8* %44, %struct.rect* %7, %struct.pixelformat* %45, %struct.vidsize* %46)
  %48 = load i32, i32* %10, align 4
  %49 = sdiv i32 %48, 2
  %50 = getelementptr inbounds %struct.rect, %struct.rect* %7, i32 0, i32 2
  store i32 %49, i32* %50, align 8
  %51 = getelementptr inbounds %struct.rect, %struct.rect* %7, i32 0, i32 3
  store i32 0, i32* %51, align 4
  %52 = load %struct.pixelformat*, %struct.pixelformat** %5, align 8
  %53 = getelementptr inbounds %struct.pixelformat, %struct.pixelformat* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @CLUT4, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %63, label %57

57:                                               ; preds = %43
  %58 = load %struct.pixelformat*, %struct.pixelformat** %5, align 8
  %59 = getelementptr inbounds %struct.pixelformat, %struct.pixelformat* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @CLUT8, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %65

63:                                               ; preds = %57, %43
  %64 = getelementptr inbounds %struct.colour, %struct.colour* %8, i32 0, i32 0
  store i32 2, i32* %64, align 4
  br label %69

65:                                               ; preds = %57
  %66 = load %struct.colour*, %struct.colour** @colourtable, align 8
  %67 = getelementptr inbounds %struct.colour, %struct.colour* %66, i64 2
  %68 = getelementptr inbounds %struct.rect, %struct.rect* %7, i32 0, i32 4
  store %struct.colour* %67, %struct.colour** %68, align 8
  br label %69

69:                                               ; preds = %65, %63
  %70 = load i8*, i8** %4, align 8
  %71 = load %struct.pixelformat*, %struct.pixelformat** %5, align 8
  %72 = load %struct.vidsize*, %struct.vidsize** %6, align 8
  %73 = call i32 @drawrect(i8* %70, %struct.rect* %7, %struct.pixelformat* %71, %struct.vidsize* %72)
  %74 = getelementptr inbounds %struct.rect, %struct.rect* %7, i32 0, i32 2
  store i32 0, i32* %74, align 8
  %75 = load i32, i32* %9, align 4
  %76 = sdiv i32 %75, 2
  %77 = getelementptr inbounds %struct.rect, %struct.rect* %7, i32 0, i32 3
  store i32 %76, i32* %77, align 4
  %78 = load %struct.pixelformat*, %struct.pixelformat** %5, align 8
  %79 = getelementptr inbounds %struct.pixelformat, %struct.pixelformat* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @CLUT4, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %89, label %83

83:                                               ; preds = %69
  %84 = load %struct.pixelformat*, %struct.pixelformat** %5, align 8
  %85 = getelementptr inbounds %struct.pixelformat, %struct.pixelformat* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @CLUT8, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %89, label %91

89:                                               ; preds = %83, %69
  %90 = getelementptr inbounds %struct.colour, %struct.colour* %8, i32 0, i32 0
  store i32 3, i32* %90, align 4
  br label %95

91:                                               ; preds = %83
  %92 = load %struct.colour*, %struct.colour** @colourtable, align 8
  %93 = getelementptr inbounds %struct.colour, %struct.colour* %92, i64 3
  %94 = getelementptr inbounds %struct.rect, %struct.rect* %7, i32 0, i32 4
  store %struct.colour* %93, %struct.colour** %94, align 8
  br label %95

95:                                               ; preds = %91, %89
  %96 = load i8*, i8** %4, align 8
  %97 = load %struct.pixelformat*, %struct.pixelformat** %5, align 8
  %98 = load %struct.vidsize*, %struct.vidsize** %6, align 8
  %99 = call i32 @drawrect(i8* %96, %struct.rect* %7, %struct.pixelformat* %97, %struct.vidsize* %98)
  %100 = load i32, i32* %10, align 4
  %101 = sdiv i32 %100, 2
  %102 = getelementptr inbounds %struct.rect, %struct.rect* %7, i32 0, i32 2
  store i32 %101, i32* %102, align 8
  %103 = load i32, i32* %9, align 4
  %104 = sdiv i32 %103, 2
  %105 = getelementptr inbounds %struct.rect, %struct.rect* %7, i32 0, i32 3
  store i32 %104, i32* %105, align 4
  %106 = load %struct.pixelformat*, %struct.pixelformat** %5, align 8
  %107 = getelementptr inbounds %struct.pixelformat, %struct.pixelformat* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @CLUT4, align 8
  %110 = icmp eq i64 %108, %109
  br i1 %110, label %117, label %111

111:                                              ; preds = %95
  %112 = load %struct.pixelformat*, %struct.pixelformat** %5, align 8
  %113 = getelementptr inbounds %struct.pixelformat, %struct.pixelformat* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* @CLUT8, align 8
  %116 = icmp eq i64 %114, %115
  br i1 %116, label %117, label %119

117:                                              ; preds = %111, %95
  %118 = getelementptr inbounds %struct.colour, %struct.colour* %8, i32 0, i32 0
  store i32 0, i32* %118, align 4
  br label %123

119:                                              ; preds = %111
  %120 = load %struct.colour*, %struct.colour** @colourtable, align 8
  %121 = getelementptr inbounds %struct.colour, %struct.colour* %120, i64 0
  %122 = getelementptr inbounds %struct.rect, %struct.rect* %7, i32 0, i32 4
  store %struct.colour* %121, %struct.colour** %122, align 8
  br label %123

123:                                              ; preds = %119, %117
  %124 = load i8*, i8** %4, align 8
  %125 = load %struct.pixelformat*, %struct.pixelformat** %5, align 8
  %126 = load %struct.vidsize*, %struct.vidsize** %6, align 8
  %127 = call i32 @drawrect(i8* %124, %struct.rect* %7, %struct.pixelformat* %125, %struct.vidsize* %126)
  ret void
}

declare dso_local i32 @drawrect(i8*, %struct.rect*, %struct.pixelformat*, %struct.vidsize*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
