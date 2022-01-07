; ModuleID = '/home/carl/AnghaBench/php-src/ext/standard/extr_image.c_php_handle_webp.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/standard/extr_image.c_php_handle_webp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfxinfo = type { i8, i8, i32 }

@__const.php_handle_webp.sig = private unnamed_addr constant [3 x i8] c"VP8", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.gfxinfo* (i32*)* @php_handle_webp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.gfxinfo* @php_handle_webp(i32* %0) #0 {
  %2 = alloca %struct.gfxinfo*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.gfxinfo*, align 8
  %5 = alloca [3 x i8], align 1
  %6 = alloca [18 x i8], align 16
  %7 = alloca i8, align 1
  store i32* %0, i32** %3, align 8
  store %struct.gfxinfo* null, %struct.gfxinfo** %4, align 8
  %8 = bitcast [3 x i8]* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %8, i8* align 1 getelementptr inbounds ([3 x i8], [3 x i8]* @__const.php_handle_webp.sig, i32 0, i32 0), i64 3, i1 false)
  %9 = load i32*, i32** %3, align 8
  %10 = getelementptr inbounds [18 x i8], [18 x i8]* %6, i64 0, i64 0
  %11 = call i32 @php_stream_read(i32* %9, i8* %10, i32 18)
  %12 = icmp ne i32 %11, 18
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store %struct.gfxinfo* null, %struct.gfxinfo** %2, align 8
  br label %130

14:                                               ; preds = %1
  %15 = getelementptr inbounds [18 x i8], [18 x i8]* %6, i64 0, i64 0
  %16 = getelementptr inbounds [3 x i8], [3 x i8]* %5, i64 0, i64 0
  %17 = call i64 @memcmp(i8* %15, i8* %16, i32 3)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  store %struct.gfxinfo* null, %struct.gfxinfo** %2, align 8
  br label %130

20:                                               ; preds = %14
  %21 = getelementptr inbounds [18 x i8], [18 x i8]* %6, i64 0, i64 3
  %22 = load i8, i8* %21, align 1
  %23 = zext i8 %22 to i32
  switch i32 %23, label %27 [
    i32 32, label %24
    i32 76, label %24
    i32 88, label %24
  ]

24:                                               ; preds = %20, %20, %20
  %25 = getelementptr inbounds [18 x i8], [18 x i8]* %6, i64 0, i64 3
  %26 = load i8, i8* %25, align 1
  store i8 %26, i8* %7, align 1
  br label %28

27:                                               ; preds = %20
  store %struct.gfxinfo* null, %struct.gfxinfo** %2, align 8
  br label %130

28:                                               ; preds = %24
  %29 = call i64 @ecalloc(i32 1, i32 8)
  %30 = inttoptr i64 %29 to %struct.gfxinfo*
  store %struct.gfxinfo* %30, %struct.gfxinfo** %4, align 8
  %31 = load i8, i8* %7, align 1
  %32 = sext i8 %31 to i32
  switch i32 %32, label %126 [
    i32 32, label %33
    i32 76, label %58
    i32 88, label %91
  ]

33:                                               ; preds = %28
  %34 = getelementptr inbounds [18 x i8], [18 x i8]* %6, i64 0, i64 14
  %35 = load i8, i8* %34, align 2
  %36 = zext i8 %35 to i32
  %37 = getelementptr inbounds [18 x i8], [18 x i8]* %6, i64 0, i64 15
  %38 = load i8, i8* %37, align 1
  %39 = zext i8 %38 to i32
  %40 = and i32 %39, 63
  %41 = shl i32 %40, 8
  %42 = add nsw i32 %36, %41
  %43 = trunc i32 %42 to i8
  %44 = load %struct.gfxinfo*, %struct.gfxinfo** %4, align 8
  %45 = getelementptr inbounds %struct.gfxinfo, %struct.gfxinfo* %44, i32 0, i32 0
  store i8 %43, i8* %45, align 4
  %46 = getelementptr inbounds [18 x i8], [18 x i8]* %6, i64 0, i64 16
  %47 = load i8, i8* %46, align 16
  %48 = zext i8 %47 to i32
  %49 = getelementptr inbounds [18 x i8], [18 x i8]* %6, i64 0, i64 17
  %50 = load i8, i8* %49, align 1
  %51 = zext i8 %50 to i32
  %52 = and i32 %51, 63
  %53 = shl i32 %52, 8
  %54 = add nsw i32 %48, %53
  %55 = trunc i32 %54 to i8
  %56 = load %struct.gfxinfo*, %struct.gfxinfo** %4, align 8
  %57 = getelementptr inbounds %struct.gfxinfo, %struct.gfxinfo* %56, i32 0, i32 1
  store i8 %55, i8* %57, align 1
  br label %126

