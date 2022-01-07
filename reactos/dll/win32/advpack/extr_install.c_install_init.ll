; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/advpack/extr_install.c_install_init.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/advpack/extr_install.c_install_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i8*, i8*, i8*, i64, i32, i32 }

@install_init.backslash = internal constant [2 x i8] c"\\\00", align 1
@install_init.default_install = internal constant [15 x i8] c"DefaultInstall\00", align 1
@E_OUTOFMEMORY = common dso_local global i32 0, align 4
@RSC_FLAG_INF = common dso_local global i32 0, align 4
@INF_STYLE_WIN4 = common dso_local global i32 0, align 4
@INVALID_HANDLE_VALUE = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8*, i32, %struct.TYPE_4__*)* @install_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @install_init(i8* %0, i8* %1, i8* %2, i32 %3, %struct.TYPE_4__* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_4__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.TYPE_4__* %4, %struct.TYPE_4__** %11, align 8
  %16 = load i8*, i8** %7, align 8
  %17 = call i8* @wcsrchr(i8* %16, i8 signext 92)
  store i8* %17, i8** %14, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %5
  %20 = load i8*, i8** %7, align 8
  store i8* %20, i8** %14, align 8
  br label %21

21:                                               ; preds = %19, %5
  %22 = load i8*, i8** %14, align 8
  %23 = call i32 @lstrlenW(i8* %22)
  store i32 %23, i32* %12, align 4
  %24 = call i32 (...) @GetProcessHeap()
  %25 = load i32, i32* %12, align 4
  %26 = add nsw i32 %25, 1
  %27 = sext i32 %26 to i64
  %28 = mul i64 %27, 1
  %29 = trunc i64 %28 to i32
  %30 = call i8* @HeapAlloc(i32 %24, i32 0, i32 %29)
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  store i8* %30, i8** %32, align 8
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %39, label %37

37:                                               ; preds = %21
  %38 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %38, i32* %6, align 4
  br label %173

39:                                               ; preds = %21
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8
  %43 = load i8*, i8** %14, align 8
  %44 = call i32 @lstrcpyW(i8* %42, i8* %43)
  %45 = load i8*, i8** %8, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %47, label %51

47:                                               ; preds = %39
  %48 = load i8*, i8** %8, align 8
  %49 = load i8, i8* %48, align 1
  %50 = icmp ne i8 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %47, %39
  store i32 14, i32* %12, align 4
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @install_init.default_install, i64 0, i64 0), i8** %14, align 8
  br label %56

52:                                               ; preds = %47
  %53 = load i8*, i8** %8, align 8
  %54 = call i32 @lstrlenW(i8* %53)
  store i32 %54, i32* %12, align 4
  %55 = load i8*, i8** %8, align 8
  store i8* %55, i8** %14, align 8
  br label %56

56:                                               ; preds = %52, %51
  %57 = call i32 (...) @GetProcessHeap()
  %58 = load i32, i32* %12, align 4
  %59 = add nsw i32 %58, 1
  %60 = sext i32 %59 to i64
  %61 = mul i64 %60, 1
  %62 = trunc i64 %61 to i32
  %63 = call i8* @HeapAlloc(i32 %57, i32 0, i32 %62)
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 1
  store i8* %63, i8** %65, align 8
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 1
  %68 = load i8*, i8** %67, align 8
  %69 = icmp ne i8* %68, null
  br i1 %69, label %72, label %70

70:                                               ; preds = %56
  %71 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %71, i32* %6, align 4
  br label %173

