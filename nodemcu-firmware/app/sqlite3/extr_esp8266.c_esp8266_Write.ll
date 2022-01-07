; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/sqlite3/extr_esp8266.c_esp8266_Write.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/sqlite3/extr_esp8266.c_esp8266_Write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [39 x i8] c"esp8266_Write: 1w %s %d %d %lld[%ld] \0A\00", align 1
@VFS_SEEK_SET = common dso_local global i32 0, align 4
@SQLITE_IOERR_SEEK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"esp8266_Write: 2w %s %u %d\0A\00", align 1
@SQLITE_IOERR_WRITE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"esp8266_Write: 3w %s OK\0A\00", align 1
@SQLITE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i32, i32)* @esp8266_Write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @esp8266_Write(i32* %0, i8* %1, i32 %2, i32 %3) #0 {
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
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* %9, align 4
  %27 = load i64, i64* %12, align 8
  %28 = call i32 (i8*, i32, ...) @dbg_printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %21, i32 %24, i32 %25, i32 %26, i64 %27)
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load i64, i64* %12, align 8
  %33 = load i32, i32* @VFS_SEEK_SET, align 4
  %34 = call i64 @vfs_lseek(i32 %31, i64 %32, i32 %33)
  store i64 %34, i64* %11, align 8
  %35 = load i64, i64* %11, align 8
  %36 = load i64, i64* %12, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %4
  %39 = load i32, i32* @SQLITE_IOERR_SEEK, align 4
  store i32 %39, i32* %5, align 4
  br label %65

40:                                               ; preds = %4
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load i8*, i8** %7, align 8
  %45 = load i32, i32* %8, align 4
  %46 = call i64 @vfs_write(i32 %43, i8* %44, i32 %45)
  store i64 %46, i64* %10, align 8
  %47 = load i64, i64* %10, align 8
  %48 = load i32, i32* %8, align 4
  %49 = sext i32 %48 to i64
  %50 = icmp ne i64 %47, %49
  br i1 %50, label %51, label %59

51:                                               ; preds = %40
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i64, i64* %10, align 8
  %56 = load i32, i32* %8, align 4
  %57 = call i32 (i8*, i32, ...) @dbg_printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %54, i64 %55, i32 %56)
  %58 = load i32, i32* @SQLITE_IOERR_WRITE, align 4
  store i32 %58, i32* %5, align 4
  br label %65

59:                                               ; preds = %40
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 (i8*, i32, ...) @dbg_printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %62)
  %64 = load i32, i32* @SQLITE_OK, align 4
  store i32 %64, i32* %5, align 4
  br label %65

65:                                               ; preds = %59, %51, %38
  %66 = load i32, i32* %5, align 4
  ret i32 %66
}

declare dso_local i32 @dbg_printf(i8*, i32, ...) #1

declare dso_local i64 @vfs_lseek(i32, i64, i32) #1

declare dso_local i64 @vfs_write(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
