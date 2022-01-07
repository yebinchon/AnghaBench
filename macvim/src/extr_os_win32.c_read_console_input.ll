; ModuleID = '/home/carl/AnghaBench/macvim/src/extr_os_win32.c_read_console_input.c'
source_filename = "/home/carl/AnghaBench/macvim/src/extr_os_win32.c_read_console_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 }

@read_console_input.s_irCache = internal global [10 x %struct.TYPE_5__] zeroinitializer, align 16
@read_console_input.s_dwIndex = internal global i32 0, align 4
@read_console_input.s_dwMax = internal global i32 0, align 4
@win8_or_later = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@WINDOW_BUFFER_SIZE_EVENT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_5__*, i32, i32*)* @read_console_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_console_input(i32 %0, %struct.TYPE_5__* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %14 = load i32, i32* @win8_or_later, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %28, label %16

16:                                               ; preds = %4
  %17 = load i32, i32* %8, align 4
  %18 = icmp eq i32 %17, -1
  br i1 %18, label %19, label %24

19:                                               ; preds = %16
  %20 = load i32, i32* %6, align 4
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %22 = load i32*, i32** %9, align 8
  %23 = call i32 @PeekConsoleInput(i32 %20, %struct.TYPE_5__* %21, i32 1, i32* %22)
  store i32 %23, i32* %5, align 4
  br label %126

24:                                               ; preds = %16
  %25 = load i32, i32* %6, align 4
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %27 = call i32 @ReadConsoleInput(i32 %25, %struct.TYPE_5__* %26, i32 1, i32* %10)
  store i32 %27, i32* %5, align 4
  br label %126

28:                                               ; preds = %4
  %29 = load i32, i32* @read_console_input.s_dwMax, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %108

31:                                               ; preds = %28
  %32 = load i32, i32* %8, align 4
  %33 = icmp eq i32 %32, -1
  br i1 %33, label %34, label %39

34:                                               ; preds = %31
  %35 = load i32, i32* %6, align 4
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %37 = load i32*, i32** %9, align 8
  %38 = call i32 @PeekConsoleInput(i32 %35, %struct.TYPE_5__* %36, i32 1, i32* %37)
  store i32 %38, i32* %5, align 4
  br label %126

39:                                               ; preds = %31
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @ReadConsoleInput(i32 %40, %struct.TYPE_5__* getelementptr inbounds ([10 x %struct.TYPE_5__], [10 x %struct.TYPE_5__]* @read_console_input.s_irCache, i64 0, i64 0), i32 10, i32* %10)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %45, label %43

43:                                               ; preds = %39
  %44 = load i32, i32* @FALSE, align 4
  store i32 %44, i32* %5, align 4
  br label %126

45:                                               ; preds = %39
  store i32 0, i32* @read_console_input.s_dwIndex, align 4
  %46 = load i32, i32* %10, align 4
  store i32 %46, i32* @read_console_input.s_dwMax, align 4
  %47 = load i32, i32* %10, align 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %45
  %50 = load i32*, i32** %9, align 8
  store i32 0, i32* %50, align 4
  %51 = load i32, i32* @TRUE, align 4
  store i32 %51, i32* %5, align 4
  br label %126

52:                                               ; preds = %45
  %53 = load i32, i32* @read_console_input.s_dwMax, align 4
  %54 = icmp sgt i32 %53, 1
  br i1 %54, label %55, label %107

55:                                               ; preds = %52
  store i32 0, i32* %11, align 4
  %56 = load i32, i32* @read_console_input.s_dwMax, align 4
  %57 = sub nsw i32 %56, 1
  store i32 %57, i32* %12, align 4
  br label %58

58:                                               ; preds = %101, %98, %55
  %59 = load i32, i32* %11, align 4
  %60 = load i32, i32* %12, align 4
  %61 = icmp ne i32 %59, %60
  br i1 %61, label %62, label %104

62:                                               ; preds = %58
  %63 = load i32, i32* %11, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds [10 x %struct.TYPE_5__], [10 x %struct.TYPE_5__]* @read_console_input.s_irCache, i64 0, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @WINDOW_BUFFER_SIZE_EVENT, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %101

70:                                               ; preds = %62
  %71 = load i32, i32* %11, align 4
  %72 = add nsw i32 %71, 1
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds [10 x %struct.TYPE_5__], [10 x %struct.TYPE_5__]* @read_console_input.s_irCache, i64 0, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @WINDOW_BUFFER_SIZE_EVENT, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %101

79:                                               ; preds = %70
  %80 = load i32, i32* %11, align 4
  store i32 %80, i32* %13, align 4
  br label %81

81:                                               ; preds = %95, %79
  %82 = load i32, i32* %13, align 4
  %83 = load i32, i32* %12, align 4
  %84 = icmp slt i32 %82, %83
  br i1 %84, label %85, label %98

85:                                               ; preds = %81
  %86 = load i32, i32* %13, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds [10 x %struct.TYPE_5__], [10 x %struct.TYPE_5__]* @read_console_input.s_irCache, i64 0, i64 %87
  %89 = load i32, i32* %13, align 4
  %90 = add nsw i32 %89, 1
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds [10 x %struct.TYPE_5__], [10 x %struct.TYPE_5__]* @read_console_input.s_irCache, i64 0, i64 %91
  %93 = bitcast %struct.TYPE_5__* %88 to i8*
  %94 = bitcast %struct.TYPE_5__* %92 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %93, i8* align 8 %94, i64 8, i1 false)
  br label %95

