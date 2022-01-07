; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/crypt32/extr_chain.c_CRYPT_CriticalExtensionsSupported.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/crypt32/extr_chain.c_CRYPT_CriticalExtensionsSupported.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i64 }

@TRUE = common dso_local global i64 0, align 8
@szOID_BASIC_CONSTRAINTS = common dso_local global i32 0, align 4
@szOID_BASIC_CONSTRAINTS2 = common dso_local global i32 0, align 4
@szOID_NAME_CONSTRAINTS = common dso_local global i32 0, align 4
@szOID_KEY_USAGE = common dso_local global i32 0, align 4
@szOID_SUBJECT_ALT_NAME = common dso_local global i32 0, align 4
@szOID_SUBJECT_ALT_NAME2 = common dso_local global i32 0, align 4
@szOID_CERT_POLICIES = common dso_local global i32 0, align 4
@szOID_ENHANCED_KEY_USAGE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"unsupported critical extension %s\0A\00", align 1
@FALSE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_7__*)* @CRYPT_CriticalExtensionsSupported to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @CRYPT_CriticalExtensionsSupported(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  %6 = load i64, i64* @TRUE, align 8
  store i64 %6, i64* %3, align 8
  store i64 0, i64* %4, align 8
  br label %7

7:                                                ; preds = %110, %1
  %8 = load i64, i64* %3, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %18

10:                                               ; preds = %7
  %11 = load i64, i64* %4, align 8
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ult i64 %11, %16
  br label %18

18:                                               ; preds = %10, %7
  %19 = phi i1 [ false, %7 ], [ %17, %10 ]
  br i1 %19, label %20, label %113

20:                                               ; preds = %18
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 1
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %24, align 8
  %26 = load i64, i64* %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %109

31:                                               ; preds = %20
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 1
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %35, align 8
  %37 = load i64, i64* %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  store i32 %40, i32* %5, align 4
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* @szOID_BASIC_CONSTRAINTS, align 4
  %43 = call i32 @strcmp(i32 %41, i32 %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %47, label %45

45:                                               ; preds = %31
  %46 = load i64, i64* @TRUE, align 8
  store i64 %46, i64* %3, align 8
  br label %108

47:                                               ; preds = %31
  %48 = load i32, i32* %5, align 4
  %49 = load i32, i32* @szOID_BASIC_CONSTRAINTS2, align 4
  %50 = call i32 @strcmp(i32 %48, i32 %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %54, label %52

52:                                               ; preds = %47
  %53 = load i64, i64* @TRUE, align 8
  store i64 %53, i64* %3, align 8
  br label %107

54:                                               ; preds = %47
  %55 = load i32, i32* %5, align 4
  %56 = load i32, i32* @szOID_NAME_CONSTRAINTS, align 4
  %57 = call i32 @strcmp(i32 %55, i32 %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %61, label %59

59:                                               ; preds = %54
  %60 = load i64, i64* @TRUE, align 8
  store i64 %60, i64* %3, align 8
  br label %106

61:                                               ; preds = %54
  %62 = load i32, i32* %5, align 4
  %63 = load i32, i32* @szOID_KEY_USAGE, align 4
  %64 = call i32 @strcmp(i32 %62, i32 %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %68, label %66

66:                                               ; preds = %61
  %67 = load i64, i64* @TRUE, align 8
  store i64 %67, i64* %3, align 8
  br label %105

68:                                               ; preds = %61
  %69 = load i32, i32* %5, align 4
  %70 = load i32, i32* @szOID_SUBJECT_ALT_NAME, align 4
  %71 = call i32 @strcmp(i32 %69, i32 %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %75, label %73

73:                                               ; preds = %68
  %74 = load i64, i64* @TRUE, align 8
  store i64 %74, i64* %3, align 8
  br label %104

75:                                               ; preds = %68
  %76 = load i32, i32* %5, align 4
  %77 = load i32, i32* @szOID_SUBJECT_ALT_NAME2, align 4
  %78 = call i32 @strcmp(i32 %76, i32 %77)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %82, label %80

80:                                               ; preds = %75
  %81 = load i64, i64* @TRUE, align 8
  store i64 %81, i64* %3, align 8
  br label %103

82:                                               ; preds = %75
  %83 = load i32, i32* %5, align 4
  %84 = load i32, i32* @szOID_CERT_POLICIES, align 4
  %85 = call i32 @strcmp(i32 %83, i32 %84)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %89, label %87

87:                                               ; preds = %82
  %88 = load i64, i64* @TRUE, align 8
  store i64 %88, i64* %3, align 8
  br label %102

89:                                               ; preds = %82
  %90 = load i32, i32* %5, align 4
  %91 = load i32, i32* @szOID_ENHANCED_KEY_USAGE, align 4
  %92 = call i32 @strcmp(i32 %90, i32 %91)
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %96, label %94

94:                                               ; preds = %89
  %95 = load i64, i64* @TRUE, align 8
  store i64 %95, i64* %3, align 8
  br label %101

96:                                               ; preds = %89
  %97 = load i32, i32* %5, align 4
  %98 = call i32 @debugstr_a(i32 %97)
  %99 = call i32 @FIXME(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %98)
  %100 = load i64, i64* @FALSE, align 8
  store i64 %100, i64* %3, align 8
  br label %101

101:                                              ; preds = %96, %94
  br label %102

102:                                              ; preds = %101, %87
  br label %103

103:                                              ; preds = %102, %80
  br label %104

104:                                              ; preds = %103, %73
  br label %105

105:                                              ; preds = %104, %66
  br label %106

106:                                              ; preds = %105, %59
  br label %107

107:                                              ; preds = %106, %52
  br label %108

108:                                              ; preds = %107, %45
  br label %109

109:                                              ; preds = %108, %20
  br label %110

110:                                              ; preds = %109
  %111 = load i64, i64* %4, align 8
  %112 = add i64 %111, 1
  store i64 %112, i64* %4, align 8
  br label %7

113:                                              ; preds = %18
  %114 = load i64, i64* %3, align 8
  ret i64 %114
}

declare dso_local i32 @strcmp(i32, i32) #1

declare dso_local i32 @FIXME(i8*, i32) #1

declare dso_local i32 @debugstr_a(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