58:                                               ; preds = %28
  %59 = getelementptr inbounds [18 x i8], [18 x i8]* %6, i64 0, i64 9
  %60 = load i8, i8* %59, align 1
  %61 = zext i8 %60 to i32
  %62 = getelementptr inbounds [18 x i8], [18 x i8]* %6, i64 0, i64 10
  %63 = load i8, i8* %62, align 2
  %64 = zext i8 %63 to i32
  %65 = and i32 %64, 63
  %66 = shl i32 %65, 8
  %67 = add nsw i32 %61, %66
  %68 = add nsw i32 %67, 1
  %69 = trunc i32 %68 to i8
  %70 = load %struct.gfxinfo*, %struct.gfxinfo** %4, align 8
  %71 = getelementptr inbounds %struct.gfxinfo, %struct.gfxinfo* %70, i32 0, i32 0
  store i8 %69, i8* %71, align 4
  %72 = getelementptr inbounds [18 x i8], [18 x i8]* %6, i64 0, i64 10
  %73 = load i8, i8* %72, align 2
  %74 = zext i8 %73 to i32
  %75 = ashr i32 %74, 6
  %76 = getelementptr inbounds [18 x i8], [18 x i8]* %6, i64 0, i64 11
  %77 = load i8, i8* %76, align 1
  %78 = zext i8 %77 to i32
  %79 = shl i32 %78, 2
  %80 = add nsw i32 %75, %79
  %81 = getelementptr inbounds [18 x i8], [18 x i8]* %6, i64 0, i64 12
  %82 = load i8, i8* %81, align 4
  %83 = zext i8 %82 to i32
  %84 = and i32 %83, 15
  %85 = shl i32 %84, 10
  %86 = add nsw i32 %80, %85
  %87 = add nsw i32 %86, 1
  %88 = trunc i32 %87 to i8
  %89 = load %struct.gfxinfo*, %struct.gfxinfo** %4, align 8
  %90 = getelementptr inbounds %struct.gfxinfo, %struct.gfxinfo* %89, i32 0, i32 1
  store i8 %88, i8* %90, align 1
  br label %126

91:                                               ; preds = %28
  %92 = getelementptr inbounds [18 x i8], [18 x i8]* %6, i64 0, i64 12
  %93 = load i8, i8* %92, align 4
  %94 = zext i8 %93 to i32
  %95 = getelementptr inbounds [18 x i8], [18 x i8]* %6, i64 0, i64 13
  %96 = load i8, i8* %95, align 1
  %97 = zext i8 %96 to i32
  %98 = shl i32 %97, 8
  %99 = add nsw i32 %94, %98
  %100 = getelementptr inbounds [18 x i8], [18 x i8]* %6, i64 0, i64 14
  %101 = load i8, i8* %100, align 2
  %102 = zext i8 %101 to i32
  %103 = shl i32 %102, 16
  %104 = add nsw i32 %99, %103
  %105 = add nsw i32 %104, 1
  %106 = trunc i32 %105 to i8
  %107 = load %struct.gfxinfo*, %struct.gfxinfo** %4, align 8
  %108 = getelementptr inbounds %struct.gfxinfo, %struct.gfxinfo* %107, i32 0, i32 0
  store i8 %106, i8* %108, align 4
  %109 = getelementptr inbounds [18 x i8], [18 x i8]* %6, i64 0, i64 15
  %110 = load i8, i8* %109, align 1
  %111 = zext i8 %110 to i32
  %112 = getelementptr inbounds [18 x i8], [18 x i8]* %6, i64 0, i64 16
  %113 = load i8, i8* %112, align 16
  %114 = zext i8 %113 to i32
  %115 = shl i32 %114, 8
  %116 = add nsw i32 %111, %115
  %117 = getelementptr inbounds [18 x i8], [18 x i8]* %6, i64 0, i64 17
  %118 = load i8, i8* %117, align 1
  %119 = zext i8 %118 to i32
  %120 = shl i32 %119, 16
  %121 = add nsw i32 %116, %120
  %122 = add nsw i32 %121, 1
  %123 = trunc i32 %122 to i8
  %124 = load %struct.gfxinfo*, %struct.gfxinfo** %4, align 8
  %125 = getelementptr inbounds %struct.gfxinfo, %struct.gfxinfo* %124, i32 0, i32 1
  store i8 %123, i8* %125, align 1
  br label %126

126:                                              ; preds = %28, %91, %58, %33
  %127 = load %struct.gfxinfo*, %struct.gfxinfo** %4, align 8
  %128 = getelementptr inbounds %struct.gfxinfo, %struct.gfxinfo* %127, i32 0, i32 2
  store i32 8, i32* %128, align 4
  %129 = load %struct.gfxinfo*, %struct.gfxinfo** %4, align 8
  store %struct.gfxinfo* %129, %struct.gfxinfo** %2, align 8
  br label %130

130:                                              ; preds = %126, %27, %19, %13
  %131 = load %struct.gfxinfo*, %struct.gfxinfo** %2, align 8
  ret %struct.gfxinfo* %131
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @php_stream_read(i32*, i8*, i32) #2

declare dso_local i64 @memcmp(i8*, i8*, i32) #2

declare dso_local i64 @ecalloc(i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
