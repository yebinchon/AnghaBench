; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_numeric.c_add_abs.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_numeric.c_add_abs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32*, i32, i32, i32* }

@NBASE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, %struct.TYPE_6__*, %struct.TYPE_6__*)* @add_abs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_abs(%struct.TYPE_6__* %0, %struct.TYPE_6__* %1, %struct.TYPE_6__* %2) #0 {
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %5, align 8
  store %struct.TYPE_6__* %2, %struct.TYPE_6__** %6, align 8
  store i32 0, i32* %18, align 4
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %19, align 4
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %20, align 4
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  store i32* %31, i32** %21, align 8
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  store i32* %34, i32** %22, align 8
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @Max(i32 %37, i32 %40)
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %10, align 4
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @Max(i32 %45, i32 %48)
  store i32 %49, i32* %14, align 4
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = sub nsw i32 %52, %55
  %57 = sub nsw i32 %56, 1
  store i32 %57, i32* %12, align 4
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = sub nsw i32 %60, %63
  %65 = sub nsw i32 %64, 1
  store i32 %65, i32* %13, align 4
  %66 = load i32, i32* %12, align 4
  %67 = load i32, i32* %13, align 4
  %68 = call i32 @Max(i32 %66, i32 %67)
  store i32 %68, i32* %11, align 4
  %69 = load i32, i32* %11, align 4
  %70 = load i32, i32* %10, align 4
  %71 = add nsw i32 %69, %70
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %9, align 4
  %73 = load i32, i32* %9, align 4
  %74 = icmp sle i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %3
  store i32 1, i32* %9, align 4
  br label %76

76:                                               ; preds = %75, %3
  %77 = load i32, i32* %9, align 4
  %78 = add nsw i32 %77, 1
  %79 = call i32* @digitbuf_alloc(i32 %78)
  store i32* %79, i32** %7, align 8
  %80 = load i32*, i32** %7, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 0
  store i32 0, i32* %81, align 4
  %82 = load i32*, i32** %7, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 1
  store i32* %83, i32** %8, align 8
  %84 = load i32, i32* %11, align 4
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = add nsw i32 %84, %87
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %16, align 4
  %90 = load i32, i32* %11, align 4
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = add nsw i32 %90, %93
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %17, align 4
  %96 = load i32, i32* %9, align 4
  %97 = sub nsw i32 %96, 1
  store i32 %97, i32* %15, align 4
  br label %98

98:                                               ; preds = %154, %76
  %99 = load i32, i32* %15, align 4
  %100 = icmp sge i32 %99, 0
  br i1 %100, label %101, label %157

101:                                              ; preds = %98
  %102 = load i32, i32* %16, align 4
  %103 = add nsw i32 %102, -1
  store i32 %103, i32* %16, align 4
  %104 = load i32, i32* %17, align 4
  %105 = add nsw i32 %104, -1
  store i32 %105, i32* %17, align 4
  %106 = load i32, i32* %16, align 4
  %107 = icmp sge i32 %106, 0
  br i1 %107, label %108, label %120

108:                                              ; preds = %101
  %109 = load i32, i32* %16, align 4
  %110 = load i32, i32* %19, align 4
  %111 = icmp slt i32 %109, %110
  br i1 %111, label %112, label %120

112:                                              ; preds = %108
  %113 = load i32*, i32** %21, align 8
  %114 = load i32, i32* %16, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i32, i32* %113, i64 %115
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* %18, align 4
  %119 = add nsw i32 %118, %117
  store i32 %119, i32* %18, align 4
  br label %120

120:                                              ; preds = %112, %108, %101
  %121 = load i32, i32* %17, align 4
  %122 = icmp sge i32 %121, 0
  br i1 %122, label %123, label %135

123:                                              ; preds = %120
  %124 = load i32, i32* %17, align 4
  %125 = load i32, i32* %20, align 4
  %126 = icmp slt i32 %124, %125
  br i1 %126, label %127, label %135

127:                                              ; preds = %123
  %128 = load i32*, i32** %22, align 8
  %129 = load i32, i32* %17, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i32, i32* %128, i64 %130
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* %18, align 4
  %134 = add nsw i32 %133, %132
  store i32 %134, i32* %18, align 4
  br label %135

135:                                              ; preds = %127, %123, %120
  %136 = load i32, i32* %18, align 4
  %137 = load i32, i32* @NBASE, align 4
  %138 = icmp sge i32 %136, %137
  br i1 %138, label %139, label %147

139:                                              ; preds = %135
  %140 = load i32, i32* %18, align 4
  %141 = load i32, i32* @NBASE, align 4
  %142 = sub nsw i32 %140, %141
  %143 = load i32*, i32** %8, align 8
  %144 = load i32, i32* %15, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i32, i32* %143, i64 %145
  store i32 %142, i32* %146, align 4
  store i32 1, i32* %18, align 4
  br label %153

147:                                              ; preds = %135
  %148 = load i32, i32* %18, align 4
  %149 = load i32*, i32** %8, align 8
  %150 = load i32, i32* %15, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i32, i32* %149, i64 %151
  store i32 %148, i32* %152, align 4
  store i32 0, i32* %18, align 4
  br label %153

153:                                              ; preds = %147, %139
  br label %154

154:                                              ; preds = %153
  %155 = load i32, i32* %15, align 4
  %156 = add nsw i32 %155, -1
  store i32 %156, i32* %15, align 4
  br label %98

157:                                              ; preds = %98
  %158 = load i32, i32* %18, align 4
  %159 = icmp eq i32 %158, 0
  %160 = zext i1 %159 to i32
  %161 = call i32 @Assert(i32 %160)
  %162 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %163 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %162, i32 0, i32 4
  %164 = load i32*, i32** %163, align 8
  %165 = call i32 @digitbuf_free(i32* %164)
  %166 = load i32, i32* %9, align 4
  %167 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %168 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %167, i32 0, i32 0
  store i32 %166, i32* %168, align 8
  %169 = load i32*, i32** %7, align 8
  %170 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %171 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %170, i32 0, i32 4
  store i32* %169, i32** %171, align 8
  %172 = load i32*, i32** %8, align 8
  %173 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %174 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %173, i32 0, i32 1
  store i32* %172, i32** %174, align 8
  %175 = load i32, i32* %10, align 4
  %176 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %177 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %176, i32 0, i32 2
  store i32 %175, i32* %177, align 8
  %178 = load i32, i32* %14, align 4
  %179 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %180 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %179, i32 0, i32 3
  store i32 %178, i32* %180, align 4
  %181 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %182 = call i32 @strip_var(%struct.TYPE_6__* %181)
  ret void
}

declare dso_local i32 @Max(i32, i32) #1

declare dso_local i32* @digitbuf_alloc(i32) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @digitbuf_free(i32*) #1

declare dso_local i32 @strip_var(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
