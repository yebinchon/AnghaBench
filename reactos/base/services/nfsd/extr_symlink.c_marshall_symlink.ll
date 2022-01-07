; ModuleID = '/home/carl/AnghaBench/reactos/base/services/nfsd/extr_symlink.c_marshall_symlink.c'
source_filename = "/home/carl/AnghaBench/reactos/base/services/nfsd/extr_symlink.c_marshall_symlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_6__, i64 }
%struct.TYPE_6__ = type { i32, i32 }

@NO_ERROR = common dso_local global i32 0, align 4
@CP_UTF8 = common dso_local global i32 0, align 4
@ERROR_BUFFER_OVERFLOW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i16*, %struct.TYPE_9__*)* @marshall_symlink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @marshall_symlink(i8* %0, i16* %1, %struct.TYPE_9__* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i16*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i16, align 2
  %9 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i16* %1, i16** %5, align 8
  store %struct.TYPE_9__* %2, %struct.TYPE_9__** %6, align 8
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %11 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  store %struct.TYPE_8__* %12, %struct.TYPE_8__** %7, align 8
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = add nsw i32 %16, 1
  %18 = sext i32 %17 to i64
  %19 = mul i64 %18, 4
  %20 = trunc i64 %19 to i16
  store i16 %20, i16* %8, align 2
  %21 = load i32, i32* @NO_ERROR, align 4
  store i32 %21, i32* %9, align 4
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %3
  br label %61

27:                                               ; preds = %3
  %28 = load i16*, i16** %5, align 8
  %29 = call i32 @safe_write(i8** %4, i16* %28, i16* %8, i32 2)
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* %9, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  br label %61

33:                                               ; preds = %27
  %34 = load i16*, i16** %5, align 8
  %35 = load i16, i16* %34, align 2
  %36 = zext i16 %35 to i32
  %37 = load i16, i16* %8, align 2
  %38 = zext i16 %37 to i32
  %39 = icmp sle i32 %36, %38
  br i1 %39, label %58, label %40

40:                                               ; preds = %33
  %41 = load i32, i32* @CP_UTF8, align 4
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i8*, i8** %4, align 8
  %51 = ptrtoint i8* %50 to i32
  %52 = load i16, i16* %8, align 2
  %53 = zext i16 %52 to i64
  %54 = udiv i64 %53, 4
  %55 = trunc i64 %54 to i16
  %56 = call i32 @MultiByteToWideChar(i32 %41, i32 0, i32 %45, i32 %49, i32 %51, i16 zeroext %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %60, label %58

58:                                               ; preds = %40, %33
  %59 = load i32, i32* @ERROR_BUFFER_OVERFLOW, align 4
  store i32 %59, i32* %9, align 4
  br label %61

60:                                               ; preds = %40
  br label %61

61:                                               ; preds = %60, %58, %32, %26
  %62 = load i32, i32* %9, align 4
  ret i32 %62
}

declare dso_local i32 @safe_write(i8**, i16*, i16*, i32) #1

declare dso_local i32 @MultiByteToWideChar(i32, i32, i32, i32, i32, i16 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
