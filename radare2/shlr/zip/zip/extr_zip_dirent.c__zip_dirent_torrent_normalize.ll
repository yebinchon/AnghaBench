; ModuleID = '/home/carl/AnghaBench/radare2/shlr/zip/zip/extr_zip_dirent.c__zip_dirent_torrent_normalize.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/zip/zip/extr_zip_dirent.c__zip_dirent_torrent_normalize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tm = type { i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64 }
%struct.zip_dirent = type { i32, i32, i32*, i32*, i64, i64, i64, i64, i32, i64 }

@_zip_dirent_torrent_normalize.torrenttime = internal global %struct.tm zeroinitializer, align 8
@_zip_dirent_torrent_normalize.last_mod = internal global i64 0, align 8
@ZIP_CM_DEFLATE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_zip_dirent_torrent_normalize(%struct.zip_dirent* %0) #0 {
  %2 = alloca %struct.zip_dirent*, align 8
  store %struct.zip_dirent* %0, %struct.zip_dirent** %2, align 8
  %3 = load i64, i64* @_zip_dirent_torrent_normalize.last_mod, align 8
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  store i64 0, i64* getelementptr inbounds (%struct.tm, %struct.tm* @_zip_dirent_torrent_normalize.torrenttime, i32 0, i32 10), align 8
  store i32 32, i32* getelementptr inbounds (%struct.tm, %struct.tm* @_zip_dirent_torrent_normalize.torrenttime, i32 0, i32 0), align 8
  store i32 23, i32* getelementptr inbounds (%struct.tm, %struct.tm* @_zip_dirent_torrent_normalize.torrenttime, i32 0, i32 1), align 4
  store i32 24, i32* getelementptr inbounds (%struct.tm, %struct.tm* @_zip_dirent_torrent_normalize.torrenttime, i32 0, i32 2), align 8
  store i32 11, i32* getelementptr inbounds (%struct.tm, %struct.tm* @_zip_dirent_torrent_normalize.torrenttime, i32 0, i32 3), align 4
  store i32 96, i32* getelementptr inbounds (%struct.tm, %struct.tm* @_zip_dirent_torrent_normalize.torrenttime, i32 0, i32 4), align 8
  store i64 0, i64* getelementptr inbounds (%struct.tm, %struct.tm* @_zip_dirent_torrent_normalize.torrenttime, i32 0, i32 9), align 8
  store i64 0, i64* getelementptr inbounds (%struct.tm, %struct.tm* @_zip_dirent_torrent_normalize.torrenttime, i32 0, i32 8), align 8
  store i64 0, i64* getelementptr inbounds (%struct.tm, %struct.tm* @_zip_dirent_torrent_normalize.torrenttime, i32 0, i32 7), align 8
  %6 = call i64 @mktime(%struct.tm* @_zip_dirent_torrent_normalize.torrenttime)
  store i64 %6, i64* @_zip_dirent_torrent_normalize.last_mod, align 8
  br label %7

7:                                                ; preds = %5, %1
  %8 = load %struct.zip_dirent*, %struct.zip_dirent** %2, align 8
  %9 = getelementptr inbounds %struct.zip_dirent, %struct.zip_dirent* %8, i32 0, i32 9
  store i64 0, i64* %9, align 8
  %10 = load %struct.zip_dirent*, %struct.zip_dirent** %2, align 8
  %11 = getelementptr inbounds %struct.zip_dirent, %struct.zip_dirent* %10, i32 0, i32 0
  store i32 20, i32* %11, align 8
  %12 = load %struct.zip_dirent*, %struct.zip_dirent** %2, align 8
  %13 = getelementptr inbounds %struct.zip_dirent, %struct.zip_dirent* %12, i32 0, i32 1
  store i32 2, i32* %13, align 4
  %14 = load i32, i32* @ZIP_CM_DEFLATE, align 4
  %15 = load %struct.zip_dirent*, %struct.zip_dirent** %2, align 8
  %16 = getelementptr inbounds %struct.zip_dirent, %struct.zip_dirent* %15, i32 0, i32 8
  store i32 %14, i32* %16, align 8
  %17 = load i64, i64* @_zip_dirent_torrent_normalize.last_mod, align 8
  %18 = load %struct.zip_dirent*, %struct.zip_dirent** %2, align 8
  %19 = getelementptr inbounds %struct.zip_dirent, %struct.zip_dirent* %18, i32 0, i32 7
  store i64 %17, i64* %19, align 8
  %20 = load %struct.zip_dirent*, %struct.zip_dirent** %2, align 8
  %21 = getelementptr inbounds %struct.zip_dirent, %struct.zip_dirent* %20, i32 0, i32 6
  store i64 0, i64* %21, align 8
  %22 = load %struct.zip_dirent*, %struct.zip_dirent** %2, align 8
  %23 = getelementptr inbounds %struct.zip_dirent, %struct.zip_dirent* %22, i32 0, i32 5
  store i64 0, i64* %23, align 8
  %24 = load %struct.zip_dirent*, %struct.zip_dirent** %2, align 8
  %25 = getelementptr inbounds %struct.zip_dirent, %struct.zip_dirent* %24, i32 0, i32 4
  store i64 0, i64* %25, align 8
  %26 = load %struct.zip_dirent*, %struct.zip_dirent** %2, align 8
  %27 = getelementptr inbounds %struct.zip_dirent, %struct.zip_dirent* %26, i32 0, i32 3
  %28 = load i32*, i32** %27, align 8
  %29 = call i32 @_zip_ef_free(i32* %28)
  %30 = load %struct.zip_dirent*, %struct.zip_dirent** %2, align 8
  %31 = getelementptr inbounds %struct.zip_dirent, %struct.zip_dirent* %30, i32 0, i32 3
  store i32* null, i32** %31, align 8
  %32 = load %struct.zip_dirent*, %struct.zip_dirent** %2, align 8
  %33 = getelementptr inbounds %struct.zip_dirent, %struct.zip_dirent* %32, i32 0, i32 2
  %34 = load i32*, i32** %33, align 8
  %35 = call i32 @_zip_string_free(i32* %34)
  %36 = load %struct.zip_dirent*, %struct.zip_dirent** %2, align 8
  %37 = getelementptr inbounds %struct.zip_dirent, %struct.zip_dirent* %36, i32 0, i32 2
  store i32* null, i32** %37, align 8
  ret void
}

declare dso_local i64 @mktime(%struct.tm*) #1

declare dso_local i32 @_zip_ef_free(i32*) #1

declare dso_local i32 @_zip_string_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
