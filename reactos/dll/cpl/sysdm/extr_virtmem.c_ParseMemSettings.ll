; ModuleID = '/home/carl/AnghaBench/reactos/dll/cpl/sysdm/extr_virtmem.c_ParseMemSettings.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/cpl/sysdm/extr_virtmem.c_ParseMemSettings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32*, i32, i32, i64, i64, i64, i64 }

@MAX_PATH = common dso_local global i32 0, align 4
@DRIVE_FIXED = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*)* @ParseMemSettings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ParseMemSettings(%struct.TYPE_5__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca [1024 x i32], align 16
  %5 = alloca i32*, align 8
  %6 = alloca [3 x i32], align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  %14 = getelementptr inbounds [1024 x i32], [1024 x i32]* %4, i64 0, i64 0
  store i32* %14, i32** %5, align 8
  %15 = load i32, i32* @MAX_PATH, align 4
  %16 = add nsw i32 %15, 1
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %7, align 8
  %19 = alloca i32, i64 %17, align 16
  store i64 %17, i64* %8, align 8
  store i64 0, i64* %12, align 8
  %20 = getelementptr inbounds [1024 x i32], [1024 x i32]* %4, i64 0, i64 0
  %21 = call i64 @GetLogicalDriveStrings(i32 1023, i32* %20)
  store i64 %21, i64* %11, align 8
  br label %22

22:                                               ; preds = %138, %1
  %23 = load i64, i64* %11, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %142

25:                                               ; preds = %22
  %26 = load i32*, i32** %5, align 8
  %27 = call i64 @lstrlen(i32* %26)
  %28 = add nsw i64 %27, 1
  store i64 %28, i64* %13, align 8
  %29 = load i64, i64* %13, align 8
  %30 = load i64, i64* %11, align 8
  %31 = sub nsw i64 %30, %29
  store i64 %31, i64* %11, align 8
  %32 = load i32*, i32** %5, align 8
  %33 = call i32* @_tcsupr(i32* %32)
  store i32* %33, i32** %5, align 8
  %34 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 0
  %35 = load i32*, i32** %5, align 8
  %36 = call i32 @lstrcpyn(i32* %34, i32* %35, i32 3)
  %37 = load i32*, i32** %5, align 8
  %38 = call i64 @GetDriveType(i32* %37)
  %39 = load i64, i64* @DRIVE_FIXED, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %138

41:                                               ; preds = %25
  store i64 -1, i64* %9, align 8
  store i64 -1, i64* %10, align 8
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 0
  %46 = call i32 @_tcsncmp(i32 %44, i32* %45, i32 2)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %53, label %48

48:                                               ; preds = %41
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @GetPageFileSizes(i32 %51, i64* %9, i64* %10)
  br label %53

53:                                               ; preds = %48, %41
  %54 = load i64, i64* %9, align 8
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 1
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = load i64, i64* %12, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 6
  store i64 %54, i64* %60, align 8
  %61 = load i64, i64* %10, align 8
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 1
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %63, align 8
  %65 = load i64, i64* %12, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 5
  store i64 %61, i64* %67, align 8
  %68 = load i64, i64* %9, align 8
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 1
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %70, align 8
  %72 = load i64, i64* %12, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 4
  store i64 %68, i64* %74, align 8
  %75 = load i64, i64* %10, align 8
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 1
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %77, align 8
  %79 = load i64, i64* %12, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 3
  store i64 %75, i64* %81, align 8
  %82 = load i32, i32* @TRUE, align 4
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 1
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %84, align 8
  %86 = load i64, i64* %12, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 2
  store i32 %82, i32* %88, align 4
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 1
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %90, align 8
  %92 = load i64, i64* %12, align 8
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 0
  %97 = call i32 @lstrcpy(i32 %95, i32* %96)
  %98 = load i32*, i32** %5, align 8
  %99 = load i32, i32* @MAX_PATH, align 4
  %100 = add nsw i32 %99, 1
  %101 = call i64 @GetVolumeInformation(i32* %98, i32* %19, i32 %100, i32* null, i32* null, i32* null, i32* null, i32 0)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %135

103:                                              ; preds = %53
  %104 = call i32 (...) @GetProcessHeap()
  %105 = call i32 @_tcslen(i32* %19)
  %106 = add nsw i32 %105, 1
  %107 = sext i32 %106 to i64
  %108 = mul i64 %107, 4
  %109 = trunc i64 %108 to i32
  %110 = call i32* @HeapAlloc(i32 %104, i32 0, i32 %109)
  %111 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i32 0, i32 1
  %113 = load %struct.TYPE_4__*, %struct.TYPE_4__** %112, align 8
  %114 = load i64, i64* %12, align 8
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i64 %114
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 0
  store i32* %110, i32** %116, align 8
  %117 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 1
  %119 = load %struct.TYPE_4__*, %struct.TYPE_4__** %118, align 8
  %120 = load i64, i64* %12, align 8
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i64 %120
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 0
  %123 = load i32*, i32** %122, align 8
  %124 = icmp ne i32* %123, null
  br i1 %124, label %125, label %134

125:                                              ; preds = %103
  %126 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %126, i32 0, i32 1
  %128 = load %struct.TYPE_4__*, %struct.TYPE_4__** %127, align 8
  %129 = load i64, i64* %12, align 8
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i64 %129
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i32 0, i32 0
  %132 = load i32*, i32** %131, align 8
  %133 = call i32 @_tcscpy(i32* %132, i32* %19)
  br label %134

134:                                              ; preds = %125, %103
  br label %135

135:                                              ; preds = %134, %53
  %136 = load i64, i64* %12, align 8
  %137 = add nsw i64 %136, 1
  store i64 %137, i64* %12, align 8
  br label %138

138:                                              ; preds = %135, %25
  %139 = load i64, i64* %13, align 8
  %140 = load i32*, i32** %5, align 8
  %141 = getelementptr inbounds i32, i32* %140, i64 %139
  store i32* %141, i32** %5, align 8
  br label %22

142:                                              ; preds = %22
  %143 = load i64, i64* %12, align 8
  %144 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %145 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %144, i32 0, i32 0
  store i64 %143, i64* %145, align 8
  %146 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %146)
  %147 = load i32, i32* %2, align 4
  ret i32 %147
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @GetLogicalDriveStrings(i32, i32*) #2

declare dso_local i64 @lstrlen(i32*) #2

declare dso_local i32* @_tcsupr(i32*) #2

declare dso_local i32 @lstrcpyn(i32*, i32*, i32) #2

declare dso_local i64 @GetDriveType(i32*) #2

declare dso_local i32 @_tcsncmp(i32, i32*, i32) #2

declare dso_local i32 @GetPageFileSizes(i32, i64*, i64*) #2

declare dso_local i32 @lstrcpy(i32, i32*) #2

declare dso_local i64 @GetVolumeInformation(i32*, i32*, i32, i32*, i32*, i32*, i32*, i32) #2

declare dso_local i32* @HeapAlloc(i32, i32, i32) #2

declare dso_local i32 @GetProcessHeap(...) #2

declare dso_local i32 @_tcslen(i32*) #2

declare dso_local i32 @_tcscpy(i32*, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
