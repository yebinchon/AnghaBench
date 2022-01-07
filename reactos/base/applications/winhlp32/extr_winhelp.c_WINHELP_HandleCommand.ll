; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/winhlp32/extr_winhelp.c_WINHELP_HandleCommand.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/winhlp32/extr_winhelp.c_WINHELP_HandleCommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i8*, i32, i32, i32 }

@.str = private unnamed_addr constant [28 x i8] c"Wrong magic number (%08lx)\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"Got[%u]: cmd=%u data=%08x fn=%s\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"main\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"HELP_FINDER: stub\0A\00", align 1
@.str.4 = private unnamed_addr constant [51 x i8] c"Unhandled command (%x) for remote winhelp control\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64)* @WINHELP_HandleCommand to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @WINHELP_HandleCommand(i32 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store i64 %1, i64* %5, align 8
  %9 = load i64, i64* %5, align 8
  %10 = inttoptr i64 %9 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %10, %struct.TYPE_4__** %6, align 8
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 169731333
  br i1 %14, label %15, label %20

15:                                               ; preds = %2
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i32 (i8*, ...) @WINE_FIXME(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %18)
  store i32 0, i32* %3, align 4
  br label %128

20:                                               ; preds = %2
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 1
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  store %struct.TYPE_3__* %23, %struct.TYPE_3__** %7, align 8
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %25 = icmp ne %struct.TYPE_3__* %24, null
  br i1 %25, label %26, label %127

26:                                               ; preds = %20
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %31, label %39

31:                                               ; preds = %26
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %33 = ptrtoint %struct.TYPE_3__* %32 to i32
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  %37 = sext i32 %33 to i64
  %38 = getelementptr inbounds i8, i8* %36, i64 %37
  br label %40

39:                                               ; preds = %26
  br label %40

40:                                               ; preds = %39, %31
  %41 = phi i8* [ %38, %31 ], [ null, %39 ]
  store i8* %41, i8** %8, align 8
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = load i8*, i8** %8, align 8
  %52 = call i32 @debugstr_a(i8* %51)
  %53 = call i32 @WINE_TRACE(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %44, i32 %47, i32 %50, i32 %52)
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  switch i32 %56, label %121 [
    i32 133, label %57
    i32 129, label %72
    i32 134, label %74
    i32 130, label %86
    i32 128, label %93
    i32 132, label %103
    i32 131, label %113
  ]

57:                                               ; preds = %40
  %58 = load i8*, i8** %8, align 8
  %59 = icmp ne i8* %58, null
  br i1 %59, label %60, label %66

60:                                               ; preds = %57
  %61 = load i8*, i8** %8, align 8
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @MACRO_JumpContext(i8* %61, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %64)
  br label %66

66:                                               ; preds = %60, %57
  %67 = call i32 (...) @WINHELP_HasWorkingWindow()
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %71, label %69

69:                                               ; preds = %66
  %70 = call i32 (...) @MACRO_Exit()
  br label %71

71:                                               ; preds = %69, %66
  br label %126

72:                                               ; preds = %40
  %73 = call i32 (...) @MACRO_Exit()
  br label %126

74:                                               ; preds = %40
  %75 = load i8*, i8** %8, align 8
  %76 = icmp ne i8* %75, null
  br i1 %76, label %77, label %80

77:                                               ; preds = %74
  %78 = load i8*, i8** %8, align 8
  %79 = call i32 @MACRO_JumpContents(i8* %78, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  br label %80

80:                                               ; preds = %77, %74
  %81 = call i32 (...) @WINHELP_HasWorkingWindow()
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %85, label %83

83:                                               ; preds = %80
  %84 = call i32 (...) @MACRO_Exit()
  br label %85

85:                                               ; preds = %83, %80
  br label %126

86:                                               ; preds = %40
  %87 = call i32 (...) @MACRO_HelpOn()
  %88 = call i32 (...) @WINHELP_HasWorkingWindow()
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %92, label %90

90:                                               ; preds = %86
  %91 = call i32 (...) @MACRO_Exit()
  br label %92

92:                                               ; preds = %90, %86
  br label %126

93:                                               ; preds = %40
  %94 = load i8*, i8** %8, align 8
  %95 = icmp ne i8* %94, null
  br i1 %95, label %96, label %102

96:                                               ; preds = %93
  %97 = load i8*, i8** %8, align 8
  %98 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @MACRO_SetContents(i8* %97, i32 %100)
  br label %102

102:                                              ; preds = %96, %93
  br label %126

103:                                              ; preds = %40
  %104 = load i8*, i8** %8, align 8
  %105 = icmp ne i8* %104, null
  br i1 %105, label %106, label %112

106:                                              ; preds = %103
  %107 = load i8*, i8** %8, align 8
  %108 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @MACRO_PopupContext(i8* %107, i32 %110)
  br label %112

112:                                              ; preds = %106, %103
  br label %126

113:                                              ; preds = %40
  %114 = call i32 (i8*, ...) @WINE_FIXME(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  %115 = load i8*, i8** %8, align 8
  %116 = icmp ne i8* %115, null
  br i1 %116, label %117, label %120

117:                                              ; preds = %113
  %118 = load i8*, i8** %8, align 8
  %119 = call i32 @MACRO_JumpHash(i8* %118, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 0)
  br label %120

120:                                              ; preds = %117, %113
  br label %126

121:                                              ; preds = %40
  %122 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %123 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 8
  %125 = call i32 (i8*, ...) @WINE_FIXME(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.4, i64 0, i64 0), i32 %124)
  br label %126

126:                                              ; preds = %121, %120, %112, %102, %92, %85, %72, %71
  br label %127

127:                                              ; preds = %126, %20
  store i32 1, i32* %3, align 4
  br label %128

128:                                              ; preds = %127, %15
  %129 = load i32, i32* %3, align 4
  ret i32 %129
}

declare dso_local i32 @WINE_FIXME(i8*, ...) #1

declare dso_local i32 @WINE_TRACE(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @debugstr_a(i8*) #1

declare dso_local i32 @MACRO_JumpContext(i8*, i8*, i32) #1

declare dso_local i32 @WINHELP_HasWorkingWindow(...) #1

declare dso_local i32 @MACRO_Exit(...) #1

declare dso_local i32 @MACRO_JumpContents(i8*, i8*) #1

declare dso_local i32 @MACRO_HelpOn(...) #1

declare dso_local i32 @MACRO_SetContents(i8*, i32) #1

declare dso_local i32 @MACRO_PopupContext(i8*, i32) #1

declare dso_local i32 @MACRO_JumpHash(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
