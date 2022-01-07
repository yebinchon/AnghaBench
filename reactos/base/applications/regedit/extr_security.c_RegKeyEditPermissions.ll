; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/regedit/extr_security.c_RegKeyEditPermissions.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/regedit/extr_security.c_RegKeyEditPermissions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32*, i32*, i32*, i32 }

@FALSE = common dso_local global i32 0, align 4
@HKEY_CLASSES_ROOT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i32] [i32 67, i32 76, i32 65, i32 83, i32 83, i32 69, i32 83, i32 95, i32 82, i32 79, i32 79, i32 84, i32 0], align 4
@HKEY_CURRENT_USER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i32] [i32 67, i32 85, i32 82, i32 82, i32 69, i32 78, i32 84, i32 95, i32 85, i32 83, i32 69, i32 82, i32 0], align 4
@HKEY_LOCAL_MACHINE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i32] [i32 77, i32 65, i32 67, i32 72, i32 73, i32 78, i32 69, i32 0], align 4
@HKEY_USERS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [6 x i32] [i32 85, i32 83, i32 69, i32 82, i32 83, i32 0], align 4
@HKEY_CURRENT_CONFIG = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [7 x i32] [i32 67, i32 79, i32 78, i32 70, i32 73, i32 71, i32 0], align 4
@ERROR_NOT_ENOUGH_MEMORY = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [3 x i32] [i32 92, i32 92, i32 0], align 4
@.str.6 = private unnamed_addr constant [2 x i32] [i32 92, i32 0], align 4
@SI_EDIT_ALL = common dso_local global i32 0, align 4
@SI_ADVANCED = common dso_local global i32 0, align 4
@SI_CONTAINER = common dso_local global i32 0, align 4
@SI_EDIT_EFFECTIVE = common dso_local global i32 0, align 4
@SI_EDIT_PERMS = common dso_local global i32 0, align 4
@SI_OWNER_RECURSE = common dso_local global i32 0, align 4
@SI_RESET_DACL_TREE = common dso_local global i32 0, align 4
@SI_RESET_SACL_TREE = common dso_local global i32 0, align 4
@hInst = common dso_local global i32 0, align 4
@ISecurityInformation = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @RegKeyEditPermissions(i32 %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_3__, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %16 = load i32, i32* @FALSE, align 4
  store i32 %16, i32* %9, align 4
  store i32* null, i32** %10, align 8
  store i32* null, i32** %11, align 8
  store i64 0, i64* %14, align 8
  store i64 0, i64* %15, align 8
  %17 = load i32*, i32** %7, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %23

19:                                               ; preds = %4
  %20 = load i32*, i32** %7, align 8
  %21 = call i32 @wcslen(i32* %20)
  %22 = sext i32 %21 to i64
  store i64 %22, i64* %14, align 8
  br label %23

23:                                               ; preds = %19, %4
  %24 = load i32*, i32** %8, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %26, label %30

26:                                               ; preds = %23
  %27 = load i32*, i32** %8, align 8
  %28 = call i32 @wcslen(i32* %27)
  %29 = sext i32 %28 to i64
  store i64 %29, i64* %15, align 8
  br label %30

30:                                               ; preds = %26, %23
  %31 = load i32*, i32** %7, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %33, label %49

33:                                               ; preds = %30
  %34 = load i32*, i32** %7, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %48, label %38

38:                                               ; preds = %33
  %39 = load i32*, i32** %7, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 0
  %41 = load i32, i32* %40, align 4
  %42 = icmp eq i32 %41, 46
  br i1 %42, label %43, label %49

43:                                               ; preds = %38
  %44 = load i32*, i32** %7, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 1
  %46 = load i32, i32* %45, align 4
  %47 = icmp eq i32 %46, 46
  br i1 %47, label %48, label %49

48:                                               ; preds = %43, %33
  store i64 0, i64* %14, align 8
  br label %49

49:                                               ; preds = %48, %43, %38, %30
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* @HKEY_CLASSES_ROOT, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %49
  store i32* getelementptr inbounds ([13 x i32], [13 x i32]* @.str, i64 0, i64 0), i32** %10, align 8
  br label %79

54:                                               ; preds = %49
  %55 = load i32, i32* %6, align 4
  %56 = load i32, i32* @HKEY_CURRENT_USER, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %54
  store i32* getelementptr inbounds ([13 x i32], [13 x i32]* @.str.1, i64 0, i64 0), i32** %10, align 8
  br label %78

59:                                               ; preds = %54
  %60 = load i32, i32* %6, align 4
  %61 = load i32, i32* @HKEY_LOCAL_MACHINE, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %59
  store i32* getelementptr inbounds ([8 x i32], [8 x i32]* @.str.2, i64 0, i64 0), i32** %10, align 8
  br label %77

64:                                               ; preds = %59
  %65 = load i32, i32* %6, align 4
  %66 = load i32, i32* @HKEY_USERS, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %64
  store i32* getelementptr inbounds ([6 x i32], [6 x i32]* @.str.3, i64 0, i64 0), i32** %10, align 8
  br label %76

69:                                               ; preds = %64
  %70 = load i32, i32* %6, align 4
  %71 = load i32, i32* @HKEY_CURRENT_CONFIG, align 4
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %73, label %74

73:                                               ; preds = %69
  store i32* getelementptr inbounds ([7 x i32], [7 x i32]* @.str.4, i64 0, i64 0), i32** %10, align 8
  br label %75

74:                                               ; preds = %69
  br label %173

75:                                               ; preds = %73
  br label %76

76:                                               ; preds = %75, %68
  br label %77

77:                                               ; preds = %76, %63
  br label %78

78:                                               ; preds = %77, %58
  br label %79

79:                                               ; preds = %78, %53
  %80 = call i32 (...) @GetProcessHeap()
  %81 = load i64, i64* %14, align 8
  %82 = add i64 2, %81
  %83 = add i64 %82, 1
  %84 = load i32*, i32** %10, align 8
  %85 = call i32 @wcslen(i32* %84)
  %86 = sext i32 %85 to i64
  %87 = add i64 %83, %86
  %88 = add i64 %87, 1
  %89 = load i64, i64* %15, align 8
  %90 = add i64 %88, %89
  %91 = mul i64 %90, 4
  %92 = trunc i64 %91 to i32
  %93 = call i32* @HeapAlloc(i32 %80, i32 0, i32 %92)
  store i32* %93, i32** %11, align 8
  %94 = load i32*, i32** %11, align 8
  %95 = icmp eq i32* %94, null
  br i1 %95, label %96, label %99

96:                                               ; preds = %79
  %97 = load i32, i32* @ERROR_NOT_ENOUGH_MEMORY, align 4
  %98 = call i32 @SetLastError(i32 %97)
  br label %173

99:                                               ; preds = %79
  %100 = load i32*, i32** %11, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 0
  store i32 0, i32* %101, align 4
  %102 = load i64, i64* %14, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %112

104:                                              ; preds = %99
  %105 = load i32*, i32** %11, align 8
  %106 = call i32 (i32*, ...) @wcscat(i32* %105, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @.str.5, i64 0, i64 0))
  %107 = load i32*, i32** %11, align 8
  %108 = load i32*, i32** %7, align 8
  %109 = call i32 (i32*, ...) @wcscat(i32* %107, i32* %108)
  %110 = load i32*, i32** %11, align 8
  %111 = call i32 (i32*, ...) @wcscat(i32* %110, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @.str.6, i64 0, i64 0))
  br label %112

