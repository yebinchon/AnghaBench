; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_slru.c_SlruScanDirectory.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_slru.c_SlruScanDirectory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.dirent = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"0123456789ABCDEF\00", align 1
@SLRU_PAGES_PER_SEGMENT = common dso_local global i32 0, align 4
@DEBUG2 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"SlruScanDirectory invoking callback on %s/%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @SlruScanDirectory(%struct.TYPE_5__* %0, i32 (%struct.TYPE_5__*, i32, i32, i8*)* %1, i8* %2) #0 {
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32 (%struct.TYPE_5__*, i32, i32, i8*)*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.dirent*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i32 (%struct.TYPE_5__*, i32, i32, i8*)* %1, i32 (%struct.TYPE_5__*, i32, i32, i8*)** %5, align 8
  store i8* %2, i8** %6, align 8
  store i32 0, i32* %7, align 4
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32* @AllocateDir(i32 %15)
  store i32* %16, i32** %8, align 8
  br label %17

17:                                               ; preds = %73, %3
  %18 = load i32*, i32** %8, align 8
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call %struct.dirent* @ReadDir(i32* %18, i32 %21)
  store %struct.dirent* %22, %struct.dirent** %9, align 8
  %23 = icmp ne %struct.dirent* %22, null
  br i1 %23, label %24, label %74

24:                                               ; preds = %17
  %25 = load %struct.dirent*, %struct.dirent** %9, align 8
  %26 = getelementptr inbounds %struct.dirent, %struct.dirent* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i64 @strlen(i32 %27)
  store i64 %28, i64* %12, align 8
  %29 = load i64, i64* %12, align 8
  %30 = icmp eq i64 %29, 4
  br i1 %30, label %37, label %31

31:                                               ; preds = %24
  %32 = load i64, i64* %12, align 8
  %33 = icmp eq i64 %32, 5
  br i1 %33, label %37, label %34

34:                                               ; preds = %31
  %35 = load i64, i64* %12, align 8
  %36 = icmp eq i64 %35, 6
  br i1 %36, label %37, label %73

37:                                               ; preds = %34, %31, %24
  %38 = load %struct.dirent*, %struct.dirent** %9, align 8
  %39 = getelementptr inbounds %struct.dirent, %struct.dirent* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i64 @strspn(i32 %40, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %42 = load i64, i64* %12, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %73

44:                                               ; preds = %37
  %45 = load %struct.dirent*, %struct.dirent** %9, align 8
  %46 = getelementptr inbounds %struct.dirent, %struct.dirent* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i64 @strtol(i32 %47, i32* null, i32 16)
  %49 = trunc i64 %48 to i32
  store i32 %49, i32* %10, align 4
  %50 = load i32, i32* %10, align 4
  %51 = load i32, i32* @SLRU_PAGES_PER_SEGMENT, align 4
  %52 = mul nsw i32 %50, %51
  store i32 %52, i32* %11, align 4
  %53 = load i32, i32* @DEBUG2, align 4
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.dirent*, %struct.dirent** %9, align 8
  %58 = getelementptr inbounds %struct.dirent, %struct.dirent* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @elog(i32 %53, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 %56, i32 %59)
  %61 = load i32 (%struct.TYPE_5__*, i32, i32, i8*)*, i32 (%struct.TYPE_5__*, i32, i32, i8*)** %5, align 8
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %63 = load %struct.dirent*, %struct.dirent** %9, align 8
  %64 = getelementptr inbounds %struct.dirent, %struct.dirent* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* %11, align 4
  %67 = load i8*, i8** %6, align 8
  %68 = call i32 %61(%struct.TYPE_5__* %62, i32 %65, i32 %66, i8* %67)
  store i32 %68, i32* %7, align 4
  %69 = load i32, i32* %7, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %44
  br label %74

72:                                               ; preds = %44
  br label %73

73:                                               ; preds = %72, %37, %34
  br label %17

74:                                               ; preds = %71, %17
  %75 = load i32*, i32** %8, align 8
  %76 = call i32 @FreeDir(i32* %75)
  %77 = load i32, i32* %7, align 4
  ret i32 %77
}

declare dso_local i32* @AllocateDir(i32) #1

declare dso_local %struct.dirent* @ReadDir(i32*, i32) #1

declare dso_local i64 @strlen(i32) #1

declare dso_local i64 @strspn(i32, i8*) #1

declare dso_local i64 @strtol(i32, i32*, i32) #1

declare dso_local i32 @elog(i32, i8*, i32, i32) #1

declare dso_local i32 @FreeDir(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
