; ModuleID = '/home/carl/AnghaBench/mongoose/src/common/extr_cs_md5.c_cs_md5_update.c'
source_filename = "/home/carl/AnghaBench/mongoose/src/common/extr_cs_md5.c_cs_md5_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32*, i8*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cs_md5_update(%struct.TYPE_3__* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = load i64, i64* %6, align 8
  %16 = trunc i64 %15 to i32
  %17 = shl i32 %16, 3
  %18 = add nsw i32 %14, %17
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 0
  store i32 %18, i32* %22, align 4
  %23 = load i32, i32* %7, align 4
  %24 = icmp slt i32 %18, %23
  br i1 %24, label %25, label %32

25:                                               ; preds = %3
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 1
  %30 = load i32, i32* %29, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %29, align 4
  br label %32

32:                                               ; preds = %25, %3
  %33 = load i64, i64* %6, align 8
  %34 = trunc i64 %33 to i32
  %35 = ashr i32 %34, 29
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 1
  %40 = load i32, i32* %39, align 4
  %41 = add nsw i32 %40, %35
  store i32 %41, i32* %39, align 4
  %42 = load i32, i32* %7, align 4
  %43 = ashr i32 %42, 3
  %44 = and i32 %43, 63
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* %7, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %91

47:                                               ; preds = %32
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 1
  %50 = load i8*, i8** %49, align 8
  %51 = load i32, i32* %7, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i8, i8* %50, i64 %52
  store i8* %53, i8** %8, align 8
  %54 = load i32, i32* %7, align 4
  %55 = sub nsw i32 64, %54
  store i32 %55, i32* %7, align 4
  %56 = load i64, i64* %6, align 8
  %57 = load i32, i32* %7, align 4
  %58 = sext i32 %57 to i64
  %59 = icmp ult i64 %56, %58
  br i1 %59, label %60, label %65

60:                                               ; preds = %47
  %61 = load i8*, i8** %8, align 8
  %62 = load i8*, i8** %5, align 8
  %63 = load i64, i64* %6, align 8
  %64 = call i32 @memcpy(i8* %61, i8* %62, i64 %63)
  br label %124

65:                                               ; preds = %47
  %66 = load i8*, i8** %8, align 8
  %67 = load i8*, i8** %5, align 8
  %68 = load i32, i32* %7, align 4
  %69 = sext i32 %68 to i64
  %70 = call i32 @memcpy(i8* %66, i8* %67, i64 %69)
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 1
  %73 = load i8*, i8** %72, align 8
  %74 = call i32 @byteReverse(i8* %73, i32 16)
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 1
  %80 = load i8*, i8** %79, align 8
  %81 = bitcast i8* %80 to i32*
  %82 = call i32 @cs_md5_transform(i32 %77, i32* %81)
  %83 = load i32, i32* %7, align 4
  %84 = load i8*, i8** %5, align 8
  %85 = sext i32 %83 to i64
  %86 = getelementptr inbounds i8, i8* %84, i64 %85
  store i8* %86, i8** %5, align 8
  %87 = load i32, i32* %7, align 4
  %88 = sext i32 %87 to i64
  %89 = load i64, i64* %6, align 8
  %90 = sub i64 %89, %88
  store i64 %90, i64* %6, align 8
  br label %91

91:                                               ; preds = %65, %32
  br label %92

92:                                               ; preds = %95, %91
  %93 = load i64, i64* %6, align 8
  %94 = icmp uge i64 %93, 64
  br i1 %94, label %95, label %117

95:                                               ; preds = %92
  %96 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 1
  %98 = load i8*, i8** %97, align 8
  %99 = load i8*, i8** %5, align 8
  %100 = call i32 @memcpy(i8* %98, i8* %99, i64 64)
  %101 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 1
  %103 = load i8*, i8** %102, align 8
  %104 = call i32 @byteReverse(i8* %103, i32 16)
  %105 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 8
  %108 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i32 0, i32 1
  %110 = load i8*, i8** %109, align 8
  %111 = bitcast i8* %110 to i32*
  %112 = call i32 @cs_md5_transform(i32 %107, i32* %111)
  %113 = load i8*, i8** %5, align 8
  %114 = getelementptr inbounds i8, i8* %113, i64 64
  store i8* %114, i8** %5, align 8
  %115 = load i64, i64* %6, align 8
  %116 = sub i64 %115, 64
  store i64 %116, i64* %6, align 8
  br label %92

117:                                              ; preds = %92
  %118 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %118, i32 0, i32 1
  %120 = load i8*, i8** %119, align 8
  %121 = load i8*, i8** %5, align 8
  %122 = load i64, i64* %6, align 8
  %123 = call i32 @memcpy(i8* %120, i8* %121, i64 %122)
  br label %124

124:                                              ; preds = %117, %60
  ret void
}

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @byteReverse(i8*, i32) #1

declare dso_local i32 @cs_md5_transform(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
