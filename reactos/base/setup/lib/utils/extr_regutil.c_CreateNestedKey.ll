; ModuleID = '/home/carl/AnghaBench/reactos/base/setup/lib/utils/extr_regutil.c_CreateNestedKey.c'
source_filename = "/home/carl/AnghaBench/reactos/base/setup/lib/utils/extr_regutil.c_CreateNestedKey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32*, i32 }

@KEY_ALL_ACCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"NtCreateKey(%wZ) called (Status %lx)\0A\00", align 1
@STATUS_OBJECT_NAME_NOT_FOUND = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [55 x i8] c"CreateNestedKey: NtCreateKey(%wZ) failed (Status %lx)\0A\00", align 1
@STATUS_UNSUCCESSFUL = common dso_local global i64 0, align 8
@KEY_CREATE_SUB_KEY = common dso_local global i32 0, align 4
@REG_OPTION_NON_VOLATILE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@STATUS_SUCCESS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @CreateNestedKey(i32* %0, i32 %1, %struct.TYPE_13__* %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_13__, align 8
  %11 = alloca %struct.TYPE_12__, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.TYPE_13__* %2, %struct.TYPE_13__** %8, align 8
  store i32 %3, i32* %9, align 4
  %17 = load i32*, i32** %6, align 8
  %18 = load i32, i32* @KEY_ALL_ACCESS, align 4
  %19 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %20 = load i32, i32* %9, align 4
  %21 = call i64 @NtCreateKey(i32* %17, i32 %18, %struct.TYPE_13__* %19, i32 0, i32* null, i32 %20, i32* %12)
  store i64 %21, i64* %13, align 8
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %23, align 8
  %25 = load i64, i64* %13, align 8
  %26 = call i32 @DPRINT(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), %struct.TYPE_12__* %24, i64 %25)
  %27 = load i64, i64* %13, align 8
  %28 = load i64, i64* @STATUS_OBJECT_NAME_NOT_FOUND, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %42

30:                                               ; preds = %4
  %31 = load i64, i64* %13, align 8
  %32 = call i32 @NT_SUCCESS(i64 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %40, label %34

34:                                               ; preds = %30
  %35 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %36, align 8
  %38 = load i64, i64* %13, align 8
  %39 = call i32 @DPRINT1(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_12__* %37, i64 %38)
  br label %40

40:                                               ; preds = %34, %30
  %41 = load i64, i64* %13, align 8
  store i64 %41, i64* %5, align 8
  br label %152

42:                                               ; preds = %4
  %43 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %44 = call i32 @RtlCopyMemory(%struct.TYPE_13__* %10, %struct.TYPE_13__* %43, i32 8)
  %45 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = call i32 @RtlCreateUnicodeString(%struct.TYPE_12__* %11, i32* %49)
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 0
  store %struct.TYPE_12__* %11, %struct.TYPE_12__** %51, align 8
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  store i32 %53, i32* %14, align 4
  br label %54

54:                                               ; preds = %97, %42
  %55 = load i64, i64* %13, align 8
  %56 = load i64, i64* @STATUS_OBJECT_NAME_NOT_FOUND, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %98

58:                                               ; preds = %54
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = call i32* @wcsrchr(i32* %60, i8 signext 92)
  store i32* %61, i32** %15, align 8
  %62 = load i32*, i32** %15, align 8
  %63 = icmp eq i32* %62, null
  br i1 %63, label %69, label %64

64:                                               ; preds = %58
  %65 = load i32*, i32** %15, align 8
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = icmp eq i32* %65, %67
  br i1 %68, label %69, label %71

69:                                               ; preds = %64, %58
  %70 = load i64, i64* @STATUS_UNSUCCESSFUL, align 8
  store i64 %70, i64* %13, align 8
  br label %98

71:                                               ; preds = %64
  %72 = load i32*, i32** %15, align 8
  store i32 0, i32* %72, align 4
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  %75 = call i32 @wcslen(i32* %74)
  %76 = sext i32 %75 to i64
  %77 = mul i64 %76, 4
  %78 = trunc i64 %77 to i32
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 1
  store i32 %78, i32* %79, align 8
  %80 = load i32, i32* @KEY_CREATE_SUB_KEY, align 4
  %81 = load i32, i32* @REG_OPTION_NON_VOLATILE, align 4
  %82 = call i64 @NtCreateKey(i32* %16, i32 %80, %struct.TYPE_13__* %10, i32 0, i32* null, i32 %81, i32* %12)
  store i64 %82, i64* %13, align 8
  %83 = load i64, i64* %13, align 8
  %84 = call i32 @DPRINT(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), %struct.TYPE_12__* %11, i64 %83)
  %85 = load i64, i64* %13, align 8
  %86 = call i32 @NT_SUCCESS(i64 %85)
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %97, label %88

