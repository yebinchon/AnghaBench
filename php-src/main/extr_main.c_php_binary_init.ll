; ModuleID = '/home/carl/AnghaBench/php-src/main/extr_main.c_php_binary_init.c'
source_filename = "/home/carl/AnghaBench/php-src/main/extr_main.c_php_binary_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8* }
%struct.TYPE_4__ = type { i32 }

@sapi_module = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@MAXPATHLEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"PATH\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@X_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @php_binary_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @php_binary_init() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_4__, align 4
  %10 = alloca i8*, align 8
  store i8* null, i8** %1, align 8
  %11 = load i8*, i8** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @sapi_module, i32 0, i32 0), align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %13, label %89

13:                                               ; preds = %0
  %14 = load i32, i32* @MAXPATHLEN, align 4
  %15 = call i64 @malloc(i32 %14)
  %16 = inttoptr i64 %15 to i8*
  store i8* %16, i8** %1, align 8
  %17 = load i8*, i8** %1, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %74

19:                                               ; preds = %13
  %20 = load i8*, i8** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @sapi_module, i32 0, i32 0), align 8
  %21 = call i32 @strchr(i8* %20, i8 signext 47)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %74, label %23

23:                                               ; preds = %19
  store i32 0, i32* %4, align 4
  %24 = call i8* @getenv(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i8* %24, i8** %2, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %67

26:                                               ; preds = %23
  %27 = load i32, i32* @MAXPATHLEN, align 4
  %28 = zext i32 %27 to i64
  %29 = call i8* @llvm.stacksave()
  store i8* %29, i8** %6, align 8
  %30 = alloca i8, i64 %28, align 16
  store i64 %28, i64* %7, align 8
  store i8* null, i8** %8, align 8
  %31 = load i8*, i8** %2, align 8
  %32 = call i8* @estrdup(i8* %31)
  store i8* %32, i8** %3, align 8
  %33 = load i8*, i8** %3, align 8
  %34 = call i8* @php_strtok_r(i8* %33, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8** %8)
  store i8* %34, i8** %5, align 8
  br label %35

35:                                               ; preds = %61, %26
  %36 = load i8*, i8** %5, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %38, label %63

38:                                               ; preds = %35
  %39 = load i32, i32* @MAXPATHLEN, align 4
  %40 = load i8*, i8** %5, align 8
  %41 = load i8*, i8** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @sapi_module, i32 0, i32 0), align 8
  %42 = call i32 @snprintf(i8* %30, i32 %39, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* %40, i8* %41)
  %43 = load i8*, i8** %1, align 8
  %44 = call i64 @VCWD_REALPATH(i8* %30, i8* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %61

46:                                               ; preds = %38
  %47 = load i8*, i8** %1, align 8
  %48 = load i32, i32* @X_OK, align 4
  %49 = call i64 @VCWD_ACCESS(i8* %47, i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %61, label %51

51:                                               ; preds = %46
  %52 = load i8*, i8** %1, align 8
  %53 = call i64 @VCWD_STAT(i8* %52, %struct.TYPE_4__* %9)
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i64 @S_ISREG(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %55
  store i32 1, i32* %4, align 4
  br label %63

61:                                               ; preds = %55, %51, %46, %38
  %62 = call i8* @php_strtok_r(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8** %8)
  store i8* %62, i8** %5, align 8
  br label %35

63:                                               ; preds = %60, %35
  %64 = load i8*, i8** %3, align 8
  %65 = call i32 @efree(i8* %64)
  %66 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %66)
  br label %67

67:                                               ; preds = %63, %23
  %68 = load i32, i32* %4, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %73, label %70

70:                                               ; preds = %67
  %71 = load i8*, i8** %1, align 8
  %72 = call i32 @free(i8* %71)
  store i8* null, i8** %1, align 8
  br label %73

73:                                               ; preds = %70, %67
  br label %88

74:                                               ; preds = %19, %13
  %75 = load i8*, i8** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @sapi_module, i32 0, i32 0), align 8
  %76 = load i8*, i8** %1, align 8
  %77 = call i64 @VCWD_REALPATH(i8* %75, i8* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %84

79:                                               ; preds = %74
  %80 = load i8*, i8** %1, align 8
  %81 = load i32, i32* @X_OK, align 4
  %82 = call i64 @VCWD_ACCESS(i8* %80, i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %79, %74
  %85 = load i8*, i8** %1, align 8
  %86 = call i32 @free(i8* %85)
  store i8* null, i8** %1, align 8
  br label %87

87:                                               ; preds = %84, %79
  br label %88

88:                                               ; preds = %87, %73
  br label %89

89:                                               ; preds = %88, %0
  %90 = load i8*, i8** %1, align 8
  store i8* %90, i8** %10, align 8
  ret void
}

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @strchr(i8*, i8 signext) #1

declare dso_local i8* @getenv(i8*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i8* @estrdup(i8*) #1

declare dso_local i8* @php_strtok_r(i8*, i8*, i8**) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*) #1

declare dso_local i64 @VCWD_REALPATH(i8*, i8*) #1

declare dso_local i64 @VCWD_ACCESS(i8*, i32) #1

declare dso_local i64 @VCWD_STAT(i8*, %struct.TYPE_4__*) #1

declare dso_local i64 @S_ISREG(i32) #1

declare dso_local i32 @efree(i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
