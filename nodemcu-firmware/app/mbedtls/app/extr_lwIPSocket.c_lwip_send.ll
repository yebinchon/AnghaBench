; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/mbedtls/app/extr_lwIPSocket.c_lwip_send.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/mbedtls/app/extr_lwIPSocket.c_lwip_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }

@ERR_OK = common dso_local global i64 0, align 8
@ERR_MEM = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lwip_send(i32 %0, i8* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_8__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store i32 %0, i32* %6, align 4
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %10, align 8
  store i64 0, i64* %11, align 8
  %13 = load i64, i64* @ERR_OK, align 8
  store i64 %13, i64* %12, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = call i32 @lwIP_ASSERT(i8* %14)
  %16 = load i32, i32* %6, align 4
  %17 = call %struct.TYPE_8__* @get_socket(i32 %16)
  store %struct.TYPE_8__* %17, %struct.TYPE_8__** %10, align 8
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %19 = icmp ne %struct.TYPE_8__* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %103

21:                                               ; preds = %4
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %25, align 8
  %27 = call i64 @tcp_sndbuf(%struct.TYPE_9__* %26)
  %28 = load i64, i64* %8, align 8
  %29 = icmp ult i64 %27, %28
  br i1 %29, label %30, label %37

30:                                               ; preds = %21
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %34, align 8
  %36 = call i64 @tcp_sndbuf(%struct.TYPE_9__* %35)
  store i64 %36, i64* %11, align 8
  br label %39

37:                                               ; preds = %21
  %38 = load i64, i64* %8, align 8
  store i64 %38, i64* %11, align 8
  br label %39

39:                                               ; preds = %37, %30
  %40 = load i64, i64* %11, align 8
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = mul nsw i32 2, %47
  %49 = sext i32 %48 to i64
  %50 = icmp ugt i64 %40, %49
  br i1 %50, label %51, label %61

51:                                               ; preds = %39
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = mul nsw i32 2, %58
  %60 = sext i32 %59 to i64
  store i64 %60, i64* %11, align 8
  br label %61

61:                                               ; preds = %51, %39
  br label %62

62:                                               ; preds = %85, %61
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 0
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 0
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %66, align 8
  %68 = load i8*, i8** %7, align 8
  %69 = load i64, i64* %11, align 8
  %70 = call i64 @tcp_write(%struct.TYPE_9__* %67, i8* %68, i64 %69, i32 1)
  store i64 %70, i64* %12, align 8
  %71 = load i64, i64* %12, align 8
  %72 = load i64, i64* @ERR_MEM, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %77

74:                                               ; preds = %62
  %75 = load i64, i64* %8, align 8
  %76 = udiv i64 %75, 2
  store i64 %76, i64* %8, align 8
  br label %77

77:                                               ; preds = %74, %62
  br label %78

78:                                               ; preds = %77
  %79 = load i64, i64* %12, align 8
  %80 = load i64, i64* @ERR_MEM, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %85

82:                                               ; preds = %78
  %83 = load i64, i64* %8, align 8
  %84 = icmp ugt i64 %83, 1
  br label %85

85:                                               ; preds = %82, %78
  %86 = phi i1 [ false, %78 ], [ %84, %82 ]
  br i1 %86, label %62, label %87

87:                                               ; preds = %85
  %88 = load i64, i64* %12, align 8
  %89 = load i64, i64* @ERR_OK, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %91, label %98

91:                                               ; preds = %87
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 0
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 0
  %96 = load %struct.TYPE_9__*, %struct.TYPE_9__** %95, align 8
  %97 = call i64 @tcp_output(%struct.TYPE_9__* %96)
  store i64 %97, i64* %12, align 8
  br label %100

98:                                               ; preds = %87
  %99 = load i64, i64* %12, align 8
  store i64 %99, i64* %8, align 8
  br label %100

100:                                              ; preds = %98, %91
  %101 = load i64, i64* %8, align 8
  %102 = trunc i64 %101 to i32
  store i32 %102, i32* %5, align 4
  br label %103

103:                                              ; preds = %100, %20
  %104 = load i32, i32* %5, align 4
  ret i32 %104
}

declare dso_local i32 @lwIP_ASSERT(i8*) #1

declare dso_local %struct.TYPE_8__* @get_socket(i32) #1

declare dso_local i64 @tcp_sndbuf(%struct.TYPE_9__*) #1

declare dso_local i64 @tcp_write(%struct.TYPE_9__*, i8*, i64, i32) #1

declare dso_local i64 @tcp_output(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
