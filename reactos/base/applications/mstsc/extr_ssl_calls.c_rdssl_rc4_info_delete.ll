; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/mstsc/extr_ssl_calls.c_rdssl_rc4_info_delete.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/mstsc/extr_ssl_calls.c_rdssl_rc4_info_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rc4_state = type { i64, i64 }

@TRUE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [33 x i8] c"CryptDestroyKey failed with %lx\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"CryptReleaseContext failed with %lx\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rdssl_rc4_info_delete(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.rc4_state*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to %struct.rc4_state*
  store %struct.rc4_state* %7, %struct.rc4_state** %3, align 8
  %8 = load i64, i64* @TRUE, align 8
  store i64 %8, i64* %4, align 8
  %9 = load %struct.rc4_state*, %struct.rc4_state** %3, align 8
  %10 = icmp ne %struct.rc4_state* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  br label %49

12:                                               ; preds = %1
  %13 = load %struct.rc4_state*, %struct.rc4_state** %3, align 8
  %14 = getelementptr inbounds %struct.rc4_state, %struct.rc4_state* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %29

17:                                               ; preds = %12
  %18 = load %struct.rc4_state*, %struct.rc4_state** %3, align 8
  %19 = getelementptr inbounds %struct.rc4_state, %struct.rc4_state* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = call i64 @CryptDestroyKey(i64 %20)
  store i64 %21, i64* %4, align 8
  %22 = load i64, i64* %4, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %17
  %25 = call i32 (...) @GetLastError()
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @error(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %26)
  br label %28

28:                                               ; preds = %24, %17
  br label %29

29:                                               ; preds = %28, %12
  %30 = load %struct.rc4_state*, %struct.rc4_state** %3, align 8
  %31 = getelementptr inbounds %struct.rc4_state, %struct.rc4_state* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %46

34:                                               ; preds = %29
  %35 = load %struct.rc4_state*, %struct.rc4_state** %3, align 8
  %36 = getelementptr inbounds %struct.rc4_state, %struct.rc4_state* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = call i64 @CryptReleaseContext(i64 %37, i32 0)
  store i64 %38, i64* %4, align 8
  %39 = load i64, i64* %4, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %45, label %41

41:                                               ; preds = %34
  %42 = call i32 (...) @GetLastError()
  store i32 %42, i32* %5, align 4
  %43 = load i32, i32* %5, align 4
  %44 = call i32 @error(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %43)
  br label %45

45:                                               ; preds = %41, %34
  br label %46

46:                                               ; preds = %45, %29
  %47 = load i8*, i8** %2, align 8
  %48 = call i32 @g_free(i8* %47)
  br label %49

49:                                               ; preds = %46, %11
  ret void
}

declare dso_local i64 @CryptDestroyKey(i64) #1

declare dso_local i32 @GetLastError(...) #1

declare dso_local i32 @error(i8*, i32) #1

declare dso_local i64 @CryptReleaseContext(i64, i32) #1

declare dso_local i32 @g_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
