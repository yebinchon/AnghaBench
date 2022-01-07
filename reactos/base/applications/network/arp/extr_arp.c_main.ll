; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/network/arp/extr_arp.c_main.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/network/arp/extr_arp.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"-N\00", align 1
@EXIT_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %6 = load i32, i32* %4, align 4
  %7 = icmp slt i32 %6, 2
  br i1 %7, label %11, label %8

8:                                                ; preds = %2
  %9 = load i32, i32* %4, align 4
  %10 = icmp sgt i32 %9, 5
  br i1 %10, label %11, label %14

11:                                               ; preds = %8, %2
  %12 = call i32 (...) @Usage()
  %13 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %13, i32* %3, align 4
  br label %142

14:                                               ; preds = %8
  %15 = load i8**, i8*** %5, align 8
  %16 = getelementptr inbounds i8*, i8** %15, i64 1
  %17 = load i8*, i8** %16, align 8
  %18 = getelementptr inbounds i8, i8* %17, i64 0
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp eq i32 %20, 45
  br i1 %21, label %22, label %138

22:                                               ; preds = %14
  %23 = load i8**, i8*** %5, align 8
  %24 = getelementptr inbounds i8*, i8** %23, i64 1
  %25 = load i8*, i8** %24, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 1
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  switch i32 %28, label %134 [
    i32 97, label %29
    i32 103, label %29
    i32 100, label %80
    i32 115, label %104
  ]

29:                                               ; preds = %22, %22
  %30 = load i32, i32* %4, align 4
  %31 = icmp eq i32 %30, 2
  br i1 %31, label %32, label %34

32:                                               ; preds = %29
  %33 = call i32 @DisplayArpEntries(i8* null, i8* null)
  br label %79

34:                                               ; preds = %29
  %35 = load i32, i32* %4, align 4
  %36 = icmp eq i32 %35, 3
  br i1 %36, label %37, label %42

37:                                               ; preds = %34
  %38 = load i8**, i8*** %5, align 8
  %39 = getelementptr inbounds i8*, i8** %38, i64 2
  %40 = load i8*, i8** %39, align 8
  %41 = call i32 @DisplayArpEntries(i8* %40, i8* null)
  br label %78

42:                                               ; preds = %34
  %43 = load i32, i32* %4, align 4
  %44 = icmp eq i32 %43, 4
  br i1 %44, label %45, label %56

