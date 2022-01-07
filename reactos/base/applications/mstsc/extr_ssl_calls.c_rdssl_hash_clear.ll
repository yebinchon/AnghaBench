; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/mstsc/extr_ssl_calls.c_rdssl_hash_clear.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/mstsc/extr_ssl_calls.c_rdssl_hash_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hash_context = type { i32, i32 }

@.str = private unnamed_addr constant [21 x i8] c"rdssl_hash_clear %p\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"CryptDestroyHash failed with %lx\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"CryptCreateHash failed with %lx\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rdssl_hash_clear(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.hash_context*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.hash_context*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i8*, i8** %3, align 8
  %9 = bitcast i8* %8 to %struct.hash_context*
  store %struct.hash_context* %9, %struct.hash_context** %5, align 8
  %10 = load %struct.hash_context*, %struct.hash_context** %5, align 8
  %11 = icmp ne %struct.hash_context* %10, null
  br i1 %11, label %12, label %22

12:                                               ; preds = %2
  %13 = load %struct.hash_context*, %struct.hash_context** %5, align 8
  %14 = getelementptr inbounds %struct.hash_context, %struct.hash_context* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %12
  %18 = load %struct.hash_context*, %struct.hash_context** %5, align 8
  %19 = getelementptr inbounds %struct.hash_context, %struct.hash_context* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %17, %12, %2
  %23 = load %struct.hash_context*, %struct.hash_context** %5, align 8
  %24 = call i32 @error(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), %struct.hash_context* %23)
  br label %50

25:                                               ; preds = %17
  %26 = load %struct.hash_context*, %struct.hash_context** %5, align 8
  %27 = getelementptr inbounds %struct.hash_context, %struct.hash_context* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @CryptDestroyHash(i32 %28)
  store i64 %29, i64* %6, align 8
  %30 = load i64, i64* %6, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %25
  %33 = call %struct.hash_context* (...) @GetLastError()
  store %struct.hash_context* %33, %struct.hash_context** %7, align 8
  %34 = load %struct.hash_context*, %struct.hash_context** %7, align 8
  %35 = call i32 @error(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), %struct.hash_context* %34)
  br label %50

36:                                               ; preds = %25
  %37 = load %struct.hash_context*, %struct.hash_context** %5, align 8
  %38 = getelementptr inbounds %struct.hash_context, %struct.hash_context* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %4, align 4
  %41 = load %struct.hash_context*, %struct.hash_context** %5, align 8
  %42 = getelementptr inbounds %struct.hash_context, %struct.hash_context* %41, i32 0, i32 0
  %43 = call i64 @CryptCreateHash(i32 %39, i32 %40, i32 0, i32 0, i32* %42)
  store i64 %43, i64* %6, align 8
  %44 = load i64, i64* %6, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %50, label %46

46:                                               ; preds = %36
  %47 = call %struct.hash_context* (...) @GetLastError()
  store %struct.hash_context* %47, %struct.hash_context** %7, align 8
  %48 = load %struct.hash_context*, %struct.hash_context** %7, align 8
  %49 = call i32 @error(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), %struct.hash_context* %48)
  br label %50

50:                                               ; preds = %22, %32, %46, %36
  ret void
}

declare dso_local i32 @error(i8*, %struct.hash_context*) #1

declare dso_local i64 @CryptDestroyHash(i32) #1

declare dso_local %struct.hash_context* @GetLastError(...) #1

declare dso_local i64 @CryptCreateHash(i32, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
