; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_arrayfuncs.c_array_get_element_expanded.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_arrayfuncs.c_array_get_element_expanded.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32, i32, i8, i32, i32*, i32*, i32*, i32* }

@EA_MAGIC = common dso_local global i64 0, align 8
@MAXDIM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32*, i32, i32, i32, i8, i32*)* @array_get_element_expanded to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @array_get_element_expanded(i32 %0, i32 %1, i32* %2, i32 %3, i32 %4, i32 %5, i8 signext %6, i32* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8, align 1
  %17 = alloca i32*, align 8
  %18 = alloca %struct.TYPE_3__*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32*, align 8
  %25 = alloca i32*, align 8
  store i32 %0, i32* %10, align 4
  store i32 %1, i32* %11, align 4
  store i32* %2, i32** %12, align 8
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i8 %6, i8* %16, align 1
  store i32* %7, i32** %17, align 8
  %26 = load i32, i32* %10, align 4
  %27 = call i64 @DatumGetEOHP(i32 %26)
  %28 = inttoptr i64 %27 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %28, %struct.TYPE_3__** %18, align 8
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @EA_MAGIC, align 8
  %33 = icmp eq i64 %31, %32
  %34 = zext i1 %33 to i32
  %35 = call i32 @Assert(i32 %34)
  %36 = load i32, i32* %13, align 4
  %37 = icmp eq i32 %36, -1
  %38 = zext i1 %37 to i32
  %39 = call i32 @Assert(i32 %38)
  %40 = load i32, i32* %14, align 4
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = icmp eq i32 %40, %43
  %45 = zext i1 %44 to i32
  %46 = call i32 @Assert(i32 %45)
  %47 = load i32, i32* %15, align 4
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = icmp eq i32 %47, %50
  %52 = zext i1 %51 to i32
  %53 = call i32 @Assert(i32 %52)
  %54 = load i8, i8* %16, align 1
  %55 = sext i8 %54 to i32
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 3
  %58 = load i8, i8* %57, align 8
  %59 = sext i8 %58 to i32
  %60 = icmp eq i32 %55, %59
  %61 = zext i1 %60 to i32
  %62 = call i32 @Assert(i32 %61)
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 4
  %65 = load i32, i32* %64, align 4
  store i32 %65, i32* %20, align 4
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 5
  %68 = load i32*, i32** %67, align 8
  store i32* %68, i32** %21, align 8
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 6
  %71 = load i32*, i32** %70, align 8
  store i32* %71, i32** %22, align 8
  %72 = load i32, i32* %20, align 4
  %73 = load i32, i32* %11, align 4
  %74 = icmp ne i32 %72, %73
  br i1 %74, label %82, label %75

75:                                               ; preds = %8
  %76 = load i32, i32* %20, align 4
  %77 = icmp sle i32 %76, 0
  br i1 %77, label %82, label %78

78:                                               ; preds = %75
  %79 = load i32, i32* %20, align 4
  %80 = load i32, i32* @MAXDIM, align 4
  %81 = icmp sgt i32 %79, %80
  br i1 %81, label %82, label %84

82:                                               ; preds = %78, %75, %8
  %83 = load i32*, i32** %17, align 8
  store i32 1, i32* %83, align 4
  store i32 0, i32* %9, align 4
  br label %157

84:                                               ; preds = %78
  store i32 0, i32* %19, align 4
  br label %85

85:                                               ; preds = %122, %84
  %86 = load i32, i32* %19, align 4
  %87 = load i32, i32* %20, align 4
  %88 = icmp slt i32 %86, %87
  br i1 %88, label %89, label %125

89:                                               ; preds = %85
  %90 = load i32*, i32** %12, align 8
  %91 = load i32, i32* %19, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %90, i64 %92
  %94 = load i32, i32* %93, align 4
  %95 = load i32*, i32** %22, align 8
  %96 = load i32, i32* %19, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %95, i64 %97
  %99 = load i32, i32* %98, align 4
  %100 = icmp slt i32 %94, %99
  br i1 %100, label %119, label %101

101:                                              ; preds = %89
  %102 = load i32*, i32** %12, align 8
  %103 = load i32, i32* %19, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %102, i64 %104
  %106 = load i32, i32* %105, align 4
  %107 = load i32*, i32** %21, align 8
  %108 = load i32, i32* %19, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %107, i64 %109
  %111 = load i32, i32* %110, align 4
  %112 = load i32*, i32** %22, align 8
  %113 = load i32, i32* %19, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %112, i64 %114
  %116 = load i32, i32* %115, align 4
  %117 = add nsw i32 %111, %116
  %118 = icmp sge i32 %106, %117
  br i1 %118, label %119, label %121

119:                                              ; preds = %101, %89
  %120 = load i32*, i32** %17, align 8
  store i32 1, i32* %120, align 4
  store i32 0, i32* %9, align 4
  br label %157

121:                                              ; preds = %101
  br label %122

122:                                              ; preds = %121
  %123 = load i32, i32* %19, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %19, align 4
  br label %85

125:                                              ; preds = %85
  %126 = load i32, i32* %11, align 4
  %127 = load i32*, i32** %21, align 8
  %128 = load i32*, i32** %22, align 8
  %129 = load i32*, i32** %12, align 8
  %130 = call i32 @ArrayGetOffset(i32 %126, i32* %127, i32* %128, i32* %129)
  store i32 %130, i32* %23, align 4
  %131 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %132 = call i32 @deconstruct_expanded_array(%struct.TYPE_3__* %131)
  %133 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %134 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %133, i32 0, i32 8
  %135 = load i32*, i32** %134, align 8
  store i32* %135, i32** %24, align 8
  %136 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %137 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %136, i32 0, i32 7
  %138 = load i32*, i32** %137, align 8
  store i32* %138, i32** %25, align 8
  %139 = load i32*, i32** %25, align 8
  %140 = icmp ne i32* %139, null
  br i1 %140, label %141, label %150

141:                                              ; preds = %125
  %142 = load i32*, i32** %25, align 8
  %143 = load i32, i32* %23, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i32, i32* %142, i64 %144
  %146 = load i32, i32* %145, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %150

148:                                              ; preds = %141
  %149 = load i32*, i32** %17, align 8
  store i32 1, i32* %149, align 4
  store i32 0, i32* %9, align 4
  br label %157

150:                                              ; preds = %141, %125
  %151 = load i32*, i32** %17, align 8
  store i32 0, i32* %151, align 4
  %152 = load i32*, i32** %24, align 8
  %153 = load i32, i32* %23, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i32, i32* %152, i64 %154
  %156 = load i32, i32* %155, align 4
  store i32 %156, i32* %9, align 4
  br label %157

157:                                              ; preds = %150, %148, %119, %82
  %158 = load i32, i32* %9, align 4
  ret i32 %158
}

declare dso_local i64 @DatumGetEOHP(i32) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @ArrayGetOffset(i32, i32*, i32*, i32*) #1

declare dso_local i32 @deconstruct_expanded_array(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