95:                                               ; preds = %85
  %96 = load i32, i32* %13, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %13, align 4
  br label %81

98:                                               ; preds = %81
  %99 = load i32, i32* %12, align 4
  %100 = add nsw i32 %99, -1
  store i32 %100, i32* %12, align 4
  br label %58

101:                                              ; preds = %70, %62
  %102 = load i32, i32* %11, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %11, align 4
  br label %58

104:                                              ; preds = %58
  %105 = load i32, i32* %12, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* @read_console_input.s_dwMax, align 4
  br label %107

107:                                              ; preds = %104, %52
  br label %108

108:                                              ; preds = %107, %28
  %109 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %110 = load i32, i32* @read_console_input.s_dwIndex, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds [10 x %struct.TYPE_5__], [10 x %struct.TYPE_5__]* @read_console_input.s_irCache, i64 0, i64 %111
  %113 = bitcast %struct.TYPE_5__* %109 to i8*
  %114 = bitcast %struct.TYPE_5__* %112 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %113, i8* align 8 %114, i64 8, i1 false)
  %115 = load i32, i32* %8, align 4
  %116 = icmp ne i32 %115, -1
  br i1 %116, label %117, label %123

117:                                              ; preds = %108
  %118 = load i32, i32* @read_console_input.s_dwIndex, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* @read_console_input.s_dwIndex, align 4
  %120 = load i32, i32* @read_console_input.s_dwMax, align 4
  %121 = icmp sge i32 %119, %120
  br i1 %121, label %122, label %123

122:                                              ; preds = %117
  store i32 0, i32* @read_console_input.s_dwMax, align 4
  br label %123

123:                                              ; preds = %122, %117, %108
  %124 = load i32*, i32** %9, align 8
  store i32 1, i32* %124, align 4
  %125 = load i32, i32* @TRUE, align 4
  store i32 %125, i32* %5, align 4
  br label %126

126:                                              ; preds = %123, %49, %43, %34, %24, %19
  %127 = load i32, i32* %5, align 4
  ret i32 %127
}

declare dso_local i32 @PeekConsoleInput(i32, %struct.TYPE_5__*, i32, i32*) #1

declare dso_local i32 @ReadConsoleInput(i32, %struct.TYPE_5__*, i32, i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
