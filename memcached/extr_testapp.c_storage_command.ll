; ModuleID = '/home/carl/AnghaBench/memcached/extr_testapp.c_storage_command.c'
source_filename = "/home/carl/AnghaBench/memcached/extr_testapp.c_storage_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i8*, i8* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i32 }

@PROTOCOL_BINARY_REQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, i32, i8*, i64, i8*, i64, i8*, i8*)* @storage_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @storage_command(i8* %0, i64 %1, i32 %2, i8* %3, i64 %4, i8* %5, i64 %6, i8* %7, i8* %8) #0 {
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca %struct.TYPE_11__*, align 8
  %20 = alloca i32, align 4
  store i8* %0, i8** %10, align 8
  store i64 %1, i64* %11, align 8
  store i32 %2, i32* %12, align 4
  store i8* %3, i8** %13, align 8
  store i64 %4, i64* %14, align 8
  store i8* %5, i8** %15, align 8
  store i64 %6, i64* %16, align 8
  store i8* %7, i8** %17, align 8
  store i8* %8, i8** %18, align 8
  %21 = load i8*, i8** %10, align 8
  %22 = bitcast i8* %21 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %22, %struct.TYPE_11__** %19, align 8
  %23 = load i64, i64* %11, align 8
  %24 = load i64, i64* %14, align 8
  %25 = add i64 40, %24
  %26 = load i64, i64* %16, align 8
  %27 = add i64 %25, %26
  %28 = icmp ugt i64 %23, %27
  %29 = zext i1 %28 to i32
  %30 = call i32 @assert(i32 %29)
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %32 = call i32 @memset(%struct.TYPE_11__* %31, i32 0, i32 40)
  %33 = load i32, i32* @PROTOCOL_BINARY_REQ, align 4
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 5
  store i32 %33, i32* %38, align 4
  %39 = load i32, i32* %12, align 4
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 4
  store i32 %39, i32* %44, align 8
  %45 = load i64, i64* %14, align 8
  %46 = call i32 @htons(i64 %45)
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 3
  store i32 %46, i32* %51, align 4
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 0
  store i32 8, i32* %56, align 8
  %57 = load i64, i64* %14, align 8
  %58 = add i64 %57, 8
  %59 = load i64, i64* %16, align 8
  %60 = add i64 %58, %59
  %61 = call i32 @htonl(i64 %60)
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 2
  store i32 %61, i32* %66, align 8
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 1
  store i32 -559038737, i32* %71, align 4
  %72 = load i8*, i8** %17, align 8
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 1
  store i8* %72, i8** %76, align 8
  %77 = load i8*, i8** %18, align 8
  %78 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 0
  store i8* %77, i8** %81, align 8
  store i32 12, i32* %20, align 4
  %82 = load i8*, i8** %10, align 8
  %83 = load i32, i32* %20, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i8, i8* %82, i64 %84
  %86 = load i8*, i8** %13, align 8
  %87 = load i64, i64* %14, align 8
  %88 = call i32 @memcpy(i8* %85, i8* %86, i64 %87)
  %89 = load i8*, i8** %15, align 8
  %90 = icmp ne i8* %89, null
  br i1 %90, label %91, label %101

91:                                               ; preds = %9
  %92 = load i8*, i8** %10, align 8
  %93 = load i32, i32* %20, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i8, i8* %92, i64 %94
  %96 = load i64, i64* %14, align 8
  %97 = getelementptr inbounds i8, i8* %95, i64 %96
  %98 = load i8*, i8** %15, align 8
  %99 = load i64, i64* %16, align 8
  %100 = call i32 @memcpy(i8* %97, i8* %98, i64 %99)
  br label %101

101:                                              ; preds = %91, %9
  %102 = load i32, i32* %20, align 4
  %103 = sext i32 %102 to i64
  %104 = load i64, i64* %14, align 8
  %105 = add i64 %103, %104
  %106 = load i64, i64* %16, align 8
  %107 = add i64 %105, %106
  %108 = trunc i64 %107 to i32
  ret i32 %108
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @memset(%struct.TYPE_11__*, i32, i32) #1

declare dso_local i32 @htons(i64) #1

declare dso_local i32 @htonl(i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
