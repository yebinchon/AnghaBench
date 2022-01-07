; ModuleID = '/home/carl/AnghaBench/reactos/dll/3rdparty/libtiff/extr_tif_getimage.c_TIFFReadRGBAImageOriented.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/3rdparty/libtiff/extr_tif_getimage.c_TIFFReadRGBAImageOriented.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32, i64 }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @TIFFReadRGBAImageOriented(%struct.TYPE_11__* %0, i32 %1, i32 %2, i32* %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [1024 x i8], align 16
  %14 = alloca %struct.TYPE_10__, align 8
  %15 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %16 = bitcast [1024 x i8]* %13 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %16, i8 0, i64 1024, i1 false)
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %18 = getelementptr inbounds [1024 x i8], [1024 x i8]* %13, i64 0, i64 0
  %19 = call i64 @TIFFRGBAImageOK(%struct.TYPE_11__* %17, i8* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %45

21:                                               ; preds = %6
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %23 = load i32, i32* %12, align 4
  %24 = getelementptr inbounds [1024 x i8], [1024 x i8]* %13, i64 0, i64 0
  %25 = call i64 @TIFFRGBAImageBegin(%struct.TYPE_10__* %14, %struct.TYPE_11__* %22, i32 %23, i8* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %45

27:                                               ; preds = %21
  %28 = load i32, i32* %11, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 1
  store i64 %29, i64* %30, align 8
  %31 = load i32*, i32** %10, align 8
  %32 = load i32, i32* %9, align 4
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = sub nsw i32 %32, %34
  %36 = load i32, i32* %8, align 4
  %37 = mul nsw i32 %35, %36
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %31, i64 %38
  %40 = load i32, i32* %8, align 4
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @TIFFRGBAImageGet(%struct.TYPE_10__* %14, i32* %39, i32 %40, i32 %42)
  store i32 %43, i32* %15, align 4
  %44 = call i32 @TIFFRGBAImageEnd(%struct.TYPE_10__* %14)
  br label %53

45:                                               ; preds = %21, %6
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %50 = call i32 @TIFFFileName(%struct.TYPE_11__* %49)
  %51 = getelementptr inbounds [1024 x i8], [1024 x i8]* %13, i64 0, i64 0
  %52 = call i32 @TIFFErrorExt(i32 %48, i32 %50, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %51)
  store i32 0, i32* %15, align 4
  br label %53

53:                                               ; preds = %45, %27
  %54 = load i32, i32* %15, align 4
  ret i32 %54
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @TIFFRGBAImageOK(%struct.TYPE_11__*, i8*) #2

declare dso_local i64 @TIFFRGBAImageBegin(%struct.TYPE_10__*, %struct.TYPE_11__*, i32, i8*) #2

declare dso_local i32 @TIFFRGBAImageGet(%struct.TYPE_10__*, i32*, i32, i32) #2

declare dso_local i32 @TIFFRGBAImageEnd(%struct.TYPE_10__*) #2

declare dso_local i32 @TIFFErrorExt(i32, i32, i8*, i8*) #2

declare dso_local i32 @TIFFFileName(%struct.TYPE_11__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
