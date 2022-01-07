; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/crypt32/extr_decode.c_CRYPT_AsnDecodePathLenConstraint.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/crypt32/extr_decode.c_CRYPT_AsnDecodePathLenConstraint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.PATH_LEN_CONSTRAINT = type { i32, i8* }

@TRUE = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [26 x i8] c"%p, %d, %08x, %p, %d, %p\0A\00", align 1
@ERROR_MORE_DATA = common dso_local global i32 0, align 4
@FALSE = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [39 x i8] c"got an int, dwPathLenConstraint is %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"returning %d (%08x)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32*, i64, i64, i8*, i64*, i64*)* @CRYPT_AsnDecodePathLenConstraint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @CRYPT_AsnDecodePathLenConstraint(i32* %0, i64 %1, i64 %2, i8* %3, i64* %4, i64* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.PATH_LEN_CONSTRAINT*, align 8
  store i32* %0, i32** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i8* %3, i8** %10, align 8
  store i64* %4, i64** %11, align 8
  store i64* %5, i64** %12, align 8
  %17 = load i8*, i8** @TRUE, align 8
  store i8* %17, i8** %13, align 8
  store i64 16, i64* %14, align 8
  %18 = load i32*, i32** %7, align 8
  %19 = bitcast i32* %18 to i8*
  %20 = load i64, i64* %8, align 8
  %21 = load i64, i64* %9, align 8
  %22 = load i8*, i8** %10, align 8
  %23 = load i64*, i64** %11, align 8
  %24 = load i64, i64* %23, align 8
  %25 = load i64*, i64** %12, align 8
  %26 = call i32 (i8*, i8*, ...) @TRACE(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i8* %19, i64 %20, i64 %21, i8* %22, i64 %24, i64* %25)
  %27 = load i8*, i8** %10, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %37, label %29

29:                                               ; preds = %6
  %30 = load i32*, i32** %7, align 8
  %31 = load i64, i64* %8, align 8
  %32 = load i64, i64* %9, align 8
  %33 = load i64*, i64** %12, align 8
  %34 = call i8* @CRYPT_AsnDecodeIntInternal(i32* %30, i64 %31, i64 %32, i32* null, i64* %15, i64* %33)
  store i8* %34, i8** %13, align 8
  %35 = load i64, i64* %14, align 8
  %36 = load i64*, i64** %11, align 8
  store i64 %35, i64* %36, align 8
  br label %74

37:                                               ; preds = %6
  %38 = load i64*, i64** %11, align 8
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* %14, align 8
  %41 = icmp slt i64 %39, %40
  br i1 %41, label %42, label %48

42:                                               ; preds = %37
  %43 = load i32, i32* @ERROR_MORE_DATA, align 4
  %44 = call i32 @SetLastError(i32 %43)
  %45 = load i64, i64* %14, align 8
  %46 = load i64*, i64** %11, align 8
  store i64 %45, i64* %46, align 8
  %47 = load i8*, i8** @FALSE, align 8
  store i8* %47, i8** %13, align 8
  br label %73

48:                                               ; preds = %37
  %49 = load i8*, i8** %10, align 8
  %50 = bitcast i8* %49 to %struct.PATH_LEN_CONSTRAINT*
  store %struct.PATH_LEN_CONSTRAINT* %50, %struct.PATH_LEN_CONSTRAINT** %16, align 8
  %51 = load i64, i64* %14, align 8
  %52 = load i64*, i64** %11, align 8
  store i64 %51, i64* %52, align 8
  store i64 4, i64* %15, align 8
  %53 = load i32*, i32** %7, align 8
  %54 = load i64, i64* %8, align 8
  %55 = load i64, i64* %9, align 8
  %56 = load %struct.PATH_LEN_CONSTRAINT*, %struct.PATH_LEN_CONSTRAINT** %16, align 8
  %57 = getelementptr inbounds %struct.PATH_LEN_CONSTRAINT, %struct.PATH_LEN_CONSTRAINT* %56, i32 0, i32 0
  %58 = load i64*, i64** %12, align 8
  %59 = call i8* @CRYPT_AsnDecodeIntInternal(i32* %53, i64 %54, i64 %55, i32* %57, i64* %15, i64* %58)
  store i8* %59, i8** %13, align 8
  %60 = load i8*, i8** %13, align 8
  %61 = icmp ne i8* %60, null
  br i1 %61, label %62, label %66

62:                                               ; preds = %48
  %63 = load i8*, i8** @TRUE, align 8
  %64 = load %struct.PATH_LEN_CONSTRAINT*, %struct.PATH_LEN_CONSTRAINT** %16, align 8
  %65 = getelementptr inbounds %struct.PATH_LEN_CONSTRAINT, %struct.PATH_LEN_CONSTRAINT* %64, i32 0, i32 1
  store i8* %63, i8** %65, align 8
  br label %66

66:                                               ; preds = %62, %48
  %67 = load %struct.PATH_LEN_CONSTRAINT*, %struct.PATH_LEN_CONSTRAINT** %16, align 8
  %68 = getelementptr inbounds %struct.PATH_LEN_CONSTRAINT, %struct.PATH_LEN_CONSTRAINT* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = sext i32 %69 to i64
  %71 = inttoptr i64 %70 to i8*
  %72 = call i32 (i8*, i8*, ...) @TRACE(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i8* %71)
  br label %73

73:                                               ; preds = %66, %42
  br label %74

74:                                               ; preds = %73, %29
  %75 = load i8*, i8** %13, align 8
  %76 = call i32 (...) @GetLastError()
  %77 = call i32 (i8*, i8*, ...) @TRACE(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i8* %75, i32 %76)
  %78 = load i8*, i8** %13, align 8
  ret i8* %78
}

declare dso_local i32 @TRACE(i8*, i8*, ...) #1

declare dso_local i8* @CRYPT_AsnDecodeIntInternal(i32*, i64, i64, i32*, i64*, i64*) #1

declare dso_local i32 @SetLastError(i32) #1

declare dso_local i32 @GetLastError(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
