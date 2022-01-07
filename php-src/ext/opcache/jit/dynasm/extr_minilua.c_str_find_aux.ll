; ModuleID = '/home/carl/AnghaBench/php-src/ext/opcache/jit/dynasm/extr_minilua.c_str_find_aux.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/opcache/jit/dynasm/extr_minilua.c_str_find_aux.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i8*, i64, i32* }

@.str = private unnamed_addr constant [11 x i8] c"^$*+?.([%-\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @str_find_aux to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @str_find_aux(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.TYPE_4__, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %16 = load i32*, i32** %4, align 8
  %17 = call i8* @luaL_checklstring(i32* %16, i32 1, i64* %6)
  store i8* %17, i8** %8, align 8
  %18 = load i32*, i32** %4, align 8
  %19 = call i8* @luaL_checklstring(i32* %18, i32 2, i64* %7)
  store i8* %19, i8** %9, align 8
  %20 = load i32*, i32** %4, align 8
  %21 = call i32 @luaL_optinteger(i32* %20, i32 3, i32 1)
  %22 = load i64, i64* %6, align 8
  %23 = call i32 @posrelat(i32 %21, i64 %22)
  %24 = sub nsw i32 %23, 1
  %25 = sext i32 %24 to i64
  store i64 %25, i64* %10, align 8
  %26 = load i64, i64* %10, align 8
  %27 = icmp ult i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %2
  store i64 0, i64* %10, align 8
  br label %36

29:                                               ; preds = %2
  %30 = load i64, i64* %10, align 8
  %31 = load i64, i64* %6, align 8
  %32 = icmp ugt i64 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %29
  %34 = load i64, i64* %6, align 8
  store i64 %34, i64* %10, align 8
  br label %35

35:                                               ; preds = %33, %29
  br label %36

36:                                               ; preds = %35, %28
  %37 = load i32, i32* %5, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %80

39:                                               ; preds = %36
  %40 = load i32*, i32** %4, align 8
  %41 = call i64 @lua_toboolean(i32* %40, i32 4)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %47, label %43

