; ModuleID = '/home/carl/AnghaBench/php-src/ext/standard/extr_crypt_sha512.c_sha512_finish_ctx.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/standard/extr_crypt_sha512.c_sha512_finish_ctx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sha512_ctx = type { i32, i32*, i32*, i32* }

@fillbuf = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.sha512_ctx*, i8*)* @sha512_finish_ctx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @sha512_finish_ctx(%struct.sha512_ctx* %0, i8* %1) #0 {
  %3 = alloca %struct.sha512_ctx*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.sha512_ctx* %0, %struct.sha512_ctx** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load %struct.sha512_ctx*, %struct.sha512_ctx** %3, align 8
  %9 = getelementptr inbounds %struct.sha512_ctx, %struct.sha512_ctx* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = load %struct.sha512_ctx*, %struct.sha512_ctx** %3, align 8
  %13 = getelementptr inbounds %struct.sha512_ctx, %struct.sha512_ctx* %12, i32 0, i32 1
  %14 = load i32*, i32** %13, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 0
  %16 = load i32, i32* %15, align 4
  %17 = add nsw i32 %16, %11
  store i32 %17, i32* %15, align 4
  %18 = load %struct.sha512_ctx*, %struct.sha512_ctx** %3, align 8
  %19 = getelementptr inbounds %struct.sha512_ctx, %struct.sha512_ctx* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %5, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %32

25:                                               ; preds = %2
  %26 = load %struct.sha512_ctx*, %struct.sha512_ctx** %3, align 8
  %27 = getelementptr inbounds %struct.sha512_ctx, %struct.sha512_ctx* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 1
  %30 = load i32, i32* %29, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %29, align 4
  br label %32

32:                                               ; preds = %25, %2
  %33 = load i32, i32* %5, align 4
  %34 = icmp sge i32 %33, 112
  br i1 %34, label %35, label %39

35:                                               ; preds = %32
  %36 = load i32, i32* %5, align 4
  %37 = sext i32 %36 to i64
  %38 = sub i64 240, %37
  br label %43

39:                                               ; preds = %32
  %40 = load i32, i32* %5, align 4
  %41 = sext i32 %40 to i64
  %42 = sub i64 112, %41
  br label %43

43:                                               ; preds = %39, %35
  %44 = phi i64 [ %38, %35 ], [ %42, %39 ]
  store i64 %44, i64* %6, align 8
  %45 = load %struct.sha512_ctx*, %struct.sha512_ctx** %3, align 8
  %46 = getelementptr inbounds %struct.sha512_ctx, %struct.sha512_ctx* %45, i32 0, i32 3
  %47 = load i32*, i32** %46, align 8
  %48 = load i32, i32* %5, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load i32, i32* @fillbuf, align 4
  %52 = load i64, i64* %6, align 8
  %53 = call i32 @memcpy(i32* %50, i32 %51, i64 %52)
  %54 = load %struct.sha512_ctx*, %struct.sha512_ctx** %3, align 8
  %55 = getelementptr inbounds %struct.sha512_ctx, %struct.sha512_ctx* %54, i32 0, i32 1
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 0
  %58 = load i32, i32* %57, align 4
  %59 = shl i32 %58, 3
  %60 = call i32 @SWAP(i32 %59)
  %61 = load %struct.sha512_ctx*, %struct.sha512_ctx** %3, align 8
  %62 = getelementptr inbounds %struct.sha512_ctx, %struct.sha512_ctx* %61, i32 0, i32 3
  %63 = load i32*, i32** %62, align 8
  %64 = load i32, i32* %5, align 4
  %65 = sext i32 %64 to i64
  %66 = load i64, i64* %6, align 8
  %67 = add i64 %65, %66
  %68 = add i64 %67, 8
  %69 = getelementptr inbounds i32, i32* %63, i64 %68
  store i32 %60, i32* %69, align 4
  %70 = load %struct.sha512_ctx*, %struct.sha512_ctx** %3, align 8
  %71 = getelementptr inbounds %struct.sha512_ctx, %struct.sha512_ctx* %70, i32 0, i32 1
  %72 = load i32*, i32** %71, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 1
  %74 = load i32, i32* %73, align 4
  %75 = shl i32 %74, 3
  %76 = load %struct.sha512_ctx*, %struct.sha512_ctx** %3, align 8
  %77 = getelementptr inbounds %struct.sha512_ctx, %struct.sha512_ctx* %76, i32 0, i32 1
  %78 = load i32*, i32** %77, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 0
  %80 = load i32, i32* %79, align 4
  %81 = ashr i32 %80, 61
  %82 = or i32 %75, %81
  %83 = call i32 @SWAP(i32 %82)
  %84 = load %struct.sha512_ctx*, %struct.sha512_ctx** %3, align 8
  %85 = getelementptr inbounds %struct.sha512_ctx, %struct.sha512_ctx* %84, i32 0, i32 3
  %86 = load i32*, i32** %85, align 8
  %87 = load i32, i32* %5, align 4
  %88 = sext i32 %87 to i64
  %89 = load i64, i64* %6, align 8
  %90 = add i64 %88, %89
  %91 = getelementptr inbounds i32, i32* %86, i64 %90
  store i32 %83, i32* %91, align 4
  %92 = load %struct.sha512_ctx*, %struct.sha512_ctx** %3, align 8
  %93 = getelementptr inbounds %struct.sha512_ctx, %struct.sha512_ctx* %92, i32 0, i32 3
  %94 = load i32*, i32** %93, align 8
  %95 = load i32, i32* %5, align 4
  %96 = sext i32 %95 to i64
  %97 = load i64, i64* %6, align 8
  %98 = add i64 %96, %97
  %99 = add i64 %98, 16
  %100 = load %struct.sha512_ctx*, %struct.sha512_ctx** %3, align 8
  %101 = call i32 @sha512_process_block(i32* %94, i64 %99, %struct.sha512_ctx* %100)
  store i32 0, i32* %7, align 4
  br label %102

102:                                              ; preds = %119, %43
  %103 = load i32, i32* %7, align 4
  %104 = icmp ult i32 %103, 8
  br i1 %104, label %105, label %122

105:                                              ; preds = %102
  %106 = load %struct.sha512_ctx*, %struct.sha512_ctx** %3, align 8
  %107 = getelementptr inbounds %struct.sha512_ctx, %struct.sha512_ctx* %106, i32 0, i32 2
  %108 = load i32*, i32** %107, align 8
  %109 = load i32, i32* %7, align 4
  %110 = zext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %108, i64 %110
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @SWAP(i32 %112)
  %114 = load i8*, i8** %4, align 8
  %115 = bitcast i8* %114 to i32*
  %116 = load i32, i32* %7, align 4
  %117 = zext i32 %116 to i64
  %118 = getelementptr inbounds i32, i32* %115, i64 %117
  store i32 %113, i32* %118, align 4
  br label %119

119:                                              ; preds = %105
  %120 = load i32, i32* %7, align 4
  %121 = add i32 %120, 1
  store i32 %121, i32* %7, align 4
  br label %102

122:                                              ; preds = %102
  %123 = load i8*, i8** %4, align 8
  ret i8* %123
}

declare dso_local i32 @memcpy(i32*, i32, i64) #1

declare dso_local i32 @SWAP(i32) #1

declare dso_local i32 @sha512_process_block(i32*, i64, %struct.sha512_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
