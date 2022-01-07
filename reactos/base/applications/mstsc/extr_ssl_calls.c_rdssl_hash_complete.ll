; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/mstsc/extr_ssl_calls.c_rdssl_hash_complete.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/mstsc/extr_ssl_calls.c_rdssl_hash_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hash_context = type { i32, i32 }

@.str = private unnamed_addr constant [27 x i8] c"rdssl_hash_complete %p %p\0A\00", align 1
@HP_HASHVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"CryptGetHashParam failed with %lx\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rdssl_hash_complete(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.hash_context*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = bitcast i8* %9 to %struct.hash_context*
  store %struct.hash_context* %10, %struct.hash_context** %5, align 8
  %11 = load %struct.hash_context*, %struct.hash_context** %5, align 8
  %12 = icmp ne %struct.hash_context* %11, null
  br i1 %12, label %13, label %26

13:                                               ; preds = %2
  %14 = load %struct.hash_context*, %struct.hash_context** %5, align 8
  %15 = getelementptr inbounds %struct.hash_context, %struct.hash_context* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %26

18:                                               ; preds = %13
  %19 = load %struct.hash_context*, %struct.hash_context** %5, align 8
  %20 = getelementptr inbounds %struct.hash_context, %struct.hash_context* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %18
  %24 = load i8*, i8** %4, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %30, label %26

26:                                               ; preds = %23, %18, %13, %2
  %27 = load i8*, i8** %3, align 8
  %28 = load i8*, i8** %4, align 8
  %29 = call i32 (i8*, i8*, ...) @error(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i8* %27, i8* %28)
  br label %60

30:                                               ; preds = %23
  %31 = load %struct.hash_context*, %struct.hash_context** %5, align 8
  %32 = getelementptr inbounds %struct.hash_context, %struct.hash_context* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @HP_HASHVAL, align 4
  %35 = call i64 @CryptGetHashParam(i32 %33, i32 %34, i32* null, i32* %8, i32 0)
  store i64 %35, i64* %6, align 8
  %36 = load i64, i64* %6, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %44, label %38

38:                                               ; preds = %30
  %39 = call i32 (...) @GetLastError()
  store i32 %39, i32* %7, align 4
  %40 = load i32, i32* %7, align 4
  %41 = sext i32 %40 to i64
  %42 = inttoptr i64 %41 to i8*
  %43 = call i32 (i8*, i8*, ...) @error(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i8* %42)
  br label %60

44:                                               ; preds = %30
  %45 = load %struct.hash_context*, %struct.hash_context** %5, align 8
  %46 = getelementptr inbounds %struct.hash_context, %struct.hash_context* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @HP_HASHVAL, align 4
  %49 = load i8*, i8** %4, align 8
  %50 = bitcast i8* %49 to i32*
  %51 = call i64 @CryptGetHashParam(i32 %47, i32 %48, i32* %50, i32* %8, i32 0)
  store i64 %51, i64* %6, align 8
  %52 = load i64, i64* %6, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %60, label %54

54:                                               ; preds = %44
  %55 = call i32 (...) @GetLastError()
  store i32 %55, i32* %7, align 4
  %56 = load i32, i32* %7, align 4
  %57 = sext i32 %56 to i64
  %58 = inttoptr i64 %57 to i8*
  %59 = call i32 (i8*, i8*, ...) @error(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i8* %58)
  br label %60

60:                                               ; preds = %26, %38, %54, %44
  ret void
}

declare dso_local i32 @error(i8*, i8*, ...) #1

declare dso_local i64 @CryptGetHashParam(i32, i32, i32*, i32*, i32) #1

declare dso_local i32 @GetLastError(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
