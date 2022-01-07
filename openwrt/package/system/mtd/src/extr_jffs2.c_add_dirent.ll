; ModuleID = '/home/carl/AnghaBench/openwrt/package/system/mtd/src/extr_jffs2.c_add_dirent.c'
source_filename = "/home/carl/AnghaBench/openwrt/package/system/mtd/src/extr_jffs2.c_add_dirent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jffs2_raw_dirent = type { i8, i32, i32, i64, i32, i8*, i64, i64, i8*, i64, i8*, i32, i32 }

@ofs = common dso_local global i64 0, align 8
@erasesize = common dso_local global i64 0, align 8
@last_ino = common dso_local global i32 0, align 4
@buf = common dso_local global i64 0, align 8
@JFFS2_MAGIC_BITMASK = common dso_local global i32 0, align 4
@JFFS2_NODETYPE_DIRENT = common dso_local global i32 0, align 4
@last_version = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8, i32)* @add_dirent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_dirent(i8* %0, i8 signext %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  %7 = alloca %struct.jffs2_raw_dirent*, align 8
  store i8* %0, i8** %4, align 8
  store i8 %1, i8* %5, align 1
  store i32 %2, i32* %6, align 4
  %8 = load i64, i64* @ofs, align 8
  %9 = load i64, i64* @erasesize, align 8
  %10 = sub nsw i64 %8, %9
  %11 = load i8*, i8** %4, align 8
  %12 = call i64 @strlen(i8* %11)
  %13 = add i64 88, %12
  %14 = icmp ult i64 %10, %13
  br i1 %14, label %15, label %19

15:                                               ; preds = %3
  %16 = load i64, i64* @erasesize, align 8
  %17 = trunc i64 %16 to i32
  %18 = call i32 @pad(i32 %17)
  br label %19

19:                                               ; preds = %15, %3
  %20 = call i32 (...) @prep_eraseblock()
  %21 = load i32, i32* @last_ino, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* @last_ino, align 4
  %23 = load i64, i64* @buf, align 8
  %24 = load i64, i64* @ofs, align 8
  %25 = add nsw i64 %23, %24
  %26 = call i32 @memset(i64 %25, i32 0, i32 88)
  %27 = load i64, i64* @buf, align 8
  %28 = load i64, i64* @ofs, align 8
  %29 = add nsw i64 %27, %28
  %30 = inttoptr i64 %29 to %struct.jffs2_raw_dirent*
  store %struct.jffs2_raw_dirent* %30, %struct.jffs2_raw_dirent** %7, align 8
  %31 = load i32, i32* @JFFS2_MAGIC_BITMASK, align 4
  %32 = load %struct.jffs2_raw_dirent*, %struct.jffs2_raw_dirent** %7, align 8
  %33 = getelementptr inbounds %struct.jffs2_raw_dirent, %struct.jffs2_raw_dirent* %32, i32 0, i32 12
  store i32 %31, i32* %33, align 4
  %34 = load i32, i32* @JFFS2_NODETYPE_DIRENT, align 4
  %35 = load %struct.jffs2_raw_dirent*, %struct.jffs2_raw_dirent** %7, align 8
  %36 = getelementptr inbounds %struct.jffs2_raw_dirent, %struct.jffs2_raw_dirent* %35, i32 0, i32 11
  store i32 %34, i32* %36, align 8
  %37 = load i8, i8* %5, align 1
  %38 = load %struct.jffs2_raw_dirent*, %struct.jffs2_raw_dirent** %7, align 8
  %39 = getelementptr inbounds %struct.jffs2_raw_dirent, %struct.jffs2_raw_dirent* %38, i32 0, i32 0
  store i8 %37, i8* %39, align 8
  %40 = load i8*, i8** %4, align 8
  %41 = load i8*, i8** %4, align 8
  %42 = call i64 @strlen(i8* %41)
  %43 = trunc i64 %42 to i32
  %44 = call i8* @crc32(i32 0, i8* %40, i32 %43)
  %45 = load %struct.jffs2_raw_dirent*, %struct.jffs2_raw_dirent** %7, align 8
  %46 = getelementptr inbounds %struct.jffs2_raw_dirent, %struct.jffs2_raw_dirent* %45, i32 0, i32 10
  store i8* %44, i8** %46, align 8
  %47 = load i32, i32* @last_ino, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* @last_ino, align 4
  %49 = load %struct.jffs2_raw_dirent*, %struct.jffs2_raw_dirent** %7, align 8
  %50 = getelementptr inbounds %struct.jffs2_raw_dirent, %struct.jffs2_raw_dirent* %49, i32 0, i32 1
  store i32 %47, i32* %50, align 4
  %51 = load i32, i32* %6, align 4
  %52 = load %struct.jffs2_raw_dirent*, %struct.jffs2_raw_dirent** %7, align 8
  %53 = getelementptr inbounds %struct.jffs2_raw_dirent, %struct.jffs2_raw_dirent* %52, i32 0, i32 2
  store i32 %51, i32* %53, align 8
  %54 = load i8*, i8** %4, align 8
  %55 = call i64 @strlen(i8* %54)
  %56 = add i64 88, %55
  %57 = load %struct.jffs2_raw_dirent*, %struct.jffs2_raw_dirent** %7, align 8
  %58 = getelementptr inbounds %struct.jffs2_raw_dirent, %struct.jffs2_raw_dirent* %57, i32 0, i32 9
  store i64 %56, i64* %58, align 8
  %59 = load %struct.jffs2_raw_dirent*, %struct.jffs2_raw_dirent** %7, align 8
  %60 = bitcast %struct.jffs2_raw_dirent* %59 to i8*
  %61 = call i8* @crc32(i32 0, i8* %60, i32 0)
  %62 = load %struct.jffs2_raw_dirent*, %struct.jffs2_raw_dirent** %7, align 8
  %63 = getelementptr inbounds %struct.jffs2_raw_dirent, %struct.jffs2_raw_dirent* %62, i32 0, i32 8
  store i8* %61, i8** %63, align 8
  %64 = load i32, i32* @last_version, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* @last_version, align 4
  %66 = sext i32 %64 to i64
  %67 = load %struct.jffs2_raw_dirent*, %struct.jffs2_raw_dirent** %7, align 8
  %68 = getelementptr inbounds %struct.jffs2_raw_dirent, %struct.jffs2_raw_dirent* %67, i32 0, i32 7
  store i64 %66, i64* %68, align 8
  %69 = load %struct.jffs2_raw_dirent*, %struct.jffs2_raw_dirent** %7, align 8
  %70 = getelementptr inbounds %struct.jffs2_raw_dirent, %struct.jffs2_raw_dirent* %69, i32 0, i32 6
  store i64 0, i64* %70, align 8
  %71 = load i8*, i8** %4, align 8
  %72 = call i64 @strlen(i8* %71)
  %73 = load %struct.jffs2_raw_dirent*, %struct.jffs2_raw_dirent** %7, align 8
  %74 = getelementptr inbounds %struct.jffs2_raw_dirent, %struct.jffs2_raw_dirent* %73, i32 0, i32 3
  store i64 %72, i64* %74, align 8
  %75 = load %struct.jffs2_raw_dirent*, %struct.jffs2_raw_dirent** %7, align 8
  %76 = bitcast %struct.jffs2_raw_dirent* %75 to i8*
  %77 = call i8* @crc32(i32 0, i8* %76, i32 80)
  %78 = load %struct.jffs2_raw_dirent*, %struct.jffs2_raw_dirent** %7, align 8
  %79 = getelementptr inbounds %struct.jffs2_raw_dirent, %struct.jffs2_raw_dirent* %78, i32 0, i32 5
  store i8* %77, i8** %79, align 8
  %80 = load %struct.jffs2_raw_dirent*, %struct.jffs2_raw_dirent** %7, align 8
  %81 = getelementptr inbounds %struct.jffs2_raw_dirent, %struct.jffs2_raw_dirent* %80, i32 0, i32 4
  %82 = load i32, i32* %81, align 8
  %83 = load i8*, i8** %4, align 8
  %84 = load i8*, i8** %4, align 8
  %85 = call i64 @strlen(i8* %84)
  %86 = call i32 @memcpy(i32 %82, i8* %83, i64 %85)
  %87 = load %struct.jffs2_raw_dirent*, %struct.jffs2_raw_dirent** %7, align 8
  %88 = getelementptr inbounds %struct.jffs2_raw_dirent, %struct.jffs2_raw_dirent* %87, i32 0, i32 3
  %89 = load i64, i64* %88, align 8
  %90 = add i64 88, %89
  %91 = load i64, i64* @ofs, align 8
  %92 = add i64 %91, %90
  store i64 %92, i64* @ofs, align 8
  %93 = call i32 @pad(i32 4)
  %94 = load %struct.jffs2_raw_dirent*, %struct.jffs2_raw_dirent** %7, align 8
  %95 = getelementptr inbounds %struct.jffs2_raw_dirent, %struct.jffs2_raw_dirent* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  ret i32 %96
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @pad(i32) #1

declare dso_local i32 @prep_eraseblock(...) #1

declare dso_local i32 @memset(i64, i32, i32) #1

declare dso_local i8* @crc32(i32, i8*, i32) #1

declare dso_local i32 @memcpy(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
