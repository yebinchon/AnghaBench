; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/gdiplus/extr_graphics.c_shorten_bezier_amt.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/gdiplus/extr_graphics.c_shorten_bezier_amt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i64 }

@MAX_ITERS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, i64, i64)* @shorten_bezier_amt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @shorten_bezier_amt(%struct.TYPE_5__* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca [4 x %struct.TYPE_5__], align 16
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  store i64 0, i64* %8, align 8
  store i64 -1, i64* %13, align 8
  store i64 0, i64* %15, align 8
  store i64 1, i64* %16, align 8
  store i64 2, i64* %17, align 8
  store i64 3, i64* %18, align 8
  %19 = load i64, i64* %6, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %3
  store i64 3, i64* %15, align 8
  store i64 2, i64* %16, align 8
  store i64 1, i64* %17, align 8
  store i64 0, i64* %18, align 8
  br label %22

22:                                               ; preds = %21, %3
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %24 = load i64, i64* %18, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  store i64 %27, i64* %11, align 8
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %29 = load i64, i64* %18, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  store i64 %32, i64* %12, align 8
  %33 = getelementptr inbounds [4 x %struct.TYPE_5__], [4 x %struct.TYPE_5__]* %7, i64 0, i64 0
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %35 = call i32 @memcpy(%struct.TYPE_5__* %33, %struct.TYPE_5__* %34, i32 64)
  store i64 0, i64* %14, align 8
  br label %36

36:                                               ; preds = %199, %22
  %37 = load i64, i64* %14, align 8
  %38 = load i64, i64* @MAX_ITERS, align 8
  %39 = icmp ult i64 %37, %38
  br i1 %39, label %40, label %44

40:                                               ; preds = %36
  %41 = load i64, i64* %13, align 8
  %42 = load i64, i64* %5, align 8
  %43 = icmp slt i64 %41, %42
  br label %44

44:                                               ; preds = %40, %36
  %45 = phi i1 [ false, %36 ], [ %43, %40 ]
  br i1 %45, label %46, label %202

46:                                               ; preds = %44
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %48 = getelementptr inbounds [4 x %struct.TYPE_5__], [4 x %struct.TYPE_5__]* %7, i64 0, i64 0
  %49 = call i32 @memcpy(%struct.TYPE_5__* %47, %struct.TYPE_5__* %48, i32 64)
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %51 = load i64, i64* %17, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %56 = load i64, i64* %17, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %61 = load i64, i64* %18, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %65 = load i64, i64* %18, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 1
  %68 = load i64, i64* %8, align 8
  %69 = call i32 @shorten_line_percent(i64 %54, i64 %59, i64* %63, i64* %67, i64 %68)
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %71 = load i64, i64* %16, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %76 = load i64, i64* %16, align 8
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %81 = load i64, i64* %17, align 8
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 0
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %85 = load i64, i64* %17, align 8
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 1
  %88 = load i64, i64* %8, align 8
  %89 = call i32 @shorten_line_percent(i64 %74, i64 %79, i64* %83, i64* %87, i64 %88)
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %91 = load i64, i64* %17, align 8
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %96 = load i64, i64* %17, align 8
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %101 = load i64, i64* %18, align 8
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 0
  %104 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %105 = load i64, i64* %18, align 8
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 1
  %108 = load i64, i64* %8, align 8
  %109 = call i32 @shorten_line_percent(i64 %94, i64 %99, i64* %103, i64* %107, i64 %108)
  %110 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %111 = load i64, i64* %15, align 8
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %116 = load i64, i64* %15, align 8
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i64 %116
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 1
  %119 = load i64, i64* %118, align 8
  %120 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %121 = load i64, i64* %16, align 8
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i64 %121
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %122, i32 0, i32 0
  %124 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %125 = load i64, i64* %16, align 8
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %124, i64 %125
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %126, i32 0, i32 1
  %128 = load i64, i64* %8, align 8
  %129 = call i32 @shorten_line_percent(i64 %114, i64 %119, i64* %123, i64* %127, i64 %128)
  %130 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %131 = load i64, i64* %16, align 8
  %132 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %130, i64 %131
  %133 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %136 = load i64, i64* %16, align 8
  %137 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %135, i64 %136
  %138 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %137, i32 0, i32 1
  %139 = load i64, i64* %138, align 8
  %140 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %141 = load i64, i64* %17, align 8
  %142 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %140, i64 %141
  %143 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %142, i32 0, i32 0
  %144 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %145 = load i64, i64* %17, align 8
  %146 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %144, i64 %145
  %147 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %146, i32 0, i32 1
  %148 = load i64, i64* %8, align 8
  %149 = call i32 @shorten_line_percent(i64 %134, i64 %139, i64* %143, i64* %147, i64 %148)
  %150 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %151 = load i64, i64* %17, align 8
  %152 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %150, i64 %151
  %153 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %156 = load i64, i64* %17, align 8
  %157 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %155, i64 %156
  %158 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %157, i32 0, i32 1
  %159 = load i64, i64* %158, align 8
  %160 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %161 = load i64, i64* %18, align 8
  %162 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %160, i64 %161
  %163 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %162, i32 0, i32 0
  %164 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %165 = load i64, i64* %18, align 8
  %166 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %164, i64 %165
  %167 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %166, i32 0, i32 1
  %168 = load i64, i64* %8, align 8
  %169 = call i32 @shorten_line_percent(i64 %154, i64 %159, i64* %163, i64* %167, i64 %168)
  %170 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %171 = load i64, i64* %18, align 8
  %172 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %170, i64 %171
  %173 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %172, i32 0, i32 0
  %174 = load i64, i64* %173, align 8
  %175 = load i64, i64* %11, align 8
  %176 = sub nsw i64 %174, %175
  store i64 %176, i64* %9, align 8
  %177 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %178 = load i64, i64* %18, align 8
  %179 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %177, i64 %178
  %180 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %179, i32 0, i32 1
  %181 = load i64, i64* %180, align 8
  %182 = load i64, i64* %12, align 8
  %183 = sub nsw i64 %181, %182
  store i64 %183, i64* %10, align 8
  %184 = load i64, i64* %9, align 8
  %185 = load i64, i64* %9, align 8
  %186 = mul nsw i64 %184, %185
  %187 = load i64, i64* %10, align 8
  %188 = load i64, i64* %10, align 8
  %189 = mul nsw i64 %187, %188
  %190 = add nsw i64 %186, %189
  %191 = call i64 @sqrt(i64 %190)
  store i64 %191, i64* %13, align 8
  %192 = load i64, i64* %5, align 8
  %193 = sitofp i64 %192 to double
  %194 = fmul double 5.000000e-04, %193
  %195 = load i64, i64* %8, align 8
  %196 = sitofp i64 %195 to double
  %197 = fadd double %196, %194
  %198 = fptosi double %197 to i64
  store i64 %198, i64* %8, align 8
  br label %199

199:                                              ; preds = %46
  %200 = load i64, i64* %14, align 8
  %201 = add i64 %200, 1
  store i64 %201, i64* %14, align 8
  br label %36

202:                                              ; preds = %44
  ret void
}

declare dso_local i32 @memcpy(%struct.TYPE_5__*, %struct.TYPE_5__*, i32) #1

declare dso_local i32 @shorten_line_percent(i64, i64, i64*, i64*, i64) #1

declare dso_local i64 @sqrt(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
