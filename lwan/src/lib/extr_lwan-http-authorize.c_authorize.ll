; ModuleID = '/home/carl/AnghaBench/lwan/src/lib/extr_lwan-http-authorize.c_authorize.c'
source_filename = "/home/carl/AnghaBench/lwan/src/lib/extr_lwan-http-authorize.c_authorize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.coro = type { i32 }
%struct.realm_password_file_t = type { i32 }

@realm_password_cache = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.coro*, i8*, i64, i8*)* @authorize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @authorize(%struct.coro* %0, i8* %1, i64 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.coro*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.realm_password_file_t*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store %struct.coro* %0, %struct.coro** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i8* %3, i8** %9, align 8
  store i32 0, i32* %16, align 4
  %17 = load i32, i32* @realm_password_cache, align 4
  %18 = load %struct.coro*, %struct.coro** %6, align 8
  %19 = load i8*, i8** %9, align 8
  %20 = call i64 @cache_coro_get_and_ref_entry(i32 %17, %struct.coro* %18, i8* %19)
  %21 = inttoptr i64 %20 to %struct.realm_password_file_t*
  store %struct.realm_password_file_t* %21, %struct.realm_password_file_t** %10, align 8
  %22 = load %struct.realm_password_file_t*, %struct.realm_password_file_t** %10, align 8
  %23 = icmp ne %struct.realm_password_file_t* %22, null
  %24 = xor i1 %23, true
  %25 = zext i1 %24 to i32
  %26 = call i64 @UNLIKELY(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %71

29:                                               ; preds = %4
  %30 = load i8*, i8** %7, align 8
  %31 = load i64, i64* %8, align 8
  %32 = call i8* @base64_decode(i8* %30, i64 %31, i64* %15)
  store i8* %32, i8** %11, align 8
  %33 = load i8*, i8** %11, align 8
  %34 = icmp ne i8* %33, null
  %35 = xor i1 %34, true
  %36 = zext i1 %35 to i32
  %37 = call i64 @UNLIKELY(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %29
  store i32 0, i32* %5, align 4
  br label %71

40:                                               ; preds = %29
  %41 = load i8*, i8** %11, align 8
  %42 = load i64, i64* %15, align 8
  %43 = call i8* @memchr(i8* %41, i8 signext 58, i64 %42)
  store i8* %43, i8** %12, align 8
  %44 = load i8*, i8** %12, align 8
  %45 = icmp ne i8* %44, null
  %46 = xor i1 %45, true
  %47 = zext i1 %46 to i32
  %48 = call i64 @UNLIKELY(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %40
  br label %67

51:                                               ; preds = %40
  %52 = load i8*, i8** %12, align 8
  store i8 0, i8* %52, align 1
  %53 = load i8*, i8** %12, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 1
  store i8* %54, i8** %13, align 8
  %55 = load %struct.realm_password_file_t*, %struct.realm_password_file_t** %10, align 8
  %56 = getelementptr inbounds %struct.realm_password_file_t, %struct.realm_password_file_t* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i8*, i8** %11, align 8
  %59 = call i8* @hash_find(i32 %57, i8* %58)
  store i8* %59, i8** %14, align 8
  %60 = load i8*, i8** %14, align 8
  %61 = icmp ne i8* %60, null
  br i1 %61, label %62, label %66

62:                                               ; preds = %51
  %63 = load i8*, i8** %13, align 8
  %64 = load i8*, i8** %14, align 8
  %65 = call i32 @streq(i8* %63, i8* %64)
  store i32 %65, i32* %16, align 4
  br label %66

66:                                               ; preds = %62, %51
  br label %67

67:                                               ; preds = %66, %50
  %68 = load i8*, i8** %11, align 8
  %69 = call i32 @free(i8* %68)
  %70 = load i32, i32* %16, align 4
  store i32 %70, i32* %5, align 4
  br label %71

71:                                               ; preds = %67, %39, %28
  %72 = load i32, i32* %5, align 4
  ret i32 %72
}

declare dso_local i64 @cache_coro_get_and_ref_entry(i32, %struct.coro*, i8*) #1

declare dso_local i64 @UNLIKELY(i32) #1

declare dso_local i8* @base64_decode(i8*, i64, i64*) #1

declare dso_local i8* @memchr(i8*, i8 signext, i64) #1

declare dso_local i8* @hash_find(i32, i8*) #1

declare dso_local i32 @streq(i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
