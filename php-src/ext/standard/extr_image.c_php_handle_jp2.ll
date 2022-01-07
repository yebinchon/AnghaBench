; ModuleID = '/home/carl/AnghaBench/php-src/ext/standard/extr_image.c_php_handle_jp2.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/standard/extr_image.c_php_handle_jp2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfxinfo = type { i32 }

@__const.php_handle_jp2.jp2c_box_id = private unnamed_addr constant [4 x i8] c"jp2c", align 1
@SEEK_CUR = common dso_local global i32 0, align 4
@E_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"JP2 file has no codestreams at root level\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.gfxinfo* (i32*)* @php_handle_jp2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.gfxinfo* @php_handle_jp2(i32* %0) #0 {
  %2 = alloca %struct.gfxinfo*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.gfxinfo*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [4 x i8], align 1
  store i32* %0, i32** %3, align 8
  store %struct.gfxinfo* null, %struct.gfxinfo** %4, align 8
  %8 = bitcast [4 x i8]* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %8, i8* align 1 getelementptr inbounds ([4 x i8], [4 x i8]* @__const.php_handle_jp2.jp2c_box_id, i32 0, i32 0), i64 4, i1 false)
  br label %9

9:                                                ; preds = %44, %1
  %10 = load i32*, i32** %3, align 8
  %11 = call i32 @php_read4(i32* %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32*, i32** %3, align 8
  %13 = bitcast i32* %6 to i8*
  %14 = call i32 @php_stream_read(i32* %12, i8* %13, i32 4)
  %15 = sext i32 %14 to i64
  %16 = icmp ne i64 %15, 4
  br i1 %16, label %17, label %18

17:                                               ; preds = %9
  br label %45

18:                                               ; preds = %9
  %19 = load i32, i32* %5, align 4
  %20 = icmp eq i32 %19, 1
  br i1 %20, label %21, label %22

21:                                               ; preds = %18
  store %struct.gfxinfo* null, %struct.gfxinfo** %2, align 8
  br label %53

22:                                               ; preds = %18
  %23 = getelementptr inbounds [4 x i8], [4 x i8]* %7, i64 0, i64 0
  %24 = call i32 @memcmp(i32* %6, i8* %23, i32 4)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %32, label %26

26:                                               ; preds = %22
  %27 = load i32*, i32** %3, align 8
  %28 = load i32, i32* @SEEK_CUR, align 4
  %29 = call i64 @php_stream_seek(i32* %27, i32 3, i32 %28)
  %30 = load i32*, i32** %3, align 8
  %31 = call %struct.gfxinfo* @php_handle_jpc(i32* %30)
  store %struct.gfxinfo* %31, %struct.gfxinfo** %4, align 8
  br label %45

32:                                               ; preds = %22
  %33 = load i32, i32* %5, align 4
  %34 = icmp sle i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %32
  br label %45

36:                                               ; preds = %32
  %37 = load i32*, i32** %3, align 8
  %38 = load i32, i32* %5, align 4
  %39 = sub i32 %38, 8
  %40 = load i32, i32* @SEEK_CUR, align 4
  %41 = call i64 @php_stream_seek(i32* %37, i32 %39, i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %36
  br label %45

44:                                               ; preds = %36
  br label %9

45:                                               ; preds = %43, %35, %26, %17
  %46 = load %struct.gfxinfo*, %struct.gfxinfo** %4, align 8
  %47 = icmp eq %struct.gfxinfo* %46, null
  br i1 %47, label %48, label %51

48:                                               ; preds = %45
  %49 = load i32, i32* @E_WARNING, align 4
  %50 = call i32 @php_error_docref(i32* null, i32 %49, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  br label %51

51:                                               ; preds = %48, %45
  %52 = load %struct.gfxinfo*, %struct.gfxinfo** %4, align 8
  store %struct.gfxinfo* %52, %struct.gfxinfo** %2, align 8
  br label %53

53:                                               ; preds = %51, %21
  %54 = load %struct.gfxinfo*, %struct.gfxinfo** %2, align 8
  ret %struct.gfxinfo* %54
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @php_read4(i32*) #2

declare dso_local i32 @php_stream_read(i32*, i8*, i32) #2

declare dso_local i32 @memcmp(i32*, i8*, i32) #2

declare dso_local i64 @php_stream_seek(i32*, i32, i32) #2

declare dso_local %struct.gfxinfo* @php_handle_jpc(i32*) #2

declare dso_local i32 @php_error_docref(i32*, i32, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
