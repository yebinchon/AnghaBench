; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/mstsc/extr_ssl_calls.c_rdssl_mod_exp.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/mstsc/extr_ssl_calls.c_rdssl_mod_exp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@HIBITMASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rdssl_mod_exp(i8* %0, i32 %1, i8* %2, i32 %3, i8* %4, i32 %5, i8* %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i8*, align 8
  %26 = alloca i8*, align 8
  %27 = alloca i8*, align 8
  %28 = alloca i8*, align 8
  store i8* %0, i8** %10, align 8
  store i32 %1, i32* %11, align 4
  store i8* %2, i8** %12, align 8
  store i32 %3, i32* %13, align 4
  store i8* %4, i8** %14, align 8
  store i32 %5, i32* %15, align 4
  store i8* %6, i8** %16, align 8
  store i32 %7, i32* %17, align 4
  %29 = load i32, i32* %13, align 4
  %30 = load i32, i32* %11, align 4
  %31 = icmp sgt i32 %29, %30
  br i1 %31, label %44, label %32

32:                                               ; preds = %8
  %33 = load i32, i32* %13, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %44, label %35

35:                                               ; preds = %32
  %36 = load i32, i32* %11, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %44, label %38

38:                                               ; preds = %35
  %39 = load i32, i32* %15, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %38
  %42 = load i32, i32* %17, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %41, %38, %35, %32, %8
  store i32 0, i32* %9, align 4
  br label %175

45:                                               ; preds = %41
  %46 = load i32, i32* %11, align 4
  store i32 %46, i32* %24, align 4
  %47 = load i32, i32* %13, align 4
  %48 = load i32, i32* %24, align 4
  %49 = icmp sgt i32 %47, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %45
  %51 = load i32, i32* %13, align 4
  store i32 %51, i32* %24, align 4
  br label %52

52:                                               ; preds = %50, %45
  %53 = load i32, i32* %15, align 4
  %54 = load i32, i32* %24, align 4
  %55 = icmp sgt i32 %53, %54
  br i1 %55, label %56, label %58

56:                                               ; preds = %52
  %57 = load i32, i32* %15, align 4
  store i32 %57, i32* %24, align 4
  br label %58

58:                                               ; preds = %56, %52
  %59 = load i32, i32* %17, align 4
  %60 = load i32, i32* %24, align 4
  %61 = icmp sgt i32 %59, %60
  br i1 %61, label %62, label %64

62:                                               ; preds = %58
  %63 = load i32, i32* %17, align 4
  store i32 %63, i32* %24, align 4
  br label %64

64:                                               ; preds = %62, %58
  %65 = load i32, i32* %24, align 4
  %66 = call i64 @g_malloc(i32 %65, i32 1)
  %67 = inttoptr i64 %66 to i8*
  store i8* %67, i8** %25, align 8
  %68 = load i32, i32* %24, align 4
  %69 = call i64 @g_malloc(i32 %68, i32 1)
  %70 = inttoptr i64 %69 to i8*
  store i8* %70, i8** %26, align 8
  %71 = load i32, i32* %24, align 4
  %72 = call i64 @g_malloc(i32 %71, i32 1)
  %73 = inttoptr i64 %72 to i8*
  store i8* %73, i8** %27, align 8
  %74 = load i32, i32* %24, align 4
  %75 = call i64 @g_malloc(i32 %74, i32 1)
  %76 = inttoptr i64 %75 to i8*
  store i8* %76, i8** %28, align 8
  %77 = load i8*, i8** %26, align 8
  %78 = load i8*, i8** %12, align 8
  %79 = load i32, i32* %13, align 4
  %80 = call i32 @memcpy(i8* %77, i8* %78, i32 %79)
  %81 = load i8*, i8** %27, align 8
  %82 = load i8*, i8** %14, align 8
  %83 = load i32, i32* %15, align 4
  %84 = call i32 @memcpy(i8* %81, i8* %82, i32 %83)
  %85 = load i8*, i8** %28, align 8
  %86 = load i8*, i8** %16, align 8
  %87 = load i32, i32* %17, align 4
  %88 = call i32 @memcpy(i8* %85, i8* %86, i32 %87)
  %89 = load i8*, i8** %28, align 8
  %90 = bitcast i8* %89 to i32*
  store i32* %90, i32** %19, align 8
  %91 = load i8*, i8** %26, align 8
  %92 = bitcast i8* %91 to i32*
  store i32* %92, i32** %20, align 8
  %93 = load i8*, i8** %25, align 8
  %94 = bitcast i8* %93 to i32*
  store i32* %94, i32** %21, align 8
  %95 = load i8*, i8** %27, align 8
  %96 = bitcast i8* %95 to i32*
  store i32* %96, i32** %22, align 8
  %97 = load i32*, i32** %19, align 8
  %98 = load i32, i32* %24, align 4
  %99 = sdiv i32 %98, 4
  %100 = call i32 @mpSizeof(i32* %97, i32 %99)
  store i32 %100, i32* %23, align 4
  %101 = load i32, i32* @HIBITMASK, align 4
  store i32 %101, i32* %18, align 4
  br label %102

102:                                              ; preds = %117, %64
  %103 = load i32, i32* %18, align 4
  %104 = icmp sgt i32 %103, 0
  br i1 %104, label %105, label %120

105:                                              ; preds = %102
  %106 = load i32*, i32** %19, align 8
  %107 = load i32, i32* %23, align 4
  %108 = sub i32 %107, 1
  %109 = zext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %106, i64 %109
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* %18, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %105
  br label %120

116:                                              ; preds = %105
  br label %117

117:                                              ; preds = %116
  %118 = load i32, i32* %18, align 4
  %119 = ashr i32 %118, 1
  store i32 %119, i32* %18, align 4
  br label %102

120:                                              ; preds = %115, %102
  %121 = load i32, i32* %18, align 4
  %122 = load i32, i32* %23, align 4
  %123 = call i32 @mpNEXTBITMASK(i32 %121, i32 %122)
  %124 = load i32*, i32** %21, align 8
  %125 = load i32*, i32** %20, align 8
  %126 = load i32, i32* %24, align 4
  %127 = sdiv i32 %126, 4
  %128 = call i32 @mpSetEqual(i32* %124, i32* %125, i32 %127)
  br label %129

129:                                              ; preds = %157, %120
  %130 = load i32, i32* %23, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %161

132:                                              ; preds = %129
  %133 = load i32*, i32** %21, align 8
  %134 = load i32*, i32** %21, align 8
  %135 = load i32*, i32** %21, align 8
  %136 = load i32*, i32** %22, align 8
  %137 = load i32, i32* %24, align 4
  %138 = sdiv i32 %137, 4
  %139 = call i32 @mpModMult(i32* %133, i32* %134, i32* %135, i32* %136, i32 %138)
  %140 = load i32*, i32** %19, align 8
  %141 = load i32, i32* %23, align 4
  %142 = sub i32 %141, 1
  %143 = zext i32 %142 to i64
  %144 = getelementptr inbounds i32, i32* %140, i64 %143
  %145 = load i32, i32* %144, align 4
  %146 = load i32, i32* %18, align 4
  %147 = and i32 %145, %146
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %157

149:                                              ; preds = %132
  %150 = load i32*, i32** %21, align 8
  %151 = load i32*, i32** %21, align 8
  %152 = load i32*, i32** %20, align 8
  %153 = load i32*, i32** %22, align 8
  %154 = load i32, i32* %24, align 4
  %155 = sdiv i32 %154, 4
  %156 = call i32 @mpModMult(i32* %150, i32* %151, i32* %152, i32* %153, i32 %155)
  br label %157

157:                                              ; preds = %149, %132
  %158 = load i32, i32* %18, align 4
  %159 = load i32, i32* %23, align 4
  %160 = call i32 @mpNEXTBITMASK(i32 %158, i32 %159)
  br label %129

161:                                              ; preds = %129
  %162 = load i8*, i8** %10, align 8
  %163 = load i8*, i8** %25, align 8
  %164 = load i32, i32* %11, align 4
  %165 = call i32 @memcpy(i8* %162, i8* %163, i32 %164)
  %166 = load i8*, i8** %25, align 8
  %167 = call i32 @g_free(i8* %166)
  %168 = load i8*, i8** %26, align 8
  %169 = call i32 @g_free(i8* %168)
  %170 = load i8*, i8** %27, align 8
  %171 = call i32 @g_free(i8* %170)
  %172 = load i8*, i8** %28, align 8
  %173 = call i32 @g_free(i8* %172)
  %174 = load i32, i32* %11, align 4
  store i32 %174, i32* %9, align 4
  br label %175

175:                                              ; preds = %161, %44
  %176 = load i32, i32* %9, align 4
  ret i32 %176
}

declare dso_local i64 @g_malloc(i32, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @mpSizeof(i32*, i32) #1

declare dso_local i32 @mpNEXTBITMASK(i32, i32) #1

declare dso_local i32 @mpSetEqual(i32*, i32*, i32) #1

declare dso_local i32 @mpModMult(i32*, i32*, i32*, i32*, i32) #1

declare dso_local i32 @g_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
