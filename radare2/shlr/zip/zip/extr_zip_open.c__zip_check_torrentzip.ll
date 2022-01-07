; ModuleID = '/home/carl/AnghaBench/radare2/shlr/zip/zip/extr_zip_open.c__zip_check_torrentzip.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/zip/zip/extr_zip_open.c__zip_check_torrentzip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zip = type { i32, i32* }
%struct.zip_cdir = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@TORRENT_SIG_LEN = common dso_local global i64 0, align 8
@TORRENT_SIG = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@UINT_MAX = common dso_local global i64 0, align 8
@ZIP_AFL_TORRENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.zip*, %struct.zip_cdir*)* @_zip_check_torrentzip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_zip_check_torrentzip(%struct.zip* %0, %struct.zip_cdir* %1) #0 {
  %3 = alloca %struct.zip*, align 8
  %4 = alloca %struct.zip_cdir*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca [9 x i8], align 1
  %8 = alloca i8*, align 8
  store %struct.zip* %0, %struct.zip** %3, align 8
  store %struct.zip_cdir* %1, %struct.zip_cdir** %4, align 8
  %9 = load %struct.zip*, %struct.zip** %3, align 8
  %10 = getelementptr inbounds %struct.zip, %struct.zip* %9, i32 0, i32 1
  %11 = load i32*, i32** %10, align 8
  %12 = icmp eq i32* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load %struct.zip_cdir*, %struct.zip_cdir** %4, align 8
  %15 = icmp eq %struct.zip_cdir* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %13, %2
  br label %88

17:                                               ; preds = %13
  %18 = load %struct.zip_cdir*, %struct.zip_cdir** %4, align 8
  %19 = getelementptr inbounds %struct.zip_cdir, %struct.zip_cdir* %18, i32 0, i32 2
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = call i64 @_zip_string_length(%struct.TYPE_2__* %20)
  %22 = load i64, i64* @TORRENT_SIG_LEN, align 8
  %23 = add nsw i64 %22, 8
  %24 = icmp ne i64 %21, %23
  br i1 %24, label %36, label %25

25:                                               ; preds = %17
  %26 = load %struct.zip_cdir*, %struct.zip_cdir** %4, align 8
  %27 = getelementptr inbounds %struct.zip_cdir, %struct.zip_cdir* %26, i32 0, i32 2
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = inttoptr i64 %30 to i8*
  %32 = load i32, i32* @TORRENT_SIG, align 4
  %33 = load i64, i64* @TORRENT_SIG_LEN, align 8
  %34 = call i64 @strncmp(i8* %31, i32 %32, i64 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %25, %17
  br label %88

37:                                               ; preds = %25
  %38 = getelementptr inbounds [9 x i8], [9 x i8]* %7, i64 0, i64 0
  %39 = load %struct.zip_cdir*, %struct.zip_cdir** %4, align 8
  %40 = getelementptr inbounds %struct.zip_cdir, %struct.zip_cdir* %39, i32 0, i32 2
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @TORRENT_SIG_LEN, align 8
  %45 = add nsw i64 %43, %44
  %46 = call i32 @memcpy(i8* %38, i64 %45, i32 8)
  %47 = getelementptr inbounds [9 x i8], [9 x i8]* %7, i64 0, i64 8
  store i8 0, i8* %47, align 1
  store i64 0, i64* @errno, align 8
  %48 = getelementptr inbounds [9 x i8], [9 x i8]* %7, i64 0, i64 0
  %49 = call i64 @strtoul(i8* %48, i8** %8, i32 16)
  store i64 %49, i64* %6, align 8
  %50 = load i64, i64* %6, align 8
  %51 = load i64, i64* @UINT_MAX, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %56

53:                                               ; preds = %37
  %54 = load i64, i64* @errno, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %64, label %56

56:                                               ; preds = %53, %37
  %57 = load i8*, i8** %8, align 8
  %58 = icmp ne i8* %57, null
  br i1 %58, label %59, label %65

59:                                               ; preds = %56
  %60 = load i8*, i8** %8, align 8
  %61 = load i8, i8* %60, align 1
  %62 = sext i8 %61 to i32
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %59, %53
  br label %88

65:                                               ; preds = %59, %56
  %66 = load %struct.zip*, %struct.zip** %3, align 8
  %67 = getelementptr inbounds %struct.zip, %struct.zip* %66, i32 0, i32 1
  %68 = load i32*, i32** %67, align 8
  %69 = load %struct.zip_cdir*, %struct.zip_cdir** %4, align 8
  %70 = getelementptr inbounds %struct.zip_cdir, %struct.zip_cdir* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.zip_cdir*, %struct.zip_cdir** %4, align 8
  %73 = getelementptr inbounds %struct.zip_cdir, %struct.zip_cdir* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = call i64 @_zip_filerange_crc(i32* %68, i32 %71, i32 %74, i64* %5, i32* null)
  %76 = icmp slt i64 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %65
  br label %88

78:                                               ; preds = %65
  %79 = load i64, i64* %5, align 8
  %80 = load i64, i64* %6, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %88

82:                                               ; preds = %78
  %83 = load i32, i32* @ZIP_AFL_TORRENT, align 4
  %84 = load %struct.zip*, %struct.zip** %3, align 8
  %85 = getelementptr inbounds %struct.zip, %struct.zip* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = or i32 %86, %83
  store i32 %87, i32* %85, align 8
  br label %88

88:                                               ; preds = %16, %36, %64, %77, %82, %78
  ret void
}

declare dso_local i64 @_zip_string_length(%struct.TYPE_2__*) #1

declare dso_local i64 @strncmp(i8*, i32, i64) #1

declare dso_local i32 @memcpy(i8*, i64, i32) #1

declare dso_local i64 @strtoul(i8*, i8**, i32) #1

declare dso_local i64 @_zip_filerange_crc(i32*, i32, i32, i64*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
