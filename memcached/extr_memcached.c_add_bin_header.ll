; ModuleID = '/home/carl/AnghaBench/memcached/extr_memcached.c_add_bin_header.c'
source_filename = "/home/carl/AnghaBench/memcached/extr_memcached.c_add_bin_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32 }
%struct.TYPE_16__ = type { i32, i64, i32, i32, %struct.TYPE_13__, i64, i64, i64 }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_15__ = type { i32*, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32, i32, i32, i8*, i8*, i8*, i8*, i32, i8* }

@.str = private unnamed_addr constant [48 x i8] c"SERVER_ERROR out of memory adding binary header\00", align 1
@PROTOCOL_BINARY_RES = common dso_local global i64 0, align 8
@PROTOCOL_BINARY_RAW_BYTES = common dso_local global i64 0, align 8
@settings = common dso_local global %struct.TYPE_17__ zeroinitializer, align 4
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c">%d Writing bin response:\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"\0A>%d  \00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c" 0x%02x\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_16__*, i8*, i8*, i8*, i32)* @add_bin_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_bin_header(%struct.TYPE_16__* %0, i8* %1, i8* %2, i8* %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_15__*, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i32 %4, i32* %10, align 4
  %13 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %14 = call i32 @assert(%struct.TYPE_16__* %13)
  %15 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %15, i32 0, i32 7
  store i64 0, i64* %16, align 8
  %17 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %17, i32 0, i32 6
  store i64 0, i64* %18, align 8
  %19 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %19, i32 0, i32 5
  store i64 0, i64* %20, align 8
  %21 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %22 = call i64 @add_msghdr(%struct.TYPE_16__* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %5
  %25 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %26 = call i32 @out_of_memory(%struct.TYPE_16__* %25, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  br label %128

27:                                               ; preds = %5
  %28 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = inttoptr i64 %30 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %31, %struct.TYPE_15__** %11, align 8
  %32 = load i64, i64* @PROTOCOL_BINARY_RES, align 8
  %33 = inttoptr i64 %32 to i8*
  %34 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %35 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %35, i32 0, i32 8
  store i8* %33, i8** %36, align 8
  %37 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %37, i32 0, i32 4
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %43 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %43, i32 0, i32 7
  store i32 %41, i32* %44, align 8
  %45 = load i8*, i8** %9, align 8
  %46 = call i64 @htons(i8* %45)
  %47 = inttoptr i64 %46 to i8*
  %48 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %49 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %49, i32 0, i32 6
  store i8* %47, i8** %50, align 8
  %51 = load i8*, i8** %8, align 8
  %52 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %53 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %53, i32 0, i32 5
  store i8* %51, i8** %54, align 8
  %55 = load i64, i64* @PROTOCOL_BINARY_RAW_BYTES, align 8
  %56 = inttoptr i64 %55 to i8*
  %57 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %58 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %58, i32 0, i32 4
  store i8* %56, i8** %59, align 8
  %60 = load i8*, i8** %7, align 8
  %61 = call i64 @htons(i8* %60)
  %62 = inttoptr i64 %61 to i8*
  %63 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %64 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %64, i32 0, i32 3
  store i8* %62, i8** %65, align 8
  %66 = load i32, i32* %10, align 4
  %67 = call i32 @htonl(i32 %66)
  %68 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %69 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %69, i32 0, i32 2
  store i32 %67, i32* %70, align 8
  %71 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %75 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %75, i32 0, i32 1
  store i32 %73, i32* %76, align 4
  %77 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @htonll(i32 %79)
  %81 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %82 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %82, i32 0, i32 0
  store i32 %80, i32* %83, align 8
  %84 = load i32, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @settings, i32 0, i32 0), align 4
  %85 = icmp sgt i32 %84, 1
  br i1 %85, label %86, label %122

86:                                               ; preds = %27
  %87 = load i32, i32* @stderr, align 4
  %88 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %89 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = call i32 (i32, i8*, ...) @fprintf(i32 %87, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %90)
  store i32 0, i32* %12, align 4
  br label %92

92:                                               ; preds = %116, %86
  %93 = load i32, i32* %12, align 4
  %94 = sext i32 %93 to i64
  %95 = icmp ult i64 %94, 8
  br i1 %95, label %96, label %119

96:                                               ; preds = %92
  %97 = load i32, i32* %12, align 4
  %98 = srem i32 %97, 4
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %106

100:                                              ; preds = %96
  %101 = load i32, i32* @stderr, align 4
  %102 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %103 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = call i32 (i32, i8*, ...) @fprintf(i32 %101, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %104)
  br label %106

106:                                              ; preds = %100, %96
  %107 = load i32, i32* @stderr, align 4
  %108 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %109 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %108, i32 0, i32 0
  %110 = load i32*, i32** %109, align 8
  %111 = load i32, i32* %12, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i32, i32* %110, i64 %112
  %114 = load i32, i32* %113, align 4
  %115 = call i32 (i32, i8*, ...) @fprintf(i32 %107, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 %114)
  br label %116

116:                                              ; preds = %106
  %117 = load i32, i32* %12, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %12, align 4
  br label %92

119:                                              ; preds = %92
  %120 = load i32, i32* @stderr, align 4
  %121 = call i32 (i32, i8*, ...) @fprintf(i32 %120, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  br label %122

122:                                              ; preds = %119, %27
  %123 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %124 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %125 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %124, i32 0, i32 1
  %126 = load i64, i64* %125, align 8
  %127 = call i32 @add_iov(%struct.TYPE_16__* %123, i64 %126, i32 64)
  br label %128

128:                                              ; preds = %122, %24
  ret void
}

declare dso_local i32 @assert(%struct.TYPE_16__*) #1

declare dso_local i64 @add_msghdr(%struct.TYPE_16__*) #1

declare dso_local i32 @out_of_memory(%struct.TYPE_16__*, i8*) #1

declare dso_local i64 @htons(i8*) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i32 @htonll(i32) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @add_iov(%struct.TYPE_16__*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
