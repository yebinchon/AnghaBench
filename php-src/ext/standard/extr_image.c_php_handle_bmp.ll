; ModuleID = '/home/carl/AnghaBench/php-src/ext/standard/extr_image.c_php_handle_bmp.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/standard/extr_image.c_php_handle_bmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfxinfo = type { i32, i32, i32 }

@SEEK_CUR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.gfxinfo* (i32*)* @php_handle_bmp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.gfxinfo* @php_handle_bmp(i32* %0) #0 {
  %2 = alloca %struct.gfxinfo*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.gfxinfo*, align 8
  %5 = alloca [16 x i8], align 16
  %6 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store %struct.gfxinfo* null, %struct.gfxinfo** %4, align 8
  %7 = load i32*, i32** %3, align 8
  %8 = load i32, i32* @SEEK_CUR, align 4
  %9 = call i64 @php_stream_seek(i32* %7, i32 11, i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store %struct.gfxinfo* null, %struct.gfxinfo** %2, align 8
  br label %143

12:                                               ; preds = %1
  %13 = load i32*, i32** %3, align 8
  %14 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 0
  %15 = call i32 @php_stream_read(i32* %13, i8* %14, i32 16)
  %16 = sext i32 %15 to i64
  %17 = icmp ne i64 %16, 16
  br i1 %17, label %18, label %19

18:                                               ; preds = %12
  store %struct.gfxinfo* null, %struct.gfxinfo** %2, align 8
  br label %143

19:                                               ; preds = %12
  %20 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 3
  %21 = load i8, i8* %20, align 1
  %22 = zext i8 %21 to i32
  %23 = shl i32 %22, 24
  %24 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 2
  %25 = load i8, i8* %24, align 2
  %26 = zext i8 %25 to i32
  %27 = shl i32 %26, 16
  %28 = add i32 %23, %27
  %29 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 1
  %30 = load i8, i8* %29, align 1
  %31 = zext i8 %30 to i32
  %32 = shl i32 %31, 8
  %33 = add i32 %28, %32
  %34 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 0
  %35 = load i8, i8* %34, align 16
  %36 = zext i8 %35 to i32
  %37 = add i32 %33, %36
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %6, align 4
  %39 = icmp eq i32 %38, 12
  br i1 %39, label %40, label %68

40:                                               ; preds = %19
  %41 = call i64 @ecalloc(i32 1, i32 12)
  %42 = inttoptr i64 %41 to %struct.gfxinfo*
  store %struct.gfxinfo* %42, %struct.gfxinfo** %4, align 8
  %43 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 5
  %44 = load i8, i8* %43, align 1
  %45 = zext i8 %44 to i32
  %46 = shl i32 %45, 8
  %47 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 4
  %48 = load i8, i8* %47, align 4
  %49 = zext i8 %48 to i32
  %50 = add i32 %46, %49
  %51 = load %struct.gfxinfo*, %struct.gfxinfo** %4, align 8
  %52 = getelementptr inbounds %struct.gfxinfo, %struct.gfxinfo* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 4
  %53 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 7
  %54 = load i8, i8* %53, align 1
  %55 = zext i8 %54 to i32
  %56 = shl i32 %55, 8
  %57 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 6
  %58 = load i8, i8* %57, align 2
  %59 = zext i8 %58 to i32
  %60 = add i32 %56, %59
  %61 = load %struct.gfxinfo*, %struct.gfxinfo** %4, align 8
  %62 = getelementptr inbounds %struct.gfxinfo, %struct.gfxinfo* %61, i32 0, i32 1
  store i32 %60, i32* %62, align 4
  %63 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 11
  %64 = load i8, i8* %63, align 1
  %65 = zext i8 %64 to i32
  %66 = load %struct.gfxinfo*, %struct.gfxinfo** %4, align 8
  %67 = getelementptr inbounds %struct.gfxinfo, %struct.gfxinfo* %66, i32 0, i32 2
  store i32 %65, i32* %67, align 4
  br label %141

68:                                               ; preds = %19
  %69 = load i32, i32* %6, align 4
  %70 = icmp sgt i32 %69, 12
  br i1 %70, label %71, label %139

71:                                               ; preds = %68
  %72 = load i32, i32* %6, align 4
  %73 = icmp sle i32 %72, 64
  br i1 %73, label %80, label %74

74:                                               ; preds = %71
  %75 = load i32, i32* %6, align 4
  %76 = icmp eq i32 %75, 108
  br i1 %76, label %80, label %77

77:                                               ; preds = %74
  %78 = load i32, i32* %6, align 4
  %79 = icmp eq i32 %78, 124
  br i1 %79, label %80, label %139

80:                                               ; preds = %77, %74, %71
  %81 = call i64 @ecalloc(i32 1, i32 12)
  %82 = inttoptr i64 %81 to %struct.gfxinfo*
  store %struct.gfxinfo* %82, %struct.gfxinfo** %4, align 8
  %83 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 7
  %84 = load i8, i8* %83, align 1
  %85 = zext i8 %84 to i32
  %86 = shl i32 %85, 24
  %87 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 6
  %88 = load i8, i8* %87, align 2
  %89 = zext i8 %88 to i32
  %90 = shl i32 %89, 16
  %91 = add i32 %86, %90
  %92 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 5
  %93 = load i8, i8* %92, align 1
  %94 = zext i8 %93 to i32
  %95 = shl i32 %94, 8
  %96 = add i32 %91, %95
  %97 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 4
  %98 = load i8, i8* %97, align 4
  %99 = zext i8 %98 to i32
  %100 = add i32 %96, %99
  %101 = load %struct.gfxinfo*, %struct.gfxinfo** %4, align 8
  %102 = getelementptr inbounds %struct.gfxinfo, %struct.gfxinfo* %101, i32 0, i32 0
  store i32 %100, i32* %102, align 4
  %103 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 11
  %104 = load i8, i8* %103, align 1
  %105 = zext i8 %104 to i32
  %106 = shl i32 %105, 24
  %107 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 10
  %108 = load i8, i8* %107, align 2
  %109 = zext i8 %108 to i32
  %110 = shl i32 %109, 16
  %111 = add i32 %106, %110
  %112 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 9
  %113 = load i8, i8* %112, align 1
  %114 = zext i8 %113 to i32
  %115 = shl i32 %114, 8
  %116 = add i32 %111, %115
  %117 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 8
  %118 = load i8, i8* %117, align 8
  %119 = zext i8 %118 to i32
  %120 = add i32 %116, %119
  %121 = load %struct.gfxinfo*, %struct.gfxinfo** %4, align 8
  %122 = getelementptr inbounds %struct.gfxinfo, %struct.gfxinfo* %121, i32 0, i32 1
  store i32 %120, i32* %122, align 4
  %123 = load %struct.gfxinfo*, %struct.gfxinfo** %4, align 8
  %124 = getelementptr inbounds %struct.gfxinfo, %struct.gfxinfo* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @abs(i32 %125)
  %127 = load %struct.gfxinfo*, %struct.gfxinfo** %4, align 8
  %128 = getelementptr inbounds %struct.gfxinfo, %struct.gfxinfo* %127, i32 0, i32 1
  store i32 %126, i32* %128, align 4
  %129 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 15
  %130 = load i8, i8* %129, align 1
  %131 = zext i8 %130 to i32
  %132 = shl i32 %131, 8
  %133 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 14
  %134 = load i8, i8* %133, align 2
  %135 = zext i8 %134 to i32
  %136 = add i32 %132, %135
  %137 = load %struct.gfxinfo*, %struct.gfxinfo** %4, align 8
  %138 = getelementptr inbounds %struct.gfxinfo, %struct.gfxinfo* %137, i32 0, i32 2
  store i32 %136, i32* %138, align 4
  br label %140

139:                                              ; preds = %77, %68
  store %struct.gfxinfo* null, %struct.gfxinfo** %2, align 8
  br label %143

140:                                              ; preds = %80
  br label %141

141:                                              ; preds = %140, %40
  %142 = load %struct.gfxinfo*, %struct.gfxinfo** %4, align 8
  store %struct.gfxinfo* %142, %struct.gfxinfo** %2, align 8
  br label %143

143:                                              ; preds = %141, %139, %18, %11
  %144 = load %struct.gfxinfo*, %struct.gfxinfo** %2, align 8
  ret %struct.gfxinfo* %144
}

declare dso_local i64 @php_stream_seek(i32*, i32, i32) #1

declare dso_local i32 @php_stream_read(i32*, i8*, i32) #1

declare dso_local i64 @ecalloc(i32, i32) #1

declare dso_local i32 @abs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
