; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/kernel32/wine/extr_profile.c_PROFILE_Save.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/kernel32/wine/extr_profile.c_PROFILE_Save.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_5__*, i64*, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i64*, i64*, %struct.TYPE_5__* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.TYPE_4__*, i32)* @PROFILE_Save to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @PROFILE_Save(i32 %0, %struct.TYPE_4__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* %6, align 4
  %13 = call i32 @PROFILE_WriteMarker(i32 %11, i32 %12)
  br label %14

14:                                               ; preds = %157, %3
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %16 = icmp ne %struct.TYPE_4__* %15, null
  br i1 %16, label %17, label %161

17:                                               ; preds = %14
  store i32 0, i32* %10, align 4
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 1
  %20 = load i64*, i64** %19, align 8
  %21 = getelementptr inbounds i64, i64* %20, i64 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %34

24:                                               ; preds = %17
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 1
  %27 = load i64*, i64** %26, align 8
  %28 = call i64 @strlenW(i64* %27)
  %29 = add nsw i64 %28, 4
  %30 = load i32, i32* %10, align 4
  %31 = sext i32 %30 to i64
  %32 = add nsw i64 %31, %29
  %33 = trunc i64 %32 to i32
  store i32 %33, i32* %10, align 4
  br label %34

34:                                               ; preds = %24, %17
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %36, align 8
  store %struct.TYPE_5__* %37, %struct.TYPE_5__** %7, align 8
  br label %38

38:                                               ; preds = %66, %34
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %40 = icmp ne %struct.TYPE_5__* %39, null
  br i1 %40, label %41, label %70

41:                                               ; preds = %38
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 1
  %44 = load i64*, i64** %43, align 8
  %45 = call i64 @strlenW(i64* %44)
  %46 = add nsw i64 %45, 2
  %47 = load i32, i32* %10, align 4
  %48 = sext i32 %47 to i64
  %49 = add nsw i64 %48, %46
  %50 = trunc i64 %49 to i32
  store i32 %50, i32* %10, align 4
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = load i64*, i64** %52, align 8
  %54 = icmp ne i64* %53, null
  br i1 %54, label %55, label %65

55:                                               ; preds = %41
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = load i64*, i64** %57, align 8
  %59 = call i64 @strlenW(i64* %58)
  %60 = add nsw i64 %59, 1
  %61 = load i32, i32* %10, align 4
  %62 = sext i32 %61 to i64
  %63 = add nsw i64 %62, %60
  %64 = trunc i64 %63 to i32
  store i32 %64, i32* %10, align 4
  br label %65

65:                                               ; preds = %55, %41
  br label %66

66:                                               ; preds = %65
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 2
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %68, align 8
  store %struct.TYPE_5__* %69, %struct.TYPE_5__** %7, align 8
  br label %38

70:                                               ; preds = %38
  %71 = call i32 (...) @GetProcessHeap()
  %72 = load i32, i32* %10, align 4
  %73 = sext i32 %72 to i64
  %74 = mul i64 %73, 8
  %75 = trunc i64 %74 to i32
  %76 = call i64* @HeapAlloc(i32 %71, i32 0, i32 %75)
  store i64* %76, i64** %8, align 8
  %77 = load i64*, i64** %8, align 8
  %78 = icmp ne i64* %77, null
  br i1 %78, label %80, label %79

79:                                               ; preds = %70
  br label %161

80:                                               ; preds = %70
  %81 = load i64*, i64** %8, align 8
  store i64* %81, i64** %9, align 8
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 1
  %84 = load i64*, i64** %83, align 8
  %85 = getelementptr inbounds i64, i64* %84, i64 0
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %106

88:                                               ; preds = %80
  %89 = load i64*, i64** %9, align 8
  %90 = getelementptr inbounds i64, i64* %89, i32 1
  store i64* %90, i64** %9, align 8
  store i64 91, i64* %89, align 8
  %91 = load i64*, i64** %9, align 8
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 1
  %94 = load i64*, i64** %93, align 8
  %95 = call i32 @strcpyW(i64* %91, i64* %94)
  %96 = load i64*, i64** %9, align 8
  %97 = call i64 @strlenW(i64* %96)
  %98 = load i64*, i64** %9, align 8
  %99 = getelementptr inbounds i64, i64* %98, i64 %97
  store i64* %99, i64** %9, align 8
  %100 = load i64*, i64** %9, align 8
  %101 = getelementptr inbounds i64, i64* %100, i32 1
  store i64* %101, i64** %9, align 8
  store i64 93, i64* %100, align 8
  %102 = load i64*, i64** %9, align 8
  %103 = getelementptr inbounds i64, i64* %102, i32 1
  store i64* %103, i64** %9, align 8
  store i64 13, i64* %102, align 8
  %104 = load i64*, i64** %9, align 8
  %105 = getelementptr inbounds i64, i64* %104, i32 1
  store i64* %105, i64** %9, align 8
  store i64 10, i64* %104, align 8
  br label %106

106:                                              ; preds = %88, %80
  %107 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 0
  %109 = load %struct.TYPE_5__*, %struct.TYPE_5__** %108, align 8
  store %struct.TYPE_5__* %109, %struct.TYPE_5__** %7, align 8
  br label %110

110:                                              ; preds = %144, %106
  %111 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %112 = icmp ne %struct.TYPE_5__* %111, null
  br i1 %112, label %113, label %148

113:                                              ; preds = %110
  %114 = load i64*, i64** %9, align 8
  %115 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i32 0, i32 1
  %117 = load i64*, i64** %116, align 8
  %118 = call i32 @strcpyW(i64* %114, i64* %117)
  %119 = load i64*, i64** %9, align 8
  %120 = call i64 @strlenW(i64* %119)
  %121 = load i64*, i64** %9, align 8
  %122 = getelementptr inbounds i64, i64* %121, i64 %120
  store i64* %122, i64** %9, align 8
  %123 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %124 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %123, i32 0, i32 0
  %125 = load i64*, i64** %124, align 8
  %126 = icmp ne i64* %125, null
  br i1 %126, label %127, label %139

127:                                              ; preds = %113
  %128 = load i64*, i64** %9, align 8
  %129 = getelementptr inbounds i64, i64* %128, i32 1
  store i64* %129, i64** %9, align 8
  store i64 61, i64* %128, align 8
  %130 = load i64*, i64** %9, align 8
  %131 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %132 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %131, i32 0, i32 0
  %133 = load i64*, i64** %132, align 8
  %134 = call i32 @strcpyW(i64* %130, i64* %133)
  %135 = load i64*, i64** %9, align 8
  %136 = call i64 @strlenW(i64* %135)
  %137 = load i64*, i64** %9, align 8
  %138 = getelementptr inbounds i64, i64* %137, i64 %136
  store i64* %138, i64** %9, align 8
  br label %139

139:                                              ; preds = %127, %113
  %140 = load i64*, i64** %9, align 8
  %141 = getelementptr inbounds i64, i64* %140, i32 1
  store i64* %141, i64** %9, align 8
  store i64 13, i64* %140, align 8
  %142 = load i64*, i64** %9, align 8
  %143 = getelementptr inbounds i64, i64* %142, i32 1
  store i64* %143, i64** %9, align 8
  store i64 10, i64* %142, align 8
  br label %144

144:                                              ; preds = %139
  %145 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %146 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %145, i32 0, i32 2
  %147 = load %struct.TYPE_5__*, %struct.TYPE_5__** %146, align 8
  store %struct.TYPE_5__* %147, %struct.TYPE_5__** %7, align 8
  br label %110

148:                                              ; preds = %110
  %149 = load i32, i32* %4, align 4
  %150 = load i64*, i64** %8, align 8
  %151 = load i32, i32* %10, align 4
  %152 = load i32, i32* %6, align 4
  %153 = call i32 @PROFILE_WriteLine(i32 %149, i64* %150, i32 %151, i32 %152)
  %154 = call i32 (...) @GetProcessHeap()
  %155 = load i64*, i64** %8, align 8
  %156 = call i32 @HeapFree(i32 %154, i32 0, i64* %155)
  br label %157

157:                                              ; preds = %148
  %158 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %159 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %158, i32 0, i32 2
  %160 = load %struct.TYPE_4__*, %struct.TYPE_4__** %159, align 8
  store %struct.TYPE_4__* %160, %struct.TYPE_4__** %5, align 8
  br label %14

161:                                              ; preds = %79, %14
  ret void
}

declare dso_local i32 @PROFILE_WriteMarker(i32, i32) #1

declare dso_local i64 @strlenW(i64*) #1

declare dso_local i64* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @strcpyW(i64*, i64*) #1

declare dso_local i32 @PROFILE_WriteLine(i32, i64*, i32, i32) #1

declare dso_local i32 @HeapFree(i32, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
