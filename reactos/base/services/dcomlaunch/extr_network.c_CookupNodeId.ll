; ModuleID = '/home/carl/AnghaBench/reactos/base/services/dcomlaunch/extr_network.c_CookupNodeId.c'
source_filename = "/home/carl/AnghaBench/reactos/base/services/dcomlaunch/extr_network.c_CookupNodeId.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64, i64 }
%struct.TYPE_9__ = type { i32, i64, i64, i64, i64, i64, i64, i64 }
%struct.TYPE_10__ = type { i64, i64 }

@MAX_COMPUTERNAME_LENGTH = common dso_local global i32 0, align 4
@SEED_BUFFER_SIZE = common dso_local global i32 0, align 4
@ANSI_NULL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"c:\\\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @CookupNodeId to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @CookupNodeId(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_11__, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_9__, align 8
  %13 = alloca %struct.TYPE_10__, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  %18 = load i32, i32* @MAX_COMPUTERNAME_LENGTH, align 4
  %19 = add nsw i32 %18, 1
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %4, align 8
  %22 = alloca i32, i64 %20, align 16
  store i64 %20, i64* %5, align 8
  %23 = load i32*, i32** %3, align 8
  %24 = load i32, i32* @SEED_BUFFER_SIZE, align 4
  %25 = sext i32 %24 to i64
  %26 = mul i64 %25, 4
  %27 = trunc i64 %26 to i32
  %28 = call i32 @memset(i32* %23, i32 17, i32 %27)
  %29 = load i32, i32* @MAX_COMPUTERNAME_LENGTH, align 4
  %30 = add nsw i32 %29, 1
  %31 = sext i32 %30 to i64
  store i64 %31, i64* %7, align 8
  %32 = call i64 @GetComputerNameA(i32* %22, i64* %7)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %59

34:                                               ; preds = %1
  store i64 0, i64* %7, align 8
  %35 = getelementptr inbounds i32, i32* %22, i64 0
  store i32* %35, i32** %6, align 8
  br label %36

36:                                               ; preds = %57, %34
  %37 = load i32*, i32** %6, align 8
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @ANSI_NULL, align 4
  %40 = icmp ne i32 %38, %39
  br i1 %40, label %41, label %58

41:                                               ; preds = %36
  %42 = load i32*, i32** %6, align 8
  %43 = load i32, i32* %42, align 4
  %44 = load i32*, i32** %3, align 8
  %45 = load i64, i64* %7, align 8
  %46 = getelementptr inbounds i32, i32* %44, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = xor i32 %47, %43
  store i32 %48, i32* %46, align 4
  %49 = load i32*, i32** %6, align 8
  %50 = getelementptr inbounds i32, i32* %49, i32 1
  store i32* %50, i32** %6, align 8
  %51 = load i64, i64* %7, align 8
  %52 = add i64 %51, 1
  store i64 %52, i64* %7, align 8
  %53 = load i32, i32* @SEED_BUFFER_SIZE, align 4
  %54 = sext i32 %53 to i64
  %55 = icmp uge i64 %52, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %41
  store i64 0, i64* %7, align 8
  br label %57

57:                                               ; preds = %56, %41
  br label %36

58:                                               ; preds = %36
  br label %59

59:                                               ; preds = %58, %1
  %60 = load i32*, i32** %3, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 0
  %62 = bitcast i32* %61 to i64*
  store i64* %62, i64** %9, align 8
  %63 = load i32*, i32** %3, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 2
  %65 = bitcast i32* %64 to i64*
  store i64* %65, i64** %10, align 8
  %66 = call i64 @QueryPerformanceCounter(%struct.TYPE_11__* %8)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %90

68:                                               ; preds = %59
  %69 = load i64*, i64** %10, align 8
  %70 = load i64, i64* %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = xor i64 %70, %73
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = xor i64 %74, %77
  %79 = load i64*, i64** %10, align 8
  store i64 %78, i64* %79, align 8
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = xor i64 %82, %85
  %87 = load i64*, i64** %9, align 8
  %88 = load i64, i64* %87, align 8
  %89 = xor i64 %86, %88
  store i64 %89, i64* %11, align 8
  br label %93

90:                                               ; preds = %59
  %91 = load i64*, i64** %9, align 8
  %92 = load i64, i64* %91, align 8
  store i64 %92, i64* %11, align 8
  br label %93