88:                                               ; preds = %71
  %89 = load i64, i64* %13, align 8
  %90 = load i64, i64* @STATUS_OBJECT_NAME_NOT_FOUND, align 8
  %91 = icmp ne i64 %89, %90
  br i1 %91, label %92, label %97

92:                                               ; preds = %88
  %93 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 0
  %94 = load %struct.TYPE_12__*, %struct.TYPE_12__** %93, align 8
  %95 = load i64, i64* %13, align 8
  %96 = call i32 @DPRINT1(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_12__* %94, i64 %95)
  br label %97

97:                                               ; preds = %92, %88, %71
  br label %54

98:                                               ; preds = %69, %54
  %99 = load i64, i64* %13, align 8
  %100 = call i32 @NT_SUCCESS(i64 %99)
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %105, label %102

102:                                              ; preds = %98
  %103 = call i32 @RtlFreeUnicodeString(%struct.TYPE_12__* %11)
  %104 = load i64, i64* %13, align 8
  store i64 %104, i64* %5, align 8
  br label %152

105:                                              ; preds = %98
  br label %106

106:                                              ; preds = %148, %105
  %107 = load i64, i64* @TRUE, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %149

109:                                              ; preds = %106
  %110 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 1
  %111 = load i32, i32* %110, align 8
  %112 = load i32, i32* %14, align 4
  %113 = icmp eq i32 %111, %112
  br i1 %113, label %114, label %118

114:                                              ; preds = %109
  %115 = load i64, i64* @STATUS_SUCCESS, align 8
  store i64 %115, i64* %13, align 8
  %116 = load i32, i32* %16, align 4
  %117 = load i32*, i32** %6, align 8
  store i32 %116, i32* %117, align 4
  br label %149

118:                                              ; preds = %109
  %119 = load i32, i32* %16, align 4
  %120 = call i32 @NtClose(i32 %119)
  %121 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 0
  %122 = load i32*, i32** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 1
  %124 = load i32, i32* %123, align 8
  %125 = sext i32 %124 to i64
  %126 = udiv i64 %125, 4
  %127 = getelementptr inbounds i32, i32* %122, i64 %126
  store i32 92, i32* %127, align 4
  %128 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 0
  %129 = load i32*, i32** %128, align 8
  %130 = call i32 @wcslen(i32* %129)
  %131 = sext i32 %130 to i64
  %132 = mul i64 %131, 4
  %133 = trunc i64 %132 to i32
  %134 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 1
  store i32 %133, i32* %134, align 8
  %135 = load i32, i32* @KEY_ALL_ACCESS, align 4
  %136 = load i32, i32* %9, align 4
  %137 = call i64 @NtCreateKey(i32* %16, i32 %135, %struct.TYPE_13__* %10, i32 0, i32* null, i32 %136, i32* %12)
  store i64 %137, i64* %13, align 8
  %138 = load i64, i64* %13, align 8
  %139 = call i32 @DPRINT(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), %struct.TYPE_12__* %11, i64 %138)
  %140 = load i64, i64* %13, align 8
  %141 = call i32 @NT_SUCCESS(i64 %140)
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %148, label %143

143:                                              ; preds = %118
  %144 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 0
  %145 = load %struct.TYPE_12__*, %struct.TYPE_12__** %144, align 8
  %146 = load i64, i64* %13, align 8
  %147 = call i32 @DPRINT1(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_12__* %145, i64 %146)
  br label %149

148:                                              ; preds = %118
  br label %106

149:                                              ; preds = %143, %114, %106
  %150 = call i32 @RtlFreeUnicodeString(%struct.TYPE_12__* %11)
  %151 = load i64, i64* %13, align 8
  store i64 %151, i64* %5, align 8
  br label %152

152:                                              ; preds = %149, %102, %40
  %153 = load i64, i64* %5, align 8
  ret i64 %153
}

declare dso_local i64 @NtCreateKey(i32*, i32, %struct.TYPE_13__*, i32, i32*, i32, i32*) #1

declare dso_local i32 @DPRINT(i8*, %struct.TYPE_12__*, i64) #1

declare dso_local i32 @NT_SUCCESS(i64) #1

declare dso_local i32 @DPRINT1(i8*, %struct.TYPE_12__*, i64) #1

declare dso_local i32 @RtlCopyMemory(%struct.TYPE_13__*, %struct.TYPE_13__*, i32) #1

declare dso_local i32 @RtlCreateUnicodeString(%struct.TYPE_12__*, i32*) #1

declare dso_local i32* @wcsrchr(i32*, i8 signext) #1

declare dso_local i32 @wcslen(i32*) #1

declare dso_local i32 @RtlFreeUnicodeString(%struct.TYPE_12__*) #1

declare dso_local i32 @NtClose(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
