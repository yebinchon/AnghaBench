; ModuleID = '/home/carl/AnghaBench/reactos/dll/3rdparty/libxslt/extr_xsltutils.c_xsltGetUTF8Char.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/3rdparty/libxslt/extr_xsltutils.c_xsltGetUTF8Char.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xsltGetUTF8Char(i8* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = icmp eq i8* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  br label %153

10:                                               ; preds = %2
  %11 = load i32*, i32** %5, align 8
  %12 = icmp eq i32* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %10
  br label %153

14:                                               ; preds = %10
  %15 = load i32*, i32** %5, align 8
  %16 = load i32, i32* %15, align 4
  %17 = icmp slt i32 %16, 1
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  br label %153

19:                                               ; preds = %14
  %20 = load i8*, i8** %4, align 8
  %21 = getelementptr inbounds i8, i8* %20, i64 0
  %22 = load i8, i8* %21, align 1
  %23 = zext i8 %22 to i32
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = and i32 %24, 128
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %149

27:                                               ; preds = %19
  %28 = load i32*, i32** %5, align 8
  %29 = load i32, i32* %28, align 4
  %30 = icmp slt i32 %29, 2
  br i1 %30, label %31, label %32

31:                                               ; preds = %27
  br label %153

32:                                               ; preds = %27
  %33 = load i8*, i8** %4, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 1
  %35 = load i8, i8* %34, align 1
  %36 = zext i8 %35 to i32
  %37 = and i32 %36, 192
  %38 = icmp ne i32 %37, 128
  br i1 %38, label %39, label %40

39:                                               ; preds = %32
  br label %153

40:                                               ; preds = %32
  %41 = load i32, i32* %6, align 4
  %42 = and i32 %41, 224
  %43 = icmp eq i32 %42, 224
  br i1 %43, label %44, label %133

44:                                               ; preds = %40
  %45 = load i32*, i32** %5, align 8
  %46 = load i32, i32* %45, align 4
  %47 = icmp slt i32 %46, 3
  br i1 %47, label %48, label %49

48:                                               ; preds = %44
  br label %153

49:                                               ; preds = %44
  %50 = load i8*, i8** %4, align 8
  %51 = getelementptr inbounds i8, i8* %50, i64 2
  %52 = load i8, i8* %51, align 1
  %53 = zext i8 %52 to i32
  %54 = and i32 %53, 192
  %55 = icmp ne i32 %54, 128
  br i1 %55, label %56, label %57

56:                                               ; preds = %49
  br label %153

57:                                               ; preds = %49
  %58 = load i32, i32* %6, align 4
  %59 = and i32 %58, 240
  %60 = icmp eq i32 %59, 240
  br i1 %60, label %61, label %109

61:                                               ; preds = %57
  %62 = load i32*, i32** %5, align 8
  %63 = load i32, i32* %62, align 4
  %64 = icmp slt i32 %63, 4
  br i1 %64, label %65, label %66

65:                                               ; preds = %61
  br label %153

66:                                               ; preds = %61
  %67 = load i32, i32* %6, align 4
  %68 = and i32 %67, 248
  %69 = icmp ne i32 %68, 240
  br i1 %69, label %77, label %70

70:                                               ; preds = %66
  %71 = load i8*, i8** %4, align 8
  %72 = getelementptr inbounds i8, i8* %71, i64 3
  %73 = load i8, i8* %72, align 1
  %74 = zext i8 %73 to i32
  %75 = and i32 %74, 192
  %76 = icmp ne i32 %75, 128
  br i1 %76, label %77, label %78

77:                                               ; preds = %70, %66
  br label %153

