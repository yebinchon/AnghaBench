; ModuleID = '/home/carl/AnghaBench/php-src/ext/standard/extr_image.c_php_handle_png.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/standard/extr_image.c_php_handle_png.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfxinfo = type { i32, i32, i32 }

@SEEK_CUR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.gfxinfo* (i32*)* @php_handle_png to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.gfxinfo* @php_handle_png(i32* %0) #0 {
  %2 = alloca %struct.gfxinfo*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.gfxinfo*, align 8
  %5 = alloca [9 x i8], align 1
  store i32* %0, i32** %3, align 8
  store %struct.gfxinfo* null, %struct.gfxinfo** %4, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = load i32, i32* @SEEK_CUR, align 4
  %8 = call i64 @php_stream_seek(i32* %6, i32 8, i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store %struct.gfxinfo* null, %struct.gfxinfo** %2, align 8
  br label %67

11:                                               ; preds = %1
  %12 = load i32*, i32** %3, align 8
  %13 = getelementptr inbounds [9 x i8], [9 x i8]* %5, i64 0, i64 0
  %14 = call i32 @php_stream_read(i32* %12, i8* %13, i32 9)
  %15 = sext i32 %14 to i64
  %16 = icmp ult i64 %15, 9
  br i1 %16, label %17, label %18

17:                                               ; preds = %11
  store %struct.gfxinfo* null, %struct.gfxinfo** %2, align 8
  br label %67

18:                                               ; preds = %11
  %19 = call i64 @ecalloc(i32 1, i32 12)
  %20 = inttoptr i64 %19 to %struct.gfxinfo*
  store %struct.gfxinfo* %20, %struct.gfxinfo** %4, align 8
  %21 = getelementptr inbounds [9 x i8], [9 x i8]* %5, i64 0, i64 0
  %22 = load i8, i8* %21, align 1
  %23 = zext i8 %22 to i32
  %24 = shl i32 %23, 24
  %25 = getelementptr inbounds [9 x i8], [9 x i8]* %5, i64 0, i64 1
  %26 = load i8, i8* %25, align 1
  %27 = zext i8 %26 to i32
  %28 = shl i32 %27, 16
  %29 = add i32 %24, %28
  %30 = getelementptr inbounds [9 x i8], [9 x i8]* %5, i64 0, i64 2
  %31 = load i8, i8* %30, align 1
  %32 = zext i8 %31 to i32
  %33 = shl i32 %32, 8
  %34 = add i32 %29, %33
  %35 = getelementptr inbounds [9 x i8], [9 x i8]* %5, i64 0, i64 3
  %36 = load i8, i8* %35, align 1
  %37 = zext i8 %36 to i32
  %38 = add i32 %34, %37
  %39 = load %struct.gfxinfo*, %struct.gfxinfo** %4, align 8
  %40 = getelementptr inbounds %struct.gfxinfo, %struct.gfxinfo* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 4
  %41 = getelementptr inbounds [9 x i8], [9 x i8]* %5, i64 0, i64 4
  %42 = load i8, i8* %41, align 1
  %43 = zext i8 %42 to i32
  %44 = shl i32 %43, 24
  %45 = getelementptr inbounds [9 x i8], [9 x i8]* %5, i64 0, i64 5
  %46 = load i8, i8* %45, align 1
  %47 = zext i8 %46 to i32
  %48 = shl i32 %47, 16
  %49 = add i32 %44, %48
  %50 = getelementptr inbounds [9 x i8], [9 x i8]* %5, i64 0, i64 6
  %51 = load i8, i8* %50, align 1
  %52 = zext i8 %51 to i32
  %53 = shl i32 %52, 8
  %54 = add i32 %49, %53
  %55 = getelementptr inbounds [9 x i8], [9 x i8]* %5, i64 0, i64 7
  %56 = load i8, i8* %55, align 1
  %57 = zext i8 %56 to i32
  %58 = add i32 %54, %57
  %59 = load %struct.gfxinfo*, %struct.gfxinfo** %4, align 8
  %60 = getelementptr inbounds %struct.gfxinfo, %struct.gfxinfo* %59, i32 0, i32 1
  store i32 %58, i32* %60, align 4
  %61 = getelementptr inbounds [9 x i8], [9 x i8]* %5, i64 0, i64 8
  %62 = load i8, i8* %61, align 1
  %63 = zext i8 %62 to i32
  %64 = load %struct.gfxinfo*, %struct.gfxinfo** %4, align 8
  %65 = getelementptr inbounds %struct.gfxinfo, %struct.gfxinfo* %64, i32 0, i32 2
  store i32 %63, i32* %65, align 4
  %66 = load %struct.gfxinfo*, %struct.gfxinfo** %4, align 8
  store %struct.gfxinfo* %66, %struct.gfxinfo** %2, align 8
  br label %67

67:                                               ; preds = %18, %17, %10
  %68 = load %struct.gfxinfo*, %struct.gfxinfo** %2, align 8
  ret %struct.gfxinfo* %68
}

declare dso_local i64 @php_stream_seek(i32*, i32, i32) #1

declare dso_local i32 @php_stream_read(i32*, i8*, i32) #1

declare dso_local i64 @ecalloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
