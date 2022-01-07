; ModuleID = '/home/carl/AnghaBench/radare2/libr/cons/extr_dietline.c_selection_widget_select.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/cons/extr_dietline.c_selection_widget_select.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_4__, %struct.TYPE_5__* }
%struct.TYPE_4__ = type { i8*, i64, i64 }
%struct.TYPE_5__ = type { i64, i64, i32* }

@I = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@R_LINE_BUFSIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @selection_widget_select to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @selection_widget_select() #0 {
  %1 = alloca %struct.TYPE_5__*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @I, i32 0, i32 1), align 8
  store %struct.TYPE_5__* %4, %struct.TYPE_5__** %1, align 8
  %5 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %6 = icmp ne %struct.TYPE_5__* %5, null
  br i1 %6, label %7, label %97

7:                                                ; preds = %0
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = icmp ult i64 %10, %13
  br i1 %14, label %15, label %97

15:                                               ; preds = %7
  %16 = load i8*, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @I, i32 0, i32 0, i32 0), align 8
  %17 = call i8* @strchr(i8* %16, i8 signext 32)
  store i8* %17, i8** %2, align 8
  %18 = load i8*, i8** %2, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %20, label %67

20:                                               ; preds = %15
  %21 = load i8*, i8** %2, align 8
  %22 = load i8*, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @I, i32 0, i32 0, i32 0), align 8
  %23 = ptrtoint i8* %21 to i64
  %24 = ptrtoint i8* %22 to i64
  %25 = sub i64 %23, %24
  %26 = add nsw i64 %25, 1
  %27 = trunc i64 %26 to i32
  store i32 %27, i32* %3, align 4
  %28 = load i32, i32* %3, align 4
  %29 = sext i32 %28 to i64
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 2
  %32 = load i32*, i32** %31, align 8
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = getelementptr inbounds i32, i32* %32, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = call i64 @strlen(i32 %37)
  %39 = add i64 %29, %38
  %40 = load i64, i64* @R_LINE_BUFSIZE, align 8
  %41 = sub nsw i64 %40, 1
  %42 = call i8* @R_MIN(i64 %39, i64 %41)
  %43 = ptrtoint i8* %42 to i64
  store i64 %43, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @I, i32 0, i32 0, i32 1), align 8
  %44 = load i8*, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @I, i32 0, i32 0, i32 0), align 8
  %45 = load i32, i32* %3, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i8, i8* %44, i64 %46
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 2
  %50 = load i32*, i32** %49, align 8
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = getelementptr inbounds i32, i32* %50, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 2
  %58 = load i32*, i32** %57, align 8
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = getelementptr inbounds i32, i32* %58, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = call i64 @strlen(i32 %63)
  %65 = call i32 @memcpy(i8* %47, i32 %55, i64 %64)
  %66 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @I, i32 0, i32 0, i32 1), align 8
  store i64 %66, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @I, i32 0, i32 0, i32 2), align 8
  br label %97

67:                                               ; preds = %15
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 2
  %70 = load i32*, i32** %69, align 8
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = getelementptr inbounds i32, i32* %70, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = call i64 @strlen(i32 %75)
  %77 = load i64, i64* @R_LINE_BUFSIZE, align 8
  %78 = sub nsw i64 %77, 1
  %79 = call i8* @R_MIN(i64 %76, i64 %78)
  %80 = ptrtoint i8* %79 to i64
  store i64 %80, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @I, i32 0, i32 0, i32 1), align 8
  %81 = load i8*, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @I, i32 0, i32 0, i32 0), align 8
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 2
  %84 = load i32*, i32** %83, align 8
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = getelementptr inbounds i32, i32* %84, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @I, i32 0, i32 0, i32 1), align 8
  %91 = call i32 @memcpy(i8* %81, i32 %89, i64 %90)
  %92 = load i8*, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @I, i32 0, i32 0, i32 0), align 8
  %93 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @I, i32 0, i32 0, i32 1), align 8
  %94 = getelementptr inbounds i8, i8* %92, i64 %93
  store i8 0, i8* %94, align 1
  %95 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @I, i32 0, i32 0, i32 1), align 8
  store i64 %95, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @I, i32 0, i32 0, i32 2), align 8
  %96 = call i32 (...) @selection_widget_erase()
  br label %97

97:                                               ; preds = %20, %67, %7, %0
  ret void
}

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i8* @R_MIN(i64, i64) #1

declare dso_local i64 @strlen(i32) #1

declare dso_local i32 @memcpy(i8*, i32, i64) #1

declare dso_local i32 @selection_widget_erase(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
