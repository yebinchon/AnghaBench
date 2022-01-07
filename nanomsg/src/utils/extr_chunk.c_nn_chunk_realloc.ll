; ModuleID = '/home/carl/AnghaBench/nanomsg/src/utils/extr_chunk.c_nn_chunk_realloc.c'
source_filename = "/home/carl/AnghaBench/nanomsg/src/utils/extr_chunk.c_nn_chunk_realloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nn_chunk = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@NN_CHUNK_TAG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nn_chunk_realloc(i64 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i8**, align 8
  %6 = alloca %struct.nn_chunk*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i8** %1, i8*** %5, align 8
  %13 = load i8**, i8*** %5, align 8
  %14 = load i8*, i8** %13, align 8
  store i8* %14, i8** %10, align 8
  %15 = load i8*, i8** %10, align 8
  %16 = call %struct.nn_chunk* @nn_chunk_getptr(i8* %15)
  store %struct.nn_chunk* %16, %struct.nn_chunk** %6, align 8
  %17 = load %struct.nn_chunk*, %struct.nn_chunk** %6, align 8
  %18 = getelementptr inbounds %struct.nn_chunk, %struct.nn_chunk* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp eq i32 %20, 1
  br i1 %21, label %22, label %101

22:                                               ; preds = %2
  %23 = load i64, i64* %4, align 8
  %24 = load %struct.nn_chunk*, %struct.nn_chunk** %6, align 8
  %25 = getelementptr inbounds %struct.nn_chunk, %struct.nn_chunk* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ule i64 %23, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %22
  %29 = load i64, i64* %4, align 8
  %30 = load %struct.nn_chunk*, %struct.nn_chunk** %6, align 8
  %31 = getelementptr inbounds %struct.nn_chunk, %struct.nn_chunk* %30, i32 0, i32 0
  store i64 %29, i64* %31, align 8
  store i32 0, i32* %3, align 4
  br label %123

32:                                               ; preds = %22
  %33 = call i64 (...) @nn_chunk_hdrsize()
  store i64 %33, i64* %8, align 8
  %34 = load i8*, i8** %10, align 8
  %35 = bitcast i8* %34 to i32*
  %36 = load %struct.nn_chunk*, %struct.nn_chunk** %6, align 8
  %37 = bitcast %struct.nn_chunk* %36 to i32*
  %38 = ptrtoint i32* %35 to i64
  %39 = ptrtoint i32* %37 to i64
  %40 = sub i64 %38, %39
  %41 = sdiv exact i64 %40, 4
  %42 = load i64, i64* %8, align 8
  %43 = sub i64 %41, %42
  store i64 %43, i64* %12, align 8
  %44 = load i64, i64* %4, align 8
  %45 = load %struct.nn_chunk*, %struct.nn_chunk** %6, align 8
  %46 = getelementptr inbounds %struct.nn_chunk, %struct.nn_chunk* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = sub i64 %44, %47
  store i64 %48, i64* %11, align 8
  %49 = load i64, i64* %8, align 8
  %50 = load i64, i64* %4, align 8
  %51 = add i64 %49, %50
  %52 = load i64, i64* %4, align 8
  %53 = icmp ult i64 %51, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %32
  %55 = load i32, i32* @ENOMEM, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %3, align 4
  br label %123

57:                                               ; preds = %32
  %58 = load i64, i64* %11, align 8
  %59 = load i64, i64* %12, align 8
  %60 = icmp ule i64 %58, %59
  br i1 %60, label %61, label %100

