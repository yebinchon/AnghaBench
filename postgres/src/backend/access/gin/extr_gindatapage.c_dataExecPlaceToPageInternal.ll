; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/gin/extr_gindatapage.c_dataExecPlaceToPageInternal.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/gin/extr_gindatapage.c_dataExecPlaceToPageInternal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32 }

@dataExecPlaceToPageInternal.data = internal global %struct.TYPE_6__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*, i32, %struct.TYPE_7__*, i8*, i32, i8*)* @dataExecPlaceToPageInternal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dataExecPlaceToPageInternal(%struct.TYPE_8__* %0, i32 %1, %struct.TYPE_7__* %2, i8* %3, i32 %4, i8* %5) #0 {
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.TYPE_7__* %2, %struct.TYPE_7__** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  store i8* %5, i8** %12, align 8
  %16 = load i32, i32* %8, align 4
  %17 = call i32 @BufferGetPage(i32 %16)
  store i32 %17, i32* %13, align 4
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %14, align 4
  %21 = load i32, i32* %13, align 4
  %22 = load i32, i32* %14, align 4
  %23 = call i32* @GinDataPageGetPostingItem(i32 %21, i32 %22)
  store i32* %23, i32** %15, align 8
  %24 = load i32*, i32** %15, align 8
  %25 = load i32, i32* %11, align 4
  %26 = call i32 @PostingItemSetBlockNumber(i32* %24, i32 %25)
  %27 = load i8*, i8** %10, align 8
  %28 = bitcast i8* %27 to i32*
  store i32* %28, i32** %15, align 8
  %29 = load i32, i32* %13, align 4
  %30 = load i32*, i32** %15, align 8
  %31 = load i32, i32* %14, align 4
  %32 = call i32 @GinDataPageAddPostingItem(i32 %29, i32* %30, i32 %31)
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i64 @RelationNeedsWAL(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %48

38:                                               ; preds = %6
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %48, label %43

43:                                               ; preds = %38
  %44 = load i32, i32* %14, align 4
  store i32 %44, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @dataExecPlaceToPageInternal.data, i32 0, i32 1), align 4
  %45 = load i32*, i32** %15, align 8
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @dataExecPlaceToPageInternal.data, i32 0, i32 0), align 4
  %47 = call i32 @XLogRegisterBufData(i32 0, i8* bitcast (%struct.TYPE_6__* @dataExecPlaceToPageInternal.data to i8*), i32 8)
  br label %48

48:                                               ; preds = %43, %38, %6
  ret void
}

declare dso_local i32 @BufferGetPage(i32) #1

declare dso_local i32* @GinDataPageGetPostingItem(i32, i32) #1

declare dso_local i32 @PostingItemSetBlockNumber(i32*, i32) #1

declare dso_local i32 @GinDataPageAddPostingItem(i32, i32*, i32) #1

declare dso_local i64 @RelationNeedsWAL(i32) #1

declare dso_local i32 @XLogRegisterBufData(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
