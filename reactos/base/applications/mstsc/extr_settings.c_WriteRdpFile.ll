; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/mstsc/extr_settings.c_WriteRdpFile.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/mstsc/extr_settings.c_WriteRdpFile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32, i32 }

@MAXKEY = common dso_local global i32 0, align 4
@MAXVALUE = common dso_local global i32 0, align 4
@NUM_SETTINGS = common dso_local global i64 0, align 8
@lpSettings = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [10 x i32] [i32 37, i32 115, i32 58, i32 105, i32 58, i32 37, i32 100, i32 13, i32 10, i32 0], align 4
@.str.1 = private unnamed_addr constant [10 x i32] [i32 37, i32 115, i32 58, i32 115, i32 58, i32 37, i32 115, i32 13, i32 10, i32 0], align 4
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_7__*)* @WriteRdpFile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @WriteRdpFile(i32 %0, %struct.TYPE_7__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %5, align 8
  %14 = load i32, i32* @MAXKEY, align 4
  %15 = load i32, i32* @MAXVALUE, align 4
  %16 = add nsw i32 %14, %15
  %17 = add nsw i32 %16, 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %6, align 8
  %20 = alloca i32, i64 %18, align 16
  store i64 %18, i64* %7, align 8
  store i64 0, i64* %11, align 8
  br label %21

21:                                               ; preds = %118, %2
  %22 = load i64, i64* %11, align 8
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ult i64 %22, %25
  br i1 %26, label %27, label %121

27:                                               ; preds = %21
  store i64 0, i64* %12, align 8
  br label %28

28:                                               ; preds = %114, %27
  %29 = load i64, i64* %12, align 8
  %30 = load i64, i64* @NUM_SETTINGS, align 8
  %31 = icmp ult i64 %29, %30
  br i1 %31, label %32, label %117

32:                                               ; preds = %28
  %33 = load i32*, i32** @lpSettings, align 8
  %34 = load i64, i64* %12, align 8
  %35 = getelementptr inbounds i32, i32* %33, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 1
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %38, align 8
  %40 = load i64, i64* %11, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = call i64 @wcscmp(i32 %36, i32 %43)
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %113

46:                                               ; preds = %32
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 1
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %48, align 8
  %50 = load i64, i64* %11, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = icmp eq i32 %53, 105
  br i1 %54, label %55, label %76

55:                                               ; preds = %46
  %56 = load i32, i32* @MAXKEY, align 4
  %57 = load i32, i32* @MAXVALUE, align 4
  %58 = add nsw i32 %56, %57
  %59 = add nsw i32 %58, 4
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 1
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %61, align 8
  %63 = load i64, i64* %11, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 1
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %68, align 8
  %70 = load i64, i64* %11, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @_snwprintf(i32* %20, i32 %59, i8* bitcast ([10 x i32]* @.str to i8*), i32 %66, i32 %74)
  br label %97

76:                                               ; preds = %46
  %77 = load i32, i32* @MAXKEY, align 4
  %78 = load i32, i32* @MAXVALUE, align 4
  %79 = add nsw i32 %77, %78
  %80 = add nsw i32 %79, 4
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 1
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %82, align 8
  %84 = load i64, i64* %11, align 8
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 1
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %89, align 8
  %91 = load i64, i64* %11, align 8
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @_snwprintf(i32* %20, i32 %80, i8* bitcast ([10 x i32]* @.str.1 to i8*), i32 %87, i32 %95)
  br label %97

97:                                               ; preds = %76, %55
  %98 = call i32 @wcslen(i32* %20)
  %99 = sext i32 %98 to i64
  %100 = mul i64 %99, 4
  %101 = trunc i64 %100 to i32
  store i32 %101, i32* %8, align 4
  %102 = load i32, i32* %4, align 4
  %103 = load i32, i32* %8, align 4
  %104 = call i32 @WriteFile(i32 %102, i32* %20, i32 %103, i64* %9, i32* null)
  store i32 %104, i32* %10, align 4
  %105 = load i32, i32* %10, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %97
  %108 = load i64, i64* %9, align 8
  %109 = icmp eq i64 %108, 0
  br i1 %109, label %110, label %112

110:                                              ; preds = %107, %97
  %111 = load i32, i32* @FALSE, align 4
  store i32 %111, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %123

112:                                              ; preds = %107
  br label %113

113:                                              ; preds = %112, %32
  br label %114

114:                                              ; preds = %113
  %115 = load i64, i64* %12, align 8
  %116 = add i64 %115, 1
  store i64 %116, i64* %12, align 8
  br label %28

117:                                              ; preds = %28
  br label %118

118:                                              ; preds = %117
  %119 = load i64, i64* %11, align 8
  %120 = add i64 %119, 1
  store i64 %120, i64* %11, align 8
  br label %21

121:                                              ; preds = %21
  %122 = load i32, i32* @TRUE, align 4
  store i32 %122, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %123

123:                                              ; preds = %121, %110
  %124 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %124)
  %125 = load i32, i32* %3, align 4
  ret i32 %125
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @wcscmp(i32, i32) #2

declare dso_local i32 @_snwprintf(i32*, i32, i8*, i32, i32) #2

declare dso_local i32 @wcslen(i32*) #2

declare dso_local i32 @WriteFile(i32, i32*, i32, i64*, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