112:                                              ; preds = %104, %99
  %113 = load i32*, i32** %11, align 8
  %114 = load i32*, i32** %10, align 8
  %115 = call i32 (i32*, ...) @wcscat(i32* %113, i32* %114)
  %116 = load i32*, i32** %8, align 8
  %117 = icmp ne i32* %116, null
  br i1 %117, label %118, label %135

118:                                              ; preds = %112
  %119 = load i32*, i32** %8, align 8
  %120 = getelementptr inbounds i32, i32* %119, i64 0
  %121 = load i32, i32* %120, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %135

123:                                              ; preds = %118
  %124 = load i32*, i32** %8, align 8
  %125 = getelementptr inbounds i32, i32* %124, i64 0
  %126 = load i32, i32* %125, align 4
  %127 = icmp ne i32 %126, 92
  br i1 %127, label %128, label %131

128:                                              ; preds = %123
  %129 = load i32*, i32** %11, align 8
  %130 = call i32 (i32*, ...) @wcscat(i32* %129, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @.str.6, i64 0, i64 0))
  br label %131

131:                                              ; preds = %128, %123
  %132 = load i32*, i32** %11, align 8
  %133 = load i32*, i32** %8, align 8
  %134 = call i32 (i32*, ...) @wcscat(i32* %132, i32* %133)
  br label %135

