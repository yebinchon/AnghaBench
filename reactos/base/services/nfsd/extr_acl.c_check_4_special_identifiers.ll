; ModuleID = '/home/carl/AnghaBench/reactos/base/services/nfsd/extr_acl.c_check_4_special_identifiers.c'
source_filename = "/home/carl/AnghaBench/reactos/base/services/nfsd/extr_acl.c_check_4_special_identifiers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ERROR_SUCCESS = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@ACE4_OWNER = common dso_local global i32 0, align 4
@WinCreatorOwnerSid = common dso_local global i32 0, align 4
@ACE4_GROUP = common dso_local global i32 0, align 4
@WinCreatorGroupSid = common dso_local global i32 0, align 4
@ACE4_EVERYONE = common dso_local global i32 0, align 4
@WinWorldSid = common dso_local global i32 0, align 4
@ACE4_NOBODY = common dso_local global i32 0, align 4
@WinNullSid = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*, i32*, i64*)* @check_4_special_identifiers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_4_special_identifiers(i8* %0, i32* %1, i32* %2, i64* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i64* %3, i64** %8, align 8
  %11 = load i32, i32* @ERROR_SUCCESS, align 4
  store i32 %11, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %12 = load i64, i64* @TRUE, align 8
  %13 = load i64*, i64** %8, align 8
  store i64 %12, i64* %13, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = load i32, i32* @ACE4_OWNER, align 4
  %16 = load i32, i32* @ACE4_OWNER, align 4
  %17 = call i64 @strlen(i32 %16)
  %18 = sub nsw i64 %17, 1
  %19 = call i32 @strncmp(i8* %14, i32 %15, i64 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %4
  %22 = load i32, i32* @WinCreatorOwnerSid, align 4
  store i32 %22, i32* %10, align 4
  br label %58

23:                                               ; preds = %4
  %24 = load i8*, i8** %5, align 8
  %25 = load i32, i32* @ACE4_GROUP, align 4
  %26 = load i32, i32* @ACE4_GROUP, align 4
  %27 = call i64 @strlen(i32 %26)
  %28 = sub nsw i64 %27, 1
  %29 = call i32 @strncmp(i8* %24, i32 %25, i64 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %23
  %32 = load i32, i32* @WinCreatorGroupSid, align 4
  store i32 %32, i32* %10, align 4
  br label %57

33:                                               ; preds = %23
  %34 = load i8*, i8** %5, align 8
  %35 = load i32, i32* @ACE4_EVERYONE, align 4
  %36 = load i32, i32* @ACE4_EVERYONE, align 4
  %37 = call i64 @strlen(i32 %36)
  %38 = sub nsw i64 %37, 1
  %39 = call i32 @strncmp(i8* %34, i32 %35, i64 %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %43, label %41

41:                                               ; preds = %33
  %42 = load i32, i32* @WinWorldSid, align 4
  store i32 %42, i32* %10, align 4
  br label %56

43:                                               ; preds = %33
  %44 = load i8*, i8** %5, align 8
  %45 = load i32, i32* @ACE4_NOBODY, align 4
  %46 = load i32, i32* @ACE4_NOBODY, align 4
  %47 = call i64 @strlen(i32 %46)
  %48 = call i32 @strncmp(i8* %44, i32 %45, i64 %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %52, label %50

50:                                               ; preds = %43
  %51 = load i32, i32* @WinNullSid, align 4
  store i32 %51, i32* %10, align 4
  br label %55

52:                                               ; preds = %43
  %53 = load i64, i64* @FALSE, align 8
  %54 = load i64*, i64** %8, align 8
  store i64 %53, i64* %54, align 8
  br label %55

55:                                               ; preds = %52, %50
  br label %56

56:                                               ; preds = %55, %41
  br label %57

57:                                               ; preds = %56, %31
  br label %58

58:                                               ; preds = %57, %21
  %59 = load i64*, i64** %8, align 8
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %58
  %63 = load i32, i32* %10, align 4
  %64 = load i32*, i32** %6, align 8
  %65 = load i32*, i32** %7, align 8
  %66 = call i32 @create_unknownsid(i32 %63, i32* %64, i32* %65)
  store i32 %66, i32* %9, align 4
  br label %67

67:                                               ; preds = %62, %58
  %68 = load i32, i32* %9, align 4
  ret i32 %68
}

declare dso_local i32 @strncmp(i8*, i32, i64) #1

declare dso_local i64 @strlen(i32) #1

declare dso_local i32 @create_unknownsid(i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
