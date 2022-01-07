; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/atl/extr_registrar.c_do_preprocess.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/atl/extr_registrar.c_do_preprocess.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i8*, i32, %struct.TYPE_8__* }
%struct.TYPE_7__ = type { i32 }

@do_preprocess.wstr = internal constant [2 x i8] c"%\00", align 1
@DISP_E_EXCEPTION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Could not find replacement: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@S_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i8*, %struct.TYPE_7__*)* @do_preprocess to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_preprocess(%struct.TYPE_9__* %0, i8* %1, %struct.TYPE_7__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.TYPE_7__* %2, %struct.TYPE_7__** %7, align 8
  %11 = load i8*, i8** %6, align 8
  store i8* %11, i8** %9, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = call i8* @wcschr(i8* %12, i8 signext 37)
  store i8* %13, i8** %8, align 8
  br label %14

14:                                               ; preds = %102, %3
  %15 = load i8*, i8** %8, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %107

17:                                               ; preds = %14
  %18 = load i8*, i8** %9, align 8
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %20 = load i8*, i8** %8, align 8
  %21 = load i8*, i8** %9, align 8
  %22 = ptrtoint i8* %20 to i64
  %23 = ptrtoint i8* %21 to i64
  %24 = sub i64 %22, %23
  %25 = trunc i64 %24 to i32
  %26 = call i32 @strbuf_write(i8* %18, %struct.TYPE_7__* %19, i32 %25)
  %27 = load i8*, i8** %8, align 8
  %28 = getelementptr inbounds i8, i8* %27, i32 1
  store i8* %28, i8** %8, align 8
  store i8* %28, i8** %9, align 8
  %29 = load i8*, i8** %9, align 8
  %30 = load i8, i8* %29, align 1
  %31 = icmp ne i8 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %17
  %33 = load i32, i32* @DISP_E_EXCEPTION, align 4
  store i32 %33, i32* %4, align 4
  br label %117

34:                                               ; preds = %17
  %35 = load i8*, i8** %9, align 8
  %36 = call i8* @wcschr(i8* %35, i8 signext 37)
  store i8* %36, i8** %8, align 8
  %37 = load i8*, i8** %8, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %41, label %39

39:                                               ; preds = %34
  %40 = load i32, i32* @DISP_E_EXCEPTION, align 4
  store i32 %40, i32* %4, align 4
  br label %117

41:                                               ; preds = %34
  %42 = load i8*, i8** %8, align 8
  %43 = load i8*, i8** %9, align 8
  %44 = icmp eq i8* %42, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %41
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %47 = call i32 @strbuf_write(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @do_preprocess.wstr, i64 0, i64 0), %struct.TYPE_7__* %46, i32 1)
  br label %102

48:                                               ; preds = %41
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %50, align 8
  store %struct.TYPE_8__* %51, %struct.TYPE_8__** %10, align 8
  br label %52

52:                                               ; preds = %78, %48
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %54 = icmp ne %struct.TYPE_8__* %53, null
  br i1 %54, label %55, label %82

55:                                               ; preds = %52
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = sext i32 %58 to i64
  %60 = load i8*, i8** %8, align 8
  %61 = load i8*, i8** %9, align 8
  %62 = ptrtoint i8* %60 to i64
  %63 = ptrtoint i8* %61 to i64
  %64 = sub i64 %62, %63
  %65 = icmp eq i64 %59, %64
  br i1 %65, label %66, label %77

66:                                               ; preds = %55
  %67 = load i8*, i8** %9, align 8
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @_wcsnicmp(i8* %67, i32 %70, i32 %73)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %77, label %76

76:                                               ; preds = %66
  br label %82

77:                                               ; preds = %66, %55
  br label %78

78:                                               ; preds = %77
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 3
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %80, align 8
  store %struct.TYPE_8__* %81, %struct.TYPE_8__** %10, align 8
  br label %52

82:                                               ; preds = %76, %52
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %84 = icmp ne %struct.TYPE_8__* %83, null
  br i1 %84, label %96, label %85

85:                                               ; preds = %82
  %86 = load i8*, i8** %9, align 8
  %87 = load i8*, i8** %8, align 8
  %88 = load i8*, i8** %9, align 8
  %89 = ptrtoint i8* %87 to i64
  %90 = ptrtoint i8* %88 to i64
  %91 = sub i64 %89, %90
  %92 = trunc i64 %91 to i32
  %93 = call i32 @debugstr_wn(i8* %86, i32 %92)
  %94 = call i32 @WARN(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %93)
  %95 = load i32, i32* @DISP_E_EXCEPTION, align 4
  store i32 %95, i32* %4, align 4
  br label %117

96:                                               ; preds = %82
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 1
  %99 = load i8*, i8** %98, align 8
  %100 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %101 = call i32 @strbuf_write(i8* %99, %struct.TYPE_7__* %100, i32 -1)
  br label %102

102:                                              ; preds = %96, %45
  %103 = load i8*, i8** %8, align 8
  %104 = getelementptr inbounds i8, i8* %103, i32 1
  store i8* %104, i8** %8, align 8
  store i8* %104, i8** %9, align 8
  %105 = load i8*, i8** %8, align 8
  %106 = call i8* @wcschr(i8* %105, i8 signext 37)
  store i8* %106, i8** %8, align 8
  br label %14

107:                                              ; preds = %14
  %108 = load i8*, i8** %9, align 8
  %109 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %110 = call i32 @strbuf_write(i8* %108, %struct.TYPE_7__* %109, i32 -1)
  %111 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @debugstr_w(i32 %113)
  %115 = call i32 @TRACE(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %114)
  %116 = load i32, i32* @S_OK, align 4
  store i32 %116, i32* %4, align 4
  br label %117

117:                                              ; preds = %107, %85, %39, %32
  %118 = load i32, i32* %4, align 4
  ret i32 %118
}

declare dso_local i8* @wcschr(i8*, i8 signext) #1

declare dso_local i32 @strbuf_write(i8*, %struct.TYPE_7__*, i32) #1

declare dso_local i32 @_wcsnicmp(i8*, i32, i32) #1

declare dso_local i32 @WARN(i8*, i32) #1

declare dso_local i32 @debugstr_wn(i8*, i32) #1

declare dso_local i32 @TRACE(i8*, i32) #1

declare dso_local i32 @debugstr_w(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