72:                                               ; preds = %56
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 1
  %75 = load i8*, i8** %74, align 8
  %76 = load i8*, i8** %14, align 8
  %77 = call i32 @lstrcpyW(i8* %75, i8* %76)
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %79 = load i8*, i8** %7, align 8
  %80 = load i8*, i8** %9, align 8
  %81 = call i32 @get_working_dir(%struct.TYPE_4__* %78, i8* %79, i8* %80)
  store i32 %81, i32* %13, align 4
  %82 = load i32, i32* %13, align 4
  %83 = call i64 @FAILED(i32 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %72
  %86 = load i32, i32* %13, align 4
  store i32 %86, i32* %6, align 4
  br label %173

87:                                               ; preds = %72
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 2
  %90 = load i8*, i8** %89, align 8
  %91 = call i32 @lstrlenW(i8* %90)
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 0
  %94 = load i8*, i8** %93, align 8
  %95 = call i32 @lstrlenW(i8* %94)
  %96 = add nsw i32 %91, %95
  %97 = add nsw i32 %96, 2
  store i32 %97, i32* %12, align 4
  %98 = call i32 (...) @GetProcessHeap()
  %99 = load i32, i32* %12, align 4
  %100 = sext i32 %99 to i64
  %101 = mul i64 %100, 1
  %102 = trunc i64 %101 to i32
  %103 = call i8* @HeapAlloc(i32 %98, i32 0, i32 %102)
  %104 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 3
  store i8* %103, i8** %105, align 8
  %106 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 3
  %108 = load i8*, i8** %107, align 8
  %109 = icmp ne i8* %108, null
  br i1 %109, label %112, label %110

110:                                              ; preds = %87
  %111 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %111, i32* %6, align 4
  br label %173

112:                                              ; preds = %87
  %113 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 3
  %115 = load i8*, i8** %114, align 8
  %116 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 2
  %118 = load i8*, i8** %117, align 8
  %119 = call i32 @lstrcpyW(i8* %115, i8* %118)
  %120 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 3
  %122 = load i8*, i8** %121, align 8
  %123 = call i32 @lstrcatW(i8* %122, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @install_init.backslash, i64 0, i64 0))
  %124 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 3
  %126 = load i8*, i8** %125, align 8
  %127 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 0
  %129 = load i8*, i8** %128, align 8
  %130 = call i32 @lstrcatW(i8* %126, i8* %129)
  %131 = load i32, i32* %10, align 4
  %132 = load i32, i32* @RSC_FLAG_INF, align 4
  %133 = and i32 %131, %132
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %137

135:                                              ; preds = %112
  %136 = load i8*, i8** %7, align 8
  store i8* %136, i8** %15, align 8
  br label %141

137:                                              ; preds = %112
  %138 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %139 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %138, i32 0, i32 3
  %140 = load i8*, i8** %139, align 8
  store i8* %140, i8** %15, align 8
  br label %141

141:                                              ; preds = %137, %135
  %142 = load i8*, i8** %15, align 8
  %143 = load i32, i32* @INF_STYLE_WIN4, align 4
  %144 = call i64 @SetupOpenInfFileW(i8* %142, i32* null, i32 %143, i32* null)
  %145 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %146 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %145, i32 0, i32 4
  store i64 %144, i64* %146, align 8
  %147 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %148 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %147, i32 0, i32 4
  %149 = load i64, i64* %148, align 8
  %150 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %151 = icmp eq i64 %149, %150
  br i1 %151, label %152, label %155

152:                                              ; preds = %141
  %153 = call i32 (...) @GetLastError()
  %154 = call i32 @ADV_HRESULT(i32 %153)
  store i32 %154, i32* %6, align 4
  br label %173

155:                                              ; preds = %141
  %156 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %157 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %156, i32 0, i32 4
  %158 = load i64, i64* %157, align 8
  %159 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %160 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %159, i32 0, i32 1
  %161 = load i8*, i8** %160, align 8
  %162 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %163 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %162, i32 0, i32 2
  %164 = load i8*, i8** %163, align 8
  %165 = call i32 @set_ldids(i64 %158, i8* %161, i8* %164)
  %166 = load i32, i32* %10, align 4
  %167 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %168 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %167, i32 0, i32 5
  store i32 %166, i32* %168, align 8
  %169 = load i32, i32* @FALSE, align 4
  %170 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %171 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %170, i32 0, i32 6
  store i32 %169, i32* %171, align 4
  %172 = load i32, i32* @S_OK, align 4
  store i32 %172, i32* %6, align 4
  br label %173

173:                                              ; preds = %155, %152, %110, %85, %70, %37
  %174 = load i32, i32* %6, align 4
  ret i32 %174
}

declare dso_local i8* @wcsrchr(i8*, i8 signext) #1

declare dso_local i32 @lstrlenW(i8*) #1

declare dso_local i8* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @lstrcpyW(i8*, i8*) #1

declare dso_local i32 @get_working_dir(%struct.TYPE_4__*, i8*, i8*) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @lstrcatW(i8*, i8*) #1

declare dso_local i64 @SetupOpenInfFileW(i8*, i32*, i32, i32*) #1

declare dso_local i32 @ADV_HRESULT(i32) #1

declare dso_local i32 @GetLastError(...) #1

declare dso_local i32 @set_ldids(i64, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
