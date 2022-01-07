; ModuleID = '/home/carl/AnghaBench/reactos/base/shell/cmd/extr_misc.c_expand.c'
source_filename = "/home/carl/AnghaBench/reactos/base/shell/cmd/extr_misc.c_expand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32* }

@.str = private unnamed_addr constant [37 x i8] c"Cannot allocate memory for dirpart!\0A\00", align 1
@FALSE = common dso_local global i64 0, align 8
@INVALID_HANDLE_VALUE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [38 x i8] c"Cannot allocate memory for fullname!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i32***, i32*)* @expand to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @expand(i32 %0, i32*** %1, i32* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32***, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_4__, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  store i32 %0, i32* %5, align 4
  store i32*** %1, i32**** %6, align 8
  store i32* %2, i32** %7, align 8
  %14 = load i32*, i32** %7, align 8
  %15 = call i32 @_T(i8 signext 92)
  %16 = call i32* @_tcsrchr(i32* %14, i32 %15)
  store i32* %16, i32** %11, align 8
  %17 = load i32*, i32** %11, align 8
  %18 = icmp ne i32* null, %17
  br i1 %18, label %19, label %57

19:                                               ; preds = %3
  %20 = load i32*, i32** %11, align 8
  %21 = load i32*, i32** %7, align 8
  %22 = ptrtoint i32* %20 to i64
  %23 = ptrtoint i32* %21 to i64
  %24 = sub i64 %22, %23
  %25 = sdiv exact i64 %24, 4
  %26 = add nsw i64 %25, 2
  %27 = mul i64 %26, 4
  %28 = trunc i64 %27 to i32
  %29 = call i32* @cmd_alloc(i32 %28)
  store i32* %29, i32** %12, align 8
  %30 = load i32*, i32** %12, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %19
  %33 = call i32 @WARN(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %34 = load i64, i64* @FALSE, align 8
  store i64 %34, i64* %4, align 8
  br label %131

35:                                               ; preds = %19
  %36 = load i32*, i32** %12, align 8
  %37 = load i32*, i32** %7, align 8
  %38 = load i32*, i32** %11, align 8
  %39 = load i32*, i32** %7, align 8
  %40 = ptrtoint i32* %38 to i64
  %41 = ptrtoint i32* %39 to i64
  %42 = sub i64 %40, %41
  %43 = sdiv exact i64 %42, 4
  %44 = add nsw i64 %43, 1
  %45 = trunc i64 %44 to i32
  %46 = call i32 @memcpy(i32* %36, i32* %37, i32 %45)
  %47 = call i32 @_T(i8 signext 0)
  %48 = load i32*, i32** %12, align 8
  %49 = load i32*, i32** %11, align 8
  %50 = load i32*, i32** %7, align 8
  %51 = ptrtoint i32* %49 to i64
  %52 = ptrtoint i32* %50 to i64
  %53 = sub i64 %51, %52
  %54 = sdiv exact i64 %53, 4
  %55 = add nsw i64 %54, 1
  %56 = getelementptr inbounds i32, i32* %48, i64 %55
  store i32 %47, i32* %56, align 4
  br label %58

57:                                               ; preds = %3
  store i32* null, i32** %12, align 8
  br label %58

58:                                               ; preds = %57, %35
  %59 = load i32*, i32** %7, align 8
  %60 = call i64 @FindFirstFile(i32* %59, %struct.TYPE_4__* %9)
  store i64 %60, i64* %8, align 8
  %61 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %62 = load i64, i64* %8, align 8
  %63 = icmp ne i64 %61, %62
  br i1 %63, label %64, label %118

64:                                               ; preds = %58
  br label %65

65:                                               ; preds = %113, %64
  %66 = load i32*, i32** %12, align 8
  %67 = icmp ne i32* null, %66
  br i1 %67, label %68, label %99

68:                                               ; preds = %65
  %69 = load i32*, i32** %12, align 8
  %70 = call i32 @_tcslen(i32* %69)
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = call i32 @_tcslen(i32* %72)
  %74 = add nsw i32 %70, %73
  %75 = add nsw i32 %74, 1
  %76 = sext i32 %75 to i64
  %77 = mul i64 %76, 4
  %78 = trunc i64 %77 to i32
  %79 = call i32* @cmd_alloc(i32 %78)
  store i32* %79, i32** %13, align 8
  %80 = load i32*, i32** %13, align 8
  %81 = icmp ne i32* %80, null
  br i1 %81, label %85, label %82

82:                                               ; preds = %68
  %83 = call i32 @WARN(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %84 = load i64, i64* @FALSE, align 8
  store i64 %84, i64* %10, align 8
  br label %98

85:                                               ; preds = %68
  %86 = load i32*, i32** %13, align 8
  %87 = load i32*, i32** %12, align 8
  %88 = call i32 @_tcscpy(i32* %86, i32* %87)
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %90 = load i32*, i32** %89, align 8
  %91 = call i32 @_tcscat(i32 %88, i32* %90)
  %92 = load i32, i32* %5, align 4
  %93 = load i32***, i32**** %6, align 8
  %94 = load i32*, i32** %13, align 8
  %95 = call i64 @add_entry(i32 %92, i32*** %93, i32* %94)
  store i64 %95, i64* %10, align 8
  %96 = load i32*, i32** %13, align 8
  %97 = call i32 @cmd_free(i32* %96)
  br label %98

98:                                               ; preds = %85, %82
  br label %105

99:                                               ; preds = %65
  %100 = load i32, i32* %5, align 4
  %101 = load i32***, i32**** %6, align 8
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %103 = load i32*, i32** %102, align 8
  %104 = call i64 @add_entry(i32 %100, i32*** %101, i32* %103)
  store i64 %104, i64* %10, align 8
  br label %105

105:                                              ; preds = %99, %98
  br label %106

106:                                              ; preds = %105
  %107 = load i64, i64* %8, align 8
  %108 = call i64 @FindNextFile(i64 %107, %struct.TYPE_4__* %9)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %113

110:                                              ; preds = %106
  %111 = load i64, i64* %10, align 8
  %112 = icmp ne i64 %111, 0
  br label %113

113:                                              ; preds = %110, %106
  %114 = phi i1 [ false, %106 ], [ %112, %110 ]
  br i1 %114, label %65, label %115

115:                                              ; preds = %113
  %116 = load i64, i64* %8, align 8
  %117 = call i32 @FindClose(i64 %116)
  br label %123

118:                                              ; preds = %58
  %119 = load i32, i32* %5, align 4
  %120 = load i32***, i32**** %6, align 8
  %121 = load i32*, i32** %7, align 8
  %122 = call i64 @add_entry(i32 %119, i32*** %120, i32* %121)
  store i64 %122, i64* %10, align 8
  br label %123

123:                                              ; preds = %118, %115
  %124 = load i32*, i32** %12, align 8
  %125 = icmp ne i32* null, %124
  br i1 %125, label %126, label %129

126:                                              ; preds = %123
  %127 = load i32*, i32** %12, align 8
  %128 = call i32 @cmd_free(i32* %127)
  br label %129

129:                                              ; preds = %126, %123
  %130 = load i64, i64* %10, align 8
  store i64 %130, i64* %4, align 8
  br label %131

131:                                              ; preds = %129, %32
  %132 = load i64, i64* %4, align 8
  ret i64 %132
}

declare dso_local i32* @_tcsrchr(i32*, i32) #1

declare dso_local i32 @_T(i8 signext) #1

declare dso_local i32* @cmd_alloc(i32) #1

declare dso_local i32 @WARN(i8*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i64 @FindFirstFile(i32*, %struct.TYPE_4__*) #1

declare dso_local i32 @_tcslen(i32*) #1

declare dso_local i32 @_tcscat(i32, i32*) #1

declare dso_local i32 @_tcscpy(i32*, i32*) #1

declare dso_local i64 @add_entry(i32, i32***, i32*) #1

declare dso_local i32 @cmd_free(i32*) #1

declare dso_local i64 @FindNextFile(i64, %struct.TYPE_4__*) #1

declare dso_local i32 @FindClose(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
