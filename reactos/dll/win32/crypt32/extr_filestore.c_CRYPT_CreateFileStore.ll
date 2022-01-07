; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/crypt32/extr_filestore.c_CRYPT_CreateFileStore.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/crypt32/extr_filestore.c_CRYPT_CreateFileStore.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i8*, i32, i32, i8* }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__*, i32, i32, i32 }

@FALSE = common dso_local global i32 0, align 4
@fileProvFuncs = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i32, i32, i8*)* @CRYPT_CreateFileStore to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @CRYPT_CreateFileStore(i8* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_5__*, align 8
  %11 = alloca %struct.TYPE_6__, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  store i32* null, i32** %9, align 8
  %12 = call %struct.TYPE_5__* @CryptMemAlloc(i32 32)
  store %struct.TYPE_5__* %12, %struct.TYPE_5__** %10, align 8
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %14 = icmp ne %struct.TYPE_5__* %13, null
  br i1 %14, label %15, label %43

15:                                               ; preds = %4
  %16 = bitcast %struct.TYPE_6__* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %16, i8 0, i64 32, i1 false)
  %17 = load i8*, i8** %5, align 8
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 4
  store i8* %17, i8** %19, align 8
  %20 = load i32, i32* %6, align 4
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 3
  store i32 %20, i32* %22, align 4
  %23 = load i32, i32* %7, align 4
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 2
  store i32 %23, i32* %25, align 8
  %26 = load i8*, i8** %8, align 8
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 1
  store i8* %26, i8** %28, align 8
  %29 = load i32, i32* @FALSE, align 4
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  store i32 32, i32* %32, align 8
  %33 = load i32, i32* @fileProvFuncs, align 4
  %34 = call i32 @ARRAY_SIZE(i32 %33)
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 3
  store i32 %34, i32* %35, align 4
  %36 = load i32, i32* @fileProvFuncs, align 4
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 2
  store i32 %36, i32* %37, align 8
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 1
  store %struct.TYPE_5__* %38, %struct.TYPE_5__** %39, align 8
  %40 = load i8*, i8** %5, align 8
  %41 = load i32, i32* %6, align 4
  %42 = call i32* @CRYPT_ProvCreateStore(i8* %40, i32 %41, %struct.TYPE_6__* %11)
  store i32* %42, i32** %9, align 8
  br label %43

43:                                               ; preds = %15, %4
  %44 = load i32*, i32** %9, align 8
  ret i32* %44
}

declare dso_local %struct.TYPE_5__* @CryptMemAlloc(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32* @CRYPT_ProvCreateStore(i8*, i32, %struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
