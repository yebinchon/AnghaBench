; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/crypt32/extr_serialize.c_read_blob_wrapper.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/crypt32/extr_serialize.c_read_blob_wrapper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.BlobReader = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64 }

@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i32, i32*)* @read_blob_wrapper to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_blob_wrapper(i8* %0, i8* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.BlobReader*, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.BlobReader*
  store %struct.BlobReader* %12, %struct.BlobReader** %9, align 8
  %13 = load %struct.BlobReader*, %struct.BlobReader** %9, align 8
  %14 = getelementptr inbounds %struct.BlobReader, %struct.BlobReader* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.BlobReader*, %struct.BlobReader** %9, align 8
  %17 = getelementptr inbounds %struct.BlobReader, %struct.BlobReader* %16, i32 0, i32 1
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp slt i64 %15, %20
  br i1 %21, label %22, label %56

22:                                               ; preds = %4
  %23 = load i32, i32* %7, align 4
  %24 = load %struct.BlobReader*, %struct.BlobReader** %9, align 8
  %25 = getelementptr inbounds %struct.BlobReader, %struct.BlobReader* %24, i32 0, i32 1
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.BlobReader*, %struct.BlobReader** %9, align 8
  %30 = getelementptr inbounds %struct.BlobReader, %struct.BlobReader* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = sub nsw i64 %28, %31
  %33 = call i32 @min(i32 %23, i64 %32)
  %34 = load i32*, i32** %8, align 8
  store i32 %33, i32* %34, align 4
  %35 = load i8*, i8** %6, align 8
  %36 = load %struct.BlobReader*, %struct.BlobReader** %9, align 8
  %37 = getelementptr inbounds %struct.BlobReader, %struct.BlobReader* %36, i32 0, i32 1
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.BlobReader*, %struct.BlobReader** %9, align 8
  %42 = getelementptr inbounds %struct.BlobReader, %struct.BlobReader* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = add nsw i64 %40, %43
  %45 = load i32*, i32** %8, align 8
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @memcpy(i8* %35, i64 %44, i32 %46)
  %48 = load i32*, i32** %8, align 8
  %49 = load i32, i32* %48, align 4
  %50 = sext i32 %49 to i64
  %51 = load %struct.BlobReader*, %struct.BlobReader** %9, align 8
  %52 = getelementptr inbounds %struct.BlobReader, %struct.BlobReader* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = add nsw i64 %53, %50
  store i64 %54, i64* %52, align 8
  %55 = load i32, i32* @TRUE, align 4
  store i32 %55, i32* %10, align 4
  br label %72

56:                                               ; preds = %4
  %57 = load %struct.BlobReader*, %struct.BlobReader** %9, align 8
  %58 = getelementptr inbounds %struct.BlobReader, %struct.BlobReader* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.BlobReader*, %struct.BlobReader** %9, align 8
  %61 = getelementptr inbounds %struct.BlobReader, %struct.BlobReader* %60, i32 0, i32 1
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp eq i64 %59, %64
  br i1 %65, label %66, label %69

66:                                               ; preds = %56
  %67 = load i32*, i32** %8, align 8
  store i32 0, i32* %67, align 4
  %68 = load i32, i32* @TRUE, align 4
  store i32 %68, i32* %10, align 4
  br label %71

69:                                               ; preds = %56
  %70 = load i32, i32* @FALSE, align 4
  store i32 %70, i32* %10, align 4
  br label %71

71:                                               ; preds = %69, %66
  br label %72

72:                                               ; preds = %71, %22
  %73 = load i32, i32* %10, align 4
  ret i32 %73
}

declare dso_local i32 @min(i32, i64) #1

declare dso_local i32 @memcpy(i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
