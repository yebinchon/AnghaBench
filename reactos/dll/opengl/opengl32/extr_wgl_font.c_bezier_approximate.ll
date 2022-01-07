; ModuleID = '/home/carl/AnghaBench/reactos/dll/opengl/opengl32/extr_wgl_font.c_bezier_approximate.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/opengl/opengl32/extr_wgl_font.c_bezier_approximate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, %struct.TYPE_5__*, i32)* @bezier_approximate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bezier_approximate(%struct.TYPE_5__* %0, %struct.TYPE_5__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca [3 x %struct.TYPE_5__], align 16
  %9 = alloca [3 x %struct.TYPE_5__], align 16
  %10 = alloca %struct.TYPE_5__, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %13 = call i32 @bezier_deviation_squared(%struct.TYPE_5__* %12)
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = mul nsw i32 %14, %15
  %17 = icmp sle i32 %13, %16
  br i1 %17, label %18, label %28

18:                                               ; preds = %3
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %20 = icmp ne %struct.TYPE_5__* %19, null
  br i1 %20, label %21, label %27

21:                                               ; preds = %18
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i64 2
  %25 = bitcast %struct.TYPE_5__* %22 to i8*
  %26 = bitcast %struct.TYPE_5__* %24 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %25, i8* align 4 %26, i64 8, i1 false)
  br label %27

27:                                               ; preds = %21, %18
  store i32 1, i32* %4, align 4
  br label %146

28:                                               ; preds = %3
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i64 0
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i64 1
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = mul nsw i32 %36, 2
  %38 = add nsw i32 %32, %37
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i64 2
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = add nsw i32 %38, %42
  %44 = sdiv i32 %43, 4
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  store i32 %44, i32* %45, align 4
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i64 0
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i64 1
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = mul nsw i32 %53, 2
  %55 = add nsw i32 %49, %54
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i64 2
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = add nsw i32 %55, %59
  %61 = sdiv i32 %60, 4
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 1
  store i32 %61, i32* %62, align 4
  %63 = getelementptr inbounds [3 x %struct.TYPE_5__], [3 x %struct.TYPE_5__]* %8, i64 0, i64 0
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i64 0
  %66 = bitcast %struct.TYPE_5__* %63 to i8*
  %67 = bitcast %struct.TYPE_5__* %65 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %66, i8* align 4 %67, i64 8, i1 false)
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i64 0
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i64 1
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = add nsw i32 %71, %75
  %77 = sdiv i32 %76, 2
  %78 = getelementptr inbounds [3 x %struct.TYPE_5__], [3 x %struct.TYPE_5__]* %8, i64 0, i64 1
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 0
  store i32 %77, i32* %79, align 8
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i64 0
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i64 1
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = add nsw i32 %83, %87
  %89 = sdiv i32 %88, 2
  %90 = getelementptr inbounds [3 x %struct.TYPE_5__], [3 x %struct.TYPE_5__]* %8, i64 0, i64 1
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 1
  store i32 %89, i32* %91, align 4
  %92 = getelementptr inbounds [3 x %struct.TYPE_5__], [3 x %struct.TYPE_5__]* %8, i64 0, i64 2
  %93 = bitcast %struct.TYPE_5__* %92 to i8*
  %94 = bitcast %struct.TYPE_5__* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %93, i8* align 4 %94, i64 8, i1 false)
  %95 = getelementptr inbounds [3 x %struct.TYPE_5__], [3 x %struct.TYPE_5__]* %9, i64 0, i64 0
  %96 = bitcast %struct.TYPE_5__* %95 to i8*
  %97 = bitcast %struct.TYPE_5__* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %96, i8* align 4 %97, i64 8, i1 false)
  %98 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i64 2
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i64 1
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = add nsw i32 %101, %105
  %107 = sdiv i32 %106, 2
  %108 = getelementptr inbounds [3 x %struct.TYPE_5__], [3 x %struct.TYPE_5__]* %9, i64 0, i64 1
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i32 0, i32 0
  store i32 %107, i32* %109, align 8
  %110 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i64 2
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i64 1
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = add nsw i32 %113, %117
  %119 = sdiv i32 %118, 2
  %120 = getelementptr inbounds [3 x %struct.TYPE_5__], [3 x %struct.TYPE_5__]* %9, i64 0, i64 1
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i32 0, i32 1
  store i32 %119, i32* %121, align 4
  %122 = getelementptr inbounds [3 x %struct.TYPE_5__], [3 x %struct.TYPE_5__]* %9, i64 0, i64 2
  %123 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %124 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %123, i64 2
  %125 = bitcast %struct.TYPE_5__* %122 to i8*
  %126 = bitcast %struct.TYPE_5__* %124 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %125, i8* align 4 %126, i64 8, i1 false)
  %127 = getelementptr inbounds [3 x %struct.TYPE_5__], [3 x %struct.TYPE_5__]* %8, i64 0, i64 0
  %128 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %129 = load i32, i32* %7, align 4
  %130 = call i32 @bezier_approximate(%struct.TYPE_5__* %127, %struct.TYPE_5__* %128, i32 %129)
  store i32 %130, i32* %11, align 4
  %131 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %132 = icmp ne %struct.TYPE_5__* %131, null
  br i1 %132, label %133, label %138

133:                                              ; preds = %28
  %134 = load i32, i32* %11, align 4
  %135 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %136 = sext i32 %134 to i64
  %137 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %135, i64 %136
  store %struct.TYPE_5__* %137, %struct.TYPE_5__** %6, align 8
  br label %138

138:                                              ; preds = %133, %28
  %139 = getelementptr inbounds [3 x %struct.TYPE_5__], [3 x %struct.TYPE_5__]* %9, i64 0, i64 0
  %140 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %141 = load i32, i32* %7, align 4
  %142 = call i32 @bezier_approximate(%struct.TYPE_5__* %139, %struct.TYPE_5__* %140, i32 %141)
  %143 = load i32, i32* %11, align 4
  %144 = add nsw i32 %143, %142
  store i32 %144, i32* %11, align 4
  %145 = load i32, i32* %11, align 4
  store i32 %145, i32* %4, align 4
  br label %146

146:                                              ; preds = %138, %27
  %147 = load i32, i32* %4, align 4
  ret i32 %147
}

declare dso_local i32 @bezier_deviation_squared(%struct.TYPE_5__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
