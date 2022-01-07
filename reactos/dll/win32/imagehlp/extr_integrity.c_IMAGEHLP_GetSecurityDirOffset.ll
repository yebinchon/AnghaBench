; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/imagehlp/extr_integrity.c_IMAGEHLP_GetSecurityDirOffset.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/imagehlp/extr_integrity.c_IMAGEHLP_GetSecurityDirOffset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_12__* }

@HDR_NT32 = common dso_local global i32 0, align 4
@IMAGE_FILE_SECURITY_DIRECTORY = common dso_local global i64 0, align 8
@HDR_NT64 = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"ret = %d size = %x addr = %x\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, i32*)* @IMAGEHLP_GetSecurityDirOffset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @IMAGEHLP_GetSecurityDirOffset(i32 %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_11__, align 8
  %9 = alloca %struct.TYPE_10__, align 8
  %10 = alloca %struct.TYPE_12__*, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %12 = load i32, i32* %5, align 4
  %13 = call i32 @IMAGEHLP_GetNTHeaders(i32 %12, i32* null, %struct.TYPE_11__* %8, %struct.TYPE_10__* %9)
  store i32 %13, i32* %11, align 4
  %14 = load i32, i32* %11, align 4
  %15 = load i32, i32* @HDR_NT32, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %23

17:                                               ; preds = %3
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %21 = load i64, i64* @IMAGE_FILE_SECURITY_DIRECTORY, align 8
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i64 %21
  store %struct.TYPE_12__* %22, %struct.TYPE_12__** %10, align 8
  br label %36

23:                                               ; preds = %3
  %24 = load i32, i32* %11, align 4
  %25 = load i32, i32* @HDR_NT64, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %33

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %29, align 8
  %31 = load i64, i64* @IMAGE_FILE_SECURITY_DIRECTORY, align 8
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i64 %31
  store %struct.TYPE_12__* %32, %struct.TYPE_12__** %10, align 8
  br label %35

33:                                               ; preds = %23
  %34 = load i32, i32* @FALSE, align 4
  store i32 %34, i32* %4, align 4
  br label %54

35:                                               ; preds = %27
  br label %36

36:                                               ; preds = %35, %17
  %37 = load i32, i32* %11, align 4
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @TRACE(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %37, i32 %40, i32 %43)
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load i32*, i32** %7, align 8
  store i32 %47, i32* %48, align 4
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32*, i32** %6, align 8
  store i32 %51, i32* %52, align 4
  %53 = load i32, i32* @TRUE, align 4
  store i32 %53, i32* %4, align 4
  br label %54

54:                                               ; preds = %36, %33
  %55 = load i32, i32* %4, align 4
  ret i32 %55
}

declare dso_local i32 @IMAGEHLP_GetNTHeaders(i32, i32*, %struct.TYPE_11__*, %struct.TYPE_10__*) #1

declare dso_local i32 @TRACE(i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
