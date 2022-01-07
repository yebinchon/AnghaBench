; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/sqlite3/extr_esp8266.c_esp8266_Read.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/sqlite3/extr_esp8266.c_esp8266_Read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [38 x i8] c"esp8266_Read: 1r %s %d %d %lld[%ld] \0A\00", align 1
@VFS_SEEK_SET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"esp8266_Read: 2r %ld != %ld FAIL\0A\00", align 1
@SQLITE_IOERR_SHORT_READ = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"esp8266_Read: 3r %s %u %d OK\0A\00", align 1
@SQLITE_OK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"esp8266_Read: 3r %s %u %d FAIL\0A\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"esp8266_Read: 4r %s FAIL\0A\00", align 1
@SQLITE_IOERR_READ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i32, i32)* @esp8266_Read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @esp8266_Read(i32* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_2__*, align 8
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load i32*, i32** %6, align 8
  %15 = bitcast i32* %14 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %15, %struct.TYPE_2__** %13, align 8
  %16 = load i32, i32* %9, align 4
  %17 = and i32 %16, 2147483647
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %12, align 8
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = sext i32 %21 to i64
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* %9, align 4
  %28 = load i64, i64* %12, align 8
  %29 = call i32 (i8*, i64, ...) @dbg_printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i64 %22, i32 %25, i32 %26, i32 %27, i64 %28)
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i64, i64* %12, align 8
  %34 = load i32, i32* @VFS_SEEK_SET, align 4
  %35 = call i64 @vfs_lseek(i32 %32, i64 %33, i32 %34)
  store i64 %35, i64* %11, align 8
  %36 = load i64, i64* %11, align 8
  %37 = load i64, i64* %12, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %44

39:                                               ; preds = %4
  %40 = load i64, i64* %11, align 8
  %41 = load i64, i64* %12, align 8
  %42 = call i32 (i8*, i64, ...) @dbg_printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i64 %40, i64 %41)
  %43 = load i32, i32* @SQLITE_IOERR_SHORT_READ, align 4
  store i32 %43, i32* %5, align 4
  br label %84

44:                                               ; preds = %4
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load i8*, i8** %7, align 8
  %49 = load i32, i32* %8, align 4
  %50 = call i64 @vfs_read(i32 %47, i8* %48, i32 %49)
  store i64 %50, i64* %10, align 8
  %51 = load i64, i64* %10, align 8
  %52 = load i32, i32* %8, align 4
  %53 = sext i32 %52 to i64
  %54 = icmp eq i64 %51, %53
  br i1 %54, label %55, label %64

55:                                               ; preds = %44
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = sext i32 %58 to i64
  %60 = load i64, i64* %10, align 8
  %61 = load i32, i32* %8, align 4
  %62 = call i32 (i8*, i64, ...) @dbg_printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i64 %59, i64 %60, i32 %61)
  %63 = load i32, i32* @SQLITE_OK, align 4
  store i32 %63, i32* %5, align 4
  br label %84

64:                                               ; preds = %44
  %65 = load i64, i64* %10, align 8
  %66 = icmp uge i64 %65, 0
  br i1 %66, label %67, label %76

67:                                               ; preds = %64
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = sext i32 %70 to i64
  %72 = load i64, i64* %10, align 8
  %73 = load i32, i32* %8, align 4
  %74 = call i32 (i8*, i64, ...) @dbg_printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i64 %71, i64 %72, i32 %73)
  %75 = load i32, i32* @SQLITE_IOERR_SHORT_READ, align 4
  store i32 %75, i32* %5, align 4
  br label %84

76:                                               ; preds = %64
  br label %77

77:                                               ; preds = %76
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = sext i32 %80 to i64
  %82 = call i32 (i8*, i64, ...) @dbg_printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i64 %81)
  %83 = load i32, i32* @SQLITE_IOERR_READ, align 4
  store i32 %83, i32* %5, align 4
  br label %84

84:                                               ; preds = %77, %67, %55, %39
  %85 = load i32, i32* %5, align 4
  ret i32 %85
}

declare dso_local i32 @dbg_printf(i8*, i64, ...) #1

declare dso_local i64 @vfs_lseek(i32, i64, i32) #1

declare dso_local i64 @vfs_read(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
