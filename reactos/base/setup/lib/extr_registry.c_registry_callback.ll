; ModuleID = '/home/carl/AnghaBench/reactos/base/setup/lib/extr_registry.c_registry_callback.c'
source_filename = "/home/carl/AnghaBench/reactos/base/setup/lib/extr_registry.c_registry_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_INF_STRING_LENGTH = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [18 x i8] c"KeyName: <%S\\%S>\0A\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"Flags: %lx\0A\00", align 1
@OBJ_CASE_INSENSITIVE = common dso_local global i32 0, align 4
@FLG_ADDREG_OVERWRITEONLY = common dso_local global i32 0, align 4
@KEY_ALL_ACCESS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"NtOpenKey(%wZ) failed (Status %lx)\0A\00", align 1
@REG_OPTION_NON_VOLATILE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [42 x i8] c"CreateNestedKey(%wZ) failed (Status %lx)\0A\00", align 1
@FALSE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i32, i64)* @registry_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @registry_callback(i32 %0, i32 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %22 = load i32, i32* @MAX_INF_STRING_LENGTH, align 4
  %23 = zext i32 %22 to i64
  %24 = call i8* @llvm.stacksave()
  store i8* %24, i8** %14, align 8
  %25 = alloca i64, i64 %23, align 16
  store i64 %23, i64* %15, align 8
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* %6, align 4
  %28 = call i64 @SpInfFindFirstLine(i32 %26, i32 %27, i32* null, i32* %16)
  store i64 %28, i64* %20, align 8
  %29 = load i64, i64* %20, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %3
  %32 = load i64, i64* @TRUE, align 8
  store i64 %32, i64* %4, align 8
  store i32 1, i32* %21, align 4
  br label %124

33:                                               ; preds = %3
  br label %34

34:                                               ; preds = %120, %33
  %35 = load i64, i64* %20, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %122

37:                                               ; preds = %34
  %38 = mul nuw i64 8, %23
  %39 = udiv i64 %38, 8
  %40 = trunc i64 %39 to i32
  %41 = call i64 @SpInfGetStringField(i32* %16, i32 1, i64* %25, i32 %40, i32* null)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %37
  br label %120

44:                                               ; preds = %37
  %45 = call i32 @GetRootKeyByName(i64* %25, i32* %17)
  store i32 %45, i32* %18, align 4
  %46 = load i32, i32* %18, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %44
  br label %120

49:                                               ; preds = %44
  %50 = mul nuw i64 8, %23
  %51 = udiv i64 %50, 8
  %52 = trunc i64 %51 to i32
  %53 = call i64 @SpInfGetStringField(i32* %16, i32 2, i64* %25, i32 %52, i32* null)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %49
  store i64 0, i64* %25, align 16
  br label %56

56:                                               ; preds = %55, %49
  %57 = load i32, i32* %17, align 4
  %58 = call i32 (i8*, i32, ...) @DPRINT(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %57, i64* %25)
  %59 = ptrtoint i32* %13 to i32
  %60 = call i32 @SpInfGetIntField(i32* %16, i32 4, i32 %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %63, label %62

62:                                               ; preds = %56
  store i32 0, i32* %13, align 4
  br label %63

63:                                               ; preds = %62, %56
  %64 = load i32, i32* %13, align 4
  %65 = call i32 (i8*, i32, ...) @DPRINT(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %64)
  %66 = call i32 @RtlInitUnicodeString(i32* %10, i64* %25)
  %67 = load i32, i32* @OBJ_CASE_INSENSITIVE, align 4
  %68 = load i32, i32* %18, align 4
  %69 = call i32 @InitializeObjectAttributes(i32* %9, i32* %10, i32 %67, i32 %68, i32* null)
  %70 = load i64, i64* %7, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %77, label %72

72:                                               ; preds = %63
  %73 = load i32, i32* %13, align 4
  %74 = load i32, i32* @FLG_ADDREG_OVERWRITEONLY, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %87

77:                                               ; preds = %72, %63
  %78 = load i32, i32* @KEY_ALL_ACCESS, align 4
  %79 = call i32 @NtOpenKey(i32* %19, i32 %78, i32* %9)
  store i32 %79, i32* %8, align 4
  %80 = load i32, i32* %8, align 4
  %81 = call i32 @NT_SUCCESS(i32 %80)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %86, label %83

83:                                               ; preds = %77
  %84 = load i32, i32* %8, align 4
  %85 = call i32 @DPRINT1(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32* %10, i32 %84)
  br label %120

86:                                               ; preds = %77
  br label %98

87:                                               ; preds = %72
  %88 = load i32, i32* @KEY_ALL_ACCESS, align 4
  %89 = load i32, i32* @REG_OPTION_NON_VOLATILE, align 4
  %90 = call i32 @CreateNestedKey(i32* %19, i32 %88, i32* %9, i32 %89)
  store i32 %90, i32* %8, align 4
  %91 = load i32, i32* %8, align 4
  %92 = call i32 @NT_SUCCESS(i32 %91)
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %97, label %94

94:                                               ; preds = %87
  %95 = load i32, i32* %8, align 4
  %96 = call i32 @DPRINT1(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i32* %10, i32 %95)
  br label %120

97:                                               ; preds = %87
  br label %98

98:                                               ; preds = %97, %86
  %99 = mul nuw i64 8, %23
  %100 = udiv i64 %99, 8
  %101 = trunc i64 %100 to i32
  %102 = call i64 @SpInfGetStringField(i32* %16, i32 3, i64* %25, i32 %101, i32* null)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %98
  %105 = call i32 @RtlInitUnicodeString(i32* %11, i64* %25)
  store i32* %11, i32** %12, align 8
  br label %107

106:                                              ; preds = %98
  store i32* null, i32** %12, align 8
  br label %107

107:                                              ; preds = %106, %104
  %108 = load i32, i32* %19, align 4
  %109 = load i32*, i32** %12, align 8
  %110 = load i32, i32* %13, align 4
  %111 = call i32 @do_reg_operation(i32 %108, i32* %109, i32* %16, i32 %110)
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %117, label %113

113:                                              ; preds = %107
  %114 = load i32, i32* %19, align 4
  %115 = call i32 @NtClose(i32 %114)
  %116 = load i64, i64* @FALSE, align 8
  store i64 %116, i64* %4, align 8
  store i32 1, i32* %21, align 4
  br label %124

117:                                              ; preds = %107
  %118 = load i32, i32* %19, align 4
  %119 = call i32 @NtClose(i32 %118)
  br label %120

120:                                              ; preds = %117, %94, %83, %48, %43
  %121 = call i64 @SpInfFindNextLine(i32* %16, i32* %16)
  store i64 %121, i64* %20, align 8
  br label %34

122:                                              ; preds = %34
  %123 = load i64, i64* @TRUE, align 8
  store i64 %123, i64* %4, align 8
  store i32 1, i32* %21, align 4
  br label %124

124:                                              ; preds = %122, %113, %31
  %125 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %125)
  %126 = load i64, i64* %4, align 8
  ret i64 %126
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @SpInfFindFirstLine(i32, i32, i32*, i32*) #2

declare dso_local i64 @SpInfGetStringField(i32*, i32, i64*, i32, i32*) #2

declare dso_local i32 @GetRootKeyByName(i64*, i32*) #2

declare dso_local i32 @DPRINT(i8*, i32, ...) #2

declare dso_local i32 @SpInfGetIntField(i32*, i32, i32) #2

declare dso_local i32 @RtlInitUnicodeString(i32*, i64*) #2

declare dso_local i32 @InitializeObjectAttributes(i32*, i32*, i32, i32, i32*) #2

declare dso_local i32 @NtOpenKey(i32*, i32, i32*) #2

declare dso_local i32 @NT_SUCCESS(i32) #2

declare dso_local i32 @DPRINT1(i8*, i32*, i32) #2

declare dso_local i32 @CreateNestedKey(i32*, i32, i32*, i32) #2

declare dso_local i32 @do_reg_operation(i32, i32*, i32*, i32) #2

declare dso_local i32 @NtClose(i32) #2

declare dso_local i64 @SpInfFindNextLine(i32*, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
