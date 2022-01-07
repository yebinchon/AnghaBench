; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/crypt32/extr_str.c_CRYPT_GetNextKeyW.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/crypt32/extr_str.c_CRYPT_GetNextKeyW.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.X500TokenW = type { i8*, i8* }

@TRUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"missing equals char at %s\0A\00", align 1
@CRYPT_E_INVALID_X500_STRING = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.X500TokenW*, i8**)* @CRYPT_GetNextKeyW to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @CRYPT_GetNextKeyW(i8* %0, %struct.X500TokenW* %1, i8** %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.X500TokenW*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.X500TokenW* %1, %struct.X500TokenW** %5, align 8
  store i8** %2, i8*** %6, align 8
  %8 = load i32, i32* @TRUE, align 4
  store i32 %8, i32* %7, align 4
  br label %9

9:                                                ; preds = %21, %3
  %10 = load i8*, i8** %4, align 8
  %11 = load i8, i8* %10, align 1
  %12 = sext i8 %11 to i32
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %9
  %15 = load i8*, i8** %4, align 8
  %16 = load i8, i8* %15, align 1
  %17 = call i64 @isspaceW(i8 signext %16)
  %18 = icmp ne i64 %17, 0
  br label %19

19:                                               ; preds = %14, %9
  %20 = phi i1 [ false, %9 ], [ %18, %14 ]
  br i1 %20, label %21, label %24

21:                                               ; preds = %19
  %22 = load i8*, i8** %4, align 8
  %23 = getelementptr inbounds i8, i8* %22, i32 1
  store i8* %23, i8** %4, align 8
  br label %9

24:                                               ; preds = %19
  %25 = load i8*, i8** %4, align 8
  %26 = load i8, i8* %25, align 1
  %27 = icmp ne i8 %26, 0
  br i1 %27, label %28, label %90

28:                                               ; preds = %24
  %29 = load i8*, i8** %4, align 8
  %30 = load %struct.X500TokenW*, %struct.X500TokenW** %5, align 8
  %31 = getelementptr inbounds %struct.X500TokenW, %struct.X500TokenW* %30, i32 0, i32 0
  store i8* %29, i8** %31, align 8
  br label %32

32:                                               ; preds = %50, %28
  %33 = load i8*, i8** %4, align 8
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %48

37:                                               ; preds = %32
  %38 = load i8*, i8** %4, align 8
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp ne i32 %40, 61
  br i1 %41, label %42, label %48

42:                                               ; preds = %37
  %43 = load i8*, i8** %4, align 8
  %44 = load i8, i8* %43, align 1
  %45 = call i64 @isspaceW(i8 signext %44)
  %46 = icmp ne i64 %45, 0
  %47 = xor i1 %46, true
  br label %48

48:                                               ; preds = %42, %37, %32
  %49 = phi i1 [ false, %37 ], [ false, %32 ], [ %47, %42 ]
  br i1 %49, label %50, label %53

50:                                               ; preds = %48
  %51 = load i8*, i8** %4, align 8
  %52 = getelementptr inbounds i8, i8* %51, i32 1
  store i8* %52, i8** %4, align 8
  br label %32

53:                                               ; preds = %48
  %54 = load i8*, i8** %4, align 8
  %55 = load i8, i8* %54, align 1
  %56 = sext i8 %55 to i32
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %72

58:                                               ; preds = %53
  %59 = load i8*, i8** %4, align 8
  %60 = load i8, i8* %59, align 1
  %61 = sext i8 %60 to i32
  %62 = icmp eq i32 %61, 61
  br i1 %62, label %68, label %63

63:                                               ; preds = %58
  %64 = load i8*, i8** %4, align 8
  %65 = load i8, i8* %64, align 1
  %66 = call i64 @isspaceW(i8 signext %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %63, %58
  %69 = load i8*, i8** %4, align 8
  %70 = load %struct.X500TokenW*, %struct.X500TokenW** %5, align 8
  %71 = getelementptr inbounds %struct.X500TokenW, %struct.X500TokenW* %70, i32 0, i32 1
  store i8* %69, i8** %71, align 8
  br label %89

72:                                               ; preds = %63, %53
  %73 = load %struct.X500TokenW*, %struct.X500TokenW** %5, align 8
  %74 = getelementptr inbounds %struct.X500TokenW, %struct.X500TokenW* %73, i32 0, i32 0
  %75 = load i8*, i8** %74, align 8
  %76 = call i32 @debugstr_w(i8* %75)
  %77 = call i32 @TRACE(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %76)
  %78 = load i8**, i8*** %6, align 8
  %79 = icmp ne i8** %78, null
  br i1 %79, label %80, label %85

80:                                               ; preds = %72
  %81 = load %struct.X500TokenW*, %struct.X500TokenW** %5, align 8
  %82 = getelementptr inbounds %struct.X500TokenW, %struct.X500TokenW* %81, i32 0, i32 0
  %83 = load i8*, i8** %82, align 8
  %84 = load i8**, i8*** %6, align 8
  store i8* %83, i8** %84, align 8
  br label %85

85:                                               ; preds = %80, %72
  %86 = load i32, i32* @CRYPT_E_INVALID_X500_STRING, align 4
  %87 = call i32 @SetLastError(i32 %86)
  %88 = load i32, i32* @FALSE, align 4
  store i32 %88, i32* %7, align 4
  br label %89

89:                                               ; preds = %85, %68
  br label %93

90:                                               ; preds = %24
  %91 = load %struct.X500TokenW*, %struct.X500TokenW** %5, align 8
  %92 = getelementptr inbounds %struct.X500TokenW, %struct.X500TokenW* %91, i32 0, i32 0
  store i8* null, i8** %92, align 8
  br label %93

93:                                               ; preds = %90, %89
  %94 = load i32, i32* %7, align 4
  ret i32 %94
}

declare dso_local i64 @isspaceW(i8 signext) #1

declare dso_local i32 @TRACE(i8*, i32) #1

declare dso_local i32 @debugstr_w(i8*) #1

declare dso_local i32 @SetLastError(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
