; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/fusion/extr_asmenum.c_enumerate_gac.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/fusion/extr_asmenum.c_enumerate_gac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }

@enumerate_gac.gac = internal constant [5 x i8] c"\\GAC\00", align 1
@enumerate_gac.gac_32 = internal constant [8 x i8] c"\\GAC_32\00", align 1
@enumerate_gac.gac_64 = internal constant [8 x i8] c"\\GAC_64\00", align 1
@enumerate_gac.gac_msil = internal constant [10 x i8] c"\\GAC_MSIL\00", align 1
@enumerate_gac.v40 = internal constant [6 x i8] c"v4.0_\00", align 1
@MAX_PATH = common dso_local global i32 0, align 4
@ASM_CACHE_ROOT_EX = common dso_local global i32 0, align 4
@PROCESSOR_ARCHITECTURE_AMD64 = common dso_local global i64 0, align 8
@ASM_CACHE_ROOT = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, i32*)* @enumerate_gac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @enumerate_gac(%struct.TYPE_10__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_9__, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store i32* %1, i32** %5, align 8
  %13 = load i32, i32* @MAX_PATH, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %6, align 8
  %16 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %7, align 8
  %17 = load i32, i32* @MAX_PATH, align 4
  %18 = zext i32 %17 to i64
  %19 = alloca i8, i64 %18, align 16
  store i64 %18, i64* %8, align 8
  %20 = load i32, i32* @MAX_PATH, align 4
  store i32 %20, i32* %11, align 4
  %21 = load i32, i32* @ASM_CACHE_ROOT_EX, align 4
  %22 = call i32 @GetCachePath(i32 %21, i8* %19, i32* %11)
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* %10, align 4
  %24 = call i64 @FAILED(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %2
  %27 = load i32, i32* %10, align 4
  store i32 %27, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %163

28:                                               ; preds = %2
  %29 = call i32 @lstrcpyW(i8* %16, i8* %19)
  %30 = call i32 @GetNativeSystemInfo(%struct.TYPE_9__* %9)
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @PROCESSOR_ARCHITECTURE_AMD64, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %53

37:                                               ; preds = %28
  %38 = load i32, i32* %11, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i8, i8* %16, i64 %39
  %41 = getelementptr inbounds i8, i8* %40, i64 -1
  %42 = call i32 @lstrcpyW(i8* %41, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @enumerate_gac.gac_64, i64 0, i64 0))
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 0
  %45 = load i32*, i32** %5, align 8
  %46 = call i32 @enum_gac_assemblies(i32* %44, i32* %45, i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @enumerate_gac.v40, i64 0, i64 0), i8* %16)
  store i32 %46, i32* %10, align 4
  %47 = load i32, i32* %10, align 4
  %48 = call i64 @FAILED(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %37
  %51 = load i32, i32* %10, align 4
  store i32 %51, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %163

52:                                               ; preds = %37
  br label %53

53:                                               ; preds = %52, %28
  %54 = load i32, i32* %11, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i8, i8* %16, i64 %55
  %57 = getelementptr inbounds i8, i8* %56, i64 -1
  %58 = call i32 @lstrcpyW(i8* %57, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @enumerate_gac.gac_32, i64 0, i64 0))
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 0
  %61 = load i32*, i32** %5, align 8
  %62 = call i32 @enum_gac_assemblies(i32* %60, i32* %61, i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @enumerate_gac.v40, i64 0, i64 0), i8* %16)
  store i32 %62, i32* %10, align 4
  %63 = load i32, i32* %10, align 4
  %64 = call i64 @FAILED(i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %53
  %67 = load i32, i32* %10, align 4
  store i32 %67, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %163

68:                                               ; preds = %53
  %69 = load i32, i32* %11, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i8, i8* %16, i64 %70
  %72 = getelementptr inbounds i8, i8* %71, i64 -1
  %73 = call i32 @lstrcpyW(i8* %72, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @enumerate_gac.gac_msil, i64 0, i64 0))
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 0
  %76 = load i32*, i32** %5, align 8
  %77 = call i32 @enum_gac_assemblies(i32* %75, i32* %76, i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @enumerate_gac.v40, i64 0, i64 0), i8* %16)
  store i32 %77, i32* %10, align 4
  %78 = load i32, i32* %10, align 4
  %79 = call i64 @FAILED(i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %68
  %82 = load i32, i32* %10, align 4
  store i32 %82, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %163

83:                                               ; preds = %68
  %84 = load i32, i32* @MAX_PATH, align 4
  store i32 %84, i32* %11, align 4
  %85 = load i32, i32* @ASM_CACHE_ROOT, align 4
  %86 = call i32 @GetCachePath(i32 %85, i8* %19, i32* %11)
  store i32 %86, i32* %10, align 4
  %87 = load i32, i32* %10, align 4
  %88 = call i64 @FAILED(i32 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %83
  %91 = load i32, i32* %10, align 4
  store i32 %91, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %163

92:                                               ; preds = %83
  %93 = call i32 @lstrcpyW(i8* %16, i8* %19)
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @PROCESSOR_ARCHITECTURE_AMD64, align 8
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %100, label %116

100:                                              ; preds = %92
  %101 = load i32, i32* %11, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i8, i8* %16, i64 %102
  %104 = getelementptr inbounds i8, i8* %103, i64 -1
  %105 = call i32 @lstrcpyW(i8* %104, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @enumerate_gac.gac_64, i64 0, i64 0))
  %106 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %106, i32 0, i32 0
  %108 = load i32*, i32** %5, align 8
  %109 = call i32 @enum_gac_assemblies(i32* %107, i32* %108, i32 0, i8* null, i8* %16)
  store i32 %109, i32* %10, align 4
  %110 = load i32, i32* %10, align 4
  %111 = call i64 @FAILED(i32 %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %115

113:                                              ; preds = %100
  %114 = load i32, i32* %10, align 4
  store i32 %114, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %163

115:                                              ; preds = %100
  br label %116

116:                                              ; preds = %115, %92
  %117 = load i32, i32* %11, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i8, i8* %16, i64 %118
  %120 = getelementptr inbounds i8, i8* %119, i64 -1
  %121 = call i32 @lstrcpyW(i8* %120, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @enumerate_gac.gac_32, i64 0, i64 0))
  %122 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %123 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %122, i32 0, i32 0
  %124 = load i32*, i32** %5, align 8
  %125 = call i32 @enum_gac_assemblies(i32* %123, i32* %124, i32 0, i8* null, i8* %16)
  store i32 %125, i32* %10, align 4
  %126 = load i32, i32* %10, align 4
  %127 = call i64 @FAILED(i32 %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %131

129:                                              ; preds = %116
  %130 = load i32, i32* %10, align 4
  store i32 %130, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %163

131:                                              ; preds = %116
  %132 = load i32, i32* %11, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i8, i8* %16, i64 %133
  %135 = getelementptr inbounds i8, i8* %134, i64 -1
  %136 = call i32 @lstrcpyW(i8* %135, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @enumerate_gac.gac_msil, i64 0, i64 0))
  %137 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %138 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %137, i32 0, i32 0
  %139 = load i32*, i32** %5, align 8
  %140 = call i32 @enum_gac_assemblies(i32* %138, i32* %139, i32 0, i8* null, i8* %16)
  store i32 %140, i32* %10, align 4
  %141 = load i32, i32* %10, align 4
  %142 = call i64 @FAILED(i32 %141)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %146

144:                                              ; preds = %131
  %145 = load i32, i32* %10, align 4
  store i32 %145, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %163

146:                                              ; preds = %131
  %147 = load i32, i32* %11, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i8, i8* %16, i64 %148
  %150 = getelementptr inbounds i8, i8* %149, i64 -1
  %151 = call i32 @lstrcpyW(i8* %150, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @enumerate_gac.gac, i64 0, i64 0))
  %152 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %153 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %152, i32 0, i32 0
  %154 = load i32*, i32** %5, align 8
  %155 = call i32 @enum_gac_assemblies(i32* %153, i32* %154, i32 0, i8* null, i8* %16)
  store i32 %155, i32* %10, align 4
  %156 = load i32, i32* %10, align 4
  %157 = call i64 @FAILED(i32 %156)
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %161

159:                                              ; preds = %146
  %160 = load i32, i32* %10, align 4
  store i32 %160, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %163

161:                                              ; preds = %146
  %162 = load i32, i32* @S_OK, align 4
  store i32 %162, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %163

163:                                              ; preds = %161, %159, %144, %129, %113, %90, %81, %66, %50, %26
  %164 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %164)
  %165 = load i32, i32* %3, align 4
  ret i32 %165
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @GetCachePath(i32, i8*, i32*) #2

declare dso_local i64 @FAILED(i32) #2

declare dso_local i32 @lstrcpyW(i8*, i8*) #2

declare dso_local i32 @GetNativeSystemInfo(%struct.TYPE_9__*) #2

declare dso_local i32 @enum_gac_assemblies(i32*, i32*, i32, i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
