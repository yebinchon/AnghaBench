; ModuleID = '/home/carl/AnghaBench/php-src/ext/standard/extr_image.c_php_handle_ico.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/standard/extr_image.c_php_handle_ico.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfxinfo = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.gfxinfo* (i32*)* @php_handle_ico to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.gfxinfo* @php_handle_ico(i32* %0) #0 {
  %2 = alloca %struct.gfxinfo*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.gfxinfo*, align 8
  %5 = alloca [16 x i8], align 16
  %6 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store %struct.gfxinfo* null, %struct.gfxinfo** %4, align 8
  store i32 0, i32* %6, align 4
  %7 = load i32*, i32** %3, align 8
  %8 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 0
  %9 = call i32 @php_stream_read(i32* %7, i8* %8, i32 2)
  %10 = icmp ne i32 %9, 2
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store %struct.gfxinfo* null, %struct.gfxinfo** %2, align 8
  br label %79

12:                                               ; preds = %1
  %13 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 1
  %14 = load i8, i8* %13, align 1
  %15 = zext i8 %14 to i32
  %16 = shl i32 %15, 8
  %17 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 0
  %18 = load i8, i8* %17, align 16
  %19 = zext i8 %18 to i32
  %20 = add i32 %16, %19
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp slt i32 %21, 1
  br i1 %22, label %26, label %23

23:                                               ; preds = %12
  %24 = load i32, i32* %6, align 4
  %25 = icmp sgt i32 %24, 255
  br i1 %25, label %26, label %27

26:                                               ; preds = %23, %12
  store %struct.gfxinfo* null, %struct.gfxinfo** %2, align 8
  br label %79

27:                                               ; preds = %23
  %28 = call i64 @ecalloc(i32 1, i32 12)
  %29 = inttoptr i64 %28 to %struct.gfxinfo*
  store %struct.gfxinfo* %29, %struct.gfxinfo** %4, align 8
  br label %30

30:                                               ; preds = %74, %27
  %31 = load i32, i32* %6, align 4
  %32 = icmp sgt i32 %31, 0
  br i1 %32, label %33, label %77

33:                                               ; preds = %30
  %34 = load i32*, i32** %3, align 8
  %35 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 0
  %36 = call i32 @php_stream_read(i32* %34, i8* %35, i32 16)
  %37 = sext i32 %36 to i64
  %38 = icmp ne i64 %37, 16
  br i1 %38, label %39, label %40

39:                                               ; preds = %33
  br label %77

40:                                               ; preds = %33
  %41 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 7
  %42 = load i8, i8* %41, align 1
  %43 = zext i8 %42 to i32
  %44 = shl i32 %43, 8
  %45 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 6
  %46 = load i8, i8* %45, align 2
  %47 = zext i8 %46 to i32
  %48 = add i32 %44, %47
  %49 = load %struct.gfxinfo*, %struct.gfxinfo** %4, align 8
  %50 = getelementptr inbounds %struct.gfxinfo, %struct.gfxinfo* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = icmp uge i32 %48, %51
  br i1 %52, label %53, label %74

53:                                               ; preds = %40
  %54 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 0
  %55 = load i8, i8* %54, align 16
  %56 = zext i8 %55 to i32
  %57 = load %struct.gfxinfo*, %struct.gfxinfo** %4, align 8
  %58 = getelementptr inbounds %struct.gfxinfo, %struct.gfxinfo* %57, i32 0, i32 1
  store i32 %56, i32* %58, align 4
  %59 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 1
  %60 = load i8, i8* %59, align 1
  %61 = zext i8 %60 to i32
  %62 = load %struct.gfxinfo*, %struct.gfxinfo** %4, align 8
  %63 = getelementptr inbounds %struct.gfxinfo, %struct.gfxinfo* %62, i32 0, i32 2
  store i32 %61, i32* %63, align 4
  %64 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 7
  %65 = load i8, i8* %64, align 1
  %66 = zext i8 %65 to i32
  %67 = shl i32 %66, 8
  %68 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 6
  %69 = load i8, i8* %68, align 2
  %70 = zext i8 %69 to i32
  %71 = add i32 %67, %70
  %72 = load %struct.gfxinfo*, %struct.gfxinfo** %4, align 8
  %73 = getelementptr inbounds %struct.gfxinfo, %struct.gfxinfo* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 4
  br label %74

74:                                               ; preds = %53, %40
  %75 = load i32, i32* %6, align 4
  %76 = add nsw i32 %75, -1
  store i32 %76, i32* %6, align 4
  br label %30

77:                                               ; preds = %39, %30
  %78 = load %struct.gfxinfo*, %struct.gfxinfo** %4, align 8
  store %struct.gfxinfo* %78, %struct.gfxinfo** %2, align 8
  br label %79

79:                                               ; preds = %77, %26, %11
  %80 = load %struct.gfxinfo*, %struct.gfxinfo** %2, align 8
  ret %struct.gfxinfo* %80
}

declare dso_local i32 @php_stream_read(i32*, i8*, i32) #1

declare dso_local i64 @ecalloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