61:                                               ; preds = %57
  %62 = load i8*, i8** %10, align 8
  %63 = bitcast i8* %62 to i32*
  %64 = load i64, i64* %11, align 8
  %65 = sub i64 0, %64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  %67 = bitcast i32* %66 to i8*
  store i8* %67, i8** %7, align 8
  %68 = load i8*, i8** %7, align 8
  %69 = load i8*, i8** %10, align 8
  %70 = load %struct.nn_chunk*, %struct.nn_chunk** %6, align 8
  %71 = getelementptr inbounds %struct.nn_chunk, %struct.nn_chunk* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = call i32 @memmove(i8* %68, i8* %69, i64 %72)
  %74 = load i64, i64* %4, align 8
  %75 = load %struct.nn_chunk*, %struct.nn_chunk** %6, align 8
  %76 = getelementptr inbounds %struct.nn_chunk, %struct.nn_chunk* %75, i32 0, i32 0
  store i64 %74, i64* %76, align 8
  %77 = load i8*, i8** %7, align 8
  %78 = bitcast i8* %77 to i32*
  %79 = load %struct.nn_chunk*, %struct.nn_chunk** %6, align 8
  %80 = bitcast %struct.nn_chunk* %79 to i32*
  %81 = ptrtoint i32* %78 to i64
  %82 = ptrtoint i32* %80 to i64
  %83 = sub i64 %81, %82
  %84 = sdiv exact i64 %83, 4
  %85 = load i64, i64* %8, align 8
  %86 = sub i64 %84, %85
  store i64 %86, i64* %12, align 8
  %87 = load i8*, i8** %7, align 8
  %88 = bitcast i8* %87 to i32*
  %89 = getelementptr inbounds i32, i32* %88, i64 -1
  %90 = load i32, i32* @NN_CHUNK_TAG, align 4
  %91 = call i32 @nn_putl(i32* %89, i32 %90)
  %92 = load i8*, i8** %7, align 8
  %93 = bitcast i8* %92 to i32*
  %94 = getelementptr inbounds i32, i32* %93, i64 -2
  %95 = load i64, i64* %12, align 8
  %96 = trunc i64 %95 to i32
  %97 = call i32 @nn_putl(i32* %94, i32 %96)
  %98 = load i8*, i8** %10, align 8
  %99 = load i8**, i8*** %5, align 8
  store i8* %98, i8** %99, align 8
  store i32 0, i32* %3, align 4
  br label %123

100:                                              ; preds = %57
  br label %101

101:                                              ; preds = %100, %2
  store i8* null, i8** %7, align 8
  %102 = load i64, i64* %4, align 8
  %103 = call i32 @nn_chunk_alloc(i64 %102, i32 0, i8** %7)
  store i32 %103, i32* %9, align 4
  %104 = load i32, i32* %9, align 4
  %105 = icmp ne i32 %104, 0
  %106 = zext i1 %105 to i32
  %107 = call i64 @nn_slow(i32 %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %111

109:                                              ; preds = %101
  %110 = load i32, i32* %9, align 4
  store i32 %110, i32* %3, align 4
  br label %123

111:                                              ; preds = %101
  %112 = load i8*, i8** %7, align 8
  %113 = load %struct.nn_chunk*, %struct.nn_chunk** %6, align 8
  %114 = call i32 @nn_chunk_getdata(%struct.nn_chunk* %113)
  %115 = load %struct.nn_chunk*, %struct.nn_chunk** %6, align 8
  %116 = getelementptr inbounds %struct.nn_chunk, %struct.nn_chunk* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = call i32 @memcpy(i8* %112, i32 %114, i64 %117)
  %119 = load i8*, i8** %7, align 8
  %120 = load i8**, i8*** %5, align 8
  store i8* %119, i8** %120, align 8
  %121 = load i8*, i8** %10, align 8
  %122 = call i32 @nn_chunk_free(i8* %121)
  store i32 0, i32* %3, align 4
  br label %123

123:                                              ; preds = %111, %109, %61, %54, %28
  %124 = load i32, i32* %3, align 4
  ret i32 %124
}

declare dso_local %struct.nn_chunk* @nn_chunk_getptr(i8*) #1

declare dso_local i64 @nn_chunk_hdrsize(...) #1

declare dso_local i32 @memmove(i8*, i8*, i64) #1

declare dso_local i32 @nn_putl(i32*, i32) #1

declare dso_local i32 @nn_chunk_alloc(i64, i32, i8**) #1

declare dso_local i64 @nn_slow(i32) #1

declare dso_local i32 @memcpy(i8*, i32, i64) #1

declare dso_local i32 @nn_chunk_getdata(%struct.nn_chunk*) #1

declare dso_local i32 @nn_chunk_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
