; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/regedit/extr_regedit.c_ProcessCmdLine.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/regedit/extr_regedit.c_ProcessCmdLine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i32 0, align 4
@ACTION_UNDEF = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@ACTION_DELETE = common dso_local global i64 0, align 8
@ACTION_EXPORT = common dso_local global i64 0, align 8
@MB_OK = common dso_local global i32 0, align 4
@MB_ICONINFORMATION = common dso_local global i32 0, align 4
@szTitle = common dso_local global i32 0, align 4
@usage = common dso_local global i32 0, align 4
@ACTION_ADD = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ProcessCmdLine(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %10 = load i32, i32* @FALSE, align 4
  store i32 %10, i32* %4, align 4
  %11 = load i64, i64* @ACTION_UNDEF, align 8
  store i64 %11, i64* %5, align 8
  %12 = load i32*, i32** %3, align 8
  store i32* %12, i32** %6, align 8
  %13 = load i32*, i32** %6, align 8
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %7, align 4
  br label %15

15:                                               ; preds = %126, %1
  %16 = load i32, i32* %7, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %26

18:                                               ; preds = %15
  %19 = load i32, i32* %7, align 4
  %20 = icmp eq i32 %19, 45
  br i1 %20, label %24, label %21

21:                                               ; preds = %18
  %22 = load i32, i32* %7, align 4
  %23 = icmp eq i32 %22, 47
  br label %24

24:                                               ; preds = %21, %18
  %25 = phi i1 [ true, %18 ], [ %23, %21 ]
  br label %26

26:                                               ; preds = %24, %15
  %27 = phi i1 [ false, %15 ], [ %25, %24 ]
  br i1 %27, label %28, label %127

28:                                               ; preds = %26
  %29 = load i32*, i32** %6, align 8
  %30 = getelementptr inbounds i32, i32* %29, i32 1
  store i32* %30, i32** %6, align 8
  %31 = load i32*, i32** %6, align 8
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %7, align 4
  %33 = load i32*, i32** %6, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 1
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %7, align 4
  %37 = call i32 @towupper(i32 %36)
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %9, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %28
  %41 = load i32, i32* %9, align 4
  %42 = call i64 @iswspace(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %76

44:                                               ; preds = %40, %28
  %45 = load i32, i32* %8, align 4
  %46 = icmp eq i32 %45, 83
  br i1 %46, label %47, label %49

47:                                               ; preds = %44
  %48 = load i32, i32* @TRUE, align 4
  store i32 %48, i32* %4, align 4
  br label %73

49:                                               ; preds = %44
  %50 = load i32, i32* %8, align 4
  %51 = icmp eq i32 %50, 86
  br i1 %51, label %52, label %53

52:                                               ; preds = %49
  br label %72

53:                                               ; preds = %49
  %54 = load i32, i32* %8, align 4
  switch i32 %54, label %67 [
    i32 68, label %55
    i32 69, label %57
    i32 63, label %59
  ]

55:                                               ; preds = %53
  %56 = load i64, i64* @ACTION_DELETE, align 8
  store i64 %56, i64* %5, align 8
  br label %71

57:                                               ; preds = %53
  %58 = load i64, i64* @ACTION_EXPORT, align 8
  store i64 %58, i64* %5, align 8
  br label %71

59:                                               ; preds = %53
  %60 = load i32, i32* @MB_OK, align 4
  %61 = load i32, i32* @MB_ICONINFORMATION, align 4
  %62 = or i32 %60, %61
  %63 = load i32, i32* @szTitle, align 4
  %64 = load i32, i32* @usage, align 4
  %65 = call i32 @InfoMessageBox(i32* null, i32 %62, i32 %63, i32 %64)
  %66 = call i32 @exit(i32 3) #3
  unreachable

67:                                               ; preds = %53
  %68 = load i32, i32* %8, align 4
  %69 = load i32*, i32** %6, align 8
  %70 = call i32 @error_unknown_switch(i32 %68, i32* %69)
  br label %71

71:                                               ; preds = %67, %57, %55
  br label %72

72:                                               ; preds = %71, %52
  br label %73

73:                                               ; preds = %72, %47
  %74 = load i32*, i32** %6, align 8
  %75 = getelementptr inbounds i32, i32* %74, i32 1
  store i32* %75, i32** %6, align 8
  br label %109

76:                                               ; preds = %40
  %77 = load i32, i32* %9, align 4
  %78 = icmp eq i32 %77, 58
  br i1 %78, label %79, label %105

79:                                               ; preds = %76
  %80 = load i32, i32* %8, align 4
  switch i32 %80, label %100 [
    i32 76, label %81
    i32 82, label %81
  ]

81:                                               ; preds = %79, %79
  %82 = load i32*, i32** %6, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 2
  store i32* %83, i32** %6, align 8
  br label %84

84:                                               ; preds = %96, %81
  %85 = load i32*, i32** %6, align 8
  %86 = load i32, i32* %85, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %94

88:                                               ; preds = %84
  %89 = load i32*, i32** %6, align 8
  %90 = load i32, i32* %89, align 4
  %91 = call i64 @iswspace(i32 %90)
  %92 = icmp ne i64 %91, 0
  %93 = xor i1 %92, true
  br label %94

94:                                               ; preds = %88, %84
  %95 = phi i1 [ false, %84 ], [ %93, %88 ]
  br i1 %95, label %96, label %99

96:                                               ; preds = %94
  %97 = load i32*, i32** %6, align 8
  %98 = getelementptr inbounds i32, i32* %97, i32 1
  store i32* %98, i32** %6, align 8
  br label %84

99:                                               ; preds = %94
  br label %104

100:                                              ; preds = %79
  %101 = load i32, i32* %8, align 4
  %102 = load i32*, i32** %6, align 8
  %103 = call i32 @error_unknown_switch(i32 %101, i32* %102)
  br label %104

104:                                              ; preds = %100, %99
  br label %108

105:                                              ; preds = %76
  %106 = load i32*, i32** %6, align 8
  %107 = getelementptr inbounds i32, i32* %106, i32 -1
  store i32* %107, i32** %6, align 8
  br label %127

108:                                              ; preds = %104
  br label %109

109:                                              ; preds = %108, %73
  %110 = load i32*, i32** %6, align 8
  %111 = load i32, i32* %110, align 4
  store i32 %111, i32* %7, align 4
  br label %112

112:                                              ; preds = %121, %109
  %113 = load i32, i32* %7, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %119

115:                                              ; preds = %112
  %116 = load i32, i32* %7, align 4
  %117 = call i64 @iswspace(i32 %116)
  %118 = icmp ne i64 %117, 0
  br label %119

119:                                              ; preds = %115, %112
  %120 = phi i1 [ false, %112 ], [ %118, %115 ]
  br i1 %120, label %121, label %126

121:                                              ; preds = %119
  %122 = load i32*, i32** %6, align 8
  %123 = getelementptr inbounds i32, i32* %122, i32 1
  store i32* %123, i32** %6, align 8
  %124 = load i32*, i32** %6, align 8
  %125 = load i32, i32* %124, align 4
  store i32 %125, i32* %7, align 4
  br label %112

126:                                              ; preds = %119
  br label %15

127:                                              ; preds = %105, %26
  %128 = load i32*, i32** %6, align 8
  %129 = load i32, i32* %128, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %137

131:                                              ; preds = %127
  %132 = load i64, i64* %5, align 8
  %133 = load i64, i64* @ACTION_UNDEF, align 8
  %134 = icmp eq i64 %132, %133
  br i1 %134, label %135, label %137

135:                                              ; preds = %131
  %136 = load i64, i64* @ACTION_ADD, align 8
  store i64 %136, i64* %5, align 8
  br label %137

137:                                              ; preds = %135, %131, %127
  %138 = load i64, i64* %5, align 8
  %139 = load i64, i64* @ACTION_UNDEF, align 8
  %140 = icmp ne i64 %138, %139
  br i1 %140, label %141, label %146

141:                                              ; preds = %137
  %142 = load i64, i64* %5, align 8
  %143 = load i32*, i32** %6, align 8
  %144 = load i32, i32* %4, align 4
  %145 = call i32 @PerformRegAction(i64 %142, i32* %143, i32 %144)
  store i32 %145, i32* %2, align 4
  br label %148

146:                                              ; preds = %137
  %147 = load i32, i32* @FALSE, align 4
  store i32 %147, i32* %2, align 4
  br label %148

148:                                              ; preds = %146, %141
  %149 = load i32, i32* %2, align 4
  ret i32 %149
}

declare dso_local i32 @towupper(i32) #1

declare dso_local i64 @iswspace(i32) #1

declare dso_local i32 @InfoMessageBox(i32*, i32, i32, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @error_unknown_switch(i32, i32*) #1

declare dso_local i32 @PerformRegAction(i64, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
