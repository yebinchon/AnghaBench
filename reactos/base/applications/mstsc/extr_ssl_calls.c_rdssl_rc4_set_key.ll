; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/mstsc/extr_ssl_calls.c_rdssl_rc4_set_key.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/mstsc/extr_ssl_calls.c_rdssl_rc4_set_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rc4_state = type { i64, i32 }
%struct.TYPE_2__ = type { i64, i32, i32, i32 }

@.str = private unnamed_addr constant [28 x i8] c"rdssl_rc4_set_key %p %p %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"rdssl_rc4_set_key no memory\0A\00", align 1
@CALG_RC4 = common dso_local global i32 0, align 4
@PLAINTEXTKEYBLOB = common dso_local global i32 0, align 4
@CUR_BLOB_VERSION = common dso_local global i32 0, align 4
@CRYPT_EXPORTABLE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"CryptImportKey failed with %lx\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rdssl_rc4_set_key(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.rc4_state*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_2__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %14 = load i8*, i8** %4, align 8
  %15 = bitcast i8* %14 to %struct.rc4_state*
  store %struct.rc4_state* %15, %struct.rc4_state** %7, align 8
  %16 = load i8*, i8** %4, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %18, label %29

18:                                               ; preds = %3
  %19 = load i8*, i8** %5, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %29

21:                                               ; preds = %18
  %22 = load i32, i32* %6, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %21
  %25 = load %struct.rc4_state*, %struct.rc4_state** %7, align 8
  %26 = getelementptr inbounds %struct.rc4_state, %struct.rc4_state* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %24, %21, %18, %3
  %30 = load i8*, i8** %4, align 8
  %31 = load i8*, i8** %5, align 8
  %32 = load i32, i32* %6, align 4
  %33 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8* %30, i8* %31, i32 %32)
  br label %101

34:                                               ; preds = %24
  %35 = load i32, i32* %6, align 4
  %36 = sext i32 %35 to i64
  %37 = add i64 28, %36
  %38 = trunc i64 %37 to i32
  %39 = call i32* @g_malloc(i32 %38, i32 0)
  store i32* %39, i32** %10, align 8
  %40 = load i32*, i32** %10, align 8
  %41 = icmp ne i32* %40, null
  br i1 %41, label %44, label %42

42:                                               ; preds = %34
  %43 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  br label %101

44:                                               ; preds = %34
  %45 = load i32*, i32** %10, align 8
  %46 = bitcast i32* %45 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %46, %struct.TYPE_2__** %11, align 8
  %47 = load i32*, i32** %10, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 24
  store i32* %48, i32** %12, align 8
  %49 = load i32*, i32** %10, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 24
  %51 = getelementptr inbounds i32, i32* %50, i64 4
  store i32* %51, i32** %13, align 8
  %52 = load i32, i32* @CALG_RC4, align 4
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 3
  store i32 %52, i32* %54, align 8
  %55 = load i32, i32* @PLAINTEXTKEYBLOB, align 4
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 2
  store i32 %55, i32* %57, align 4
  %58 = load i32, i32* @CUR_BLOB_VERSION, align 4
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 1
  store i32 %58, i32* %60, align 8
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  store i64 0, i64* %62, align 8
  %63 = load i32, i32* %6, align 4
  %64 = load i32*, i32** %12, align 8
  store i32 %63, i32* %64, align 4
  %65 = load i32*, i32** %13, align 8
  %66 = load i8*, i8** %5, align 8
  %67 = load i32, i32* %6, align 4
  %68 = call i32 @memcpy(i32* %65, i8* %66, i32 %67)
  %69 = load %struct.rc4_state*, %struct.rc4_state** %7, align 8
  %70 = getelementptr inbounds %struct.rc4_state, %struct.rc4_state* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %80

73:                                               ; preds = %44
  %74 = load %struct.rc4_state*, %struct.rc4_state** %7, align 8
  %75 = getelementptr inbounds %struct.rc4_state, %struct.rc4_state* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = call i32 @CryptDestroyKey(i64 %76)
  %78 = load %struct.rc4_state*, %struct.rc4_state** %7, align 8
  %79 = getelementptr inbounds %struct.rc4_state, %struct.rc4_state* %78, i32 0, i32 0
  store i64 0, i64* %79, align 8
  br label %80

80:                                               ; preds = %73, %44
  %81 = load %struct.rc4_state*, %struct.rc4_state** %7, align 8
  %82 = getelementptr inbounds %struct.rc4_state, %struct.rc4_state* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = load i32*, i32** %10, align 8
  %85 = load i32, i32* %6, align 4
  %86 = sext i32 %85 to i64
  %87 = add i64 28, %86
  %88 = trunc i64 %87 to i32
  %89 = load i32, i32* @CRYPT_EXPORTABLE, align 4
  %90 = load %struct.rc4_state*, %struct.rc4_state** %7, align 8
  %91 = getelementptr inbounds %struct.rc4_state, %struct.rc4_state* %90, i32 0, i32 0
  %92 = call i32 @CryptImportKey(i32 %83, i32* %84, i32 %88, i32 0, i32 %89, i64* %91)
  store i32 %92, i32* %8, align 4
  %93 = load i32*, i32** %10, align 8
  %94 = call i32 @g_free(i32* %93)
  %95 = load i32, i32* %8, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %101, label %97

97:                                               ; preds = %80
  %98 = call i32 (...) @GetLastError()
  store i32 %98, i32* %9, align 4
  %99 = load i32, i32* %9, align 4
  %100 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %99)
  br label %101

101:                                              ; preds = %29, %42, %97, %80
  ret void
}

declare dso_local i32 @error(i8*, ...) #1

declare dso_local i32* @g_malloc(i32, i32) #1

declare dso_local i32 @memcpy(i32*, i8*, i32) #1

declare dso_local i32 @CryptDestroyKey(i64) #1

declare dso_local i32 @CryptImportKey(i32, i32*, i32, i32, i32, i64*) #1

declare dso_local i32 @g_free(i32*) #1

declare dso_local i32 @GetLastError(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
