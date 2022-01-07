; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/crypt32/extr_protectdata.c_convert_hash_to_blob.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/crypt32/extr_protectdata.c_convert_hash_to_blob.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32* }

@.str = private unnamed_addr constant [8 x i8] c"called\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@HP_HASHSIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"failed to get hash size\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"failed to allocate blob memory\0A\00", align 1
@HP_HASHVAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"failed to get hash value\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_3__*)* @convert_hash_to_blob to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @convert_hash_to_blob(i32 %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %5, align 8
  %7 = call i32 @TRACE(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %9 = icmp ne %struct.TYPE_3__* %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %2
  %11 = load i32, i32* @FALSE, align 4
  store i32 %11, i32* %3, align 4
  br label %57

12:                                               ; preds = %2
  store i32 4, i32* %6, align 4
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @HP_HASHSIZE, align 4
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = call i32 @CryptGetHashParam(i32 %13, i32 %14, i32* %16, i32* %6, i32 0)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %12
  %20 = call i32 @ERR(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %21 = load i32, i32* @FALSE, align 4
  store i32 %21, i32* %3, align 4
  br label %57

22:                                               ; preds = %12
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i32* @CryptMemAlloc(i32 %25)
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 1
  store i32* %26, i32** %28, align 8
  %29 = icmp ne i32* %26, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %22
  %31 = call i32 @ERR(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %32 = load i32, i32* @FALSE, align 4
  store i32 %32, i32* %3, align 4
  br label %57

33:                                               ; preds = %22
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* @HP_HASHVAL, align 4
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  %42 = call i32 @CryptGetHashParam(i32 %37, i32 %38, i32* %41, i32* %6, i32 0)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %55, label %44

44:                                               ; preds = %33
  %45 = call i32 @ERR(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = call i32 @CryptMemFree(i32* %48)
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 1
  store i32* null, i32** %51, align 8
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  store i32 0, i32* %53, align 8
  %54 = load i32, i32* @FALSE, align 4
  store i32 %54, i32* %3, align 4
  br label %57

55:                                               ; preds = %33
  %56 = load i32, i32* @TRUE, align 4
  store i32 %56, i32* %3, align 4
  br label %57

57:                                               ; preds = %55, %44, %30, %19, %10
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local i32 @TRACE(i8*) #1

declare dso_local i32 @CryptGetHashParam(i32, i32, i32*, i32*, i32) #1

declare dso_local i32 @ERR(i8*) #1

declare dso_local i32* @CryptMemAlloc(i32) #1

declare dso_local i32 @CryptMemFree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