93:                                               ; preds = %90, %68
  %94 = load i64*, i64** %9, align 8
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* %11, align 8
  %97 = xor i64 %95, %96
  %98 = load i64*, i64** %9, align 8
  store i64 %97, i64* %98, align 8
  %99 = load i64*, i64** %10, align 8
  %100 = load i64, i64* %99, align 8
  %101 = load i64*, i64** %9, align 8
  %102 = load i64, i64* %101, align 8
  %103 = xor i64 %100, %102
  %104 = load i64*, i64** %10, align 8
  store i64 %103, i64* %104, align 8
  %105 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  store i32 64, i32* %105, align 8
  %106 = call i32 @GlobalMemoryStatus(%struct.TYPE_9__* %12)
  %107 = load i64*, i64** %9, align 8
  %108 = load i64, i64* %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = xor i64 %108, %110
  %112 = load i64*, i64** %9, align 8
  store i64 %111, i64* %112, align 8
  %113 = load i64*, i64** %10, align 8
  %114 = load i64, i64* %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 2
  %116 = load i64, i64* %115, align 8
  %117 = xor i64 %114, %116
  %118 = load i64*, i64** %10, align 8
  store i64 %117, i64* %118, align 8
  %119 = load i64*, i64** %9, align 8
  %120 = load i64, i64* %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 3
  %122 = load i64, i64* %121, align 8
  %123 = xor i64 %120, %122
  %124 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 4
  %125 = load i64, i64* %124, align 8
  %126 = xor i64 %123, %125
  %127 = load i64*, i64** %9, align 8
  store i64 %126, i64* %127, align 8
  %128 = load i64*, i64** %10, align 8
  %129 = load i64, i64* %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 5
  %131 = load i64, i64* %130, align 8
  %132 = xor i64 %129, %131
  %133 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 6
  %134 = load i64, i64* %133, align 8
  %135 = xor i64 %132, %134
  %136 = load i64*, i64** %10, align 8
  store i64 %135, i64* %136, align 8
  %137 = load i64*, i64** %9, align 8
  %138 = load i64, i64* %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 7
  %140 = load i64, i64* %139, align 8
  %141 = xor i64 %138, %140
  %142 = load i64*, i64** %9, align 8
  store i64 %141, i64* %142, align 8
  %143 = call i64 @AllocateLocallyUniqueId(%struct.TYPE_10__* %13)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %158

145:                                              ; preds = %93
  %146 = load i64*, i64** %9, align 8
  %147 = load i64, i64* %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = xor i64 %147, %149
  %151 = load i64*, i64** %9, align 8
  store i64 %150, i64* %151, align 8
  %152 = load i64*, i64** %10, align 8
  %153 = load i64, i64* %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 1
  %155 = load i64, i64* %154, align 8
  %156 = xor i64 %153, %155
  %157 = load i64*, i64** %10, align 8
  store i64 %156, i64* %157, align 8
  br label %158

158:                                              ; preds = %145, %93
  %159 = call i64 @GetDiskFreeSpaceA(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i64* %14, i64* %15, i64* %16, i64* %17)
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %180

161:                                              ; preds = %158
  %162 = load i64*, i64** %10, align 8
  %163 = load i64, i64* %162, align 8
  %164 = load i64, i64* %17, align 8
  %165 = load i64, i64* %15, align 8
  %166 = mul i64 %164, %165
  %167 = load i64, i64* %14, align 8
  %168 = mul i64 %166, %167
  %169 = xor i64 %163, %168
  %170 = load i64*, i64** %10, align 8
  store i64 %169, i64* %170, align 8
  %171 = load i64*, i64** %9, align 8
  %172 = load i64, i64* %171, align 8
  %173 = load i64, i64* %16, align 8
  %174 = load i64, i64* %15, align 8
  %175 = mul i64 %173, %174
  %176 = load i64, i64* %14, align 8
  %177 = mul i64 %175, %176
  %178 = xor i64 %172, %177
  %179 = load i64*, i64** %9, align 8
  store i64 %178, i64* %179, align 8
  br label %180

180:                                              ; preds = %161, %158
  %181 = load i32*, i32** %3, align 8
  %182 = getelementptr inbounds i32, i32* %181, i64 0
  %183 = load i32, i32* %182, align 4
  %184 = or i32 %183, 128
  store i32 %184, i32* %182, align 4
  %185 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %185)
  %186 = load i32, i32* %2, align 4
  ret i32 %186
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(i32*, i32, i32) #2

declare dso_local i64 @GetComputerNameA(i32*, i64*) #2

declare dso_local i64 @QueryPerformanceCounter(%struct.TYPE_11__*) #2

declare dso_local i32 @GlobalMemoryStatus(%struct.TYPE_9__*) #2

declare dso_local i64 @AllocateLocallyUniqueId(%struct.TYPE_10__*) #2

declare dso_local i64 @GetDiskFreeSpaceA(i8*, i64*, i64*, i64*, i64*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
