; ModuleID = '/home/carl/AnghaBench/openssl/crypto/cmp/extr_cmp_util.c_parse_level.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/cmp/extr_cmp_util.c_parse_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@max_level_len = common dso_local global i32 0, align 4
@OSSL_CMP_LOG_PREFIX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"EMERG\00", align 1
@OSSL_CMP_LOG_EMERG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"ALERT\00", align 1
@OSSL_CMP_LOG_ALERT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"CRIT\00", align 1
@OSSL_CMP_LOG_CRIT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c"ERROR\00", align 1
@OSSL_CMP_LOG_ERR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"WARN\00", align 1
@OSSL_CMP_LOG_WARNING = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [5 x i8] c"NOTE\00", align 1
@OSSL_CMP_LOG_NOTICE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [5 x i8] c"INFO\00", align 1
@OSSL_CMP_LOG_INFO = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [6 x i8] c"DEBUG\00", align 1
@OSSL_CMP_LOG_DEBUG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @parse_level to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_level(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = call i8* @strchr(i8* %9, i8 signext 58)
  store i8* %10, i8** %4, align 8
  %11 = load i32, i32* @max_level_len, align 4
  %12 = add nsw i32 %11, 1
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %6, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %7, align 8
  %16 = load i8*, i8** %4, align 8
  %17 = icmp eq i8* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  store i32 1, i32* %8, align 4
  br label %104

19:                                               ; preds = %1
  %20 = load i8*, i8** %3, align 8
  %21 = load i32, i32* @OSSL_CMP_LOG_PREFIX, align 4
  %22 = load i32, i32* @OSSL_CMP_LOG_PREFIX, align 4
  %23 = call i32 @strlen(i32 %22)
  %24 = call i64 @strncmp(i8* %20, i32 %21, i32 %23)
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %19
  %27 = load i32, i32* @OSSL_CMP_LOG_PREFIX, align 4
  %28 = call i32 @strlen(i32 %27)
  %29 = load i8*, i8** %3, align 8
  %30 = sext i32 %28 to i64
  %31 = getelementptr inbounds i8, i8* %29, i64 %30
  store i8* %31, i8** %3, align 8
  br label %32

32:                                               ; preds = %26, %19
  %33 = load i8*, i8** %4, align 8
  %34 = load i8*, i8** %3, align 8
  %35 = ptrtoint i8* %33 to i64
  %36 = ptrtoint i8* %34 to i64
  %37 = sub i64 %35, %36
  %38 = trunc i64 %37 to i32
  store i32 %38, i32* %5, align 4
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* @max_level_len, align 4
  %41 = icmp sgt i32 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %32
  store i32 -1, i32* %2, align 4
  store i32 1, i32* %8, align 4
  br label %104

43:                                               ; preds = %32
  %44 = load i8*, i8** %3, align 8
  %45 = load i32, i32* %5, align 4
  %46 = add nsw i32 %45, 1
  %47 = call i32 @OPENSSL_strlcpy(i8* %15, i8* %44, i32 %46)
  %48 = call i64 @strcmp(i8* %15, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %43
  %51 = load i32, i32* @OSSL_CMP_LOG_EMERG, align 4
  br label %102

52:                                               ; preds = %43
  %53 = call i64 @strcmp(i8* %15, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %52
  %56 = load i32, i32* @OSSL_CMP_LOG_ALERT, align 4
  br label %100

57:                                               ; preds = %52
  %58 = call i64 @strcmp(i8* %15, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %57
  %61 = load i32, i32* @OSSL_CMP_LOG_CRIT, align 4
  br label %98

62:                                               ; preds = %57
  %63 = call i64 @strcmp(i8* %15, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %64 = icmp eq i64 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %62
  %66 = load i32, i32* @OSSL_CMP_LOG_ERR, align 4
  br label %96

67:                                               ; preds = %62
  %68 = call i64 @strcmp(i8* %15, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %67
  %71 = load i32, i32* @OSSL_CMP_LOG_WARNING, align 4
  br label %94

72:                                               ; preds = %67
  %73 = call i64 @strcmp(i8* %15, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %74 = icmp eq i64 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %72
  %76 = load i32, i32* @OSSL_CMP_LOG_NOTICE, align 4
  br label %92

77:                                               ; preds = %72
  %78 = call i64 @strcmp(i8* %15, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  %79 = icmp eq i64 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %77
  %81 = load i32, i32* @OSSL_CMP_LOG_INFO, align 4
  br label %90

82:                                               ; preds = %77
  %83 = call i64 @strcmp(i8* %15, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0))
  %84 = icmp eq i64 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %82
  %86 = load i32, i32* @OSSL_CMP_LOG_DEBUG, align 4
  br label %88

87:                                               ; preds = %82
  br label %88

88:                                               ; preds = %87, %85
  %89 = phi i32 [ %86, %85 ], [ -1, %87 ]
  br label %90

90:                                               ; preds = %88, %80
  %91 = phi i32 [ %81, %80 ], [ %89, %88 ]
  br label %92

92:                                               ; preds = %90, %75
  %93 = phi i32 [ %76, %75 ], [ %91, %90 ]
  br label %94

94:                                               ; preds = %92, %70
  %95 = phi i32 [ %71, %70 ], [ %93, %92 ]
  br label %96

96:                                               ; preds = %94, %65
  %97 = phi i32 [ %66, %65 ], [ %95, %94 ]
  br label %98

98:                                               ; preds = %96, %60
  %99 = phi i32 [ %61, %60 ], [ %97, %96 ]
  br label %100

100:                                              ; preds = %98, %55
  %101 = phi i32 [ %56, %55 ], [ %99, %98 ]
  br label %102

102:                                              ; preds = %100, %50
  %103 = phi i32 [ %51, %50 ], [ %101, %100 ]
  store i32 %103, i32* %2, align 4
  store i32 1, i32* %8, align 4
  br label %104

104:                                              ; preds = %102, %42, %18
  %105 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %105)
  %106 = load i32, i32* %2, align 4
  ret i32 %106
}

declare dso_local i8* @strchr(i8*, i8 signext) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i64 @strncmp(i8*, i32, i32) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @OPENSSL_strlcpy(i8*, i8*, i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
