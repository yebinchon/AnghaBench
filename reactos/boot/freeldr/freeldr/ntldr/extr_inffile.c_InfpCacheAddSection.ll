; ModuleID = '/home/carl/AnghaBench/reactos/boot/freeldr/freeldr/ntldr/extr_inffile.c_InfpCacheAddSection.c'
source_filename = "/home/carl/AnghaBench/reactos/boot/freeldr/freeldr/ntldr/extr_inffile.c_InfpCacheAddSection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_6__*, %struct.TYPE_6__*, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__*, %struct.TYPE_6__* }

@TAG_INF_SECTION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_6__* (%struct.TYPE_7__*, i32*)* @InfpCacheAddSection to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_6__* @InfpCacheAddSection(%struct.TYPE_7__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i64, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %6, align 8
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %9 = icmp eq %struct.TYPE_7__* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %2
  %11 = load i32*, i32** %5, align 8
  %12 = icmp eq i32* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %10, %2
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %3, align 8
  br label %61

14:                                               ; preds = %10
  %15 = load i32*, i32** %5, align 8
  %16 = call i64 @strlen(i32* %15)
  %17 = add i64 4, %16
  store i64 %17, i64* %7, align 8
  %18 = load i64, i64* %7, align 8
  %19 = load i32, i32* @TAG_INF_SECTION, align 4
  %20 = call i64 @FrLdrTempAlloc(i64 %18, i32 %19)
  %21 = inttoptr i64 %20 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %21, %struct.TYPE_6__** %6, align 8
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %23 = icmp eq %struct.TYPE_6__* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %14
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %3, align 8
  br label %61

25:                                               ; preds = %14
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %27 = load i64, i64* %7, align 8
  %28 = call i32 @memset(%struct.TYPE_6__* %26, i32 0, i64 %27)
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = load i32*, i32** %5, align 8
  %33 = call i32 @strcpy(i32 %31, i32* %32)
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 1
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %35, align 8
  %37 = icmp eq %struct.TYPE_6__* %36, null
  br i1 %37, label %38, label %45

38:                                               ; preds = %25
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 1
  store %struct.TYPE_6__* %39, %struct.TYPE_6__** %41, align 8
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  store %struct.TYPE_6__* %42, %struct.TYPE_6__** %44, align 8
  br label %59

45:                                               ; preds = %25
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 1
  store %struct.TYPE_6__* %46, %struct.TYPE_6__** %50, align 8
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %52, align 8
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  store %struct.TYPE_6__* %53, %struct.TYPE_6__** %55, align 8
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  store %struct.TYPE_6__* %56, %struct.TYPE_6__** %58, align 8
  br label %59

59:                                               ; preds = %45, %38
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  store %struct.TYPE_6__* %60, %struct.TYPE_6__** %3, align 8
  br label %61

61:                                               ; preds = %59, %24, %13
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  ret %struct.TYPE_6__* %62
}

declare dso_local i64 @strlen(i32*) #1

declare dso_local i64 @FrLdrTempAlloc(i64, i32) #1

declare dso_local i32 @memset(%struct.TYPE_6__*, i32, i64) #1

declare dso_local i32 @strcpy(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