43:                                               ; preds = %39
  %44 = load i8*, i8** %9, align 8
  %45 = call i32* @strpbrk(i8* %44, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %46 = icmp eq i32* %45, null
  br i1 %46, label %47, label %80

47:                                               ; preds = %43, %39
  %48 = load i8*, i8** %8, align 8
  %49 = load i64, i64* %10, align 8
  %50 = getelementptr inbounds i8, i8* %48, i64 %49
  %51 = load i64, i64* %6, align 8
  %52 = load i64, i64* %10, align 8
  %53 = sub i64 %51, %52
  %54 = load i8*, i8** %9, align 8
  %55 = load i64, i64* %7, align 8
  %56 = call i8* @lmemfind(i8* %50, i64 %53, i8* %54, i64 %55)
  store i8* %56, i8** %11, align 8
  %57 = load i8*, i8** %11, align 8
  %58 = icmp ne i8* %57, null
  br i1 %58, label %59, label %79

59:                                               ; preds = %47
  %60 = load i32*, i32** %4, align 8
  %61 = load i8*, i8** %11, align 8
  %62 = load i8*, i8** %8, align 8
  %63 = ptrtoint i8* %61 to i64
  %64 = ptrtoint i8* %62 to i64
  %65 = sub i64 %63, %64
  %66 = add nsw i64 %65, 1
  %67 = trunc i64 %66 to i32
  %68 = call i32 @lua_pushinteger(i32* %60, i32 %67)
  %69 = load i32*, i32** %4, align 8
  %70 = load i8*, i8** %11, align 8
  %71 = load i8*, i8** %8, align 8
  %72 = ptrtoint i8* %70 to i64
  %73 = ptrtoint i8* %71 to i64
  %74 = sub i64 %72, %73
  %75 = load i64, i64* %7, align 8
  %76 = add i64 %74, %75
  %77 = trunc i64 %76 to i32
  %78 = call i32 @lua_pushinteger(i32* %69, i32 %77)
  store i32 2, i32* %3, align 4
  br label %152

79:                                               ; preds = %47
  br label %149

80:                                               ; preds = %43, %36
  %81 = load i8*, i8** %9, align 8
  %82 = load i8, i8* %81, align 1
  %83 = sext i8 %82 to i32
  %84 = icmp eq i32 %83, 94
  br i1 %84, label %85, label %88

85:                                               ; preds = %80
  %86 = load i8*, i8** %9, align 8
  %87 = getelementptr inbounds i8, i8* %86, i32 1
  store i8* %87, i8** %9, align 8
  br label %89

88:                                               ; preds = %80
  br label %89

89:                                               ; preds = %88, %85
  %90 = phi i32 [ 1, %85 ], [ 0, %88 ]
  store i32 %90, i32* %13, align 4
  %91 = load i8*, i8** %8, align 8
  %92 = load i64, i64* %10, align 8
  %93 = getelementptr inbounds i8, i8* %91, i64 %92
  store i8* %93, i8** %14, align 8
  %94 = load i32*, i32** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 3
  store i32* %94, i32** %95, align 8
  %96 = load i8*, i8** %8, align 8
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  store i8* %96, i8** %97, align 8
  %98 = load i8*, i8** %8, align 8
  %99 = load i64, i64* %6, align 8
  %100 = getelementptr inbounds i8, i8* %98, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 1
  store i8* %100, i8** %101, align 8
  br label %102

102:                                              ; preds = %146, %89
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 2
  store i64 0, i64* %103, align 8
  %104 = load i8*, i8** %14, align 8
  %105 = load i8*, i8** %9, align 8
  %106 = call i8* @match(%struct.TYPE_4__* %12, i8* %104, i8* %105)
  store i8* %106, i8** %15, align 8
  %107 = icmp ne i8* %106, null
  br i1 %107, label %108, label %135

108:                                              ; preds = %102
  %109 = load i32, i32* %5, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %131

111:                                              ; preds = %108
  %112 = load i32*, i32** %4, align 8
  %113 = load i8*, i8** %14, align 8
  %114 = load i8*, i8** %8, align 8
  %115 = ptrtoint i8* %113 to i64
  %116 = ptrtoint i8* %114 to i64
  %117 = sub i64 %115, %116
  %118 = add nsw i64 %117, 1
  %119 = trunc i64 %118 to i32
  %120 = call i32 @lua_pushinteger(i32* %112, i32 %119)
  %121 = load i32*, i32** %4, align 8
  %122 = load i8*, i8** %15, align 8
  %123 = load i8*, i8** %8, align 8
  %124 = ptrtoint i8* %122 to i64
  %125 = ptrtoint i8* %123 to i64
  %126 = sub i64 %124, %125
  %127 = trunc i64 %126 to i32
  %128 = call i32 @lua_pushinteger(i32* %121, i32 %127)
  %129 = call i32 @push_captures(%struct.TYPE_4__* %12, i8* null, i8* null)
  %130 = add nsw i32 %129, 2
  store i32 %130, i32* %3, align 4
  br label %152

131:                                              ; preds = %108
  %132 = load i8*, i8** %14, align 8
  %133 = load i8*, i8** %15, align 8
  %134 = call i32 @push_captures(%struct.TYPE_4__* %12, i8* %132, i8* %133)
  store i32 %134, i32* %3, align 4
  br label %152

135:                                              ; preds = %102
  br label %136

136:                                              ; preds = %135
  %137 = load i8*, i8** %14, align 8
  %138 = getelementptr inbounds i8, i8* %137, i32 1
  store i8* %138, i8** %14, align 8
  %139 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 1
  %140 = load i8*, i8** %139, align 8
  %141 = icmp ult i8* %137, %140
  br i1 %141, label %142, label %146

142:                                              ; preds = %136
  %143 = load i32, i32* %13, align 4
  %144 = icmp ne i32 %143, 0
  %145 = xor i1 %144, true
  br label %146

146:                                              ; preds = %142, %136
  %147 = phi i1 [ false, %136 ], [ %145, %142 ]
  br i1 %147, label %102, label %148

148:                                              ; preds = %146
  br label %149

149:                                              ; preds = %148, %79
  %150 = load i32*, i32** %4, align 8
  %151 = call i32 @lua_pushnil(i32* %150)
  store i32 1, i32* %3, align 4
  br label %152

152:                                              ; preds = %149, %131, %111, %59
  %153 = load i32, i32* %3, align 4
  ret i32 %153
}

declare dso_local i8* @luaL_checklstring(i32*, i32, i64*) #1

declare dso_local i32 @posrelat(i32, i64) #1

declare dso_local i32 @luaL_optinteger(i32*, i32, i32) #1

declare dso_local i64 @lua_toboolean(i32*, i32) #1

declare dso_local i32* @strpbrk(i8*, i8*) #1

declare dso_local i8* @lmemfind(i8*, i64, i8*, i64) #1

declare dso_local i32 @lua_pushinteger(i32*, i32) #1

declare dso_local i8* @match(%struct.TYPE_4__*, i8*, i8*) #1

declare dso_local i32 @push_captures(%struct.TYPE_4__*, i8*, i8*) #1

declare dso_local i32 @lua_pushnil(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
