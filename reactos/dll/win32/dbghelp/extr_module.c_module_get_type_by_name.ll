; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_module.c_module_get_type_by_name.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_module.c_module_get_type_by_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@S_DotSoW = common dso_local global i32 0, align 4
@DMT_ELF = common dso_local global i32 0, align 4
@S_DotDylibW = common dso_local global i32 0, align 4
@DMT_MACHO = common dso_local global i32 0, align 4
@S_DotPdbW = common dso_local global i32 0, align 4
@DMT_PDB = common dso_local global i32 0, align 4
@S_DotDbgW = common dso_local global i32 0, align 4
@DMT_DBG = common dso_local global i32 0, align 4
@DMT_PE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @module_get_type_by_name(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = call i32 @strlenW(i8* %8)
  store i32 %9, i32* %5, align 4
  br label %10

10:                                               ; preds = %55, %1
  %11 = load i32, i32* %5, align 4
  store i32 %11, i32* %7, align 4
  br label %12

12:                                               ; preds = %35, %10
  %13 = load i32, i32* %7, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %33

15:                                               ; preds = %12
  %16 = load i8*, i8** %3, align 8
  %17 = load i32, i32* %7, align 4
  %18 = sub nsw i32 %17, 1
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i8, i8* %16, i64 %19
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp sge i32 %22, 48
  br i1 %23, label %24, label %33

24:                                               ; preds = %15
  %25 = load i8*, i8** %3, align 8
  %26 = load i32, i32* %7, align 4
  %27 = sub nsw i32 %26, 1
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i8, i8* %25, i64 %28
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp sle i32 %31, 57
  br label %33

33:                                               ; preds = %24, %15, %12
  %34 = phi i1 [ false, %15 ], [ false, %12 ], [ %32, %24 ]
  br i1 %34, label %35, label %38

35:                                               ; preds = %33
  %36 = load i32, i32* %7, align 4
  %37 = add nsw i32 %36, -1
  store i32 %37, i32* %7, align 4
  br label %12

38:                                               ; preds = %33
  %39 = load i32, i32* %7, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %53

41:                                               ; preds = %38
  %42 = load i8*, i8** %3, align 8
  %43 = load i32, i32* %7, align 4
  %44 = sub nsw i32 %43, 1
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i8, i8* %42, i64 %45
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp eq i32 %48, 46
  br i1 %49, label %50, label %53

50:                                               ; preds = %41
  %51 = load i32, i32* %7, align 4
  %52 = sub nsw i32 %51, 1
  store i32 %52, i32* %5, align 4
  br label %54

53:                                               ; preds = %41, %38
  br label %58

54:                                               ; preds = %50
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %5, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %10, label %58

58:                                               ; preds = %55, %53
  %59 = load i32, i32* %5, align 4
  %60 = icmp sgt i32 %59, 3
  br i1 %60, label %61, label %72

61:                                               ; preds = %58
  %62 = load i8*, i8** %3, align 8
  %63 = load i32, i32* %5, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i8, i8* %62, i64 %64
  %66 = getelementptr inbounds i8, i8* %65, i64 -3
  %67 = load i32, i32* @S_DotSoW, align 4
  %68 = call i32 @memcmp(i8* %66, i32 %67, i32 3)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %72, label %70

70:                                               ; preds = %61
  %71 = load i32, i32* @DMT_ELF, align 4
  store i32 %71, i32* %2, align 4
  br label %152

72:                                               ; preds = %61, %58
  %73 = load i32, i32* %5, align 4
  %74 = icmp sgt i32 %73, 6
  br i1 %74, label %75, label %86

75:                                               ; preds = %72
  %76 = load i8*, i8** %3, align 8
  %77 = load i32, i32* %5, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i8, i8* %76, i64 %78
  %80 = getelementptr inbounds i8, i8* %79, i64 -6
  %81 = load i32, i32* @S_DotDylibW, align 4
  %82 = call i32 @strncmpiW(i8* %80, i32 %81, i32 6)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %86, label %84

84:                                               ; preds = %75
  %85 = load i32, i32* @DMT_MACHO, align 4
  store i32 %85, i32* %2, align 4
  br label %152

86:                                               ; preds = %75, %72
  %87 = load i32, i32* %5, align 4
  %88 = icmp sgt i32 %87, 4
  br i1 %88, label %89, label %100

89:                                               ; preds = %86
  %90 = load i8*, i8** %3, align 8
  %91 = load i32, i32* %5, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i8, i8* %90, i64 %92
  %94 = getelementptr inbounds i8, i8* %93, i64 -4
  %95 = load i32, i32* @S_DotPdbW, align 4
  %96 = call i32 @strncmpiW(i8* %94, i32 %95, i32 4)
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %100, label %98

98:                                               ; preds = %89
  %99 = load i32, i32* @DMT_PDB, align 4
  store i32 %99, i32* %2, align 4
  br label %152

100:                                              ; preds = %89, %86
  %101 = load i32, i32* %5, align 4
  %102 = icmp sgt i32 %101, 4
  br i1 %102, label %103, label %114

103:                                              ; preds = %100
  %104 = load i8*, i8** %3, align 8
  %105 = load i32, i32* %5, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i8, i8* %104, i64 %106
  %108 = getelementptr inbounds i8, i8* %107, i64 -4
  %109 = load i32, i32* @S_DotDbgW, align 4
  %110 = call i32 @strncmpiW(i8* %108, i32 %109, i32 4)
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %114, label %112

112:                                              ; preds = %103
  %113 = load i32, i32* @DMT_DBG, align 4
  store i32 %113, i32* %2, align 4
  br label %152

114:                                              ; preds = %103, %100
  %115 = call i8* (...) @get_wine_loader_name()
  store i8* %115, i8** %6, align 8
  %116 = load i8*, i8** %6, align 8
  %117 = call i32 @strlenW(i8* %116)
  store i32 %117, i32* %4, align 4
  %118 = load i32, i32* %5, align 4
  %119 = load i32, i32* %4, align 4
  %120 = icmp eq i32 %118, %119
  br i1 %120, label %136, label %121

121:                                              ; preds = %114
  %122 = load i32, i32* %5, align 4
  %123 = load i32, i32* %4, align 4
  %124 = icmp sgt i32 %122, %123
  br i1 %124, label %125, label %150

125:                                              ; preds = %121
  %126 = load i8*, i8** %3, align 8
  %127 = load i32, i32* %5, align 4
  %128 = load i32, i32* %4, align 4
  %129 = sub nsw i32 %127, %128
  %130 = sub nsw i32 %129, 1
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i8, i8* %126, i64 %131
  %133 = load i8, i8* %132, align 1
  %134 = sext i8 %133 to i32
  %135 = icmp eq i32 %134, 47
  br i1 %135, label %136, label %150

136:                                              ; preds = %125, %114
  %137 = load i8*, i8** %3, align 8
  %138 = load i32, i32* %5, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i8, i8* %137, i64 %139
  %141 = load i32, i32* %4, align 4
  %142 = sext i32 %141 to i64
  %143 = sub i64 0, %142
  %144 = getelementptr inbounds i8, i8* %140, i64 %143
  %145 = load i8*, i8** %6, align 8
  %146 = call i32 @strcmpiW(i8* %144, i8* %145)
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %150, label %148

148:                                              ; preds = %136
  %149 = load i32, i32* @DMT_ELF, align 4
  store i32 %149, i32* %2, align 4
  br label %152

150:                                              ; preds = %136, %125, %121
  %151 = load i32, i32* @DMT_PE, align 4
  store i32 %151, i32* %2, align 4
  br label %152

152:                                              ; preds = %150, %148, %112, %98, %84, %70
  %153 = load i32, i32* %2, align 4
  ret i32 %153
}

declare dso_local i32 @strlenW(i8*) #1

declare dso_local i32 @memcmp(i8*, i32, i32) #1

declare dso_local i32 @strncmpiW(i8*, i32, i32) #1

declare dso_local i8* @get_wine_loader_name(...) #1

declare dso_local i32 @strcmpiW(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
