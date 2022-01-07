; ModuleID = '/home/carl/AnghaBench/postgres/src/interfaces/ecpg/ecpglib/extr_misc.c_ECPGset_noind_null.c'
source_filename = "/home/carl/AnghaBench/postgres/src/interfaces/ecpg/ecpglib/extr_misc.c_ECPGset_noind_null.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ECPGgeneric_varchar = type { i32*, i32 }
%struct.ECPGgeneric_bytea = type { i32 }
%struct.TYPE_4__ = type { i8* }
%struct.TYPE_3__ = type { i8* }

@SHRT_MIN = common dso_local global i16 0, align 2
@INT_MIN = common dso_local global i32 0, align 4
@LONG_MIN = common dso_local global i64 0, align 8
@LONG_LONG_MIN = common dso_local global i64 0, align 8
@NUMERIC_NULL = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ECPGset_noind_null(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %5 = load i32, i32* %3, align 4
  switch i32 %5, label %62 [
    i32 146, label %6
    i32 133, label %6
    i32 135, label %6
    i32 136, label %8
    i32 129, label %8
    i32 141, label %12
    i32 132, label %12
    i32 139, label %16
    i32 131, label %16
    i32 145, label %16
    i32 138, label %20
    i32 130, label %20
    i32 142, label %24
    i32 143, label %27
    i32 128, label %30
    i32 147, label %38
    i32 144, label %42
    i32 137, label %49
    i32 140, label %56
    i32 134, label %59
  ]

6:                                                ; preds = %2, %2, %2
  %7 = load i8*, i8** %4, align 8
  store i8 0, i8* %7, align 1
  br label %63

8:                                                ; preds = %2, %2
  %9 = load i16, i16* @SHRT_MIN, align 2
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to i16*
  store i16 %9, i16* %11, align 2
  br label %63

12:                                               ; preds = %2, %2
  %13 = load i32, i32* @INT_MIN, align 4
  %14 = load i8*, i8** %4, align 8
  %15 = bitcast i8* %14 to i32*
  store i32 %13, i32* %15, align 4
  br label %63

16:                                               ; preds = %2, %2, %2
  %17 = load i64, i64* @LONG_MIN, align 8
  %18 = load i8*, i8** %4, align 8
  %19 = bitcast i8* %18 to i64*
  store i64 %17, i64* %19, align 8
  br label %63

20:                                               ; preds = %2, %2
  %21 = load i64, i64* @LONG_LONG_MIN, align 8
  %22 = load i8*, i8** %4, align 8
  %23 = bitcast i8* %22 to i64*
  store i64 %21, i64* %23, align 8
  br label %63

24:                                               ; preds = %2
  %25 = load i8*, i8** %4, align 8
  %26 = call i32 @memset(i8* %25, i32 255, i32 4)
  br label %63

27:                                               ; preds = %2
  %28 = load i8*, i8** %4, align 8
  %29 = call i32 @memset(i8* %28, i32 255, i32 8)
  br label %63

30:                                               ; preds = %2
  %31 = load i8*, i8** %4, align 8
  %32 = bitcast i8* %31 to %struct.ECPGgeneric_varchar*
  %33 = getelementptr inbounds %struct.ECPGgeneric_varchar, %struct.ECPGgeneric_varchar* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  store i32 0, i32* %34, align 4
  %35 = load i8*, i8** %4, align 8
  %36 = bitcast i8* %35 to %struct.ECPGgeneric_varchar*
  %37 = getelementptr inbounds %struct.ECPGgeneric_varchar, %struct.ECPGgeneric_varchar* %36, i32 0, i32 1
  store i32 0, i32* %37, align 8
  br label %63

38:                                               ; preds = %2
  %39 = load i8*, i8** %4, align 8
  %40 = bitcast i8* %39 to %struct.ECPGgeneric_bytea*
  %41 = getelementptr inbounds %struct.ECPGgeneric_bytea, %struct.ECPGgeneric_bytea* %40, i32 0, i32 0
  store i32 0, i32* %41, align 4
  br label %63

42:                                               ; preds = %2
  %43 = load i8*, i8** %4, align 8
  %44 = call i32 @memset(i8* %43, i32 0, i32 8)
  %45 = load i8*, i8** @NUMERIC_NULL, align 8
  %46 = load i8*, i8** %4, align 8
  %47 = bitcast i8* %46 to %struct.TYPE_4__*
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  store i8* %45, i8** %48, align 8
  br label %63

49:                                               ; preds = %2
  %50 = load i8*, i8** %4, align 8
  %51 = call i32 @memset(i8* %50, i32 0, i32 8)
  %52 = load i8*, i8** @NUMERIC_NULL, align 8
  %53 = load i8*, i8** %4, align 8
  %54 = bitcast i8* %53 to %struct.TYPE_3__*
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  store i8* %52, i8** %55, align 8
  br label %63

56:                                               ; preds = %2
  %57 = load i8*, i8** %4, align 8
  %58 = call i32 @memset(i8* %57, i32 255, i32 4)
  br label %63

59:                                               ; preds = %2
  %60 = load i8*, i8** %4, align 8
  %61 = call i32 @memset(i8* %60, i32 255, i32 4)
  br label %63

62:                                               ; preds = %2
  br label %63

63:                                               ; preds = %62, %59, %56, %49, %42, %38, %30, %27, %24, %20, %16, %12, %8, %6
  ret void
}

declare dso_local i32 @memset(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
