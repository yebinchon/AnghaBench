; ModuleID = '/home/carl/AnghaBench/php-src/ext/standard/extr_image.c_php_handle_swf.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/standard/extr_image.c_php_handle_swf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfxinfo = type { i32, i32, i64, i32 }

@SEEK_CUR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.gfxinfo* (i32*)* @php_handle_swf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.gfxinfo* @php_handle_swf(i32* %0) #0 {
  %2 = alloca %struct.gfxinfo*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.gfxinfo*, align 8
  %5 = alloca i64, align 8
  %6 = alloca [32 x i8], align 16
  store i32* %0, i32** %3, align 8
  store %struct.gfxinfo* null, %struct.gfxinfo** %4, align 8
  %7 = load i32*, i32** %3, align 8
  %8 = load i32, i32* @SEEK_CUR, align 4
  %9 = call i64 @php_stream_seek(i32* %7, i32 5, i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store %struct.gfxinfo* null, %struct.gfxinfo** %2, align 8
  br label %61

12:                                               ; preds = %1
  %13 = load i32*, i32** %3, align 8
  %14 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0
  %15 = call i32 @php_stream_read(i32* %13, i8* %14, i32 32)
  %16 = sext i32 %15 to i64
  %17 = icmp ne i64 %16, 32
  br i1 %17, label %18, label %19

18:                                               ; preds = %12
  store %struct.gfxinfo* null, %struct.gfxinfo** %2, align 8
  br label %61

19:                                               ; preds = %12
  %20 = call i64 @ecalloc(i32 1, i32 24)
  %21 = inttoptr i64 %20 to %struct.gfxinfo*
  store %struct.gfxinfo* %21, %struct.gfxinfo** %4, align 8
  %22 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0
  %23 = call i32 @php_swf_get_bits(i8* %22, i32 0, i64 5)
  %24 = sext i32 %23 to i64
  store i64 %24, i64* %5, align 8
  %25 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0
  %26 = load i64, i64* %5, align 8
  %27 = add nsw i64 5, %26
  %28 = trunc i64 %27 to i32
  %29 = load i64, i64* %5, align 8
  %30 = call i32 @php_swf_get_bits(i8* %25, i32 %28, i64 %29)
  %31 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0
  %32 = load i64, i64* %5, align 8
  %33 = call i32 @php_swf_get_bits(i8* %31, i32 5, i64 %32)
  %34 = sub nsw i32 %30, %33
  %35 = sdiv i32 %34, 20
  %36 = load %struct.gfxinfo*, %struct.gfxinfo** %4, align 8
  %37 = getelementptr inbounds %struct.gfxinfo, %struct.gfxinfo* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  %38 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0
  %39 = load i64, i64* %5, align 8
  %40 = mul nsw i64 3, %39
  %41 = add nsw i64 5, %40
  %42 = trunc i64 %41 to i32
  %43 = load i64, i64* %5, align 8
  %44 = call i32 @php_swf_get_bits(i8* %38, i32 %42, i64 %43)
  %45 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0
  %46 = load i64, i64* %5, align 8
  %47 = mul nsw i64 2, %46
  %48 = add nsw i64 5, %47
  %49 = trunc i64 %48 to i32
  %50 = load i64, i64* %5, align 8
  %51 = call i32 @php_swf_get_bits(i8* %45, i32 %49, i64 %50)
  %52 = sub nsw i32 %44, %51
  %53 = sdiv i32 %52, 20
  %54 = load %struct.gfxinfo*, %struct.gfxinfo** %4, align 8
  %55 = getelementptr inbounds %struct.gfxinfo, %struct.gfxinfo* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 4
  %56 = load %struct.gfxinfo*, %struct.gfxinfo** %4, align 8
  %57 = getelementptr inbounds %struct.gfxinfo, %struct.gfxinfo* %56, i32 0, i32 3
  store i32 0, i32* %57, align 8
  %58 = load %struct.gfxinfo*, %struct.gfxinfo** %4, align 8
  %59 = getelementptr inbounds %struct.gfxinfo, %struct.gfxinfo* %58, i32 0, i32 2
  store i64 0, i64* %59, align 8
  %60 = load %struct.gfxinfo*, %struct.gfxinfo** %4, align 8
  store %struct.gfxinfo* %60, %struct.gfxinfo** %2, align 8
  br label %61

61:                                               ; preds = %19, %18, %11
  %62 = load %struct.gfxinfo*, %struct.gfxinfo** %2, align 8
  ret %struct.gfxinfo* %62
}

declare dso_local i64 @php_stream_seek(i32*, i32, i32) #1

declare dso_local i32 @php_stream_read(i32*, i8*, i32) #1

declare dso_local i64 @ecalloc(i32, i32) #1

declare dso_local i32 @php_swf_get_bits(i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
