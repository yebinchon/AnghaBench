; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/sqlite3/extr_sqlite3.c_pageFindSlot.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/sqlite3/extr_sqlite3.c_pageFindSlot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32*, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@SQLITE_CORRUPT_BKPT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_5__*, i32, i32*)* @pageFindSlot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @pageFindSlot(%struct.TYPE_5__* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %8, align 4
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  store i32* %20, i32** %9, align 8
  %21 = load i32, i32* %8, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %10, align 4
  %23 = load i32*, i32** %9, align 8
  %24 = load i32, i32* %10, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = call i32 @get2byte(i32* %26)
  store i32 %27, i32* %11, align 4
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 4
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %13, align 4
  %33 = load i32, i32* %11, align 4
  %34 = icmp sgt i32 %33, 0
  %35 = zext i1 %34 to i32
  %36 = call i32 @assert(i32 %35)
  br label %37

37:                                               ; preds = %142, %3
  %38 = load i32, i32* %11, align 4
  %39 = load i32, i32* %13, align 4
  %40 = sub nsw i32 %39, 4
  %41 = icmp sgt i32 %38, %40
  br i1 %41, label %47, label %42

42:                                               ; preds = %37
  %43 = load i32, i32* %11, align 4
  %44 = load i32, i32* %10, align 4
  %45 = add nsw i32 %44, 4
  %46 = icmp slt i32 %43, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %42, %37
  %48 = load i32, i32* @SQLITE_CORRUPT_BKPT, align 4
  %49 = load i32*, i32** %7, align 8
  store i32 %48, i32* %49, align 4
  store i32* null, i32** %4, align 8
  br label %146

50:                                               ; preds = %42
  %51 = load i32*, i32** %9, align 8
  %52 = load i32, i32* %11, align 4
  %53 = add nsw i32 %52, 2
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %51, i64 %54
  %56 = call i32 @get2byte(i32* %55)
  store i32 %56, i32* %14, align 4
  %57 = load i32, i32* %14, align 4
  %58 = load i32, i32* %6, align 4
  %59 = sub nsw i32 %57, %58
  store i32 %59, i32* %12, align 4
  %60 = icmp sge i32 %59, 0
  br i1 %60, label %61, label %135

61:                                               ; preds = %50
  %62 = load i32, i32* %12, align 4
  %63 = icmp eq i32 %62, 4
  %64 = zext i1 %63 to i32
  %65 = call i32 @testcase(i32 %64)
  %66 = load i32, i32* %12, align 4
  %67 = icmp eq i32 %66, 3
  %68 = zext i1 %67 to i32
  %69 = call i32 @testcase(i32 %68)
  %70 = load i32, i32* %11, align 4
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 4
  %77 = mul nsw i32 2, %76
  %78 = add nsw i32 %73, %77
  %79 = icmp slt i32 %70, %78
  br i1 %79, label %86, label %80

80:                                               ; preds = %61
  %81 = load i32, i32* %14, align 4
  %82 = load i32, i32* %11, align 4
  %83 = add nsw i32 %81, %82
  %84 = load i32, i32* %13, align 4
  %85 = icmp sgt i32 %83, %84
  br i1 %85, label %86, label %89

86:                                               ; preds = %80, %61
  %87 = load i32, i32* @SQLITE_CORRUPT_BKPT, align 4
  %88 = load i32*, i32** %7, align 8
  store i32 %87, i32* %88, align 4
  store i32* null, i32** %4, align 8
  br label %146

89:                                               ; preds = %80
  %90 = load i32, i32* %12, align 4
  %91 = icmp slt i32 %90, 4
  br i1 %91, label %92, label %119

92:                                               ; preds = %89
  %93 = load i32*, i32** %9, align 8
  %94 = load i32, i32* %8, align 4
  %95 = add nsw i32 %94, 7
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %93, i64 %96
  %98 = load i32, i32* %97, align 4
  %99 = icmp sgt i32 %98, 57
  br i1 %99, label %100, label %101

100:                                              ; preds = %92
  store i32* null, i32** %4, align 8
  br label %146

101:                                              ; preds = %92
  %102 = load i32*, i32** %9, align 8
  %103 = load i32, i32* %10, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %102, i64 %104
  %106 = load i32*, i32** %9, align 8
  %107 = load i32, i32* %11, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %106, i64 %108
  %110 = call i32 @memcpy(i32* %105, i32* %109, i32 2)
  %111 = load i32, i32* %12, align 4
  %112 = load i32*, i32** %9, align 8
  %113 = load i32, i32* %8, align 4
  %114 = add nsw i32 %113, 7
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i32, i32* %112, i64 %115
  %117 = load i32, i32* %116, align 4
  %118 = add nsw i32 %117, %111
  store i32 %118, i32* %116, align 4
  br label %127

119:                                              ; preds = %89
  %120 = load i32*, i32** %9, align 8
  %121 = load i32, i32* %11, align 4
  %122 = add nsw i32 %121, 2
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i32, i32* %120, i64 %123
  %125 = load i32, i32* %12, align 4
  %126 = call i32 @put2byte(i32* %124, i32 %125)
  br label %127

127:                                              ; preds = %119, %101
  br label %128

128:                                              ; preds = %127
  %129 = load i32*, i32** %9, align 8
  %130 = load i32, i32* %11, align 4
  %131 = load i32, i32* %12, align 4
  %132 = add nsw i32 %130, %131
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i32, i32* %129, i64 %133
  store i32* %134, i32** %4, align 8
  br label %146

135:                                              ; preds = %50
  %136 = load i32, i32* %11, align 4
  store i32 %136, i32* %10, align 4
  %137 = load i32*, i32** %9, align 8
  %138 = load i32, i32* %11, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i32, i32* %137, i64 %139
  %141 = call i32 @get2byte(i32* %140)
  store i32 %141, i32* %11, align 4
  br label %142

142:                                              ; preds = %135
  %143 = load i32, i32* %11, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %37, label %145

145:                                              ; preds = %142
  store i32* null, i32** %4, align 8
  br label %146

146:                                              ; preds = %145, %128, %100, %86, %47
  %147 = load i32*, i32** %4, align 8
  ret i32* %147
}

declare dso_local i32 @get2byte(i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @testcase(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @put2byte(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
