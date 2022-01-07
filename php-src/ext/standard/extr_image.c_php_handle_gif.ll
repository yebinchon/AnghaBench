; ModuleID = '/home/carl/AnghaBench/php-src/ext/standard/extr_image.c_php_handle_gif.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/standard/extr_image.c_php_handle_gif.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfxinfo = type { i32, i32, i32, i32 }

@SEEK_CUR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.gfxinfo* (i32*)* @php_handle_gif to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.gfxinfo* @php_handle_gif(i32* %0) #0 {
  %2 = alloca %struct.gfxinfo*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.gfxinfo*, align 8
  %5 = alloca [5 x i8], align 1
  store i32* %0, i32** %3, align 8
  store %struct.gfxinfo* null, %struct.gfxinfo** %4, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = load i32, i32* @SEEK_CUR, align 4
  %8 = call i64 @php_stream_seek(i32* %6, i32 3, i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store %struct.gfxinfo* null, %struct.gfxinfo** %2, align 8
  br label %60

11:                                               ; preds = %1
  %12 = load i32*, i32** %3, align 8
  %13 = getelementptr inbounds [5 x i8], [5 x i8]* %5, i64 0, i64 0
  %14 = call i32 @php_stream_read(i32* %12, i8* %13, i32 5)
  %15 = sext i32 %14 to i64
  %16 = icmp ne i64 %15, 5
  br i1 %16, label %17, label %18

17:                                               ; preds = %11
  store %struct.gfxinfo* null, %struct.gfxinfo** %2, align 8
  br label %60

18:                                               ; preds = %11
  %19 = call i64 @ecalloc(i32 1, i32 16)
  %20 = inttoptr i64 %19 to %struct.gfxinfo*
  store %struct.gfxinfo* %20, %struct.gfxinfo** %4, align 8
  %21 = getelementptr inbounds [5 x i8], [5 x i8]* %5, i64 0, i64 0
  %22 = load i8, i8* %21, align 1
  %23 = zext i8 %22 to i32
  %24 = getelementptr inbounds [5 x i8], [5 x i8]* %5, i64 0, i64 1
  %25 = load i8, i8* %24, align 1
  %26 = zext i8 %25 to i32
  %27 = shl i32 %26, 8
  %28 = or i32 %23, %27
  %29 = load %struct.gfxinfo*, %struct.gfxinfo** %4, align 8
  %30 = getelementptr inbounds %struct.gfxinfo, %struct.gfxinfo* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 4
  %31 = getelementptr inbounds [5 x i8], [5 x i8]* %5, i64 0, i64 2
  %32 = load i8, i8* %31, align 1
  %33 = zext i8 %32 to i32
  %34 = getelementptr inbounds [5 x i8], [5 x i8]* %5, i64 0, i64 3
  %35 = load i8, i8* %34, align 1
  %36 = zext i8 %35 to i32
  %37 = shl i32 %36, 8
  %38 = or i32 %33, %37
  %39 = load %struct.gfxinfo*, %struct.gfxinfo** %4, align 8
  %40 = getelementptr inbounds %struct.gfxinfo, %struct.gfxinfo* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 4
  %41 = getelementptr inbounds [5 x i8], [5 x i8]* %5, i64 0, i64 4
  %42 = load i8, i8* %41, align 1
  %43 = zext i8 %42 to i32
  %44 = and i32 %43, 128
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %18
  %47 = getelementptr inbounds [5 x i8], [5 x i8]* %5, i64 0, i64 4
  %48 = load i8, i8* %47, align 1
  %49 = zext i8 %48 to i32
  %50 = and i32 %49, 7
  %51 = add i32 %50, 1
  br label %53

52:                                               ; preds = %18
  br label %53

53:                                               ; preds = %52, %46
  %54 = phi i32 [ %51, %46 ], [ 0, %52 ]
  %55 = load %struct.gfxinfo*, %struct.gfxinfo** %4, align 8
  %56 = getelementptr inbounds %struct.gfxinfo, %struct.gfxinfo* %55, i32 0, i32 2
  store i32 %54, i32* %56, align 4
  %57 = load %struct.gfxinfo*, %struct.gfxinfo** %4, align 8
  %58 = getelementptr inbounds %struct.gfxinfo, %struct.gfxinfo* %57, i32 0, i32 3
  store i32 3, i32* %58, align 4
  %59 = load %struct.gfxinfo*, %struct.gfxinfo** %4, align 8
  store %struct.gfxinfo* %59, %struct.gfxinfo** %2, align 8
  br label %60

60:                                               ; preds = %53, %17, %10
  %61 = load %struct.gfxinfo*, %struct.gfxinfo** %2, align 8
  ret %struct.gfxinfo* %61
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
