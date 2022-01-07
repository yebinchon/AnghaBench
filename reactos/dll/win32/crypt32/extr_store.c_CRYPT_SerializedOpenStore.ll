; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/crypt32/extr_store.c_CRYPT_SerializedOpenStore.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/crypt32/extr_store.c_CRYPT_SerializedOpenStore.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [17 x i8] c"(%ld, %08x, %p)\0A\00", align 1
@CERT_STORE_DELETE_FLAG = common dso_local global i32 0, align 4
@ERROR_CALL_NOT_IMPLEMENTED = common dso_local global i32 0, align 4
@CERT_STORE_PROV_MEMORY = common dso_local global i32 0, align 4
@CERT_STORE_CREATE_NEW_FLAG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"returning %p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32, i32, i8*)* @CRYPT_SerializedOpenStore to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @CRYPT_SerializedOpenStore(i32 %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %10 = load i8*, i8** %7, align 8
  %11 = bitcast i8* %10 to i32*
  store i32* %11, i32** %9, align 8
  %12 = load i32, i32* %5, align 4
  %13 = sext i32 %12 to i64
  %14 = inttoptr i64 %13 to i32*
  %15 = load i32, i32* %6, align 4
  %16 = load i8*, i8** %7, align 8
  %17 = call i32 (i8*, i32*, ...) @TRACE(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32* %14, i32 %15, i8* %16)
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @CERT_STORE_DELETE_FLAG, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %3
  %23 = load i32, i32* @ERROR_CALL_NOT_IMPLEMENTED, align 4
  %24 = call i32 @SetLastError(i32 %23)
  store i32* null, i32** %4, align 8
  br label %44

25:                                               ; preds = %3
  %26 = load i32, i32* @CERT_STORE_PROV_MEMORY, align 4
  %27 = load i32, i32* @CERT_STORE_CREATE_NEW_FLAG, align 4
  %28 = call i32* @CertOpenStore(i32 %26, i32 0, i32 0, i32 %27, i32* null)
  store i32* %28, i32** %8, align 8
  %29 = load i32*, i32** %8, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %31, label %40

31:                                               ; preds = %25
  %32 = load i32*, i32** %9, align 8
  %33 = load i32*, i32** %8, align 8
  %34 = call i32 @CRYPT_ReadSerializedStoreFromBlob(i32* %32, i32* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %31
  %37 = load i32*, i32** %8, align 8
  %38 = call i32 @CertCloseStore(i32* %37, i32 0)
  store i32* null, i32** %8, align 8
  br label %39

39:                                               ; preds = %36, %31
  br label %40

40:                                               ; preds = %39, %25
  %41 = load i32*, i32** %8, align 8
  %42 = call i32 (i8*, i32*, ...) @TRACE(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32* %41)
  %43 = load i32*, i32** %8, align 8
  store i32* %43, i32** %4, align 8
  br label %44

44:                                               ; preds = %40, %22
  %45 = load i32*, i32** %4, align 8
  ret i32* %45
}

declare dso_local i32 @TRACE(i8*, i32*, ...) #1

declare dso_local i32 @SetLastError(i32) #1

declare dso_local i32* @CertOpenStore(i32, i32, i32, i32, i32*) #1

declare dso_local i32 @CRYPT_ReadSerializedStoreFromBlob(i32*, i32*) #1

declare dso_local i32 @CertCloseStore(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
