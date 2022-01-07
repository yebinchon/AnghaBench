; ModuleID = '/home/carl/AnghaBench/netdata/libnetdata/buffer/extr_buffer.c_buffer_strcat.c'
source_filename = "/home/carl/AnghaBench/netdata/libnetdata/buffer/extr_buffer.c_buffer_strcat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i8*, i64, i64 }

@D_WEB_BUFFER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [61 x i8] c"strcat(): increasing web_buffer at position %zu, size = %zu\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @buffer_strcat(%struct.TYPE_6__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %11, label %16

11:                                               ; preds = %2
  %12 = load i8*, i8** %4, align 8
  %13 = load i8, i8* %12, align 1
  %14 = icmp ne i8 %13, 0
  %15 = xor i1 %14, true
  br label %16

16:                                               ; preds = %11, %2
  %17 = phi i1 [ true, %2 ], [ %15, %11 ]
  %18 = zext i1 %17 to i32
  %19 = call i64 @unlikely(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  br label %102

22:                                               ; preds = %16
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %24 = call i32 @buffer_need_bytes(%struct.TYPE_6__* %23, i64 1)
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = getelementptr inbounds i8, i8* %27, i64 %30
  store i8* %31, i8** %5, align 8
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = getelementptr inbounds i8, i8* %34, i64 %37
  store i8* %38, i8** %7, align 8
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  store i64 %41, i64* %8, align 8
  %42 = load i8*, i8** %5, align 8
  store i8* %42, i8** %6, align 8
  br label %43

43:                                               ; preds = %54, %22
  %44 = load i8*, i8** %4, align 8
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %43
  %49 = load i8*, i8** %5, align 8
  %50 = load i8*, i8** %7, align 8
  %51 = icmp ne i8* %49, %50
  br label %52

52:                                               ; preds = %48, %43
  %53 = phi i1 [ false, %43 ], [ %51, %48 ]
  br i1 %53, label %54, label %60

54:                                               ; preds = %52
  %55 = load i8*, i8** %4, align 8
  %56 = getelementptr inbounds i8, i8* %55, i32 1
  store i8* %56, i8** %4, align 8
  %57 = load i8, i8* %55, align 1
  %58 = load i8*, i8** %5, align 8
  %59 = getelementptr inbounds i8, i8* %58, i32 1
  store i8* %59, i8** %5, align 8
  store i8 %57, i8* %58, align 1
  br label %43

60:                                               ; preds = %52
  %61 = load i8*, i8** %5, align 8
  %62 = load i8*, i8** %6, align 8
  %63 = ptrtoint i8* %61 to i64
  %64 = ptrtoint i8* %62 to i64
  %65 = sub i64 %63, %64
  %66 = load i64, i64* %8, align 8
  %67 = add i64 %66, %65
  store i64 %67, i64* %8, align 8
  %68 = load i64, i64* %8, align 8
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 1
  store i64 %68, i64* %70, align 8
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %72 = call i32 @buffer_overflow_check(%struct.TYPE_6__* %71)
  %73 = load i8*, i8** %4, align 8
  %74 = load i8, i8* %73, align 1
  %75 = icmp ne i8 %74, 0
  br i1 %75, label %76, label %92

76:                                               ; preds = %60
  %77 = load i32, i32* @D_WEB_BUFFER, align 4
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 2
  %83 = load i64, i64* %82, align 8
  %84 = call i32 @debug(i32 %77, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), i64 %80, i64 %83)
  %85 = load i8*, i8** %4, align 8
  %86 = call i64 @strlen(i8* %85)
  store i64 %86, i64* %8, align 8
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %88 = load i64, i64* %8, align 8
  %89 = call i32 @buffer_increase(%struct.TYPE_6__* %87, i64 %88)
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %91 = load i8*, i8** %4, align 8
  call void @buffer_strcat(%struct.TYPE_6__* %90, i8* %91)
  br label %102

92:                                               ; preds = %60
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %94 = call i32 @buffer_need_bytes(%struct.TYPE_6__* %93, i64 1)
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 0
  %97 = load i8*, i8** %96, align 8
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = getelementptr inbounds i8, i8* %97, i64 %100
  store i8 0, i8* %101, align 1
  br label %102

102:                                              ; preds = %21, %92, %76
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @buffer_need_bytes(%struct.TYPE_6__*, i64) #1

declare dso_local i32 @buffer_overflow_check(%struct.TYPE_6__*) #1

declare dso_local i32 @debug(i32, i8*, i64, i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @buffer_increase(%struct.TYPE_6__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
