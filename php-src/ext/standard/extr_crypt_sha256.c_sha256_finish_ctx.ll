; ModuleID = '/home/carl/AnghaBench/php-src/ext/standard/extr_crypt_sha256.c_sha256_finish_ctx.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/standard/extr_crypt_sha256.c_sha256_finish_ctx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sha256_ctx = type { i32, i32*, i32*, i32* }

@fillbuf = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.sha256_ctx*, i8*)* @sha256_finish_ctx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @sha256_finish_ctx(%struct.sha256_ctx* %0, i8* %1) #0 {
  %3 = alloca %struct.sha256_ctx*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.sha256_ctx* %0, %struct.sha256_ctx** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load %struct.sha256_ctx*, %struct.sha256_ctx** %3, align 8
  %9 = getelementptr inbounds %struct.sha256_ctx, %struct.sha256_ctx* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = load %struct.sha256_ctx*, %struct.sha256_ctx** %3, align 8
  %13 = getelementptr inbounds %struct.sha256_ctx, %struct.sha256_ctx* %12, i32 0, i32 1
  %14 = load i32*, i32** %13, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 0
  %16 = load i32, i32* %15, align 4
  %17 = add nsw i32 %16, %11
  store i32 %17, i32* %15, align 4
  %18 = load %struct.sha256_ctx*, %struct.sha256_ctx** %3, align 8
  %19 = getelementptr inbounds %struct.sha256_ctx, %struct.sha256_ctx* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %5, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %32

25:                                               ; preds = %2
  %26 = load %struct.sha256_ctx*, %struct.sha256_ctx** %3, align 8
  %27 = getelementptr inbounds %struct.sha256_ctx, %struct.sha256_ctx* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 1
  %30 = load i32, i32* %29, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %29, align 4
  br label %32

32:                                               ; preds = %25, %2
  %33 = load i32, i32* %5, align 4
  %34 = icmp sge i32 %33, 56
  br i1 %34, label %35, label %38

35:                                               ; preds = %32
  %36 = load i32, i32* %5, align 4
  %37 = sub nsw i32 120, %36
  br label %41

38:                                               ; preds = %32
  %39 = load i32, i32* %5, align 4
  %40 = sub nsw i32 56, %39
  br label %41

41:                                               ; preds = %38, %35
  %42 = phi i32 [ %37, %35 ], [ %40, %38 ]
  %43 = sext i32 %42 to i64
  store i64 %43, i64* %6, align 8
  %44 = load %struct.sha256_ctx*, %struct.sha256_ctx** %3, align 8
  %45 = getelementptr inbounds %struct.sha256_ctx, %struct.sha256_ctx* %44, i32 0, i32 3
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* %5, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = load i32, i32* @fillbuf, align 4
  %51 = load i64, i64* %6, align 8
  %52 = call i32 @memcpy(i32* %49, i32 %50, i64 %51)
  %53 = load %struct.sha256_ctx*, %struct.sha256_ctx** %3, align 8
  %54 = getelementptr inbounds %struct.sha256_ctx, %struct.sha256_ctx* %53, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 0
  %57 = load i32, i32* %56, align 4
  %58 = shl i32 %57, 3
  %59 = call i32 @SWAP(i32 %58)
  %60 = load %struct.sha256_ctx*, %struct.sha256_ctx** %3, align 8
  %61 = getelementptr inbounds %struct.sha256_ctx, %struct.sha256_ctx* %60, i32 0, i32 3
  %62 = load i32*, i32** %61, align 8
  %63 = load i32, i32* %5, align 4
  %64 = sext i32 %63 to i64
  %65 = load i64, i64* %6, align 8
  %66 = add i64 %64, %65
  %67 = add i64 %66, 4
  %68 = getelementptr inbounds i32, i32* %62, i64 %67
  store i32 %59, i32* %68, align 4
  %69 = load %struct.sha256_ctx*, %struct.sha256_ctx** %3, align 8
  %70 = getelementptr inbounds %struct.sha256_ctx, %struct.sha256_ctx* %69, i32 0, i32 1
  %71 = load i32*, i32** %70, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 1
  %73 = load i32, i32* %72, align 4
  %74 = shl i32 %73, 3
  %75 = load %struct.sha256_ctx*, %struct.sha256_ctx** %3, align 8
  %76 = getelementptr inbounds %struct.sha256_ctx, %struct.sha256_ctx* %75, i32 0, i32 1
  %77 = load i32*, i32** %76, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 0
  %79 = load i32, i32* %78, align 4
  %80 = ashr i32 %79, 29
  %81 = or i32 %74, %80
  %82 = call i32 @SWAP(i32 %81)
  %83 = load %struct.sha256_ctx*, %struct.sha256_ctx** %3, align 8
  %84 = getelementptr inbounds %struct.sha256_ctx, %struct.sha256_ctx* %83, i32 0, i32 3
  %85 = load i32*, i32** %84, align 8
  %86 = load i32, i32* %5, align 4
  %87 = sext i32 %86 to i64
  %88 = load i64, i64* %6, align 8
  %89 = add i64 %87, %88
  %90 = getelementptr inbounds i32, i32* %85, i64 %89
  store i32 %82, i32* %90, align 4
  %91 = load %struct.sha256_ctx*, %struct.sha256_ctx** %3, align 8
  %92 = getelementptr inbounds %struct.sha256_ctx, %struct.sha256_ctx* %91, i32 0, i32 3
  %93 = load i32*, i32** %92, align 8
  %94 = load i32, i32* %5, align 4
  %95 = sext i32 %94 to i64
  %96 = load i64, i64* %6, align 8
  %97 = add i64 %95, %96
  %98 = add i64 %97, 8
  %99 = trunc i64 %98 to i32
  %100 = load %struct.sha256_ctx*, %struct.sha256_ctx** %3, align 8
  %101 = call i32 @sha256_process_block(i32* %93, i32 %99, %struct.sha256_ctx* %100)
  store i32 0, i32* %7, align 4
  br label %102

102:                                              ; preds = %119, %41
  %103 = load i32, i32* %7, align 4
  %104 = icmp ult i32 %103, 8
  br i1 %104, label %105, label %122

105:                                              ; preds = %102
  %106 = load %struct.sha256_ctx*, %struct.sha256_ctx** %3, align 8
  %107 = getelementptr inbounds %struct.sha256_ctx, %struct.sha256_ctx* %106, i32 0, i32 2
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

declare dso_local i32 @sha256_process_block(i32*, i32, %struct.sha256_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