78:                                               ; preds = %70
  %79 = load i32*, i32** %5, align 8
  store i32 4, i32* %79, align 4
  %80 = load i8*, i8** %4, align 8
  %81 = getelementptr inbounds i8, i8* %80, i64 0
  %82 = load i8, i8* %81, align 1
  %83 = zext i8 %82 to i32
  %84 = and i32 %83, 7
  %85 = shl i32 %84, 18
  store i32 %85, i32* %6, align 4
  %86 = load i8*, i8** %4, align 8
  %87 = getelementptr inbounds i8, i8* %86, i64 1
  %88 = load i8, i8* %87, align 1
  %89 = zext i8 %88 to i32
  %90 = and i32 %89, 63
  %91 = shl i32 %90, 12
  %92 = load i32, i32* %6, align 4
  %93 = or i32 %92, %91
  store i32 %93, i32* %6, align 4
  %94 = load i8*, i8** %4, align 8
  %95 = getelementptr inbounds i8, i8* %94, i64 2
  %96 = load i8, i8* %95, align 1
  %97 = zext i8 %96 to i32
  %98 = and i32 %97, 63
  %99 = shl i32 %98, 6
  %100 = load i32, i32* %6, align 4
  %101 = or i32 %100, %99
  store i32 %101, i32* %6, align 4
  %102 = load i8*, i8** %4, align 8
  %103 = getelementptr inbounds i8, i8* %102, i64 3
  %104 = load i8, i8* %103, align 1
  %105 = zext i8 %104 to i32
  %106 = and i32 %105, 63
  %107 = load i32, i32* %6, align 4
  %108 = or i32 %107, %106
  store i32 %108, i32* %6, align 4
  br label %132

109:                                              ; preds = %57
  %110 = load i32*, i32** %5, align 8
  store i32 3, i32* %110, align 4
  %111 = load i8*, i8** %4, align 8
  %112 = getelementptr inbounds i8, i8* %111, i64 0
  %113 = load i8, i8* %112, align 1
  %114 = zext i8 %113 to i32
  %115 = and i32 %114, 15
  %116 = shl i32 %115, 12
  store i32 %116, i32* %6, align 4
  %117 = load i8*, i8** %4, align 8
  %118 = getelementptr inbounds i8, i8* %117, i64 1
  %119 = load i8, i8* %118, align 1
  %120 = zext i8 %119 to i32
  %121 = and i32 %120, 63
  %122 = shl i32 %121, 6
  %123 = load i32, i32* %6, align 4
  %124 = or i32 %123, %122
  store i32 %124, i32* %6, align 4
  %125 = load i8*, i8** %4, align 8
  %126 = getelementptr inbounds i8, i8* %125, i64 2
  %127 = load i8, i8* %126, align 1
  %128 = zext i8 %127 to i32
  %129 = and i32 %128, 63
  %130 = load i32, i32* %6, align 4
  %131 = or i32 %130, %129
  store i32 %131, i32* %6, align 4
  br label %132

132:                                              ; preds = %109, %78
  br label %148

133:                                              ; preds = %40
  %134 = load i32*, i32** %5, align 8
  store i32 2, i32* %134, align 4
  %135 = load i8*, i8** %4, align 8
  %136 = getelementptr inbounds i8, i8* %135, i64 0
  %137 = load i8, i8* %136, align 1
  %138 = zext i8 %137 to i32
  %139 = and i32 %138, 31
  %140 = shl i32 %139, 6
  store i32 %140, i32* %6, align 4
  %141 = load i8*, i8** %4, align 8
  %142 = getelementptr inbounds i8, i8* %141, i64 1
  %143 = load i8, i8* %142, align 1
  %144 = zext i8 %143 to i32
  %145 = and i32 %144, 63
  %146 = load i32, i32* %6, align 4
  %147 = or i32 %146, %145
  store i32 %147, i32* %6, align 4
  br label %148

148:                                              ; preds = %133, %132
  br label %151

149:                                              ; preds = %19
  %150 = load i32*, i32** %5, align 8
  store i32 1, i32* %150, align 4
  br label %151

151:                                              ; preds = %149, %148
  %152 = load i32, i32* %6, align 4
  store i32 %152, i32* %3, align 4
  br label %159

153:                                              ; preds = %77, %65, %56, %48, %39, %31, %18, %13, %9
  %154 = load i32*, i32** %5, align 8
  %155 = icmp ne i32* %154, null
  br i1 %155, label %156, label %158

156:                                              ; preds = %153
  %157 = load i32*, i32** %5, align 8
  store i32 0, i32* %157, align 4
  br label %158

158:                                              ; preds = %156, %153
  store i32 -1, i32* %3, align 4
  br label %159

159:                                              ; preds = %158, %151
  %160 = load i32, i32* %3, align 4
  ret i32 %160
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
