; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/advapi32/wine/extr_cred.c_get_key_name_for_target.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/advapi32/wine/extr_cred.c_get_key_name_for_target.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@get_key_name_for_target.wszGenericPrefix = internal constant [10 x i8] c"Generic: \00", align 1
@get_key_name_for_target.wszDomPasswdPrefix = internal constant [12 x i8] c"DomPasswd: \00", align 1
@CRED_TYPE_GENERIC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i64)* @get_key_name_for_target to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @get_key_name_for_target(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store i8* null, i8** %7, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = call i32 @strlenW(i8* %10)
  store i32 %11, i32* %6, align 4
  %12 = load i64, i64* %5, align 8
  %13 = load i64, i64* @CRED_TYPE_GENERIC, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %20

15:                                               ; preds = %2
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @get_key_name_for_target.wszGenericPrefix, i64 0, i64 0), i8** %7, align 8
  %16 = load i32, i32* %6, align 4
  %17 = sext i32 %16 to i64
  %18 = add i64 %17, 10
  %19 = trunc i64 %18 to i32
  store i32 %19, i32* %6, align 4
  br label %25

20:                                               ; preds = %2
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @get_key_name_for_target.wszDomPasswdPrefix, i64 0, i64 0), i8** %7, align 8
  %21 = load i32, i32* %6, align 4
  %22 = sext i32 %21 to i64
  %23 = add i64 %22, 12
  %24 = trunc i64 %23 to i32
  store i32 %24, i32* %6, align 4
  br label %25

25:                                               ; preds = %20, %15
  %26 = load i32, i32* %6, align 4
  %27 = sext i32 %26 to i64
  %28 = mul i64 %27, 1
  %29 = trunc i64 %28 to i32
  %30 = call i8* @heap_alloc(i32 %29)
  store i8* %30, i8** %8, align 8
  %31 = load i8*, i8** %8, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %25
  store i8* null, i8** %3, align 8
  br label %59

34:                                               ; preds = %25
  %35 = load i8*, i8** %8, align 8
  %36 = load i8*, i8** %7, align 8
  %37 = call i32 @strcpyW(i8* %35, i8* %36)
  %38 = load i8*, i8** %8, align 8
  %39 = load i8*, i8** %4, align 8
  %40 = call i32 @strcatW(i8* %38, i8* %39)
  %41 = load i8*, i8** %8, align 8
  store i8* %41, i8** %9, align 8
  br label %42

42:                                               ; preds = %54, %34
  %43 = load i8*, i8** %9, align 8
  %44 = load i8, i8* %43, align 1
  %45 = icmp ne i8 %44, 0
  br i1 %45, label %46, label %57

46:                                               ; preds = %42
  %47 = load i8*, i8** %9, align 8
  %48 = load i8, i8* %47, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp eq i32 %49, 92
  br i1 %50, label %51, label %53

51:                                               ; preds = %46
  %52 = load i8*, i8** %9, align 8
  store i8 95, i8* %52, align 1
  br label %53

53:                                               ; preds = %51, %46
  br label %54

54:                                               ; preds = %53
  %55 = load i8*, i8** %9, align 8
  %56 = getelementptr inbounds i8, i8* %55, i32 1
  store i8* %56, i8** %9, align 8
  br label %42

57:                                               ; preds = %42
  %58 = load i8*, i8** %8, align 8
  store i8* %58, i8** %3, align 8
  br label %59

59:                                               ; preds = %57, %33
  %60 = load i8*, i8** %3, align 8
  ret i8* %60
}

declare dso_local i32 @strlenW(i8*) #1

declare dso_local i8* @heap_alloc(i32) #1

declare dso_local i32 @strcpyW(i8*, i8*) #1

declare dso_local i32 @strcatW(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