135:                                              ; preds = %131, %118, %112
  %136 = load i32, i32* @SI_EDIT_ALL, align 4
  %137 = load i32, i32* @SI_ADVANCED, align 4
  %138 = or i32 %136, %137
  %139 = load i32, i32* @SI_CONTAINER, align 4
  %140 = or i32 %138, %139
  %141 = load i32, i32* @SI_EDIT_EFFECTIVE, align 4
  %142 = or i32 %140, %141
  %143 = load i32, i32* @SI_EDIT_PERMS, align 4
  %144 = or i32 %142, %143
  %145 = load i32, i32* @SI_OWNER_RECURSE, align 4
  %146 = or i32 %144, %145
  %147 = load i32, i32* @SI_RESET_DACL_TREE, align 4
  %148 = or i32 %146, %147
  %149 = load i32, i32* @SI_RESET_SACL_TREE, align 4
  %150 = or i32 %148, %149
  %151 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  store i32 %150, i32* %151, align 8
  %152 = load i32, i32* @hInst, align 4
  %153 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 4
  store i32 %152, i32* %153, align 8
  %154 = load i32*, i32** %7, align 8
  %155 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 1
  store i32* %154, i32** %155, align 8
  %156 = load i32*, i32** %8, align 8
  %157 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 2
  store i32* %156, i32** %157, align 8
  %158 = load i32*, i32** %8, align 8
  %159 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 3
  store i32* %158, i32** %159, align 8
  %160 = load i32*, i32** %11, align 8
  %161 = load i32, i32* %6, align 4
  %162 = call i32 @CRegKeySecurity_fnConstructor(i32* %160, i32 %161, %struct.TYPE_3__* %13, i32* %9)
  store i32 %162, i32* %12, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %165, label %164

164:                                              ; preds = %135
  br label %173

165:                                              ; preds = %135
  %166 = load i32, i32* %5, align 4
  %167 = load i32, i32* %12, align 4
  %168 = load i32, i32* @ISecurityInformation, align 4
  %169 = call i32 @impl_to_interface(i32 %167, i32 %168)
  %170 = call i32 @pfnEditSecurity(i32 %166, i32 %169)
  %171 = load i32, i32* %12, align 4
  %172 = call i32 @CRegKeySecurity_fnRelease(i32 %171)
  br label %173

173:                                              ; preds = %165, %164, %96, %74
  %174 = load i32*, i32** %11, align 8
  %175 = icmp ne i32* %174, null
  br i1 %175, label %176, label %180

176:                                              ; preds = %173
  %177 = call i32 (...) @GetProcessHeap()
  %178 = load i32*, i32** %11, align 8
  %179 = call i32 @HeapFree(i32 %177, i32 0, i32* %178)
  br label %180

180:                                              ; preds = %176, %173
  %181 = load i32, i32* %9, align 4
  ret i32 %181
}

declare dso_local i32 @wcslen(i32*) #1

declare dso_local i32* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @SetLastError(i32) #1

declare dso_local i32 @wcscat(i32*, ...) #1

declare dso_local i32 @CRegKeySecurity_fnConstructor(i32*, i32, %struct.TYPE_3__*, i32*) #1

declare dso_local i32 @pfnEditSecurity(i32, i32) #1

declare dso_local i32 @impl_to_interface(i32, i32) #1

declare dso_local i32 @CRegKeySecurity_fnRelease(i32) #1

declare dso_local i32 @HeapFree(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
