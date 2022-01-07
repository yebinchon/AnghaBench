; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_compile.c_parse_arguments.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_compile.c_parse_arguments.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@S_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"expected alpha or '_': %s\0A\00", align 1
@E_FAIL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"unexpected har %s\0A\00", align 1
@E_OUTOFMEMORY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"expected ',': %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i32*, i32*)* @parse_arguments to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_arguments(i32* %0, i8* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %13 = load i8*, i8** %7, align 8
  store i8* %13, i8** %10, align 8
  store i32 0, i32* %12, align 4
  br label %14

14:                                               ; preds = %19, %4
  %15 = load i8*, i8** %10, align 8
  %16 = load i8, i8* %15, align 1
  %17 = call i64 @iswspace(i8 signext %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %14
  %20 = load i8*, i8** %10, align 8
  %21 = getelementptr inbounds i8, i8* %20, i32 1
  store i8* %21, i8** %10, align 8
  br label %14

22:                                               ; preds = %14
  %23 = load i8*, i8** %10, align 8
  %24 = load i8, i8* %23, align 1
  %25 = icmp ne i8 %24, 0
  br i1 %25, label %33, label %26

26:                                               ; preds = %22
  %27 = load i32*, i32** %9, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %29, label %31

29:                                               ; preds = %26
  %30 = load i32*, i32** %9, align 8
  store i32 0, i32* %30, align 4
  br label %31

31:                                               ; preds = %29, %26
  %32 = load i32, i32* @S_OK, align 4
  store i32 %32, i32* %5, align 4
  br label %158

33:                                               ; preds = %22
  br label %34

34:                                               ; preds = %33, %149
  %35 = load i8*, i8** %10, align 8
  %36 = load i8, i8* %35, align 1
  %37 = call i32 @iswalpha(i8 signext %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %49, label %39

39:                                               ; preds = %34
  %40 = load i8*, i8** %10, align 8
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp ne i32 %42, 95
  br i1 %43, label %44, label %49

44:                                               ; preds = %39
  %45 = load i8*, i8** %10, align 8
  %46 = call i32 @debugstr_w(i8* %45)
  %47 = call i32 @FIXME(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %46)
  %48 = load i32, i32* @E_FAIL, align 4
  store i32 %48, i32* %5, align 4
  br label %158

49:                                               ; preds = %39, %34
  %50 = load i8*, i8** %10, align 8
  store i8* %50, i8** %11, align 8
  br label %51

51:                                               ; preds = %63, %49
  %52 = load i8*, i8** %10, align 8
  %53 = load i8, i8* %52, align 1
  %54 = call i64 @iswalnum(i8 signext %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %61, label %56

56:                                               ; preds = %51
  %57 = load i8*, i8** %10, align 8
  %58 = load i8, i8* %57, align 1
  %59 = sext i8 %58 to i32
  %60 = icmp eq i32 %59, 95
  br label %61

61:                                               ; preds = %56, %51
  %62 = phi i1 [ true, %51 ], [ %60, %56 ]
  br i1 %62, label %63, label %66

63:                                               ; preds = %61
  %64 = load i8*, i8** %10, align 8
  %65 = getelementptr inbounds i8, i8* %64, i32 1
  store i8* %65, i8** %10, align 8
  br label %51

66:                                               ; preds = %61
  %67 = load i8*, i8** %10, align 8
  %68 = load i8, i8* %67, align 1
  %69 = sext i8 %68 to i32
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %86

71:                                               ; preds = %66
  %72 = load i8*, i8** %10, align 8
  %73 = load i8, i8* %72, align 1
  %74 = sext i8 %73 to i32
  %75 = icmp ne i32 %74, 44
  br i1 %75, label %76, label %86

76:                                               ; preds = %71
  %77 = load i8*, i8** %10, align 8
  %78 = load i8, i8* %77, align 1
  %79 = call i64 @iswspace(i8 signext %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %86, label %81

81:                                               ; preds = %76
  %82 = load i8*, i8** %10, align 8
  %83 = call i32 @debugstr_w(i8* %82)
  %84 = call i32 @FIXME(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %83)
  %85 = load i32, i32* @E_FAIL, align 4
  store i32 %85, i32* %5, align 4
  br label %158

86:                                               ; preds = %76, %71, %66
  %87 = load i32*, i32** %8, align 8
  %88 = icmp ne i32* %87, null
  br i1 %88, label %89, label %112

89:                                               ; preds = %86
  %90 = load i32*, i32** %6, align 8
  %91 = load i8*, i8** %11, align 8
  %92 = load i8*, i8** %10, align 8
  %93 = load i8*, i8** %11, align 8
  %94 = ptrtoint i8* %92 to i64
  %95 = ptrtoint i8* %93 to i64
  %96 = sub i64 %94, %95
  %97 = trunc i64 %96 to i32
  %98 = call i32 @compiler_alloc_bstr_len(i32* %90, i8* %91, i32 %97)
  %99 = load i32*, i32** %8, align 8
  %100 = load i32, i32* %12, align 4
  %101 = zext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %99, i64 %101
  store i32 %98, i32* %102, align 4
  %103 = load i32*, i32** %8, align 8
  %104 = load i32, i32* %12, align 4
  %105 = zext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %103, i64 %105
  %107 = load i32, i32* %106, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %111, label %109

109:                                              ; preds = %89
  %110 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %110, i32* %5, align 4
  br label %158

111:                                              ; preds = %89
  br label %112

112:                                              ; preds = %111, %86
  %113 = load i32, i32* %12, align 4
  %114 = add i32 %113, 1
  store i32 %114, i32* %12, align 4
  br label %115

115:                                              ; preds = %120, %112
  %116 = load i8*, i8** %10, align 8
  %117 = load i8, i8* %116, align 1
  %118 = call i64 @iswspace(i8 signext %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %123

120:                                              ; preds = %115
  %121 = load i8*, i8** %10, align 8
  %122 = getelementptr inbounds i8, i8* %121, i32 1
  store i8* %122, i8** %10, align 8
  br label %115

123:                                              ; preds = %115
  %124 = load i8*, i8** %10, align 8
  %125 = load i8, i8* %124, align 1
  %126 = icmp ne i8 %125, 0
  br i1 %126, label %128, label %127

127:                                              ; preds = %123
  br label %150

128:                                              ; preds = %123
  %129 = load i8*, i8** %10, align 8
  %130 = load i8, i8* %129, align 1
  %131 = sext i8 %130 to i32
  %132 = icmp ne i32 %131, 44
  br i1 %132, label %133, label %138

133:                                              ; preds = %128
  %134 = load i8*, i8** %10, align 8
  %135 = call i32 @debugstr_w(i8* %134)
  %136 = call i32 @FIXME(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 %135)
  %137 = load i32, i32* @E_FAIL, align 4
  store i32 %137, i32* %5, align 4
  br label %158

138:                                              ; preds = %128
  %139 = load i8*, i8** %10, align 8
  %140 = getelementptr inbounds i8, i8* %139, i32 1
  store i8* %140, i8** %10, align 8
  br label %141

141:                                              ; preds = %146, %138
  %142 = load i8*, i8** %10, align 8
  %143 = load i8, i8* %142, align 1
  %144 = call i64 @iswspace(i8 signext %143)
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %149

146:                                              ; preds = %141
  %147 = load i8*, i8** %10, align 8
  %148 = getelementptr inbounds i8, i8* %147, i32 1
  store i8* %148, i8** %10, align 8
  br label %141

149:                                              ; preds = %141
  br label %34

150:                                              ; preds = %127
  %151 = load i32*, i32** %9, align 8
  %152 = icmp ne i32* %151, null
  br i1 %152, label %153, label %156

153:                                              ; preds = %150
  %154 = load i32, i32* %12, align 4
  %155 = load i32*, i32** %9, align 8
  store i32 %154, i32* %155, align 4
  br label %156

156:                                              ; preds = %153, %150
  %157 = load i32, i32* @S_OK, align 4
  store i32 %157, i32* %5, align 4
  br label %158

158:                                              ; preds = %156, %133, %109, %81, %44, %31
  %159 = load i32, i32* %5, align 4
  ret i32 %159
}

declare dso_local i64 @iswspace(i8 signext) #1

declare dso_local i32 @iswalpha(i8 signext) #1

declare dso_local i32 @FIXME(i8*, i32) #1

declare dso_local i32 @debugstr_w(i8*) #1

declare dso_local i64 @iswalnum(i8 signext) #1

declare dso_local i32 @compiler_alloc_bstr_len(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
