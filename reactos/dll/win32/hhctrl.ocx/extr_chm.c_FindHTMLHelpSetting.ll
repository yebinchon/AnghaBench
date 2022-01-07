; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/hhctrl.ocx/extr_chm.c_FindHTMLHelpSetting.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/hhctrl.ocx/extr_chm.c_FindHTMLHelpSetting.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i8*, i32* }

@FindHTMLHelpSetting.periodW = internal constant [2 x i8] c".\00", align 1
@STGM_READ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_5__*, i8*)* @FindHTMLHelpSetting to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @FindHTMLHelpSetting(%struct.TYPE_5__* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 1
  %14 = load i32*, i32** %13, align 8
  store i32* %14, i32** %6, align 8
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  %20 = call i32 @lstrlenW(i8* %19)
  %21 = call i32 @lstrlenW(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @FindHTMLHelpSetting.periodW, i64 0, i64 0))
  %22 = add nsw i32 %20, %21
  %23 = load i8*, i8** %5, align 8
  %24 = call i32 @lstrlenW(i8* %23)
  %25 = add nsw i32 %22, %24
  %26 = add nsw i32 %25, 1
  %27 = sext i32 %26 to i64
  %28 = mul i64 %27, 1
  %29 = trunc i64 %28 to i32
  %30 = call i8* @heap_alloc(i32 %29)
  store i8* %30, i8** %8, align 8
  %31 = load i8*, i8** %8, align 8
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  %37 = call i32 @lstrcpyW(i8* %31, i8* %36)
  %38 = load i8*, i8** %8, align 8
  %39 = call i32 @lstrcatW(i8* %38, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @FindHTMLHelpSetting.periodW, i64 0, i64 0))
  %40 = load i8*, i8** %8, align 8
  %41 = load i8*, i8** %5, align 8
  %42 = call i32 @lstrcatW(i8* %40, i8* %41)
  %43 = load i32*, i32** %6, align 8
  %44 = load i8*, i8** %8, align 8
  %45 = load i32, i32* @STGM_READ, align 4
  %46 = call i32 @IStorage_OpenStream(i32* %43, i8* %44, i32* null, i32 %45, i32 0, i32** %7)
  store i32 %46, i32* %9, align 4
  %47 = load i32, i32* %9, align 4
  %48 = call i64 @FAILED(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %2
  %51 = load i8*, i8** %8, align 8
  %52 = call i32 @heap_free(i8* %51)
  %53 = call i8* @strdupAtoW(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  store i8* %53, i8** %3, align 8
  br label %58

54:                                               ; preds = %2
  %55 = load i32*, i32** %7, align 8
  %56 = call i32 @IStream_Release(i32* %55)
  %57 = load i8*, i8** %8, align 8
  store i8* %57, i8** %3, align 8
  br label %58

58:                                               ; preds = %54, %50
  %59 = load i8*, i8** %3, align 8
  ret i8* %59
}

declare dso_local i8* @heap_alloc(i32) #1

declare dso_local i32 @lstrlenW(i8*) #1

declare dso_local i32 @lstrcpyW(i8*, i8*) #1

declare dso_local i32 @lstrcatW(i8*, i8*) #1

declare dso_local i32 @IStorage_OpenStream(i32*, i8*, i32*, i32, i32, i32**) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @heap_free(i8*) #1

declare dso_local i8* @strdupAtoW(i8*) #1

declare dso_local i32 @IStream_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
