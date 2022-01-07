; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/mstsc/extr_ssl_calls.c_rdssl_rc4_crypt.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/mstsc/extr_ssl_calls.c_rdssl_rc4_crypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rc4_state = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"rdssl_rc4_crypt %p %p %p %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"rdssl_rc4_set_key no memory\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"CryptEncrypt failed with %lx\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rdssl_rc4_crypt(i8* %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.rc4_state*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %14 = load i8*, i8** %5, align 8
  %15 = bitcast i8* %14 to %struct.rc4_state*
  store %struct.rc4_state* %15, %struct.rc4_state** %9, align 8
  %16 = load i32, i32* %8, align 4
  store i32 %16, i32* %13, align 4
  %17 = load i8*, i8** %5, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %33

19:                                               ; preds = %4
  %20 = load i8*, i8** %6, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %33

22:                                               ; preds = %19
  %23 = load i8*, i8** %7, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %25, label %33

25:                                               ; preds = %22
  %26 = load i32, i32* %8, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %25
  %29 = load %struct.rc4_state*, %struct.rc4_state** %9, align 8
  %30 = getelementptr inbounds %struct.rc4_state, %struct.rc4_state* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %39, label %33

33:                                               ; preds = %28, %25, %22, %19, %4
  %34 = load i8*, i8** %5, align 8
  %35 = load i8*, i8** %6, align 8
  %36 = load i8*, i8** %7, align 8
  %37 = load i32, i32* %8, align 4
  %38 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* %34, i8* %35, i8* %36, i32 %37)
  br label %73

39:                                               ; preds = %28
  %40 = load i32, i32* %8, align 4
  %41 = call i8* @g_malloc(i32 %40, i32 0)
  store i8* %41, i8** %12, align 8
  %42 = load i8*, i8** %12, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %46, label %44

44:                                               ; preds = %39
  %45 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  br label %73

46:                                               ; preds = %39
  %47 = load i8*, i8** %12, align 8
  %48 = load i8*, i8** %6, align 8
  %49 = load i32, i32* %8, align 4
  %50 = call i32 @memcpy(i8* %47, i8* %48, i32 %49)
  %51 = load %struct.rc4_state*, %struct.rc4_state** %9, align 8
  %52 = getelementptr inbounds %struct.rc4_state, %struct.rc4_state* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @FALSE, align 4
  %55 = load i8*, i8** %12, align 8
  %56 = load i32, i32* %13, align 4
  %57 = call i32 @CryptEncrypt(i32 %53, i32 0, i32 %54, i32 0, i8* %55, i32* %13, i32 %56)
  store i32 %57, i32* %10, align 4
  %58 = load i32, i32* %10, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %66, label %60

60:                                               ; preds = %46
  %61 = call i32 (...) @GetLastError()
  store i32 %61, i32* %11, align 4
  %62 = load i8*, i8** %12, align 8
  %63 = call i32 @g_free(i8* %62)
  %64 = load i32, i32* %11, align 4
  %65 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %64)
  br label %73

66:                                               ; preds = %46
  %67 = load i8*, i8** %7, align 8
  %68 = load i8*, i8** %12, align 8
  %69 = load i32, i32* %8, align 4
  %70 = call i32 @memcpy(i8* %67, i8* %68, i32 %69)
  %71 = load i8*, i8** %12, align 8
  %72 = call i32 @g_free(i8* %71)
  br label %73

73:                                               ; preds = %66, %60, %44, %33
  ret void
}

declare dso_local i32 @error(i8*, ...) #1

declare dso_local i8* @g_malloc(i32, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @CryptEncrypt(i32, i32, i32, i32, i8*, i32*, i32) #1

declare dso_local i32 @GetLastError(...) #1

declare dso_local i32 @g_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
