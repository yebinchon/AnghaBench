; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/crypt32/extr_serialize.c_CRYPT_SavePKCSToFile.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/crypt32/extr_serialize.c_CRYPT_SavePKCSToFile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64, i32*, i32 }

@.str = private unnamed_addr constant [6 x i8] c"(%p)\0A\00", align 1
@ERROR_OUTOFMEMORY = common dso_local global i32 0, align 4
@FALSE = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [14 x i8] c"returning %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32, i32, i8*)* @CRYPT_SavePKCSToFile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @CRYPT_SavePKCSToFile(i32 %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_3__, align 8
  %8 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %9 = bitcast %struct.TYPE_3__* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %9, i8 0, i64 32, i1 false)
  %10 = load i8*, i8** %6, align 8
  %11 = call i32 @TRACE(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %10)
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* %5, align 4
  %14 = call i8* @CRYPT_SavePKCSToMem(i32 %12, i32 %13, %struct.TYPE_3__* %7)
  store i8* %14, i8** %8, align 8
  %15 = load i8*, i8** %8, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %45

17:                                               ; preds = %3
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i64 @CryptMemAlloc(i32 %19)
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 1
  store i64 %20, i64* %21, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %40

25:                                               ; preds = %17
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* %5, align 4
  %28 = call i8* @CRYPT_SavePKCSToMem(i32 %26, i32 %27, %struct.TYPE_3__* %7)
  store i8* %28, i8** %8, align 8
  %29 = load i8*, i8** %8, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %31, label %39

31:                                               ; preds = %25
  %32 = load i8*, i8** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %38 = call i8* @WriteFile(i8* %32, i64 %34, i32 %36, i32* %37, i32* null)
  store i8* %38, i8** %8, align 8
  br label %39

39:                                               ; preds = %31, %25
  br label %44

40:                                               ; preds = %17
  %41 = load i32, i32* @ERROR_OUTOFMEMORY, align 4
  %42 = call i32 @SetLastError(i32 %41)
  %43 = load i8*, i8** @FALSE, align 8
  store i8* %43, i8** %8, align 8
  br label %44

44:                                               ; preds = %40, %39
  br label %45

45:                                               ; preds = %44, %3
  %46 = load i8*, i8** %8, align 8
  %47 = call i32 @TRACE(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8* %46)
  %48 = load i8*, i8** %8, align 8
  ret i8* %48
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @TRACE(i8*, i8*) #2

declare dso_local i8* @CRYPT_SavePKCSToMem(i32, i32, %struct.TYPE_3__*) #2

declare dso_local i64 @CryptMemAlloc(i32) #2

declare dso_local i8* @WriteFile(i8*, i64, i32, i32*, i32*) #2

declare dso_local i32 @SetLastError(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