45:                                               ; preds = %42
  %46 = load i8**, i8*** %5, align 8
  %47 = getelementptr inbounds i8*, i8** %46, i64 2
  %48 = load i8*, i8** %47, align 8
  %49 = call i32 @strcmp(i8* %48, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %45
  %52 = load i8**, i8*** %5, align 8
  %53 = getelementptr inbounds i8*, i8** %52, i64 3
  %54 = load i8*, i8** %53, align 8
  %55 = call i32 @DisplayArpEntries(i8* null, i8* %54)
  br label %77

56:                                               ; preds = %45, %42
  %57 = load i32, i32* %4, align 4
  %58 = icmp eq i32 %57, 5
  br i1 %58, label %59, label %73

59:                                               ; preds = %56
  %60 = load i8**, i8*** %5, align 8
  %61 = getelementptr inbounds i8*, i8** %60, i64 3
  %62 = load i8*, i8** %61, align 8
  %63 = call i32 @strcmp(i8* %62, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %73

65:                                               ; preds = %59
  %66 = load i8**, i8*** %5, align 8
  %67 = getelementptr inbounds i8*, i8** %66, i64 2
  %68 = load i8*, i8** %67, align 8
  %69 = load i8**, i8*** %5, align 8
  %70 = getelementptr inbounds i8*, i8** %69, i64 4
  %71 = load i8*, i8** %70, align 8
  %72 = call i32 @DisplayArpEntries(i8* %68, i8* %71)
  br label %76

73:                                               ; preds = %59, %56
  %74 = call i32 (...) @Usage()
  %75 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %75, i32* %3, align 4
  br label %142

76:                                               ; preds = %65
  br label %77

77:                                               ; preds = %76, %51
  br label %78

78:                                               ; preds = %77, %37
  br label %79

79:                                               ; preds = %78, %32
  br label %137

80:                                               ; preds = %22
  %81 = load i32, i32* %4, align 4
  %82 = icmp eq i32 %81, 3
  br i1 %82, label %83, label %88

83:                                               ; preds = %80
  %84 = load i8**, i8*** %5, align 8
  %85 = getelementptr inbounds i8*, i8** %84, i64 2
  %86 = load i8*, i8** %85, align 8
  %87 = call i32 @Deletehost(i8* %86, i8* null)
  br label %103

88:                                               ; preds = %80
  %89 = load i32, i32* %4, align 4
  %90 = icmp eq i32 %89, 4
  br i1 %90, label %91, label %99

91:                                               ; preds = %88
  %92 = load i8**, i8*** %5, align 8
  %93 = getelementptr inbounds i8*, i8** %92, i64 2
  %94 = load i8*, i8** %93, align 8
  %95 = load i8**, i8*** %5, align 8
  %96 = getelementptr inbounds i8*, i8** %95, i64 3
  %97 = load i8*, i8** %96, align 8
  %98 = call i32 @Deletehost(i8* %94, i8* %97)
  br label %102

99:                                               ; preds = %88
  %100 = call i32 (...) @Usage()
  %101 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %101, i32* %3, align 4
  br label %142

102:                                              ; preds = %91
  br label %103

103:                                              ; preds = %102, %83
  br label %137

104:                                              ; preds = %22
  %105 = load i32, i32* %4, align 4
  %106 = icmp eq i32 %105, 4
  br i1 %106, label %107, label %115

107:                                              ; preds = %104
  %108 = load i8**, i8*** %5, align 8
  %109 = getelementptr inbounds i8*, i8** %108, i64 2
  %110 = load i8*, i8** %109, align 8
  %111 = load i8**, i8*** %5, align 8
  %112 = getelementptr inbounds i8*, i8** %111, i64 3
  %113 = load i8*, i8** %112, align 8
  %114 = call i32 @Addhost(i8* %110, i8* %113, i8* null)
  br label %133

115:                                              ; preds = %104
  %116 = load i32, i32* %4, align 4
  %117 = icmp eq i32 %116, 5
  br i1 %117, label %118, label %129

118:                                              ; preds = %115
  %119 = load i8**, i8*** %5, align 8
  %120 = getelementptr inbounds i8*, i8** %119, i64 2
  %121 = load i8*, i8** %120, align 8
  %122 = load i8**, i8*** %5, align 8
  %123 = getelementptr inbounds i8*, i8** %122, i64 3
  %124 = load i8*, i8** %123, align 8
  %125 = load i8**, i8*** %5, align 8
  %126 = getelementptr inbounds i8*, i8** %125, i64 4
  %127 = load i8*, i8** %126, align 8
  %128 = call i32 @Addhost(i8* %121, i8* %124, i8* %127)
  br label %132

129:                                              ; preds = %115
  %130 = call i32 (...) @Usage()
  %131 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %131, i32* %3, align 4
  br label %142

132:                                              ; preds = %118
  br label %133

133:                                              ; preds = %132, %107
  br label %137

134:                                              ; preds = %22
  %135 = call i32 (...) @Usage()
  %136 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %136, i32* %3, align 4
  br label %142

137:                                              ; preds = %133, %103, %79
  br label %140

138:                                              ; preds = %14
  %139 = call i32 (...) @Usage()
  br label %140

140:                                              ; preds = %138, %137
  %141 = load i32, i32* @EXIT_SUCCESS, align 4
  store i32 %141, i32* %3, align 4
  br label %142

142:                                              ; preds = %140, %134, %129, %99, %73, %11
  %143 = load i32, i32* %3, align 4
  ret i32 %143
}

declare dso_local i32 @Usage(...) #1

declare dso_local i32 @DisplayArpEntries(i8*, i8*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @Deletehost(i8*, i8*) #1

declare dso_local i32 @Addhost(i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
