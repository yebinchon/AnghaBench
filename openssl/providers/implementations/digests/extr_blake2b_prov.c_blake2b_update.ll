; ModuleID = '/home/carl/AnghaBench/openssl/providers/implementations/digests/extr_blake2b_prov.c_blake2b_update.c'
source_filename = "/home/carl/AnghaBench/openssl/providers/implementations/digests/extr_blake2b_prov.c_blake2b_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32* }

@BLAKE2B_BLOCKBYTES = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @blake2b_update(%struct.TYPE_4__* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to i32*
  store i32* %11, i32** %7, align 8
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = sext i32 %14 to i64
  %16 = sub i64 8, %15
  store i64 %16, i64* %8, align 8
  %17 = load i64, i64* %6, align 8
  %18 = load i64, i64* %8, align 8
  %19 = icmp ugt i64 %17, %18
  br i1 %19, label %20, label %80

20:                                               ; preds = %3
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %52

25:                                               ; preds = %20
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %28, i64 %32
  %34 = ptrtoint i32* %33 to i32
  %35 = load i32*, i32** %7, align 8
  %36 = load i64, i64* %8, align 8
  %37 = call i32 @memcpy(i32 %34, i32* %35, i64 %36)
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  %42 = load i64, i64* @BLAKE2B_BLOCKBYTES, align 8
  %43 = call i32 @blake2b_compress(%struct.TYPE_4__* %38, i32* %41, i64 %42)
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  store i32 0, i32* %45, align 8
  %46 = load i64, i64* %8, align 8
  %47 = load i32*, i32** %7, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 %46
  store i32* %48, i32** %7, align 8
  %49 = load i64, i64* %8, align 8
  %50 = load i64, i64* %6, align 8
  %51 = sub i64 %50, %49
  store i64 %51, i64* %6, align 8
  br label %52

52:                                               ; preds = %25, %20
  %53 = load i64, i64* %6, align 8
  %54 = load i64, i64* @BLAKE2B_BLOCKBYTES, align 8
  %55 = icmp ugt i64 %53, %54
  br i1 %55, label %56, label %79

56:                                               ; preds = %52
  %57 = load i64, i64* %6, align 8
  %58 = load i64, i64* @BLAKE2B_BLOCKBYTES, align 8
  %59 = urem i64 %57, %58
  store i64 %59, i64* %9, align 8
  %60 = load i64, i64* %9, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %56
  %63 = load i64, i64* %9, align 8
  br label %66

64:                                               ; preds = %56
  %65 = load i64, i64* @BLAKE2B_BLOCKBYTES, align 8
  br label %66

66:                                               ; preds = %64, %62
  %67 = phi i64 [ %63, %62 ], [ %65, %64 ]
  store i64 %67, i64* %9, align 8
  %68 = load i64, i64* %9, align 8
  %69 = load i64, i64* %6, align 8
  %70 = sub i64 %69, %68
  store i64 %70, i64* %6, align 8
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %72 = load i32*, i32** %7, align 8
  %73 = load i64, i64* %6, align 8
  %74 = call i32 @blake2b_compress(%struct.TYPE_4__* %71, i32* %72, i64 %73)
  %75 = load i64, i64* %6, align 8
  %76 = load i32*, i32** %7, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 %75
  store i32* %77, i32** %7, align 8
  %78 = load i64, i64* %9, align 8
  store i64 %78, i64* %6, align 8
  br label %79

79:                                               ; preds = %66, %52
  br label %80

80:                                               ; preds = %79, %3
  %81 = load i64, i64* %6, align 8
  %82 = load i64, i64* @BLAKE2B_BLOCKBYTES, align 8
  %83 = icmp ule i64 %81, %82
  %84 = zext i1 %83 to i32
  %85 = call i32 @assert(i32 %84)
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 1
  %88 = load i32*, i32** %87, align 8
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %88, i64 %92
  %94 = ptrtoint i32* %93 to i32
  %95 = load i32*, i32** %7, align 8
  %96 = load i64, i64* %6, align 8
  %97 = call i32 @memcpy(i32 %94, i32* %95, i64 %96)
  %98 = load i64, i64* %6, align 8
  %99 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = sext i32 %101 to i64
  %103 = add i64 %102, %98
  %104 = trunc i64 %103 to i32
  store i32 %104, i32* %100, align 8
  ret i32 1
}

declare dso_local i32 @memcpy(i32, i32*, i64) #1

declare dso_local i32 @blake2b_compress(%struct.TYPE_4__*, i32*, i64) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
