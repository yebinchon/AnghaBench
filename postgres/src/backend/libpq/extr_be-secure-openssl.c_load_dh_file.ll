; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/libpq/extr_be-secure-openssl.c_load_dh_file.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/libpq/extr_be-secure-openssl.c_load_dh_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@FATAL = common dso_local global i32 0, align 4
@LOG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"could not open DH parameters file \22%s\22: %m\00", align 1
@ERRCODE_CONFIG_FILE_ERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"could not load DH parameters file: %s\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"invalid DH parameters: %s\00", align 1
@DH_CHECK_P_NOT_PRIME = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [38 x i8] c"invalid DH parameters: p is not prime\00", align 1
@DH_NOT_SUITABLE_GENERATOR = common dso_local global i32 0, align 4
@DH_CHECK_P_NOT_SAFE_PRIME = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [64 x i8] c"invalid DH parameters: neither suitable generator or safe prime\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i32)* @load_dh_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @load_dh_file(i8* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* null, i32** %7, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = call i32* @AllocateFile(i8* %9, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %10, i32** %6, align 8
  %11 = icmp eq i32* %10, null
  br i1 %11, label %12, label %25

12:                                               ; preds = %2
  %13 = load i32, i32* %5, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %12
  %16 = load i32, i32* @FATAL, align 4
  br label %19

17:                                               ; preds = %12
  %18 = load i32, i32* @LOG, align 4
  br label %19

19:                                               ; preds = %17, %15
  %20 = phi i32 [ %16, %15 ], [ %18, %17 ]
  %21 = call i32 (...) @errcode_for_file_access()
  %22 = load i8*, i8** %4, align 8
  %23 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i8* %22)
  %24 = call i32 @ereport(i32 %20, i32 %23)
  store i32* null, i32** %3, align 8
  br label %109

25:                                               ; preds = %2
  %26 = load i32*, i32** %6, align 8
  %27 = call i32* @PEM_read_DHparams(i32* %26, i32* null, i32* null, i32* null)
  store i32* %27, i32** %7, align 8
  %28 = load i32*, i32** %6, align 8
  %29 = call i32 @FreeFile(i32* %28)
  %30 = load i32*, i32** %7, align 8
  %31 = icmp eq i32* %30, null
  br i1 %31, label %32, label %47

32:                                               ; preds = %25
  %33 = load i32, i32* %5, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %32
  %36 = load i32, i32* @FATAL, align 4
  br label %39

37:                                               ; preds = %32
  %38 = load i32, i32* @LOG, align 4
  br label %39

39:                                               ; preds = %37, %35
  %40 = phi i32 [ %36, %35 ], [ %38, %37 ]
  %41 = load i32, i32* @ERRCODE_CONFIG_FILE_ERROR, align 4
  %42 = call i32 @errcode(i32 %41)
  %43 = call i32 (...) @ERR_get_error()
  %44 = call i32 @SSLerrmessage(i32 %43)
  %45 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %44)
  %46 = call i32 @ereport(i32 %40, i32 %45)
  store i32* null, i32** %3, align 8
  br label %109

47:                                               ; preds = %25
  %48 = load i32*, i32** %7, align 8
  %49 = call i64 @DH_check(i32* %48, i32* %8)
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %66

51:                                               ; preds = %47
  %52 = load i32, i32* %5, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %51
  %55 = load i32, i32* @FATAL, align 4
  br label %58

56:                                               ; preds = %51
  %57 = load i32, i32* @LOG, align 4
  br label %58

58:                                               ; preds = %56, %54
  %59 = phi i32 [ %55, %54 ], [ %57, %56 ]
  %60 = load i32, i32* @ERRCODE_CONFIG_FILE_ERROR, align 4
  %61 = call i32 @errcode(i32 %60)
  %62 = call i32 (...) @ERR_get_error()
  %63 = call i32 @SSLerrmessage(i32 %62)
  %64 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %63)
  %65 = call i32 @ereport(i32 %59, i32 %64)
  store i32* null, i32** %3, align 8
  br label %109

66:                                               ; preds = %47
  %67 = load i32, i32* %8, align 4
  %68 = load i32, i32* @DH_CHECK_P_NOT_PRIME, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %84

71:                                               ; preds = %66
  %72 = load i32, i32* %5, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %71
  %75 = load i32, i32* @FATAL, align 4
  br label %78

76:                                               ; preds = %71
  %77 = load i32, i32* @LOG, align 4
  br label %78

78:                                               ; preds = %76, %74
  %79 = phi i32 [ %75, %74 ], [ %77, %76 ]
  %80 = load i32, i32* @ERRCODE_CONFIG_FILE_ERROR, align 4
  %81 = call i32 @errcode(i32 %80)
  %82 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0))
  %83 = call i32 @ereport(i32 %79, i32 %82)
  store i32* null, i32** %3, align 8
  br label %109

84:                                               ; preds = %66
  %85 = load i32, i32* %8, align 4
  %86 = load i32, i32* @DH_NOT_SUITABLE_GENERATOR, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %107

89:                                               ; preds = %84
  %90 = load i32, i32* %8, align 4
  %91 = load i32, i32* @DH_CHECK_P_NOT_SAFE_PRIME, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %107

94:                                               ; preds = %89
  %95 = load i32, i32* %5, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %94
  %98 = load i32, i32* @FATAL, align 4
  br label %101

99:                                               ; preds = %94
  %100 = load i32, i32* @LOG, align 4
  br label %101

101:                                              ; preds = %99, %97
  %102 = phi i32 [ %98, %97 ], [ %100, %99 ]
  %103 = load i32, i32* @ERRCODE_CONFIG_FILE_ERROR, align 4
  %104 = call i32 @errcode(i32 %103)
  %105 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.5, i64 0, i64 0))
  %106 = call i32 @ereport(i32 %102, i32 %105)
  store i32* null, i32** %3, align 8
  br label %109

107:                                              ; preds = %89, %84
  %108 = load i32*, i32** %7, align 8
  store i32* %108, i32** %3, align 8
  br label %109

109:                                              ; preds = %107, %101, %78, %58, %39, %19
  %110 = load i32*, i32** %3, align 8
  ret i32* %110
}

declare dso_local i32* @AllocateFile(i8*, i8*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode_for_file_access(...) #1

declare dso_local i32 @errmsg(i8*, ...) #1

declare dso_local i32* @PEM_read_DHparams(i32*, i32*, i32*, i32*) #1

declare dso_local i32 @FreeFile(i32*) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @SSLerrmessage(i32) #1

declare dso_local i32 @ERR_get_error(...) #1

declare dso_local i64 @DH_check(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
