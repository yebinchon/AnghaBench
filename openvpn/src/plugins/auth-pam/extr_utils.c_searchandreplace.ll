; ModuleID = '/home/carl/AnghaBench/openvpn/src/plugins/auth-pam/extr_utils.c_searchandreplace.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/plugins/auth-pam/extr_utils.c_searchandreplace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SIZE_MAX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @searchandreplace(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %17 = load i8*, i8** %5, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %25

19:                                               ; preds = %3
  %20 = load i8*, i8** %6, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %19
  %23 = load i8*, i8** %7, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %22, %19, %3
  store i8* null, i8** %4, align 8
  br label %101

26:                                               ; preds = %22
  %27 = load i8*, i8** %5, align 8
  %28 = call i64 @strlen(i8* %27)
  store i64 %28, i64* %8, align 8
  %29 = load i8*, i8** %7, align 8
  %30 = call i64 @strlen(i8* %29)
  store i64 %30, i64* %9, align 8
  %31 = load i64, i64* %8, align 8
  %32 = load i64, i64* %9, align 8
  %33 = mul i64 %31, %32
  store i64 %33, i64* %10, align 8
  %34 = load i64, i64* %8, align 8
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %43, label %36

36:                                               ; preds = %26
  %37 = load i8*, i8** %6, align 8
  %38 = call i64 @strlen(i8* %37)
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %36
  %41 = load i64, i64* %9, align 8
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %40, %36, %26
  store i8* null, i8** %4, align 8
  br label %101

44:                                               ; preds = %40
  %45 = load i64, i64* %10, align 8
  %46 = load i64, i64* @SIZE_MAX, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %54, label %48

48:                                               ; preds = %44
  %49 = load i64, i64* %10, align 8
  %50 = load i64, i64* %8, align 8
  %51 = udiv i64 %49, %50
  %52 = load i64, i64* %9, align 8
  %53 = icmp ne i64 %51, %52
  br label %54

54:                                               ; preds = %48, %44
  %55 = phi i1 [ true, %44 ], [ %53, %48 ]
  %56 = zext i1 %55 to i32
  store i32 %56, i32* %11, align 4
  %57 = load i32, i32* %11, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %54
  store i8* null, i8** %4, align 8
  br label %101

60:                                               ; preds = %54
  %61 = load i8*, i8** %5, align 8
  store i8* %61, i8** %12, align 8
  %62 = load i64, i64* %10, align 8
  %63 = add i64 %62, 1
  %64 = call i8* @llvm.stacksave()
  store i8* %64, i8** %14, align 8
  %65 = alloca i8, i64 %63, align 16
  store i64 %63, i64* %15, align 8
  %66 = getelementptr inbounds i8, i8* %65, i64 0
  store i8 0, i8* %66, align 16
  %67 = load i8*, i8** %12, align 8
  %68 = load i8*, i8** %6, align 8
  %69 = call i8* @strstr(i8* %67, i8* %68)
  store i8* %69, i8** %13, align 8
  %70 = load i8*, i8** %13, align 8
  %71 = icmp ne i8* %70, null
  br i1 %71, label %75, label %72

72:                                               ; preds = %60
  %73 = load i8*, i8** %5, align 8
  %74 = call i8* @strdup(i8* %73)
  store i8* %74, i8** %4, align 8
  store i32 1, i32* %16, align 4
  br label %99

75:                                               ; preds = %60
  br label %76

76:                                               ; preds = %79, %75
  %77 = load i8*, i8** %13, align 8
  %78 = icmp ne i8* %77, null
  br i1 %78, label %79, label %97

79:                                               ; preds = %76
  %80 = load i8*, i8** %12, align 8
  %81 = load i8*, i8** %13, align 8
  %82 = load i8*, i8** %12, align 8
  %83 = ptrtoint i8* %81 to i64
  %84 = ptrtoint i8* %82 to i64
  %85 = sub i64 %83, %84
  %86 = trunc i64 %85 to i32
  %87 = call i32 @strncat(i8* %65, i8* %80, i32 %86)
  %88 = load i8*, i8** %7, align 8
  %89 = call i32 @strcat(i8* %65, i8* %88)
  %90 = load i8*, i8** %13, align 8
  %91 = load i8*, i8** %6, align 8
  %92 = call i64 @strlen(i8* %91)
  %93 = getelementptr inbounds i8, i8* %90, i64 %92
  store i8* %93, i8** %12, align 8
  %94 = load i8*, i8** %12, align 8
  %95 = load i8*, i8** %6, align 8
  %96 = call i8* @strstr(i8* %94, i8* %95)
  store i8* %96, i8** %13, align 8
  br label %76

97:                                               ; preds = %76
  %98 = call i8* @strdup(i8* %65)
  store i8* %98, i8** %4, align 8
  store i32 1, i32* %16, align 4
  br label %99

99:                                               ; preds = %97, %72
  %100 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %100)
  br label %101

101:                                              ; preds = %99, %59, %43, %25
  %102 = load i8*, i8** %4, align 8
  ret i8* %102
}

declare dso_local i64 @strlen(i8*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i8* @strstr(i8*, i8*) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @strncat(i8*, i8*, i32) #1

declare dso_local i32 @strcat(i8*, i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
