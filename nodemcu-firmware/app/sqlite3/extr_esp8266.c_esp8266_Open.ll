; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/sqlite3/extr_esp8266.c_esp8266_Open.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/sqlite3/extr_esp8266.c_esp8266_Open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i8*, i8*, %struct.TYPE_5__, %struct.TYPE_6__* }
%struct.TYPE_5__ = type { i32* }

@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@SQLITE_IOERR = common dso_local global i32 0, align 4
@SQLITE_OPEN_READONLY = common dso_local global i32 0, align 4
@SQLITE_OPEN_READWRITE = common dso_local global i32 0, align 4
@SQLITE_OPEN_MAIN_JOURNAL = common dso_local global i32 0, align 4
@SQLITE_OK = common dso_local global i64 0, align 8
@SQLITE_CANTOPEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"r+\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"w+\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"esp8266_Open: 1o %s %s\0A\00", align 1
@ESP8266_DEFAULT_MAXNAMESIZE = common dso_local global i32 0, align 4
@SQLITE_NOMEM = common dso_local global i32 0, align 4
@esp8266MemMethods = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [31 x i8] c"esp8266_Open: 2o %s %d MEM OK\0A\00", align 1
@esp8266IoMethods = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [27 x i8] c"esp8266_Open: 2o %s %d OK\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i32*, i32, i32*)* @esp8266_Open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @esp8266_Open(i32* %0, i8* %1, i32* %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca %struct.TYPE_6__*, align 8
  %15 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8** %13, align 8
  %16 = load i32*, i32** %9, align 8
  %17 = bitcast i32* %16 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %17, %struct.TYPE_6__** %14, align 8
  %18 = load i8*, i8** %8, align 8
  %19 = icmp eq i8* %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %5
  %21 = load i32, i32* @SQLITE_IOERR, align 4
  store i32 %21, i32* %6, align 4
  br label %130

22:                                               ; preds = %5
  %23 = load i32, i32* %10, align 4
  %24 = load i32, i32* @SQLITE_OPEN_READONLY, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8** %13, align 8
  br label %28

28:                                               ; preds = %27, %22
  %29 = load i32, i32* %10, align 4
  %30 = load i32, i32* @SQLITE_OPEN_READWRITE, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %38, label %33

33:                                               ; preds = %28
  %34 = load i32, i32* %10, align 4
  %35 = load i32, i32* @SQLITE_OPEN_MAIN_JOURNAL, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %53

38:                                               ; preds = %33, %28
  %39 = load i64, i64* @SQLITE_OK, align 8
  %40 = load i32*, i32** %7, align 8
  %41 = load i8*, i8** %8, align 8
  %42 = load i32, i32* %10, align 4
  %43 = call i64 @esp8266_Access(i32* %40, i8* %41, i32 %42, i32* %15)
  %44 = icmp ne i64 %39, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %38
  %46 = load i32, i32* @SQLITE_CANTOPEN, align 4
  store i32 %46, i32* %6, align 4
  br label %130

47:                                               ; preds = %38
  %48 = load i32, i32* %15, align 4
  %49 = icmp eq i32 %48, 1
  br i1 %49, label %50, label %51

50:                                               ; preds = %47
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8** %13, align 8
  br label %52

51:                                               ; preds = %47
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8** %13, align 8
  br label %52

52:                                               ; preds = %51, %50
  br label %53

53:                                               ; preds = %52, %33
  %54 = load i8*, i8** %8, align 8
  %55 = load i8*, i8** %13, align 8
  %56 = call i32 @dbg_printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i8* %54, i8* %55)
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %58 = call i32 @memset(%struct.TYPE_6__* %57, i32 0, i32 32)
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = load i8*, i8** %60, align 8
  %62 = load i8*, i8** %8, align 8
  %63 = load i32, i32* @ESP8266_DEFAULT_MAXNAMESIZE, align 4
  %64 = call i32 @strncpy(i8* %61, i8* %62, i32 %63)
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = load i8*, i8** %66, align 8
  %68 = load i32, i32* @ESP8266_DEFAULT_MAXNAMESIZE, align 4
  %69 = sub nsw i32 %68, 1
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i8, i8* %67, i64 %70
  store i8 0, i8* %71, align 1
  %72 = load i32, i32* %10, align 4
  %73 = load i32, i32* @SQLITE_OPEN_MAIN_JOURNAL, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %105

76:                                               ; preds = %53
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 1
  store i8* null, i8** %78, align 8
  %79 = call %struct.TYPE_6__* @sqlite3_malloc(i32 4)
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 3
  store %struct.TYPE_6__* %79, %struct.TYPE_6__** %81, align 8
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 3
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %83, align 8
  %85 = icmp ne %struct.TYPE_6__* %84, null
  br i1 %85, label %88, label %86

86:                                               ; preds = %76
  %87 = load i32, i32* @SQLITE_NOMEM, align 4
  store i32 %87, i32* %6, align 4
  br label %130

88:                                               ; preds = %76
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 3
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %90, align 8
  %92 = call i32 @memset(%struct.TYPE_6__* %91, i32 0, i32 4)
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 2
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 0
  store i32* @esp8266MemMethods, i32** %95, align 8
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 0
  %98 = load i8*, i8** %97, align 8
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 1
  %101 = load i8*, i8** %100, align 8
  %102 = call i32 @dbg_printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i8* %98, i8* %101)
  %103 = load i64, i64* @SQLITE_OK, align 8
  %104 = trunc i64 %103 to i32
  store i32 %104, i32* %6, align 4
  br label %130

105:                                              ; preds = %53
  %106 = load i8*, i8** %8, align 8
  %107 = load i8*, i8** %13, align 8
  %108 = call i8* @vfs_open(i8* %106, i8* %107)
  %109 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 1
  store i8* %108, i8** %110, align 8
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 1
  %113 = load i8*, i8** %112, align 8
  %114 = icmp ule i8* %113, null
  br i1 %114, label %115, label %117

115:                                              ; preds = %105
  %116 = load i32, i32* @SQLITE_CANTOPEN, align 4
  store i32 %116, i32* %6, align 4
  br label %130

117:                                              ; preds = %105
  %118 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 2
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %119, i32 0, i32 0
  store i32* @esp8266IoMethods, i32** %120, align 8
  %121 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 0
  %123 = load i8*, i8** %122, align 8
  %124 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 1
  %126 = load i8*, i8** %125, align 8
  %127 = call i32 @dbg_printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0), i8* %123, i8* %126)
  %128 = load i64, i64* @SQLITE_OK, align 8
  %129 = trunc i64 %128 to i32
  store i32 %129, i32* %6, align 4
  br label %130

130:                                              ; preds = %117, %115, %88, %86, %45, %20
  %131 = load i32, i32* %6, align 4
  ret i32 %131
}

declare dso_local i64 @esp8266_Access(i32*, i8*, i32, i32*) #1

declare dso_local i32 @dbg_printf(i8*, i8*, i8*) #1

declare dso_local i32 @memset(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

declare dso_local %struct.TYPE_6__* @sqlite3_malloc(i32) #1

declare dso_local i8* @vfs_open(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
