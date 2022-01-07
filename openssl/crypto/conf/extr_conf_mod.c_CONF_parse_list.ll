; ModuleID = '/home/carl/AnghaBench/openssl/crypto/conf/extr_conf_mod.c_CONF_parse_list.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/conf/extr_conf_mod.c_CONF_parse_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CONF_F_CONF_PARSE_LIST = common dso_local global i32 0, align 4
@CONF_R_LIST_CANNOT_BE_NULL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @CONF_parse_list(i8* %0, i32 %1, i32 %2, i32 (i8*, i32, i8*)* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32 (i8*, i32, i8*)*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  store i8* %0, i8** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 (i8*, i32, i8*)* %3, i32 (i8*, i32, i8*)** %10, align 8
  store i8* %4, i8** %11, align 8
  %16 = load i8*, i8** %7, align 8
  %17 = icmp eq i8* %16, null
  br i1 %17, label %18, label %22

18:                                               ; preds = %5
  %19 = load i32, i32* @CONF_F_CONF_PARSE_LIST, align 4
  %20 = load i32, i32* @CONF_R_LIST_CANNOT_BE_NULL, align 4
  %21 = call i32 @CONFerr(i32 %19, i32 %20)
  store i32 0, i32* %6, align 4
  br label %110

22:                                               ; preds = %5
  %23 = load i8*, i8** %7, align 8
  store i8* %23, i8** %13, align 8
  br label %24

24:                                               ; preds = %107, %22
  %25 = load i32, i32* %9, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %44

27:                                               ; preds = %24
  br label %28

28:                                               ; preds = %40, %27
  %29 = load i8*, i8** %13, align 8
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %28
  %34 = load i8*, i8** %13, align 8
  %35 = load i8, i8* %34, align 1
  %36 = call i64 @isspace(i8 zeroext %35)
  %37 = icmp ne i64 %36, 0
  br label %38

38:                                               ; preds = %33, %28
  %39 = phi i1 [ false, %28 ], [ %37, %33 ]
  br i1 %39, label %40, label %43

40:                                               ; preds = %38
  %41 = load i8*, i8** %13, align 8
  %42 = getelementptr inbounds i8, i8* %41, i32 1
  store i8* %42, i8** %13, align 8
  br label %28

43:                                               ; preds = %38
  br label %44

44:                                               ; preds = %43, %24
  %45 = load i8*, i8** %13, align 8
  %46 = load i32, i32* %8, align 4
  %47 = call i8* @strchr(i8* %45, i32 %46)
  store i8* %47, i8** %15, align 8
  %48 = load i8*, i8** %15, align 8
  %49 = load i8*, i8** %13, align 8
  %50 = icmp eq i8* %48, %49
  br i1 %50, label %56, label %51

51:                                               ; preds = %44
  %52 = load i8*, i8** %13, align 8
  %53 = load i8, i8* %52, align 1
  %54 = sext i8 %53 to i32
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %51, %44
  %57 = load i32 (i8*, i32, i8*)*, i32 (i8*, i32, i8*)** %10, align 8
  %58 = load i8*, i8** %11, align 8
  %59 = call i32 %57(i8* null, i32 0, i8* %58)
  store i32 %59, i32* %12, align 4
  br label %98

60:                                               ; preds = %51
  %61 = load i8*, i8** %15, align 8
  %62 = icmp ne i8* %61, null
  br i1 %62, label %63, label %66

63:                                               ; preds = %60
  %64 = load i8*, i8** %15, align 8
  %65 = getelementptr inbounds i8, i8* %64, i64 -1
  store i8* %65, i8** %14, align 8
  br label %73

66:                                               ; preds = %60
  %67 = load i8*, i8** %13, align 8
  %68 = load i8*, i8** %13, align 8
  %69 = call i32 @strlen(i8* %68)
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i8, i8* %67, i64 %70
  %72 = getelementptr inbounds i8, i8* %71, i64 -1
  store i8* %72, i8** %14, align 8
  br label %73

73:                                               ; preds = %66, %63
  %74 = load i32, i32* %9, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %86

76:                                               ; preds = %73
  br label %77

77:                                               ; preds = %82, %76
  %78 = load i8*, i8** %14, align 8
  %79 = load i8, i8* %78, align 1
  %80 = call i64 @isspace(i8 zeroext %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %77
  %83 = load i8*, i8** %14, align 8
  %84 = getelementptr inbounds i8, i8* %83, i32 -1
  store i8* %84, i8** %14, align 8
  br label %77

85:                                               ; preds = %77
  br label %86

86:                                               ; preds = %85, %73
  %87 = load i32 (i8*, i32, i8*)*, i32 (i8*, i32, i8*)** %10, align 8
  %88 = load i8*, i8** %13, align 8
  %89 = load i8*, i8** %14, align 8
  %90 = load i8*, i8** %13, align 8
  %91 = ptrtoint i8* %89 to i64
  %92 = ptrtoint i8* %90 to i64
  %93 = sub i64 %91, %92
  %94 = add nsw i64 %93, 1
  %95 = trunc i64 %94 to i32
  %96 = load i8*, i8** %11, align 8
  %97 = call i32 %87(i8* %88, i32 %95, i8* %96)
  store i32 %97, i32* %12, align 4
  br label %98

98:                                               ; preds = %86, %56
  %99 = load i32, i32* %12, align 4
  %100 = icmp sle i32 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %98
  %102 = load i32, i32* %12, align 4
  store i32 %102, i32* %6, align 4
  br label %110

103:                                              ; preds = %98
  %104 = load i8*, i8** %15, align 8
  %105 = icmp eq i8* %104, null
  br i1 %105, label %106, label %107

106:                                              ; preds = %103
  store i32 1, i32* %6, align 4
  br label %110

107:                                              ; preds = %103
  %108 = load i8*, i8** %15, align 8
  %109 = getelementptr inbounds i8, i8* %108, i64 1
  store i8* %109, i8** %13, align 8
  br label %24

110:                                              ; preds = %106, %101, %18
  %111 = load i32, i32* %6, align 4
  ret i32 %111
}

declare dso_local i32 @CONFerr(i32, i32) #1

declare dso_local i64 @isspace(i8 zeroext) #1

declare dso_local i8* @strchr(i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
