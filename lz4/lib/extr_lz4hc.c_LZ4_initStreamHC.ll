; ModuleID = '/home/carl/AnghaBench/lz4/lib/extr_lz4hc.c_LZ4_initStreamHC.c'
source_filename = "/home/carl/AnghaBench/lz4/lib/extr_lz4hc.c_LZ4_initStreamHC.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i64, i32*, i32*, i32* }

@LZ4_STREAMHCSIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"LZ4_initStreamHC(%p, %u)\00", align 1
@LZ4HC_CLEVEL_DEFAULT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_7__* @LZ4_initStreamHC(i8* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %8, %struct.TYPE_7__** %6, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = icmp eq i8* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %3, align 8
  br label %54

12:                                               ; preds = %2
  %13 = load i64, i64* %5, align 8
  %14 = icmp ult i64 %13, 40
  br i1 %14, label %15, label %16

15:                                               ; preds = %12
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %3, align 8
  br label %54

16:                                               ; preds = %12
  %17 = load i8*, i8** %4, align 8
  %18 = ptrtoint i8* %17 to i64
  %19 = call i32 (...) @LZ4_streamHC_t_alignment()
  %20 = sub nsw i32 %19, 1
  %21 = sext i32 %20 to i64
  %22 = and i64 %18, %21
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %16
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %3, align 8
  br label %54

25:                                               ; preds = %16
  %26 = load i32, i32* @LZ4_STREAMHCSIZE, align 4
  %27 = sext i32 %26 to i64
  %28 = icmp ule i64 4, %27
  %29 = zext i1 %28 to i32
  %30 = call i32 @LZ4_STATIC_ASSERT(i32 %29)
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %32 = load i64, i64* %5, align 8
  %33 = trunc i64 %32 to i32
  %34 = call i32 @DEBUGLOG(i32 4, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), %struct.TYPE_7__* %31, i32 %33)
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 4
  store i32* inttoptr (i64 -1 to i32*), i32** %37, align 8
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 3
  store i32* null, i32** %40, align 8
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 2
  store i32* null, i32** %43, align 8
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 1
  store i64 0, i64* %46, align 8
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  store i64 0, i64* %49, align 8
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %51 = load i32, i32* @LZ4HC_CLEVEL_DEFAULT, align 4
  %52 = call i32 @LZ4_setCompressionLevel(%struct.TYPE_7__* %50, i32 %51)
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  store %struct.TYPE_7__* %53, %struct.TYPE_7__** %3, align 8
  br label %54

54:                                               ; preds = %25, %24, %15, %11
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  ret %struct.TYPE_7__* %55
}

declare dso_local i32 @LZ4_streamHC_t_alignment(...) #1

declare dso_local i32 @LZ4_STATIC_ASSERT(i32) #1

declare dso_local i32 @DEBUGLOG(i32, i8*, %struct.TYPE_7__*, i32) #1

declare dso_local i32 @LZ4_setCompressionLevel(%struct.TYPE_7__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
