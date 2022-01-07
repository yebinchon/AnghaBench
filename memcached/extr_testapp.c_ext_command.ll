; ModuleID = '/home/carl/AnghaBench/memcached/extr_testapp.c_ext_command.c'
source_filename = "/home/carl/AnghaBench/memcached/extr_testapp.c_ext_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i32, i32, i32, i32, i32 }

@PROTOCOL_BINARY_REQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, i32, i8*, i64, i8*, i64, i8*, i64)* @ext_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext_command(i8* %0, i64 %1, i32 %2, i8* %3, i64 %4, i8* %5, i64 %6, i8* %7, i64 %8) #0 {
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca %struct.TYPE_9__*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store i8* %0, i8** %10, align 8
  store i64 %1, i64* %11, align 8
  store i32 %2, i32* %12, align 4
  store i8* %3, i8** %13, align 8
  store i64 %4, i64* %14, align 8
  store i8* %5, i8** %15, align 8
  store i64 %6, i64* %16, align 8
  store i8* %7, i8** %17, align 8
  store i64 %8, i64* %18, align 8
  %23 = load i8*, i8** %10, align 8
  %24 = bitcast i8* %23 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %24, %struct.TYPE_9__** %19, align 8
  %25 = load i64, i64* %11, align 8
  %26 = load i64, i64* %14, align 8
  %27 = add i64 32, %26
  %28 = load i64, i64* %16, align 8
  %29 = add i64 %27, %28
  %30 = load i64, i64* %18, align 8
  %31 = add i64 %29, %30
  %32 = icmp ugt i64 %25, %31
  %33 = zext i1 %32 to i32
  %34 = call i32 @assert(i32 %33)
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  %36 = call i32 @memset(%struct.TYPE_9__* %35, i32 0, i32 32)
  %37 = load i32, i32* @PROTOCOL_BINARY_REQ, align 4
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 5
  store i32 %37, i32* %42, align 8
  %43 = load i32, i32* %12, align 4
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 4
  store i32 %43, i32* %48, align 4
  %49 = load i64, i64* %14, align 8
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  store i64 %49, i64* %54, align 8
  %55 = load i64, i64* %16, align 8
  %56 = call i32 @htons(i64 %55)
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 3
  store i32 %56, i32* %61, align 8
  %62 = load i64, i64* %14, align 8
  %63 = load i64, i64* %16, align 8
  %64 = add i64 %62, %63
  %65 = load i64, i64* %18, align 8
  %66 = add i64 %64, %65
  %67 = call i32 @htonl(i64 %66)
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 2
  store i32 %67, i32* %72, align 4
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 1
  store i32 -559038737, i32* %77, align 8
  store i32 32, i32* %20, align 4
  %78 = load i32, i32* %20, align 4
  %79 = sext i32 %78 to i64
  %80 = load i64, i64* %14, align 8
  %81 = add i64 %79, %80
  %82 = trunc i64 %81 to i32
  store i32 %82, i32* %21, align 4
  %83 = load i32, i32* %21, align 4
  %84 = sext i32 %83 to i64
  %85 = load i64, i64* %16, align 8
  %86 = add i64 %84, %85
  %87 = trunc i64 %86 to i32
  store i32 %87, i32* %22, align 4
  %88 = load i8*, i8** %13, align 8
  %89 = icmp ne i8* %88, null
  br i1 %89, label %90, label %98

90:                                               ; preds = %9
  %91 = load i8*, i8** %10, align 8
  %92 = load i32, i32* %20, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i8, i8* %91, i64 %93
  %95 = load i8*, i8** %13, align 8
  %96 = load i64, i64* %14, align 8
  %97 = call i32 @memcpy(i8* %94, i8* %95, i64 %96)
  br label %98

98:                                               ; preds = %90, %9
  %99 = load i8*, i8** %15, align 8
  %100 = icmp ne i8* %99, null
  br i1 %100, label %101, label %109

101:                                              ; preds = %98
  %102 = load i8*, i8** %10, align 8
  %103 = load i32, i32* %21, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i8, i8* %102, i64 %104
  %106 = load i8*, i8** %15, align 8
  %107 = load i64, i64* %16, align 8
  %108 = call i32 @memcpy(i8* %105, i8* %106, i64 %107)
  br label %109

109:                                              ; preds = %101, %98
  %110 = load i8*, i8** %17, align 8
  %111 = icmp ne i8* %110, null
  br i1 %111, label %112, label %120

112:                                              ; preds = %109
  %113 = load i8*, i8** %10, align 8
  %114 = load i32, i32* %22, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i8, i8* %113, i64 %115
  %117 = load i8*, i8** %17, align 8
  %118 = load i64, i64* %18, align 8
  %119 = call i32 @memcpy(i8* %116, i8* %117, i64 %118)
  br label %120

120:                                              ; preds = %112, %109
  %121 = load i64, i64* %14, align 8
  %122 = add i64 32, %121
  %123 = load i64, i64* %16, align 8
  %124 = add i64 %122, %123
  %125 = load i64, i64* %18, align 8
  %126 = add i64 %124, %125
  %127 = trunc i64 %126 to i32
  ret i32 %127
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @memset(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @htons(i64) #1

declare dso_local i32 @htonl(i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
